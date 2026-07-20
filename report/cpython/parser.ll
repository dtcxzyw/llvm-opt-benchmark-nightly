inline.NumInlined: 275
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@statements_rule:bb.a

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !39
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !39
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not66.i = icmp eq i32 %i.q, 0
  br i1 %.not66.i, label %bb.j, label %_loop1_2_rule.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.j, align 8, !tbaa !28
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !39 ; 2 uses
  %.not67.i = icmp eq ptr %i.s, null
  br i1 %.not67.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.t = tail call ptr @PyErr_NoMemory() #6, !inline_history !39 ; 0 uses
  br label %_loop1_2_rule.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.u = load i32, ptr %i.g, align 8, !tbaa !27
  %.not68.i = icmp eq i32 %i.u, 0
  br i1 %.not68.i, label %.preheader69, label %_loop1_2_rule.exit.thread

.preheader69:                                     ; preds = %bb.l, %bb.v
  %.058.i = phi ptr [ %.260.i, %bb.v ], [ %i.s, %bb.l ] ; 11 uses
  %.054.i = phi i64 [ %.155.i, %bb.v ], [ 1, %bb.l ] ; 4 uses
  %.053.i = phi i64 [ %i.ao, %bb.v ], [ 0, %bb.l ] ; 9 uses
  %.052.i = phi i32 [ %i.aq, %bb.v ], [ %i.r, %bb.l ]
  %i.v = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !26
  %i.x = icmp eq i32 %i.v, 6000
  br i1 %i.x, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader69
  %i.y = tail call ptr @PyThreadState_Get() #6, !inline_history !40
  %i.z = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.y, i32 noundef 1) #6, !inline_history !40
  %.not.i25 = icmp eq i32 %i.z, 0
  br i1 %.not.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader69
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !27
  %.not36.i = icmp eq i32 %i.aa, 0
  br i1 %.not36.i, label %bb.p, label %.thread53

bb.p:                                             ; preds = %bb.o
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !28
  %i.ac = tail call fastcc ptr @compound_stmt_rule(ptr noundef nonnull %0), !inline_history !40 ; 2 uses
  %.not37.i = icmp eq ptr %i.ac, null
  br i1 %.not37.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = tail call ptr @_PyPegen_singleton_seq(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #6, !inline_history !40
  %i.ae = tail call ptr @_PyPegen_register_stmts(ptr noundef nonnull %0, ptr noundef %i.ad) #6, !inline_history !40 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.r, label %statement_rule.exit.thread41

bb.r:                                             ; preds = %bb.q
  %i.ag = tail call ptr @PyErr_Occurred() #6, !inline_history !40
  %.not38.i = icmp eq ptr %i.ag, null
  br i1 %.not38.i, label %.thread53, label %.thread28

.thread28:                                        ; preds = %bb.r
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread53

bb.s:                                             ; preds = %bb.p
  store i32 %i.ab, ptr %i.j, align 8, !tbaa !28
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !27
  %.not39.i = icmp eq i32 %i.ah, 0
  br i1 %.not39.i, label %bb.t, label %.thread53

bb.t:                                             ; preds = %bb.s
  %i.ai = tail call fastcc ptr @simple_stmts_rule(ptr noundef nonnull %0), !inline_history !40 ; 2 uses
  %.not40.i = icmp eq ptr %i.ai, null
  br i1 %.not40.i, label %.thread53, label %statement_rule.exit.thread41

statement_rule.exit.thread41:                     ; preds = %bb.q, %bb.t
  %.231.i44 = phi ptr [ %i.ai, %bb.t ], [ %i.ae, %bb.q ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  %i.aj = icmp eq i64 %.053.i, %.054.i
  br i1 %i.aj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %statement_rule.exit.thread41
  %i.ak = shl i64 %.054.i, 1
  %i.al = shl i64 %.054.i, 4
  %i.am = tail call ptr @PyMem_Realloc(ptr noundef %.058.i, i64 noundef %i.al) #6, !inline_history !39 ; 2 uses
  %.not70.not.i = icmp eq ptr %i.am, null
  br i1 %.not70.not.i, label %.thread50, label %bb.v

.thread50:                                        ; preds = %bb.u
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !39
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.an = tail call ptr @PyErr_NoMemory() #6, !inline_history !39 ; 0 uses
  br label %_loop1_2_rule.exit.thread

bb.v:                                             ; preds = %bb.u, %statement_rule.exit.thread41
  %.260.i = phi ptr [ %.058.i, %statement_rule.exit.thread41 ], [ %i.am, %bb.u ] ; 2 uses
  %.155.i = phi i64 [ %.054.i, %statement_rule.exit.thread41 ], [ %i.ak, %bb.u ]
  %i.ao = add i64 %.053.i, 1
  %i.ap = getelementptr [8 x i8], ptr %.260.i, i64 %.053.i
  store ptr %.231.i44, ptr %i.ap, align 8, !tbaa !31
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !28
  br label %.preheader69, !llvm.loop !41

.thread53:                                        ; preds = %bb.t, %bb.s, %bb.o, %bb.r, %.thread28
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !26
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.a, align 8, !tbaa !26
  store i32 %.052.i, ptr %i.j, align 8, !tbaa !28
  %i.at = icmp eq i64 %.053.i, 0
  br i1 %i.at, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread53
  %i.au = load i32, ptr %i.g, align 8, !tbaa !27
  %.not71.i = icmp eq i32 %i.au, 0
  br i1 %.not71.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread53
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !39
  br label %_loop1_2_rule.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.av = getelementptr i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.053.i, ptr noundef %i.aw) #6, !inline_history !39 ; 3 uses
  %.not72.i = icmp eq ptr %i.ax, null
  br i1 %.not72.i, label %_loop1_2_rule.exit.thread57, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.ay = icmp sgt i64 %.053.i, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.az = getelementptr i8, ptr %i.ax, i64 8      ; 5 uses
  %xtraiter = and i64 %.053.i, 3                  ; 3 uses
  %i.ba = icmp ult i64 %.053.i, 4
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.053.i, 9223372036854775804
  br label %bb.z

_loop1_2_rule.exit.thread57:                      ; preds = %bb.y
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !39
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bb = tail call ptr @PyErr_NoMemory() #6, !inline_history !39 ; 0 uses
  br label %_loop1_2_rule.exit.thread

bb.z:                                             ; preds = %bb.z, %.lr.ph.new
  %.0.i88 = phi i64 [ 0, %.lr.ph.new ], [ %i.bv, %bb.z ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.z ]
  %i.bc = getelementptr [8 x i8], ptr %.058.i, i64 %.0.i88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %.0.i88
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !31
  %i.bg = or disjoint i64 %.0.i88, 1              ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %.058.i, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !31
  %i.bl = or disjoint i64 %.0.i88, 2              ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %.058.i, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bl
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !31
  %i.bq = or disjoint i64 %.0.i88, 3              ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %.058.i, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bt = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bq
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !31
  %i.bv = add nuw nsw i64 %.0.i88, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.z, !llvm.loop !45

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0.i88.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %.0.i88.epil = phi i64 [ %.0.i88.epil.init, %.epil.preheader ], [ %i.ca, %bb.aa ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.bw = getelementptr [8 x i8], ptr %.058.i, i64 %.0.i88.epil
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %.0.i88.epil
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !31
  %i.ca = add nuw nsw i64 %.0.i88.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.aa, !llvm.loop !46

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.aa, %.preheader
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !39
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.cb = tail call ptr @_PyPegen_seq_flatten(ptr noundef nonnull %0, ptr noundef nonnull %i.ax) #6 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ab, label %._crit_edge..thread63_crit_edge

._crit_edge..thread63_crit_edge:                  ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread63

bb.ab:                                            ; preds = %._crit_edge
  %i.cd = tail call ptr @PyErr_Occurred() #6
  %.not24 = icmp eq ptr %i.cd, null
  %.pre107 = load i32, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  br i1 %.not24, label %.thread63, label %.thread66

.thread66:                                        ; preds = %bb.ab
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread63

_loop1_2_rule.exit.thread:                        ; preds = %bb.l, %bb.i, %.thread50, %bb.x, %bb.k, %_loop1_2_rule.exit.thread57
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cf = add i32 %i.ce, -1
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  br label %.thread63

.thread63:                                        ; preds = %_loop1_2_rule.exit.thread, %bb.ab, %._crit_edge..thread63_crit_edge, %.thread66, %bb.e
  %.pre107.sink = phi i32 [ %.pre107, %.thread66 ], [ %i.i, %bb.e ], [ %i.cf, %_loop1_2_rule.exit.thread ], [ %.pre107, %bb.ab ], [ %.pre, %._crit_edge..thread63_crit_edge ]
  %.2 = phi ptr [ null, %.thread66 ], [ null, %bb.e ], [ null, %_loop1_2_rule.exit.thread ], [ null, %bb.ab ], [ %i.cb, %._crit_edge..thread63_crit_edge ]
  %i.cg = add i32 %.pre107.sink, -1
  store i32 %i.cg, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyPegen_expect_token(ptr noundef, i32 noundef) #2

declare ptr @_PyPegen_make_module(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare ptr @_PyPegen_seq_flatten(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare ptr @_Py_asdl_generic_seq_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compound_stmt_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 36 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 21 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not88 = icmp eq i32 %i.h, 0
  br i1 %.not88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.by

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16         ; 18 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28   ; 10 uses
  %i.l = tail call i32 @_PyPegen_lookahead(i32 noundef 1, ptr noundef nonnull @_tmp_6_rule, ptr noundef nonnull %0) #6
  %.not89 = icmp eq i32 %i.l, 0
  br i1 %.not89, label %function_def_rule.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.m, 6000
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @PyThreadState_Get() #6, !inline_history !48
  %i.q = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.p, i32 noundef 1) #6, !inline_history !48
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = load i32, ptr %i.g, align 8, !tbaa !27
  %.not35.i = icmp eq i32 %i.r, 0
  br i1 %.not35.i, label %bb.k, label %function_def_rule.exit.thread.sink.split

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr %i.j, align 8, !tbaa !28
  %i.t = tail call fastcc ptr @decorators_rule(ptr noundef nonnull %0), !inline_history !48 ; 2 uses
  %.not36.i = icmp eq ptr %i.t, null
  br i1 %.not36.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call fastcc ptr @function_def_raw_rule(ptr noundef nonnull %0), !inline_history !48 ; 2 uses
  %.not37.i = icmp eq ptr %i.u, null
  br i1 %.not37.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = tail call ptr @_PyPegen_function_def_decorators(ptr noundef nonnull %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u) #6, !inline_history !48 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.n, label %function_def_rule.exit

bb.n:                                             ; preds = %bb.m
  %i.x = tail call ptr @PyErr_Occurred() #6, !inline_history !48
  %.not38.i = icmp eq ptr %i.x, null
  br i1 %.not38.i, label %function_def_rule.exit.thread.sink.split, label %function_def_rule.exit.thread.thread

function_def_rule.exit.thread.thread:             ; preds = %bb.n
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.y = load i32, ptr %i.a, align 8, !tbaa !26
  %i.z = add i32 %i.y, -1
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  br label %bb.by

bb.o:                                             ; preds = %bb.l, %bb.k
  store i32 %i.s, ptr %i.j, align 8, !tbaa !28
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !27
  %.not39.i = icmp eq i32 %i.aa, 0
  br i1 %.not39.i, label %bb.p, label %function_def_rule.exit.thread.sink.split

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call fastcc ptr @function_def_raw_rule(ptr noundef nonnull %0), !inline_history !48 ; 2 uses
  %.not40.i = icmp eq ptr %i.ab, null
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !26
  br i1 %.not40.i, label %function_def_rule.exit.thread, label %.thread146

function_def_rule.exit:                           ; preds = %bb.m
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !26
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !26
  br label %.thread146

function_def_rule.exit.thread.sink.split:         ; preds = %bb.o, %bb.n, %bb.j
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ah = add i32 %i.ag, -1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !26
  br label %function_def_rule.exit.thread

function_def_rule.exit.thread:                    ; preds = %function_def_rule.exit.thread.sink.split, %bb.p, %bb.f
  %.pr = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  %.not91 = icmp eq i32 %.pr, 0
  br i1 %.not91, label %bb.q, label %function_def_rule.exit.thread._crit_edge

end_hunk_0
begin_hunk_1_@simple_stmts_rule:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not40 = icmp eq i32 %i.h, 0
  br i1 %.not40, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @simple_stmt_rule(ptr noundef nonnull %0) ; 2 uses
  %.not41 = icmp eq ptr %i.k, null
  br i1 %.not41, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 13) #6
  %.not42 = icmp eq i32 %i.l, 0
  br i1 %.not42, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6
  %.not43 = icmp eq ptr %i.m, null
  br i1 %.not43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_singleton_seq(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #6
  %.not44 = icmp eq ptr %i.p, null
  br i1 %.not44, label %.sink.split, label %.thread52

.thread52:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.sink.split

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not45 = icmp eq i32 %i.q, 0
  %i.r = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  br i1 %.not45, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %bb.j
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp eq i32 %i.r, 6000
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call ptr @PyThreadState_Get() #6
  %i.v = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.u, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.w, 0
  br i1 %.not22.i, label %bb.o, label %_gather_4_rule.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.x = tail call fastcc ptr @simple_stmt_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23.i = icmp eq ptr %i.x, null
  br i1 %.not23.i, label %_gather_4_rule.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.a, align 8, !tbaa !26
  %i.aa = icmp eq i32 %i.y, 6000
  br i1 %i.aa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call ptr @PyThreadState_Get() #6
  %i.ac = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ab, i32 noundef 1) #6
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not67.i.i, label %bb.t, label %_loop0_3_rule.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 4 uses
  %.not68.i.i = icmp eq ptr %i.af, null
  br i1 %.not68.i.i, label %_loop0_3_rule.exit.thread.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not69.i.i, label %.preheader77.i.i, label %_loop0_3_rule.exit.thread.i

.preheader77.i.i:                                 ; preds = %bb.u
  %i.ah = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 13) #6
  %.not7081.i.i = icmp eq ptr %i.ah, null
  br i1 %.not7081.i.i, label %.critedge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader77.i.i
  %i.ai = tail call fastcc ptr @simple_stmt_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i31.i = icmp eq ptr %i.ai, null
  br i1 %.not71.i31.i, label %.critedge.i.i, label %.lr.ph.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.aj = tail call fastcc ptr @simple_stmt_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i.i = icmp eq ptr %i.aj, null
  br i1 %.not71.i.i, label %.critedge.i.i, label %.lr.ph.i, !llvm.loop !52

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %i.ak = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.ai, %.lr.ph.i.preheader.i ]
  %.05982.i34.i = phi i64 [ %.160.i.i, %.lr.ph.i.i ], [ 1, %.lr.ph.i.preheader.i ] ; 4 uses
  %.05883.i33.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %.05484.i32.i = phi ptr [ %.256.i.i, %.lr.ph.i.i ], [ %i.af, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.al = icmp eq i64 %.05883.i33.i, %.05982.i34.i
  br i1 %i.al, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i
  %i.am = shl i64 %.05982.i34.i, 1
  %i.an = shl i64 %.05982.i34.i, 4
  %i.ao = tail call ptr @PyMem_Realloc(ptr noundef %.05484.i32.i, i64 noundef %i.an) #6 ; 2 uses
  %.not72.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not72.not.i.i, label %_loop0_3_rule.exit.thread.sink.split.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i
  %.160.i.i = phi i64 [ %.05982.i34.i, %.lr.ph.i ], [ %i.am, %bb.v ]
  %.256.i.i = phi ptr [ %.05484.i32.i, %.lr.ph.i ], [ %i.ao, %bb.v ] ; 4 uses
  %i.ap = add i64 %.05883.i33.i, 1                ; 3 uses
  %i.aq = getelementptr [8 x i8], ptr %.256.i.i, i64 %.05883.i33.i
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !31
  %i.ar = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.as = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 13) #6
  %.not70.i.i = icmp eq ptr %i.as, null
  br i1 %.not70.i.i, label %..critedge.i.loopexit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !52

..critedge.i.loopexit_crit_edge.i:                ; preds = %bb.w
  br label %.critedge.i.i, !llvm.loop !52

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %..critedge.i.loopexit_crit_edge.i, %.lr.ph.i.preheader.i, %.preheader77.i.i
  %.058.lcssa.i.i = phi i64 [ 0, %.preheader77.i.i ], [ 0, %.lr.ph.i.preheader.i ], [ %i.ap, %..critedge.i.loopexit_crit_edge.i ], [ %i.ap, %.lr.ph.i.i ] ; 5 uses
  %.054.lcssa.i.i = phi ptr [ %i.af, %.preheader77.i.i ], [ %i.af, %.lr.ph.i.preheader.i ], [ %.256.i.i, %..critedge.i.loopexit_crit_edge.i ], [ %.256.i.i, %.lr.ph.i.i ] ; 7 uses
  %.053.lcssa.i.i = phi i32 [ %i.ae, %.preheader77.i.i ], [ %i.ae, %.lr.ph.i.preheader.i ], [ %i.ar, %..critedge.i.loopexit_crit_edge.i ], [ %i.ar, %.lr.ph.i.i ]
  store i32 %.053.lcssa.i.i, ptr %i.i, align 8, !tbaa !28
  %i.at = getelementptr i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.av = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.lcssa.i.i, ptr noundef %i.au) #6 ; 3 uses
  %.not73.i.i = icmp eq ptr %i.av, null
  br i1 %.not73.i.i, label %_loop0_3_rule.exit.thread.sink.split.sink.split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %i.aw = icmp sgt i64 %.058.lcssa.i.i, 0
  br i1 %i.aw, label %.lr.ph93.i.i, label %_gather_4_rule.exit

.lr.ph93.i.i:                                     ; preds = %.preheader.i.i
  %i.ax = getelementptr i8, ptr %i.av, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.lcssa.i.i, 3          ; 3 uses
  %i.ay = icmp ult i64 %.058.lcssa.i.i, 4
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph93.i.i.new

.lr.ph93.i.i.new:                                 ; preds = %.lr.ph93.i.i
  %unroll_iter = and i64 %.058.lcssa.i.i, 9223372036854775804
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph93.i.i.new
  %.092.i.i = phi i64 [ 0, %.lr.ph93.i.i.new ], [ %i.bs, %bb.x ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.i.new ], [ %niter.next.3, %bb.x ]
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa.i.i, i64 %.092.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %.092.i.i
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = or disjoint i64 %.092.i.i, 1            ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %.054.lcssa.i.i, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bd
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !31
  %i.bi = or disjoint i64 %.092.i.i, 2            ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i.i, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bi
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = or disjoint i64 %.092.i.i, 3            ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %.054.lcssa.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bn
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !31
  %i.bs = add nuw nsw i64 %.092.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_4_rule.exit.loopexit.unr-lcssa, label %bb.x, !llvm.loop !53

_loop0_3_rule.exit.thread.sink.split.sink.split.i: ; preds = %bb.v, %.critedge.i.i
  %.054.lcssa.i.sink.i = phi ptr [ %.054.lcssa.i.i, %.critedge.i.i ], [ %.05484.i32.i, %bb.v ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink.i) #6
  br label %_loop0_3_rule.exit.thread.sink.split.i

_loop0_3_rule.exit.thread.sink.split.i:           ; preds = %_loop0_3_rule.exit.thread.sink.split.sink.split.i, %bb.t
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bt = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_3_rule.exit.thread.i

_loop0_3_rule.exit.thread.i:                      ; preds = %_loop0_3_rule.exit.thread.sink.split.i, %bb.u, %bb.s
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr %i.a, align 8, !tbaa !26
  br label %_gather_4_rule.exit.thread

_gather_4_rule.exit.thread:                       ; preds = %bb.o, %_loop0_3_rule.exit.thread.i, %bb.n
  %storemerge.in.i56 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i57 = add i32 %storemerge.in.i56, -1
  store i32 %storemerge.i57, ptr %i.a, align 8, !tbaa !26
  br label %bb.ab

_gather_4_rule.exit.loopexit.unr-lcssa:           ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_4_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_4_rule.exit.loopexit.unr-lcssa, %.lr.ph93.i.i
  %.092.i.i.epil.init = phi i64 [ 0, %.lr.ph93.i.i ], [ %i.bs, %_gather_4_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.092.i.i.epil = phi i64 [ %.092.i.i.epil.init, %.epil.preheader ], [ %i.ca, %bb.y ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.bw = getelementptr [8 x i8], ptr %.054.lcssa.i.i, i64 %.092.i.i.epil
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.by = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %.092.i.i.epil
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !31
  %i.ca = add nuw nsw i64 %.092.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_4_rule.exit, label %bb.y, !llvm.loop !54

_gather_4_rule.exit:                              ; preds = %_gather_4_rule.exit.loopexit.unr-lcssa, %bb.y, %.preheader.i.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i.i) #6
  %i.cb = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !26
  %i.cd = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.av) #6 ; 2 uses
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %.not46 = icmp eq ptr %i.cd, null
  br i1 %.not46, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_gather_4_rule.exit
  %i.ce = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 13) #6 ; 0 uses
  %i.cf = load i32, ptr %i.g, align 8, !tbaa !27
  %.not47 = icmp eq i32 %i.cf, 0
  br i1 %.not47, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6
  %.not48 = icmp eq ptr %i.cg, null
  br i1 %.not48, label %bb.ab, label %.sink.split

bb.ab:                                            ; preds = %_gather_4_rule.exit, %bb.z, %bb.aa, %_gather_4_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.ab, %bb.i, %bb.h, %bb.d, %.thread52
  %.3.ph = phi ptr [ null, %.thread52 ], [ null, %bb.d ], [ %i.cd, %bb.aa ], [ null, %bb.ab ], [ null, %bb.i ], [ %i.n, %bb.h ]
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.j
  %.sink88 = phi i32 [ %i.r, %bb.j ], [ %i.ch, %.sink.split ]
  %.3 = phi ptr [ null, %bb.j ], [ %.3.ph, %.sink.split ]
  %i.ci = add i32 %.sink88, -1
  store i32 %i.ci, ptr %i.a, align 8, !tbaa !26
  ret ptr %.3
}

declare i32 @_PyPegen_lookahead(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_tmp_6_rule(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not36 = icmp eq i32 %i.h, 0
  br i1 %.not36, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 715) #6 ; 2 uses
  %.not37 = icmp eq ptr %i.k, null
  br i1 %.not37, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not38 = icmp eq i32 %i.l, 0
  br i1 %.not38, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 49) #6 ; 2 uses
  %.not39 = icmp eq ptr %i.m, null
  br i1 %.not39, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.n = load i32, ptr %i.g, align 8, !tbaa !27
  %.not40 = icmp eq i32 %i.n, 0
  br i1 %.not40, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 714) #6 ; 2 uses
  %.not41 = icmp eq ptr %i.o, null
  br i1 %.not41, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.h, %bb.f, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.f ], [ %i.k, %bb.e ], [ %i.m, %bb.g ], [ null, %bb.j ], [ %i.o, %bb.i ]
  %i.p = load i32, ptr %i.a, align 8, !tbaa !26
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

declare i32 @_PyPegen_lookahead_with_int(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_tmp_7_rule(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 717) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 49) #6 ; 2 uses
end_hunk_1
begin_hunk_2_@match_stmt_rule:bb.a
  store i32 %storemerge136.i, ptr %i.a, align 8, !tbaa !26
  store i32 %i.ay, ptr %i.i, align 8, !tbaa !28
  br i1 %i.ct, label %.thread204.i, label %.thread133.i

.thread204.i:                                     ; preds = %bb.bh, %bb.z
  %i.cu = tail call ptr @_PyPegen_expect_soft_keyword(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #6, !inline_history !58
  %.not45.i.i = icmp eq ptr %i.cu, null
  br i1 %.not45.i.i, label %case_block_rule.exit.thread118.loopexit.i, label %bb.bi

bb.bi:                                            ; preds = %.thread204.i
  %i.cv = tail call fastcc ptr @patterns_rule(ptr noundef nonnull %0), !inline_history !58 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.cv, null
  br i1 %.not46.i.i, label %case_block_rule.exit.thread118.loopexit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cw = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.a, align 8, !tbaa !26
  %i.cy = icmp eq i32 %i.cw, 6000
  br i1 %i.cy, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cz = tail call ptr @PyThreadState_Get() #6, !inline_history !57
  %i.da = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.cz, i32 noundef 1) #6, !inline_history !57
  %.not.i73.i = icmp eq i32 %i.da, 0
  br i1 %.not.i73.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !57
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.db = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21.i.i = icmp eq i32 %i.db, 0
  br i1 %.not21.i.i, label %bb.bn, label %guard_rule.exit.thread.i

guard_rule.exit.thread.i:                         ; preds = %bb.bm
  %storemerge.in.i105.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i106.i = add i32 %storemerge.in.i105.i, -1
  br label %.thread133.i

bb.bn:                                            ; preds = %bb.bm
  %i.dc = load i32, ptr %i.i, align 8, !tbaa !28
  %i.dd = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 698) #6, !inline_history !57
  %.not22.i.i = icmp eq ptr %i.dd, null
  br i1 %.not22.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.de = tail call fastcc ptr @named_expression_rule(ptr noundef nonnull %0), !inline_history !57 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.de, null
  br i1 %.not23.i.i, label %bb.bp, label %guard_rule.exit.i

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  store i32 %i.dc, ptr %i.i, align 8, !tbaa !28
  br label %guard_rule.exit.i

guard_rule.exit.i:                                ; preds = %bb.bp, %bb.bo
  %.2.i74.ph.i = phi ptr [ %i.de, %bb.bo ], [ null, %bb.bp ]
  %.pr103.i = load i32, ptr %i.g, align 8, !tbaa !27
  %storemerge.in.i.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i.i = add i32 %storemerge.in.i.i, -1
  store i32 %storemerge.i.i, ptr %i.a, align 8, !tbaa !26
  %.not47.i.i = icmp eq i32 %.pr103.i, 0
  br i1 %.not47.i.i, label %bb.bq, label %case_block_rule.exit.thread118.loopexit.i

bb.bq:                                            ; preds = %guard_rule.exit.i
  %i.df = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6, !inline_history !58
  %.not48.i.i = icmp eq ptr %i.df, null
  br i1 %.not48.i.i, label %case_block_rule.exit.thread118.loopexit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dg = tail call fastcc ptr @block_rule(ptr noundef nonnull %0), !inline_history !58 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.dg, null
  br i1 %.not49.i.i, label %case_block_rule.exit.thread118.loopexit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dh = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.di = tail call ptr @_PyAST_match_case(ptr noundef nonnull %i.cv, ptr noundef %.2.i74.ph.i, ptr noundef nonnull %i.dg, ptr noundef %i.dh) #6, !inline_history !58 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.bt, label %case_block_rule.exit.thread121.i

bb.bt:                                            ; preds = %bb.bs
  %i.dk = tail call ptr @PyErr_Occurred() #6, !inline_history !58
  %.not50.i.i = icmp eq ptr %i.dk, null
  br i1 %.not50.i.i, label %bb.bw, label %.thread111.i

.thread111.i:                                     ; preds = %bb.bt
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.dl = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread133.i

case_block_rule.exit.thread118.loopexit.i:        ; preds = %bb.br, %bb.bq, %guard_rule.exit.i, %bb.bi, %.thread204.i
  %.pre192.i = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread133.i

case_block_rule.exit.thread121.i:                 ; preds = %bb.bs, %bb.be, %bb.ap
  %.sink257.i = phi i32 [ -2, %bb.be ], [ -2, %bb.ap ], [ -1, %bb.bs ]
  %.3.i124.i = phi ptr [ %i.cp, %bb.be ], [ %i.bv, %bb.ap ], [ %i.di, %bb.bs ]
  %i.dm = load i32, ptr %i.a, align 8, !tbaa !26
  %i.dn = add i32 %i.dm, %.sink257.i
  store i32 %i.dn, ptr %i.a, align 8, !tbaa !26
  %i.do = icmp eq i64 %.053.i, %.054.i
  br i1 %i.do, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %case_block_rule.exit.thread121.i
  %i.dp = shl i64 %.054.i, 1
  %i.dq = shl i64 %.054.i, 4
  %i.dr = tail call ptr @PyMem_Realloc(ptr noundef %.058.i, i64 noundef %i.dq) #6, !inline_history !57 ; 2 uses
  %.not70.not.i = icmp eq ptr %i.dr, null
  br i1 %.not70.not.i, label %.thread130.i, label %bb.bv

.thread130.i:                                     ; preds = %bb.bu
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !57
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ds = tail call ptr @PyErr_NoMemory() #6, !inline_history !57 ; 0 uses
  br label %_loop1_38_rule.exit.thread

bb.bv:                                            ; preds = %bb.bu, %case_block_rule.exit.thread121.i
  %.260.i = phi ptr [ %.058.i, %case_block_rule.exit.thread121.i ], [ %i.dr, %bb.bu ] ; 2 uses
  %.155.i = phi i64 [ %.054.i, %case_block_rule.exit.thread121.i ], [ %i.dp, %bb.bu ]
  %i.dt = add i64 %.053.i, 1
  %i.du = getelementptr [8 x i8], ptr %.260.i, i64 %.053.i
  store ptr %.3.i124.i, ptr %i.du, align 8, !tbaa !31
  %i.dv = load i32, ptr %i.i, align 8, !tbaa !28
  br label %bb.u, !llvm.loop !61

bb.bw:                                            ; preds = %bb.bt
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread133.i

.thread133.i:                                     ; preds = %bb.bh, %.thread206.i, %bb.bw, %case_block_rule.exit.thread118.loopexit.i, %.thread111.i, %guard_rule.exit.thread.i, %bb.y
  %.sink258.i = phi i32 [ %storemerge.i106.i, %guard_rule.exit.thread.i ], [ %i.dl, %.thread111.i ], [ %i.ax, %bb.y ], [ %i.dw, %bb.bw ], [ %.pre192.i, %case_block_rule.exit.thread118.loopexit.i ], [ %storemerge136209.i, %.thread206.i ], [ %storemerge136.i, %bb.bh ]
  %i.dx = add i32 %.sink258.i, -1
  store i32 %i.dx, ptr %i.a, align 8, !tbaa !26
  store i32 %.052.i, ptr %i.i, align 8, !tbaa !28
  %i.dy = icmp eq i64 %.053.i, 0
  br i1 %i.dy, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.thread133.i
  %i.dz = load i32, ptr %i.g, align 8, !tbaa !27
  %.not71.i = icmp eq i32 %i.dz, 0
  br i1 %.not71.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx, %.thread133.i
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !57
  br label %_loop1_38_rule.exit.thread

bb.bz:                                            ; preds = %bb.bx
  %i.ea = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.eb = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.053.i, ptr noundef %i.ea) #6, !inline_history !57 ; 3 uses
  %.not72.i = icmp eq ptr %i.eb, null
  br i1 %.not72.i, label %bb.ca, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bz
  %i.ec = icmp sgt i64 %.053.i, 0
  br i1 %i.ec, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ed = getelementptr i8, ptr %i.eb, i64 8      ; 5 uses
  %xtraiter = and i64 %.053.i, 3                  ; 3 uses
  %i.ee = icmp ult i64 %.053.i, 4
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.053.i, 9223372036854775804
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !57
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ef = tail call ptr @PyErr_NoMemory() #6, !inline_history !57 ; 0 uses
  br label %_loop1_38_rule.exit.thread

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.new
  %.0163.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ez, %bb.cb ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.cb ]
  %i.eg = getelementptr [8 x i8], ptr %.058.i, i64 %.0163.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !31
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !43
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %.0163.i
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !31
  %i.ek = or disjoint i64 %.0163.i, 1             ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %.058.i, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !31
  %i.en = load ptr, ptr %i.ed, align 8, !tbaa !43
  %i.eo = getelementptr [8 x i8], ptr %i.en, i64 %i.ek
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !31
  %i.ep = or disjoint i64 %.0163.i, 2             ; 2 uses
  %i.eq = getelementptr [8 x i8], ptr %.058.i, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !31
  %i.es = load ptr, ptr %i.ed, align 8, !tbaa !43
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %i.ep
  store ptr %i.er, ptr %i.et, align 8, !tbaa !31
  %i.eu = or disjoint i64 %.0163.i, 3             ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %.058.i, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !31
  %i.ex = load ptr, ptr %i.ed, align 8, !tbaa !43
  %i.ey = getelementptr [8 x i8], ptr %i.ex, i64 %i.eu
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !31
  %i.ez = add nuw nsw i64 %.0163.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.cb, !llvm.loop !62

_loop1_38_rule.exit.thread:                       ; preds = %.thread130.i, %bb.s, %bb.q, %bb.by, %bb.t, %bb.ca
  %i.fa = load i32, ptr %i.a, align 8, !tbaa !26
  %i.fb = add i32 %i.fa, -1
  store i32 %i.fb, ptr %i.a, align 8, !tbaa !26
  br label %bb.ch

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.0163.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ez, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod335 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod335)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.epil.preheader
  %.0163.i.epil = phi i64 [ %.0163.i.epil.init, %.epil.preheader ], [ %i.fg, %bb.cc ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cc ]
  %i.fc = getelementptr [8 x i8], ptr %.058.i, i64 %.0163.i.epil
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !31
  %i.fe = load ptr, ptr %i.ed, align 8, !tbaa !43
  %i.ff = getelementptr [8 x i8], ptr %i.fe, i64 %.0163.i.epil
  store ptr %i.fd, ptr %i.ff, align 8, !tbaa !31
  %i.fg = add nuw nsw i64 %.0163.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.cc, !llvm.loop !63

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.cc, %.preheader.i
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !57
  %i.fh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.fi = add i32 %i.fh, -1
  store i32 %i.fi, ptr %i.a, align 8, !tbaa !26
  %i.fj = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 6) #6
  %.not71 = icmp eq ptr %i.fj, null
  br i1 %.not71, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %.loopexit
  %i.fk = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fm = getelementptr i8, ptr %i.fk, i64 28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !36
  %i.fo = getelementptr i8, ptr %i.fk, i64 32
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !37
  %i.fq = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.fr = tail call ptr @_PyAST_Match(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.eb, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.fn, i32 noundef %i.fp, ptr noundef %i.fq) #6
  %i.fs = tail call fastcc ptr @INVALID_VERSION_CHECK(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull @.str.183, ptr noundef %i.fr) ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.cf, label %.thread

bb.cf:                                            ; preds = %bb.ce
  %i.fu = tail call ptr @PyErr_Occurred() #6
  %.not72 = icmp eq ptr %i.fu, null
  br i1 %.not72, label %.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.ch:                                            ; preds = %_loop1_38_rule.exit.thread, %.loopexit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.fv = getelementptr i8, ptr %0, i64 148
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !50
  %.not73 = icmp eq i32 %i.fw, 0
  br i1 %.not73, label %.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fx = load i32, ptr %i.g, align 8, !tbaa !27
  %.not74 = icmp eq i32 %i.fx, 0
  br i1 %.not74, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %bb.ci
  %i.fy = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.a, align 8, !tbaa !26
  %i.ga = icmp eq i32 %i.fy, 6000
  br i1 %i.ga, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gb = tail call ptr @PyThreadState_Get() #6, !inline_history !64
  %i.gc = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.gb, i32 noundef 1) #6, !inline_history !64
  %.not.i95 = icmp eq i32 %i.gc, 0
  br i1 %.not.i95, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.gd = load i32, ptr %i.g, align 8, !tbaa !27
  %.not66.i96 = icmp eq i32 %i.gd, 0
  br i1 %.not66.i96, label %bb.cn, label %.thread83

bb.cn:                                            ; preds = %bb.cm
  %i.ge = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.gf = tail call ptr @_PyPegen_expect_soft_keyword(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #6, !inline_history !64
  %.not67.i97 = icmp eq ptr %i.gf, null
  br i1 %.not67.i97, label %bb.ct, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gg = tail call fastcc ptr @subject_expr_rule(ptr noundef nonnull %0), !inline_history !64
  %.not68.i98 = icmp eq ptr %i.gg, null
  br i1 %.not68.i98, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gh = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6, !inline_history !64
  %.not69.i = icmp eq ptr %i.gh, null
  br i1 %.not69.i, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.gi = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.gj = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.gi, i32 noundef 0, ptr noundef nonnull @.str.159) #6, !inline_history !64 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %INVALID_VERSION_CHECK.exit.thread.i, label %bb.cr

INVALID_VERSION_CHECK.exit.thread.i:              ; preds = %bb.cq
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.gl = getelementptr i8, ptr %0, i64 104
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !65
  %i.gn = icmp slt i32 %i.gm, 10
  br i1 %i.gn, label %INVALID_VERSION_CHECK.exit.i, label %invalid_match_stmt_rule.exit

INVALID_VERSION_CHECK.exit.i:                     ; preds = %bb.cr
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.go = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.gp = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.go, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.183, i32 noundef 10) #6, !inline_history !64 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.cs, label %invalid_match_stmt_rule.exit

bb.cs:                                            ; preds = %INVALID_VERSION_CHECK.exit.i, %INVALID_VERSION_CHECK.exit.thread.i
  %i.gr = tail call ptr @PyErr_Occurred() #6, !inline_history !64
  %.not70.i = icmp eq ptr %i.gr, null
  br i1 %.not70.i, label %.thread83, label %.thread83.sink.split

bb.ct:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  store i32 %i.ge, ptr %i.i, align 8, !tbaa !28
  %i.gs = load i32, ptr %i.g, align 8, !tbaa !27
  %.not71.i99 = icmp eq i32 %i.gs, 0
  br i1 %.not71.i99, label %bb.cu, label %.thread83

bb.cu:                                            ; preds = %bb.ct
  %i.gt = tail call ptr @_PyPegen_expect_soft_keyword(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #6, !inline_history !64 ; 2 uses
  %.not72.i100 = icmp eq ptr %i.gt, null
  br i1 %.not72.i100, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gu = tail call fastcc ptr @subject_expr_rule(ptr noundef nonnull %0), !inline_history !64
  %.not73.i = icmp eq ptr %i.gu, null
  br i1 %.not73.i, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.gv = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6, !inline_history !64
  %.not74.i = icmp eq ptr %i.gv, null
  br i1 %.not74.i, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gw = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6, !inline_history !64
  %.not75.i = icmp eq ptr %i.gw, null
  br i1 %.not75.i, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.gx = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 5) #6, !inline_history !64
  %.not76.i = icmp eq i32 %i.gx, 0
  br i1 %.not76.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gy = load ptr, ptr @PyExc_IndentationError, align 8, !tbaa !55
  %i.gz = getelementptr i8, ptr %i.gt, i64 40
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !59
  %i.hb = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.gy, i32 noundef 0, ptr noundef nonnull @.str.189, i32 noundef %i.ha) #6, !inline_history !64 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.da, label %invalid_match_stmt_rule.exit

bb.da:                                            ; preds = %bb.cz
  %i.hd = tail call ptr @PyErr_Occurred() #6, !inline_history !64
  %.not77.i = icmp eq ptr %i.hd, null
  br i1 %.not77.i, label %.thread83, label %.thread83.sink.split

bb.db:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu
  store i32 %i.ge, ptr %i.i, align 8, !tbaa !28
  %i.he = load i32, ptr %i.g, align 8, !tbaa !27
  %.not78.i = icmp eq i32 %i.he, 0
  br i1 %.not78.i, label %bb.dc, label %.thread83

bb.dc:                                            ; preds = %bb.db
  %i.hf = tail call ptr @_PyPegen_expect_soft_keyword(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #6, !inline_history !64 ; 3 uses
  %.not79.i = icmp eq ptr %i.hf, null
  br i1 %.not79.i, label %.thread83, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
end_hunk_2
begin_hunk_3_@slices_rule:bb.a
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread71

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = icmp eq i32 %.pre, 0
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %i.j to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  br i1 %i.t, label %bb.i, label %.thread71

bb.i:                                             ; preds = %.thread, %bb.h
  %.pn.in = phi ptr [ %i.q, %.thread ], [ %i.x, %bb.h ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in83 = getelementptr i8, ptr %.pn, i64 20
  %i.y = load i32, ptr %.in83, align 4, !tbaa !32
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.z = load i32, ptr %.in, align 8, !tbaa !35
  %i.aa = tail call fastcc ptr @slice_rule(ptr noundef nonnull %0) ; 2 uses
  %.not61 = icmp eq ptr %i.aa, null
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 12) #6
  %.not62 = icmp eq i32 %i.ab, 0
  br i1 %.not62, label %bb.k, label %.thread71

bb.k:                                             ; preds = %bb.i, %bb.j
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !27
  %.not63 = icmp eq i32 %i.ac, 0
  br i1 %.not63, label %bb.l, label %.thread71

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !26
  %i.af = icmp eq i32 %i.ad, 6000
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call ptr @PyThreadState_Get() #6, !inline_history !93
  %i.ah = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ag, i32 noundef 1) #6, !inline_history !93
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !93
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.ai, 0
  br i1 %.not22.i, label %bb.p, label %_gather_66_rule.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call fastcc ptr @_tmp_165_rule(ptr noundef nonnull %0), !inline_history !93 ; 2 uses
  %.not23.i = icmp eq ptr %i.aj, null
  br i1 %.not23.i, label %_gather_66_rule.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !26
  %i.am = icmp eq i32 %i.ak, 6000
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = tail call ptr @PyThreadState_Get() #6, !inline_history !94
  %i.ao = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.an, i32 noundef 1) #6, !inline_history !94
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !94
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not67.i.i, label %bb.u, label %_loop0_65_rule.exit.thread.sink.split.i

bb.u:                                             ; preds = %bb.t
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.ar = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !94 ; 4 uses
  %.not68.i.i = icmp eq ptr %i.ar, null
  br i1 %.not68.i.i, label %_loop0_65_rule.exit.thread.sink.split.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i.i = icmp eq i32 %i.as, 0
  br i1 %.not69.i.i, label %.preheader37.i, label %_loop0_65_rule.exit.thread.sink.split.i

.preheader37.i:                                   ; preds = %bb.v
  %i.at = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !94
  %.not70.i41.i = icmp eq ptr %i.at, null
  br i1 %.not70.i41.i, label %.critedge.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader37.i
  %i.au = tail call fastcc ptr @_tmp_165_rule(ptr noundef nonnull %0), !inline_history !94 ; 2 uses
  %.not71.i.i90 = icmp eq ptr %i.au, null
  br i1 %.not71.i.i90, label %.critedge.i.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.x
  %i.av = tail call fastcc ptr @_tmp_165_rule(ptr noundef nonnull %0), !inline_history !94 ; 2 uses
  %.not71.i.i = icmp eq ptr %i.av, null
  br i1 %.not71.i.i, label %.critedge.i.i, label %.lr.ph, !llvm.loop !95

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aw = phi ptr [ %i.av, %.lr.ph.i ], [ %i.au, %.lr.ph.i.preheader ]
  %.059.i42.i93 = phi i64 [ %.160.i.i, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %.058.i43.i92 = phi i64 [ %i.bb, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.054.i44.i91 = phi ptr [ %.256.i.i, %.lr.ph.i ], [ %i.ar, %.lr.ph.i.preheader ] ; 3 uses
  %i.ax = icmp eq i64 %.058.i43.i92, %.059.i42.i93
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.ay = shl i64 %.059.i42.i93, 1
  %i.az = shl i64 %.059.i42.i93, 4
  %i.ba = tail call ptr @PyMem_Realloc(ptr noundef %.054.i44.i91, i64 noundef %i.az) #6, !inline_history !94 ; 2 uses
  %.not72.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not72.not.i.i, label %_loop0_65_rule.exit.thread.sink.split.sink.split.sink.split.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph
  %.160.i.i = phi i64 [ %.059.i42.i93, %.lr.ph ], [ %i.ay, %bb.w ]
  %.256.i.i = phi ptr [ %.054.i44.i91, %.lr.ph ], [ %i.ba, %bb.w ] ; 4 uses
  %i.bb = add i64 %.058.i43.i92, 1                ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %.256.i.i, i64 %.058.i43.i92
  store ptr %i.aw, ptr %i.bc, align 8, !tbaa !31
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.be = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !94
  %.not70.i.i = icmp eq ptr %i.be, null
  br i1 %.not70.i.i, label %..critedge.i.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !95

..critedge.i.i.loopexit_crit_edge:                ; preds = %bb.x
  br label %.critedge.i.i, !llvm.loop !95

.critedge.i.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %..critedge.i.i.loopexit_crit_edge, %.preheader37.i
  %.058.i.lcssa.i = phi i64 [ 0, %.preheader37.i ], [ %i.bb, %..critedge.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i ] ; 5 uses
  %.054.i.lcssa.i = phi ptr [ %i.ar, %.preheader37.i ], [ %.256.i.i, %..critedge.i.i.loopexit_crit_edge ], [ %i.ar, %.lr.ph.i.preheader ], [ %.256.i.i, %.lr.ph.i ] ; 7 uses
  %.053.i.lcssa.i = phi i32 [ %i.aq, %.preheader37.i ], [ %i.bd, %..critedge.i.i.loopexit_crit_edge ], [ %i.aq, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i ]
  store i32 %.053.i.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.bf = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bh = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa.i, ptr noundef %i.bg) #6, !inline_history !94 ; 3 uses
  %.not73.i.i = icmp eq ptr %i.bh, null
  br i1 %.not73.i.i, label %_loop0_65_rule.exit.thread.sink.split.sink.split.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i.i
  %i.bi = icmp sgt i64 %.058.i.lcssa.i, 0
  br i1 %i.bi, label %.lr.ph53.i, label %_gather_66_rule.exit

.lr.ph53.i:                                       ; preds = %.preheader.i
  %i.bj = getelementptr i8, ptr %i.bh, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa.i, 3          ; 3 uses
  %i.bk = icmp ult i64 %.058.i.lcssa.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph53.i.new

.lr.ph53.i.new:                                   ; preds = %.lr.ph53.i
  %unroll_iter = and i64 %.058.i.lcssa.i, 9223372036854775804
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph53.i.new
  %.0.i52.i = phi i64 [ 0, %.lr.ph53.i.new ], [ %i.ce, %bb.y ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.i.new ], [ %niter.next.3, %bb.y ]
  %i.bl = getelementptr [8 x i8], ptr %.054.i.lcssa.i, i64 %.0.i52.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.0.i52.i
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !31
  %i.bp = or disjoint i64 %.0.i52.i, 1            ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %.054.i.lcssa.i, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bp
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !31
  %i.bu = or disjoint i64 %.0.i52.i, 2            ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %.054.i.lcssa.i, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.bu
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !31
  %i.bz = or disjoint i64 %.0.i52.i, 3            ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %.054.i.lcssa.i, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.bz
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !31
  %i.ce = add nuw nsw i64 %.0.i52.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_66_rule.exit.loopexit.unr-lcssa, label %bb.y, !llvm.loop !96

_loop0_65_rule.exit.thread.sink.split.sink.split.sink.split.i: ; preds = %bb.w, %.critedge.i.i
  %.054.i44.lcssa59.sink.i = phi ptr [ %.054.i.lcssa.i, %.critedge.i.i ], [ %.054.i44.i91, %bb.w ]
  tail call void @PyMem_Free(ptr noundef %.054.i44.lcssa59.sink.i) #6, !inline_history !93
  br label %_loop0_65_rule.exit.thread.sink.split.sink.split.i

_loop0_65_rule.exit.thread.sink.split.sink.split.i: ; preds = %_loop0_65_rule.exit.thread.sink.split.sink.split.sink.split.i, %bb.u
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.cf = tail call ptr @PyErr_NoMemory() #6, !inline_history !93 ; 0 uses
  br label %_loop0_65_rule.exit.thread.sink.split.i

_loop0_65_rule.exit.thread.sink.split.i:          ; preds = %_loop0_65_rule.exit.thread.sink.split.sink.split.i, %bb.v, %bb.t
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr %i.a, align 8, !tbaa !26
  br label %_gather_66_rule.exit.thread

_gather_66_rule.exit.thread:                      ; preds = %bb.p, %_loop0_65_rule.exit.thread.sink.split.i, %bb.o
  %storemerge.in.i86 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i87 = add i32 %storemerge.in.i86, -1
  store i32 %storemerge.i87, ptr %i.a, align 8, !tbaa !26
  br label %bb.af

_gather_66_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_66_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_66_rule.exit.loopexit.unr-lcssa, %.lr.ph53.i
  %.0.i52.i.epil.init = phi i64 [ 0, %.lr.ph53.i ], [ %i.ce, %_gather_66_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %.0.i52.i.epil = phi i64 [ %.0.i52.i.epil.init, %.epil.preheader ], [ %i.cm, %bb.z ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.ci = getelementptr [8 x i8], ptr %.054.i.lcssa.i, i64 %.0.i52.i.epil
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.ck = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %.0.i52.i.epil
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !31
  %i.cm = add nuw nsw i64 %.0.i52.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_66_rule.exit, label %bb.z, !llvm.loop !97

_gather_66_rule.exit:                             ; preds = %_gather_66_rule.exit.loopexit.unr-lcssa, %bb.z, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.i.lcssa.i) #6, !inline_history !94
  %storemerge.in.i.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i.i = add i32 %storemerge.in.i.i, -1
  store i32 %storemerge.i.i, ptr %i.a, align 8, !tbaa !26
  %i.cn = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.bh) #6, !inline_history !93 ; 2 uses
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %.not64 = icmp eq ptr %i.cn, null
  br i1 %.not64, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_gather_66_rule.exit
  %i.co = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !27
  %.not65 = icmp eq i32 %i.cp, 0
  br i1 %.not65, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cq = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread71, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr i8, ptr %i.cq, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !36
  %i.cu = getelementptr i8, ptr %i.cq, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !37
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.cx = tail call ptr @_PyAST_Tuple(ptr noundef nonnull %i.cn, i32 noundef 1, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.ct, i32 noundef %i.cv, ptr noundef %i.cw) #6 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ad, label %.thread71

bb.ad:                                            ; preds = %bb.ac
  %i.cz = tail call ptr @PyErr_Occurred() #6
  %.not66 = icmp eq ptr %i.cz, null
  br i1 %.not66, label %.thread71, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread71

bb.af:                                            ; preds = %_gather_66_rule.exit.thread, %bb.aa, %_gather_66_rule.exit
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread71

.thread71:                                        ; preds = %bb.af, %bb.j, %bb.ad, %bb.ac, %bb.ab, %bb.k, %bb.h, %bb.d, %bb.ae, %bb.g
  %.6 = phi ptr [ null, %bb.ae ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.ab ], [ null, %bb.h ], [ null, %bb.k ], [ null, %bb.af ], [ %i.aa, %bb.j ], [ null, %bb.ad ], [ %i.cx, %bb.ac ]
  %i.da = load i32, ptr %i.a, align 8, !tbaa !26
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr %i.a, align 8, !tbaa !26
  ret ptr %.6
}

declare ptr @_PyAST_Subscript(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @atom_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 16 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not177 = icmp eq i32 %i.h, 0
  br i1 %.not177, label %bb.e, label %.thread220

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 11 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 13 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread220

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = icmp eq i32 %.pre, 0
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %i.j to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  br i1 %i.t, label %bb.i, label %.thread220

bb.i:                                             ; preds = %.thread, %bb.h
  %.pn.in = phi ptr [ %i.q, %.thread ], [ %i.x, %bb.h ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in286 = getelementptr i8, ptr %.pn, i64 20
  %i.y = load i32, ptr %.in286, align 4, !tbaa !32 ; 4 uses
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.z = load i32, ptr %.in, align 8, !tbaa !35   ; 4 uses
  %i.aa = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not179 = icmp eq ptr %i.aa, null
  br i1 %.not179, label %bb.j, label %.thread220

bb.j:                                             ; preds = %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !27
  %.not180 = icmp eq i32 %i.ab, 0
  br i1 %.not180, label %bb.k, label %.thread220

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 627) #6
  %.not181 = icmp eq ptr %i.ac, null
  br i1 %.not181, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.thread220, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr i8, ptr %i.ad, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36
  %i.ah = getelementptr i8, ptr %i.ad, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !37
  %i.aj = getelementptr i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = tail call ptr @_PyAST_Constant(ptr noundef nonnull @_Py_TrueStruct, ptr noundef null, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.ag, i32 noundef %i.ai, ptr noundef %i.ak) #6 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %.thread220
end_hunk_3
begin_hunk_4_@comparison_rule:bb.a
  %.pr432 = load i32, ptr %i.g, align 8, !tbaa !27
  %i.dh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr %i.a, align 8, !tbaa !26
  store i32 %i.as, ptr %i.i, align 8, !tbaa !28
  %.not107.i = icmp eq i32 %.pr432, 0
  br i1 %.not107.i, label %bb.bi, label %compare_op_bitwise_or_pair_rule.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.dj = tail call fastcc ptr @gte_bitwise_or_rule(ptr noundef nonnull %0), !inline_history !109 ; 2 uses
  %.not108.i = icmp eq ptr %i.dj, null
  br i1 %.not108.i, label %bb.bj, label %bb.by

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.as, ptr %i.i, align 8, !tbaa !28
  %i.dk = load i32, ptr %i.g, align 8, !tbaa !27
  %.not109.i = icmp eq i32 %i.dk, 0
  br i1 %.not109.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dl = load i32, ptr %i.a, align 8, !tbaa !26
  br label %compare_op_bitwise_or_pair_rule.exit.thread

bb.bl:                                            ; preds = %bb.bj
  %i.dm = tail call fastcc ptr @gt_bitwise_or_rule(ptr noundef nonnull %0), !inline_history !109 ; 2 uses
  %.not110.i = icmp eq ptr %i.dm, null
  br i1 %.not110.i, label %bb.bm, label %bb.by

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.as, ptr %i.i, align 8, !tbaa !28
  %i.dn = load i32, ptr %i.g, align 8, !tbaa !27
  %.not111.i = icmp eq i32 %i.dn, 0
  br i1 %.not111.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.do = load i32, ptr %i.a, align 8, !tbaa !26
  br label %compare_op_bitwise_or_pair_rule.exit.thread

bb.bo:                                            ; preds = %bb.bm
  %i.dp = tail call fastcc ptr @notin_bitwise_or_rule(ptr noundef nonnull %0), !inline_history !109 ; 2 uses
  %.not112.i = icmp eq ptr %i.dp, null
  br i1 %.not112.i, label %bb.bp, label %bb.by

bb.bp:                                            ; preds = %bb.bo
  store i32 %i.as, ptr %i.i, align 8, !tbaa !28
  %i.dq = load i32, ptr %i.g, align 8, !tbaa !27
  %.not113.i = icmp eq i32 %i.dq, 0
  br i1 %.not113.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !26
  br label %compare_op_bitwise_or_pair_rule.exit.thread

bb.br:                                            ; preds = %bb.bp
  %i.ds = tail call fastcc ptr @in_bitwise_or_rule(ptr noundef nonnull %0), !inline_history !109 ; 2 uses
  %.not114.i = icmp eq ptr %i.ds, null
  br i1 %.not114.i, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  store i32 %i.as, ptr %i.i, align 8, !tbaa !28
  %i.dt = load i32, ptr %i.g, align 8, !tbaa !27
  %.not115.i = icmp eq i32 %i.dt, 0
  br i1 %.not115.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.du = load i32, ptr %i.a, align 8, !tbaa !26
  br label %compare_op_bitwise_or_pair_rule.exit.thread

bb.bu:                                            ; preds = %bb.bs
  %i.dv = tail call fastcc ptr @isnot_bitwise_or_rule(ptr noundef nonnull %0), !inline_history !109 ; 2 uses
  %.not116.i = icmp eq ptr %i.dv, null
  br i1 %.not116.i, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  store i32 %i.as, ptr %i.i, align 8, !tbaa !28
  %i.dw = load i32, ptr %i.g, align 8, !tbaa !27
  %.not117.i = icmp eq i32 %i.dw, 0
  br i1 %.not117.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dx = load i32, ptr %i.a, align 8, !tbaa !26
  br label %compare_op_bitwise_or_pair_rule.exit.thread

bb.bx:                                            ; preds = %bb.bv
  %i.dy = tail call fastcc ptr @is_bitwise_or_rule(ptr noundef nonnull %0), !inline_history !109 ; 2 uses
  %.not118.i = icmp eq ptr %i.dy, null
  br i1 %.not118.i, label %compare_op_bitwise_or_pair_rule.exit, label %bb.by

compare_op_bitwise_or_pair_rule.exit:             ; preds = %bb.bx
  %i.dz = load i32, ptr %i.a, align 8, !tbaa !26
  br label %compare_op_bitwise_or_pair_rule.exit.thread

.sink.split661:                                   ; preds = %bb.aa, %bb.ao, %bb.bf, %bb.aw
  %.10.i.ph.ph662 = phi ptr [ %i.dc, %bb.bf ], [ %i.cp, %bb.aw ], [ %i.bd, %bb.aa ], [ %i.cd, %bb.ao ]
  %i.ea = load i32, ptr %i.a, align 8, !tbaa !26
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr %i.a, align 8, !tbaa !26
  br label %bb.by

bb.by:                                            ; preds = %.sink.split661, %bb.bu, %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.bx
  %.10.i.ph = phi ptr [ %i.dy, %bb.bx ], [ %i.dv, %bb.bu ], [ %i.dp, %bb.bo ], [ %i.ds, %bb.br ], [ %i.dj, %bb.bi ], [ %i.dm, %bb.bl ], [ %.10.i.ph.ph662, %.sink.split661 ]
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ed = add i32 %i.ec, -1
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !26
  %i.ee = icmp eq i64 %.053.i, %.054.i
  br i1 %i.ee, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ef = shl i64 %.054.i, 1
  %i.eg = shl i64 %.054.i, 4
  %i.eh = tail call ptr @PyMem_Realloc(ptr noundef %.058.i, i64 noundef %i.eg) #6, !inline_history !108 ; 2 uses
  %.not70.not.i = icmp eq ptr %i.eh, null
  br i1 %.not70.not.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.260.i = phi ptr [ %.058.i, %bb.by ], [ %i.eh, %bb.bz ] ; 2 uses
  %.155.i = phi i64 [ %.054.i, %bb.by ], [ %i.ef, %bb.bz ]
  %i.ei = add i64 %.053.i, 1
  %i.ej = getelementptr [8 x i8], ptr %.260.i, i64 %.053.i
  store ptr %.10.i.ph, ptr %i.ej, align 8, !tbaa !31
  %i.ek = load i32, ptr %i.i, align 8, !tbaa !28
  br label %.preheader173, !llvm.loop !114

bb.cb:                                            ; preds = %bb.bz
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !108
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.el = tail call ptr @PyErr_NoMemory() #6, !inline_history !108 ; 0 uses
  br label %_loop1_63_rule.exit.thread.sink.split

compare_op_bitwise_or_pair_rule.exit.thread:      ; preds = %bb.bh, %bb.ay, %noteq_bitwise_or_rule.exit.i.thread, %eq_bitwise_or_rule.exit.i.thread, %.thread434, %.thread427, %noteq_bitwise_or_rule.exit.i.thread.thread422, %eq_bitwise_or_rule.exit.i.thread.thread417, %noteq_bitwise_or_rule.exit.i.thread.thread, %eq_bitwise_or_rule.exit.i.thread.thread, %bb.bn, %bb.bt, %bb.bq, %bb.bw, %bb.bk, %bb.t, %compare_op_bitwise_or_pair_rule.exit
  %.sink399 = phi i32 [ %i.do, %bb.bn ], [ %i.ba, %eq_bitwise_or_rule.exit.i.thread.thread417 ], [ %i.du, %bb.bt ], [ %i.bp, %noteq_bitwise_or_rule.exit.i.thread.thread422 ], [ %i.dr, %bb.bq ], [ %i.ct, %.thread427 ], [ %i.dx, %bb.bw ], [ %i.dz, %compare_op_bitwise_or_pair_rule.exit ], [ %i.dl, %bb.bk ], [ %i.ar, %bb.t ], [ %i.bh, %eq_bitwise_or_rule.exit.i.thread.thread ], [ %i.cg, %noteq_bitwise_or_rule.exit.i.thread.thread ], [ %i.dg, %.thread434 ], [ %i.di, %bb.bh ], [ %i.ci, %noteq_bitwise_or_rule.exit.i.thread ], [ %i.bj, %eq_bitwise_or_rule.exit.i.thread ], [ %i.cv, %bb.ay ]
  %i.em = add i32 %.sink399, -1
  store i32 %i.em, ptr %i.a, align 8, !tbaa !26
  store i32 %.052.i, ptr %i.i, align 8, !tbaa !28
  %i.en = icmp eq i64 %.053.i, 0
  br i1 %i.en, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %compare_op_bitwise_or_pair_rule.exit.thread
  %i.eo = load i32, ptr %i.g, align 8, !tbaa !27
  %.not71.i = icmp eq i32 %i.eo, 0
  br i1 %.not71.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %compare_op_bitwise_or_pair_rule.exit.thread
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !108
  br label %_loop1_63_rule.exit.thread.sink.split

bb.ce:                                            ; preds = %bb.cc
  %i.ep = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !38
  %i.er = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.053.i, ptr noundef %i.eq) #6, !inline_history !108 ; 4 uses
  %.not72.i = icmp eq ptr %i.er, null
  br i1 %.not72.i, label %_loop1_63_rule.exit.thread154, label %.preheader

.preheader:                                       ; preds = %bb.ce
  %i.es = icmp sgt i64 %.053.i, 0
  br i1 %i.es, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.et = getelementptr i8, ptr %i.er, i64 8      ; 5 uses
  %xtraiter = and i64 %.053.i, 3                  ; 3 uses
  %i.eu = icmp ult i64 %.053.i, 4
  br i1 %i.eu, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.053.i, 9223372036854775804
  br label %bb.cf

_loop1_63_rule.exit.thread154:                    ; preds = %bb.ce
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !108
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ev = tail call ptr @PyErr_NoMemory() #6, !inline_history !108 ; 0 uses
  br label %_loop1_63_rule.exit.thread.sink.split

bb.cf:                                            ; preds = %bb.cf, %.lr.ph.new
  %.0.i235 = phi i64 [ 0, %.lr.ph.new ], [ %i.fp, %bb.cf ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.cf ]
  %i.ew = getelementptr [8 x i8], ptr %.058.i, i64 %.0.i235
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !31
  %i.ey = load ptr, ptr %i.et, align 8, !tbaa !43
  %i.ez = getelementptr [8 x i8], ptr %i.ey, i64 %.0.i235
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !31
  %i.fa = or disjoint i64 %.0.i235, 1             ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %.058.i, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31
  %i.fd = load ptr, ptr %i.et, align 8, !tbaa !43
  %i.fe = getelementptr [8 x i8], ptr %i.fd, i64 %i.fa
  store ptr %i.fc, ptr %i.fe, align 8, !tbaa !31
  %i.ff = or disjoint i64 %.0.i235, 2             ; 2 uses
  %i.fg = getelementptr [8 x i8], ptr %.058.i, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !31
  %i.fi = load ptr, ptr %i.et, align 8, !tbaa !43
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %i.ff
  store ptr %i.fh, ptr %i.fj, align 8, !tbaa !31
  %i.fk = or disjoint i64 %.0.i235, 3             ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %.058.i, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !31
  %i.fn = load ptr, ptr %i.et, align 8, !tbaa !43
  %i.fo = getelementptr [8 x i8], ptr %i.fn, i64 %i.fk
  store ptr %i.fm, ptr %i.fo, align 8, !tbaa !31
  %i.fp = add nuw nsw i64 %.0.i235, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.cf, !llvm.loop !115

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.cf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0.i235.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fp, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod789 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod789)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.epil.preheader
  %.0.i235.epil = phi i64 [ %.0.i235.epil.init, %.epil.preheader ], [ %i.fu, %bb.cg ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cg ]
  %i.fq = getelementptr [8 x i8], ptr %.058.i, i64 %.0.i235.epil
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !31
  %i.fs = load ptr, ptr %i.et, align 8, !tbaa !43
  %i.ft = getelementptr [8 x i8], ptr %i.fs, i64 %.0.i235.epil
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !31
  %i.fu = add nuw nsw i64 %.0.i235.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.cg, !llvm.loop !116

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.cg, %.preheader
  tail call void @PyMem_Free(ptr noundef %.058.i) #6, !inline_history !108
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.fv = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.thread160, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge
  %i.fx = getelementptr i8, ptr %i.fv, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !36
  %i.fz = getelementptr i8, ptr %i.fv, i64 32
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !37
  %i.gb = tail call ptr @_PyPegen_get_cmpops(ptr noundef nonnull %0, ptr noundef nonnull %i.er) #6 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.ci, label %CHECK_CALL.exit

bb.ci:                                            ; preds = %bb.ch
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %CHECK_CALL.exit

CHECK_CALL.exit:                                  ; preds = %bb.ch, %bb.ci
  %i.gd = tail call ptr @_PyPegen_get_exprs(ptr noundef nonnull %0, ptr noundef nonnull %i.er) #6 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.cj, label %CHECK_CALL.exit69

bb.cj:                                            ; preds = %CHECK_CALL.exit
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %CHECK_CALL.exit69

CHECK_CALL.exit69:                                ; preds = %CHECK_CALL.exit, %bb.cj
  %i.gf = load ptr, ptr %i.ep, align 8, !tbaa !38
  %i.gg = tail call ptr @_PyAST_Compare(ptr noundef nonnull %i.aa, ptr noundef %i.gb, ptr noundef %i.gd, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.fy, i32 noundef %i.ga, ptr noundef %i.gf) #6 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.ck, label %.thread160

bb.ck:                                            ; preds = %CHECK_CALL.exit69
  %i.gi = tail call ptr @PyErr_Occurred() #6
  %.not65 = icmp eq ptr %i.gi, null
  br i1 %.not65, label %.thread160, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread160

_loop1_63_rule.exit.thread.sink.split:            ; preds = %bb.p, %bb.m, %_loop1_63_rule.exit.thread154, %bb.o, %bb.cd, %bb.cb
  %i.gj = load i32, ptr %i.a, align 8, !tbaa !26
  %i.gk = add i32 %i.gj, -1
  store i32 %i.gk, ptr %i.a, align 8, !tbaa !26
  br label %_loop1_63_rule.exit.thread

_loop1_63_rule.exit.thread:                       ; preds = %_loop1_63_rule.exit.thread.sink.split, %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.gl = load i32, ptr %i.g, align 8, !tbaa !27
  %.not66 = icmp eq i32 %i.gl, 0
  br i1 %.not66, label %bb.cm, label %.thread160

bb.cm:                                            ; preds = %_loop1_63_rule.exit.thread
  %i.gm = tail call fastcc ptr @bitwise_or_rule(ptr noundef nonnull %0) ; 2 uses
  %.not67 = icmp eq ptr %i.gm, null
  br i1 %.not67, label %bb.cn, label %.thread160

bb.cn:                                            ; preds = %bb.cm
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread160

.thread160:                                       ; preds = %bb.cm, %bb.cn, %bb.ck, %CHECK_CALL.exit69, %_loop1_63_rule.exit.thread, %._crit_edge, %bb.h, %bb.d, %bb.cl, %bb.g
  %.5 = phi ptr [ null, %bb.cl ], [ null, %bb.g ], [ null, %bb.d ], [ null, %_loop1_63_rule.exit.thread ], [ null, %._crit_edge ], [ null, %bb.h ], [ %i.gm, %bb.cm ], [ null, %bb.cn ], [ null, %bb.ck ], [ %i.gg, %CHECK_CALL.exit69 ]
  %i.gn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.go = add i32 %i.gn, -1
  store i32 %i.go, ptr %i.a, align 8, !tbaa !26
  ret ptr %.5
}

declare ptr @_PyAST_Compare(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyPegen_get_cmpops(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyPegen_get_exprs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gte_bitwise_or_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 30) #6
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @bitwise_or_rule(ptr noundef nonnull %0) ; 2 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_cmpop_expr_pair(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %i.l) #6 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @PyErr_Occurred() #6
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %.thread, label %.thread29

.thread29:                                        ; preds = %bb.h
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.i:                                             ; preds = %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %.thread29
  %.2 = phi ptr [ null, %.thread29 ], [ null, %bb.d ], [ null, %bb.i ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.p = load i32, ptr %i.a, align 8, !tbaa !26
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gt_bitwise_or_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
end_hunk_4
begin_hunk_5_@_loop1_87_rule:bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.bm = load i32, ptr %i.g, align 8, !tbaa !27
  %.not25.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not25.i.i, label %bb.ap, label %_tmp_136_rule.exit.thread.i

_tmp_136_rule.exit.thread.i:                      ; preds = %bb.ao
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.sink.split.i

bb.ap:                                            ; preds = %bb.ao
  %i.bo = tail call fastcc ptr @bitwise_or_rule(ptr noundef nonnull %0), !inline_history !119 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.bo, null
  %.pre93.i = load i32, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  br i1 %.not26.i.i, label %.sink.split.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bp = add i32 %.pre93.i, 1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !26
  %i.bq = icmp eq i32 %.pre93.i, 6000
  br i1 %i.bq, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.br = tail call ptr @PyThreadState_Get() #6, !inline_history !120
  %i.bs = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.br, i32 noundef 1) #6, !inline_history !120
  %.not.i30.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i30.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !120
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not62.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bv = add i32 %i.bu, -1
  br label %.sink.split.i

bb.av:                                            ; preds = %bb.at
  %i.bw = load i32, ptr %i.i, align 8, !tbaa !28
  %i.bx = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !120 ; 2 uses
  %.not63.i.i = icmp eq ptr %i.bx, null
  br i1 %.not63.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.by = tail call ptr @PyErr_NoMemory() #6, !inline_history !120 ; 0 uses
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ca = add i32 %i.bz, -1
  br label %.sink.split.i

bb.ax:                                            ; preds = %bb.av
  %i.cb = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not64.i.i, label %.preheader63.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cd = add i32 %i.cc, -1
  br label %.sink.split.i

.preheader63.i:                                   ; preds = %bb.ax, %bb.bg
  %.054.i.i = phi ptr [ %.256.i.i, %bb.bg ], [ %i.bx, %bb.ax ] ; 10 uses
  %.050.i.i = phi i64 [ %.151.i.i, %bb.bg ], [ 1, %bb.ax ] ; 4 uses
  %.049.i.i = phi i64 [ %i.ct, %bb.bg ], [ 0, %bb.ax ] ; 8 uses
  %.048.i.i = phi i32 [ %i.cv, %bb.bg ], [ %i.bw, %bb.ax ]
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.a, align 8, !tbaa !26
  %i.cg = icmp eq i32 %i.ce, 6000
  br i1 %i.cg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.preheader63.i
  %i.ch = tail call ptr @PyThreadState_Get() #6, !inline_history !121
  %i.ci = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ch, i32 noundef 1) #6, !inline_history !121
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.preheader63.i
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !121
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.cj = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not22.i.i.i, label %bb.bc, label %.loopexit.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.ck = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !121 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not23.i.i.i, label %.loopexit.sink.split.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cl = tail call fastcc ptr @bitwise_or_rule(ptr noundef nonnull %0), !inline_history !121 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not24.i.i.i, label %.loopexit.sink.split.i, label %_tmp_179_rule.exit.i.i

_tmp_179_rule.exit.i.i:                           ; preds = %bb.bd
  %i.cm = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cl) #6, !inline_history !121 ; 2 uses
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr %i.a, align 8, !tbaa !26
  %.not65.i.i = icmp eq ptr %i.cm, null
  br i1 %.not65.i.i, label %.loopexit.i, label %bb.be

bb.be:                                            ; preds = %_tmp_179_rule.exit.i.i
  %i.cp = icmp eq i64 %.049.i.i, %.050.i.i
  br i1 %i.cp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.cq = shl i64 %.050.i.i, 1
  %i.cr = shl i64 %.050.i.i, 4
  %i.cs = tail call ptr @PyMem_Realloc(ptr noundef %.054.i.i, i64 noundef %i.cr) #6, !inline_history !120 ; 2 uses
  %.not66.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not66.not.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.256.i.i = phi ptr [ %.054.i.i, %bb.be ], [ %i.cs, %bb.bf ] ; 2 uses
  %.151.i.i = phi i64 [ %.050.i.i, %bb.be ], [ %i.cq, %bb.bf ]
  %i.ct = add i64 %.049.i.i, 1
  %i.cu = getelementptr [8 x i8], ptr %.256.i.i, i64 %.049.i.i
  store ptr %i.cm, ptr %i.cu, align 8, !tbaa !31
  %i.cv = load i32, ptr %i.i, align 8, !tbaa !28
  br label %.preheader63.i, !llvm.loop !122

bb.bh:                                            ; preds = %bb.bf
  tail call void @PyMem_Free(ptr noundef %.054.i.i) #6, !inline_history !120
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.cw = tail call ptr @PyErr_NoMemory() #6, !inline_history !120 ; 0 uses
  %i.cx = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cy = add i32 %i.cx, -1
  br label %.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !26
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr %i.a, align 8, !tbaa !26
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_tmp_179_rule.exit.i.i, %.loopexit.sink.split.i
  store i32 %.048.i.i, ptr %i.i, align 8, !tbaa !28
  %i.db = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.dc = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.i.i, ptr noundef %i.db) #6, !inline_history !120 ; 3 uses
  %.not67.i.i = icmp eq ptr %i.dc, null
  br i1 %.not67.i.i, label %_loop0_174_rule.exit.thread45.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i
  %i.dd = icmp sgt i64 %.049.i.i, 0
  br i1 %i.dd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.de = getelementptr i8, ptr %i.dc, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.i.i, 3                ; 3 uses
  %i.df = icmp ult i64 %.049.i.i, 4
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.049.i.i, 9223372036854775804
  br label %bb.bi

_loop0_174_rule.exit.thread45.i:                  ; preds = %.loopexit.i
  tail call void @PyMem_Free(ptr noundef %.054.i.i) #6, !inline_history !120
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.dg = tail call ptr @PyErr_NoMemory() #6, !inline_history !120 ; 0 uses
  %storemerge.in.i47.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i48.i = add i32 %storemerge.in.i47.i, -1
  br label %.sink.split.i

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i.new
  %.0.i78.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ea, %bb.bi ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.bi ]
  %i.dh = getelementptr [8 x i8], ptr %.054.i.i, i64 %.0.i78.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %.0.i78.i
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !31
  %i.dl = or disjoint i64 %.0.i78.i, 1            ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %.054.i.i, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !31
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.dp = getelementptr [8 x i8], ptr %i.do, i64 %i.dl
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !31
  %i.dq = or disjoint i64 %.0.i78.i, 2            ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %.054.i.i, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31
  %i.dt = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %i.dq
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !31
  %i.dv = or disjoint i64 %.0.i78.i, 3            ; 2 uses
  %i.dw = getelementptr [8 x i8], ptr %.054.i.i, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31
  %i.dy = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dv
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !31
  %i.ea = add nuw nsw i64 %.0.i78.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !123

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.bi
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.0.i78.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ea, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod780 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod780)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader
  %.0.i78.i.epil = phi i64 [ %.0.i78.i.epil.init, %.epil.preheader ], [ %i.ef, %bb.bj ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bj ]
  %i.eb = getelementptr [8 x i8], ptr %.054.i.i, i64 %.0.i78.i.epil
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !31
  %i.ed = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %.0.i78.i.epil
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !31
  %i.ef = add nuw nsw i64 %.0.i78.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.bj, !llvm.loop !124

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.bj, %.preheader.i
  tail call void @PyMem_Free(ptr noundef %.054.i.i) #6, !inline_history !120
  %storemerge.in.i.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i.i = add i32 %storemerge.in.i.i, -1
  store i32 %storemerge.i.i, ptr %i.a, align 8, !tbaa !26
  %i.eg = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !119
  %i.eh = load i32, ptr %i.g, align 8, !tbaa !27
  %.not28.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not28.i.i, label %_tmp_136_rule.exit.i, label %._crit_edge._tmp_136_rule.exit.thread55_crit_edge.i

._crit_edge._tmp_136_rule.exit.thread55_crit_edge.i: ; preds = %._crit_edge.i
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.sink.split.i

_tmp_136_rule.exit.i:                             ; preds = %._crit_edge.i
  %i.ei = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.dc, ptr noundef %i.eg) #6, !inline_history !119
  %i.ej = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ek = add i32 %i.ej, -1
  store i32 %i.ek, ptr %i.a, align 8, !tbaa !26
  %.not27.i = icmp eq ptr %i.ei, null
  br i1 %.not27.i, label %.loopexit293, label %bb.bk

bb.bk:                                            ; preds = %_tmp_136_rule.exit.i
  %i.el = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 711) #6, !inline_history !118
  %.not28.i = icmp eq i32 %i.el, 0
  br i1 %.not28.i, label %.loopexit293, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.em = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.en = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.em, i32 noundef 0, ptr noundef nonnull @.str.59) #6, !inline_history !118 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.bm, label %invalid_for_if_clause_rule.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ep = tail call ptr @PyErr_Occurred() #6, !inline_history !118
  %.not29.i = icmp eq ptr %i.ep, null
  br i1 %.not29.i, label %.loopexit293, label %.thread60.i

.thread60.i:                                      ; preds = %bb.bm
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.loopexit293

.sink.split.i:                                    ; preds = %bb.ap, %._crit_edge._tmp_136_rule.exit.thread55_crit_edge.i, %_loop0_174_rule.exit.thread45.i, %bb.bh, %bb.ay, %bb.aw, %bb.au, %_tmp_136_rule.exit.thread.i
  %.sink114.i = phi i32 [ %i.bn, %_tmp_136_rule.exit.thread.i ], [ %.pre.i, %._crit_edge._tmp_136_rule.exit.thread55_crit_edge.i ], [ %storemerge.i48.i, %_loop0_174_rule.exit.thread45.i ], [ %i.cy, %bb.bh ], [ %i.bv, %bb.au ], [ %i.ca, %bb.aw ], [ %i.cd, %bb.ay ], [ %.pre93.i, %bb.ap ]
  %i.eq = add i32 %.sink114.i, -1
  store i32 %i.eq, ptr %i.a, align 8, !tbaa !26
  br label %.loopexit293

invalid_for_if_clause_rule.exit:                  ; preds = %bb.bl
  %i.er = load i32, ptr %i.a, align 8, !tbaa !26
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.a, align 8, !tbaa !26
  br label %for_if_clause_rule.exit.thread104

.loopexit293:                                     ; preds = %bb.ai, %bb.aj, %bb.ak, %_tmp_136_rule.exit.i, %bb.bk, %.sink.split.i, %.thread60.i, %bb.bm
  %i.et = load i32, ptr %i.a, align 8, !tbaa !26
  %i.eu = add i32 %i.et, -1
  store i32 %i.eu, ptr %i.a, align 8, !tbaa !26
  store i32 %i.w, ptr %i.i, align 8, !tbaa !28
  %.pr = load i32, ptr %i.p, align 4, !tbaa !50
  %.not102.i = icmp eq i32 %.pr, 0
  br i1 %.not102.i, label %for_if_clause_rule.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %.loopexit293
  %i.ev = load i32, ptr %i.g, align 8, !tbaa !27
  %.not103.i = icmp eq i32 %i.ev, 0
  br i1 %.not103.i, label %bb.bo, label %for_if_clause_rule.exit.thread

bb.bo:                                            ; preds = %bb.bn
  tail call fastcc void @invalid_for_target_rule(ptr noundef nonnull %0)
  br label %for_if_clause_rule.exit.thread

for_if_clause_rule.exit.thread104:                ; preds = %invalid_for_if_clause_rule.exit, %bb.aa, %INVALID_VERSION_CHECK.exit, %bb.s
  %.5.i107 = phi ptr [ %i.en, %invalid_for_if_clause_rule.exit ], [ %i.at, %bb.aa ], [ %i.aj, %INVALID_VERSION_CHECK.exit ], [ %i.ae, %bb.s ]
  %storemerge117.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge117 = add i32 %storemerge117.in, -1
  store i32 %storemerge117, ptr %i.a, align 8, !tbaa !26
  %i.ew = icmp eq i64 %.053, %.054
  br i1 %i.ew, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %for_if_clause_rule.exit.thread104
  %i.ex = shl i64 %.054, 1
  %i.ey = shl i64 %.054, 4
  %i.ez = tail call ptr @PyMem_Realloc(ptr noundef %.058, i64 noundef %i.ey) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.ez, null
  br i1 %.not70.not, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %for_if_clause_rule.exit.thread104
  %.260 = phi ptr [ %.058, %for_if_clause_rule.exit.thread104 ], [ %i.ez, %bb.bp ] ; 2 uses
  %.155 = phi i64 [ %.054, %for_if_clause_rule.exit.thread104 ], [ %i.ex, %bb.bp ]
  %i.fa = add i64 %.053, 1
  %i.fb = getelementptr [8 x i8], ptr %.260, i64 %.053
  store ptr %.5.i107, ptr %i.fb, align 8, !tbaa !31
  %i.fc = load i32, ptr %i.i, align 8, !tbaa !28
  br label %bb.h, !llvm.loop !125

bb.br:                                            ; preds = %bb.bp
  tail call void @PyMem_Free(ptr noundef %.058) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.fd = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.by

for_if_clause_rule.exit.thread:                   ; preds = %bb.ad, %bb.ae, %bb.y, %bb.z, %bb.u, %bb.p, %bb.q, %bb.k, %.loopexit, %bb.ab, %bb.bo, %.loopexit293, %bb.bn, %bb.ac, %bb.t
  %i.fe = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ff = add i32 %i.fe, -1
  store i32 %i.ff, ptr %i.a, align 8, !tbaa !26
  store i32 %.052, ptr %i.i, align 8, !tbaa !28
  %i.fg = icmp eq i64 %.053, 0
  br i1 %i.fg, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %for_if_clause_rule.exit.thread
  %i.fh = load i32, ptr %i.g, align 8, !tbaa !27
  %.not71 = icmp eq i32 %i.fh, 0
  br i1 %.not71, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %for_if_clause_rule.exit.thread
  tail call void @PyMem_Free(ptr noundef %.058) #6
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs
  %i.fi = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.fj = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.053, ptr noundef %i.fi) #6 ; 3 uses
  %.not72 = icmp eq ptr %i.fj, null
  br i1 %.not72, label %bb.bv, label %.preheader

.preheader:                                       ; preds = %bb.bu
  %i.fk = icmp sgt i64 %.053, 0
  br i1 %i.fk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.fl = getelementptr i8, ptr %i.fj, i64 8      ; 5 uses
  %xtraiter782 = and i64 %.053, 3                 ; 3 uses
  %i.fm = icmp ult i64 %.053, 4
  br i1 %i.fm, label %.epil.preheader781, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter786 = and i64 %.053, 9223372036854775804
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  tail call void @PyMem_Free(ptr noundef %.058) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.fn = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.by

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bx
  %lcmp.mod784.not = icmp eq i64 %xtraiter782, 0
  br i1 %lcmp.mod784.not, label %._crit_edge, label %.epil.preheader781

.epil.preheader781:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0173.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.gm, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod785 = icmp ne i64 %xtraiter782, 0
  tail call void @llvm.assume(i1 %lcmp.mod785)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.epil.preheader781
  %.0173.epil = phi i64 [ %.0173.epil.init, %.epil.preheader781 ], [ %i.fs, %bb.bw ] ; 3 uses
  %epil.iter783 = phi i64 [ 0, %.epil.preheader781 ], [ %epil.iter783.next, %bb.bw ]
  %i.fo = getelementptr [8 x i8], ptr %.058, i64 %.0173.epil
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !31
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !43
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %.0173.epil
  store ptr %i.fp, ptr %i.fr, align 8, !tbaa !31
  %i.fs = add nuw nsw i64 %.0173.epil, 1
  %epil.iter783.next = add i64 %epil.iter783, 1   ; 2 uses
  %epil.iter783.cmp.not = icmp eq i64 %epil.iter783.next, %xtraiter782
  br i1 %epil.iter783.cmp.not, label %._crit_edge, label %bb.bw, !llvm.loop !126

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.bw, %.preheader
  tail call void @PyMem_Free(ptr noundef %.058) #6
  br label %bb.by

bb.bx:                                            ; preds = %bb.bx, %.lr.ph.new
  %.0173 = phi i64 [ 0, %.lr.ph.new ], [ %i.gm, %bb.bx ] ; 6 uses
  %niter787 = phi i64 [ 0, %.lr.ph.new ], [ %niter787.next.3, %bb.bx ]
  %i.ft = getelementptr [8 x i8], ptr %.058, i64 %.0173
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !31
  %i.fv = load ptr, ptr %i.fl, align 8, !tbaa !43
  %i.fw = getelementptr [8 x i8], ptr %i.fv, i64 %.0173
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !31
  %i.fx = or disjoint i64 %.0173, 1               ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %.058, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !31
  %i.ga = load ptr, ptr %i.fl, align 8, !tbaa !43
  %i.gb = getelementptr [8 x i8], ptr %i.ga, i64 %i.fx
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !31
  %i.gc = or disjoint i64 %.0173, 2               ; 2 uses
  %i.gd = getelementptr [8 x i8], ptr %.058, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !31
  %i.gf = load ptr, ptr %i.fl, align 8, !tbaa !43
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %i.gc
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !31
  %i.gh = or disjoint i64 %.0173, 3               ; 2 uses
  %i.gi = getelementptr [8 x i8], ptr %.058, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !31
  %i.gk = load ptr, ptr %i.fl, align 8, !tbaa !43
  %i.gl = getelementptr [8 x i8], ptr %i.gk, i64 %i.gh
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !31
  %i.gm = add nuw nsw i64 %.0173, 4               ; 2 uses
  %niter787.next.3 = add i64 %niter787, 4         ; 2 uses
  %niter787.ncmp.3 = icmp eq i64 %niter787.next.3, %unroll_iter786
  br i1 %niter787.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.bx, !llvm.loop !127

bb.by:                                            ; preds = %bb.bv, %._crit_edge, %bb.g, %bb.d, %bb.br, %bb.f, %bb.bt
  %.7 = phi ptr [ null, %bb.br ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.bt ], [ null, %bb.g ], [ %i.fj, %._crit_edge ], [ null, %bb.bv ]
  %i.gn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.go = add i32 %i.gn, -1
  store i32 %i.go, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_targets_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 16 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 11 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.h, 0
  br i1 %.not64, label %bb.e, label %.thread77

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread77

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = icmp eq i32 %.pre, 0
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %i.j to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  br i1 %i.t, label %bb.i, label %.thread77

bb.i:                                             ; preds = %.thread, %bb.h
  %.pn.in = phi ptr [ %i.q, %.thread ], [ %i.x, %bb.h ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in90 = getelementptr i8, ptr %.pn, i64 20
  %i.y = load i32, ptr %.in90, align 4, !tbaa !32
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.z = load i32, ptr %.in, align 8, !tbaa !35
  %i.aa = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not66 = icmp eq ptr %i.aa, null
  br i1 %.not66, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 12) #6
  %.not67 = icmp eq i32 %i.ab, 0
  br i1 %.not67, label %bb.k, label %.thread77

bb.k:                                             ; preds = %bb.i, %bb.j
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !27
  %.not68 = icmp eq i32 %i.ac, 0
  br i1 %.not68, label %bb.l, label %.thread77

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.ad, null
  br i1 %.not69, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !26
  %i.ag = icmp eq i32 %i.ae, 6000
  br i1 %i.ag, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call ptr @PyThreadState_Get() #6, !inline_history !128
  %i.ai = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ah, i32 noundef 1) #6, !inline_history !128
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !128
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62.i = icmp eq i32 %i.aj, 0
  br i1 %.not62.i, label %bb.q, label %_loop0_97_rule.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !28
  %i.al = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !128 ; 3 uses
  %.not63.i = icmp eq ptr %i.al, null
  br i1 %.not63.i, label %_loop0_97_rule.exit.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64.i = icmp eq i32 %i.am, 0
  br i1 %.not64.i, label %.preheader70.i, label %_loop0_97_rule.exit.thread

.preheader70.i:                                   ; preds = %bb.r
  %i.an = tail call fastcc ptr @_tmp_168_rule(ptr noundef nonnull %0), !inline_history !128 ; 2 uses
  %.not6574.i = icmp eq ptr %i.an, null
  br i1 %.not6574.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader70.i, %_tmp_168_rule.exit
  %i.ao = phi ptr [ %i.bd, %_tmp_168_rule.exit ], [ %i.an, %.preheader70.i ]
  %.04977.i = phi i64 [ %i.at, %_tmp_168_rule.exit ], [ 0, %.preheader70.i ] ; 5 uses
  %.05076.i = phi i64 [ %.151.i, %_tmp_168_rule.exit ], [ 1, %.preheader70.i ] ; 2 uses
  %.05475.i = phi ptr [ %.256.i, %_tmp_168_rule.exit ], [ %i.al, %.preheader70.i ] ; 3 uses
  %i.ap = icmp eq i64 %.04977.i, %.05076.i
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.aq = shl i64 %.04977.i, 1
  %i.ar = shl i64 %.04977.i, 4
  %i.as = tail call ptr @PyMem_Realloc(ptr noundef %.05475.i, i64 noundef %i.ar) #6, !inline_history !128 ; 2 uses
  %.not66.not.i = icmp eq ptr %i.as, null
  br i1 %.not66.not.i, label %_loop0_97_rule.exit.thread.sink.split.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %.256.i = phi ptr [ %.05475.i, %.lr.ph.i ], [ %i.as, %bb.s ] ; 3 uses
  %.151.i = phi i64 [ %.05076.i, %.lr.ph.i ], [ %i.aq, %bb.s ]
  %i.at = add i64 %.04977.i, 1                    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.256.i, i64 %.04977.i
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !31
  %i.av = load i32, ptr %i.i, align 8, !tbaa !28
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !26
  %i.ay = icmp eq i32 %i.aw, 6000
  br i1 %i.ay, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = tail call ptr @PyThreadState_Get() #6, !inline_history !129
  %i.ba = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.az, i32 noundef 1) #6, !inline_history !129
  %.not.i92 = icmp eq i32 %i.ba, 0
  br i1 %.not.i92, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !129
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21.i = icmp eq i32 %i.bb, 0
  br i1 %.not21.i, label %bb.x, label %_tmp_168_rule.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bc = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !129
  %.not22.i = icmp eq ptr %i.bc, null
  br i1 %.not22.i, label %_tmp_168_rule.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0), !inline_history !129 ; 2 uses
  %.not23.i = icmp eq ptr %i.bd, null
  br i1 %.not23.i, label %_tmp_168_rule.exit.thread, label %_tmp_168_rule.exit

_tmp_168_rule.exit.thread:                        ; preds = %bb.w, %bb.x, %bb.y
  %storemerge.in.i94 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i95 = add i32 %storemerge.in.i94, -1
  store i32 %storemerge.i95, ptr %i.a, align 8, !tbaa !26
  br label %._crit_edge.i

_tmp_168_rule.exit:                               ; preds = %bb.y
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  br label %.lr.ph.i, !llvm.loop !130

._crit_edge.i:                                    ; preds = %_tmp_168_rule.exit.thread, %.preheader70.i
  %.054.lcssa.i = phi ptr [ %i.al, %.preheader70.i ], [ %.256.i, %_tmp_168_rule.exit.thread ] ; 7 uses
  %.049.lcssa.i = phi i64 [ 0, %.preheader70.i ], [ %i.at, %_tmp_168_rule.exit.thread ] ; 5 uses
  %.048.lcssa.i = phi i32 [ %i.ak, %.preheader70.i ], [ %i.av, %_tmp_168_rule.exit.thread ]
  store i32 %.048.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.be = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.bg = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa.i, ptr noundef %i.bf) #6, !inline_history !128 ; 3 uses
  %.not67.i = icmp eq ptr %i.bg, null
  br i1 %.not67.i, label %_loop0_97_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.bh = icmp sgt i64 %.049.lcssa.i, 0
  br i1 %i.bh, label %.lr.ph81.i, label %.loopexit

.lr.ph81.i:                                       ; preds = %.preheader.i
  %i.bi = getelementptr i8, ptr %i.bg, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa.i, 3            ; 3 uses
  %i.bj = icmp ult i64 %.049.lcssa.i, 4
  br i1 %i.bj, label %.epil.preheader, label %.lr.ph81.i.new

.lr.ph81.i.new:                                   ; preds = %.lr.ph81.i
  %unroll_iter = and i64 %.049.lcssa.i, 9223372036854775804
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph81.i.new
  %.080.i = phi i64 [ 0, %.lr.ph81.i.new ], [ %i.cd, %bb.z ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.i.new ], [ %niter.next.3, %bb.z ]
  %i.bk = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.080.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %.080.i
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !31
  %i.bo = or disjoint i64 %.080.i, 1              ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bo
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !31
  %i.bt = or disjoint i64 %.080.i, 2              ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bt
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !31
  %i.by = or disjoint i64 %.080.i, 3              ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %i.by
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !31
  %i.cd = add nuw nsw i64 %.080.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.z, !llvm.loop !131

_loop0_97_rule.exit.thread.sink.split.sink.split: ; preds = %bb.s, %._crit_edge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %._crit_edge.i ], [ %.05475.i, %bb.s ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_97_rule.exit.thread.sink.split

_loop0_97_rule.exit.thread.sink.split:            ; preds = %_loop0_97_rule.exit.thread.sink.split.sink.split, %bb.q
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ce = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_97_rule.exit.thread

_loop0_97_rule.exit.thread:                       ; preds = %_loop0_97_rule.exit.thread.sink.split, %bb.p, %bb.r
  %i.cf = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr %i.a, align 8, !tbaa !26
  br label %bb.ag

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph81.i
  %.080.i.epil.init = phi i64 [ 0, %.lr.ph81.i ], [ %i.cd, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod135 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %.080.i.epil = phi i64 [ %.080.i.epil.init, %.epil.preheader ], [ %i.cl, %bb.aa ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.ch = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.080.i.epil
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %.080.i.epil
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !31
  %i.cl = add nuw nsw i64 %.080.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.aa, !llvm.loop !132

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.aa, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6, !inline_history !128
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr %i.a, align 8, !tbaa !26
  %i.co = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !27
  %.not71 = icmp eq i32 %i.cp, 0
  br i1 %.not71, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %.loopexit
  %i.cq = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread77, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr i8, ptr %i.cq, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !36
  %i.cu = getelementptr i8, ptr %i.cq, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !37
  %i.cw = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.bg) #6 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ad, label %CHECK_CALL.exit

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %CHECK_CALL.exit

CHECK_CALL.exit:                                  ; preds = %bb.ac, %bb.ad
  %i.cy = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.cz = tail call ptr @_PyAST_Tuple(ptr noundef %i.cw, i32 noundef 2, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.ct, i32 noundef %i.cv, ptr noundef %i.cy) #6 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ae, label %.thread77

bb.ae:                                            ; preds = %CHECK_CALL.exit
  %i.db = tail call ptr @PyErr_Occurred() #6
  %.not72 = icmp eq ptr %i.db, null
  br i1 %.not72, label %.thread77, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread77

bb.ag:                                            ; preds = %_loop0_97_rule.exit.thread, %.loopexit, %bb.l
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread77

.thread77:                                        ; preds = %bb.ag, %bb.j, %bb.ae, %CHECK_CALL.exit, %bb.ab, %bb.k, %bb.h, %bb.d, %bb.af, %bb.g
  %.6 = phi ptr [ null, %bb.af ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.ab ], [ null, %bb.h ], [ null, %bb.k ], [ null, %bb.ag ], [ %i.aa, %bb.j ], [ null, %bb.ae ], [ %i.cz, %CHECK_CALL.exit ]
  %i.dc = load i32, ptr %i.a, align 8, !tbaa !26
  %i.dd = add i32 %i.dc, -1
  store i32 %i.dd, ptr %i.a, align 8, !tbaa !26
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_88_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 2 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader81, label %bb.t

.preheader81:                                     ; preds = %bb.g, %bb.o
  %.054 = phi ptr [ %.256, %bb.o ], [ %i.k, %bb.g ] ; 10 uses
  %.050 = phi i64 [ %.151, %bb.o ], [ 1, %bb.g ]  ; 4 uses
  %.049 = phi i64 [ %i.ab, %bb.o ], [ 0, %bb.g ]  ; 8 uses
  %.048 = phi i32 [ %i.ad, %bb.o ], [ %i.j, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.n, 6000
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader81
  %i.q = tail call ptr @PyThreadState_Get() #6, !inline_history !133
  %i.r = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.q, i32 noundef 1) #6, !inline_history !133
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader81
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !133
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21.i = icmp eq i32 %i.s, 0
  br i1 %.not21.i, label %bb.k, label %_tmp_166_rule.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 698) #6, !inline_history !133
  %.not22.i = icmp eq ptr %i.t, null
  br i1 %.not22.i, label %_tmp_166_rule.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call fastcc ptr @disjunction_rule(ptr noundef nonnull %0), !inline_history !133 ; 2 uses
  %.not23.i = icmp eq ptr %i.u, null
  br i1 %.not23.i, label %_tmp_166_rule.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load i32, ptr %i.a, align 8, !tbaa !26
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !26
  %i.x = icmp eq i64 %.049, %.050
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = shl i64 %.050, 1
  %i.z = shl i64 %.050, 4
  %i.aa = tail call ptr @PyMem_Realloc(ptr noundef %.054, i64 noundef %i.z) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.aa, null
  br i1 %.not66.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.256 = phi ptr [ %.054, %bb.m ], [ %i.aa, %bb.n ] ; 2 uses
  %.151 = phi i64 [ %.050, %bb.m ], [ %i.y, %bb.n ]
  %i.ab = add i64 %.049, 1
  %i.ac = getelementptr [8 x i8], ptr %.256, i64 %.049
  store ptr %i.u, ptr %i.ac, align 8, !tbaa !31
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !28
  br label %.preheader81, !llvm.loop !134

bb.p:                                             ; preds = %bb.n
end_hunk_5
begin_hunk_6_@star_targets_tuple_seq_rule:bb.a
bb.ak:                                            ; preds = %bb.ah, %bb.ag
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread61

.thread61:                                        ; preds = %bb.ak, %bb.af, %bb.ae, %bb.aj, %bb.ai, %_loop1_100_rule.exit.thread, %.thread67, %bb.d, %.thread73, %.thread64
  %.3 = phi ptr [ null, %.thread73 ], [ null, %_loop1_100_rule.exit.thread ], [ null, %.thread64 ], [ null, %bb.d ], [ null, %.thread67 ], [ null, %bb.ak ], [ %i.ce, %bb.ae ], [ null, %bb.af ], [ null, %bb.aj ], [ %i.cl, %bb.ai ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cp = add i32 %i.co, -1
  store i32 %i.cp, ptr %i.a, align 8, !tbaa !26
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_targets_list_seq_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.k, 6000
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyThreadState_Get() #6, !inline_history !144
  %i.o = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.n, i32 noundef 1) #6, !inline_history !144
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !144
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.i, label %_gather_99_rule.exit.thread

_gather_99_rule.exit.thread:                      ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0), !inline_history !144 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not23.i, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i32 %.pre, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp eq i32 %.pre, 6000
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @PyThreadState_Get() #6, !inline_history !145
  %i.v = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.u, i32 noundef 1) #6, !inline_history !145
  %.not.i26 = icmp eq i32 %i.v, 0
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !145
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.w, 0
  br i1 %.not67.i, label %bb.n, label %_gather_99_rule.exit.thread40.sink.split

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.y = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !145 ; 4 uses
  %.not68.i = icmp eq ptr %i.y, null
  br i1 %.not68.i, label %_gather_99_rule.exit.thread40.sink.split.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.z, 0
  br i1 %.not69.i, label %.preheader45, label %_gather_99_rule.exit.thread40.sink.split

.preheader45:                                     ; preds = %bb.o
  %i.aa = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !145
  %.not70.i49 = icmp eq ptr %i.aa, null
  br i1 %.not70.i49, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %i.ab = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0), !inline_history !145 ; 2 uses
  %.not71.i71 = icmp eq ptr %i.ab, null
  br i1 %.not71.i71, label %.critedge.i, label %.lr.ph75

.lr.ph:                                           ; preds = %bb.q
  %i.ac = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0), !inline_history !145 ; 2 uses
  %.not71.i = icmp eq ptr %i.ac, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph75, !llvm.loop !146

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ad = phi ptr [ %i.ac, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ]
  %.059.i5074 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i5173 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i5272 = phi ptr [ %.256.i, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.ae = icmp eq i64 %.058.i5173, %.059.i5074
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph75
  %i.af = shl i64 %.058.i5173, 1
  %i.ag = shl i64 %.058.i5173, 4
  %i.ah = tail call ptr @PyMem_Realloc(ptr noundef %.054.i5272, i64 noundef %i.ag) #6, !inline_history !145 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ah, null
  br i1 %.not72.not.i, label %_gather_99_rule.exit.thread40.sink.split.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph75
  %.160.i = phi i64 [ %.059.i5074, %.lr.ph75 ], [ %i.af, %bb.p ]
  %.256.i = phi ptr [ %.054.i5272, %.lr.ph75 ], [ %i.ah, %bb.p ] ; 4 uses
  %i.ai = add i64 %.058.i5173, 1                  ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i5173
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !31
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.al = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !145
  %.not70.i = icmp eq ptr %i.al, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !146

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.q
  br label %.critedge.i, !llvm.loop !146

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader45
  %.058.i.lcssa = phi i64 [ 0, %.preheader45 ], [ %i.ai, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ai, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.y, %.preheader45 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.y, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.x, %.preheader45 ], [ %i.ak, %..critedge.i.loopexit_crit_edge ], [ %i.x, %.lr.ph.preheader ], [ %i.ak, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.an) #6, !inline_history !145 ; 3 uses
  %.not73.i = icmp eq ptr %i.ao, null
  br i1 %.not73.i, label %_gather_99_rule.exit.thread40.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.ap = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.ap, label %.lr.ph61, label %_gather_99_rule.exit

.lr.ph61:                                         ; preds = %.preheader
  %i.aq = getelementptr i8, ptr %i.ao, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.ar = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph61.new
  %.0.i60 = phi i64 [ 0, %.lr.ph61.new ], [ %i.bl, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.3, %bb.r ]
  %i.as = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.0.i60
  store ptr %i.at, ptr %i.av, align 8, !tbaa !31
  %i.aw = or disjoint i64 %.0.i60, 1              ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.aw
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !31
  %i.bb = or disjoint i64 %.0.i60, 2              ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bb
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !31
  %i.bg = or disjoint i64 %.0.i60, 3              ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !31
  %i.bl = add nuw nsw i64 %.0.i60, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_99_rule.exit.loopexit.unr-lcssa, label %bb.r, !llvm.loop !147

_gather_99_rule.exit.thread40.sink.split.sink.split.sink.split: ; preds = %bb.p, %.critedge.i
  %.054.i.lcssa.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i5272, %bb.p ]
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa.sink) #6
  br label %_gather_99_rule.exit.thread40.sink.split.sink.split

_gather_99_rule.exit.thread40.sink.split.sink.split: ; preds = %_gather_99_rule.exit.thread40.sink.split.sink.split.sink.split, %bb.n
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_gather_99_rule.exit.thread40.sink.split

_gather_99_rule.exit.thread40.sink.split:         ; preds = %_gather_99_rule.exit.thread40.sink.split.sink.split, %bb.o, %bb.m
  %storemerge.in.i32 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i33 = add i32 %storemerge.in.i32, -1
  br label %.sink.split

_gather_99_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_99_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_99_rule.exit.loopexit.unr-lcssa, %.lr.ph61
  %.0.i60.epil.init = phi i64 [ 0, %.lr.ph61 ], [ %i.bl, %_gather_99_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.0.i60.epil = phi i64 [ %.0.i60.epil.init, %.epil.preheader ], [ %i.br, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.bn = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60.epil
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.0.i60.epil
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !31
  %i.br = add nuw nsw i64 %.0.i60.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_99_rule.exit, label %bb.s, !llvm.loop !148

_gather_99_rule.exit:                             ; preds = %_gather_99_rule.exit.loopexit.unr-lcssa, %bb.s, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !145
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bs = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ao) #6, !inline_history !144 ; 2 uses
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !26
  %.not23 = icmp eq ptr %i.bs, null
  br i1 %.not23, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_gather_99_rule.exit
  %i.bv = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24 = icmp eq i32 %i.bw, 0
  br i1 %.not24, label %bb.v, label %bb.u

.sink.split:                                      ; preds = %bb.i, %_gather_99_rule.exit.thread40.sink.split, %_gather_99_rule.exit.thread
  %.sink69 = phi i32 [ %i.q, %_gather_99_rule.exit.thread ], [ %.pre, %bb.i ], [ %storemerge.i33, %_gather_99_rule.exit.thread40.sink.split ]
  %i.bx = add i32 %.sink69, -1
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_gather_99_rule.exit, %bb.t
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.u ], [ %i.bs, %bb.t ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyAST_List(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_168_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ %i.l, %bb.f ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyPegen_dummy_name(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_expressions_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 16 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 17 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not90 = icmp eq i32 %i.h, 0
  br i1 %.not90, label %bb.e, label %.thread124

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 7 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread124

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = icmp eq i32 %.pre, 0
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %i.j to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  br i1 %i.t, label %bb.i, label %.thread124

bb.i:                                             ; preds = %.thread, %bb.h
  %.pn.in = phi ptr [ %i.q, %.thread ], [ %i.x, %bb.h ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in189 = getelementptr i8, ptr %.pn, i64 20
  %i.y = load i32, ptr %.in189, align 4, !tbaa !32 ; 2 uses
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.z = load i32, ptr %.in, align 8, !tbaa !35   ; 2 uses
  %i.aa = tail call fastcc ptr @star_expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not92 = icmp eq ptr %i.aa, null
  br i1 %.not92, label %_loop1_56_rule.exit.thread, label %bb.j
end_hunk_6
begin_hunk_7_@star_named_expression_rule:bb.a
bb.q:                                             ; preds = %bb.p
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.q, %bb.m, %bb.l, %bb.o, %bb.k, %bb.h, %bb.d, %bb.n, %bb.g
  %.5 = phi ptr [ null, %bb.n ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.o ], [ null, %bb.k ], [ null, %bb.h ], [ %i.ao, %bb.p ], [ null, %bb.q ], [ null, %bb.m ], [ %i.ak, %bb.l ]
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !26
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !26
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_named_expressions_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.k, 6000
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyThreadState_Get() #6, !inline_history !154
  %i.o = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.n, i32 noundef 1) #6, !inline_history !154
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !154
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.i, label %_gather_58_rule.exit.thread

_gather_58_rule.exit.thread:                      ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @star_named_expression_rule(ptr noundef nonnull %0), !inline_history !154 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not23.i, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i32 %.pre, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp eq i32 %.pre, 6000
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @PyThreadState_Get() #6, !inline_history !155
  %i.v = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.u, i32 noundef 1) #6, !inline_history !155
  %.not.i26 = icmp eq i32 %i.v, 0
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !155
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.w, 0
  br i1 %.not67.i, label %bb.n, label %_gather_58_rule.exit.thread40.sink.split

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.y = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !155 ; 4 uses
  %.not68.i = icmp eq ptr %i.y, null
  br i1 %.not68.i, label %_gather_58_rule.exit.thread40.sink.split.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.z, 0
  br i1 %.not69.i, label %.preheader45, label %_gather_58_rule.exit.thread40.sink.split

.preheader45:                                     ; preds = %bb.o
  %i.aa = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !155
  %.not70.i49 = icmp eq ptr %i.aa, null
  br i1 %.not70.i49, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %i.ab = tail call fastcc ptr @star_named_expression_rule(ptr noundef nonnull %0), !inline_history !155 ; 2 uses
  %.not71.i71 = icmp eq ptr %i.ab, null
  br i1 %.not71.i71, label %.critedge.i, label %.lr.ph75

.lr.ph:                                           ; preds = %bb.q
  %i.ac = tail call fastcc ptr @star_named_expression_rule(ptr noundef nonnull %0), !inline_history !155 ; 2 uses
  %.not71.i = icmp eq ptr %i.ac, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph75, !llvm.loop !156

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ad = phi ptr [ %i.ac, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ]
  %.059.i5074 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i5173 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i5272 = phi ptr [ %.256.i, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.ae = icmp eq i64 %.058.i5173, %.059.i5074
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph75
  %i.af = shl i64 %.058.i5173, 1
  %i.ag = shl i64 %.058.i5173, 4
  %i.ah = tail call ptr @PyMem_Realloc(ptr noundef %.054.i5272, i64 noundef %i.ag) #6, !inline_history !155 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ah, null
  br i1 %.not72.not.i, label %_gather_58_rule.exit.thread40.sink.split.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph75
  %.160.i = phi i64 [ %.059.i5074, %.lr.ph75 ], [ %i.af, %bb.p ]
  %.256.i = phi ptr [ %.054.i5272, %.lr.ph75 ], [ %i.ah, %bb.p ] ; 4 uses
  %i.ai = add i64 %.058.i5173, 1                  ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i5173
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !31
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.al = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !155
  %.not70.i = icmp eq ptr %i.al, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !156

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.q
  br label %.critedge.i, !llvm.loop !156

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader45
  %.058.i.lcssa = phi i64 [ 0, %.preheader45 ], [ %i.ai, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ai, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.y, %.preheader45 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.y, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.x, %.preheader45 ], [ %i.ak, %..critedge.i.loopexit_crit_edge ], [ %i.x, %.lr.ph.preheader ], [ %i.ak, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.an) #6, !inline_history !155 ; 3 uses
  %.not73.i = icmp eq ptr %i.ao, null
  br i1 %.not73.i, label %_gather_58_rule.exit.thread40.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.ap = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.ap, label %.lr.ph61, label %_gather_58_rule.exit

.lr.ph61:                                         ; preds = %.preheader
  %i.aq = getelementptr i8, ptr %i.ao, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.ar = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph61.new
  %.0.i60 = phi i64 [ 0, %.lr.ph61.new ], [ %i.bl, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.3, %bb.r ]
  %i.as = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.0.i60
  store ptr %i.at, ptr %i.av, align 8, !tbaa !31
  %i.aw = or disjoint i64 %.0.i60, 1              ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.aw
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !31
  %i.bb = or disjoint i64 %.0.i60, 2              ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bb
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !31
  %i.bg = or disjoint i64 %.0.i60, 3              ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !31
  %i.bl = add nuw nsw i64 %.0.i60, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_58_rule.exit.loopexit.unr-lcssa, label %bb.r, !llvm.loop !157

_gather_58_rule.exit.thread40.sink.split.sink.split.sink.split: ; preds = %bb.p, %.critedge.i
  %.054.i.lcssa.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i5272, %bb.p ]
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa.sink) #6
  br label %_gather_58_rule.exit.thread40.sink.split.sink.split

_gather_58_rule.exit.thread40.sink.split.sink.split: ; preds = %_gather_58_rule.exit.thread40.sink.split.sink.split.sink.split, %bb.n
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_gather_58_rule.exit.thread40.sink.split

_gather_58_rule.exit.thread40.sink.split:         ; preds = %_gather_58_rule.exit.thread40.sink.split.sink.split, %bb.o, %bb.m
  %storemerge.in.i32 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i33 = add i32 %storemerge.in.i32, -1
  br label %.sink.split

_gather_58_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_58_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_58_rule.exit.loopexit.unr-lcssa, %.lr.ph61
  %.0.i60.epil.init = phi i64 [ 0, %.lr.ph61 ], [ %i.bl, %_gather_58_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.0.i60.epil = phi i64 [ %.0.i60.epil.init, %.epil.preheader ], [ %i.br, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.bn = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60.epil
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.0.i60.epil
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !31
  %i.br = add nuw nsw i64 %.0.i60.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_58_rule.exit, label %bb.s, !llvm.loop !158

_gather_58_rule.exit:                             ; preds = %_gather_58_rule.exit.loopexit.unr-lcssa, %bb.s, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !155
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bs = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ao) #6, !inline_history !154 ; 2 uses
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !26
  %.not23 = icmp eq ptr %i.bs, null
  br i1 %.not23, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_gather_58_rule.exit
  %i.bv = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24 = icmp eq i32 %i.bw, 0
  br i1 %.not24, label %bb.v, label %bb.u

.sink.split:                                      ; preds = %bb.i, %_gather_58_rule.exit.thread40.sink.split, %_gather_58_rule.exit.thread
  %.sink69 = phi i32 [ %i.q, %_gather_58_rule.exit.thread ], [ %.pre, %bb.i ], [ %storemerge.i33, %_gather_58_rule.exit.thread40.sink.split ]
  %i.bx = add i32 %.sink69, -1
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_gather_58_rule.exit, %bb.t
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.u ], [ %i.bs, %bb.t ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyPegen_seq_last_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @args_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 17 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not80 = icmp eq i32 %i.h, 0
  br i1 %.not80, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread93

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28   ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !29
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = sext i32 %i.k to i64
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.u = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread93

bb.i:                                             ; preds = %bb.g
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.v = icmp eq i32 %.pre, 0
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = sext i32 %i.k to i64
  %i.z = getelementptr [8 x i8], ptr %i.x, i64 %i.y
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread93

bb.k:                                             ; preds = %.thread, %bb.i
  %.pn.in = phi ptr [ %i.r, %.thread ], [ %i.z, %bb.i ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in126 = getelementptr i8, ptr %.pn, i64 20
  %i.ab = load i32, ptr %.in126, align 4, !tbaa !32 ; 2 uses
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.ac = load i32, ptr %.in, align 8, !tbaa !35  ; 2 uses
  %i.ad = tail call fastcc ptr @_gather_91_rule(ptr noundef nonnull %0) ; 2 uses
  %.not82 = icmp eq ptr %i.ad, null
  br i1 %.not82, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !26
  %i.ag = icmp eq i32 %i.ae, 6000
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call ptr @PyThreadState_Get() #6, !inline_history !159
  %i.ai = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ah, i32 noundef 1) #6, !inline_history !159
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !159
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21.i = icmp eq i32 %i.aj, 0
  br i1 %.not21.i, label %bb.p, label %_tmp_92_rule.exit.thread

_tmp_92_rule.exit.thread:                         ; preds = %bb.o
  %storemerge.in121 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge122 = add i32 %storemerge.in121, -1
  br label %.thread100

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !28
  %i.al = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !159
  %.not22.i = icmp eq ptr %i.al, null
  br i1 %.not22.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call fastcc ptr @kwargs_rule(ptr noundef nonnull %0), !inline_history !159 ; 2 uses
  %.not23.i = icmp eq ptr %i.am, null
  br i1 %.not23.i, label %bb.r, label %_tmp_92_rule.exit

bb.r:                                             ; preds = %bb.p, %bb.q
  store i32 %i.ak, ptr %i.j, align 8, !tbaa !28
  br label %_tmp_92_rule.exit

end_hunk_7
begin_hunk_8_@invalid_arguments_rule:bb.a
  %i.ab = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #6, !inline_history !161
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ad = add i32 %i.ac, -1                       ; 3 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !26
  %.not28.i = icmp eq ptr %i.ab, null
  br i1 %.not28.i, label %bb.q, label %bb.s

.sink.split:                                      ; preds = %bb.n, %bb.o, %bb.p, %bb.m
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !26
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.a, align 8, !tbaa !26
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_tmp_169_rule.exit
  %i.ag = phi i32 [ %i.ad, %_tmp_169_rule.exit ], [ %i.af, %.sink.split ]
  store i32 %i.r, ptr %i.i, align 8, !tbaa !28
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29.i = icmp eq i32 %i.ah, 0
  br i1 %.not29.i, label %bb.r, label %_tmp_107_rule.exit.thread.thread

_tmp_107_rule.exit.thread.thread:                 ; preds = %bb.q
  %i.ai = add i32 %i.ag, -1
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread267

bb.r:                                             ; preds = %bb.q
  %i.aj = tail call fastcc ptr @kwargs_rule(ptr noundef nonnull %0), !inline_history !160
  %.not30.i = icmp eq ptr %i.aj, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  br i1 %.not30.i, label %_tmp_107_rule.exit.thread.sink.split, label %bb.s

bb.s:                                             ; preds = %_tmp_169_rule.exit, %bb.r
  %i.ak = phi i32 [ %i.ad, %_tmp_169_rule.exit ], [ %.pre, %bb.r ]
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !26
  %i.am = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 3 uses
  %.not152 = icmp eq ptr %i.am, null
  br i1 %.not152, label %_tmp_107_rule.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !26
  %i.ap = icmp eq i32 %i.an, 6000
  br i1 %i.ap, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = tail call ptr @PyThreadState_Get() #6, !inline_history !162
  %i.ar = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.aq, i32 noundef 1) #6, !inline_history !162
  %.not.i188 = icmp eq i32 %i.ar, 0
  br i1 %.not.i188, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !162
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.as = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.as, 0
  br i1 %.not22.i, label %bb.x, label %_gather_109_rule.exit.thread

_gather_109_rule.exit.thread:                     ; preds = %bb.w
  %i.at = load i32, ptr %i.a, align 8, !tbaa !26
  br label %_tmp_107_rule.exit.thread.sink.split

bb.x:                                             ; preds = %bb.w
  %i.au = tail call fastcc ptr @_tmp_170_rule(ptr noundef nonnull %0), !inline_history !162 ; 2 uses
  %.not23.i = icmp eq ptr %i.au, null
  %.pre305 = load i32, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  br i1 %.not23.i, label %_tmp_107_rule.exit.thread.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = add i32 %.pre305, 1
  store i32 %i.av, ptr %i.a, align 8, !tbaa !26
  %i.aw = icmp eq i32 %.pre305, 6000
  br i1 %i.aw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = tail call ptr @PyThreadState_Get() #6, !inline_history !163
  %i.ay = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ax, i32 noundef 1) #6, !inline_history !163
  %.not.i202 = icmp eq i32 %i.ay, 0
  br i1 %.not.i202, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !163
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.az = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.az, 0
  br i1 %.not67.i, label %bb.ac, label %_gather_109_rule.exit.thread236.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.ba = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.bb = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !163 ; 4 uses
  %.not68.i = icmp eq ptr %i.bb, null
  br i1 %.not68.i, label %_gather_109_rule.exit.thread236.sink.split.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bc = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.bc, 0
  br i1 %.not69.i, label %.preheader287, label %_gather_109_rule.exit.thread236.sink.split

.preheader287:                                    ; preds = %bb.ad
  %i.bd = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !163
  %.not70.i291 = icmp eq ptr %i.bd, null
  br i1 %.not70.i291, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader287
  %i.be = tail call fastcc ptr @_tmp_170_rule(ptr noundef nonnull %0), !inline_history !163 ; 2 uses
  %.not71.i334 = icmp eq ptr %i.be, null
  br i1 %.not71.i334, label %.critedge.i, label %.lr.ph338

.lr.ph:                                           ; preds = %bb.af
  %i.bf = tail call fastcc ptr @_tmp_170_rule(ptr noundef nonnull %0), !inline_history !163 ; 2 uses
  %.not71.i = icmp eq ptr %i.bf, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph338, !llvm.loop !164

.lr.ph338:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bg = phi ptr [ %i.bf, %.lr.ph ], [ %i.be, %.lr.ph.preheader ]
  %.059.i292337 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i293336 = phi i64 [ %i.bl, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i294335 = phi ptr [ %.256.i, %.lr.ph ], [ %i.bb, %.lr.ph.preheader ] ; 3 uses
  %i.bh = icmp eq i64 %.058.i293336, %.059.i292337
  br i1 %i.bh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph338
  %i.bi = shl i64 %.058.i293336, 1
  %i.bj = shl i64 %.058.i293336, 4
  %i.bk = tail call ptr @PyMem_Realloc(ptr noundef %.054.i294335, i64 noundef %i.bj) #6, !inline_history !163 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.bk, null
  br i1 %.not72.not.i, label %_gather_109_rule.exit.thread236.sink.split.sink.split.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph338
  %.160.i = phi i64 [ %.059.i292337, %.lr.ph338 ], [ %i.bi, %bb.ae ]
  %.256.i = phi ptr [ %.054.i294335, %.lr.ph338 ], [ %i.bk, %bb.ae ] ; 4 uses
  %i.bl = add i64 %.058.i293336, 1                ; 3 uses
  %i.bm = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i293336
  store ptr %i.bg, ptr %i.bm, align 8, !tbaa !31
  %i.bn = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.bo = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !163
  %.not70.i = icmp eq ptr %i.bo, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !164

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.af
  br label %.critedge.i, !llvm.loop !164

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader287
  %.058.i.lcssa = phi i64 [ 0, %.preheader287 ], [ %i.bl, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.bl, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.bb, %.preheader287 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.bb, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.ba, %.preheader287 ], [ %i.bn, %..critedge.i.loopexit_crit_edge ], [ %i.ba, %.lr.ph.preheader ], [ %i.bn, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.bp = getelementptr i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.br = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.bq) #6, !inline_history !163 ; 3 uses
  %.not73.i = icmp eq ptr %i.br, null
  br i1 %.not73.i, label %_gather_109_rule.exit.thread236.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.bs = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.bs, label %.lr.ph303, label %_gather_109_rule.exit

.lr.ph303:                                        ; preds = %.preheader
  %i.bt = getelementptr i8, ptr %i.br, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.bu = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.bu, label %.epil.preheader, label %.lr.ph303.new

.lr.ph303.new:                                    ; preds = %.lr.ph303
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph303.new
  %.0.i302 = phi i64 [ 0, %.lr.ph303.new ], [ %i.co, %bb.ag ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph303.new ], [ %niter.next.3, %bb.ag ]
  %i.bv = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i302
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !43
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.0.i302
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !31
  %i.bz = or disjoint i64 %.0.i302, 1             ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !43
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.bz
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !31
  %i.ce = or disjoint i64 %.0.i302, 2             ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !43
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %i.ce
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !31
  %i.cj = or disjoint i64 %.0.i302, 3             ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31
  %i.cm = load ptr, ptr %i.bt, align 8, !tbaa !43
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %i.cj
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !31
  %i.co = add nuw nsw i64 %.0.i302, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_109_rule.exit.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !165

_gather_109_rule.exit.thread236.sink.split.sink.split.sink.split: ; preds = %bb.ae, %.critedge.i
  %.054.i.lcssa.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i294335, %bb.ae ]
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa.sink) #6
  br label %_gather_109_rule.exit.thread236.sink.split.sink.split

_gather_109_rule.exit.thread236.sink.split.sink.split: ; preds = %_gather_109_rule.exit.thread236.sink.split.sink.split.sink.split, %bb.ac
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.cp = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_gather_109_rule.exit.thread236.sink.split

_gather_109_rule.exit.thread236.sink.split:       ; preds = %_gather_109_rule.exit.thread236.sink.split.sink.split, %bb.ad, %bb.ab
  %storemerge.in.i228 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i229 = add i32 %storemerge.in.i228, -1
  br label %_tmp_107_rule.exit.thread.sink.split

_gather_109_rule.exit.loopexit.unr-lcssa:         ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_109_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_109_rule.exit.loopexit.unr-lcssa, %.lr.ph303
  %.0.i302.epil.init = phi i64 [ 0, %.lr.ph303 ], [ %i.co, %_gather_109_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod350 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod350)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %.0.i302.epil = phi i64 [ %.0.i302.epil.init, %.epil.preheader ], [ %i.cu, %bb.ah ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %i.cq = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i302.epil
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cs = load ptr, ptr %i.bt, align 8, !tbaa !43
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %.0.i302.epil
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !31
  %i.cu = add nuw nsw i64 %.0.i302.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_109_rule.exit, label %bb.ah, !llvm.loop !166

_gather_109_rule.exit:                            ; preds = %_gather_109_rule.exit.loopexit.unr-lcssa, %bb.ah, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !163
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.cv = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef nonnull %i.br) #6, !inline_history !162
  %i.cw = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cx = add i32 %i.cw, -1
  store i32 %i.cx, ptr %i.a, align 8, !tbaa !26
  %.not153 = icmp eq ptr %i.cv, null
  br i1 %.not153, label %_tmp_107_rule.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_gather_109_rule.exit
  %i.cy = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.cz = getelementptr i8, ptr %i.am, i64 20
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !32
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %i.am, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !35
  %i.de = sext i32 %i.dd to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.cy, i64 noundef %i.db, i64 noundef %i.de, i64 noundef -5, i64 noundef -5, ptr noundef nonnull @.str.67)
  %i.df = tail call ptr @PyErr_Occurred() #6
  %.not154 = icmp eq ptr %i.df, null
  br i1 %.not154, label %.thread267, label %.thread238

.thread238:                                       ; preds = %bb.ai
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread267

_tmp_107_rule.exit.thread.sink.split:             ; preds = %bb.x, %_gather_109_rule.exit.thread236.sink.split, %bb.r, %_gather_109_rule.exit.thread, %bb.i
  %.sink331 = phi i32 [ %i.q, %bb.i ], [ %.pre, %bb.r ], [ %i.at, %_gather_109_rule.exit.thread ], [ %.pre305, %bb.x ], [ %storemerge.i229, %_gather_109_rule.exit.thread236.sink.split ]
  %i.dg = add i32 %.sink331, -1
  store i32 %i.dg, ptr %i.a, align 8, !tbaa !26
  br label %_tmp_107_rule.exit.thread

_tmp_107_rule.exit.thread:                        ; preds = %_tmp_107_rule.exit.thread.sink.split, %bb.s, %_gather_109_rule.exit
  %.pr327 = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %.not155 = icmp eq i32 %.pr327, 0
  br i1 %.not155, label %bb.aj, label %.thread267

bb.aj:                                            ; preds = %_tmp_107_rule.exit.thread
  %i.dh = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 3 uses
  %.not156 = icmp eq ptr %i.dh, null
  br i1 %.not156, label %for_if_clauses_rule.exit.thread247, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.a, align 8, !tbaa !26
  %i.dk = icmp eq i32 %i.di, 6000
  br i1 %i.dk, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = tail call ptr @PyThreadState_Get() #6, !inline_history !92
  %i.dm = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.dl, i32 noundef 1) #6, !inline_history !92
  %.not.i191 = icmp eq i32 %i.dm, 0
  br i1 %.not.i191, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !92
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dn = load i32, ptr %i.g, align 8, !tbaa !27
  %.not20.i = icmp eq i32 %i.dn, 0
  br i1 %.not20.i, label %bb.ao, label %for_if_clauses_rule.exit.thread

for_if_clauses_rule.exit.thread:                  ; preds = %bb.an
  %i.do = load i32, ptr %i.a, align 8, !tbaa !26
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr %i.a, align 8, !tbaa !26
  br label %for_if_clauses_rule.exit.thread247

bb.ao:                                            ; preds = %bb.an
  %i.dq = tail call fastcc ptr @_loop1_87_rule(ptr noundef nonnull %0), !inline_history !92 ; 3 uses
  %.not21.i = icmp eq ptr %i.dq, null
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr %i.a, align 8, !tbaa !26
  br i1 %.not21.i, label %for_if_clauses_rule.exit.thread247, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dt = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not158 = icmp eq ptr %i.dt, null
  br i1 %.not158, label %for_if_clauses_rule.exit.thread247, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_tmp_110_rule(ptr noundef nonnull %0)
  %i.du = load i32, ptr %i.g, align 8, !tbaa !27
  %.not159 = icmp eq i32 %i.du, 0
  br i1 %.not159, label %bb.ar, label %.thread253

.thread253:                                       ; preds = %bb.aq
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread267

bb.ar:                                            ; preds = %bb.aq
  %i.dv = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.dw = getelementptr i8, ptr %i.dh, i64 40
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !59
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.dh, i64 44
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !66
  %i.eb = sext i32 %i.ea to i64
  %i.ec = tail call ptr @_PyPegen_seq_last_item(ptr noundef nonnull %i.dq) #6
  %i.ed = tail call ptr @_PyPegen_get_last_comprehension_item(ptr noundef %i.ec) #6
  %i.ee = getelementptr i8, ptr %i.ed, i64 48
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !73
  %i.eg = sext i32 %i.ef to i64
  %i.eh = tail call ptr @_PyPegen_seq_last_item(ptr noundef nonnull %i.dq) #6
  %i.ei = tail call ptr @_PyPegen_get_last_comprehension_item(ptr noundef %i.eh) #6
  %i.ej = getelementptr i8, ptr %i.ei, i64 52
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !74
  %i.el = sext i32 %i.ek to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.dv, i64 noundef %i.dy, i64 noundef %i.eb, i64 noundef %i.eg, i64 noundef %i.el, ptr noundef nonnull @.str.68)
  %i.em = tail call ptr @PyErr_Occurred() #6
  %.not160 = icmp eq ptr %i.em, null
  br i1 %.not160, label %.thread267, label %.thread249

.thread249:                                       ; preds = %bb.ar
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread267

for_if_clauses_rule.exit.thread247:               ; preds = %bb.ao, %bb.aj, %bb.ap, %for_if_clauses_rule.exit.thread
  %.pr = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %.not161 = icmp eq i32 %.pr, 0
  br i1 %.not161, label %bb.as, label %.thread267

bb.as:                                            ; preds = %for_if_clauses_rule.exit.thread247
  %i.en = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 3 uses
  %.not162 = icmp eq ptr %i.en, null
  br i1 %.not162, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6 ; 3 uses
  %.not163 = icmp eq ptr %i.eo, null
  br i1 %.not163, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ep = tail call ptr @expression_rule(ptr noundef nonnull %0)
  %.not164 = icmp eq ptr %i.ep, null
  br i1 %.not164, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = tail call fastcc ptr @for_if_clauses_rule(ptr noundef nonnull %0)
  %.not165 = icmp eq ptr %i.eq, null
  br i1 %.not165, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.er = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.es = getelementptr i8, ptr %i.en, i64 40
  %i.et = load i32, ptr %i.es, align 8, !tbaa !59
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %i.en, i64 44
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !66
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %i.eo, i64 28
end_hunk_8
begin_hunk_9_@invalid_arguments_rule:bb.a
  br i1 %.not184, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hc = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not185 = icmp eq ptr %i.hc, null
  br i1 %.not185, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hd = tail call fastcc ptr @args_rule(ptr noundef nonnull %0)
  %.not186 = icmp eq ptr %i.hd, null
  br i1 %.not186, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.he = tail call ptr @_PyPegen_arguments_parsing_error(ptr noundef nonnull %0, ptr noundef nonnull %i.hb) #6 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.bt, label %.thread267

bb.bt:                                            ; preds = %bb.bs
  %i.hg = tail call ptr @PyErr_Occurred() #6
  %.not187 = icmp eq ptr %i.hg, null
  br i1 %.not187, label %.thread267, label %.thread284

.thread284:                                       ; preds = %bb.bt
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread267

bb.bu:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread267

.thread267:                                       ; preds = %bb.bu, %bb.ai, %bb.ar, %bb.aw, %bb.bc, %bb.bn, %bb.bh, %bb.bg, %bb.bt, %bb.bs, %bb.bo, %bb.bi, %bb.bd, %.thread265, %bb.ax, %for_if_clauses_rule.exit.thread247, %.thread253, %_tmp_107_rule.exit.thread, %_tmp_107_rule.exit.thread.thread, %bb.d, %.thread284, %.thread273, %.thread270, %.thread259, %.thread255, %.thread249, %.thread238
  %.8 = phi ptr [ null, %.thread284 ], [ null, %bb.bo ], [ null, %.thread238 ], [ null, %bb.d ], [ null, %.thread249 ], [ null, %_tmp_107_rule.exit.thread ], [ null, %.thread255 ], [ null, %for_if_clauses_rule.exit.thread247 ], [ null, %.thread259 ], [ null, %bb.ax ], [ null, %.thread270 ], [ null, %bb.bd ], [ null, %.thread273 ], [ null, %bb.bi ], [ null, %_tmp_107_rule.exit.thread.thread ], [ null, %.thread253 ], [ null, %.thread265 ], [ null, %bb.bu ], [ %i.ga, %bb.bg ], [ null, %bb.bc ], [ null, %bb.bn ], [ null, %bb.aw ], [ null, %bb.ar ], [ null, %bb.ai ], [ null, %bb.bh ], [ null, %bb.bt ], [ %i.he, %bb.bs ]
  %i.hh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.hi = add i32 %i.hh, -1
  store i32 %i.hi, ptr %i.a, align 8, !tbaa !26
  ret ptr %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_91_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @_tmp_167_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %_loop0_90_rule.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !167
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !167
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !167
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_90_rule.exit.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !167 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_90_rule.exit.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader37, label %_loop0_90_rule.exit.thread.sink.split

.preheader37:                                     ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !167
  %.not70.i41 = icmp eq ptr %i.u, null
  br i1 %.not70.i41, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.v = tail call fastcc ptr @_tmp_167_rule(ptr noundef nonnull %0), !inline_history !167 ; 2 uses
  %.not71.i62 = icmp eq ptr %i.v, null
  br i1 %.not71.i62, label %.critedge.i, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.m
  %i.w = tail call fastcc ptr @_tmp_167_rule(ptr noundef nonnull %0), !inline_history !167 ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph66, !llvm.loop !168

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %.059.i4265 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4364 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4463 = phi ptr [ %.256.i, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.058.i4364, %.059.i4265
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66
  %i.z = shl i64 %.058.i4364, 1
  %i.aa = shl i64 %.058.i4364, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4463, i64 noundef %i.aa) #6, !inline_history !167 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_90_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66
  %.160.i = phi i64 [ %.059.i4265, %.lr.ph66 ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.054.i4463, %.lr.ph66 ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.058.i4364, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4364
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !167
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !168

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !168

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader37
  %.058.i.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.s, %.preheader37 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.s, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.r, %.preheader37 ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ah) #6, !inline_history !167 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_90_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.aj, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.lr.ph53
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph53.new
  %.0.i52 = phi i64 [ 0, %.lr.ph53.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.0.i52
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.0.i52, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.0.i52, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.0.i52, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.0.i52, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !169

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph53
  %.0.i52.epil.init = phi i64 [ 0, %.lr.ph53 ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.0.i52.epil = phi i64 [ %.0.i52.epil.init, %.epil.preheader ], [ %i.bk, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bg = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52.epil
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.0.i52.epil
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !31
  %i.bk = add nuw nsw i64 %.0.i52.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !170

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !167
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bl = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.p

_loop0_90_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.i44.lcssa59.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i4463, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.i44.lcssa59.sink) #6
  br label %_loop0_90_rule.exit.thread.sink.split.sink.split

_loop0_90_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_90_rule.exit.thread.sink.split.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_90_rule.exit.thread.sink.split

_loop0_90_rule.exit.thread.sink.split:            ; preds = %_loop0_90_rule.exit.thread.sink.split.sink.split, %bb.k, %bb.i
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !26
  br label %_loop0_90_rule.exit.thread

_loop0_90_rule.exit.thread:                       ; preds = %_loop0_90_rule.exit.thread.sink.split, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %_loop0_90_rule.exit.thread, %._crit_edge, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %_loop0_90_rule.exit.thread ], [ %i.bl, %._crit_edge ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

declare ptr @_PyPegen_collect_call_seqs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @kwargs_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = tail call fastcc ptr @_gather_94_rule(ptr noundef nonnull %0) ; 2 uses
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @_gather_96_rule(ptr noundef nonnull %0) ; 2 uses
  %.not48 = icmp eq ptr %i.m, null
  br i1 %.not48, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_join_sequences(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m) #6 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #6
  %.not49 = icmp eq ptr %i.p, null
  br i1 %.not49, label %.thread, label %.thread59

.thread59:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not50 = icmp eq i32 %i.q, 0
  br i1 %.not50, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.r = tail call fastcc ptr @_gather_94_rule(ptr noundef nonnull %0) ; 2 uses
  %.not51 = icmp eq ptr %i.r, null
  br i1 %.not51, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.s = load i32, ptr %i.g, align 8, !tbaa !27
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.t = tail call fastcc ptr @_gather_96_rule(ptr noundef nonnull %0) ; 2 uses
  %.not53 = icmp eq ptr %i.t, null
  br i1 %.not53, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.n, %bb.i, %bb.h, %bb.l, %bb.j, %bb.d, %.thread59
  %.2 = phi ptr [ null, %bb.j ], [ null, %bb.l ], [ null, %.thread59 ], [ null, %bb.d ], [ %i.t, %bb.m ], [ %i.r, %bb.k ], [ null, %bb.n ], [ null, %bb.i ], [ %i.n, %bb.h ]
  %i.u = load i32, ptr %i.a, align 8, !tbaa !26
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyPegen_seq_extract_starred_exprs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyPegen_seq_delete_starred_exprs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_167_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @starred_expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not30 = icmp eq i32 %i.l, 0
  %i.m = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  br i1 %.not30, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
end_hunk_9
begin_hunk_10_@_tmp_167_rule:bb.a

bb.n:                                             ; preds = %bb.m
  %i.w = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 53) #6, !inline_history !171
  %.not32.i = icmp eq i32 %i.w, 0
  br i1 %.not32.i, label %_tmp_178_rule.exit.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %.2.i.ph = phi ptr [ %i.v, %bb.n ], [ %i.t, %bb.k ]
  %i.x = load i32, ptr %i.a, align 8, !tbaa !26
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.a, align 8, !tbaa !26
  %i.z = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 22) #6
  %.not32 = icmp eq i32 %i.z, 0
  br i1 %.not32, label %_tmp_178_rule.exit.thread, label %.sink.split

_tmp_178_rule.exit.thread.sink.split:             ; preds = %bb.m, %bb.n, %bb.l, %bb.j
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !26
  br label %_tmp_178_rule.exit.thread

_tmp_178_rule.exit.thread:                        ; preds = %_tmp_178_rule.exit.thread.sink.split, %bb.o
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.o, %_tmp_178_rule.exit.thread, %bb.d
  %.1.ph = phi ptr [ null, %bb.d ], [ %i.k, %bb.e ], [ null, %_tmp_178_rule.exit.thread ], [ %.2.i.ph, %bb.o ]
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.f
  %.sink59 = phi i32 [ %i.m, %bb.f ], [ %i.ac, %.sink.split ]
  %.1 = phi ptr [ null, %bb.f ], [ %.1.ph, %.sink.split ]
  %i.ad = add i32 %.sink59, -1
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_94_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @kwarg_or_starred_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %_loop0_93_rule.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !172
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !172
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !172
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_93_rule.exit.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !172 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_93_rule.exit.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader37, label %_loop0_93_rule.exit.thread.sink.split

.preheader37:                                     ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !172
  %.not70.i41 = icmp eq ptr %i.u, null
  br i1 %.not70.i41, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.v = tail call fastcc ptr @kwarg_or_starred_rule(ptr noundef nonnull %0), !inline_history !172 ; 2 uses
  %.not71.i62 = icmp eq ptr %i.v, null
  br i1 %.not71.i62, label %.critedge.i, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.m
  %i.w = tail call fastcc ptr @kwarg_or_starred_rule(ptr noundef nonnull %0), !inline_history !172 ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph66, !llvm.loop !173

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %.059.i4265 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4364 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4463 = phi ptr [ %.256.i, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.058.i4364, %.059.i4265
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66
  %i.z = shl i64 %.058.i4364, 1
  %i.aa = shl i64 %.058.i4364, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4463, i64 noundef %i.aa) #6, !inline_history !172 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_93_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66
  %.160.i = phi i64 [ %.059.i4265, %.lr.ph66 ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.054.i4463, %.lr.ph66 ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.058.i4364, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4364
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !172
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !173

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !173

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader37
  %.058.i.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.s, %.preheader37 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.s, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.r, %.preheader37 ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ah) #6, !inline_history !172 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_93_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.aj, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.lr.ph53
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph53.new
  %.0.i52 = phi i64 [ 0, %.lr.ph53.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.0.i52
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.0.i52, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.0.i52, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.0.i52, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.0.i52, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !174

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph53
  %.0.i52.epil.init = phi i64 [ 0, %.lr.ph53 ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.0.i52.epil = phi i64 [ %.0.i52.epil.init, %.epil.preheader ], [ %i.bk, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bg = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52.epil
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.0.i52.epil
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !31
  %i.bk = add nuw nsw i64 %.0.i52.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !175

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !172
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bl = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.p

_loop0_93_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.i44.lcssa59.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i4463, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.i44.lcssa59.sink) #6
  br label %_loop0_93_rule.exit.thread.sink.split.sink.split

_loop0_93_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_93_rule.exit.thread.sink.split.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_93_rule.exit.thread.sink.split

_loop0_93_rule.exit.thread.sink.split:            ; preds = %_loop0_93_rule.exit.thread.sink.split.sink.split, %bb.k, %bb.i
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !26
  br label %_loop0_93_rule.exit.thread

_loop0_93_rule.exit.thread:                       ; preds = %_loop0_93_rule.exit.thread.sink.split, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %_loop0_93_rule.exit.thread, %._crit_edge, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %_loop0_93_rule.exit.thread ], [ %i.bl, %._crit_edge ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_96_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @kwarg_or_double_starred_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %_loop0_95_rule.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !176
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !176
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !176
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_95_rule.exit.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !176 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_95_rule.exit.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader37, label %_loop0_95_rule.exit.thread.sink.split

.preheader37:                                     ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !176
  %.not70.i41 = icmp eq ptr %i.u, null
  br i1 %.not70.i41, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.v = tail call fastcc ptr @kwarg_or_double_starred_rule(ptr noundef nonnull %0), !inline_history !176 ; 2 uses
  %.not71.i62 = icmp eq ptr %i.v, null
  br i1 %.not71.i62, label %.critedge.i, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.m
  %i.w = tail call fastcc ptr @kwarg_or_double_starred_rule(ptr noundef nonnull %0), !inline_history !176 ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph66, !llvm.loop !177

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %.059.i4265 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4364 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4463 = phi ptr [ %.256.i, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.058.i4364, %.059.i4265
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66
  %i.z = shl i64 %.058.i4364, 1
  %i.aa = shl i64 %.058.i4364, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4463, i64 noundef %i.aa) #6, !inline_history !176 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_95_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66
  %.160.i = phi i64 [ %.059.i4265, %.lr.ph66 ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.054.i4463, %.lr.ph66 ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.058.i4364, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4364
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !176
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !177

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !177

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader37
  %.058.i.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.s, %.preheader37 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.s, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.r, %.preheader37 ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ah) #6, !inline_history !176 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_95_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.aj, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.lr.ph53
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph53.new
  %.0.i52 = phi i64 [ 0, %.lr.ph53.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.0.i52
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.0.i52, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.0.i52, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.0.i52, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.0.i52, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !178

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph53
  %.0.i52.epil.init = phi i64 [ 0, %.lr.ph53 ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.0.i52.epil = phi i64 [ %.0.i52.epil.init, %.epil.preheader ], [ %i.bk, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bg = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52.epil
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.0.i52.epil
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !31
  %i.bk = add nuw nsw i64 %.0.i52.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !179

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !176
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bl = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.p

_loop0_95_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.i44.lcssa59.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i4463, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.i44.lcssa59.sink) #6
  br label %_loop0_95_rule.exit.thread.sink.split.sink.split

_loop0_95_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_95_rule.exit.thread.sink.split.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_95_rule.exit.thread.sink.split

_loop0_95_rule.exit.thread.sink.split:            ; preds = %_loop0_95_rule.exit.thread.sink.split.sink.split, %bb.k, %bb.i
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !26
  br label %_loop0_95_rule.exit.thread

_loop0_95_rule.exit.thread:                       ; preds = %_loop0_95_rule.exit.thread.sink.split, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %_loop0_95_rule.exit.thread, %._crit_edge, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %_loop0_95_rule.exit.thread ], [ %i.bl, %._crit_edge ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

declare ptr @_PyPegen_join_sequences(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @kwarg_or_starred_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not76 = icmp eq i32 %i.h, 0
  br i1 %.not76, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre100.pre = load i32, ptr %i.g, align 8, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %.pre100 = phi i32 [ %.pre100.pre, %._crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %i.w = getelementptr i8, ptr %i.t, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr i8, ptr %0, i64 148
  %i.z = load i32, ptr %i.y, align 4, !tbaa !50
  %.not77 = icmp eq i32 %i.z, 0
  br i1 %.not77, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not78 = icmp eq i32 %.pre100, 0
  br i1 %.not78, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @invalid_kwarg_rule(ptr noundef nonnull %0)
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.aa = phi i32 [ %.pre, %bb.j ], [ %.pre100, %bb.h ]
  %.not79 = icmp eq i32 %i.aa, 0
  br i1 %.not79, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not80 = icmp eq ptr %i.ab, null
  br i1 %.not80, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6
  %.not81 = icmp eq ptr %i.ac, null
  br i1 %.not81, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not82 = icmp eq ptr %i.ad, null
  br i1 %.not82, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %i.ae, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ai = getelementptr i8, ptr %i.ae, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.ak = getelementptr i8, ptr %i.ab, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !71
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = tail call ptr @_PyAST_keyword(ptr noundef %i.al, ptr noundef nonnull %i.ad, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.ah, i32 noundef %i.aj, ptr noundef %i.an) #6 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.q, label %CHECK_CALL.exit

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %CHECK_CALL.exit

CHECK_CALL.exit:                                  ; preds = %bb.p, %bb.q
  %i.aq = tail call ptr @_PyPegen_keyword_or_starred(ptr noundef nonnull %0, ptr noundef %i.ao, i32 noundef 1) #6 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.r, label %.thread

bb.r:                                             ; preds = %CHECK_CALL.exit
  %i.as = tail call ptr @PyErr_Occurred() #6
  %.not83 = icmp eq ptr %i.as, null
  br i1 %.not83, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.l
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.at = load i32, ptr %i.g, align 8, !tbaa !27
  %.not84 = icmp eq i32 %i.at, 0
  br i1 %.not84, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
end_hunk_10
begin_hunk_11_@tstring_rule:bb.a
  %i.be = icmp eq i32 %.pre, 0
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr [8 x i8], ptr %i.bf, i64 %i.bg
  br i1 %i.be, label %bb.ac, label %tstring_replacement_field_rule.exit.i.thread

bb.ac:                                            ; preds = %.thread, %bb.ab
  %.pn.in = phi ptr [ %i.bb, %.thread ], [ %i.bh, %bb.ab ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in196 = getelementptr i8, ptr %.pn, i64 20
  %i.bi = load i32, ptr %.in196, align 4, !tbaa !32
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.bj = load i32, ptr %.in, align 8, !tbaa !35
  %i.bk = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 25) #6, !inline_history !201
  %.not70.i.i = icmp eq ptr %i.bk, null
  br i1 %.not70.i.i, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = call ptr @annotated_rhs_rule(ptr noundef nonnull %0), !inline_history !201 ; 2 uses
  %.not71.i.i = icmp eq ptr %i.bl, null
  br i1 %.not71.i.i, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6, !inline_history !201
  %i.bn = load i32, ptr %i.h, align 8, !tbaa !27
  %.not72.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not72.i.i, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.bo = call fastcc ptr @fstring_conversion_rule(ptr noundef nonnull %0), !inline_history !201
  %i.bp = load i32, ptr %i.h, align 8, !tbaa !27
  %.not73.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not73.i.i, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.bq = call fastcc ptr @tstring_full_format_spec_rule(ptr noundef nonnull %0), !inline_history !201
  %i.br = load i32, ptr %i.h, align 8, !tbaa !27
  %.not74.i.i = icmp eq i32 %i.br, 0
  br i1 %.not74.i.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.bs = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 26) #6, !inline_history !201 ; 2 uses
  %.not75.i.i = icmp eq ptr %i.bs, null
  br i1 %.not75.i.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6, !inline_history !201 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %tstring_replacement_field_rule.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bv = getelementptr i8, ptr %i.bt, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !36
  %i.bx = getelementptr i8, ptr %i.bt, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !37
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ca = call ptr @_PyPegen_interpolation(ptr noundef nonnull %0, ptr noundef nonnull %i.bl, ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef nonnull %i.bs, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bw, i32 noundef %i.by, ptr noundef %i.bz) #6, !inline_history !201 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ak, label %tstring_middle_rule.exit.thread74

bb.ak:                                            ; preds = %bb.aj
  %i.cc = call ptr @PyErr_Occurred() #6, !inline_history !201
  %.not76.i.i = icmp eq ptr %i.cc, null
  br i1 %.not76.i.i, label %tstring_replacement_field_rule.exit.i.thread, label %tstring_replacement_field_rule.exit.i.thread.thread

bb.al:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  store i32 %i.aw, ptr %i.p, align 8, !tbaa !28
  %i.cd = load i32, ptr %i.ah, align 4, !tbaa !50
  %.not77.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not77.i.i, label %tstring_replacement_field_rule.exit.i.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = load i32, ptr %i.h, align 8, !tbaa !27
  %.not78.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not78.i.i, label %bb.an, label %tstring_replacement_field_rule.exit.i.thread

bb.an:                                            ; preds = %bb.am
  %i.cf = call fastcc ptr @invalid_tstring_replacement_field_rule(ptr noundef nonnull %0), !inline_history !201 ; 2 uses
  %.not79.i.i = icmp eq ptr %i.cf, null
  br i1 %.not79.i.i, label %tstring_replacement_field_rule.exit.i.thread, label %tstring_middle_rule.exit.thread74

tstring_replacement_field_rule.exit.i.thread.thread: ; preds = %bb.ak, %bb.aa
  store i32 1, ptr %i.h, align 8, !tbaa !27
  %storemerge101.in = load i32, ptr %i.b, align 8, !tbaa !26
  %storemerge101 = add i32 %storemerge101.in, -1
  br label %.thread86

tstring_replacement_field_rule.exit.i.thread:     ; preds = %bb.al, %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ab, %bb.y
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !26
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.b, align 8, !tbaa !26
  %.pr = load i32, ptr %i.h, align 8, !tbaa !27
  store i32 %i.ap, ptr %i.p, align 8, !tbaa !28
  %.not34.i = icmp eq i32 %.pr, 0
  br i1 %.not34.i, label %bb.ao, label %.thread86

bb.ao:                                            ; preds = %tstring_replacement_field_rule.exit.i.thread
  %i.ci = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 63) #6, !inline_history !200 ; 2 uses
  %.not35.i = icmp eq ptr %i.ci, null
  br i1 %.not35.i, label %tstring_middle_rule.exit.thread71, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cj = call ptr @_PyPegen_constant_from_token(ptr noundef nonnull %0, ptr noundef nonnull %i.ci) #6, !inline_history !200 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.aq, label %tstring_middle_rule.exit.thread74

bb.aq:                                            ; preds = %bb.ap
  %i.cl = call ptr @PyErr_Occurred() #6, !inline_history !200
  %.not36.i = icmp eq ptr %i.cl, null
  br i1 %.not36.i, label %bb.at, label %.thread64

.thread64:                                        ; preds = %bb.aq
  store i32 1, ptr %i.h, align 8, !tbaa !27
  %i.cm = load i32, ptr %i.b, align 8, !tbaa !26
  br label %.thread86

tstring_middle_rule.exit.thread71:                ; preds = %bb.ao
  %i.cn = load i32, ptr %i.b, align 8, !tbaa !26
  br label %.thread86

tstring_middle_rule.exit.thread74:                ; preds = %bb.ap, %bb.an, %bb.aj
  %.sink193 = phi i32 [ -2, %bb.an ], [ -2, %bb.aj ], [ -1, %bb.ap ]
  %.227.i77 = phi ptr [ %i.cf, %bb.an ], [ %i.ca, %bb.aj ], [ %i.cj, %bb.ap ]
  %i.co = load i32, ptr %i.b, align 8, !tbaa !26
  %i.cp = add i32 %i.co, %.sink193
  store i32 %i.cp, ptr %i.b, align 8, !tbaa !26
  %i.cq = icmp eq i64 %.049.i, %.050.i
  br i1 %i.cq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %tstring_middle_rule.exit.thread74
  %i.cr = shl i64 %.050.i, 1
  %i.cs = shl i64 %.050.i, 4
  %i.ct = call ptr @PyMem_Realloc(ptr noundef %.054.i, i64 noundef %i.cs) #6, !inline_history !199 ; 2 uses
  %.not66.not.i = icmp eq ptr %i.ct, null
  br i1 %.not66.not.i, label %_loop0_81_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar, %tstring_middle_rule.exit.thread74
  %.256.i = phi ptr [ %.054.i, %tstring_middle_rule.exit.thread74 ], [ %i.ct, %bb.ar ] ; 2 uses
  %.151.i = phi i64 [ %.050.i, %tstring_middle_rule.exit.thread74 ], [ %i.cr, %bb.ar ]
  %i.cu = add i64 %.049.i, 1
  %i.cv = getelementptr [8 x i8], ptr %.256.i, i64 %.049.i
  store ptr %.227.i77, ptr %i.cv, align 8, !tbaa !31
  %i.cw = load i32, ptr %i.p, align 8, !tbaa !28
  br label %bb.q, !llvm.loop !202

bb.at:                                            ; preds = %bb.aq
  %i.cx = load i32, ptr %i.b, align 8, !tbaa !26
  br label %.thread86

.thread86:                                        ; preds = %tstring_replacement_field_rule.exit.i.thread, %tstring_replacement_field_rule.exit.i.thread.thread, %.thread64, %bb.u, %tstring_middle_rule.exit.thread71, %bb.at
  %.sink194 = phi i32 [ %i.cx, %bb.at ], [ %i.cm, %.thread64 ], [ %i.ao, %bb.u ], [ %i.cn, %tstring_middle_rule.exit.thread71 ], [ %storemerge101, %tstring_replacement_field_rule.exit.i.thread.thread ], [ %i.ch, %tstring_replacement_field_rule.exit.i.thread ]
  %i.cy = add i32 %.sink194, -1
  store i32 %i.cy, ptr %i.b, align 8, !tbaa !26
  store i32 %.048.i, ptr %i.p, align 8, !tbaa !28
  %i.cz = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.da = call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.i, ptr noundef %i.cz) #6, !inline_history !199 ; 3 uses
  %.not67.i = icmp eq ptr %i.da, null
  br i1 %.not67.i, label %_loop0_81_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.thread86
  %i.db = icmp sgt i64 %.049.i, 0
  br i1 %i.db, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.dc = getelementptr i8, ptr %i.da, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.i, 3                  ; 3 uses
  %i.dd = icmp ult i64 %.049.i, 4
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.049.i, 9223372036854775804
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.new
  %.0.i128 = phi i64 [ 0, %.lr.ph.new ], [ %i.dx, %bb.au ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.au ]
  %i.de = getelementptr [8 x i8], ptr %.054.i, i64 %.0.i128
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !31
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %.0.i128
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !31
  %i.di = or disjoint i64 %.0.i128, 1             ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %.054.i, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !31
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.di
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !31
  %i.dn = or disjoint i64 %.0.i128, 2             ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %.054.i, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.dq = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %i.dn
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !31
  %i.ds = or disjoint i64 %.0.i128, 3             ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %.054.i, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !31
  %i.dv = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.dw = getelementptr [8 x i8], ptr %i.dv, i64 %i.ds
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !31
  %i.dx = add nuw nsw i64 %.0.i128, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.au, !llvm.loop !203

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.au
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0.i128.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod240 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod240)
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.epil.preheader
  %.0.i128.epil = phi i64 [ %.0.i128.epil.init, %.epil.preheader ], [ %i.ec, %bb.av ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.av ]
  %i.dy = getelementptr [8 x i8], ptr %.054.i, i64 %.0.i128.epil
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31
  %i.ea = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %.0.i128.epil
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !31
  %i.ec = add nuw nsw i64 %.0.i128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.av, !llvm.loop !204

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.av, %.preheader
  call void @PyMem_Free(ptr noundef %.054.i) #6, !inline_history !199
  %storemerge.in.i = load i32, ptr %i.b, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.b, align 8, !tbaa !26
  %i.ed = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 64) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.ed, null
  br i1 %.not33, label %_loop0_81_rule.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  %i.ee = call ptr @_PyPegen_template_str(ptr noundef nonnull %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.da, ptr noundef nonnull %i.ed) #6
  %i.ef = call fastcc ptr @INVALID_VERSION_CHECK(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.71, ptr noundef %i.ee) ; 3 uses
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !75
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ax, label %.thread96

bb.ax:                                            ; preds = %bb.aw
  %i.eh = call ptr @PyErr_Occurred() #6
  %.not34 = icmp eq ptr %i.eh, null
  br i1 %.not34, label %..thread96_crit_edge, label %.thread98

..thread96_crit_edge:                             ; preds = %bb.ax
  %.pre155 = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %.thread96

.thread98:                                        ; preds = %bb.ax
  store i32 1, ptr %i.h, align 8, !tbaa !27
  %i.ei = load i32, ptr %i.b, align 8, !tbaa !26
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr %i.b, align 8, !tbaa !26
  br label %bb.ay

_loop0_81_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.ar, %.thread86
  call void @PyMem_Free(ptr noundef %.054.i) #6
  br label %_loop0_81_rule.exit.thread.sink.split.sink.split

_loop0_81_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_81_rule.exit.thread.sink.split.sink.split.sink.split, %bb.o
  store i32 1, ptr %i.h, align 8, !tbaa !27
  %i.ek = call ptr @PyErr_NoMemory() #6           ; 0 uses
  br label %_loop0_81_rule.exit.thread.sink.split

_loop0_81_rule.exit.thread.sink.split:            ; preds = %_loop0_81_rule.exit.thread.sink.split.sink.split, %bb.p, %bb.n
  %i.el = load i32, ptr %i.b, align 8, !tbaa !26
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr %i.b, align 8, !tbaa !26
  br label %_loop0_81_rule.exit.thread

_loop0_81_rule.exit.thread:                       ; preds = %_loop0_81_rule.exit.thread.sink.split, %._crit_edge, %bb.j
  store i32 %i.q, ptr %i.p, align 8, !tbaa !28
  store ptr null, ptr %i.a, align 8, !tbaa !75
  br label %.thread96

.thread96:                                        ; preds = %..thread96_crit_edge, %bb.aw, %_loop0_81_rule.exit.thread
  %i.en = phi ptr [ %.pre155, %..thread96_crit_edge ], [ %i.ef, %bb.aw ], [ null, %_loop0_81_rule.exit.thread ]
  %i.eo = call i32 @_PyPegen_insert_memo(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 1171, ptr noundef %i.en) #6 ; 0 uses
  %i.ep = load i32, ptr %i.b, align 8, !tbaa !26
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr %i.b, align 8, !tbaa !26
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %bb.ay

bb.ay:                                            ; preds = %.thread98, %bb.i, %.thread96, %bb.g
  %.2 = phi ptr [ %i.o, %bb.g ], [ null, %bb.i ], [ null, %.thread98 ], [ %i.er, %.thread96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.e
  %.3 = phi ptr [ null, %bb.e ], [ %.2, %bb.ay ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_156_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 30 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 14 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.as

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16         ; 9 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28   ; 3 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !205
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !205
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !205
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not28.i = icmp eq i32 %i.q, 0
  br i1 %.not28.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.a, align 8, !tbaa !26
  br label %fstring_rule.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.s = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 59) #6, !inline_history !205 ; 2 uses
  %.not29.i = icmp eq ptr %i.s, null
  %.pre136 = load i32, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  br i1 %.not29.i, label %fstring_rule.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = add i32 %.pre136, 1
  store i32 %i.t, ptr %i.a, align 8, !tbaa !26
  %i.u = icmp eq i32 %.pre136, 6000
  br i1 %i.u, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = tail call ptr @PyThreadState_Get() #6, !inline_history !206
  %i.w = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.v, i32 noundef 1) #6, !inline_history !206
  %.not.i36 = icmp eq i32 %i.w, 0
  br i1 %.not.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !206
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62.i = icmp eq i32 %i.x, 0
  br i1 %.not62.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = load i32, ptr %i.a, align 8, !tbaa !26
  %i.z = add i32 %i.y, -1
  br label %fstring_rule.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !28
  %i.ab = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !206 ; 2 uses
  %.not63.i = icmp eq ptr %i.ab, null
  br i1 %.not63.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ac = tail call ptr @PyErr_NoMemory() #6, !inline_history !206 ; 0 uses
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ae = add i32 %i.ad, -1
  br label %fstring_rule.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.af = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64.i = icmp eq i32 %i.af, 0
  br i1 %.not64.i, label %.preheader98, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ah = add i32 %i.ag, -1
  br label %fstring_rule.exit.thread

.preheader98:                                     ; preds = %bb.s, %bb.ad
  %.054.i = phi ptr [ %.256.i, %bb.ad ], [ %i.ab, %bb.s ] ; 10 uses
  %.050.i = phi i64 [ %.151.i, %bb.ad ], [ 1, %bb.s ] ; 4 uses
  %.049.i = phi i64 [ %i.bc, %bb.ad ], [ 0, %bb.s ] ; 8 uses
  %.048.i = phi i32 [ %i.be, %bb.ad ], [ %i.aa, %bb.s ]
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !26
  %i.ak = icmp eq i32 %i.ai, 6000
  br i1 %i.ak, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader98
  %i.al = tail call ptr @PyThreadState_Get() #6, !inline_history !207
  %i.am = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.al, i32 noundef 1) #6, !inline_history !207
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader98
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !207
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.an = load i32, ptr %i.g, align 8, !tbaa !27
  %.not32.i.i = icmp eq i32 %i.an, 0
  br i1 %.not32.i.i, label %bb.x, label %.thread65

bb.x:                                             ; preds = %bb.w
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !28
  %i.ap = tail call fastcc ptr @fstring_replacement_field_rule(ptr noundef nonnull %0), !inline_history !207 ; 2 uses
  %.not33.i.i = icmp eq ptr %i.ap, null
  br i1 %.not33.i.i, label %bb.y, label %fstring_middle_rule.exit.i.thread53

bb.y:                                             ; preds = %bb.x
  store i32 %i.ao, ptr %i.j, align 8, !tbaa !28
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !27
  %.not34.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not34.i.i, label %bb.z, label %.thread65

bb.z:                                             ; preds = %bb.y
  %i.ar = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 60) #6, !inline_history !207 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.ar, null
  br i1 %.not35.i.i, label %.thread65, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = tail call ptr @_PyPegen_constant_from_token(ptr noundef nonnull %0, ptr noundef nonnull %i.ar) #6, !inline_history !207 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.ab, label %fstring_middle_rule.exit.i.thread53

bb.ab:                                            ; preds = %bb.aa
  %i.au = tail call ptr @PyErr_Occurred() #6, !inline_history !207
  %.not36.i.i = icmp eq ptr %i.au, null
  br i1 %.not36.i.i, label %.thread65, label %.thread43

.thread43:                                        ; preds = %bb.ab
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread65

fstring_middle_rule.exit.i.thread53:              ; preds = %bb.aa, %bb.x
  %.227.i.i56 = phi ptr [ %i.ap, %bb.x ], [ %i.as, %bb.aa ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  %i.av = icmp eq i64 %.049.i, %.050.i
  br i1 %i.av, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %fstring_middle_rule.exit.i.thread53
  %i.aw = shl i64 %.050.i, 1
  %i.ax = shl i64 %.050.i, 4
  %i.ay = tail call ptr @PyMem_Realloc(ptr noundef %.054.i, i64 noundef %i.ax) #6, !inline_history !206 ; 2 uses
  %.not66.not.i = icmp eq ptr %i.ay, null
  br i1 %.not66.not.i, label %.thread62, label %bb.ad

.thread62:                                        ; preds = %bb.ac
  tail call void @PyMem_Free(ptr noundef %.054.i) #6, !inline_history !206
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.az = tail call ptr @PyErr_NoMemory() #6, !inline_history !206 ; 0 uses
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bb = add i32 %i.ba, -1
  br label %fstring_rule.exit.thread

bb.ad:                                            ; preds = %bb.ac, %fstring_middle_rule.exit.i.thread53
  %.256.i = phi ptr [ %.054.i, %fstring_middle_rule.exit.i.thread53 ], [ %i.ay, %bb.ac ] ; 2 uses
  %.151.i = phi i64 [ %.050.i, %fstring_middle_rule.exit.i.thread53 ], [ %i.aw, %bb.ac ]
  %i.bc = add i64 %.049.i, 1
  %i.bd = getelementptr [8 x i8], ptr %.256.i, i64 %.049.i
  store ptr %.227.i.i56, ptr %i.bd, align 8, !tbaa !31
  %i.be = load i32, ptr %i.j, align 8, !tbaa !28
  br label %.preheader98, !llvm.loop !208

.thread65:                                        ; preds = %bb.z, %bb.y, %bb.w, %bb.ab, %.thread43
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !26
  store i32 %.048.i, ptr %i.j, align 8, !tbaa !28
  %i.bh = getelementptr i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bj = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.i, ptr noundef %i.bi) #6, !inline_history !206 ; 3 uses
  %.not67.i = icmp eq ptr %i.bj, null
  br i1 %.not67.i, label %_loop0_79_rule.exit.thread69, label %.preheader

.preheader:                                       ; preds = %.thread65
  %i.bk = icmp sgt i64 %.049.i, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bl = getelementptr i8, ptr %i.bj, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.i, 3                  ; 3 uses
  %i.bm = icmp ult i64 %.049.i, 4
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.049.i, 9223372036854775804
  br label %bb.ae

_loop0_79_rule.exit.thread69:                     ; preds = %.thread65
  tail call void @PyMem_Free(ptr noundef %.054.i) #6, !inline_history !206
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bn = tail call ptr @PyErr_NoMemory() #6, !inline_history !206 ; 0 uses
  %storemerge.in.i71 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i72 = add i32 %storemerge.in.i71, -1
  br label %fstring_rule.exit.thread

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.new
  %.0.i117 = phi i64 [ 0, %.lr.ph.new ], [ %i.ch, %bb.ae ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ae ]
  %i.bo = getelementptr [8 x i8], ptr %.054.i, i64 %.0.i117
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.0.i117
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !31
  %i.bs = or disjoint i64 %.0.i117, 1             ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %.054.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.bs
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !31
  %i.bx = or disjoint i64 %.0.i117, 2             ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %.054.i, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31
  %i.ca = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bx
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !31
  %i.cc = or disjoint i64 %.0.i117, 3             ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %.054.i, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cf = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %i.cc
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !31
  %i.ch = add nuw nsw i64 %.0.i117, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !209

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0.i117.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ch, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader
  %.0.i117.epil = phi i64 [ %.0.i117.epil.init, %.epil.preheader ], [ %i.cm, %bb.af ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.af ]
  %i.ci = getelementptr [8 x i8], ptr %.054.i, i64 %.0.i117.epil
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.ck = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %.0.i117.epil
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !31
  %i.cm = add nuw nsw i64 %.0.i117.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.af, !llvm.loop !210

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.af, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i) #6, !inline_history !206
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.cn = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 61) #6, !inline_history !205 ; 2 uses
  %.not31.i = icmp eq ptr %i.cn, null
  br i1 %.not31.i, label %._crit_edge.fstring_rule.exit.thread83_crit_edge, label %bb.ag

._crit_edge.fstring_rule.exit.thread83_crit_edge: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26
  br label %fstring_rule.exit.thread

bb.ag:                                            ; preds = %._crit_edge
  %i.co = tail call ptr @_PyPegen_joined_str(ptr noundef nonnull %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.cn) #6, !inline_history !205 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cq = tail call ptr @PyErr_Occurred() #6, !inline_history !205
  %.not32.i = icmp eq ptr %i.cq, null
  br i1 %.not32.i, label %fstring_rule.exit.thread86, label %fstring_rule.exit.thread.thread

fstring_rule.exit.thread86:                       ; preds = %bb.ah
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !26
  br label %fstring_rule.exit.thread

fstring_rule.exit.thread.thread:                  ; preds = %bb.ah
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.cs = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ct = add i32 %i.cs, -1
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  br label %bb.as

bb.ai:                                            ; preds = %bb.ag
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cv = add i32 %i.cu, -1
  br label %bb.as

fstring_rule.exit.thread:                         ; preds = %.thread62, %bb.t, %bb.r, %bb.p, %_loop0_79_rule.exit.thread69, %bb.k, %._crit_edge.fstring_rule.exit.thread83_crit_edge, %bb.j, %fstring_rule.exit.thread86
  %.sink163 = phi i32 [ %i.r, %bb.j ], [ %i.cr, %fstring_rule.exit.thread86 ], [ %.pre, %._crit_edge.fstring_rule.exit.thread83_crit_edge ], [ %.pre136, %bb.k ], [ %storemerge.i72, %_loop0_79_rule.exit.thread69 ], [ %i.z, %bb.p ], [ %i.ae, %bb.r ], [ %i.ah, %bb.t ], [ %i.bb, %.thread62 ] ; 2 uses
  %i.cw = add i32 %.sink163, -1                   ; 3 uses
  store i32 %i.cw, ptr %i.a, align 8, !tbaa !26
  %.pr = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  %.not29 = icmp eq i32 %.pr, 0
  br i1 %.not29, label %bb.aj, label %bb.as

bb.aj:                                            ; preds = %fstring_rule.exit.thread
  store i32 %.sink163, ptr %i.a, align 8, !tbaa !26
  %i.cx = icmp eq i32 %i.cw, 6000
  br i1 %i.cx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = tail call ptr @PyThreadState_Get() #6
  %i.cz = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.cy, i32 noundef 1) #6
  %.not.i34 = icmp eq i32 %i.cz, 0
  br i1 %.not.i34, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.da = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.da, 0
  br i1 %.not22.i, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.db = tail call ptr @_PyPegen_string_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not23.i = icmp eq ptr %i.db, null
  br i1 %.not23.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dc = tail call ptr @_PyPegen_constant_from_string(ptr noundef nonnull %0, ptr noundef nonnull %i.db) #6 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.de = tail call ptr @PyErr_Occurred() #6
  %.not24.i = icmp eq ptr %i.de, null
  br i1 %.not24.i, label %bb.ar, label %.thread27.i

.thread27.i:                                      ; preds = %bb.ap
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.df = load i32, ptr %i.a, align 8, !tbaa !26
  %i.dg = add i32 %i.df, -1
  br label %bb.as

bb.ar:                                            ; preds = %bb.an, %bb.ap, %bb.am, %.thread27.i
  %i.dh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.di = add i32 %i.dh, -1
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  br label %bb.as

bb.as:                                            ; preds = %bb.ai, %bb.aq, %bb.ar, %fstring_rule.exit.thread, %fstring_rule.exit.thread.thread, %bb.e
  %.sink164 = phi i32 [ %i.i, %bb.e ], [ %i.cw, %fstring_rule.exit.thread ], [ %i.ct, %fstring_rule.exit.thread.thread ], [ %i.cv, %bb.ai ], [ %i.di, %bb.ar ], [ %i.dg, %bb.aq ]
  %.1 = phi ptr [ null, %bb.e ], [ null, %fstring_rule.exit.thread ], [ null, %fstring_rule.exit.thread.thread ], [ %i.co, %bb.ai ], [ null, %bb.ar ], [ %i.dc, %bb.aq ]
  %i.dj = add i32 %.sink164, -1
  store i32 %i.dj, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

declare ptr @_PyPegen_template_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyPegen_constant_from_token(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @annotated_rhs_rule(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @yield_expr_rule(ptr noundef nonnull %0) ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @star_expressions_rule(ptr noundef nonnull %0) ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fstring_conversion_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
end_hunk_11
begin_hunk_12_@tstring_full_format_spec_rule:bb.a
  %i.bi = load i32, ptr %i.k, align 4, !tbaa !29
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.ad, label %.thread258

.thread258:                                       ; preds = %bb.ac
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bl = sext i32 %i.bh to i64
  %i.bm = getelementptr [8 x i8], ptr %i.bk, i64 %i.bl
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bn = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6, !inline_history !213
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %tstring_format_spec_rule.exit.thread88

bb.af:                                            ; preds = %bb.ad
  %.pre243 = load i32, ptr %i.g, align 8, !tbaa !27
  %i.bp = icmp eq i32 %.pre243, 0
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.br = sext i32 %i.bh to i64
  %i.bs = getelementptr [8 x i8], ptr %i.bq, i64 %i.br
  br i1 %i.bp, label %bb.ag, label %tstring_format_spec_rule.exit.thread88

bb.ag:                                            ; preds = %.thread258, %bb.af
  %.pn314.in = phi ptr [ %i.bm, %.thread258 ], [ %i.bs, %bb.af ]
  %.pn314 = load ptr, ptr %.pn314.in, align 8, !tbaa !31 ; 2 uses
  %.in315 = getelementptr i8, ptr %.pn314, i64 20
  %i.bt = load i32, ptr %.in315, align 4, !tbaa !32
  %.in313 = getelementptr i8, ptr %.pn314, i64 24
  %i.bu = load i32, ptr %.in313, align 8, !tbaa !35
  %i.bv = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 25) #6, !inline_history !213
  %.not70.i.i = icmp eq ptr %i.bv, null
  br i1 %.not70.i.i, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = tail call ptr @annotated_rhs_rule(ptr noundef nonnull %0), !inline_history !213 ; 2 uses
  %.not71.i.i = icmp eq ptr %i.bw, null
  br i1 %.not71.i.i, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bx = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6, !inline_history !213
  %i.by = load i32, ptr %i.g, align 8, !tbaa !27
  %.not72.i.i = icmp eq i32 %i.by, 0
  br i1 %.not72.i.i, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.bz = tail call fastcc ptr @fstring_conversion_rule(ptr noundef nonnull %0), !inline_history !213
  %i.ca = load i32, ptr %i.g, align 8, !tbaa !27
  %.not73.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not73.i.i, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.cb = tail call fastcc ptr @tstring_full_format_spec_rule(ptr noundef nonnull %0), !inline_history !213
  %i.cc = load i32, ptr %i.g, align 8, !tbaa !27
  %.not74.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not74.i.i, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cd = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 26) #6, !inline_history !213 ; 2 uses
  %.not75.i.i = icmp eq ptr %i.cd, null
  br i1 %.not75.i.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6, !inline_history !213 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %tstring_format_spec_rule.exit.thread88, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = getelementptr i8, ptr %i.ce, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36
  %i.ci = getelementptr i8, ptr %i.ce, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !37
  %i.ck = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.cl = tail call ptr @_PyPegen_formatted_value(ptr noundef nonnull %0, ptr noundef nonnull %i.bw, ptr noundef %i.bx, ptr noundef %i.bz, ptr noundef %i.cb, ptr noundef nonnull %i.cd, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.ch, i32 noundef %i.cj, ptr noundef %i.ck) #6, !inline_history !213 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ao, label %tstring_format_spec_rule.exit.thread91

bb.ao:                                            ; preds = %bb.an
  %i.cn = tail call ptr @PyErr_Occurred() #6, !inline_history !213
  %.not76.i.i = icmp eq ptr %i.cn, null
  br i1 %.not76.i.i, label %tstring_format_spec_rule.exit.thread88, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %tstring_format_spec_rule.exit.thread88

bb.aq:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  store i32 %i.bh, ptr %i.i, align 8, !tbaa !28
  %i.co = load i32, ptr %i.am, align 4, !tbaa !50
  %.not77.i.i = icmp eq i32 %i.co, 0
  br i1 %.not77.i.i, label %tstring_format_spec_rule.exit.thread88, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !27
  %.not78.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not78.i.i, label %bb.as, label %tstring_format_spec_rule.exit.thread88

bb.as:                                            ; preds = %bb.ar
  %i.cq = tail call fastcc ptr @invalid_tstring_replacement_field_rule(ptr noundef nonnull %0), !inline_history !213 ; 2 uses
  %.not79.i.i = icmp eq ptr %i.cq, null
  br i1 %.not79.i.i, label %.thread66, label %tstring_format_spec_rule.exit.thread91

.thread66:                                        ; preds = %bb.as
  store i32 %i.bh, ptr %i.i, align 8, !tbaa !28
  br label %tstring_format_spec_rule.exit.thread88

tstring_format_spec_rule.exit.thread91:           ; preds = %bb.an, %bb.as
  %.126.i.ph = phi ptr [ %i.cq, %bb.as ], [ %i.cl, %bb.an ]
  %storemerge120.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge120 = add i32 %storemerge120.in, -1
  br label %tstring_format_spec_rule.exit

tstring_format_spec_rule.exit.thread88:           ; preds = %bb.aq, %bb.ar, %bb.am, %bb.af, %bb.ab, %.thread66, %bb.ao, %bb.ae, %bb.ap
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cs = add i32 %i.cr, -1
  br label %.thread103

tstring_format_spec_rule.exit:                    ; preds = %.tstring_format_spec_rule.exit_crit_edge, %tstring_format_spec_rule.exit.thread91
  %storemerge.in = phi i32 [ %storemerge120, %tstring_format_spec_rule.exit.thread91 ], [ %storemerge.in.pre, %.tstring_format_spec_rule.exit_crit_edge ]
  %.227.i94 = phi ptr [ %.126.i.ph, %tstring_format_spec_rule.exit.thread91 ], [ %i.aw, %.tstring_format_spec_rule.exit_crit_edge ]
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  %i.ct = icmp eq i64 %.049.i, %.050.i
  br i1 %i.ct, label %bb.at, label %bb.au

bb.at:                                            ; preds = %tstring_format_spec_rule.exit
  %i.cu = shl i64 %.050.i, 1
  %i.cv = shl i64 %.050.i, 4
  %i.cw = tail call ptr @PyMem_Realloc(ptr noundef %.054.i, i64 noundef %i.cv) #6, !inline_history !211 ; 2 uses
  %.not66.not.i = icmp eq ptr %i.cw, null
  br i1 %.not66.not.i, label %_loop0_80_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at, %tstring_format_spec_rule.exit
  %.256.i = phi ptr [ %.054.i, %tstring_format_spec_rule.exit ], [ %i.cw, %bb.at ] ; 2 uses
  %.151.i = phi i64 [ %.050.i, %tstring_format_spec_rule.exit ], [ %i.cu, %bb.at ]
  %i.cx = add i64 %.049.i, 1
  %i.cy = getelementptr [8 x i8], ptr %.256.i, i64 %.049.i
  store ptr %.227.i94, ptr %i.cy, align 8, !tbaa !31
  %i.cz = load i32, ptr %i.i, align 8, !tbaa !28
  br label %bb.p, !llvm.loop !214

bb.av:                                            ; preds = %bb.w
  %i.da = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread103

.thread103:                                       ; preds = %bb.x, %.thread55, %bb.t, %tstring_format_spec_rule.exit.thread88, %bb.av
  %.sink308 = phi i32 [ %i.da, %bb.av ], [ %i.az, %.thread55 ], [ %i.at, %bb.t ], [ %i.cs, %tstring_format_spec_rule.exit.thread88 ], [ %i.bb, %bb.x ]
  %i.db = add i32 %.sink308, -1
  store i32 %i.db, ptr %i.a, align 8, !tbaa !26
  store i32 %.048.i, ptr %i.i, align 8, !tbaa !28
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.dd = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.i, ptr noundef %i.dc) #6, !inline_history !211 ; 3 uses
  %.not67.i = icmp eq ptr %i.dd, null
  br i1 %.not67.i, label %_loop0_80_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.thread103
  %i.de = icmp sgt i64 %.049.i, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.df = getelementptr i8, ptr %i.dd, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.i, 3                  ; 3 uses
  %i.dg = icmp ult i64 %.049.i, 4
  br i1 %i.dg, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.049.i, 9223372036854775804
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.new
  %.0.i181 = phi i64 [ 0, %.lr.ph.new ], [ %i.ea, %bb.aw ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.aw ]
  %i.dh = getelementptr [8 x i8], ptr %.054.i, i64 %.0.i181
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %.0.i181
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !31
  %i.dl = or disjoint i64 %.0.i181, 1             ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %.054.i, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !31
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.dp = getelementptr [8 x i8], ptr %i.do, i64 %i.dl
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !31
  %i.dq = or disjoint i64 %.0.i181, 2             ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %.054.i, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31
  %i.dt = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %i.dq
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !31
  %i.dv = or disjoint i64 %.0.i181, 3             ; 2 uses
  %i.dw = getelementptr [8 x i8], ptr %.054.i, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31
  %i.dy = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dv
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !31
  %i.ea = add nuw nsw i64 %.0.i181, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !215

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.aw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0.i181.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ea, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod382 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod382)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %.0.i181.epil = phi i64 [ %.0.i181.epil.init, %.epil.preheader ], [ %i.ef, %bb.ax ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.eb = getelementptr [8 x i8], ptr %.054.i, i64 %.0.i181.epil
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !31
  %i.ed = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %.0.i181.epil
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !31
  %i.ef = add nuw nsw i64 %.0.i181.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ax, !llvm.loop !216

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ax, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i) #6, !inline_history !211
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.eg = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.thread113, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  %i.ei = getelementptr i8, ptr %i.eg, i64 28
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !36
  %i.ek = getelementptr i8, ptr %i.eg, i64 32
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !37
  %i.em = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.en = tail call ptr @_PyPegen_setup_full_format_spec(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.dd, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ej, i32 noundef %i.el, ptr noundef %i.em) #6 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.az, label %.thread113

bb.az:                                            ; preds = %bb.ay
  %i.ep = tail call ptr @PyErr_Occurred() #6
  %.not51 = icmp eq ptr %i.ep, null
  br i1 %.not51, label %.thread113, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread113

_loop0_80_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.at, %.thread103
  tail call void @PyMem_Free(ptr noundef %.054.i) #6
  br label %_loop0_80_rule.exit.thread.sink.split.sink.split

_loop0_80_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_80_rule.exit.thread.sink.split.sink.split.sink.split, %bb.n
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.eq = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_80_rule.exit.thread.sink.split

_loop0_80_rule.exit.thread.sink.split:            ; preds = %_loop0_80_rule.exit.thread.sink.split.sink.split, %bb.o, %bb.m
  %i.er = load i32, ptr %i.a, align 8, !tbaa !26
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.a, align 8, !tbaa !26
  br label %_loop0_80_rule.exit.thread

_loop0_80_rule.exit.thread:                       ; preds = %_loop0_80_rule.exit.thread.sink.split, %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread113

.thread113:                                       ; preds = %_loop0_80_rule.exit.thread, %bb.az, %bb.ay, %._crit_edge, %bb.h, %bb.d, %bb.ba, %bb.g
  %.5 = phi ptr [ null, %bb.ba ], [ null, %bb.g ], [ null, %bb.d ], [ null, %._crit_edge ], [ null, %bb.h ], [ null, %_loop0_80_rule.exit.thread ], [ null, %bb.az ], [ %i.en, %bb.ay ]
  %i.et = load i32, ptr %i.a, align 8, !tbaa !26
  %i.eu = add i32 %i.et, -1
  store i32 %i.eu, ptr %i.a, align 8, !tbaa !26
  ret ptr %.5
}

declare ptr @_PyPegen_interpolation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @invalid_tstring_replacement_field_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 28 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not207 = icmp eq i32 %i.h, 0
  br i1 %.not207, label %bb.e, label %.thread287

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 15 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 14 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 25) #6
  %.not208 = icmp eq ptr %i.k, null
  br i1 %.not208, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6 ; 5 uses
  %.not209 = icmp eq ptr %i.l, null
  br i1 %.not209, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.n = getelementptr i8, ptr %i.l, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %i.l, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !35
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %i.l, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %i.l, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !37
  %i.y = sext i32 %i.x to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.m, i64 noundef %i.p, i64 noundef %i.s, i64 noundef %i.v, i64 noundef %i.y, ptr noundef nonnull @.str.72)
  %i.z = tail call ptr @PyErr_Occurred() #6
  %.not210 = icmp eq ptr %i.z, null
  br i1 %.not210, label %.thread287, label %.thread

.thread:                                          ; preds = %bb.g
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread287

bb.h:                                             ; preds = %bb.e, %bb.f
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !27
  %.not211 = icmp eq i32 %i.aa, 0
  br i1 %.not211, label %bb.i, label %.thread287

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 25) #6
  %.not212 = icmp eq ptr %i.ab, null
  br i1 %.not212, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 54) #6 ; 5 uses
  %.not213 = icmp eq ptr %i.ac, null
  br i1 %.not213, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ae = getelementptr i8, ptr %i.ac, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.ac, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !35
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr i8, ptr %i.ac, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr i8, ptr %i.ac, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !37
  %i.ap = sext i32 %i.ao to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.ad, i64 noundef %i.ag, i64 noundef %i.aj, i64 noundef %i.am, i64 noundef %i.ap, ptr noundef nonnull @.str.73)
  %i.aq = tail call ptr @PyErr_Occurred() #6
  %.not214 = icmp eq ptr %i.aq, null
  br i1 %.not214, label %.thread287, label %.thread275

.thread275:                                       ; preds = %bb.k
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread287

bb.l:                                             ; preds = %bb.i, %bb.j
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !27
  %.not215 = icmp eq i32 %i.ar, 0
  br i1 %.not215, label %bb.m, label %.thread287

bb.m:                                             ; preds = %bb.l
  %i.as = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 25) #6
  %.not216 = icmp eq ptr %i.as, null
  br i1 %.not216, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6 ; 5 uses
  %.not217 = icmp eq ptr %i.at, null
  br i1 %.not217, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_12
begin_hunk_13_@_loop0_78_rule:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 2 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader98, label %bb.u

.preheader98:                                     ; preds = %bb.g, %bb.q
  %.054 = phi ptr [ %.256, %bb.q ], [ %i.k, %bb.g ] ; 10 uses
  %.050 = phi i64 [ %.151, %bb.q ], [ 1, %bb.g ]  ; 4 uses
  %.049 = phi i64 [ %i.af, %bb.q ], [ 0, %bb.g ]  ; 8 uses
  %.048 = phi i32 [ %i.ah, %bb.q ], [ %i.j, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.n, 6000
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader98
  %i.q = tail call ptr @PyThreadState_Get() #6, !inline_history !217
  %i.r = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.q, i32 noundef 1) #6, !inline_history !217
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader98
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !217
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load i32, ptr %i.g, align 8, !tbaa !27
  %.not32.i = icmp eq i32 %i.s, 0
  br i1 %.not32.i, label %bb.k, label %.thread95

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.i, align 8, !tbaa !28
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 60) #6, !inline_history !217 ; 2 uses
  %.not33.i = icmp eq ptr %i.u, null
  br i1 %.not33.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call ptr @_PyPegen_decoded_constant_from_token(ptr noundef nonnull %0, ptr noundef nonnull %i.u) #6, !inline_history !217 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %fstring_format_spec_rule.exit.thread83

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @PyErr_Occurred() #6, !inline_history !217
  %.not34.i = icmp eq ptr %i.x, null
  br i1 %.not34.i, label %.thread95, label %.thread70

.thread70:                                        ; preds = %bb.m
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread95

bb.n:                                             ; preds = %bb.k
  store i32 %i.t, ptr %i.i, align 8, !tbaa !28
  %i.y = load i32, ptr %i.g, align 8, !tbaa !27
  %.not35.i = icmp eq i32 %i.y, 0
  br i1 %.not35.i, label %bb.o, label %.thread95

bb.o:                                             ; preds = %bb.n
  %i.z = tail call fastcc ptr @fstring_replacement_field_rule(ptr noundef nonnull %0), !inline_history !217 ; 2 uses
  %.not36.i = icmp eq ptr %i.z, null
  br i1 %.not36.i, label %.thread95, label %fstring_format_spec_rule.exit.thread83

fstring_format_spec_rule.exit.thread83:           ; preds = %bb.l, %bb.o
  %.227.i86 = phi ptr [ %i.z, %bb.o ], [ %i.v, %bb.l ]
  %storemerge97.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge97 = add i32 %storemerge97.in, -1
  store i32 %storemerge97, ptr %i.a, align 8, !tbaa !26
  %i.aa = icmp eq i64 %.049, %.050
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %fstring_format_spec_rule.exit.thread83
  %i.ab = shl i64 %.050, 1
  %i.ac = shl i64 %.050, 4
  %i.ad = tail call ptr @PyMem_Realloc(ptr noundef %.054, i64 noundef %i.ac) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.ad, null
  br i1 %.not66.not, label %.thread92, label %bb.q

.thread92:                                        ; preds = %bb.p
  tail call void @PyMem_Free(ptr noundef %.054) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.u

bb.q:                                             ; preds = %bb.p, %fstring_format_spec_rule.exit.thread83
  %.256 = phi ptr [ %.054, %fstring_format_spec_rule.exit.thread83 ], [ %i.ad, %bb.p ] ; 2 uses
  %.151 = phi i64 [ %.050, %fstring_format_spec_rule.exit.thread83 ], [ %i.ab, %bb.p ]
  %i.af = add i64 %.049, 1
  %i.ag = getelementptr [8 x i8], ptr %.256, i64 %.049
  store ptr %.227.i86, ptr %i.ag, align 8, !tbaa !31
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !28
  br label %.preheader98, !llvm.loop !218

.thread95:                                        ; preds = %bb.o, %bb.n, %bb.j, %bb.m, %.thread70
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !26
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !26
  store i32 %.048, ptr %i.i, align 8, !tbaa !28
  %i.ak = getelementptr i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.am = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049, ptr noundef %i.al) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.am, null
  br i1 %.not67, label %bb.r, label %.preheader

.preheader:                                       ; preds = %.thread95
  %i.an = icmp sgt i64 %.049, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ao = getelementptr i8, ptr %i.am, i64 8      ; 5 uses
  %xtraiter = and i64 %.049, 3                    ; 3 uses
  %i.ap = icmp ult i64 %.049, 4
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.049, 9223372036854775804
  br label %bb.t

bb.r:                                             ; preds = %.thread95
  tail call void @PyMem_Free(ptr noundef %.054) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.aq = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.u

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0117.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bp, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.0117.epil = phi i64 [ %.0117.epil.init, %.epil.preheader ], [ %i.av, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.ar = getelementptr [8 x i8], ptr %.054, i64 %.0117.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %.0117.epil
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = add nuw nsw i64 %.0117.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.s, !llvm.loop !219

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.s, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054) #6
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph.new
  %.0117 = phi i64 [ 0, %.lr.ph.new ], [ %i.bp, %bb.t ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.t ]
  %i.aw = getelementptr [8 x i8], ptr %.054, i64 %.0117
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.0117
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.0117, 1               ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = or disjoint i64 %.0117, 2               ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %.054, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.bf
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !31
  %i.bk = or disjoint i64 %.0117, 3               ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %.054, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %i.bk
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !31
  %i.bp = add nuw nsw i64 %.0117, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.t, !llvm.loop !220

bb.u:                                             ; preds = %bb.r, %._crit_edge, %bb.g, %bb.d, %.thread92, %bb.f
  %.7 = phi ptr [ null, %.thread92 ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.am, %._crit_edge ], [ %i.am, %bb.r ]
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !26
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fstring_replacement_field_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 12 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 36 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not68 = icmp eq i32 %i.h, 0
  br i1 %.not68, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 17 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread94

.thread94:                                        ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = icmp eq i32 %.pre, 0
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %i.j to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  br i1 %i.t, label %bb.i, label %.thread

bb.i:                                             ; preds = %.thread94, %bb.h
  %.pn.in = phi ptr [ %i.q, %.thread94 ], [ %i.x, %bb.h ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in97 = getelementptr i8, ptr %.pn, i64 20
  %i.y = load i32, ptr %.in97, align 4, !tbaa !32
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.z = load i32, ptr %.in, align 8, !tbaa !35
  %i.aa = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 25) #6
  %.not70 = icmp eq ptr %i.aa, null
  br i1 %.not70, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @annotated_rhs_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71 = icmp eq ptr %i.ab, null
  br i1 %.not71, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !27
  %.not72 = icmp eq i32 %i.ad, 0
  br i1 %.not72, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call fastcc ptr @fstring_conversion_rule(ptr noundef nonnull %0)
  %i.af = load i32, ptr %i.g, align 8, !tbaa !27
  %.not73 = icmp eq i32 %i.af, 0
  br i1 %.not73, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call fastcc ptr @fstring_full_format_spec_rule(ptr noundef nonnull %0)
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !27
  %.not74 = icmp eq i32 %i.ah, 0
  br i1 %.not74, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 26) #6 ; 2 uses
  %.not75 = icmp eq ptr %i.ai, null
  br i1 %.not75, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr i8, ptr %i.aj, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !36
  %i.an = getelementptr i8, ptr %i.aj, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !37
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = tail call ptr @_PyPegen_formatted_value(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull %i.ai, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.am, i32 noundef %i.ao, ptr noundef %i.aq) #6 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @PyErr_Occurred() #6
  %.not76 = icmp eq ptr %i.at, null
  br i1 %.not76, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.s:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.au = getelementptr i8, ptr %0, i64 148
  %i.av = load i32, ptr %i.au, align 4, !tbaa !50
  %.not77 = icmp eq i32 %i.av, 0
  br i1 %.not77, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !27
  %.not78 = icmp eq i32 %i.aw, 0
  br i1 %.not78, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.a, align 8, !tbaa !26
  %i.az = icmp eq i32 %i.ax, 6000
  br i1 %i.az, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = tail call ptr @PyThreadState_Get() #6, !inline_history !221
  %i.bb = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ba, i32 noundef 1) #6, !inline_history !221
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !221
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bc = load i32, ptr %i.g, align 8, !tbaa !27
  %.not207.i = icmp eq i32 %i.bc, 0
  br i1 %.not207.i, label %bb.y, label %invalid_fstring_replacement_field_rule.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !28  ; 13 uses
  %i.be = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 25) #6, !inline_history !221
  %.not208.i = icmp eq ptr %i.be, null
  br i1 %.not208.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6, !inline_history !221 ; 5 uses
  %.not209.i = icmp eq ptr %i.bf, null
  br i1 %.not209.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.bh = getelementptr i8, ptr %i.bf, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.bf, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !35
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bf, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bf, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !37
  %i.bs = sext i32 %i.br to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.bg, i64 noundef %i.bj, i64 noundef %i.bm, i64 noundef %i.bp, i64 noundef %i.bs, ptr noundef nonnull @.str.84)
  %i.bt = tail call ptr @PyErr_Occurred() #6, !inline_history !221
  %.not210.i = icmp eq ptr %i.bt, null
  br i1 %.not210.i, label %invalid_fstring_replacement_field_rule.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.aa
  store i32 1, ptr %i.g, align 8, !tbaa !27
end_hunk_13
begin_hunk_14_@star_named_expression_sequence_rule:bb.a
  %.1.ph = phi ptr [ null, %.thread44 ], [ %i.aq, %.thread42 ]
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %.thread42, %bb.p, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.p ], [ %i.aq, %.thread42 ], [ %.1.ph, %.sink.split ]
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !26
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_named_expressions_sequence_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.k, 6000
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyThreadState_Get() #6, !inline_history !226
  %i.o = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.n, i32 noundef 1) #6, !inline_history !226
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !226
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.i, label %_gather_60_rule.exit.thread

_gather_60_rule.exit.thread:                      ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @star_named_expression_sequence_rule(ptr noundef nonnull %0), !inline_history !226 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not23.i, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i32 %.pre, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp eq i32 %.pre, 6000
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @PyThreadState_Get() #6, !inline_history !227
  %i.v = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.u, i32 noundef 1) #6, !inline_history !227
  %.not.i26 = icmp eq i32 %i.v, 0
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !227
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.w, 0
  br i1 %.not67.i, label %bb.n, label %_gather_60_rule.exit.thread40.sink.split

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.y = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !227 ; 4 uses
  %.not68.i = icmp eq ptr %i.y, null
  br i1 %.not68.i, label %_gather_60_rule.exit.thread40.sink.split.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.z, 0
  br i1 %.not69.i, label %.preheader45, label %_gather_60_rule.exit.thread40.sink.split

.preheader45:                                     ; preds = %bb.o
  %i.aa = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !227
  %.not70.i49 = icmp eq ptr %i.aa, null
  br i1 %.not70.i49, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %i.ab = tail call fastcc ptr @star_named_expression_sequence_rule(ptr noundef nonnull %0), !inline_history !227 ; 2 uses
  %.not71.i71 = icmp eq ptr %i.ab, null
  br i1 %.not71.i71, label %.critedge.i, label %.lr.ph75

.lr.ph:                                           ; preds = %bb.q
  %i.ac = tail call fastcc ptr @star_named_expression_sequence_rule(ptr noundef nonnull %0), !inline_history !227 ; 2 uses
  %.not71.i = icmp eq ptr %i.ac, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph75, !llvm.loop !228

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ad = phi ptr [ %i.ac, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ]
  %.059.i5074 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i5173 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i5272 = phi ptr [ %.256.i, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.ae = icmp eq i64 %.058.i5173, %.059.i5074
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph75
  %i.af = shl i64 %.058.i5173, 1
  %i.ag = shl i64 %.058.i5173, 4
  %i.ah = tail call ptr @PyMem_Realloc(ptr noundef %.054.i5272, i64 noundef %i.ag) #6, !inline_history !227 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ah, null
  br i1 %.not72.not.i, label %_gather_60_rule.exit.thread40.sink.split.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph75
  %.160.i = phi i64 [ %.059.i5074, %.lr.ph75 ], [ %i.af, %bb.p ]
  %.256.i = phi ptr [ %.054.i5272, %.lr.ph75 ], [ %i.ah, %bb.p ] ; 4 uses
  %i.ai = add i64 %.058.i5173, 1                  ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i5173
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !31
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.al = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !227
  %.not70.i = icmp eq ptr %i.al, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !228

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.q
  br label %.critedge.i, !llvm.loop !228

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader45
  %.058.i.lcssa = phi i64 [ 0, %.preheader45 ], [ %i.ai, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ai, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.y, %.preheader45 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.y, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.x, %.preheader45 ], [ %i.ak, %..critedge.i.loopexit_crit_edge ], [ %i.x, %.lr.ph.preheader ], [ %i.ak, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.an) #6, !inline_history !227 ; 3 uses
  %.not73.i = icmp eq ptr %i.ao, null
  br i1 %.not73.i, label %_gather_60_rule.exit.thread40.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.ap = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.ap, label %.lr.ph61, label %_gather_60_rule.exit

.lr.ph61:                                         ; preds = %.preheader
  %i.aq = getelementptr i8, ptr %i.ao, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.ar = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph61.new
  %.0.i60 = phi i64 [ 0, %.lr.ph61.new ], [ %i.bl, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.3, %bb.r ]
  %i.as = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.0.i60
  store ptr %i.at, ptr %i.av, align 8, !tbaa !31
  %i.aw = or disjoint i64 %.0.i60, 1              ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.aw
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !31
  %i.bb = or disjoint i64 %.0.i60, 2              ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bb
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !31
  %i.bg = or disjoint i64 %.0.i60, 3              ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !31
  %i.bl = add nuw nsw i64 %.0.i60, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_60_rule.exit.loopexit.unr-lcssa, label %bb.r, !llvm.loop !229

_gather_60_rule.exit.thread40.sink.split.sink.split.sink.split: ; preds = %bb.p, %.critedge.i
  %.054.i.lcssa.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i5272, %bb.p ]
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa.sink) #6
  br label %_gather_60_rule.exit.thread40.sink.split.sink.split

_gather_60_rule.exit.thread40.sink.split.sink.split: ; preds = %_gather_60_rule.exit.thread40.sink.split.sink.split.sink.split, %bb.n
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_gather_60_rule.exit.thread40.sink.split

_gather_60_rule.exit.thread40.sink.split:         ; preds = %_gather_60_rule.exit.thread40.sink.split.sink.split, %bb.o, %bb.m
  %storemerge.in.i32 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i33 = add i32 %storemerge.in.i32, -1
  br label %.sink.split

_gather_60_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_60_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_60_rule.exit.loopexit.unr-lcssa, %.lr.ph61
  %.0.i60.epil.init = phi i64 [ 0, %.lr.ph61 ], [ %i.bl, %_gather_60_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.0.i60.epil = phi i64 [ %.0.i60.epil.init, %.epil.preheader ], [ %i.br, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.bn = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60.epil
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.0.i60.epil
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !31
  %i.br = add nuw nsw i64 %.0.i60.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_60_rule.exit, label %bb.s, !llvm.loop !230

_gather_60_rule.exit:                             ; preds = %_gather_60_rule.exit.loopexit.unr-lcssa, %bb.s, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !227
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bs = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ao) #6, !inline_history !226 ; 2 uses
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !26
  %.not23 = icmp eq ptr %i.bs, null
  br i1 %.not23, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_gather_60_rule.exit
  %i.bv = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24 = icmp eq i32 %i.bw, 0
  br i1 %.not24, label %bb.v, label %bb.u

.sink.split:                                      ; preds = %bb.i, %_gather_60_rule.exit.thread40.sink.split, %_gather_60_rule.exit.thread
  %.sink69 = phi i32 [ %i.q, %_gather_60_rule.exit.thread ], [ %.pre, %bb.i ], [ %storemerge.i33, %_gather_60_rule.exit.thread40.sink.split ]
  %i.bx = add i32 %.sink69, -1
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_gather_60_rule.exit, %bb.t
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.u ], [ %i.bs, %bb.t ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @list_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread58

.thread58:                                        ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = icmp eq i32 %.pre, 0
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %i.j to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  br i1 %i.t, label %bb.i, label %.thread

bb.i:                                             ; preds = %.thread58, %bb.h
  %.pn.in = phi ptr [ %i.q, %.thread58 ], [ %i.x, %bb.h ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in61 = getelementptr i8, ptr %.pn, i64 20
  %i.y = load i32, ptr %.in61, align 4, !tbaa !32
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.z = load i32, ptr %.in, align 8, !tbaa !35
  %i.aa = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 9) #6
  %.not47 = icmp eq ptr %i.aa, null
  br i1 %.not47, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call fastcc ptr @star_named_expressions_sequence_rule(ptr noundef nonnull %0)
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !27
  %.not48 = icmp eq i32 %i.ac, 0
  br i1 %.not48, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 10) #6
  %.not49 = icmp eq ptr %i.ad, null
  br i1 %.not49, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %i.ae, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ai = getelementptr i8, ptr %i.ae, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.ak = getelementptr i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.am = tail call ptr @_PyAST_List(ptr noundef %i.ab, i32 noundef 1, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.ah, i32 noundef %i.aj, ptr noundef %i.al) #6 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call ptr @PyErr_Occurred() #6
  %.not50 = icmp eq ptr %i.ao, null
  br i1 %.not50, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.n, %bb.m, %bb.l, %bb.h, %bb.d, %bb.o, %bb.g
  %.5 = phi ptr [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.h ], [ null, %bb.p ], [ null, %bb.n ], [ %i.am, %bb.m ]
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !26
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !26
  ret ptr %.5
}

declare ptr @_PyAST_ListComp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @set_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
end_hunk_14
begin_hunk_15_@invalid_double_starred_kvpairs_rule:bb.a
  %i.aa = tail call i32 @_PyPegen_lookahead(i32 noundef 1, ptr noundef nonnull @_tmp_151_rule, ptr noundef nonnull %0) #6
  %.not64 = icmp eq i32 %i.aa, 0
  br i1 %.not64, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ac = getelementptr i8, ptr %i.z, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.z, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.z, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.z, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !37
  %i.an = sext i32 %i.am to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.ab, i64 noundef %i.ae, i64 noundef %i.ah, i64 noundef %i.ak, i64 noundef %i.an, ptr noundef nonnull @.str.99)
  %i.ao = tail call ptr @PyErr_Occurred() #6
  %.not65 = icmp eq ptr %i.ao, null
  br i1 %.not65, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.p, %bb.e, %bb.d, %bb.v
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !26
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_86_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @double_starred_kvpair_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %_loop0_85_rule.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !232
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !232
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !232
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_85_rule.exit.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !232 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_85_rule.exit.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader37, label %_loop0_85_rule.exit.thread.sink.split

.preheader37:                                     ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !232
  %.not70.i41 = icmp eq ptr %i.u, null
  br i1 %.not70.i41, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.v = tail call fastcc ptr @double_starred_kvpair_rule(ptr noundef nonnull %0), !inline_history !232 ; 2 uses
  %.not71.i62 = icmp eq ptr %i.v, null
  br i1 %.not71.i62, label %.critedge.i, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.m
  %i.w = tail call fastcc ptr @double_starred_kvpair_rule(ptr noundef nonnull %0), !inline_history !232 ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph66, !llvm.loop !233

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %.059.i4265 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4364 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4463 = phi ptr [ %.256.i, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.058.i4364, %.059.i4265
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66
  %i.z = shl i64 %.058.i4364, 1
  %i.aa = shl i64 %.058.i4364, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4463, i64 noundef %i.aa) #6, !inline_history !232 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_85_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66
  %.160.i = phi i64 [ %.059.i4265, %.lr.ph66 ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.054.i4463, %.lr.ph66 ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.058.i4364, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4364
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !232
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !233

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !233

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader37
  %.058.i.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.s, %.preheader37 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.s, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.r, %.preheader37 ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ah) #6, !inline_history !232 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_85_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.aj, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.lr.ph53
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph53.new
  %.0.i52 = phi i64 [ 0, %.lr.ph53.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.0.i52
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.0.i52, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.0.i52, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.0.i52, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.0.i52, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !234

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph53
  %.0.i52.epil.init = phi i64 [ 0, %.lr.ph53 ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.0.i52.epil = phi i64 [ %.0.i52.epil.init, %.epil.preheader ], [ %i.bk, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bg = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52.epil
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.0.i52.epil
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !31
  %i.bk = add nuw nsw i64 %.0.i52.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !235

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !232
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bl = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.p

_loop0_85_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.i44.lcssa59.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i4463, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.i44.lcssa59.sink) #6
  br label %_loop0_85_rule.exit.thread.sink.split.sink.split

_loop0_85_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_85_rule.exit.thread.sink.split.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_85_rule.exit.thread.sink.split

_loop0_85_rule.exit.thread.sink.split:            ; preds = %_loop0_85_rule.exit.thread.sink.split.sink.split, %bb.k, %bb.i
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !26
  br label %_loop0_85_rule.exit.thread

_loop0_85_rule.exit.thread:                       ; preds = %_loop0_85_rule.exit.thread.sink.split, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %_loop0_85_rule.exit.thread, %._crit_edge, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %_loop0_85_rule.exit.thread ], [ %i.bl, %._crit_edge ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @double_starred_kvpair_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not33 = icmp eq i32 %i.h, 0
  br i1 %.not33, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 35) #6
  %.not34 = icmp eq ptr %i.k, null
  br i1 %.not34, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @bitwise_or_rule(ptr noundef nonnull %0) ; 2 uses
  %.not35 = icmp eq ptr %i.l, null
  br i1 %.not35, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_key_value_pair(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.l) #6 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @PyErr_Occurred() #6
  %.not36 = icmp eq ptr %i.o, null
  br i1 %.not36, label %.thread, label %.thread42

.thread42:                                        ; preds = %bb.h
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.i:                                             ; preds = %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.p = load i32, ptr %i.g, align 8, !tbaa !27
  %.not37 = icmp eq i32 %i.p, 0
  br i1 %.not37, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.q = tail call fastcc ptr @kvpair_rule(ptr noundef nonnull %0) ; 2 uses
  %.not38 = icmp eq ptr %i.q, null
  br i1 %.not38, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %bb.h, %bb.g, %bb.i, %bb.d, %.thread42
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.i ], [ null, %.thread42 ], [ %i.q, %bb.j ], [ null, %bb.k ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.r = load i32, ptr %i.a, align 8, !tbaa !26
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalid_kvpair_unpacking_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not115 = icmp eq i32 %i.h, 0
  br i1 %.not115, label %bb.e, label %.thread158

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 5 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 35) #6 ; 3 uses
  %.not116 = icmp eq ptr %i.k, null
  br i1 %.not116, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @if_expression_rule(ptr noundef nonnull %0) ; 3 uses
  %.not117 = icmp eq ptr %i.l, null
  br i1 %.not117, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.n = getelementptr i8, ptr %i.k, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %i.k, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !35
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %i.l, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !73
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %i.l, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !74
  %i.y = sext i32 %i.x to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.m, i64 noundef %i.p, i64 noundef %i.s, i64 noundef %i.v, i64 noundef %i.y, ptr noundef nonnull @.str.100)
  %i.z = tail call ptr @PyErr_Occurred() #6
  %.not118 = icmp eq ptr %i.z, null
  br i1 %.not118, label %.thread158, label %.thread

.thread:                                          ; preds = %bb.g
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread158

bb.h:                                             ; preds = %bb.e, %bb.f
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
end_hunk_15
begin_hunk_16_@import_stmt_rule:bb.a
  %.pre88 = load i32, ptr %i.h, align 8, !tbaa !27 ; 2 uses
  br i1 %.not40, label %bb.al, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not41 = icmp eq i32 %.pre88, 0
  %i.t = load i32, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr %i.b, align 8, !tbaa !26
  br label %bb.bf

bb.k:                                             ; preds = %bb.i
  %i.v = add i32 %i.t, 1
  store i32 %i.v, ptr %i.b, align 8, !tbaa !26
  %i.w = icmp eq i32 %i.t, 6000
  br i1 %i.w, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = call ptr @PyThreadState_Get() #6
  %i.y = call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.x, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.z = load i32, ptr %i.h, align 8, !tbaa !27
  %.not43.i = icmp eq i32 %i.z, 0
  br i1 %.not43.i, label %bb.o, label %invalid_import_rule.exit

bb.o:                                             ; preds = %bb.n
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !28
  %i.ab = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 647) #6 ; 3 uses
  %.not44.i = icmp eq ptr %i.ab, null
  br i1 %.not44.i, label %bb.ah, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !26
  %i.ae = icmp eq i32 %i.ac, 6000
  br i1 %i.ae, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = call ptr @PyThreadState_Get() #6
  %i.ag = call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.af, i32 noundef 1) #6
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !27
  %.not22.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i, label %bb.t, label %._gather_138_rule.exit.thread.i_crit_edge

._gather_138_rule.exit.thread.i_crit_edge:        ; preds = %bb.s
  %storemerge.in.i54.i.pre = load i32, ptr %i.b, align 8, !tbaa !26
  br label %_gather_138_rule.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ai = call fastcc ptr @dotted_name_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ai, null
  %storemerge.in.i54.i.pre86 = load i32, ptr %i.b, align 8, !tbaa !26 ; 3 uses
  br i1 %.not23.i.i, label %_gather_138_rule.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = add i32 %storemerge.in.i54.i.pre86, 1
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !26
  %i.ak = icmp eq i32 %storemerge.in.i54.i.pre86, 6000
  br i1 %i.ak, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = call ptr @PyThreadState_Get() #6
  %i.am = call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.al, i32 noundef 1) #6
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.an = load i32, ptr %i.h, align 8, !tbaa !27
  %.not67.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not67.i.i.i, label %bb.y, label %_loop0_137_rule.exit.thread.i.i

bb.y:                                             ; preds = %bb.x
  %i.ao = load i32, ptr %i.p, align 8, !tbaa !28  ; 2 uses
  %i.ap = call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 4 uses
  %.not68.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not68.i.i.i, label %_loop0_137_rule.exit.thread.sink.split.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !27
  %.not69.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not69.i.i.i, label %.preheader77.i.i.i, label %_loop0_137_rule.exit.thread.i.i

.preheader77.i.i.i:                               ; preds = %bb.z
  %i.ar = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not7081.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not7081.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.preheader77.i.i.i
  %i.as = call fastcc ptr @dotted_name_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i31.i.i = icmp eq ptr %i.as, null
  br i1 %.not71.i31.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab
  %i.at = call fastcc ptr @dotted_name_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not71.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i, !llvm.loop !252

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %i.au = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.as, %.lr.ph.i.preheader.i.i ]
  %.05982.i34.i.i = phi i64 [ %.160.i.i.i, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.preheader.i.i ] ; 4 uses
  %.05883.i33.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.05484.i32.i.i = phi ptr [ %.256.i.i.i, %.lr.ph.i.i.i ], [ %i.ap, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.av = icmp eq i64 %.05883.i33.i.i, %.05982.i34.i.i
  br i1 %i.av, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.aw = shl i64 %.05982.i34.i.i, 1
  %i.ax = shl i64 %.05982.i34.i.i, 4
  %i.ay = call ptr @PyMem_Realloc(ptr noundef %.05484.i32.i.i, i64 noundef %i.ax) #6 ; 2 uses
  %.not72.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not72.not.i.i.i, label %_loop0_137_rule.exit.thread.sink.split.sink.split.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i
  %.160.i.i.i = phi i64 [ %.05982.i34.i.i, %.lr.ph.i.i ], [ %i.aw, %bb.aa ]
  %.256.i.i.i = phi ptr [ %.05484.i32.i.i, %.lr.ph.i.i ], [ %i.ay, %bb.aa ] ; 4 uses
  %i.az = add i64 %.05883.i33.i.i, 1              ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %.256.i.i.i, i64 %.05883.i33.i.i
  store ptr %i.au, ptr %i.ba, align 8, !tbaa !31
  %i.bb = load i32, ptr %i.p, align 8, !tbaa !28  ; 2 uses
  %i.bc = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not70.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not70.i.i.i, label %..critedge.i.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i, !llvm.loop !252

..critedge.i.loopexit_crit_edge.i.i:              ; preds = %bb.ab
  br label %.critedge.i.i.i, !llvm.loop !252

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %..critedge.i.loopexit_crit_edge.i.i, %.lr.ph.i.preheader.i.i, %.preheader77.i.i.i
  %.058.lcssa.i.i.i = phi i64 [ 0, %.preheader77.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ], [ %i.az, %..critedge.i.loopexit_crit_edge.i.i ], [ %i.az, %.lr.ph.i.i.i ] ; 5 uses
  %.054.lcssa.i.i.i = phi ptr [ %i.ap, %.preheader77.i.i.i ], [ %i.ap, %.lr.ph.i.preheader.i.i ], [ %.256.i.i.i, %..critedge.i.loopexit_crit_edge.i.i ], [ %.256.i.i.i, %.lr.ph.i.i.i ] ; 7 uses
  %.053.lcssa.i.i.i = phi i32 [ %i.ao, %.preheader77.i.i.i ], [ %i.ao, %.lr.ph.i.preheader.i.i ], [ %i.bb, %..critedge.i.loopexit_crit_edge.i.i ], [ %i.bb, %.lr.ph.i.i.i ]
  store i32 %.053.lcssa.i.i.i, ptr %i.p, align 8, !tbaa !28
  %i.bd = getelementptr i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.bf = call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.lcssa.i.i.i, ptr noundef %i.be) #6 ; 3 uses
  %.not73.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not73.i.i.i, label %_loop0_137_rule.exit.thread.sink.split.sink.split.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i.i
  %i.bg = icmp sgt i64 %.058.lcssa.i.i.i, 0
  br i1 %i.bg, label %.lr.ph93.i.i.i, label %_gather_138_rule.exit.i

.lr.ph93.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.bh = getelementptr i8, ptr %i.bf, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.lcssa.i.i.i, 3        ; 3 uses
  %i.bi = icmp ult i64 %.058.lcssa.i.i.i, 4
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph93.i.i.i.new

.lr.ph93.i.i.i.new:                               ; preds = %.lr.ph93.i.i.i
  %unroll_iter = and i64 %.058.lcssa.i.i.i, 9223372036854775804
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph93.i.i.i.new
  %.092.i.i.i = phi i64 [ 0, %.lr.ph93.i.i.i.new ], [ %i.cc, %bb.ac ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.i.i.new ], [ %niter.next.3, %bb.ac ]
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i.i.i, i64 %.092.i.i.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.092.i.i.i
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = or disjoint i64 %.092.i.i.i, 1          ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %.054.lcssa.i.i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bn
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !31
  %i.bs = or disjoint i64 %.092.i.i.i, 2          ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %.054.lcssa.i.i.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.bs
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !31
  %i.bx = or disjoint i64 %.092.i.i.i, 3          ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %.054.lcssa.i.i.i, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31
  %i.ca = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bx
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !31
  %i.cc = add nuw nsw i64 %.092.i.i.i, 4          ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_138_rule.exit.i.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !253

_loop0_137_rule.exit.thread.sink.split.sink.split.i.i: ; preds = %bb.aa, %.critedge.i.i.i
  %.054.lcssa.i.sink.i.i = phi ptr [ %.054.lcssa.i.i.i, %.critedge.i.i.i ], [ %.05484.i32.i.i, %bb.aa ]
  call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink.i.i) #6
  br label %_loop0_137_rule.exit.thread.sink.split.i.i

_loop0_137_rule.exit.thread.sink.split.i.i:       ; preds = %_loop0_137_rule.exit.thread.sink.split.sink.split.i.i, %bb.y
  store i32 1, ptr %i.h, align 8, !tbaa !27
  %i.cd = call ptr @PyErr_NoMemory() #6           ; 0 uses
  br label %_loop0_137_rule.exit.thread.i.i

_loop0_137_rule.exit.thread.i.i:                  ; preds = %_loop0_137_rule.exit.thread.sink.split.i.i, %bb.z, %bb.x
  %i.ce = load i32, ptr %i.b, align 8, !tbaa !26
  %i.cf = add i32 %i.ce, -1
  br label %_gather_138_rule.exit.thread.i

_gather_138_rule.exit.thread.i:                   ; preds = %._gather_138_rule.exit.thread.i_crit_edge, %_loop0_137_rule.exit.thread.i.i, %bb.t
  %storemerge.in.i54.i = phi i32 [ %storemerge.in.i54.i.pre, %._gather_138_rule.exit.thread.i_crit_edge ], [ %i.cf, %_loop0_137_rule.exit.thread.i.i ], [ %storemerge.in.i54.i.pre86, %bb.t ]
  %storemerge.i55.i = add i32 %storemerge.in.i54.i, -1
  store i32 %storemerge.i55.i, ptr %i.b, align 8, !tbaa !26
  br label %bb.ah

_gather_138_rule.exit.i.loopexit.unr-lcssa:       ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_138_rule.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_138_rule.exit.i.loopexit.unr-lcssa, %.lr.ph93.i.i.i
  %.092.i.i.i.epil.init = phi i64 [ 0, %.lr.ph93.i.i.i ], [ %i.cc, %_gather_138_rule.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader
  %.092.i.i.i.epil = phi i64 [ %.092.i.i.i.epil.init, %.epil.preheader ], [ %i.ck, %bb.ad ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ad ]
  %i.cg = getelementptr [8 x i8], ptr %.054.lcssa.i.i.i, i64 %.092.i.i.i.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31
  %i.ci = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %.092.i.i.i.epil
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !31
  %i.ck = add nuw nsw i64 %.092.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_138_rule.exit.i, label %bb.ad, !llvm.loop !254

_gather_138_rule.exit.i:                          ; preds = %_gather_138_rule.exit.i.loopexit.unr-lcssa, %bb.ad, %.preheader.i.i.i
  call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i.i.i) #6
  %i.cl = load i32, ptr %i.b, align 8, !tbaa !26
  %i.cm = add i32 %i.cl, -1
  store i32 %i.cm, ptr %i.b, align 8, !tbaa !26
  %i.cn = call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.bf) #6
  %storemerge.in.i.i = load i32, ptr %i.b, align 8, !tbaa !26
  %storemerge.i.i = add i32 %storemerge.in.i.i, -1
  store i32 %storemerge.i.i, ptr %i.b, align 8, !tbaa !26
  %.not45.i = icmp eq ptr %i.cn, null
  br i1 %.not45.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_gather_138_rule.exit.i
  %i.co = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 646) #6
  %.not46.i = icmp eq ptr %i.co, null
  br i1 %.not46.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = call fastcc ptr @dotted_name_rule(ptr noundef nonnull %0)
  %.not47.i = icmp eq ptr %i.cp, null
  br i1 %.not47.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.cr = getelementptr i8, ptr %i.ab, i64 20
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr i8, ptr %i.ab, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !35
  %i.cw = sext i32 %i.cv to i64
  call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.cq, i64 noundef %i.ct, i64 noundef %i.cw, i64 noundef -5, i64 noundef -5, ptr noundef nonnull @.str.130)
  %i.cx = call ptr @PyErr_Occurred() #6
  %.not48.i = icmp eq ptr %i.cx, null
  br i1 %.not48.i, label %invalid_import_rule.exit, label %invalid_import_rule.exit.sink.split

bb.ah:                                            ; preds = %bb.af, %bb.ae, %_gather_138_rule.exit.i, %_gather_138_rule.exit.thread.i, %bb.o
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !28
  %i.cy = load i32, ptr %i.h, align 8, !tbaa !27
  %.not49.i = icmp eq i32 %i.cy, 0
  br i1 %.not49.i, label %bb.ai, label %invalid_import_rule.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cz = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 647) #6
  %.not50.i = icmp eq ptr %i.cz, null
  br i1 %.not50.i, label %invalid_import_rule.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6 ; 3 uses
  %.not51.i = icmp eq ptr %i.da, null
  br i1 %.not51.i, label %invalid_import_rule.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.dc = getelementptr i8, ptr %i.da, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !32
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr i8, ptr %i.da, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !35
  %i.dh = sext i32 %i.dg to i64
  call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.db, i64 noundef %i.de, i64 noundef %i.dh, i64 noundef -5, i64 noundef -5, ptr noundef nonnull @.str.131)
  %i.di = call ptr @PyErr_Occurred() #6
  %.not52.i = icmp eq ptr %i.di, null
  br i1 %.not52.i, label %invalid_import_rule.exit, label %invalid_import_rule.exit.sink.split

invalid_import_rule.exit.sink.split:              ; preds = %bb.ak, %bb.ag
  store i32 1, ptr %i.h, align 8, !tbaa !27
  br label %invalid_import_rule.exit

invalid_import_rule.exit:                         ; preds = %invalid_import_rule.exit.sink.split, %bb.ai, %bb.aj, %bb.n, %bb.ag, %bb.ah, %bb.ak
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !26
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr %i.b, align 8, !tbaa !26
  store i32 %i.q, ptr %i.p, align 8, !tbaa !28
  %.pre = load i32, ptr %i.h, align 8, !tbaa !27
  br label %bb.al

bb.al:                                            ; preds = %invalid_import_rule.exit, %bb.h
  %i.dl = phi i32 [ %.pre, %invalid_import_rule.exit ], [ %.pre88, %bb.h ]
  %.not42 = icmp eq i32 %i.dl, 0
  %i.dm = load i32, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  br i1 %.not42, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dn = add i32 %i.dm, -1
  store i32 %i.dn, ptr %i.b, align 8, !tbaa !26
  br label %bb.bf

bb.an:                                            ; preds = %bb.al
  %i.do = add i32 %i.dm, 1
  store i32 %i.do, ptr %i.b, align 8, !tbaa !26
  %i.dp = icmp eq i32 %i.dm, 6000
  br i1 %i.dp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dq = call ptr @PyThreadState_Get() #6, !inline_history !255
  %i.dr = call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.dq, i32 noundef 1) #6, !inline_history !255
  %.not.i49 = icmp eq i32 %i.dr, 0
  br i1 %.not.i49, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !255
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ds = load i32, ptr %i.h, align 8, !tbaa !27
  %.not47.i50 = icmp eq i32 %i.ds, 0
  br i1 %.not47.i50, label %bb.ar, label %import_name_rule.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.dt = load i32, ptr %i.p, align 8, !tbaa !28  ; 3 uses
  %i.du = getelementptr i8, ptr %0, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !29
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.as, label %.thread

.thread:                                          ; preds = %bb.ar
  %i.dx = getelementptr i8, ptr %0, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !30
  %i.dz = sext i32 %i.dt to i64
  %i.ea = getelementptr [8 x i8], ptr %i.dy, i64 %i.dz
  br label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.eb = call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6, !inline_history !255
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %import_name_rule.exit.thread.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.pre89 = load i32, ptr %i.h, align 8, !tbaa !27
  %i.ed = icmp eq i32 %.pre89, 0
  %i.ee = getelementptr i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !30
  %i.eg = sext i32 %i.dt to i64
  %i.eh = getelementptr [8 x i8], ptr %i.ef, i64 %i.eg
  br i1 %i.ed, label %bb.au, label %import_name_rule.exit.thread

bb.au:                                            ; preds = %.thread, %bb.at
  %.pn.in = phi ptr [ %i.ea, %.thread ], [ %i.eh, %bb.at ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in109 = getelementptr i8, ptr %.pn, i64 20
  %i.ei = load i32, ptr %.in109, align 4, !tbaa !32
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.ej = load i32, ptr %.in, align 8, !tbaa !35
  %i.ek = call ptr @_PyPegen_expect_soft_keyword(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #6, !inline_history !255
  %i.el = load i32, ptr %i.h, align 8, !tbaa !27
  %.not49.i52 = icmp eq i32 %i.el, 0
  br i1 %.not49.i52, label %bb.av, label %import_name_rule.exit.thread

bb.av:                                            ; preds = %bb.au
  %i.em = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 647) #6, !inline_history !255
  %.not50.i53 = icmp eq ptr %i.em, null
  br i1 %.not50.i53, label %import_name_rule.exit.thread, label %bb.aw

end_hunk_16
begin_hunk_17_@_PyAST_AugAssign

; Function Attrs: nounwind uwtable
define internal fastcc void @invalid_assignment_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 15 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not128 = icmp eq i32 %i.h, 0
  br i1 %.not128, label %bb.e, label %.thread179

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 10 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 6 uses
  %i.k = tail call fastcc ptr @invalid_ann_assign_target_rule(ptr noundef nonnull %0) ; 6 uses
  %.not129 = icmp eq ptr %i.k, null
  br i1 %.not129, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6
  %.not130 = icmp eq ptr %i.l, null
  br i1 %.not130, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @expression_rule(ptr noundef nonnull %0)
  %.not131 = icmp eq ptr %i.m, null
  br i1 %.not131, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.o = getelementptr i8, ptr %i.k, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !59
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.k, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.k, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !73
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %i.k, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !74
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call ptr @_PyPegen_get_expr_name(ptr noundef nonnull %i.k) #6
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.n, i64 noundef %i.q, i64 noundef %i.t, i64 noundef %i.w, i64 noundef %i.z, ptr noundef nonnull @.str.117, ptr noundef %i.aa)
  %i.ab = tail call ptr @PyErr_Occurred() #6
  %.not132 = icmp eq ptr %i.ab, null
  br i1 %.not132, label %.thread179, label %.thread

.thread:                                          ; preds = %bb.h
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread179

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !27
  %.not133 = icmp eq i32 %i.ac, 0
  br i1 %.not133, label %bb.j, label %.thread179

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call fastcc ptr @star_named_expression_rule(ptr noundef nonnull %0) ; 5 uses
  %.not134 = icmp eq ptr %i.ad, null
  br i1 %.not134, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not135 = icmp eq ptr %i.ae, null
  br i1 %.not135, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !26
  %i.ah = icmp eq i32 %i.af, 6000
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call ptr @PyThreadState_Get() #6, !inline_history !264
  %i.aj = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ai, i32 noundef 1) #6, !inline_history !264
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !264
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62.i = icmp eq i32 %i.ak, 0
  br i1 %.not62.i, label %bb.p, label %_loop0_121_rule.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %i.i, align 8, !tbaa !28
  %i.am = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !264 ; 3 uses
  %.not63.i = icmp eq ptr %i.am, null
  br i1 %.not63.i, label %_loop0_121_rule.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64.i = icmp eq i32 %i.an, 0
  br i1 %.not64.i, label %.preheader70.i, label %_loop0_121_rule.exit.thread

.preheader70.i:                                   ; preds = %bb.q
  %i.ao = tail call fastcc ptr @star_named_expressions_rule(ptr noundef nonnull %0), !inline_history !264 ; 2 uses
  %.not6574.i = icmp eq ptr %i.ao, null
  br i1 %.not6574.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader70.i, %bb.s
  %i.ap = phi ptr [ %i.ax, %bb.s ], [ %i.ao, %.preheader70.i ]
  %.04977.i = phi i64 [ %i.au, %bb.s ], [ 0, %.preheader70.i ] ; 5 uses
  %.05076.i = phi i64 [ %.151.i, %bb.s ], [ 1, %.preheader70.i ] ; 2 uses
  %.05475.i = phi ptr [ %.256.i, %bb.s ], [ %i.am, %.preheader70.i ] ; 3 uses
  %i.aq = icmp eq i64 %.04977.i, %.05076.i
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.ar = shl i64 %.04977.i, 1
  %i.as = shl i64 %.04977.i, 4
  %i.at = tail call ptr @PyMem_Realloc(ptr noundef %.05475.i, i64 noundef %i.as) #6, !inline_history !264 ; 2 uses
  %.not66.not.i = icmp eq ptr %i.at, null
  br i1 %.not66.not.i, label %_loop0_121_rule.exit.thread.sink.split.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %.256.i = phi ptr [ %.05475.i, %.lr.ph.i ], [ %i.at, %bb.r ] ; 3 uses
  %.151.i = phi i64 [ %.05076.i, %.lr.ph.i ], [ %i.ar, %bb.r ]
  %i.au = add i64 %.04977.i, 1                    ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %.256.i, i64 %.04977.i
  store ptr %i.ap, ptr %i.av, align 8, !tbaa !31
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !28
  %i.ax = tail call fastcc ptr @star_named_expressions_rule(ptr noundef nonnull %0), !inline_history !264 ; 2 uses
  %.not65.i = icmp eq ptr %i.ax, null
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !265

._crit_edge.i:                                    ; preds = %bb.s, %.preheader70.i
  %.054.lcssa.i = phi ptr [ %i.am, %.preheader70.i ], [ %.256.i, %bb.s ] ; 7 uses
  %.049.lcssa.i = phi i64 [ 0, %.preheader70.i ], [ %i.au, %bb.s ] ; 5 uses
  %.048.lcssa.i = phi i32 [ %i.al, %.preheader70.i ], [ %i.aw, %bb.s ]
  store i32 %.048.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.ay = getelementptr i8, ptr %0, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.ba = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa.i, ptr noundef %i.az) #6, !inline_history !264 ; 2 uses
  %.not67.i = icmp eq ptr %i.ba, null
  br i1 %.not67.i, label %_loop0_121_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.bb = icmp sgt i64 %.049.lcssa.i, 0
  br i1 %i.bb, label %.lr.ph81.i, label %.loopexit

.lr.ph81.i:                                       ; preds = %.preheader.i
  %i.bc = getelementptr i8, ptr %i.ba, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa.i, 3            ; 3 uses
  %i.bd = icmp ult i64 %.049.lcssa.i, 4
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph81.i.new

.lr.ph81.i.new:                                   ; preds = %.lr.ph81.i
  %unroll_iter = and i64 %.049.lcssa.i, 9223372036854775804
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph81.i.new
  %.080.i = phi i64 [ 0, %.lr.ph81.i.new ], [ %i.bx, %bb.t ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.i.new ], [ %niter.next.3, %bb.t ]
  %i.be = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.080.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %.080.i
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !31
  %i.bi = or disjoint i64 %.080.i, 1              ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bi
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = or disjoint i64 %.080.i, 2              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bn
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !31
  %i.bs = or disjoint i64 %.080.i, 3              ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.bs
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !31
  %i.bx = add nuw nsw i64 %.080.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.t, !llvm.loop !266

_loop0_121_rule.exit.thread.sink.split.sink.split: ; preds = %bb.r, %._crit_edge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %._crit_edge.i ], [ %.05475.i, %bb.r ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_121_rule.exit.thread.sink.split

_loop0_121_rule.exit.thread.sink.split:           ; preds = %_loop0_121_rule.exit.thread.sink.split.sink.split, %bb.p
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.by = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_121_rule.exit.thread

_loop0_121_rule.exit.thread:                      ; preds = %_loop0_121_rule.exit.thread.sink.split, %bb.o, %bb.q
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ca = add i32 %i.bz, -1
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !26
  br label %bb.x

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph81.i
  %.080.i.epil.init = phi i64 [ 0, %.lr.ph81.i ], [ %i.bx, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %.080.i.epil = phi i64 [ %.080.i.epil.init, %.epil.preheader ], [ %i.cf, %bb.u ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.cb = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.080.i.epil
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !31
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %.080.i.epil
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !31
  %i.cf = add nuw nsw i64 %.080.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.u, !llvm.loop !267

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.u, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6, !inline_history !264
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr %i.a, align 8, !tbaa !26
  %i.ci = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6
  %.not137 = icmp eq ptr %i.ci, null
  br i1 %.not137, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.cj = tail call ptr @expression_rule(ptr noundef nonnull %0)
  %.not138 = icmp eq ptr %i.cj, null
  br i1 %.not138, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.cl = getelementptr i8, ptr %i.ad, i64 40
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !59
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.ad, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !66
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.ad, i64 48
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !73
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr i8, ptr %i.ad, i64 52
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !74
  %i.cw = sext i32 %i.cv to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.ck, i64 noundef %i.cn, i64 noundef %i.cq, i64 noundef %i.ct, i64 noundef %i.cw, ptr noundef nonnull @.str.118)
  %i.cx = tail call ptr @PyErr_Occurred() #6
  %.not139 = icmp eq ptr %i.cx, null
  br i1 %.not139, label %.thread179, label %.thread163

.thread163:                                       ; preds = %bb.w
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread179

bb.x:                                             ; preds = %_loop0_121_rule.exit.thread, %bb.j, %bb.k, %.loopexit, %bb.v
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.cy = load i32, ptr %i.g, align 8, !tbaa !27
  %.not140 = icmp eq i32 %i.cy, 0
  br i1 %.not140, label %bb.y, label %.thread179

bb.y:                                             ; preds = %bb.x
  %i.cz = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 5 uses
  %.not141 = icmp eq ptr %i.cz, null
  br i1 %.not141, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6
  %.not142 = icmp eq ptr %i.da, null
  br i1 %.not142, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = tail call ptr @expression_rule(ptr noundef nonnull %0)
  %.not143 = icmp eq ptr %i.db, null
  br i1 %.not143, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.dd = getelementptr i8, ptr %i.cz, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !59
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.cz, i64 44
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !66
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr i8, ptr %i.cz, i64 48
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !73
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %i.cz, i64 52
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !74
  %i.do = sext i32 %i.dn to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.dc, i64 noundef %i.df, i64 noundef %i.di, i64 noundef %i.dl, i64 noundef %i.do, ptr noundef nonnull @.str.119)
  %i.dp = tail call ptr @PyErr_Occurred() #6
  %.not144 = icmp eq ptr %i.dp, null
  br i1 %.not144, label %.thread179, label %.thread167

.thread167:                                       ; preds = %bb.ab
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread179

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.aa
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.dq = load i32, ptr %i.g, align 8, !tbaa !27
  %.not145 = icmp eq i32 %i.dq, 0
  br i1 %.not145, label %bb.ad, label %.thread179

bb.ad:                                            ; preds = %bb.ac
  %i.dr = tail call fastcc ptr @_loop0_122_rule(ptr noundef nonnull %0)
  %.not146 = icmp eq ptr %i.dr, null
  br i1 %.not146, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = tail call fastcc ptr @star_expressions_rule(ptr noundef nonnull %0) ; 2 uses
  %.not147 = icmp eq ptr %i.ds, null
  br i1 %.not147, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6
  %.not148 = icmp eq ptr %i.dt, null
  br i1 %.not148, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @_RAISE_SYNTAX_ERROR_INVALID_TARGET(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.ds)
  %i.du = tail call ptr @PyErr_Occurred() #6
  %.not149 = icmp eq ptr %i.du, null
  br i1 %.not149, label %.thread179, label %.thread171

.thread171:                                       ; preds = %bb.ag
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread179

bb.ah:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.dv = load i32, ptr %i.g, align 8, !tbaa !27
  %.not150 = icmp eq i32 %i.dv, 0
  br i1 %.not150, label %bb.ai, label %.thread179

bb.ai:                                            ; preds = %bb.ah
  %i.dw = tail call fastcc ptr @_loop0_122_rule(ptr noundef nonnull %0)
  %.not151 = icmp eq ptr %i.dw, null
  br i1 %.not151, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = tail call fastcc ptr @yield_expr_rule(ptr noundef nonnull %0) ; 5 uses
  %.not152 = icmp eq ptr %i.dx, null
  br i1 %.not152, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6
  %.not153 = icmp eq ptr %i.dy, null
  br i1 %.not153, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ea = getelementptr i8, ptr %i.dx, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !59
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr %i.dx, i64 44
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !66
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr i8, ptr %i.dx, i64 48
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !73
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %i.dx, i64 52
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !74
  %i.el = sext i32 %i.ek to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.dz, i64 noundef %i.ec, i64 noundef %i.ef, i64 noundef %i.ei, i64 noundef %i.el, ptr noundef nonnull @.str.120)
  %i.em = tail call ptr @PyErr_Occurred() #6
  %.not154 = icmp eq ptr %i.em, null
  br i1 %.not154, label %.thread179, label %.thread175

.thread175:                                       ; preds = %bb.al
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread179

bb.am:                                            ; preds = %bb.ai, %bb.aj, %bb.ak
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
end_hunk_17
begin_hunk_18_@_loop0_122_rule:bb.a
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 5 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.x

.preheader70:                                     ; preds = %bb.g
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.n, 6000
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader70
  %i.q = tail call ptr @PyThreadState_Get() #6, !inline_history !260
  %i.r = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.q, i32 noundef 1) #6, !inline_history !260
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader70
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !260
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21.i = icmp eq i32 %i.s, 0
  br i1 %.not21.i, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.t = tail call fastcc ptr @star_targets_rule(ptr noundef nonnull %0), !inline_history !260 ; 2 uses
  %.not22.i = icmp eq ptr %i.t, null
  br i1 %.not22.i, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6, !inline_history !260
  %.not23.i = icmp eq ptr %i.u, null
  br i1 %.not23.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.s
  %i.v = phi ptr [ %i.aj, %bb.s ], [ %i.t, %bb.l ]
  %.04977 = phi i64 [ %i.ab, %bb.s ], [ 0, %bb.l ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.s ], [ 1, %bb.l ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.s ], [ %i.k, %bb.l ] ; 3 uses
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1        ; 2 uses
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  %i.w = icmp eq i64 %.04977, %.05076
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.x = shl i64 %.04977, 4
  %i.y = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.x) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.y, null
  br i1 %.not66.not, label %bb.t, label %._crit_edge123

._crit_edge123:                                   ; preds = %bb.m
  %i.z = shl i64 %.04977, 1
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge123, %.lr.ph
  %i.aa = phi i32 [ %storemerge, %.lr.ph ], [ %.pre, %._crit_edge123 ] ; 2 uses
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.y, %._crit_edge123 ] ; 5 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.z, %._crit_edge123 ]
  %i.ab = add i64 %.04977, 1                      ; 4 uses
  %i.ac = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !31
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !28  ; 3 uses
  %i.ae = add i32 %i.aa, 1
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !26
  %i.af = icmp eq i32 %i.aa, 6000
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call ptr @PyThreadState_Get() #6, !inline_history !260
  %i.ah = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ag, i32 noundef 1) #6, !inline_history !260
  %.not.i92 = icmp eq i32 %i.ah, 0
  br i1 %.not.i92, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !260
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21.i93 = icmp eq i32 %i.ai, 0
  br i1 %.not21.i93, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.aj = tail call fastcc ptr @star_targets_rule(ptr noundef nonnull %0), !inline_history !260 ; 2 uses
  %.not22.i97 = icmp eq ptr %i.aj, null
  br i1 %.not22.i97, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6, !inline_history !260
  %.not23.i98 = icmp eq ptr %i.ak, null
  br i1 %.not23.i98, label %._crit_edge, label %.lr.ph, !llvm.loop !268

bb.t:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.al = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.x

._crit_edge:                                      ; preds = %bb.q, %bb.r, %bb.s, %bb.k, %bb.l, %bb.j
  %.054.lcssa = phi ptr [ %i.k, %bb.l ], [ %i.k, %bb.j ], [ %i.k, %bb.k ], [ %.256, %bb.s ], [ %.256, %bb.r ], [ %.256, %bb.q ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.k ], [ %i.ab, %bb.s ], [ %i.ab, %bb.r ], [ %i.ab, %bb.q ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %bb.l ], [ %i.j, %bb.j ], [ %i.j, %bb.k ], [ %i.ad, %bb.s ], [ %i.ad, %bb.r ], [ %i.ad, %bb.q ]
  %storemerge108.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge108 = add i32 %storemerge108.in, -1
  store i32 %storemerge108, ptr %i.a, align 8, !tbaa !26
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.an) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.ao, null
  br i1 %.not67, label %bb.u, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ap = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ap, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.aq = getelementptr i8, ptr %i.ao, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ar = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.w

bb.u:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.as = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.x

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.br, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.ax, %bb.v ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.at = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %.080.epil
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !31
  %i.ax = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.v, !llvm.loop !269

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.v, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.br, %bb.w ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.w ]
  %i.ay = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %.080
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !31
  %i.bc = or disjoint i64 %.080, 1                ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.bc
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !31
  %i.bh = or disjoint i64 %.080, 2                ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !31
  %i.bm = or disjoint i64 %.080, 3                ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bm
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !31
  %i.br = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.w, !llvm.loop !270

bb.x:                                             ; preds = %bb.u, %._crit_edge82, %bb.g, %bb.d, %bb.t, %bb.f
  %.7 = phi ptr [ null, %bb.t ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.ao, %._crit_edge82 ], [ null, %bb.u ]
  %i.bs = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @type_params_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 25 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 12 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.e, label %.thread73

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 148
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
  %.not36 = icmp eq i32 %i.l, 0
  br i1 %.not36, label %.thread106, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.m, 6000
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @PyThreadState_Get() #6
  %i.q = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.p, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24.i = icmp eq i32 %i.r, 0
  br i1 %.not24.i, label %bb.j, label %.thread108

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 9) #6
  %.not25.i = icmp eq ptr %i.s, null
  br i1 %.not25.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 10) #6 ; 3 uses
  %.not26.i = icmp eq ptr %i.t, null
  br i1 %.not26.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.v = getelementptr i8, ptr %i.t, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.t, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !35
  %i.aa = sext i32 %i.z to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.u, i64 noundef %i.x, i64 noundef %i.aa, i64 noundef -5, i64 noundef -5, ptr noundef nonnull @.str.124)
  %i.ab = tail call ptr @PyErr_Occurred() #6
  %.not27.i = icmp eq ptr %i.ab, null
  br i1 %.not27.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread108

.thread108:                                       ; preds = %bb.m, %bb.i
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread73

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pre.pr = load i32, ptr %i.g, align 8, !tbaa !27
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !26
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.a, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.ag = icmp eq i32 %.pre.pr, 0
  br i1 %i.ag, label %.thread106, label %.thread73

.thread106:                                       ; preds = %bb.e, %bb.n
  %i.ah = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 9) #6
  %.not38 = icmp eq ptr %i.ah, null
  br i1 %.not38, label %bb.al, label %bb.o

bb.o:                                             ; preds = %.thread106
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !26
  %i.ak = icmp eq i32 %i.ai, 6000
  br i1 %i.ak, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = tail call ptr @PyThreadState_Get() #6, !inline_history !271
  %i.am = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.al, i32 noundef 1) #6, !inline_history !271
  %.not.i42 = icmp eq i32 %i.am, 0
  br i1 %.not.i42, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !271
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.an = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.an, 0
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not22.i, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %bb.r
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.a, align 8, !tbaa !26
  %i.aq = icmp eq i32 %i.ao, 6000
  br i1 %i.aq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = tail call ptr @PyThreadState_Get() #6, !inline_history !272
  %i.as = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ar, i32 noundef 1) #6, !inline_history !272
  %.not.i44 = icmp eq i32 %i.as, 0
  br i1 %.not.i44, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !272
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.at = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i45 = icmp eq i32 %i.at, 0
  br i1 %.not22.i45, label %bb.w, label %_gather_54_rule.exit.thread

_gather_54_rule.exit.thread:                      ; preds = %bb.v
  %i.au = load i32, ptr %i.a, align 8, !tbaa !26
  %i.av = add i32 %i.au, -1
  br label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.aw = tail call fastcc ptr @type_param_rule(ptr noundef nonnull %0), !inline_history !272 ; 2 uses
  %.not23.i46 = icmp eq ptr %i.aw, null
  %.pre97 = load i32, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  br i1 %.not23.i46, label %_gather_54_rule.exit.thread63, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = add i32 %.pre97, 1
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !26
  %i.ay = icmp eq i32 %.pre97, 6000
  br i1 %i.ay, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = tail call ptr @PyThreadState_Get() #6, !inline_history !273
  %i.ba = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.az, i32 noundef 1) #6, !inline_history !273
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !273
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not67.i.i, label %bb.ab, label %_gather_54_rule.exit.thread63.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.bd = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !273 ; 4 uses
  %.not68.i.i = icmp eq ptr %i.bd, null
  br i1 %.not68.i.i, label %_gather_54_rule.exit.thread63.sink.split.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i.i = icmp eq i32 %i.be, 0
  br i1 %.not69.i.i, label %.preheader79, label %_gather_54_rule.exit.thread63.sink.split

.preheader79:                                     ; preds = %bb.ac
  %i.bf = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !273
  %.not70.i.i83 = icmp eq ptr %i.bf, null
  br i1 %.not70.i.i83, label %.critedge.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader79
  %i.bg = tail call fastcc ptr @type_param_rule(ptr noundef nonnull %0), !inline_history !273 ; 2 uses
  %.not71.i.i114 = icmp eq ptr %i.bg, null
  br i1 %.not71.i.i114, label %.critedge.i.i, label %.lr.ph118

.lr.ph:                                           ; preds = %bb.ae
  %i.bh = tail call fastcc ptr @type_param_rule(ptr noundef nonnull %0), !inline_history !273 ; 2 uses
  %.not71.i.i = icmp eq ptr %i.bh, null
  br i1 %.not71.i.i, label %.critedge.i.i, label %.lr.ph118, !llvm.loop !274

.lr.ph118:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bi = phi ptr [ %i.bh, %.lr.ph ], [ %i.bg, %.lr.ph.preheader ]
  %.059.i.i84117 = phi i64 [ %.160.i.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i.i85116 = phi i64 [ %i.bn, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i.i86115 = phi ptr [ %.256.i.i, %.lr.ph ], [ %i.bd, %.lr.ph.preheader ] ; 3 uses
  %i.bj = icmp eq i64 %.058.i.i85116, %.059.i.i84117
  br i1 %i.bj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph118
  %i.bk = shl i64 %.058.i.i85116, 1
  %i.bl = shl i64 %.058.i.i85116, 4
  %i.bm = tail call ptr @PyMem_Realloc(ptr noundef %.054.i.i86115, i64 noundef %i.bl) #6, !inline_history !273 ; 2 uses
  %.not72.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not72.not.i.i, label %_gather_54_rule.exit.thread63.sink.split.sink.split.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph118
  %.160.i.i = phi i64 [ %.059.i.i84117, %.lr.ph118 ], [ %i.bk, %bb.ad ]
  %.256.i.i = phi ptr [ %.054.i.i86115, %.lr.ph118 ], [ %i.bm, %bb.ad ] ; 4 uses
  %i.bn = add i64 %.058.i.i85116, 1               ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %.256.i.i, i64 %.058.i.i85116
  store ptr %i.bi, ptr %i.bo, align 8, !tbaa !31
  %i.bp = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.bq = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !273
  %.not70.i.i = icmp eq ptr %i.bq, null
  br i1 %.not70.i.i, label %..critedge.i.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !274

..critedge.i.i.loopexit_crit_edge:                ; preds = %bb.ae
  br label %.critedge.i.i, !llvm.loop !274

.critedge.i.i:                                    ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.i.loopexit_crit_edge, %.preheader79
  %.058.i.i.lcssa = phi i64 [ 0, %.preheader79 ], [ %i.bn, %..critedge.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.bn, %.lr.ph ] ; 5 uses
  %.054.i.i.lcssa = phi ptr [ %i.bd, %.preheader79 ], [ %.256.i.i, %..critedge.i.i.loopexit_crit_edge ], [ %i.bd, %.lr.ph.preheader ], [ %.256.i.i, %.lr.ph ] ; 7 uses
  %.053.i.i.lcssa = phi i32 [ %i.bc, %.preheader79 ], [ %i.bp, %..critedge.i.i.loopexit_crit_edge ], [ %i.bc, %.lr.ph.preheader ], [ %i.bp, %.lr.ph ]
  store i32 %.053.i.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.br = getelementptr i8, ptr %0, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.bt = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.i.lcssa, ptr noundef %i.bs) #6, !inline_history !273 ; 3 uses
  %.not73.i.i = icmp eq ptr %i.bt, null
  br i1 %.not73.i.i, label %_gather_54_rule.exit.thread63.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i.i
  %i.bu = icmp sgt i64 %.058.i.i.lcssa, 0
  br i1 %i.bu, label %.lr.ph95, label %_gather_54_rule.exit

.lr.ph95:                                         ; preds = %.preheader
  %i.bv = getelementptr i8, ptr %i.bt, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.i.lcssa, 3          ; 3 uses
  %i.bw = icmp ult i64 %.058.i.i.lcssa, 4
  br i1 %i.bw, label %.epil.preheader, label %.lr.ph95.new

.lr.ph95.new:                                     ; preds = %.lr.ph95
  %unroll_iter = and i64 %.058.i.i.lcssa, 9223372036854775804
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph95.new
  %.0.i.i94 = phi i64 [ 0, %.lr.ph95.new ], [ %i.cq, %bb.af ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph95.new ], [ %niter.next.3, %bb.af ]
  %i.bx = getelementptr [8 x i8], ptr %.054.i.i.lcssa, i64 %.0.i.i94
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %.0.i.i94
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !31
  %i.cb = or disjoint i64 %.0.i.i94, 1            ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %.054.i.i.lcssa, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cb
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !31
  %i.cg = or disjoint i64 %.0.i.i94, 2            ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %.054.i.i.lcssa, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  %i.cj = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %i.cg
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !31
  %i.cl = or disjoint i64 %.0.i.i94, 3            ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %.054.i.i.lcssa, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !31
  %i.co = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.cl
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !31
  %i.cq = add nuw nsw i64 %.0.i.i94, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_54_rule.exit.loopexit.unr-lcssa, label %bb.af, !llvm.loop !275

_gather_54_rule.exit.thread63.sink.split.sink.split.sink.split: ; preds = %bb.ad, %.critedge.i.i
  %.054.i.i.lcssa.sink = phi ptr [ %.054.i.i.lcssa, %.critedge.i.i ], [ %.054.i.i86115, %bb.ad ]
  tail call void @PyMem_Free(ptr noundef %.054.i.i.lcssa.sink) #6
  br label %_gather_54_rule.exit.thread63.sink.split.sink.split

_gather_54_rule.exit.thread63.sink.split.sink.split: ; preds = %_gather_54_rule.exit.thread63.sink.split.sink.split.sink.split, %bb.ab
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.cr = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_gather_54_rule.exit.thread63.sink.split

_gather_54_rule.exit.thread63.sink.split:         ; preds = %_gather_54_rule.exit.thread63.sink.split.sink.split, %bb.ac, %bb.aa
  %storemerge.in.i.i55 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i.i56 = add i32 %storemerge.in.i.i55, -1
  br label %_gather_54_rule.exit.thread63

_gather_54_rule.exit.thread63:                    ; preds = %_gather_54_rule.exit.thread63.sink.split, %bb.w
  %i.cs = phi i32 [ %.pre97, %bb.w ], [ %storemerge.i.i56, %_gather_54_rule.exit.thread63.sink.split ]
  %i.ct = add i32 %i.cs, -1
  br label %.sink.split

_gather_54_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_54_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_54_rule.exit.loopexit.unr-lcssa, %.lr.ph95
  %.0.i.i94.epil.init = phi i64 [ 0, %.lr.ph95 ], [ %i.cq, %_gather_54_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod130)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %.0.i.i94.epil = phi i64 [ %.0.i.i94.epil.init, %.epil.preheader ], [ %i.cy, %bb.ag ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %i.cu = getelementptr [8 x i8], ptr %.054.i.i.lcssa, i64 %.0.i.i94.epil
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !31
  %i.cw = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %.0.i.i94.epil
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !31
  %i.cy = add nuw nsw i64 %.0.i.i94.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_54_rule.exit, label %bb.ag, !llvm.loop !276

_gather_54_rule.exit:                             ; preds = %_gather_54_rule.exit.loopexit.unr-lcssa, %bb.ag, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.i.lcssa) #6, !inline_history !273
  %storemerge.in.i.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i.i = add i32 %storemerge.in.i.i, -1
  store i32 %storemerge.i.i, ptr %i.a, align 8, !tbaa !26
  %i.cz = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.bt) #6, !inline_history !272 ; 2 uses
  %i.da = load i32, ptr %i.a, align 8, !tbaa !26
  %i.db = add i32 %i.da, -1                       ; 2 uses
  store i32 %i.db, ptr %i.a, align 8, !tbaa !26
  %.not23.i = icmp eq ptr %i.cz, null
  br i1 %.not23.i, label %.sink.split, label %bb.ah

bb.ah:                                            ; preds = %_gather_54_rule.exit
  %i.dc = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !271 ; 0 uses
  %i.dd = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24.i43 = icmp eq i32 %i.dd, 0
  %.pre98 = load i32, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  br i1 %.not24.i43, label %bb.ai, label %.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.de = add i32 %.pre98, -1
  store i32 %i.de, ptr %i.a, align 8, !tbaa !26
  %i.df = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 10) #6
  %.not40 = icmp eq ptr %i.df, null
  br i1 %.not40, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr i8, ptr %0, i64 104
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !65
  %i.di = icmp slt i32 %i.dh, 12
  br i1 %i.di, label %INVALID_VERSION_CHECK.exit, label %.thread73

INVALID_VERSION_CHECK.exit:                       ; preds = %bb.aj
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.dj = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.dk = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.dj, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.123, i32 noundef 12) #6 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ak, label %.thread73

bb.ak:                                            ; preds = %INVALID_VERSION_CHECK.exit
  %i.dm = tail call ptr @PyErr_Occurred() #6
  %.not41 = icmp eq ptr %i.dm, null
  br i1 %.not41, label %.thread73, label %.thread76

.thread76:                                        ; preds = %bb.ak
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread73

.sink.split:                                      ; preds = %_gather_54_rule.exit, %bb.ah, %_gather_54_rule.exit.thread, %_gather_54_rule.exit.thread63, %bb.r
  %.sink111 = phi i32 [ %i.ao, %bb.r ], [ %i.ct, %_gather_54_rule.exit.thread63 ], [ %i.av, %_gather_54_rule.exit.thread ], [ %.pre98, %bb.ah ], [ %i.db, %_gather_54_rule.exit ]
  %i.dn = add i32 %.sink111, -1
  store i32 %i.dn, ptr %i.a, align 8, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %bb.ai, %.thread106
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread73

.thread73:                                        ; preds = %bb.al, %bb.ak, %INVALID_VERSION_CHECK.exit, %bb.aj, %bb.n, %.thread108, %bb.d, %.thread76
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.n ], [ null, %.thread76 ], [ null, %.thread108 ], [ null, %bb.al ], [ null, %bb.ak ], [ %i.dk, %INVALID_VERSION_CHECK.exit ], [ %i.cz, %bb.aj ]
  %i.do = load i32, ptr %i.a, align 8, !tbaa !26
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyAST_TypeAlias(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @type_param_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 36 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.c, 6000
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyThreadState_Get() #6
  %i.g = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.f, i32 noundef 1) #6
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 96         ; 14 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %.not114 = icmp eq i32 %i.i, 0
  br i1 %.not114, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.b, align 8, !tbaa !26
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.b, align 8, !tbaa !26
  br label %bb.az

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !277
  %i.l = call i32 @_PyPegen_is_memoized(ptr noundef nonnull %0, i32 noundef 1104, ptr noundef nonnull %i.a) #6
  %.not115 = icmp eq i32 %i.l, 0
  br i1 %.not115, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.b, align 8, !tbaa !26
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !26
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277
  br label %.thread135

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !28   ; 8 uses
  %i.r = getelementptr i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.h, align 8, !tbaa !27
  %i.w = load i32, ptr %i.b, align 8, !tbaa !26
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.b, align 8, !tbaa !26
  br label %.thread135

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = sext i32 %i.q to i64
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35 ; 3 uses
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !27
  %.not116 = icmp eq i32 %i.ah, 0
  br i1 %.not116, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !26
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !26
  br label %.thread135
end_hunk_18
begin_hunk_19_@_PyAST_TypeVarTuple
declare ptr @_PyAST_TypeVarTuple(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyAST_ParamSpec(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @import_from_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 11 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not90 = icmp eq i32 %i.h, 0
  br i1 %.not90, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 6 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread141

.thread141:                                       ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = icmp eq i32 %.pre, 0
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %i.j to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  br i1 %i.t, label %bb.i, label %.thread

bb.i:                                             ; preds = %.thread141, %bb.h
  %.pn.in = phi ptr [ %i.q, %.thread141 ], [ %i.x, %bb.h ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in146 = getelementptr i8, ptr %.pn, i64 20
  %i.y = load i32, ptr %.in146, align 4, !tbaa !32 ; 2 uses
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.z = load i32, ptr %.in, align 8, !tbaa !35   ; 2 uses
  %i.aa = tail call ptr @_PyPegen_expect_soft_keyword(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #6
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !27
  %.not92 = icmp eq i32 %i.ab, 0
  br i1 %.not92, label %bb.j, label %.thread115

.thread115:                                       ; preds = %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 646) #6
  %.not93 = icmp eq ptr %i.ac, null
  br i1 %.not93, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !26
  %i.af = icmp eq i32 %i.ad, 6000
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call ptr @PyThreadState_Get() #6
  %i.ah = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ag, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62.i = icmp eq i32 %i.ai, 0
  br i1 %.not62.i, label %bb.o, label %_loop0_17_rule.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !28
  %i.ak = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63.i = icmp eq ptr %i.ak, null
  br i1 %.not63.i, label %_loop0_17_rule.exit.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64.i = icmp eq i32 %i.al, 0
  br i1 %.not64.i, label %.preheader70.i, label %_loop0_17_rule.exit.thread

.preheader70.i:                                   ; preds = %bb.p
  %i.am = tail call fastcc ptr @_tmp_160_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574.i = icmp eq ptr %i.am, null
  br i1 %.not6574.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader70.i, %bb.r
  %i.an = phi ptr [ %i.av, %bb.r ], [ %i.am, %.preheader70.i ]
  %.04977.i = phi i64 [ %i.as, %bb.r ], [ 0, %.preheader70.i ] ; 5 uses
  %.05076.i = phi i64 [ %.151.i, %bb.r ], [ 1, %.preheader70.i ] ; 2 uses
  %.05475.i = phi ptr [ %.256.i, %bb.r ], [ %i.ak, %.preheader70.i ] ; 3 uses
  %i.ao = icmp eq i64 %.04977.i, %.05076.i
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.ap = shl i64 %.04977.i, 1
  %i.aq = shl i64 %.04977.i, 4
  %i.ar = tail call ptr @PyMem_Realloc(ptr noundef %.05475.i, i64 noundef %i.aq) #6 ; 2 uses
  %.not66.not.i = icmp eq ptr %i.ar, null
  br i1 %.not66.not.i, label %_loop0_17_rule.exit.thread.sink.split.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %.256.i = phi ptr [ %.05475.i, %.lr.ph.i ], [ %i.ar, %bb.q ] ; 3 uses
  %.151.i = phi i64 [ %.05076.i, %.lr.ph.i ], [ %i.ap, %bb.q ]
  %i.as = add i64 %.04977.i, 1                    ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %.256.i, i64 %.04977.i
  store ptr %i.an, ptr %i.at, align 8, !tbaa !31
  %i.au = load i32, ptr %i.i, align 8, !tbaa !28
  %i.av = tail call fastcc ptr @_tmp_160_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65.i = icmp eq ptr %i.av, null
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !281

._crit_edge.i:                                    ; preds = %bb.r, %.preheader70.i
  %.054.lcssa.i = phi ptr [ %i.ak, %.preheader70.i ], [ %.256.i, %bb.r ] ; 7 uses
  %.049.lcssa.i = phi i64 [ 0, %.preheader70.i ], [ %i.as, %bb.r ] ; 5 uses
  %.048.lcssa.i = phi i32 [ %i.aj, %.preheader70.i ], [ %i.au, %bb.r ]
  store i32 %.048.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.aw = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa.i, ptr noundef %i.ax) #6 ; 3 uses
  %.not67.i = icmp eq ptr %i.ay, null
  br i1 %.not67.i, label %_loop0_17_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.az = icmp sgt i64 %.049.lcssa.i, 0
  br i1 %i.az, label %.lr.ph81.i, label %.loopexit

.lr.ph81.i:                                       ; preds = %.preheader.i
  %i.ba = getelementptr i8, ptr %i.ay, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa.i, 3            ; 3 uses
  %i.bb = icmp ult i64 %.049.lcssa.i, 4
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph81.i.new

.lr.ph81.i.new:                                   ; preds = %.lr.ph81.i
  %unroll_iter = and i64 %.049.lcssa.i, 9223372036854775804
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph81.i.new
  %.080.i = phi i64 [ 0, %.lr.ph81.i.new ], [ %i.bv, %bb.s ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.i.new ], [ %niter.next.3, %bb.s ]
  %i.bc = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.080.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %.080.i
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !31
  %i.bg = or disjoint i64 %.080.i, 1              ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !31
  %i.bl = or disjoint i64 %.080.i, 2              ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bl
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !31
  %i.bq = or disjoint i64 %.080.i, 3              ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bq
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !31
  %i.bv = add nuw nsw i64 %.080.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.s, !llvm.loop !282

_loop0_17_rule.exit.thread.sink.split.sink.split: ; preds = %bb.q, %._crit_edge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %._crit_edge.i ], [ %.05475.i, %bb.q ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_17_rule.exit.thread.sink.split

_loop0_17_rule.exit.thread.sink.split:            ; preds = %_loop0_17_rule.exit.thread.sink.split.sink.split, %bb.o
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bw = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_17_rule.exit.thread

_loop0_17_rule.exit.thread:                       ; preds = %_loop0_17_rule.exit.thread.sink.split, %bb.n, %bb.p
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !26
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr %i.a, align 8, !tbaa !26
  br label %bb.aa

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph81.i
  %.080.i.epil.init = phi i64 [ 0, %.lr.ph81.i ], [ %i.bv, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %.080.i.epil = phi i64 [ %.080.i.epil.init, %.epil.preheader ], [ %i.cd, %bb.t ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.bz = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.080.i.epil
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %.080.i.epil
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !31
  %i.cd = add nuw nsw i64 %.080.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.t, !llvm.loop !283

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.t, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr %i.a, align 8, !tbaa !26
  %i.cg = tail call fastcc ptr @dotted_name_rule(ptr noundef nonnull %0) ; 2 uses
  %.not95 = icmp eq ptr %i.cg, null
  br i1 %.not95, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.ch = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 647) #6
  %.not96 = icmp eq ptr %i.ch, null
  br i1 %.not96, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = tail call fastcc ptr @import_from_targets_rule(ptr noundef nonnull %0) ; 2 uses
  %.not97 = icmp eq ptr %i.ci, null
  br i1 %.not97, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr i8, ptr %i.cj, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !36
  %i.cn = getelementptr i8, ptr %i.cj, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !37
  %i.cp = getelementptr i8, ptr %i.cg, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !71
  %i.cr = tail call i32 @_PyPegen_seq_count_dots(ptr noundef nonnull %i.ay) #6
  %i.cs = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ct = tail call ptr @_PyPegen_checked_future_import(ptr noundef nonnull %0, ptr noundef %i.cq, ptr noundef nonnull %i.ci, i32 noundef %i.cr, ptr noundef %i.aa, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.cm, i32 noundef %i.co, ptr noundef %i.cs) #6 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cv = tail call ptr @PyErr_Occurred() #6
  %.not98 = icmp eq ptr %i.cv, null
  br i1 %.not98, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.aa:                                            ; preds = %_loop0_17_rule.exit.thread, %bb.v, %bb.u, %.loopexit, %bb.j
  %.pr = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %.not99 = icmp eq i32 %.pr, 0
  br i1 %.not99, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cw = tail call ptr @_PyPegen_expect_soft_keyword(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #6
  %i.cx = load i32, ptr %i.g, align 8, !tbaa !27
  %.not100 = icmp eq i32 %i.cx, 0
  br i1 %.not100, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.cy = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 646) #6
  %.not101 = icmp eq ptr %i.cy, null
  br i1 %.not101, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = tail call fastcc ptr @_loop1_18_rule(ptr noundef nonnull %0) ; 2 uses
  %.not102 = icmp eq ptr %i.cz, null
  br i1 %.not102, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 647) #6
  %.not103 = icmp eq ptr %i.da, null
  br i1 %.not103, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = tail call fastcc ptr @import_from_targets_rule(ptr noundef nonnull %0) ; 2 uses
  %.not104 = icmp eq ptr %i.db, null
  br i1 %.not104, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = getelementptr i8, ptr %i.dc, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !36
  %i.dg = getelementptr i8, ptr %i.dc, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !37
  %i.di = tail call i32 @_PyPegen_seq_count_dots(ptr noundef nonnull %i.cz) #6
  %.not105 = icmp ne ptr %i.cw, null
  %i.dj = zext i1 %.not105 to i32
  %i.dk = getelementptr i8, ptr %0, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !38
  %i.dm = tail call ptr @_PyAST_ImportFrom(ptr noundef null, ptr noundef nonnull %i.db, i32 noundef %i.di, i32 noundef %i.dj, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.df, i32 noundef %i.dh, ptr noundef %i.dl) #6 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.do = tail call ptr @PyErr_Occurred() #6
  %.not106 = icmp eq ptr %i.do, null
  br i1 %.not106, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.ak:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.y, %bb.x, %bb.ai, %bb.ah, %bb.ag, %bb.aa, %.thread115, %bb.w, %bb.h, %bb.d, %bb.aj, %bb.z, %bb.g
  %.8 = phi ptr [ null, %bb.aj ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.ag ], [ null, %bb.w ], [ null, %bb.z ], [ null, %bb.h ], [ null, %bb.aa ], [ null, %.thread115 ], [ null, %bb.ak ], [ %i.ct, %bb.x ], [ null, %bb.y ], [ null, %bb.ai ], [ %i.dm, %bb.ah ]
  %i.dp = load i32, ptr %i.a, align 8, !tbaa !26
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr %i.a, align 8, !tbaa !26
  ret ptr %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dotted_name_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 13 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.c, 6000
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyThreadState_Get() #6
  %i.g = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.f, i32 noundef 1) #6
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !75
  %i.h = call i32 @_PyPegen_is_memoized(ptr noundef nonnull %0, i32 noundef 1032, ptr noundef nonnull %i.a) #6
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.b, align 8, !tbaa !26
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !26
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %.thread46

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.o = call i32 @_PyPegen_update_memo(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef 1032, ptr noundef %i.n) #6
end_hunk_19
begin_hunk_20_@dotted_as_names_rule:bb.a
  %.not20 = icmp eq i32 %i.h, 0
  %storemerge.in.pre = load i32, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  br i1 %.not20, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = add i32 %storemerge.in.pre, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !26
  %i.l = icmp eq i32 %storemerge.in.pre, 6000
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @PyThreadState_Get() #6, !inline_history !285
  %i.n = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.m, i32 noundef 1) #6, !inline_history !285
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !285
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.o, 0
  br i1 %.not22.i, label %bb.i, label %_gather_23_rule.exit.thread

_gather_23_rule.exit.thread:                      ; preds = %bb.h
  %i.p = load i32, ptr %i.a, align 8, !tbaa !26
  %i.q = add i32 %i.p, -1
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @dotted_as_name_rule(ptr noundef nonnull %0), !inline_history !285 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not23.i, label %_gather_23_rule.exit.thread37, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i32 %.pre, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp eq i32 %.pre, 6000
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @PyThreadState_Get() #6, !inline_history !286
  %i.v = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.u, i32 noundef 1) #6, !inline_history !286
  %.not.i23 = icmp eq i32 %i.v, 0
  br i1 %.not.i23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !286
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.w, 0
  br i1 %.not67.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr %i.a, align 8, !tbaa !26
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !26
  br label %_gather_23_rule.exit.thread37

bb.o:                                             ; preds = %bb.m
  %i.z = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.aa = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !286 ; 4 uses
  %.not68.i = icmp eq ptr %i.aa, null
  br i1 %.not68.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ab = tail call ptr @PyErr_NoMemory() #6, !inline_history !286 ; 0 uses
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ad = add i32 %i.ac, -1
  br label %_gather_23_rule.exit.thread37

bb.q:                                             ; preds = %bb.o
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.ae, 0
  br i1 %.not69.i, label %.preheader42, label %bb.r

.preheader42:                                     ; preds = %bb.q
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !286
  %.not70.i46 = icmp eq ptr %i.af, null
  br i1 %.not70.i46, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader42
  %i.ag = tail call fastcc ptr @dotted_as_name_rule(ptr noundef nonnull %0), !inline_history !286 ; 2 uses
  %.not71.i69 = icmp eq ptr %i.ag, null
  br i1 %.not71.i69, label %.critedge.i, label %.lr.ph73

bb.r:                                             ; preds = %bb.q
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ai = add i32 %i.ah, -1
  br label %_gather_23_rule.exit.thread37

.lr.ph:                                           ; preds = %bb.t
  %i.aj = tail call fastcc ptr @dotted_as_name_rule(ptr noundef nonnull %0), !inline_history !286 ; 2 uses
  %.not71.i = icmp eq ptr %i.aj, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph73, !llvm.loop !287

.lr.ph73:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ak = phi ptr [ %i.aj, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ]
  %.059.i4772 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4871 = phi i64 [ %i.as, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4970 = phi ptr [ %.256.i, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ] ; 3 uses
  %i.al = icmp eq i64 %.058.i4871, %.059.i4772
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph73
  %i.am = shl i64 %.058.i4871, 1
  %i.an = shl i64 %.058.i4871, 4
  %i.ao = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4970, i64 noundef %i.an) #6, !inline_history !286 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ao, null
  br i1 %.not72.not.i, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  tail call void @PyMem_Free(ptr noundef %.054.i4970) #6, !inline_history !286
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ap = tail call ptr @PyErr_NoMemory() #6, !inline_history !286 ; 0 uses
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ar = add i32 %i.aq, -1
  br label %_gather_23_rule.exit.thread37

bb.t:                                             ; preds = %bb.s, %.lr.ph73
  %.160.i = phi i64 [ %.059.i4772, %.lr.ph73 ], [ %i.am, %bb.s ]
  %.256.i = phi ptr [ %.054.i4970, %.lr.ph73 ], [ %i.ao, %bb.s ] ; 4 uses
  %i.as = add i64 %.058.i4871, 1                  ; 3 uses
  %i.at = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4871
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !31
  %i.au = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.av = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !286
  %.not70.i = icmp eq ptr %i.av, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !287

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.t
  br label %.critedge.i, !llvm.loop !287

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader42
  %.058.i.lcssa = phi i64 [ 0, %.preheader42 ], [ %i.as, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.as, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.aa, %.preheader42 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.aa, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.z, %.preheader42 ], [ %i.au, %..critedge.i.loopexit_crit_edge ], [ %i.z, %.lr.ph.preheader ], [ %i.au, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.aw = getelementptr i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ax) #6, !inline_history !286 ; 3 uses
  %.not73.i = icmp eq ptr %i.ay, null
  br i1 %.not73.i, label %_loop0_22_rule.exit.thread27, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.az = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.az, label %.lr.ph58, label %_gather_23_rule.exit

.lr.ph58:                                         ; preds = %.preheader
  %i.ba = getelementptr i8, ptr %i.ay, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.bb = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.u

_loop0_22_rule.exit.thread27:                     ; preds = %.critedge.i
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !286
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bc = tail call ptr @PyErr_NoMemory() #6, !inline_history !286 ; 0 uses
  %storemerge.in.i29 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i30 = add i32 %storemerge.in.i29, -1
  br label %_gather_23_rule.exit.thread37

bb.u:                                             ; preds = %bb.u, %.lr.ph58.new
  %.0.i57 = phi i64 [ 0, %.lr.ph58.new ], [ %i.bw, %bb.u ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph58.new ], [ %niter.next.3, %bb.u ]
  %i.bd = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i57
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %.0.i57
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !31
  %i.bh = or disjoint i64 %.0.i57, 1              ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !31
  %i.bm = or disjoint i64 %.0.i57, 2              ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bm
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !31
  %i.br = or disjoint i64 %.0.i57, 3              ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.br
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !31
  %i.bw = add nuw nsw i64 %.0.i57, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_23_rule.exit.loopexit.unr-lcssa, label %bb.u, !llvm.loop !288

_gather_23_rule.exit.thread37:                    ; preds = %_loop0_22_rule.exit.thread27, %bb.i, %bb.n, %bb.p, %bb.r, %.thread
  %i.bx = phi i32 [ %storemerge.i30, %_loop0_22_rule.exit.thread27 ], [ %.pre, %bb.i ], [ %i.y, %bb.n ], [ %i.ad, %bb.p ], [ %i.ai, %bb.r ], [ %i.ar, %.thread ]
  %i.by = add i32 %i.bx, -1
  br label %bb.w

_gather_23_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_23_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_23_rule.exit.loopexit.unr-lcssa, %.lr.ph58
  %.0.i57.epil.init = phi i64 [ 0, %.lr.ph58 ], [ %i.bw, %_gather_23_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %.0.i57.epil = phi i64 [ %.0.i57.epil.init, %.epil.preheader ], [ %i.cd, %bb.v ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.bz = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i57.epil
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %.0.i57.epil
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !31
  %i.cd = add nuw nsw i64 %.0.i57.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_23_rule.exit, label %bb.v, !llvm.loop !289

_gather_23_rule.exit:                             ; preds = %_gather_23_rule.exit.loopexit.unr-lcssa, %bb.v, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !286
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.ce = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ay) #6, !inline_history !285 ; 2 uses
  %i.cf = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  %.not21 = icmp eq ptr %i.ce, null
  br i1 %.not21, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_gather_23_rule.exit, %_gather_23_rule.exit.thread, %_gather_23_rule.exit.thread37
  %storemerge.in61 = phi i32 [ %i.cg, %_gather_23_rule.exit ], [ %i.q, %_gather_23_rule.exit.thread ], [ %i.by, %_gather_23_rule.exit.thread37 ]
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_gather_23_rule.exit, %bb.d
  %storemerge.in = phi i32 [ %storemerge.in.pre, %bb.d ], [ %storemerge.in61, %bb.w ], [ %i.cg, %_gather_23_rule.exit ]
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.w ], [ %i.ce, %_gather_23_rule.exit ]
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyAST_Import(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dotted_as_name_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 18 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 9 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not60 = icmp eq i32 %i.h, 0
  br i1 %.not60, label %bb.e, label %.thread75.sink.split

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre82.pre = load i32, ptr %i.g, align 8, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread75.sink.split

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %.pre82 = phi i32 [ %.pre82.pre, %._crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %i.w = getelementptr i8, ptr %i.t, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr i8, ptr %0, i64 148
  %i.z = load i32, ptr %i.y, align 4, !tbaa !50
  %.not61 = icmp eq i32 %i.z, 0
  br i1 %.not61, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not62 = icmp eq i32 %.pre82, 0
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not62, label %bb.j, label %.thread75

bb.j:                                             ; preds = %bb.i
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !26
  %i.ac = icmp eq i32 %i.aa, 6000
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @PyThreadState_Get() #6, !inline_history !290
  %i.ae = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ad, i32 noundef 1) #6, !inline_history !290
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !290
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = load i32, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %.not29.i = icmp eq i32 %i.af, 0
  br i1 %.not29.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ah = add i32 %i.ag, -1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !26
  br label %invalid_dotted_as_name_rule.exit

bb.o:                                             ; preds = %bb.m
  %i.ai = tail call fastcc ptr @dotted_name_rule(ptr noundef nonnull %0), !inline_history !290
  %.not30.i = icmp eq ptr %i.ai, null
  br i1 %.not30.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6, !inline_history !290
  %.not31.i = icmp eq ptr %i.aj, null
  br i1 %.not31.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call i32 @_PyPegen_lookahead(i32 noundef 0, ptr noundef nonnull @_tmp_139_rule, ptr noundef nonnull %0) #6, !inline_history !290
  %.not32.i = icmp eq i32 %i.ak, 0
  br i1 %.not32.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = tail call ptr @expression_rule(ptr noundef nonnull %0), !inline_history !290 ; 6 uses
  %.not33.i = icmp eq ptr %i.al, null
  br i1 %.not33.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.an = getelementptr i8, ptr %i.al, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !59
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.al, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !66
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.al, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !73
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %i.al, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !74
  %i.ay = sext i32 %i.ax to i64
  %i.az = tail call ptr @_PyPegen_get_expr_name(ptr noundef nonnull %i.al) #6, !inline_history !290
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.am, i64 noundef %i.ap, i64 noundef %i.as, i64 noundef %i.av, i64 noundef %i.ay, ptr noundef nonnull @.str.132, ptr noundef %i.az)
  %i.ba = tail call ptr @PyErr_Occurred() #6, !inline_history !290
  %.not34.i = icmp eq ptr %i.ba, null
  br i1 %.not34.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.a, align 8, !tbaa !26
  br label %invalid_dotted_as_name_rule.exit

bb.u:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
end_hunk_20
begin_hunk_21_@invalid_import_from_targets_rule:bb.a
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !27
  %.not43 = icmp eq i32 %i.ab, 0
  br i1 %.not43, label %bb.n, label %.thread52

bb.n:                                             ; preds = %import_from_as_names_rule.exit.thread50
  %i.ac = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6 ; 3 uses
  %.not44 = icmp eq ptr %i.ac, null
  br i1 %.not44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ae = getelementptr i8, ptr %i.ac, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.ac, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !35
  %i.aj = sext i32 %i.ai to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.ad, i64 noundef %i.ag, i64 noundef %i.aj, i64 noundef -5, i64 noundef -5, ptr noundef nonnull @.str.131)
  %i.ak = tail call ptr @PyErr_Occurred() #6
  %.not45 = icmp eq ptr %i.ak, null
  br i1 %.not45, label %.thread52, label %.thread58

.thread58:                                        ; preds = %bb.o
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread52

bb.p:                                             ; preds = %bb.n
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread52

.thread52:                                        ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %import_from_as_names_rule.exit.thread50, %bb.d, %.thread58, %.thread55
  %.3 = phi ptr [ null, %.thread58 ], [ null, %import_from_as_names_rule.exit.thread50 ], [ null, %.thread55 ], [ null, %bb.d ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.m ], [ %i.y, %bb.l ]
  %i.al = load i32, ptr %i.a, align 8, !tbaa !26
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr %i.a, align 8, !tbaa !26
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_20_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @import_from_as_name_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %_loop0_19_rule.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !295
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !295
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !295
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_19_rule.exit.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !295 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_19_rule.exit.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader37, label %_loop0_19_rule.exit.thread.sink.split

.preheader37:                                     ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !295
  %.not70.i41 = icmp eq ptr %i.u, null
  br i1 %.not70.i41, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.v = tail call fastcc ptr @import_from_as_name_rule(ptr noundef nonnull %0), !inline_history !295 ; 2 uses
  %.not71.i62 = icmp eq ptr %i.v, null
  br i1 %.not71.i62, label %.critedge.i, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.m
  %i.w = tail call fastcc ptr @import_from_as_name_rule(ptr noundef nonnull %0), !inline_history !295 ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph66, !llvm.loop !296

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %.059.i4265 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4364 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4463 = phi ptr [ %.256.i, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.058.i4364, %.059.i4265
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66
  %i.z = shl i64 %.058.i4364, 1
  %i.aa = shl i64 %.058.i4364, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4463, i64 noundef %i.aa) #6, !inline_history !295 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_19_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66
  %.160.i = phi i64 [ %.059.i4265, %.lr.ph66 ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.054.i4463, %.lr.ph66 ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.058.i4364, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4364
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !295
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !296

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !296

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader37
  %.058.i.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.s, %.preheader37 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.s, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.r, %.preheader37 ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ah) #6, !inline_history !295 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_19_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.aj, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.lr.ph53
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph53.new
  %.0.i52 = phi i64 [ 0, %.lr.ph53.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.0.i52
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.0.i52, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.0.i52, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.0.i52, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.0.i52, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !297

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph53
  %.0.i52.epil.init = phi i64 [ 0, %.lr.ph53 ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.0.i52.epil = phi i64 [ %.0.i52.epil.init, %.epil.preheader ], [ %i.bk, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bg = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52.epil
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.0.i52.epil
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !31
  %i.bk = add nuw nsw i64 %.0.i52.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !298

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !295
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bl = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.p

_loop0_19_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.i44.lcssa59.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i4463, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.i44.lcssa59.sink) #6
  br label %_loop0_19_rule.exit.thread.sink.split.sink.split

_loop0_19_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_19_rule.exit.thread.sink.split.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_19_rule.exit.thread.sink.split

_loop0_19_rule.exit.thread.sink.split:            ; preds = %_loop0_19_rule.exit.thread.sink.split.sink.split, %bb.k, %bb.i
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !26
  br label %_loop0_19_rule.exit.thread

_loop0_19_rule.exit.thread:                       ; preds = %_loop0_19_rule.exit.thread.sink.split, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %_loop0_19_rule.exit.thread, %._crit_edge, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %_loop0_19_rule.exit.thread ], [ %i.bl, %._crit_edge ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @import_from_as_name_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 18 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 9 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not60 = icmp eq i32 %i.h, 0
  br i1 %.not60, label %bb.e, label %.thread75.sink.split

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre82.pre = load i32, ptr %i.g, align 8, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread75.sink.split

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %.pre82 = phi i32 [ %.pre82.pre, %._crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %i.w = getelementptr i8, ptr %i.t, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr i8, ptr %0, i64 148
  %i.z = load i32, ptr %i.y, align 4, !tbaa !50
  %.not61 = icmp eq i32 %i.z, 0
  br i1 %.not61, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not62 = icmp eq i32 %.pre82, 0
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not62, label %bb.j, label %.thread75

bb.j:                                             ; preds = %bb.i
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !26
  %i.ac = icmp eq i32 %i.aa, 6000
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @PyThreadState_Get() #6, !inline_history !299
  %i.ae = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ad, i32 noundef 1) #6, !inline_history !299
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !299
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = load i32, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %.not29.i = icmp eq i32 %i.af, 0
  br i1 %.not29.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ah = add i32 %i.ag, -1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !26
  br label %invalid_import_from_as_name_rule.exit

bb.o:                                             ; preds = %bb.m
  %i.ai = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6, !inline_history !299
  %.not30.i = icmp eq ptr %i.ai, null
  br i1 %.not30.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6, !inline_history !299
  %.not31.i = icmp eq ptr %i.aj, null
  br i1 %.not31.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call i32 @_PyPegen_lookahead(i32 noundef 0, ptr noundef nonnull @_tmp_139_rule, ptr noundef nonnull %0) #6, !inline_history !299
  %.not32.i = icmp eq i32 %i.ak, 0
  br i1 %.not32.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = tail call ptr @expression_rule(ptr noundef nonnull %0), !inline_history !299 ; 6 uses
  %.not33.i = icmp eq ptr %i.al, null
  br i1 %.not33.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.an = getelementptr i8, ptr %i.al, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !59
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.al, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !66
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.al, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !73
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %i.al, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !74
  %i.ay = sext i32 %i.ax to i64
  %i.az = tail call ptr @_PyPegen_get_expr_name(ptr noundef nonnull %i.al) #6, !inline_history !299
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.am, i64 noundef %i.ap, i64 noundef %i.as, i64 noundef %i.av, i64 noundef %i.ay, ptr noundef nonnull @.str.132, ptr noundef %i.az)
  %i.ba = tail call ptr @PyErr_Occurred() #6, !inline_history !299
  %.not34.i = icmp eq ptr %i.ba, null
  br i1 %.not34.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !26
end_hunk_21
begin_hunk_22_@import_from_as_name_rule:bb.a
.thread75:                                        ; preds = %.thread75.sink.split, %bb.i
  %.sink90 = phi i32 [ %i.aa, %bb.i ], [ %i.cg, %.thread75.sink.split ]
  %.5 = phi ptr [ null, %bb.i ], [ %.5.ph, %.thread75.sink.split ]
  %i.ch = add i32 %.sink90, -1
  store i32 %i.ch, ptr %i.a, align 8, !tbaa !26
  ret ptr %.5
}

declare ptr @_PyAST_Return(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyAST_Raise(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @del_targets_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.k, 6000
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyThreadState_Get() #6, !inline_history !300
  %i.o = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.n, i32 noundef 1) #6, !inline_history !300
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !300
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.i, label %_gather_103_rule.exit.thread

_gather_103_rule.exit.thread:                     ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @del_target_rule(ptr noundef nonnull %0), !inline_history !300 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not23.i, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i32 %.pre, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp eq i32 %.pre, 6000
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @PyThreadState_Get() #6, !inline_history !301
  %i.v = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.u, i32 noundef 1) #6, !inline_history !301
  %.not.i26 = icmp eq i32 %i.v, 0
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !301
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.w, 0
  br i1 %.not67.i, label %bb.n, label %_gather_103_rule.exit.thread40.sink.split

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.y = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !301 ; 4 uses
  %.not68.i = icmp eq ptr %i.y, null
  br i1 %.not68.i, label %_gather_103_rule.exit.thread40.sink.split.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.z, 0
  br i1 %.not69.i, label %.preheader45, label %_gather_103_rule.exit.thread40.sink.split

.preheader45:                                     ; preds = %bb.o
  %i.aa = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !301
  %.not70.i49 = icmp eq ptr %i.aa, null
  br i1 %.not70.i49, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %i.ab = tail call fastcc ptr @del_target_rule(ptr noundef nonnull %0), !inline_history !301 ; 2 uses
  %.not71.i71 = icmp eq ptr %i.ab, null
  br i1 %.not71.i71, label %.critedge.i, label %.lr.ph75

.lr.ph:                                           ; preds = %bb.q
  %i.ac = tail call fastcc ptr @del_target_rule(ptr noundef nonnull %0), !inline_history !301 ; 2 uses
  %.not71.i = icmp eq ptr %i.ac, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph75, !llvm.loop !302

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ad = phi ptr [ %i.ac, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ]
  %.059.i5074 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i5173 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i5272 = phi ptr [ %.256.i, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.ae = icmp eq i64 %.058.i5173, %.059.i5074
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph75
  %i.af = shl i64 %.058.i5173, 1
  %i.ag = shl i64 %.058.i5173, 4
  %i.ah = tail call ptr @PyMem_Realloc(ptr noundef %.054.i5272, i64 noundef %i.ag) #6, !inline_history !301 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ah, null
  br i1 %.not72.not.i, label %_gather_103_rule.exit.thread40.sink.split.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph75
  %.160.i = phi i64 [ %.059.i5074, %.lr.ph75 ], [ %i.af, %bb.p ]
  %.256.i = phi ptr [ %.054.i5272, %.lr.ph75 ], [ %i.ah, %bb.p ] ; 4 uses
  %i.ai = add i64 %.058.i5173, 1                  ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i5173
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !31
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.al = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !301
  %.not70.i = icmp eq ptr %i.al, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !302

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.q
  br label %.critedge.i, !llvm.loop !302

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader45
  %.058.i.lcssa = phi i64 [ 0, %.preheader45 ], [ %i.ai, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ai, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.y, %.preheader45 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.y, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.x, %.preheader45 ], [ %i.ak, %..critedge.i.loopexit_crit_edge ], [ %i.x, %.lr.ph.preheader ], [ %i.ak, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.an) #6, !inline_history !301 ; 3 uses
  %.not73.i = icmp eq ptr %i.ao, null
  br i1 %.not73.i, label %_gather_103_rule.exit.thread40.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.ap = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.ap, label %.lr.ph61, label %_gather_103_rule.exit

.lr.ph61:                                         ; preds = %.preheader
  %i.aq = getelementptr i8, ptr %i.ao, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.ar = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph61.new
  %.0.i60 = phi i64 [ 0, %.lr.ph61.new ], [ %i.bl, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.3, %bb.r ]
  %i.as = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.0.i60
  store ptr %i.at, ptr %i.av, align 8, !tbaa !31
  %i.aw = or disjoint i64 %.0.i60, 1              ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.aw
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !31
  %i.bb = or disjoint i64 %.0.i60, 2              ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bb
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !31
  %i.bg = or disjoint i64 %.0.i60, 3              ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !31
  %i.bl = add nuw nsw i64 %.0.i60, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_103_rule.exit.loopexit.unr-lcssa, label %bb.r, !llvm.loop !303

_gather_103_rule.exit.thread40.sink.split.sink.split.sink.split: ; preds = %bb.p, %.critedge.i
  %.054.i.lcssa.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i5272, %bb.p ]
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa.sink) #6
  br label %_gather_103_rule.exit.thread40.sink.split.sink.split

_gather_103_rule.exit.thread40.sink.split.sink.split: ; preds = %_gather_103_rule.exit.thread40.sink.split.sink.split.sink.split, %bb.n
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_gather_103_rule.exit.thread40.sink.split

_gather_103_rule.exit.thread40.sink.split:        ; preds = %_gather_103_rule.exit.thread40.sink.split.sink.split, %bb.o, %bb.m
  %storemerge.in.i32 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i33 = add i32 %storemerge.in.i32, -1
  br label %.sink.split

_gather_103_rule.exit.loopexit.unr-lcssa:         ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_103_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_103_rule.exit.loopexit.unr-lcssa, %.lr.ph61
  %.0.i60.epil.init = phi i64 [ 0, %.lr.ph61 ], [ %i.bl, %_gather_103_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.0.i60.epil = phi i64 [ %.0.i60.epil.init, %.epil.preheader ], [ %i.br, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.bn = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60.epil
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.0.i60.epil
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !31
  %i.br = add nuw nsw i64 %.0.i60.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_103_rule.exit, label %bb.s, !llvm.loop !304

_gather_103_rule.exit:                            ; preds = %_gather_103_rule.exit.loopexit.unr-lcssa, %bb.s, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !301
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bs = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ao) #6, !inline_history !300 ; 2 uses
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !26
  %.not23 = icmp eq ptr %i.bs, null
  br i1 %.not23, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_gather_103_rule.exit
  %i.bv = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24 = icmp eq i32 %i.bw, 0
  br i1 %.not24, label %bb.v, label %bb.u

.sink.split:                                      ; preds = %bb.i, %_gather_103_rule.exit.thread40.sink.split, %_gather_103_rule.exit.thread
  %.sink69 = phi i32 [ %i.q, %_gather_103_rule.exit.thread ], [ %.pre, %bb.i ], [ %storemerge.i33, %_gather_103_rule.exit.thread40.sink.split ]
  %i.bx = add i32 %.sink69, -1
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_gather_103_rule.exit, %bb.t
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.u ], [ %i.bs, %bb.t ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @_tmp_15_rule(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 13) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6 ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

declare ptr @_PyAST_Delete(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @del_target_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 24 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.c, 6000
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyThreadState_Get() #6
  %i.g = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.f, i32 noundef 1) #6
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 96         ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %.not86 = icmp eq i32 %i.i, 0
  br i1 %.not86, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.b, align 8, !tbaa !26
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.b, align 8, !tbaa !26
  br label %bb.al

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !75
  %i.l = call i32 @_PyPegen_is_memoized(ptr noundef nonnull %0, i32 noundef 1204, ptr noundef nonnull %i.a) #6
  %.not87 = icmp eq i32 %i.l, 0
  br i1 %.not87, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.b, align 8, !tbaa !26
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !26
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !28   ; 6 uses
  %i.r = getelementptr i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.h, align 8, !tbaa !27
  %i.w = load i32, ptr %i.b, align 8, !tbaa !26
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.b, align 8, !tbaa !26
end_hunk_22
begin_hunk_23_@del_t_atom_rule:bb.a
  %i.bf = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.thread138, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = getelementptr i8, ptr %i.bf, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !36
  %i.bj = getelementptr i8, ptr %i.bf, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !37
  %i.bl = getelementptr i8, ptr %0, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !38
  %i.bn = tail call ptr @_PyAST_List(ptr noundef %i.bc, i32 noundef 3, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef %i.bm) #6 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.af, label %.thread138

bb.af:                                            ; preds = %bb.ae
  %i.bp = tail call ptr @PyErr_Occurred() #6
  %.not124 = icmp eq ptr %i.bp, null
  br i1 %.not124, label %.thread138, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread138

bb.ah:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread138

.thread138:                                       ; preds = %bb.ah, %bb.k, %bb.j, %bb.q, %bb.p, %bb.x, %bb.w, %bb.af, %bb.ae, %bb.ad, %bb.z, %.thread145, %bb.v, %bb.r, %bb.l, %bb.h, %bb.d, %bb.ag, %bb.y, %.thread134, %.thread127, %bb.g
  %.10 = phi ptr [ null, %bb.ag ], [ null, %bb.g ], [ null, %bb.d ], [ null, %.thread127 ], [ null, %bb.h ], [ null, %.thread134 ], [ null, %bb.l ], [ null, %bb.ad ], [ null, %bb.v ], [ null, %bb.y ], [ null, %bb.r ], [ null, %bb.z ], [ null, %.thread145 ], [ null, %bb.ah ], [ %i.ay, %bb.w ], [ %i.ai, %bb.p ], [ %i.ab, %bb.j ], [ null, %bb.k ], [ null, %bb.q ], [ null, %bb.x ], [ null, %bb.af ], [ %i.bn, %bb.ae ]
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !26
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr %i.a, align 8, !tbaa !26
  ret ptr %.10
}

declare ptr @_PyAST_Assert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_14_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_13_rule.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_13_rule.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader77.i, label %_loop0_13_rule.exit.thread

.preheader77.i:                                   ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not7081.i = icmp eq ptr %i.u, null
  br i1 %.not7081.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader77.i
  %i.v = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not71.i31 = icmp eq ptr %i.v, null
  br i1 %.not71.i31, label %.critedge.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.m
  %i.w = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph, !llvm.loop !305

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.x = phi ptr [ %i.w, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ]
  %.05982.i34 = phi i64 [ %.160.i, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %.05883.i33 = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.05484.i32 = phi ptr [ %.256.i, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.05883.i33, %.05982.i34
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.z = shl i64 %.05982.i34, 1
  %i.aa = shl i64 %.05982.i34, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.05484.i32, i64 noundef %i.aa) #6 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_13_rule.exit.thread.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %.160.i = phi i64 [ %.05982.i34, %.lr.ph ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.05484.i32, %.lr.ph ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.05883.i33, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.05883.i33
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !305

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !305

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %..critedge.i.loopexit_crit_edge, %.preheader77.i
  %.058.lcssa.i = phi i64 [ 0, %.preheader77.i ], [ 0, %.lr.ph.i.preheader ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.s, %.preheader77.i ], [ %i.s, %.lr.ph.i.preheader ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %.256.i, %.lr.ph.i ] ; 7 uses
  %.053.lcssa.i = phi i32 [ %i.r, %.preheader77.i ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.ae, %.lr.ph.i ]
  store i32 %.053.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.lcssa.i, ptr noundef %i.ah) #6 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_13_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.lcssa.i, 0
  br i1 %i.aj, label %.lr.ph93.i, label %.loopexit

.lr.ph93.i:                                       ; preds = %.preheader.i
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.lcssa.i, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.lcssa.i, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph93.i.new

.lr.ph93.i.new:                                   ; preds = %.lr.ph93.i
  %unroll_iter = and i64 %.058.lcssa.i, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph93.i.new
  %.092.i = phi i64 [ 0, %.lr.ph93.i.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.092.i
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.092.i, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.092.i, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.092.i, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.092.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !306

_loop0_13_rule.exit.thread.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %.critedge.i ], [ %.05484.i32, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_13_rule.exit.thread.sink.split

_loop0_13_rule.exit.thread.sink.split:            ; preds = %_loop0_13_rule.exit.thread.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bg = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_13_rule.exit.thread

_loop0_13_rule.exit.thread:                       ; preds = %_loop0_13_rule.exit.thread.sink.split, %bb.i, %bb.k
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !26
  br label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i
  %.092.i.epil.init = phi i64 [ 0, %.lr.ph93.i ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.092.i.epil = phi i64 [ %.092.i.epil.init, %.epil.preheader ], [ %i.bn, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i.epil
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.092.i.epil
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = add nuw nsw i64 %.092.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !307

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !26
  %i.bq = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.e, %_loop0_13_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.p ], [ %i.bq, %.loopexit ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

declare ptr @_PyAST_Global(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyPegen_map_names_to_ids(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyAST_Nonlocal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_130_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @lambda_slash_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @lambda_slash_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_76_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04977 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04977, %.05076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04977, 1
  %i.r = shl i64 %.04977, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04977, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call fastcc ptr @lambda_param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !308

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.054.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.256, %bb.i ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.n

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.bd, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.aj, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.af = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.080.epil
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !31
  %i.aj = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.l, !llvm.loop !309

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.l, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.bd, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.m ]
  %i.ak = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.080
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = or disjoint i64 %.080, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !31
  %i.at = or disjoint i64 %.080, 2                ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !31
  %i.ay = or disjoint i64 %.080, 3                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ay
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.m, !llvm.loop !310

bb.n:                                             ; preds = %bb.k, %._crit_edge82, %bb.g, %bb.d, %bb.j, %bb.f
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.aa, %._crit_edge82 ], [ %i.aa, %bb.k ]
  %i.be = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lambda_slash_no_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @_loop1_74_rule(ptr noundef nonnull %0) ; 2 uses
  %.not38 = icmp eq ptr %i.k, null
  br i1 %.not38, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 17) #6
  %.not39 = icmp eq ptr %i.l, null
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not40 = icmp eq ptr %i.m, null
  br i1 %.not40, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.n = load i32, ptr %i.g, align 8, !tbaa !27
  %.not41 = icmp eq i32 %i.n, 0
  br i1 %.not41, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.o = tail call fastcc ptr @_loop1_74_rule(ptr noundef nonnull %0) ; 2 uses
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 17) #6
  %.not43 = icmp eq ptr %i.p, null
  br i1 %.not43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 11) #6
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.k, %bb.l, %bb.h, %bb.d
  %.3 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ %i.k, %bb.g ], [ null, %bb.l ], [ %i.o, %bb.k ]
  %i.r = load i32, ptr %i.a, align 8, !tbaa !26
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_72_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04977 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04977, %.05076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04977, 1
  %i.r = shl i64 %.04977, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04977, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call fastcc ptr @lambda_param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !311

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.054.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.256, %bb.i ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.n

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.bd, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.aj, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.af = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.080.epil
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !31
  %i.aj = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.l, !llvm.loop !312

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.l, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.bd, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.m ]
  %i.ak = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.080
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = or disjoint i64 %.080, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !31
  %i.at = or disjoint i64 %.080, 2                ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !31
  %i.ay = or disjoint i64 %.080, 3                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ay
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.m, !llvm.loop !313

bb.n:                                             ; preds = %bb.k, %._crit_edge82, %bb.g, %bb.d, %bb.j, %bb.f
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.aa, %._crit_edge82 ], [ %i.aa, %bb.k ]
  %i.be = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @invalid_lambda_parameters_helper_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @lambda_slash_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_singleton_seq(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @PyErr_Occurred() #6
  %.not34 = icmp eq ptr %i.n, null
  br i1 %.not34, label %.thread, label %.thread40

.thread40:                                        ; preds = %bb.g
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.o = load i32, ptr %i.g, align 8, !tbaa !27
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call fastcc ptr @_loop1_75_rule(ptr noundef nonnull %0) ; 2 uses
  %.not36 = icmp eq ptr %i.p, null
  br i1 %.not36, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.g, %bb.f, %bb.h, %bb.d, %.thread40
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ null, %.thread40 ], [ %i.p, %bb.i ], [ null, %bb.j ], [ null, %bb.g ], [ %i.l, %bb.f ]
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lambda_param_no_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not36 = icmp eq ptr %i.k, null
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not38 = icmp eq i32 %i.m, 0
  br i1 %.not38, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not39 = icmp eq ptr %i.n, null
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 11) #6
  %.not40 = icmp eq i32 %i.o, 0
  br i1 %.not40, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.j, %bb.g, %bb.d
  %.3 = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ %i.k, %bb.f ], [ null, %bb.j ], [ %i.n, %bb.i ]
  %i.p = load i32, ptr %i.a, align 8, !tbaa !26
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.a, align 8, !tbaa !26
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_132_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_131_rule.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_131_rule.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader77.i, label %_loop0_131_rule.exit.thread

.preheader77.i:                                   ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not7081.i = icmp eq ptr %i.u, null
  br i1 %.not7081.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader77.i
  %i.v = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i31 = icmp eq ptr %i.v, null
  br i1 %.not71.i31, label %.critedge.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.m
  %i.w = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph, !llvm.loop !314

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.x = phi ptr [ %i.w, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ]
  %.05982.i34 = phi i64 [ %.160.i, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %.05883.i33 = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.05484.i32 = phi ptr [ %.256.i, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.05883.i33, %.05982.i34
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.z = shl i64 %.05982.i34, 1
  %i.aa = shl i64 %.05982.i34, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.05484.i32, i64 noundef %i.aa) #6 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_131_rule.exit.thread.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %.160.i = phi i64 [ %.05982.i34, %.lr.ph ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.05484.i32, %.lr.ph ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.05883.i33, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.05883.i33
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !314

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !314

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %..critedge.i.loopexit_crit_edge, %.preheader77.i
  %.058.lcssa.i = phi i64 [ 0, %.preheader77.i ], [ 0, %.lr.ph.i.preheader ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.s, %.preheader77.i ], [ %i.s, %.lr.ph.i.preheader ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %.256.i, %.lr.ph.i ] ; 7 uses
  %.053.lcssa.i = phi i32 [ %i.r, %.preheader77.i ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.ae, %.lr.ph.i ]
  store i32 %.053.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.lcssa.i, ptr noundef %i.ah) #6 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_131_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.lcssa.i, 0
  br i1 %i.aj, label %.lr.ph93.i, label %.loopexit

.lr.ph93.i:                                       ; preds = %.preheader.i
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.lcssa.i, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.lcssa.i, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph93.i.new

.lr.ph93.i.new:                                   ; preds = %.lr.ph93.i
  %unroll_iter = and i64 %.058.lcssa.i, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph93.i.new
  %.092.i = phi i64 [ 0, %.lr.ph93.i.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.092.i
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.092.i, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.092.i, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.092.i, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.092.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !315

_loop0_131_rule.exit.thread.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %.critedge.i ], [ %.05484.i32, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_131_rule.exit.thread.sink.split

_loop0_131_rule.exit.thread.sink.split:           ; preds = %_loop0_131_rule.exit.thread.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bg = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_131_rule.exit.thread

_loop0_131_rule.exit.thread:                      ; preds = %_loop0_131_rule.exit.thread.sink.split, %bb.i, %bb.k
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !26
  br label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i
  %.092.i.epil.init = phi i64 [ 0, %.lr.ph93.i ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.092.i.epil = phi i64 [ %.092.i.epil.init, %.epil.preheader ], [ %i.bn, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i.epil
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.092.i.epil
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = add nuw nsw i64 %.092.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !316

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !26
  %i.bq = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.e, %_loop0_131_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.p ], [ %i.bq, %.loopexit ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_133_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @lambda_param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_77_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05382 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05481 = phi i64 [ %.155, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05880 = phi ptr [ %.260, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05382, %.05481
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05382, 1
  %i.r = shl i64 %.05382, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05880, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.260 = phi ptr [ %.05880, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.155 = phi i64 [ %.05481, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05382, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.260, i64 %.05382
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call fastcc ptr @lambda_param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !317

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05880) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
end_hunk_23
begin_hunk_24_@_loop1_74_rule:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.260, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.260, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.260, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !325

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_73_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04977 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04977, %.05076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04977, 1
  %i.r = shl i64 %.04977, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04977, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call fastcc ptr @lambda_param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !326

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.054.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.256, %bb.i ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.n

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.bd, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.aj, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.af = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.080.epil
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !31
  %i.aj = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.l, !llvm.loop !327

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.l, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.bd, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.m ]
  %i.ak = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.080
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = or disjoint i64 %.080, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !31
  %i.at = or disjoint i64 %.080, 2                ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !31
  %i.ay = or disjoint i64 %.080, 3                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ay
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.m, !llvm.loop !328

bb.n:                                             ; preds = %bb.k, %._crit_edge82, %bb.g, %bb.d, %bb.j, %bb.f
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.aa, %._crit_edge82 ], [ %i.aa, %bb.k ]
  %i.be = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lambda_star_etc_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 26 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 17 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not75 = icmp eq i32 %i.h, 0
  br i1 %.not75, label %bb.e, label %.thread130

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 15 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 7 uses
  %i.k = getelementptr i8, ptr %0, i64 148
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
  %.not76 = icmp eq i32 %i.l, 0
  br i1 %.not76, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.m, 6000
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @PyThreadState_Get() #6, !inline_history !329
  %i.q = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.p, i32 noundef 1) #6, !inline_history !329
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !329
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = load i32, ptr %i.g, align 8, !tbaa !27
  %.not63.i = icmp eq i32 %i.r, 0
  br i1 %.not63.i, label %bb.j, label %invalid_lambda_star_etc_rule.exit.thread124

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.t = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 16) #6, !inline_history !329
  %.not64.i = icmp eq ptr %i.t, null
  br i1 %.not64.i, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.a, align 8, !tbaa !26
  %i.w = icmp eq i32 %i.u, 6000
  br i1 %i.w, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = tail call ptr @PyThreadState_Get() #6
  %i.y = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.x, i32 noundef 1) #6
  %.not.i94 = icmp eq i32 %i.y, 0
  br i1 %.not.i94, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.z = load i32, ptr %i.g, align 8, !tbaa !27
  %.not31.i = icmp eq i32 %i.z, 0
  br i1 %.not31.i, label %bb.o, label %_tmp_134_rule.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !28
  %i.ab = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6
  %.not32.i = icmp eq ptr %i.ab, null
  br i1 %.not32.i, label %bb.p, label %_tmp_134_rule.exit.thread97

_tmp_134_rule.exit.thread97:                      ; preds = %bb.o
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !26
  br label %bb.y

bb.p:                                             ; preds = %bb.o
  store i32 %i.aa, ptr %i.i, align 8, !tbaa !28
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !27
  %.not33.i = icmp eq i32 %i.ae, 0
  br i1 %.not33.i, label %bb.q, label %_tmp_134_rule.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 2 uses
  %.not34.i = icmp eq ptr %i.af, null
  br i1 %.not34.i, label %_tmp_134_rule.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !26
  %i.ai = icmp eq i32 %i.ag, 6000
  br i1 %i.ai, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @PyThreadState_Get() #6
  %i.ak = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.aj, i32 noundef 1) #6
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.al = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27.i.i = icmp eq i32 %i.al, 0
  br i1 %.not27.i.i, label %bb.v, label %_tmp_173_rule.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.am = load i32, ptr %i.i, align 8, !tbaa !28
  %i.an = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.an, null
  br i1 %.not28.i.i, label %bb.w, label %_tmp_134_rule.exit

bb.w:                                             ; preds = %bb.v
  store i32 %i.am, ptr %i.i, align 8, !tbaa !28
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not29.i.i, label %bb.x, label %_tmp_173_rule.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.ap = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 35) #6 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.ap, null
  br i1 %.not30.i.i, label %_tmp_173_rule.exit.thread.i, label %_tmp_134_rule.exit

_tmp_173_rule.exit.thread.i:                      ; preds = %bb.x, %bb.w, %bb.u
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !26
  br label %_tmp_134_rule.exit.thread

_tmp_134_rule.exit.thread:                        ; preds = %bb.q, %_tmp_173_rule.exit.thread.i, %bb.n, %bb.p
  %i.as = load i32, ptr %i.a, align 8, !tbaa !26
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.a, align 8, !tbaa !26
  br label %bb.aa

_tmp_134_rule.exit:                               ; preds = %bb.v, %bb.x
  %.1.i.i = phi ptr [ %i.an, %bb.v ], [ %i.ap, %bb.x ]
  %i.au = load i32, ptr %i.a, align 8, !tbaa !26
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr %i.a, align 8, !tbaa !26
  %i.aw = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.af, ptr noundef nonnull %.1.i.i) #6
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.a, align 8, !tbaa !26
  %.not65.i = icmp eq ptr %i.aw, null
  br i1 %.not65.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_tmp_134_rule.exit.thread97, %_tmp_134_rule.exit
  %i.az = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ba = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.az, i32 noundef 0, ptr noundef nonnull @.str.145) #6, !inline_history !329 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.z, label %bb.am

bb.z:                                             ; preds = %bb.y
  %i.bc = tail call ptr @PyErr_Occurred() #6, !inline_history !329
  %.not66.i = icmp eq ptr %i.bc, null
  br i1 %.not66.i, label %invalid_lambda_star_etc_rule.exit.thread124, label %.thread169

bb.aa:                                            ; preds = %_tmp_134_rule.exit.thread, %_tmp_134_rule.exit, %bb.j
  store i32 %i.s, ptr %i.i, align 8, !tbaa !28
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.bd, 0
  br i1 %.not67.i, label %bb.ab, label %invalid_lambda_star_etc_rule.exit.thread124

bb.ab:                                            ; preds = %bb.aa
  %i.be = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 16) #6, !inline_history !329
end_hunk_24
begin_hunk_25_@_tmp_124_rule:bb.a
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @slash_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @slash_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_31_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04977 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04977, %.05076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04977, 1
  %i.r = shl i64 %.04977, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04977, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call fastcc ptr @param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !330

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.054.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.256, %bb.i ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.n

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.bd, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.aj, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.af = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.080.epil
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !31
  %i.aj = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.l, !llvm.loop !331

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.l, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.bd, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.m ]
  %i.ak = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.080
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = or disjoint i64 %.080, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !31
  %i.at = or disjoint i64 %.080, 2                ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !31
  %i.ay = or disjoint i64 %.080, 3                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ay
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.m, !llvm.loop !332

bb.n:                                             ; preds = %bb.k, %._crit_edge82, %bb.g, %bb.d, %bb.j, %bb.f
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.aa, %._crit_edge82 ], [ %i.aa, %bb.k ]
  %i.be = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @slash_no_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @_loop1_29_rule(ptr noundef nonnull %0) ; 2 uses
  %.not38 = icmp eq ptr %i.k, null
  br i1 %.not38, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 17) #6
  %.not39 = icmp eq ptr %i.l, null
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not40 = icmp eq ptr %i.m, null
  br i1 %.not40, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.n = load i32, ptr %i.g, align 8, !tbaa !27
  %.not41 = icmp eq i32 %i.n, 0
  br i1 %.not41, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.o = tail call fastcc ptr @_loop1_29_rule(ptr noundef nonnull %0) ; 2 uses
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 17) #6
  %.not43 = icmp eq ptr %i.p, null
  br i1 %.not43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 8) #6
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.k, %bb.l, %bb.h, %bb.d
  %.3 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ %i.k, %bb.g ], [ null, %bb.l ], [ %i.o, %bb.k ]
  %i.r = load i32, ptr %i.a, align 8, !tbaa !26
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_27_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04977 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04977, %.05076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04977, 1
  %i.r = shl i64 %.04977, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04977, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call fastcc ptr @param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !333

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.054.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.256, %bb.i ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.n

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.bd, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.aj, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.af = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.080.epil
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !31
  %i.aj = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.l, !llvm.loop !334

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.l, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.bd, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.m ]
  %i.ak = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.080
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = or disjoint i64 %.080, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !31
  %i.at = or disjoint i64 %.080, 2                ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !31
  %i.ay = or disjoint i64 %.080, 3                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ay
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.m, !llvm.loop !335

bb.n:                                             ; preds = %bb.k, %._crit_edge82, %bb.g, %bb.d, %bb.j, %bb.f
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.aa, %._crit_edge82 ], [ %i.aa, %bb.k ]
  %i.be = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @invalid_parameters_helper_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @slash_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_singleton_seq(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @PyErr_Occurred() #6
  %.not34 = icmp eq ptr %i.n, null
  br i1 %.not34, label %.thread, label %.thread40

.thread40:                                        ; preds = %bb.g
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.o = load i32, ptr %i.g, align 8, !tbaa !27
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call fastcc ptr @_loop1_30_rule(ptr noundef nonnull %0) ; 2 uses
  %.not36 = icmp eq ptr %i.p, null
  br i1 %.not36, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.g, %bb.f, %bb.h, %bb.d, %.thread40
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ null, %.thread40 ], [ %i.p, %bb.i ], [ null, %bb.j ], [ null, %bb.g ], [ %i.l, %bb.f ]
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @param_no_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not45 = icmp eq i32 %i.h, 0
  br i1 %.not45, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = tail call fastcc ptr @param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 57) #6
  %i.n = load i32, ptr %i.g, align 8, !tbaa !27
  %.not48 = icmp eq i32 %i.n, 0
  br i1 %.not48, label %bb.h, label %.thread60

.thread60:                                        ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @_PyPegen_add_type_comment_to_arg(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.m) #6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @PyErr_Occurred() #6
  %.not49 = icmp eq ptr %i.q, null
  br i1 %.not49, label %.thread, label %.thread57

.thread57:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.j:                                             ; preds = %bb.f, %bb.e
  %.pr = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %.not50 = icmp eq i32 %.pr, 0
  br i1 %.not50, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.r = tail call fastcc ptr @param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not51 = icmp eq ptr %i.r, null
  br i1 %.not51, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 57) #6
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not52 = icmp eq i32 %i.t, 0
  br i1 %.not52, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.u = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 8) #6
  %.not53 = icmp eq i32 %i.u, 0
  br i1 %.not53, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = tail call ptr @_PyPegen_add_type_comment_to_arg(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef %i.s) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.x = tail call ptr @PyErr_Occurred() #6
  %.not54 = icmp eq ptr %i.x, null
  br i1 %.not54, label %.thread, label %.thread66

.thread66:                                        ; preds = %bb.o
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.i, %bb.h, %bb.o, %bb.n, %bb.j, %.thread60, %bb.d, %.thread66, %.thread57
  %.3 = phi ptr [ null, %.thread66 ], [ null, %bb.j ], [ null, %.thread57 ], [ null, %bb.d ], [ null, %.thread60 ], [ null, %bb.p ], [ %i.o, %bb.h ], [ null, %bb.i ], [ null, %bb.o ], [ %i.v, %bb.n ]
  %i.y = load i32, ptr %i.a, align 8, !tbaa !26
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.a, align 8, !tbaa !26
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_29_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b
end_hunk_25
begin_hunk_26_@param_maybe_default_rule:bb.a
  br i1 %.not60, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.y = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 8) #6
  %.not61 = icmp eq i32 %i.y, 0
  br i1 %.not61, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = tail call ptr @_PyPegen_name_default_pair(ptr noundef nonnull %0, ptr noundef nonnull %i.t, ptr noundef %i.u, ptr noundef %i.w) #6 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call ptr @PyErr_Occurred() #6
  %.not62 = icmp eq ptr %i.ab, null
  br i1 %.not62, label %.thread, label %.thread75

.thread75:                                        ; preds = %bb.q
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.j, %bb.i, %bb.q, %bb.p, %bb.k, %.thread69, %bb.d, %.thread75, %.thread65
  %.3 = phi ptr [ null, %.thread75 ], [ null, %bb.k ], [ null, %.thread65 ], [ null, %bb.d ], [ null, %.thread69 ], [ null, %bb.r ], [ %i.q, %bb.i ], [ null, %bb.j ], [ null, %bb.q ], [ %i.z, %bb.p ]
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !26
  ret ptr %.3
}

declare ptr @_PyPegen_add_type_comment_to_arg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_28_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04977 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04977, %.05076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04977, 1
  %i.r = shl i64 %.04977, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04977, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call fastcc ptr @param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !345

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.054.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.256, %bb.i ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.n

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.bd, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.aj, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.af = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.080.epil
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !31
  %i.aj = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.l, !llvm.loop !346

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.l, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.bd, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.m ]
  %i.ak = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.080
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = or disjoint i64 %.080, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !31
  %i.at = or disjoint i64 %.080, 2                ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !31
  %i.ay = or disjoint i64 %.080, 3                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ay
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.m, !llvm.loop !347

bb.n:                                             ; preds = %bb.k, %._crit_edge82, %bb.g, %bb.d, %bb.j, %bb.f
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.aa, %._crit_edge82 ], [ %i.aa, %bb.k ]
  %i.be = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_etc_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 26 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 21 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not97 = icmp eq i32 %i.h, 0
  br i1 %.not97, label %bb.e, label %.thread126

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 18 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 9 uses
  %i.k = getelementptr i8, ptr %0, i64 148
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
  %.not98 = icmp eq i32 %i.l, 0
  br i1 %.not98, label %.thread179, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.m, 6000
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @PyThreadState_Get() #6
  %i.q = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.p, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = load i32, ptr %i.g, align 8, !tbaa !27
  %.not83.i = icmp eq i32 %i.r, 0
  br i1 %.not83.i, label %bb.j, label %.thread181

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.t = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 16) #6 ; 5 uses
  %.not84.i = icmp eq ptr %i.t, null
  br i1 %.not84.i, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.a, align 8, !tbaa !26
  %i.w = icmp eq i32 %i.u, 6000
  br i1 %i.w, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = tail call ptr @PyThreadState_Get() #6
  %i.y = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.x, i32 noundef 1) #6
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.z = load i32, ptr %i.g, align 8, !tbaa !27
  %.not31.i.i = icmp eq i32 %i.z, 0
  br i1 %.not31.i.i, label %bb.o, label %_tmp_127_rule.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !28
  %i.ab = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6
  %.not32.i.i = icmp eq ptr %i.ab, null
  br i1 %.not32.i.i, label %bb.p, label %_tmp_127_rule.exit.thread106.i

_tmp_127_rule.exit.thread106.i:                   ; preds = %bb.o
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !26
  br label %bb.y

bb.p:                                             ; preds = %bb.o
  store i32 %i.aa, ptr %i.i, align 8, !tbaa !28
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !27
  %.not33.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not33.i.i, label %bb.q, label %_tmp_127_rule.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.af, null
  br i1 %.not34.i.i, label %_tmp_127_rule.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !26
  %i.ai = icmp eq i32 %i.ag, 6000
  br i1 %i.ai, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @PyThreadState_Get() #6
  %i.ak = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.aj, i32 noundef 1) #6
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.al = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not27.i.i.i, label %bb.v, label %_tmp_172_rule.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.am = load i32, ptr %i.i, align 8, !tbaa !28
  %i.an = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6 ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not28.i.i.i, label %bb.w, label %_tmp_127_rule.exit.i

bb.w:                                             ; preds = %bb.v
  store i32 %i.am, ptr %i.i, align 8, !tbaa !28
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not29.i.i.i, label %bb.x, label %_tmp_172_rule.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.ap = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 35) #6 ; 2 uses
  %.not30.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not30.i.i.i, label %_tmp_172_rule.exit.thread.i.i, label %_tmp_127_rule.exit.i

_tmp_172_rule.exit.thread.i.i:                    ; preds = %bb.x, %bb.w, %bb.u
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !26
  br label %_tmp_127_rule.exit.thread.i

_tmp_127_rule.exit.thread.i:                      ; preds = %_tmp_172_rule.exit.thread.i.i, %bb.q, %bb.p, %bb.n
  %i.as = load i32, ptr %i.a, align 8, !tbaa !26
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.a, align 8, !tbaa !26
  br label %bb.z

_tmp_127_rule.exit.i:                             ; preds = %bb.x, %bb.v
  %.1.i.i.i = phi ptr [ %i.an, %bb.v ], [ %i.ap, %bb.x ]
  %i.au = load i32, ptr %i.a, align 8, !tbaa !26
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr %i.a, align 8, !tbaa !26
  %i.aw = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.af, ptr noundef nonnull %.1.i.i.i) #6
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.a, align 8, !tbaa !26
  %.not85.i = icmp eq ptr %i.aw, null
  br i1 %.not85.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_tmp_127_rule.exit.i, %_tmp_127_rule.exit.thread106.i
  %i.az = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ba = getelementptr i8, ptr %i.t, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.t, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !35
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.t, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !36
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %i.t, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !37
  %i.bl = sext i32 %i.bk to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.az, i64 noundef %i.bc, i64 noundef %i.bf, i64 noundef %i.bi, i64 noundef %i.bl, ptr noundef nonnull @.str.145)
  %i.bm = tail call ptr @PyErr_Occurred() #6
  %.not86.i = icmp eq ptr %i.bm, null
  br i1 %.not86.i, label %bb.as, label %.thread181.sink.split

end_hunk_26
begin_hunk_27_@_tmp_25_rule:bb.a
bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @arguments_rule(ptr noundef nonnull %0) ; 2 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not25 = icmp eq i32 %i.m, 0
  br i1 %.not25, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = icmp eq ptr %i.l, null
  br i1 %i.o, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #6
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %.thread, label %.thread30

.thread30:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %bb.d, %.thread30
  %.2 = phi ptr [ null, %.thread30 ], [ null, %bb.d ], [ null, %bb.j ], [ null, %bb.i ], [ %i.l, %bb.h ]
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyAST_ClassDef(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_34_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @with_item_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_33_rule.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_33_rule.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader77.i, label %_loop0_33_rule.exit.thread

.preheader77.i:                                   ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not7081.i = icmp eq ptr %i.u, null
  br i1 %.not7081.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader77.i
  %i.v = tail call fastcc ptr @with_item_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i31 = icmp eq ptr %i.v, null
  br i1 %.not71.i31, label %.critedge.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.m
  %i.w = tail call fastcc ptr @with_item_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph, !llvm.loop !349

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.x = phi ptr [ %i.w, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ]
  %.05982.i34 = phi i64 [ %.160.i, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %.05883.i33 = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.05484.i32 = phi ptr [ %.256.i, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.05883.i33, %.05982.i34
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.z = shl i64 %.05982.i34, 1
  %i.aa = shl i64 %.05982.i34, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.05484.i32, i64 noundef %i.aa) #6 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_33_rule.exit.thread.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %.160.i = phi i64 [ %.05982.i34, %.lr.ph ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.05484.i32, %.lr.ph ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.05883.i33, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.05883.i33
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !349

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !349

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %..critedge.i.loopexit_crit_edge, %.preheader77.i
  %.058.lcssa.i = phi i64 [ 0, %.preheader77.i ], [ 0, %.lr.ph.i.preheader ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.s, %.preheader77.i ], [ %i.s, %.lr.ph.i.preheader ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %.256.i, %.lr.ph.i ] ; 7 uses
  %.053.lcssa.i = phi i32 [ %i.r, %.preheader77.i ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.ae, %.lr.ph.i ]
  store i32 %.053.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.lcssa.i, ptr noundef %i.ah) #6 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_33_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.lcssa.i, 0
  br i1 %i.aj, label %.lr.ph93.i, label %.loopexit

.lr.ph93.i:                                       ; preds = %.preheader.i
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.lcssa.i, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.lcssa.i, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph93.i.new

.lr.ph93.i.new:                                   ; preds = %.lr.ph93.i
  %unroll_iter = and i64 %.058.lcssa.i, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph93.i.new
  %.092.i = phi i64 [ 0, %.lr.ph93.i.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.092.i
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.092.i, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.092.i, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.092.i, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.092.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !350

_loop0_33_rule.exit.thread.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %.critedge.i ], [ %.05484.i32, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_33_rule.exit.thread.sink.split

_loop0_33_rule.exit.thread.sink.split:            ; preds = %_loop0_33_rule.exit.thread.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bg = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_33_rule.exit.thread

_loop0_33_rule.exit.thread:                       ; preds = %_loop0_33_rule.exit.thread.sink.split, %bb.i, %bb.k
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !26
  br label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i
  %.092.i.epil.init = phi i64 [ 0, %.lr.ph93.i ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.092.i.epil = phi i64 [ %.092.i.epil.init, %.epil.preheader ], [ %i.bn, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i.epil
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.092.i.epil
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = add nuw nsw i64 %.092.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !351

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !26
  %i.bq = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.e, %_loop0_33_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.p ], [ %i.bq, %.loopexit ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

declare ptr @_PyAST_With(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyAST_AsyncWith(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @invalid_with_stmt_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not68 = icmp eq i32 %i.h, 0
  br i1 %.not68, label %bb.e, label %.thread95

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 5 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 714) #6 ; 0 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69 = icmp eq i32 %i.l, 0
  br i1 %.not69, label %bb.f, label %.thread93

.thread93:                                        ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread95

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 663) #6
  %.not70 = icmp eq ptr %i.m, null
  br i1 %.not70, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call fastcc ptr @_gather_141_rule(ptr noundef nonnull %0)
  %.not71 = icmp eq ptr %i.n, null
  br i1 %.not71, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 5 uses
  %.not72 = icmp eq ptr %i.o, null
  br i1 %.not72, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6
  %.not73 = icmp eq ptr %i.p, null
  br i1 %.not73, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.r = getelementptr i8, ptr %i.o, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.o, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !35
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %i.o, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.o, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !37
  %i.ac = sext i32 %i.ab to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.q, i64 noundef %i.t, i64 noundef %i.w, i64 noundef %i.z, i64 noundef %i.ac, ptr noundef nonnull @.str.167)
  %i.ad = tail call ptr @PyErr_Occurred() #6
  %.not74 = icmp eq ptr %i.ad, null
  br i1 %.not74, label %.thread95, label %.thread

.thread:                                          ; preds = %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread95

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.pr = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %.not75 = icmp eq i32 %.pr, 0
  br i1 %.not75, label %bb.l, label %.thread95

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 714) #6 ; 0 uses
  %i.af = load i32, ptr %i.g, align 8, !tbaa !27
  %.not76 = icmp eq i32 %i.af, 0
  br i1 %.not76, label %bb.m, label %.thread103

.thread103:                                       ; preds = %bb.l
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread95

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 663) #6
  %.not77 = icmp eq ptr %i.ag, null
  br i1 %.not77, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call fastcc ptr @_gather_141_rule(ptr noundef nonnull %0)
  %.not78 = icmp eq ptr %i.ah, null
  br i1 %.not78, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6
  %.not79 = icmp eq ptr %i.ai, null
  br i1 %.not79, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ak = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.aj, i32 noundef 0, ptr noundef nonnull @.str.159) #6 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.q, label %.thread95

bb.q:                                             ; preds = %bb.p
  %i.am = tail call ptr @PyErr_Occurred() #6
  %.not80 = icmp eq ptr %i.am, null
  br i1 %.not80, label %.thread95, label %.thread98

.thread98:                                        ; preds = %bb.q
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread95

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.pr102 = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %.not81 = icmp eq i32 %.pr102, 0
  br i1 %.not81, label %bb.s, label %.thread95

bb.s:                                             ; preds = %bb.r
end_hunk_27
begin_hunk_28_@invalid_with_stmt_rule:bb.a

bb.x:                                             ; preds = %bb.w
  %i.au = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6
  %.not87 = icmp eq ptr %i.au, null
  br i1 %.not87, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6
  %.not88 = icmp eq ptr %i.av, null
  br i1 %.not88, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ax = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.aw, i32 noundef 0, ptr noundef nonnull @.str.159) #6 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.aa, label %.thread95

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @PyErr_Occurred() #6
  %.not89 = icmp eq ptr %i.az, null
  br i1 %.not89, label %.thread95, label %.thread109

.thread109:                                       ; preds = %bb.aa
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread95

bb.ab:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread95

.thread95:                                        ; preds = %bb.ab, %bb.j, %bb.q, %bb.p, %bb.aa, %bb.z, %bb.r, %.thread103, %bb.k, %.thread93, %bb.d, %.thread109, %.thread98, %.thread
  %.4 = phi ptr [ null, %.thread109 ], [ null, %bb.r ], [ null, %.thread ], [ null, %bb.d ], [ null, %.thread98 ], [ null, %bb.k ], [ null, %.thread93 ], [ null, %.thread103 ], [ null, %bb.ab ], [ %i.ak, %bb.p ], [ null, %bb.j ], [ null, %bb.q ], [ null, %bb.aa ], [ %i.ax, %bb.z ]
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !26
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_141_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @_tmp_176_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_140_rule.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_140_rule.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader77.i, label %_loop0_140_rule.exit.thread

.preheader77.i:                                   ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not7081.i = icmp eq ptr %i.u, null
  br i1 %.not7081.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader77.i
  %i.v = tail call fastcc ptr @_tmp_176_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i31 = icmp eq ptr %i.v, null
  br i1 %.not71.i31, label %.critedge.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.m
  %i.w = tail call fastcc ptr @_tmp_176_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph, !llvm.loop !352

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.x = phi ptr [ %i.w, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ]
  %.05982.i34 = phi i64 [ %.160.i, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %.05883.i33 = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.05484.i32 = phi ptr [ %.256.i, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.05883.i33, %.05982.i34
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.z = shl i64 %.05982.i34, 1
  %i.aa = shl i64 %.05982.i34, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.05484.i32, i64 noundef %i.aa) #6 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_140_rule.exit.thread.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %.160.i = phi i64 [ %.05982.i34, %.lr.ph ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.05484.i32, %.lr.ph ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.05883.i33, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.05883.i33
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !352

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !352

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %..critedge.i.loopexit_crit_edge, %.preheader77.i
  %.058.lcssa.i = phi i64 [ 0, %.preheader77.i ], [ 0, %.lr.ph.i.preheader ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.s, %.preheader77.i ], [ %i.s, %.lr.ph.i.preheader ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %.256.i, %.lr.ph.i ] ; 7 uses
  %.053.lcssa.i = phi i32 [ %i.r, %.preheader77.i ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.ae, %.lr.ph.i ]
  store i32 %.053.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.lcssa.i, ptr noundef %i.ah) #6 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_140_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.lcssa.i, 0
  br i1 %i.aj, label %.lr.ph93.i, label %.loopexit

.lr.ph93.i:                                       ; preds = %.preheader.i
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.lcssa.i, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.lcssa.i, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph93.i.new

.lr.ph93.i.new:                                   ; preds = %.lr.ph93.i
  %unroll_iter = and i64 %.058.lcssa.i, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph93.i.new
  %.092.i = phi i64 [ 0, %.lr.ph93.i.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.092.i
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.092.i, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.092.i, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.092.i, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.092.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !353

_loop0_140_rule.exit.thread.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %.critedge.i ], [ %.05484.i32, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_140_rule.exit.thread.sink.split

_loop0_140_rule.exit.thread.sink.split:           ; preds = %_loop0_140_rule.exit.thread.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bg = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_140_rule.exit.thread

_loop0_140_rule.exit.thread:                      ; preds = %_loop0_140_rule.exit.thread.sink.split, %bb.i, %bb.k
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !26
  br label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i
  %.092.i.epil.init = phi i64 [ 0, %.lr.ph93.i ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.092.i.epil = phi i64 [ %.092.i.epil.init, %.epil.preheader ], [ %i.bn, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i.epil
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.092.i.epil
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = add nuw nsw i64 %.092.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !354

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !26
  %i.bq = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.e, %_loop0_140_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.p ], [ %i.bq, %.loopexit ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_143_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @_tmp_177_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_142_rule.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_142_rule.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader77.i, label %_loop0_142_rule.exit.thread

.preheader77.i:                                   ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not7081.i = icmp eq ptr %i.u, null
  br i1 %.not7081.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader77.i
  %i.v = tail call fastcc ptr @_tmp_177_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i31 = icmp eq ptr %i.v, null
  br i1 %.not71.i31, label %.critedge.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.m
  %i.w = tail call fastcc ptr @_tmp_177_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph, !llvm.loop !355

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.x = phi ptr [ %i.w, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ]
  %.05982.i34 = phi i64 [ %.160.i, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %.05883.i33 = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.05484.i32 = phi ptr [ %.256.i, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.05883.i33, %.05982.i34
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.z = shl i64 %.05982.i34, 1
  %i.aa = shl i64 %.05982.i34, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.05484.i32, i64 noundef %i.aa) #6 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_142_rule.exit.thread.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %.160.i = phi i64 [ %.05982.i34, %.lr.ph ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.05484.i32, %.lr.ph ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.05883.i33, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.05883.i33
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !355

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !355

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %..critedge.i.loopexit_crit_edge, %.preheader77.i
  %.058.lcssa.i = phi i64 [ 0, %.preheader77.i ], [ 0, %.lr.ph.i.preheader ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.s, %.preheader77.i ], [ %i.s, %.lr.ph.i.preheader ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %.256.i, %.lr.ph.i ] ; 7 uses
  %.053.lcssa.i = phi i32 [ %i.r, %.preheader77.i ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.ae, %.lr.ph.i ]
  store i32 %.053.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.lcssa.i, ptr noundef %i.ah) #6 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_142_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.lcssa.i, 0
  br i1 %i.aj, label %.lr.ph93.i, label %.loopexit

.lr.ph93.i:                                       ; preds = %.preheader.i
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.lcssa.i, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.lcssa.i, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph93.i.new

.lr.ph93.i.new:                                   ; preds = %.lr.ph93.i
  %unroll_iter = and i64 %.058.lcssa.i, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph93.i.new
  %.092.i = phi i64 [ 0, %.lr.ph93.i.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.092.i
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.092.i, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.092.i, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.092.i, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.092.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !356

_loop0_142_rule.exit.thread.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %.critedge.i ], [ %.05484.i32, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_142_rule.exit.thread.sink.split

_loop0_142_rule.exit.thread.sink.split:           ; preds = %_loop0_142_rule.exit.thread.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bg = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_142_rule.exit.thread

_loop0_142_rule.exit.thread:                      ; preds = %_loop0_142_rule.exit.thread.sink.split, %bb.i, %bb.k
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !26
  br label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i
  %.092.i.epil.init = phi i64 [ 0, %.lr.ph93.i ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.092.i.epil = phi i64 [ %.092.i.epil.init, %.epil.preheader ], [ %i.bn, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i.epil
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.092.i.epil
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = add nuw nsw i64 %.092.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !357

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !26
  %i.bq = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.e, %_loop0_142_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.p ], [ %i.bq, %.loopexit ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_176_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @_tmp_180_rule(ptr noundef nonnull %0)
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.l) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ %i.n, %bb.g ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_180_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6 ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_177_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
end_hunk_28
begin_hunk_29_@_loop1_36_rule:bb.a
  br i1 %.not103.i, label %bb.di, label %.thread114

bb.di:                                            ; preds = %bb.dh
  %i.gn = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 693) #6, !inline_history !362
  %.not104.i = icmp eq ptr %i.gn, null
  br i1 %.not104.i, label %bb.dp, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.go = tail call ptr @expression_rule(ptr noundef nonnull %0), !inline_history !362
  %.not105.i = icmp eq ptr %i.go, null
  br i1 %.not105.i, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gp = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6, !inline_history !362
  %.not106.i = icmp eq ptr %i.gp, null
  br i1 %.not106.i, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.gq = tail call ptr @expression_rule(ptr noundef nonnull %0), !inline_history !362 ; 6 uses
  %.not107.i = icmp eq ptr %i.gq, null
  br i1 %.not107.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.gr = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6, !inline_history !362
  %.not108.i = icmp eq ptr %i.gr, null
  br i1 %.not108.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.gs = tail call fastcc ptr @block_rule(ptr noundef nonnull %0), !inline_history !362
  %.not109.i = icmp eq ptr %i.gs, null
  br i1 %.not109.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.gt = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.gu = getelementptr i8, ptr %i.gq, i64 40
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !59
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr i8, ptr %i.gq, i64 44
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !66
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr i8, ptr %i.gq, i64 48
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !73
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr i8, ptr %i.gq, i64 52
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !74
  %i.hf = sext i32 %i.he to i64
  %i.hg = tail call ptr @_PyPegen_get_expr_name(ptr noundef nonnull %i.gq) #6, !inline_history !362
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.gt, i64 noundef %i.gw, i64 noundef %i.gz, i64 noundef %i.hc, i64 noundef %i.hf, ptr noundef nonnull @.str.178, ptr noundef %i.hg)
  %i.hh = tail call ptr @PyErr_Occurred() #6, !inline_history !362
  %.not110.i = icmp eq ptr %i.hh, null
  br i1 %.not110.i, label %.thread114, label %.thread129.i

.thread129.i:                                     ; preds = %bb.do
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread114

bb.dp:                                            ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di
  store i32 %i.ez, ptr %i.i, align 8, !tbaa !28
  br label %.thread114

.thread114:                                       ; preds = %bb.cg, %bb.cp, %bb.dc, %.thread129.i, %bb.dh, %.thread.i, %.thread117.i, %.thread126.i, %.thread120.i, %bb.dp, %bb.co, %bb.do, %bb.db, %bb.dg
  %i.hi = load i32, ptr %i.a, align 8, !tbaa !26
  %i.hj = add i32 %i.hi, -1
  store i32 %i.hj, ptr %i.a, align 8, !tbaa !26
  br label %except_block_rule.exit.thread

except_block_rule.exit.thread126.sink.split:      ; preds = %bb.df, %bb.da, %bb.ah, %bb.ao
  %.11141.i129.ph = phi ptr [ %i.bl, %bb.ah ], [ %i.bw, %bb.ao ], [ %i.gj, %bb.df ], [ %i.gd, %bb.da ]
  %i.hk = load i32, ptr %i.a, align 8, !tbaa !26
  %i.hl = add i32 %i.hk, -1
  store i32 %i.hl, ptr %i.a, align 8, !tbaa !26
  br label %except_block_rule.exit.thread126

except_block_rule.exit.thread126:                 ; preds = %except_block_rule.exit.thread126.sink.split, %bb.br, %bb.aw, %bb.bh, %INVALID_VERSION_CHECK.exit, %bb.by
  %.11141.i129 = phi ptr [ %i.eo, %bb.by ], [ %i.dv, %bb.br ], [ %i.cn, %bb.aw ], [ %i.dg, %bb.bh ], [ %i.ea, %INVALID_VERSION_CHECK.exit ], [ %.11141.i129.ph, %except_block_rule.exit.thread126.sink.split ]
  %storemerge141.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge141 = add i32 %storemerge141.in, -1
  store i32 %storemerge141, ptr %i.a, align 8, !tbaa !26
  %i.hm = icmp eq i64 %.053, %.054
  br i1 %i.hm, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %except_block_rule.exit.thread126
  %i.hn = shl i64 %.054, 1
  %i.ho = shl i64 %.054, 4
  %i.hp = tail call ptr @PyMem_Realloc(ptr noundef %.058, i64 noundef %i.ho) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.hp, null
  br i1 %.not70.not, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %except_block_rule.exit.thread126
  %.260 = phi ptr [ %.058, %except_block_rule.exit.thread126 ], [ %i.hp, %bb.dq ] ; 2 uses
  %.155 = phi i64 [ %.054, %except_block_rule.exit.thread126 ], [ %i.hn, %bb.dq ]
  %i.hq = add i64 %.053, 1
  %i.hr = getelementptr [8 x i8], ptr %.260, i64 %.053
  store ptr %.11141.i129, ptr %i.hr, align 8, !tbaa !31
  %i.hs = load i32, ptr %i.i, align 8, !tbaa !28
  br label %bb.h, !llvm.loop !363

bb.ds:                                            ; preds = %bb.dq
  tail call void @PyMem_Free(ptr noundef %.058) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ht = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.dz

except_block_rule.exit.thread:                    ; preds = %bb.cb, %bb.cc, %bb.bx, %bb.bt, %bb.bp, %bb.bk, %bb.bg, %bb.az, %bb.av, %bb.aq, %bb.p, %bb.k, %bb.bz, %.loopexit, %bb.bi, %bb.ax, %.thread114, %bb.ca, %bb.bs, %bb.bj, %bb.ay, %bb.n
  %i.hu = load i32, ptr %i.a, align 8, !tbaa !26
  %i.hv = add i32 %i.hu, -1
  store i32 %i.hv, ptr %i.a, align 8, !tbaa !26
  store i32 %.052, ptr %i.i, align 8, !tbaa !28
  %i.hw = icmp eq i64 %.053, 0
  br i1 %i.hw, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %except_block_rule.exit.thread
  %i.hx = load i32, ptr %i.g, align 8, !tbaa !27
  %.not71 = icmp eq i32 %i.hx, 0
  br i1 %.not71, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt, %except_block_rule.exit.thread
  tail call void @PyMem_Free(ptr noundef %.058) #6
  br label %bb.dz

bb.dv:                                            ; preds = %bb.dt
  %i.hy = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.hz = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.053, ptr noundef %i.hy) #6 ; 3 uses
  %.not72 = icmp eq ptr %i.hz, null
  br i1 %.not72, label %bb.dw, label %.preheader

.preheader:                                       ; preds = %bb.dv
  %i.ia = icmp sgt i64 %.053, 0
  br i1 %i.ia, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ib = getelementptr i8, ptr %i.hz, i64 8      ; 5 uses
  %xtraiter = and i64 %.053, 3                    ; 3 uses
  %i.ic = icmp ult i64 %.053, 4
  br i1 %i.ic, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.053, 9223372036854775804
  br label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  tail call void @PyMem_Free(ptr noundef %.058) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.id = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.dz

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.dy
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0223.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.jc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod788 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod788)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %.epil.preheader
  %.0223.epil = phi i64 [ %.0223.epil.init, %.epil.preheader ], [ %i.ii, %bb.dx ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.dx ]
  %i.ie = getelementptr [8 x i8], ptr %.058, i64 %.0223.epil
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !31
  %i.ig = load ptr, ptr %i.ib, align 8, !tbaa !43
  %i.ih = getelementptr [8 x i8], ptr %i.ig, i64 %.0223.epil
  store ptr %i.if, ptr %i.ih, align 8, !tbaa !31
  %i.ii = add nuw nsw i64 %.0223.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.dx, !llvm.loop !364

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.dx, %.preheader
  tail call void @PyMem_Free(ptr noundef %.058) #6
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dy, %.lr.ph.new
  %.0223 = phi i64 [ 0, %.lr.ph.new ], [ %i.jc, %bb.dy ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.dy ]
  %i.ij = getelementptr [8 x i8], ptr %.058, i64 %.0223
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !31
  %i.il = load ptr, ptr %i.ib, align 8, !tbaa !43
  %i.im = getelementptr [8 x i8], ptr %i.il, i64 %.0223
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !31
  %i.in = or disjoint i64 %.0223, 1               ; 2 uses
  %i.io = getelementptr [8 x i8], ptr %.058, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !31
  %i.iq = load ptr, ptr %i.ib, align 8, !tbaa !43
  %i.ir = getelementptr [8 x i8], ptr %i.iq, i64 %i.in
  store ptr %i.ip, ptr %i.ir, align 8, !tbaa !31
  %i.is = or disjoint i64 %.0223, 2               ; 2 uses
  %i.it = getelementptr [8 x i8], ptr %.058, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !31
  %i.iv = load ptr, ptr %i.ib, align 8, !tbaa !43
  %i.iw = getelementptr [8 x i8], ptr %i.iv, i64 %i.is
  store ptr %i.iu, ptr %i.iw, align 8, !tbaa !31
  %i.ix = or disjoint i64 %.0223, 3               ; 2 uses
  %i.iy = getelementptr [8 x i8], ptr %.058, i64 %i.ix
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !31
  %i.ja = load ptr, ptr %i.ib, align 8, !tbaa !43
  %i.jb = getelementptr [8 x i8], ptr %i.ja, i64 %i.ix
  store ptr %i.iz, ptr %i.jb, align 8, !tbaa !31
  %i.jc = add nuw nsw i64 %.0223, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.dy, !llvm.loop !365

bb.dz:                                            ; preds = %bb.dw, %._crit_edge, %bb.g, %bb.d, %bb.ds, %bb.f, %bb.du
  %.7 = phi ptr [ null, %bb.ds ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.du ], [ null, %bb.g ], [ %i.hz, %._crit_edge ], [ null, %bb.dw ]
  %i.jd = load i32, ptr %i.a, align 8, !tbaa !26
  %i.je = add i32 %i.jd, -1
  store i32 %i.je, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_37_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 38 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 34 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.dw

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 20 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 2 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.dw

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader128, label %bb.dw

.preheader128:                                    ; preds = %bb.g
  %i.n = getelementptr i8, ptr %0, i64 20
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = getelementptr i8, ptr %0, i64 148        ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 104
  br label %bb.h

bb.h:                                             ; preds = %.preheader128, %bb.do
  %.058 = phi ptr [ %.260, %bb.do ], [ %i.k, %.preheader128 ] ; 11 uses
  %.054 = phi i64 [ %.155, %bb.do ], [ 1, %.preheader128 ] ; 4 uses
  %.053 = phi i64 [ %i.hk, %bb.do ], [ 0, %.preheader128 ] ; 9 uses
  %.052 = phi i32 [ %i.hm, %bb.do ], [ %i.j, %.preheader128 ]
  %i.s = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.a, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.s, 6000
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @PyThreadState_Get() #6, !inline_history !366
  %i.w = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.v, i32 noundef 1) #6, !inline_history !366
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !366
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = load i32, ptr %i.g, align 8, !tbaa !27
  %.not143.i = icmp eq i32 %i.x, 0
  br i1 %.not143.i, label %bb.l, label %except_star_block_rule.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr %i.i, align 8, !tbaa !28   ; 6 uses
  %i.z = load i32, ptr %i.n, align 4, !tbaa !29
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6, !inline_history !366
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.n, label %._crit_edge267

._crit_edge267:                                   ; preds = %bb.m
  %.pre266.pre = load i32, ptr %i.g, align 8, !tbaa !27
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %except_star_block_rule.exit.thread

bb.o:                                             ; preds = %._crit_edge267, %bb.l
  %.pre266 = phi i32 [ %.pre266.pre, %._crit_edge267 ], [ 0, %bb.l ] ; 2 uses
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.ae = sext i32 %i.y to i64
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !35 ; 3 uses
  %i.al = load i32, ptr %i.p, align 4, !tbaa !50
  %.not144.i = icmp eq i32 %i.al, 0
  br i1 %.not144.i, label %bb.aj, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not145.i = icmp eq i32 %.pre266, 0
  br i1 %.not145.i, label %bb.q, label %except_star_block_rule.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.am = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.a, align 8, !tbaa !26
  %i.ao = icmp eq i32 %i.am, 6000
  br i1 %i.ao, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call ptr @PyThreadState_Get() #6
  %i.aq = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ap, i32 noundef 1) #6
  %.not.i73 = icmp eq i32 %i.aq, 0
  br i1 %.not.i73, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29.i = icmp eq i32 %i.ar, 0
  br i1 %.not29.i, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.as = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 693) #6 ; 2 uses
  %.not30.i = icmp eq ptr %i.as, null
  br i1 %.not30.i, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 16) #6
  %.not31.i = icmp eq ptr %i.at, null
  br i1 %.not31.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = tail call ptr @expression_rule(ptr noundef nonnull %0)
  %.not32.i = icmp eq ptr %i.au, null
  br i1 %.not32.i, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !26
  %i.ax = icmp eq i32 %i.av, 6000
  br i1 %i.ax, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = tail call ptr @PyThreadState_Get() #6
  %i.az = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ay, i32 noundef 1) #6
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not21.i.i, label %bb.ab, label %_tmp_21_rule.exit.thread.i

_tmp_21_rule.exit.thread.i:                       ; preds = %bb.aa
  %storemerge.in.i38.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i39.i = add i32 %storemerge.in.i38.i, -1
  store i32 %storemerge.i39.i, ptr %i.a, align 8, !tbaa !26
  br label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !28
  %i.bc = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6
  %.not22.i.i = icmp eq ptr %i.bc, null
  br i1 %.not22.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6
  %.not23.i.i = icmp eq ptr %i.bd, null
  br i1 %.not23.i.i, label %bb.ad, label %_tmp_21_rule.exit.i
end_hunk_29
begin_hunk_30_@_loop1_37_rule:bb.a
  br i1 %.not111.i, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.gh = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 16) #6, !inline_history !367
  %.not112.i = icmp eq ptr %i.gh, null
  br i1 %.not112.i, label %bb.dm, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.gi = tail call ptr @expression_rule(ptr noundef nonnull %0), !inline_history !367
  %.not113.i = icmp eq ptr %i.gi, null
  br i1 %.not113.i, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.gj = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6, !inline_history !367
  %.not114.i = icmp eq ptr %i.gj, null
  br i1 %.not114.i, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.gk = tail call ptr @expression_rule(ptr noundef nonnull %0), !inline_history !367 ; 6 uses
  %.not115.i = icmp eq ptr %i.gk, null
  br i1 %.not115.i, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gl = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 11) #6, !inline_history !367
  %.not116.i = icmp eq ptr %i.gl, null
  br i1 %.not116.i, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gm = tail call fastcc ptr @block_rule(ptr noundef nonnull %0), !inline_history !367
  %.not117.i = icmp eq ptr %i.gm, null
  br i1 %.not117.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.gn = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.go = getelementptr i8, ptr %i.gk, i64 40
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !59
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr i8, ptr %i.gk, i64 44
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !66
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr i8, ptr %i.gk, i64 48
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !73
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr i8, ptr %i.gk, i64 52
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !74
  %i.gz = sext i32 %i.gy to i64
  %i.ha = tail call ptr @_PyPegen_get_expr_name(ptr noundef nonnull %i.gk) #6, !inline_history !367
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.gn, i64 noundef %i.gq, i64 noundef %i.gt, i64 noundef %i.gw, i64 noundef %i.gz, ptr noundef nonnull @.str.181, ptr noundef %i.ha)
  %i.hb = tail call ptr @PyErr_Occurred() #6, !inline_history !367
  %.not118.i = icmp eq ptr %i.hb, null
  br i1 %.not118.i, label %.thread101, label %.thread137.i

.thread137.i:                                     ; preds = %bb.dl
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread101

bb.dm:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de
  store i32 %i.ec, ptr %i.i, align 8, !tbaa !28
  br label %.thread101

.thread101:                                       ; preds = %bb.bu, %bb.ce, %bb.cs, %.thread137.i, %.loopexit599, %.thread.i, %.thread125.i, %.thread134.i, %.thread128.i, %bb.dm, %bb.cd, %bb.dl, %bb.cr, %bb.dd
  %i.hc = load i32, ptr %i.a, align 8, !tbaa !26
  %i.hd = add i32 %i.hc, -1
  store i32 %i.hd, ptr %i.a, align 8, !tbaa !26
  br label %except_star_block_rule.exit.thread

except_star_block_rule.exit.thread113.sink.split: ; preds = %bb.dc, %bb.cq, %bb.ah
  %.9120.i116.ph = phi ptr [ %i.bk, %bb.ah ], [ %i.gc, %bb.dc ], [ %i.fi, %bb.cq ]
  %i.he = load i32, ptr %i.a, align 8, !tbaa !26
  %i.hf = add i32 %i.he, -1
  store i32 %i.hf, ptr %i.a, align 8, !tbaa !26
  br label %except_star_block_rule.exit.thread113

except_star_block_rule.exit.thread113:            ; preds = %except_star_block_rule.exit.thread113.sink.split, %bb.bn, %bb.aq, %bb.bc, %INVALID_VERSION_CHECK.exit
  %.9120.i116 = phi ptr [ %i.dr, %INVALID_VERSION_CHECK.exit ], [ %i.dm, %bb.bn ], [ %i.cc, %bb.aq ], [ %i.cw, %bb.bc ], [ %.9120.i116.ph, %except_star_block_rule.exit.thread113.sink.split ]
  %storemerge127.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge127 = add i32 %storemerge127.in, -1
  store i32 %storemerge127, ptr %i.a, align 8, !tbaa !26
  %i.hg = icmp eq i64 %.053, %.054
  br i1 %i.hg, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %except_star_block_rule.exit.thread113
  %i.hh = shl i64 %.054, 1
  %i.hi = shl i64 %.054, 4
  %i.hj = tail call ptr @PyMem_Realloc(ptr noundef %.058, i64 noundef %i.hi) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.hj, null
  br i1 %.not70.not, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %except_star_block_rule.exit.thread113
  %.260 = phi ptr [ %.058, %except_star_block_rule.exit.thread113 ], [ %i.hj, %bb.dn ] ; 2 uses
  %.155 = phi i64 [ %.054, %except_star_block_rule.exit.thread113 ], [ %i.hh, %bb.dn ]
  %i.hk = add i64 %.053, 1
  %i.hl = getelementptr [8 x i8], ptr %.260, i64 %.053
  store ptr %.9120.i116, ptr %i.hl, align 8, !tbaa !31
  %i.hm = load i32, ptr %i.i, align 8, !tbaa !28
  br label %bb.h, !llvm.loop !368

bb.dp:                                            ; preds = %bb.dn
  tail call void @PyMem_Free(ptr noundef %.058) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.hn = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.dw

except_star_block_rule.exit.thread:               ; preds = %bb.bp, %bb.bq, %bb.bl, %bb.bf, %bb.bb, %bb.at, %bb.ap, %bb.aj, %bb.p, %bb.k, %.loopexit, %bb.bd, %bb.ar, %.thread101, %bb.bo, %bb.be, %bb.as, %bb.n
  %i.ho = load i32, ptr %i.a, align 8, !tbaa !26
  %i.hp = add i32 %i.ho, -1
  store i32 %i.hp, ptr %i.a, align 8, !tbaa !26
  store i32 %.052, ptr %i.i, align 8, !tbaa !28
  %i.hq = icmp eq i64 %.053, 0
  br i1 %i.hq, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %except_star_block_rule.exit.thread
  %i.hr = load i32, ptr %i.g, align 8, !tbaa !27
  %.not71 = icmp eq i32 %i.hr, 0
  br i1 %.not71, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %except_star_block_rule.exit.thread
  tail call void @PyMem_Free(ptr noundef %.058) #6
  br label %bb.dw

bb.ds:                                            ; preds = %bb.dq
  %i.hs = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.ht = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.053, ptr noundef %i.hs) #6 ; 3 uses
  %.not72 = icmp eq ptr %i.ht, null
  br i1 %.not72, label %bb.dt, label %.preheader

.preheader:                                       ; preds = %bb.ds
  %i.hu = icmp sgt i64 %.053, 0
  br i1 %i.hu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.hv = getelementptr i8, ptr %i.ht, i64 8      ; 5 uses
  %xtraiter = and i64 %.053, 3                    ; 3 uses
  %i.hw = icmp ult i64 %.053, 4
  br i1 %i.hw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.053, 9223372036854775804
  br label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  tail call void @PyMem_Free(ptr noundef %.058) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.hx = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.dw

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.dv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0197.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.iw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod967 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod967)
  br label %bb.du

bb.du:                                            ; preds = %bb.du, %.epil.preheader
  %.0197.epil = phi i64 [ %.0197.epil.init, %.epil.preheader ], [ %i.ic, %bb.du ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.du ]
  %i.hy = getelementptr [8 x i8], ptr %.058, i64 %.0197.epil
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !31
  %i.ia = load ptr, ptr %i.hv, align 8, !tbaa !43
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %.0197.epil
  store ptr %i.hz, ptr %i.ib, align 8, !tbaa !31
  %i.ic = add nuw nsw i64 %.0197.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.du, !llvm.loop !369

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.du, %.preheader
  tail call void @PyMem_Free(ptr noundef %.058) #6
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dv, %.lr.ph.new
  %.0197 = phi i64 [ 0, %.lr.ph.new ], [ %i.iw, %bb.dv ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.dv ]
  %i.id = getelementptr [8 x i8], ptr %.058, i64 %.0197
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !31
  %i.if = load ptr, ptr %i.hv, align 8, !tbaa !43
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %.0197
  store ptr %i.ie, ptr %i.ig, align 8, !tbaa !31
  %i.ih = or disjoint i64 %.0197, 1               ; 2 uses
  %i.ii = getelementptr [8 x i8], ptr %.058, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !31
  %i.ik = load ptr, ptr %i.hv, align 8, !tbaa !43
  %i.il = getelementptr [8 x i8], ptr %i.ik, i64 %i.ih
  store ptr %i.ij, ptr %i.il, align 8, !tbaa !31
  %i.im = or disjoint i64 %.0197, 2               ; 2 uses
  %i.in = getelementptr [8 x i8], ptr %.058, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !31
  %i.ip = load ptr, ptr %i.hv, align 8, !tbaa !43
  %i.iq = getelementptr [8 x i8], ptr %i.ip, i64 %i.im
  store ptr %i.io, ptr %i.iq, align 8, !tbaa !31
  %i.ir = or disjoint i64 %.0197, 3               ; 2 uses
  %i.is = getelementptr [8 x i8], ptr %.058, i64 %i.ir
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !31
  %i.iu = load ptr, ptr %i.hv, align 8, !tbaa !43
  %i.iv = getelementptr [8 x i8], ptr %i.iu, i64 %i.ir
  store ptr %i.it, ptr %i.iv, align 8, !tbaa !31
  %i.iw = add nuw nsw i64 %.0197, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.dv, !llvm.loop !370

bb.dw:                                            ; preds = %bb.dt, %._crit_edge, %bb.g, %bb.d, %bb.dp, %bb.f, %bb.dr
  %.7 = phi ptr [ null, %bb.dp ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.dr ], [ null, %bb.g ], [ %i.ht, %._crit_edge ], [ null, %bb.dt ]
  %i.ix = load i32, ptr %i.a, align 8, !tbaa !26
  %i.iy = add i32 %i.ix, -1
  store i32 %i.iy, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

declare ptr @_PyAST_TryStar(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_tmp_144_rule(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 693) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.l = load i32, ptr %i.g, align 8, !tbaa !27
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 689) #6 ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_145_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @block_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04977 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04977, %.05076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04977, 1
  %i.r = shl i64 %.04977, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04977, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call fastcc ptr @block_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !371

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.054.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.256, %bb.i ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.n

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.bd, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.aj, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.af = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.080.epil
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !31
  %i.aj = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.l, !llvm.loop !372

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.l, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.bd, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.m ]
  %i.ak = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.080
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = or disjoint i64 %.080, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !31
  %i.at = or disjoint i64 %.080, 2                ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !31
  %i.ay = or disjoint i64 %.080, 3                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ay
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.m, !llvm.loop !373

bb.n:                                             ; preds = %bb.k, %._crit_edge82, %bb.g, %bb.d, %bb.j, %bb.f
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.aa, %._crit_edge82 ], [ %i.aa, %bb.k ]
  %i.be = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_tmp_146_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not21.i = icmp eq i32 %i.q, 0
  br i1 %.not21.i, label %bb.j, label %_tmp_21_rule.exit.thread

_tmp_21_rule.exit.thread:                         ; preds = %bb.i
  %storemerge.in.i27 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i28 = add i32 %storemerge.in.i27, -1
  store i32 %storemerge.i28, ptr %i.a, align 8, !tbaa !26
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28
  %i.s = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6
  %.not22.i = icmp eq ptr %i.s, null
  br i1 %.not22.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not23.i = icmp eq ptr %i.t, null
  br i1 %.not23.i, label %bb.l, label %_tmp_21_rule.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %i.r, ptr %i.i, align 8, !tbaa !28
  br label %_tmp_21_rule.exit

_tmp_21_rule.exit:                                ; preds = %bb.k, %bb.l
  %.2.i.ph = phi ptr [ %i.t, %bb.k ], [ null, %bb.l ]
  %.pr = load i32, ptr %i.g, align 8, !tbaa !27
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %.not24 = icmp eq i32 %.pr, 0
  br i1 %.not24, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_tmp_21_rule.exit
  %i.u = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %.2.i.ph) #6 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.e, %_tmp_21_rule.exit, %_tmp_21_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.d
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret void
}

declare ptr @_PyAST_ExceptHandler(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyAST_While(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @subject_expr_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 6 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread82

.thread82:                                        ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = icmp eq i32 %.pre, 0
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = sext i32 %i.j to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  br i1 %i.t, label %bb.i, label %.thread

bb.i:                                             ; preds = %.thread82, %bb.h
  %.pn.in = phi ptr [ %i.q, %.thread82 ], [ %i.x, %bb.h ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in85 = getelementptr i8, ptr %.pn, i64 20
  %i.y = load i32, ptr %.in85, align 4, !tbaa !32
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.z = load i32, ptr %.in, align 8, !tbaa !35
  %i.aa = tail call fastcc ptr @star_named_expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not61 = icmp eq ptr %i.aa, null
  br i1 %.not61, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not62 = icmp eq ptr %i.ab, null
  br i1 %.not62, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call fastcc ptr @star_named_expressions_rule(ptr noundef nonnull %0)
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !27
  %.not63 = icmp eq i32 %i.ad, 0
  br i1 %.not63, label %bb.l, label %.thread74

.thread74:                                        ; preds = %bb.k
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

end_hunk_30
begin_hunk_31_@maybe_star_pattern_rule:bb.a
  %.1.ph = phi ptr [ null, %bb.d ], [ %.8.i, %star_pattern_rule.exit ], [ null, %bb.aa ], [ %i.bt, %bb.z ]
  %i.bu = load i32, ptr %i.b, align 8, !tbaa !26
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.y
  %.sink49 = phi i32 [ %i.br, %bb.y ], [ %i.bu, %.sink.split ]
  %.1 = phi ptr [ null, %bb.y ], [ %.1.ph, %.sink.split ]
  %i.bv = add i32 %.sink49, -1
  store i32 %i.bv, ptr %i.b, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @maybe_sequence_pattern_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.k, 6000
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyThreadState_Get() #6, !inline_history !377
  %i.o = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.n, i32 noundef 1) #6, !inline_history !377
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !377
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.i, label %_gather_45_rule.exit.thread

_gather_45_rule.exit.thread:                      ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @maybe_star_pattern_rule(ptr noundef nonnull %0), !inline_history !377 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not23.i, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i32 %.pre, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp eq i32 %.pre, 6000
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @PyThreadState_Get() #6, !inline_history !378
  %i.v = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.u, i32 noundef 1) #6, !inline_history !378
  %.not.i26 = icmp eq i32 %i.v, 0
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !378
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.w, 0
  br i1 %.not67.i, label %bb.n, label %_gather_45_rule.exit.thread40.sink.split

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.y = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !378 ; 4 uses
  %.not68.i = icmp eq ptr %i.y, null
  br i1 %.not68.i, label %_gather_45_rule.exit.thread40.sink.split.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.z, 0
  br i1 %.not69.i, label %.preheader45, label %_gather_45_rule.exit.thread40.sink.split

.preheader45:                                     ; preds = %bb.o
  %i.aa = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !378
  %.not70.i49 = icmp eq ptr %i.aa, null
  br i1 %.not70.i49, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %i.ab = tail call fastcc ptr @maybe_star_pattern_rule(ptr noundef nonnull %0), !inline_history !378 ; 2 uses
  %.not71.i71 = icmp eq ptr %i.ab, null
  br i1 %.not71.i71, label %.critedge.i, label %.lr.ph75

.lr.ph:                                           ; preds = %bb.q
  %i.ac = tail call fastcc ptr @maybe_star_pattern_rule(ptr noundef nonnull %0), !inline_history !378 ; 2 uses
  %.not71.i = icmp eq ptr %i.ac, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph75, !llvm.loop !379

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ad = phi ptr [ %i.ac, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ]
  %.059.i5074 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i5173 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i5272 = phi ptr [ %.256.i, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.ae = icmp eq i64 %.058.i5173, %.059.i5074
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph75
  %i.af = shl i64 %.058.i5173, 1
  %i.ag = shl i64 %.058.i5173, 4
  %i.ah = tail call ptr @PyMem_Realloc(ptr noundef %.054.i5272, i64 noundef %i.ag) #6, !inline_history !378 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ah, null
  br i1 %.not72.not.i, label %_gather_45_rule.exit.thread40.sink.split.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph75
  %.160.i = phi i64 [ %.059.i5074, %.lr.ph75 ], [ %i.af, %bb.p ]
  %.256.i = phi ptr [ %.054.i5272, %.lr.ph75 ], [ %i.ah, %bb.p ] ; 4 uses
  %i.ai = add i64 %.058.i5173, 1                  ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i5173
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !31
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.al = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !378
  %.not70.i = icmp eq ptr %i.al, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !379

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.q
  br label %.critedge.i, !llvm.loop !379

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader45
  %.058.i.lcssa = phi i64 [ 0, %.preheader45 ], [ %i.ai, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ai, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.y, %.preheader45 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.y, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.x, %.preheader45 ], [ %i.ak, %..critedge.i.loopexit_crit_edge ], [ %i.x, %.lr.ph.preheader ], [ %i.ak, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.an) #6, !inline_history !378 ; 3 uses
  %.not73.i = icmp eq ptr %i.ao, null
  br i1 %.not73.i, label %_gather_45_rule.exit.thread40.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.ap = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.ap, label %.lr.ph61, label %_gather_45_rule.exit

.lr.ph61:                                         ; preds = %.preheader
  %i.aq = getelementptr i8, ptr %i.ao, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.ar = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph61.new
  %.0.i60 = phi i64 [ 0, %.lr.ph61.new ], [ %i.bl, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.3, %bb.r ]
  %i.as = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.0.i60
  store ptr %i.at, ptr %i.av, align 8, !tbaa !31
  %i.aw = or disjoint i64 %.0.i60, 1              ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.aw
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !31
  %i.bb = or disjoint i64 %.0.i60, 2              ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bb
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !31
  %i.bg = or disjoint i64 %.0.i60, 3              ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !31
  %i.bl = add nuw nsw i64 %.0.i60, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_45_rule.exit.loopexit.unr-lcssa, label %bb.r, !llvm.loop !380

_gather_45_rule.exit.thread40.sink.split.sink.split.sink.split: ; preds = %bb.p, %.critedge.i
  %.054.i.lcssa.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i5272, %bb.p ]
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa.sink) #6
  br label %_gather_45_rule.exit.thread40.sink.split.sink.split

_gather_45_rule.exit.thread40.sink.split.sink.split: ; preds = %_gather_45_rule.exit.thread40.sink.split.sink.split.sink.split, %bb.n
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_gather_45_rule.exit.thread40.sink.split

_gather_45_rule.exit.thread40.sink.split:         ; preds = %_gather_45_rule.exit.thread40.sink.split.sink.split, %bb.o, %bb.m
  %storemerge.in.i32 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i33 = add i32 %storemerge.in.i32, -1
  br label %.sink.split

_gather_45_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_45_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_45_rule.exit.loopexit.unr-lcssa, %.lr.ph61
  %.0.i60.epil.init = phi i64 [ 0, %.lr.ph61 ], [ %i.bl, %_gather_45_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.0.i60.epil = phi i64 [ %.0.i60.epil.init, %.epil.preheader ], [ %i.br, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.bn = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i60.epil
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.0.i60.epil
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !31
  %i.br = add nuw nsw i64 %.0.i60.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_45_rule.exit, label %bb.s, !llvm.loop !381

_gather_45_rule.exit:                             ; preds = %_gather_45_rule.exit.loopexit.unr-lcssa, %bb.s, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !378
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bs = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ao) #6, !inline_history !377 ; 2 uses
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !26
  %.not23 = icmp eq ptr %i.bs, null
  br i1 %.not23, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_gather_45_rule.exit
  %i.bv = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24 = icmp eq i32 %i.bw, 0
  br i1 %.not24, label %bb.v, label %bb.u

.sink.split:                                      ; preds = %bb.i, %_gather_45_rule.exit.thread40.sink.split, %_gather_45_rule.exit.thread
  %.sink69 = phi i32 [ %i.q, %_gather_45_rule.exit.thread ], [ %.pre, %bb.i ], [ %storemerge.i33, %_gather_45_rule.exit.thread40.sink.split ]
  %i.bx = add i32 %.sink69, -1
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_gather_45_rule.exit, %bb.t
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.u ], [ %i.bs, %bb.t ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pattern_capture_target_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call i32 @_PyPegen_lookahead_with_string(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_soft_keyword, ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #6
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not26 = icmp eq ptr %i.l, null
  br i1 %.not26, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @_PyPegen_lookahead(i32 noundef 0, ptr noundef nonnull @_tmp_43_rule, ptr noundef nonnull %0) #6
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_set_expr_context(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 2) #6 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #6
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %.thread, label %.thread31

.thread31:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %bb.d, %.thread31
  %.2 = phi ptr [ null, %.thread31 ], [ null, %bb.d ], [ null, %bb.j ], [ null, %bb.i ], [ %i.n, %bb.h ]
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyAST_MatchStar(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wildcard_pattern_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not41 = icmp eq i32 %i.h, 0
  br i1 %.not41, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.thread52

.thread52:                                        ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %.pre = load i32, ptr %i.g, align 8, !tbaa !27
end_hunk_31
begin_hunk_32_@or_pattern_rule:bb.a
  %.pn.in = phi ptr [ %i.r, %.thread101 ], [ %i.z, %bb.i ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %.in104 = getelementptr i8, ptr %.pn, i64 20
  %i.ab = load i32, ptr %.in104, align 4, !tbaa !32
  %.in = getelementptr i8, ptr %.pn, i64 24
  %i.ac = load i32, ptr %.in, align 8, !tbaa !35
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !26
  %i.af = icmp eq i32 %i.ad, 6000
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call ptr @PyThreadState_Get() #6, !inline_history !382
  %i.ah = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ag, i32 noundef 1) #6, !inline_history !382
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !382
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.ai, 0
  br i1 %.not22.i, label %bb.o, label %_gather_40_rule.exit.thread

_gather_40_rule.exit.thread:                      ; preds = %bb.n
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ak = add i32 %i.aj, -1
  br label %bb.ak

bb.o:                                             ; preds = %bb.n
  %i.al = tail call fastcc ptr @closed_pattern_rule(ptr noundef nonnull %0), !inline_history !382 ; 2 uses
  %.not23.i = icmp eq ptr %i.al, null
  %.pre91 = load i32, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  br i1 %.not23.i, label %_gather_40_rule.exit.thread64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = add i32 %.pre91, 1
  store i32 %i.am, ptr %i.a, align 8, !tbaa !26
  %i.an = icmp eq i32 %.pre91, 6000
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @PyThreadState_Get() #6, !inline_history !383
  %i.ap = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ao, i32 noundef 1) #6, !inline_history !383
  %.not.i50 = icmp eq i32 %i.ap, 0
  br i1 %.not.i50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !383
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.aq, 0
  br i1 %.not67.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !26
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !26
  br label %_gather_40_rule.exit.thread64

bb.u:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.au = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !383 ; 4 uses
  %.not68.i = icmp eq ptr %i.au, null
  br i1 %.not68.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.av = tail call ptr @PyErr_NoMemory() #6, !inline_history !383 ; 0 uses
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ax = add i32 %i.aw, -1
  br label %_gather_40_rule.exit.thread64

bb.w:                                             ; preds = %bb.u
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.ay, 0
  br i1 %.not69.i, label %.preheader73, label %bb.x

.preheader73:                                     ; preds = %bb.w
  %i.az = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 18) #6, !inline_history !383
  %.not70.i77 = icmp eq ptr %i.az, null
  br i1 %.not70.i77, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader73
  %i.ba = tail call fastcc ptr @closed_pattern_rule(ptr noundef nonnull %0), !inline_history !383 ; 2 uses
  %.not71.i107 = icmp eq ptr %i.ba, null
  br i1 %.not71.i107, label %.critedge.i, label %.lr.ph111

bb.x:                                             ; preds = %bb.w
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bc = add i32 %i.bb, -1
  br label %_gather_40_rule.exit.thread64

.lr.ph:                                           ; preds = %bb.z
  %i.bd = tail call fastcc ptr @closed_pattern_rule(ptr noundef nonnull %0), !inline_history !383 ; 2 uses
  %.not71.i = icmp eq ptr %i.bd, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph111, !llvm.loop !384

.lr.ph111:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.be = phi ptr [ %i.bd, %.lr.ph ], [ %i.ba, %.lr.ph.preheader ]
  %.059.i78110 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i79109 = phi i64 [ %i.bm, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i80108 = phi ptr [ %.256.i, %.lr.ph ], [ %i.au, %.lr.ph.preheader ] ; 3 uses
  %i.bf = icmp eq i64 %.058.i79109, %.059.i78110
  br i1 %i.bf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph111
  %i.bg = shl i64 %.058.i79109, 1
  %i.bh = shl i64 %.058.i79109, 4
  %i.bi = tail call ptr @PyMem_Realloc(ptr noundef %.054.i80108, i64 noundef %i.bh) #6, !inline_history !383 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.bi, null
  br i1 %.not72.not.i, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y
  tail call void @PyMem_Free(ptr noundef %.054.i80108) #6, !inline_history !383
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bj = tail call ptr @PyErr_NoMemory() #6, !inline_history !383 ; 0 uses
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bl = add i32 %i.bk, -1
  br label %_gather_40_rule.exit.thread64

bb.z:                                             ; preds = %bb.y, %.lr.ph111
  %.160.i = phi i64 [ %.059.i78110, %.lr.ph111 ], [ %i.bg, %bb.y ]
  %.256.i = phi ptr [ %.054.i80108, %.lr.ph111 ], [ %i.bi, %bb.y ] ; 4 uses
  %i.bm = add i64 %.058.i79109, 1                 ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i79109
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !31
  %i.bo = load i32, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.bp = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 18) #6, !inline_history !383
  %.not70.i = icmp eq ptr %i.bp, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !384

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.z
  br label %.critedge.i, !llvm.loop !384

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader73
  %.058.i.lcssa = phi i64 [ 0, %.preheader73 ], [ %i.bm, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.bm, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.au, %.preheader73 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.au, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.at, %.preheader73 ], [ %i.bo, %..critedge.i.loopexit_crit_edge ], [ %i.at, %.lr.ph.preheader ], [ %i.bo, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.j, align 8, !tbaa !28
  %i.bq = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.bs = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.br) #6, !inline_history !383 ; 3 uses
  %.not73.i = icmp eq ptr %i.bs, null
  br i1 %.not73.i, label %_loop0_39_rule.exit.thread54, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.bt = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.bt, label %.lr.ph89, label %_gather_40_rule.exit

.lr.ph89:                                         ; preds = %.preheader
  %i.bu = getelementptr i8, ptr %i.bs, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.bv = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph89.new

.lr.ph89.new:                                     ; preds = %.lr.ph89
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.aa

_loop0_39_rule.exit.thread54:                     ; preds = %.critedge.i
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !383
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bw = tail call ptr @PyErr_NoMemory() #6, !inline_history !383 ; 0 uses
  %storemerge.in.i56 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i57 = add i32 %storemerge.in.i56, -1
  br label %_gather_40_rule.exit.thread64

bb.aa:                                            ; preds = %bb.aa, %.lr.ph89.new
  %.0.i88 = phi i64 [ 0, %.lr.ph89.new ], [ %i.cq, %bb.aa ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph89.new ], [ %niter.next.3, %bb.aa ]
  %i.bx = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i88
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %.0.i88
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !31
  %i.cb = or disjoint i64 %.0.i88, 1              ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cb
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !31
  %i.cg = or disjoint i64 %.0.i88, 2              ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %i.cg
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !31
  %i.cl = or disjoint i64 %.0.i88, 3              ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !31
  %i.co = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.cl
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !31
  %i.cq = add nuw nsw i64 %.0.i88, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_40_rule.exit.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !385

_gather_40_rule.exit.thread64:                    ; preds = %_loop0_39_rule.exit.thread54, %bb.o, %bb.t, %bb.v, %bb.x, %.thread
  %i.cr = phi i32 [ %storemerge.i57, %_loop0_39_rule.exit.thread54 ], [ %.pre91, %bb.o ], [ %i.as, %bb.t ], [ %i.ax, %bb.v ], [ %i.bc, %bb.x ], [ %i.bl, %.thread ]
  %i.cs = add i32 %i.cr, -1
  br label %bb.ak

_gather_40_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_40_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_40_rule.exit.loopexit.unr-lcssa, %.lr.ph89
  %.0.i88.epil.init = phi i64 [ 0, %.lr.ph89 ], [ %i.cq, %_gather_40_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader
  %.0.i88.epil = phi i64 [ %.0.i88.epil.init, %.epil.preheader ], [ %i.cx, %bb.ab ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ab ]
  %i.ct = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i88.epil
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !31
  %i.cv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %.0.i88.epil
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !31
  %i.cx = add nuw nsw i64 %.0.i88.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_40_rule.exit, label %bb.ab, !llvm.loop !386

_gather_40_rule.exit:                             ; preds = %_gather_40_rule.exit.loopexit.unr-lcssa, %bb.ab, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !383
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.cy = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef nonnull %i.bs) #6, !inline_history !382 ; 4 uses
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !26
  %i.da = add i32 %i.cz, -1                       ; 2 uses
  store i32 %i.da, ptr %i.a, align 8, !tbaa !26
  %.not48 = icmp eq ptr %i.cy, null
  br i1 %.not48, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %_gather_40_rule.exit
  %i.db = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread66

bb.ae:                                            ; preds = %bb.ac
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !387
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr i8, ptr %i.cy, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !375
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.di = getelementptr i8, ptr %i.db, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !37
  %i.dk = getelementptr i8, ptr %i.db, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !36
  %i.dm = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.dn = tail call ptr @_PyAST_MatchOr(ptr noundef nonnull %i.cy, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.dl, i32 noundef %i.dj, ptr noundef %i.dm) #6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.do = phi ptr [ %i.dh, %bb.af ], [ %i.dn, %bb.ag ] ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.ai, label %..thread70_crit_edge

..thread70_crit_edge:                             ; preds = %bb.ah
  %.pre92 = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.thread66

bb.ai:                                            ; preds = %bb.ah
  %i.dq = tail call ptr @PyErr_Occurred() #6
  %.not49 = icmp eq ptr %i.dq, null
  %.pre93 = load i32, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  br i1 %.not49, label %.thread66, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread66

bb.ak:                                            ; preds = %_gather_40_rule.exit.thread64, %_gather_40_rule.exit.thread, %_gather_40_rule.exit
  %i.dr = phi i32 [ %i.cs, %_gather_40_rule.exit.thread64 ], [ %i.ak, %_gather_40_rule.exit.thread ], [ %i.da, %_gather_40_rule.exit ]
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  br label %.thread66

.thread66:                                        ; preds = %bb.ak, %bb.ai, %..thread70_crit_edge, %bb.aj, %bb.ad, %bb.h, %bb.j, %bb.e
  %.pre93.sink = phi i32 [ %.pre93, %bb.aj ], [ %i.dd, %bb.ad ], [ %i.u, %bb.h ], [ %i.i, %bb.e ], [ %i.aa, %bb.j ], [ %i.dr, %bb.ak ], [ %.pre93, %bb.ai ], [ %.pre92, %..thread70_crit_edge ]
  %.5 = phi ptr [ null, %bb.aj ], [ null, %bb.ad ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.j ], [ null, %bb.ak ], [ null, %bb.ai ], [ %i.do, %..thread70_crit_edge ]
  %i.ds = add i32 %.pre93.sink, -1
  store i32 %i.ds, ptr %i.a, align 8, !tbaa !26
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalid_as_pattern_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.e, label %.thread61

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = tail call fastcc ptr @or_pattern_rule(ptr noundef nonnull %0)
  %.not49 = icmp eq ptr %i.k, null
  br i1 %.not49, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6
  %.not50 = icmp eq ptr %i.l, null
  br i1 %.not50, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_soft_keyword(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #6 ; 5 uses
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !59
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.m, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.m, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !73
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %i.m, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !74
  %i.z = sext i32 %i.y to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.n, i64 noundef %i.q, i64 noundef %i.t, i64 noundef %i.w, i64 noundef %i.z, ptr noundef nonnull @.str.185)
  %i.aa = tail call ptr @PyErr_Occurred() #6
  %.not52 = icmp eq ptr %i.aa, null
  br i1 %.not52, label %.thread61, label %.thread

.thread:                                          ; preds = %bb.h
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread61

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !27
  %.not53 = icmp eq i32 %i.ab, 0
  br i1 %.not53, label %bb.j, label %.thread61

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call fastcc ptr @or_pattern_rule(ptr noundef nonnull %0)
  %.not54 = icmp eq ptr %i.ac, null
  br i1 %.not54, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 696) #6
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 6 uses
  %.not56 = icmp eq ptr %i.ae, null
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !55
  %i.ag = getelementptr i8, ptr %i.ae, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !59
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.ae, i64 44
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.ae, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !73
end_hunk_32
begin_hunk_33_@invalid_mapping_pattern_rule:bb.a
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %i.am, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !66
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.am, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !73
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.am, i64 52
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !74
  %i.bm = sext i32 %i.bl to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.ba, i64 noundef %i.bd, i64 noundef %i.bg, i64 noundef %i.bj, i64 noundef %i.bm, ptr noundef nonnull @.str.187)
  %i.bn = tail call ptr @PyErr_Occurred() #6
  %.not41 = icmp eq ptr %i.bn, null
  %.pre78 = load i32, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  br i1 %.not41, label %bb.ai, label %bb.ah

items_pattern_rule.exit.thread74.sink.split:      ; preds = %bb.ac, %bb.x, %bb.u, %bb.j
  %storemerge.in81 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge82 = add i32 %storemerge.in81, -1
  store i32 %storemerge82, ptr %i.a, align 8, !tbaa !26
  br label %items_pattern_rule.exit.thread74

items_pattern_rule.exit.thread74:                 ; preds = %items_pattern_rule.exit.thread74.sink.split, %bb.ad, %bb.af, %bb.ae, %bb.y, %_tmp_148_rule.exit, %bb.f
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %items_pattern_rule.exit.thread74, %bb.ah, %bb.e
  %.pre78.sink = phi i32 [ %.pre78, %bb.ah ], [ %i.i, %bb.e ], [ %.pre, %items_pattern_rule.exit.thread74 ], [ %.pre78, %bb.ag ]
  %i.bo = add i32 %.pre78.sink, -1
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_47_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @key_value_pattern_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %_loop0_46_rule.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !394
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !394
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !394
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_46_rule.exit.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !394 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_46_rule.exit.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader37, label %_loop0_46_rule.exit.thread.sink.split

.preheader37:                                     ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !394
  %.not70.i41 = icmp eq ptr %i.u, null
  br i1 %.not70.i41, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.v = tail call fastcc ptr @key_value_pattern_rule(ptr noundef nonnull %0), !inline_history !394 ; 2 uses
  %.not71.i62 = icmp eq ptr %i.v, null
  br i1 %.not71.i62, label %.critedge.i, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.m
  %i.w = tail call fastcc ptr @key_value_pattern_rule(ptr noundef nonnull %0), !inline_history !394 ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph66, !llvm.loop !395

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %.059.i4265 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4364 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4463 = phi ptr [ %.256.i, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.058.i4364, %.059.i4265
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66
  %i.z = shl i64 %.058.i4364, 1
  %i.aa = shl i64 %.058.i4364, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4463, i64 noundef %i.aa) #6, !inline_history !394 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_46_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66
  %.160.i = phi i64 [ %.059.i4265, %.lr.ph66 ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.054.i4463, %.lr.ph66 ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.058.i4364, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4364
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !394
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !395

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !395

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader37
  %.058.i.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.s, %.preheader37 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.s, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.r, %.preheader37 ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ah) #6, !inline_history !394 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_46_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.aj, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.lr.ph53
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph53.new
  %.0.i52 = phi i64 [ 0, %.lr.ph53.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.0.i52
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.0.i52, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.0.i52, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.0.i52, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.0.i52, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !396

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph53
  %.0.i52.epil.init = phi i64 [ 0, %.lr.ph53 ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.0.i52.epil = phi i64 [ %.0.i52.epil.init, %.epil.preheader ], [ %i.bk, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bg = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52.epil
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.0.i52.epil
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !31
  %i.bk = add nuw nsw i64 %.0.i52.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !397

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !394
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bl = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.p

_loop0_46_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.i44.lcssa59.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i4463, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.i44.lcssa59.sink) #6
  br label %_loop0_46_rule.exit.thread.sink.split.sink.split

_loop0_46_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_46_rule.exit.thread.sink.split.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_46_rule.exit.thread.sink.split

_loop0_46_rule.exit.thread.sink.split:            ; preds = %_loop0_46_rule.exit.thread.sink.split.sink.split, %bb.k, %bb.i
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !26
  br label %_loop0_46_rule.exit.thread

_loop0_46_rule.exit.thread:                       ; preds = %_loop0_46_rule.exit.thread.sink.split, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %_loop0_46_rule.exit.thread, %._crit_edge, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %_loop0_46_rule.exit.thread ], [ %i.bl, %._crit_edge ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @key_value_pattern_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 16 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 12 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 10 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.k, 6000
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyThreadState_Get() #6
  %i.o = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.n, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27.i = icmp eq i32 %i.p, 0
  br i1 %.not27.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28
  %i.s = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.a, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.s, 6000
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call ptr @PyThreadState_Get() #6
  %i.w = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.v, i32 noundef 1) #6
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = load i32, ptr %i.g, align 8, !tbaa !27
  %.not123.i.i = icmp eq i32 %i.x, 0
  br i1 %.not123.i.i, label %bb.n, label %.thread39.i

bb.n:                                             ; preds = %bb.m
  %i.y = load i32, ptr %i.i, align 8, !tbaa !28   ; 8 uses
  %i.z = getelementptr i8, ptr %0, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.o, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n
  %i.ac = getelementptr i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = sext i32 %i.y to i64
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.thread39.sink.split.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.pre.i.i = load i32, ptr %i.g, align 8, !tbaa !27
  %i.ai = icmp eq i32 %.pre.i.i, 0
  %i.aj = getelementptr i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.al = sext i32 %i.y to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  br i1 %i.ai, label %bb.q, label %bb.an

bb.q:                                             ; preds = %bb.p, %.thread.i.i
  %.pn.in.i.i = phi ptr [ %i.af, %.thread.i.i ], [ %i.am, %bb.p ]
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8, !tbaa !31 ; 2 uses
  %.in190.i.i = getelementptr i8, ptr %.pn.i.i, i64 20
  %i.an = load i32, ptr %.in190.i.i, align 4, !tbaa !32 ; 3 uses
  %.in.i.i = getelementptr i8, ptr %.pn.i.i, i64 24
  %i.ao = load i32, ptr %.in.i.i, align 8, !tbaa !35 ; 3 uses
  %i.ap = tail call fastcc ptr @signed_number_rule(ptr noundef nonnull %0) ; 2 uses
  %.not125.i.i = icmp eq ptr %i.ap, null
  br i1 %.not125.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = tail call i32 @_PyPegen_lookahead(i32 noundef 0, ptr noundef nonnull @_tmp_41_rule, ptr noundef nonnull %0) #6
  %.not126.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not126.i.i, label %bb.s, label %bb.am

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 %i.y, ptr %i.i, align 8, !tbaa !28
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !27
  %.not127.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not127.i.i, label %bb.t, label %.thread39.i

bb.t:                                             ; preds = %bb.s
  %i.as = tail call fastcc ptr @complex_number_rule(ptr noundef nonnull %0) ; 2 uses
  %.not128.i.i = icmp eq ptr %i.as, null
  br i1 %.not128.i.i, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  store i32 %i.y, ptr %i.i, align 8, !tbaa !28
  %i.at = load i32, ptr %i.g, align 8, !tbaa !27
  %.not129.i.i = icmp eq i32 %i.at, 0
  br i1 %.not129.i.i, label %bb.v, label %.thread39.i

end_hunk_33
begin_hunk_34_@keyword_patterns_rule:bb.a
  %.not18 = icmp eq i32 %i.h, 0
  %storemerge.in.pre = load i32, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  br i1 %.not18, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = add i32 %storemerge.in.pre, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !26
  %i.l = icmp eq i32 %storemerge.in.pre, 6000
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @PyThreadState_Get() #6, !inline_history !398
  %i.n = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.m, i32 noundef 1) #6, !inline_history !398
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !398
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.o, 0
  br i1 %.not22.i, label %bb.i, label %_gather_52_rule.exit.thread

_gather_52_rule.exit.thread:                      ; preds = %bb.h
  %i.p = load i32, ptr %i.a, align 8, !tbaa !26
  %i.q = add i32 %i.p, -1
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @keyword_pattern_rule(ptr noundef nonnull %0), !inline_history !398 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  br i1 %.not23.i, label %_gather_52_rule.exit.thread35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i32 %.pre, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp eq i32 %.pre, 6000
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @PyThreadState_Get() #6, !inline_history !399
  %i.v = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.u, i32 noundef 1) #6, !inline_history !399
  %.not.i21 = icmp eq i32 %i.v, 0
  br i1 %.not.i21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !399
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.w, 0
  br i1 %.not67.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load i32, ptr %i.a, align 8, !tbaa !26
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !26
  br label %_gather_52_rule.exit.thread35

bb.o:                                             ; preds = %bb.m
  %i.z = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.aa = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !399 ; 4 uses
  %.not68.i = icmp eq ptr %i.aa, null
  br i1 %.not68.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ab = tail call ptr @PyErr_NoMemory() #6, !inline_history !399 ; 0 uses
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ad = add i32 %i.ac, -1
  br label %_gather_52_rule.exit.thread35

bb.q:                                             ; preds = %bb.o
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.ae, 0
  br i1 %.not69.i, label %.preheader40, label %bb.r

.preheader40:                                     ; preds = %bb.q
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !399
  %.not70.i44 = icmp eq ptr %i.af, null
  br i1 %.not70.i44, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader40
  %i.ag = tail call fastcc ptr @keyword_pattern_rule(ptr noundef nonnull %0), !inline_history !399 ; 2 uses
  %.not71.i67 = icmp eq ptr %i.ag, null
  br i1 %.not71.i67, label %.critedge.i, label %.lr.ph71

bb.r:                                             ; preds = %bb.q
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ai = add i32 %i.ah, -1
  br label %_gather_52_rule.exit.thread35

.lr.ph:                                           ; preds = %bb.t
  %i.aj = tail call fastcc ptr @keyword_pattern_rule(ptr noundef nonnull %0), !inline_history !399 ; 2 uses
  %.not71.i = icmp eq ptr %i.aj, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph71, !llvm.loop !400

.lr.ph71:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ak = phi ptr [ %i.aj, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ]
  %.059.i4570 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4669 = phi i64 [ %i.as, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4768 = phi ptr [ %.256.i, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ] ; 3 uses
  %i.al = icmp eq i64 %.058.i4669, %.059.i4570
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph71
  %i.am = shl i64 %.058.i4669, 1
  %i.an = shl i64 %.058.i4669, 4
  %i.ao = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4768, i64 noundef %i.an) #6, !inline_history !399 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ao, null
  br i1 %.not72.not.i, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  tail call void @PyMem_Free(ptr noundef %.054.i4768) #6, !inline_history !399
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ap = tail call ptr @PyErr_NoMemory() #6, !inline_history !399 ; 0 uses
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ar = add i32 %i.aq, -1
  br label %_gather_52_rule.exit.thread35

bb.t:                                             ; preds = %bb.s, %.lr.ph71
  %.160.i = phi i64 [ %.059.i4570, %.lr.ph71 ], [ %i.am, %bb.s ]
  %.256.i = phi ptr [ %.054.i4768, %.lr.ph71 ], [ %i.ao, %bb.s ] ; 4 uses
  %i.as = add i64 %.058.i4669, 1                  ; 3 uses
  %i.at = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4669
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !31
  %i.au = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.av = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !399
  %.not70.i = icmp eq ptr %i.av, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !400

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.t
  br label %.critedge.i, !llvm.loop !400

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader40
  %.058.i.lcssa = phi i64 [ 0, %.preheader40 ], [ %i.as, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.as, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.aa, %.preheader40 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.aa, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.z, %.preheader40 ], [ %i.au, %..critedge.i.loopexit_crit_edge ], [ %i.z, %.lr.ph.preheader ], [ %i.au, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.aw = getelementptr i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ax) #6, !inline_history !399 ; 3 uses
  %.not73.i = icmp eq ptr %i.ay, null
  br i1 %.not73.i, label %_loop0_51_rule.exit.thread25, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.az = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.az, label %.lr.ph56, label %_gather_52_rule.exit

.lr.ph56:                                         ; preds = %.preheader
  %i.ba = getelementptr i8, ptr %i.ay, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.bb = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.u

_loop0_51_rule.exit.thread25:                     ; preds = %.critedge.i
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !399
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bc = tail call ptr @PyErr_NoMemory() #6, !inline_history !399 ; 0 uses
  %storemerge.in.i27 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i28 = add i32 %storemerge.in.i27, -1
  br label %_gather_52_rule.exit.thread35

bb.u:                                             ; preds = %bb.u, %.lr.ph56.new
  %.0.i55 = phi i64 [ 0, %.lr.ph56.new ], [ %i.bw, %bb.u ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.3, %bb.u ]
  %i.bd = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i55
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %.0.i55
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !31
  %i.bh = or disjoint i64 %.0.i55, 1              ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !31
  %i.bm = or disjoint i64 %.0.i55, 2              ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bm
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !31
  %i.br = or disjoint i64 %.0.i55, 3              ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.br
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !31
  %i.bw = add nuw nsw i64 %.0.i55, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_gather_52_rule.exit.loopexit.unr-lcssa, label %bb.u, !llvm.loop !401

_gather_52_rule.exit.thread35:                    ; preds = %_loop0_51_rule.exit.thread25, %bb.i, %bb.n, %bb.p, %bb.r, %.thread
  %i.bx = phi i32 [ %storemerge.i28, %_loop0_51_rule.exit.thread25 ], [ %.pre, %bb.i ], [ %i.y, %bb.n ], [ %i.ad, %bb.p ], [ %i.ai, %bb.r ], [ %i.ar, %.thread ]
  %i.by = add i32 %i.bx, -1
  br label %bb.w

_gather_52_rule.exit.loopexit.unr-lcssa:          ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_gather_52_rule.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_gather_52_rule.exit.loopexit.unr-lcssa, %.lr.ph56
  %.0.i55.epil.init = phi i64 [ 0, %.lr.ph56 ], [ %i.bw, %_gather_52_rule.exit.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %.0.i55.epil = phi i64 [ %.0.i55.epil.init, %.epil.preheader ], [ %i.cd, %bb.v ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.bz = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i55.epil
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %.0.i55.epil
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !31
  %i.cd = add nuw nsw i64 %.0.i55.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_gather_52_rule.exit, label %bb.v, !llvm.loop !402

_gather_52_rule.exit:                             ; preds = %_gather_52_rule.exit.loopexit.unr-lcssa, %bb.v, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !399
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.ce = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ay) #6, !inline_history !398 ; 2 uses
  %i.cf = load i32, ptr %i.a, align 8, !tbaa !26
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  %.not19 = icmp eq ptr %i.ce, null
  br i1 %.not19, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_gather_52_rule.exit, %_gather_52_rule.exit.thread, %_gather_52_rule.exit.thread35
  %storemerge.in59 = phi i32 [ %i.cg, %_gather_52_rule.exit ], [ %i.q, %_gather_52_rule.exit.thread ], [ %i.by, %_gather_52_rule.exit.thread35 ]
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_gather_52_rule.exit, %bb.d
  %storemerge.in = phi i32 [ %storemerge.in.pre, %bb.d ], [ %storemerge.in59, %bb.w ], [ %i.cg, %_gather_52_rule.exit ]
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.w ], [ %i.ce, %_gather_52_rule.exit ]
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalid_class_pattern_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 23 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28
  %i.l = tail call fastcc ptr @name_or_attr_rule(ptr noundef nonnull %0)
  %.not28 = icmp eq ptr %i.l, null
  br i1 %.not28, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %.pre.pre = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.aa

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 7) #6
  %.not29 = icmp eq ptr %i.m, null
  %.pre.pre54 = load i32, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  br i1 %.not29, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add i32 %.pre.pre54, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !26
  %i.o = icmp eq i32 %.pre.pre54, 6000
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyThreadState_Get() #6, !inline_history !403
  %i.q = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.p, i32 noundef 1) #6, !inline_history !403
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !403
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = load i32, ptr %i.g, align 8, !tbaa !27
  %.not24.i = icmp eq i32 %i.r, 0
  %i.s = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  br i1 %.not24.i, label %bb.l, label %invalid_class_argument_pattern_rule.exit.thread

invalid_class_argument_pattern_rule.exit.thread:  ; preds = %bb.k
  %i.t = add i32 %i.s, -1
  br label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.u = add i32 %i.s, 1
  store i32 %i.u, ptr %i.a, align 8, !tbaa !26
  %i.v = icmp eq i32 %i.s, 6000
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = tail call ptr @PyThreadState_Get() #6, !inline_history !404
  %i.x = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.w, i32 noundef 1) #6, !inline_history !404
  %.not.i32 = icmp eq i32 %i.x, 0
  br i1 %.not.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !404
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22.i = icmp eq i32 %i.y, 0
  br i1 %.not22.i, label %bb.p, label %_tmp_149_rule.exit.thread

_tmp_149_rule.exit.thread:                        ; preds = %bb.o
  %storemerge.in58 = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge59 = add i32 %storemerge.in58, -1
  store i32 %storemerge59, ptr %i.a, align 8, !tbaa !26
  br label %invalid_class_argument_pattern_rule.exit.thread49

bb.p:                                             ; preds = %bb.o
  %i.z = load i32, ptr %i.j, align 8, !tbaa !28
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !26
  %i.ac = icmp eq i32 %i.aa, 6000
  br i1 %i.ac, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = tail call ptr @PyThreadState_Get() #6, !inline_history !405
  %i.ae = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ad, i32 noundef 1) #6, !inline_history !405
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !405
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = load i32, ptr %i.g, align 8, !tbaa !27
  %.not20.i.i = icmp eq i32 %i.af, 0
  br i1 %.not20.i.i, label %bb.t, label %positional_patterns_rule.exit.i.thread

positional_patterns_rule.exit.i.thread:           ; preds = %bb.s
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ah = add i32 %i.ag, -1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !26
  br label %positional_patterns_rule.exit.i.thread39

bb.t:                                             ; preds = %bb.s
  %i.ai = tail call fastcc ptr @_gather_50_rule(ptr noundef nonnull %0), !inline_history !405 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ai, null
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !26
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !26
  br i1 %.not21.i.i, label %positional_patterns_rule.exit.i.thread39, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !404 ; 2 uses
  %.not24.i33 = icmp eq ptr %i.al, null
  br i1 %.not24.i33, label %positional_patterns_rule.exit.i.thread39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = tail call ptr (ptr, ...) @_PyPegen_dummy_name(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al) #6, !inline_history !404 ; 0 uses
  br label %_tmp_149_rule.exit
end_hunk_34
begin_hunk_35_@invalid_class_pattern_rule:bb.a
  %i.av = tail call ptr @_PyPegen_seq_first_item(ptr noundef nonnull %i.ap) #6
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !406
  %i.ay = sext i32 %i.ax to i64
  %i.az = tail call ptr @_PyPegen_seq_first_item(ptr noundef nonnull %i.ap) #6
  %i.ba = getelementptr i8, ptr %i.az, i64 44
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !408
  %i.bc = sext i32 %i.bb to i64
  %i.bd = tail call ptr @_PyPegen_seq_last_item(ptr noundef nonnull %i.ap) #6
  %i.be = getelementptr i8, ptr %i.bd, i64 48
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !409
  %i.bg = sext i32 %i.bf to i64
  %i.bh = tail call ptr @_PyPegen_seq_last_item(ptr noundef nonnull %i.ap) #6
  %i.bi = getelementptr i8, ptr %i.bh, i64 52
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !410
  %i.bk = sext i32 %i.bj to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.au, i64 noundef %i.ay, i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.bk, ptr noundef nonnull @.str.188)
  %i.bl = tail call ptr @PyErr_Occurred() #6
  %.not31 = icmp eq ptr %i.bl, null
  %.pre53 = load i32, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  br i1 %.not31, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge, %invalid_class_argument_pattern_rule.exit.thread49, %invalid_class_argument_pattern_rule.exit.thread, %bb.g
  %.pre = phi i32 [ %.pre.pre, %._crit_edge ], [ %i.ar, %invalid_class_argument_pattern_rule.exit.thread49 ], [ %i.t, %invalid_class_argument_pattern_rule.exit.thread ], [ %.pre.pre54, %bb.g ]
  store i32 %i.k, ptr %i.j, align 8, !tbaa !28
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab, %bb.e
  %.pre53.sink = phi i32 [ %.pre53, %bb.ab ], [ %i.i, %bb.e ], [ %.pre, %bb.aa ], [ %.pre53, %bb.z ]
  %i.bm = add i32 %.pre53.sink, -1
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_50_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call fastcc ptr @pattern_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %_loop0_49_rule.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !411
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !411
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !411
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_49_rule.exit.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !411 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_49_rule.exit.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader37, label %_loop0_49_rule.exit.thread.sink.split

.preheader37:                                     ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !411
  %.not70.i41 = icmp eq ptr %i.u, null
  br i1 %.not70.i41, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.v = tail call fastcc ptr @pattern_rule(ptr noundef nonnull %0), !inline_history !411 ; 2 uses
  %.not71.i62 = icmp eq ptr %i.v, null
  br i1 %.not71.i62, label %.critedge.i, label %.lr.ph66

.lr.ph:                                           ; preds = %bb.m
  %i.w = tail call fastcc ptr @pattern_rule(ptr noundef nonnull %0), !inline_history !411 ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph66, !llvm.loop !412

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi ptr [ %i.w, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %.059.i4265 = phi i64 [ %.160.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.058.i4364 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.054.i4463 = phi ptr [ %.256.i, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.058.i4364, %.059.i4265
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph66
  %i.z = shl i64 %.058.i4364, 1
  %i.aa = shl i64 %.058.i4364, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.054.i4463, i64 noundef %i.aa) #6, !inline_history !411 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_49_rule.exit.thread.sink.split.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph66
  %.160.i = phi i64 [ %.059.i4265, %.lr.ph66 ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.054.i4463, %.lr.ph66 ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.058.i4364, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.058.i4364
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !411
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph, !llvm.loop !412

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !412

.critedge.i:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.i.loopexit_crit_edge, %.preheader37
  %.058.i.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.054.i.lcssa = phi ptr [ %i.s, %.preheader37 ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %i.s, %.lr.ph.preheader ], [ %.256.i, %.lr.ph ] ; 7 uses
  %.053.i.lcssa = phi i32 [ %i.r, %.preheader37 ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.r, %.lr.ph.preheader ], [ %i.ae, %.lr.ph ]
  store i32 %.053.i.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.i.lcssa, ptr noundef %i.ah) #6, !inline_history !411 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_49_rule.exit.thread.sink.split.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.i.lcssa, 0
  br i1 %i.aj, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.i.lcssa, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.i.lcssa, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.lr.ph53
  %unroll_iter = and i64 %.058.i.lcssa, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph53.new
  %.0.i52 = phi i64 [ 0, %.lr.ph53.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.0.i52
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.0.i52, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.0.i52, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.0.i52, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.0.i52, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !413

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph53
  %.0.i52.epil.init = phi i64 [ 0, %.lr.ph53 ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.0.i52.epil = phi i64 [ %.0.i52.epil.init, %.epil.preheader ], [ %i.bk, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bg = getelementptr [8 x i8], ptr %.054.i.lcssa, i64 %.0.i52.epil
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.0.i52.epil
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !31
  %i.bk = add nuw nsw i64 %.0.i52.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !414

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef %.054.i.lcssa) #6, !inline_history !411
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !26
  %i.bl = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.p

_loop0_49_rule.exit.thread.sink.split.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.i44.lcssa59.sink = phi ptr [ %.054.i.lcssa, %.critedge.i ], [ %.054.i4463, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.i44.lcssa59.sink) #6
  br label %_loop0_49_rule.exit.thread.sink.split.sink.split

_loop0_49_rule.exit.thread.sink.split.sink.split: ; preds = %_loop0_49_rule.exit.thread.sink.split.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bm = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_49_rule.exit.thread.sink.split

_loop0_49_rule.exit.thread.sink.split:            ; preds = %_loop0_49_rule.exit.thread.sink.split.sink.split, %bb.k, %bb.i
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !26
  br label %_loop0_49_rule.exit.thread

_loop0_49_rule.exit.thread:                       ; preds = %_loop0_49_rule.exit.thread.sink.split, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %_loop0_49_rule.exit.thread, %._crit_edge, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %_loop0_49_rule.exit.thread ], [ %i.bl, %._crit_edge ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @keyword_pattern_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not27 = icmp eq ptr %i.k, null
  br i1 %.not27, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6
  %.not28 = icmp eq ptr %i.l, null
  br i1 %.not28, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @pattern_rule(ptr noundef nonnull %0) ; 2 uses
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_key_pattern_pair(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m) #6 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #6
  %.not30 = icmp eq ptr %i.p, null
  br i1 %.not30, label %.thread, label %.thread33

.thread33:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !27
  br label %.thread

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h, %bb.d, %.thread33
  %.2 = phi ptr [ null, %.thread33 ], [ null, %bb.d ], [ null, %bb.j ], [ null, %bb.i ], [ %i.n, %bb.h ]
  %i.q = load i32, ptr %i.a, align 8, !tbaa !26
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !26
  ret ptr %.2
}

declare ptr @_PyAST_Interactive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyPegen_interactive_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_1_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !27
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6 ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04977 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.05076 = phi i64 [ %.151, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05475 = phi ptr [ %.256, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04977, %.05076
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04977, 1
  %i.r = shl i64 %.04977, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05475, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.256 = phi ptr [ %.05475, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.151 = phi i64 [ %.05076, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04977, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.256, i64 %.04977
  store ptr %i.o, ptr %i.u, align 8, !tbaa !31
  %i.v = load i32, ptr %i.i, align 8, !tbaa !28
  %i.w = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 4) #6 ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !415

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05475) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.054.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.256, %bb.i ] ; 7 uses
  %.049.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  %.048.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  store i32 %.048.lcssa, ptr %i.i, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.049.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.049.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.049.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.049.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.049.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.ae = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.n

._crit_edge82.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge82, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge82.loopexit.unr-lcssa, %.lr.ph81
  %.080.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %i.bd, %._crit_edge82.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.080.epil = phi i64 [ %.080.epil.init, %.epil.preheader ], [ %i.aj, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.af = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.080.epil
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !31
  %i.aj = add nuw nsw i64 %.080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge82, label %bb.l, !llvm.loop !416

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit.unr-lcssa, %bb.l, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph81.new
  %.080 = phi i64 [ 0, %.lr.ph81.new ], [ %i.bd, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.new ], [ %niter.next.3, %bb.m ]
  %i.ak = getelementptr [8 x i8], ptr %.054.lcssa, i64 %.080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.080
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = or disjoint i64 %.080, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ao
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !31
  %i.at = or disjoint i64 %.080, 2                ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.at
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !31
  %i.ay = or disjoint i64 %.080, 3                ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %.054.lcssa, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ay
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !31
  %i.bd = add nuw nsw i64 %.080, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge82.loopexit.unr-lcssa, label %bb.m, !llvm.loop !417

bb.n:                                             ; preds = %bb.k, %._crit_edge82, %bb.g, %bb.d, %bb.j, %bb.f
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.aa, %._crit_edge82 ], [ %i.aa, %bb.k ]
  %i.be = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !26
  ret ptr %.7
}

declare ptr @_PyAST_Expression(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyAST_FunctionType(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gather_105_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = icmp eq i32 %i.b, 6000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyThreadState_Get() #6
  %i.f = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.e, i32 noundef 1) #6
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !26
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !27
  %.not67.i = icmp eq i32 %i.q, 0
  br i1 %.not67.i, label %bb.j, label %_loop0_104_rule.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 4 uses
  %.not68.i = icmp eq ptr %i.s, null
  br i1 %.not68.i, label %_loop0_104_rule.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.g, align 8, !tbaa !27
  %.not69.i = icmp eq i32 %i.t, 0
  br i1 %.not69.i, label %.preheader77.i, label %_loop0_104_rule.exit.thread

.preheader77.i:                                   ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not7081.i = icmp eq ptr %i.u, null
  br i1 %.not7081.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader77.i
  %i.v = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i31 = icmp eq ptr %i.v, null
  br i1 %.not71.i31, label %.critedge.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.m
  %i.w = tail call ptr @expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not71.i = icmp eq ptr %i.w, null
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph, !llvm.loop !418

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.x = phi ptr [ %i.w, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ]
  %.05982.i34 = phi i64 [ %.160.i, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 4 uses
  %.05883.i33 = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.05484.i32 = phi ptr [ %.256.i, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = icmp eq i64 %.05883.i33, %.05982.i34
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.z = shl i64 %.05982.i34, 1
  %i.aa = shl i64 %.05982.i34, 4
  %i.ab = tail call ptr @PyMem_Realloc(ptr noundef %.05484.i32, i64 noundef %i.aa) #6 ; 2 uses
  %.not72.not.i = icmp eq ptr %i.ab, null
  br i1 %.not72.not.i, label %_loop0_104_rule.exit.thread.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %.160.i = phi i64 [ %.05982.i34, %.lr.ph ], [ %i.z, %bb.l ]
  %.256.i = phi ptr [ %.05484.i32, %.lr.ph ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i64 %.05883.i33, 1                  ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %.256.i, i64 %.05883.i33
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.af = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not70.i = icmp eq ptr %i.af, null
  br i1 %.not70.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !418

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !418

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %..critedge.i.loopexit_crit_edge, %.preheader77.i
  %.058.lcssa.i = phi i64 [ 0, %.preheader77.i ], [ 0, %.lr.ph.i.preheader ], [ %i.ac, %..critedge.i.loopexit_crit_edge ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.s, %.preheader77.i ], [ %i.s, %.lr.ph.i.preheader ], [ %.256.i, %..critedge.i.loopexit_crit_edge ], [ %.256.i, %.lr.ph.i ] ; 7 uses
  %.053.lcssa.i = phi i32 [ %i.r, %.preheader77.i ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ae, %..critedge.i.loopexit_crit_edge ], [ %i.ae, %.lr.ph.i ]
  store i32 %.053.lcssa.i, ptr %i.i, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.058.lcssa.i, ptr noundef %i.ah) #6 ; 3 uses
  %.not73.i = icmp eq ptr %i.ai, null
  br i1 %.not73.i, label %_loop0_104_rule.exit.thread.sink.split.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.aj = icmp sgt i64 %.058.lcssa.i, 0
  br i1 %i.aj, label %.lr.ph93.i, label %.loopexit

.lr.ph93.i:                                       ; preds = %.preheader.i
  %i.ak = getelementptr i8, ptr %i.ai, i64 8      ; 5 uses
  %xtraiter = and i64 %.058.lcssa.i, 3            ; 3 uses
  %i.al = icmp ult i64 %.058.lcssa.i, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph93.i.new

.lr.ph93.i.new:                                   ; preds = %.lr.ph93.i
  %unroll_iter = and i64 %.058.lcssa.i, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph93.i.new
  %.092.i = phi i64 [ 0, %.lr.ph93.i.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.092.i
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !31
  %i.aq = or disjoint i64 %.092.i, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !31
  %i.av = or disjoint i64 %.092.i, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !31
  %i.ba = or disjoint i64 %.092.i, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = add nuw nsw i64 %.092.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !419

_loop0_104_rule.exit.thread.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.054.lcssa.i.sink = phi ptr [ %.054.lcssa.i, %.critedge.i ], [ %.05484.i32, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.054.lcssa.i.sink) #6
  br label %_loop0_104_rule.exit.thread.sink.split

_loop0_104_rule.exit.thread.sink.split:           ; preds = %_loop0_104_rule.exit.thread.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !27
  %i.bg = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_104_rule.exit.thread

_loop0_104_rule.exit.thread:                      ; preds = %_loop0_104_rule.exit.thread.sink.split, %bb.i, %bb.k
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !26
  br label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i
  %.092.i.epil.init = phi i64 [ 0, %.lr.ph93.i ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.092.i.epil = phi i64 [ %.092.i.epil.init, %.epil.preheader ], [ %i.bn, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bj = getelementptr [8 x i8], ptr %.054.lcssa.i, i64 %.092.i.epil
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.092.i.epil
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !31
  %i.bn = add nuw nsw i64 %.092.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !420

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.054.lcssa.i) #6
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !26
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !26
  %i.bq = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.e, %_loop0_104_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.p ], [ %i.bq, %.loopexit ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !26
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !26
  ret ptr %.1
}

declare ptr @_PyPegen_seq_append_to_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!11 = !{!12, !15, i64 40}
!12 = !{!"", !13, i64 0, !15, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !16, i64 32, !15, i64 40, !17, i64 48, !8, i64 56, !8, i64 60, !18, i64 64, !8, i64 72, !19, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !20, i64 112, !14, i64 136, !8, i64 144, !8, i64 148, !8, i64 152, !22, i64 156}
!13 = !{!"p1 _ZTS9tok_state", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"any p2 pointer", !14, i64 0}
!16 = !{!"p1 _ZTS6_arena", !14, i64 0}
!17 = !{!"p2 omnipotent char", !15, i64 0}
!18 = !{!"p1 int", !14, i64 0}
!19 = !{!"p1 _ZTS7_object", !14, i64 0}
!20 = !{!"", !14, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"long", !9, i64 0}
!22 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!23 = !{!12, !8, i64 56}
!24 = !{!12, !17, i64 48}
!25 = !{!12, !8, i64 60}
!26 = !{!12, !8, i64 144}
!27 = !{!12, !8, i64 96}
!28 = !{!12, !8, i64 16}
!29 = !{!12, !8, i64 20}
!30 = !{!12, !15, i64 8}
!31 = !{!14, !14, i64 0}
!32 = !{!33, !8, i64 20}
!33 = !{!"", !8, i64 0, !19, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !34, i64 40, !19, i64 48}
!34 = !{!"p1 _ZTS5_memo", !14, i64 0}
!35 = !{!33, !8, i64 24}
!36 = !{!33, !8, i64 28}
!37 = !{!33, !8, i64 32}
!38 = !{!12, !16, i64 32}
!39 = distinct !{null}
!40 = distinct !{null, null}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !15, i64 8}
!44 = !{!"", !21, i64 0, !15, i64 8}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = !{!12, !8, i64 148}
!51 = distinct !{null}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42}
!54 = distinct !{!54, !47}
!55 = !{!19, !19, i64 0}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{null, null}
!59 = !{!60, !8, i64 40}
!60 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = distinct !{!63, !47}
!64 = distinct !{null}
!65 = !{!12, !8, i64 104}
!66 = !{!60, !8, i64 44}
!67 = distinct !{!67, !42}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !47}
!70 = distinct !{null}
!71 = !{!9, !9, i64 0}
!72 = distinct !{null}
!73 = !{!60, !8, i64 48}
!74 = !{!60, !8, i64 52}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTS5_expr", !14, i64 0}
!77 = distinct !{null}
!78 = distinct !{null}
!79 = !{!80, !8, i64 64}
!80 = !{!"_stmt", !8, i64 0, !9, i64 8, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76}
!81 = !{!80, !8, i64 68}
!82 = !{!80, !8, i64 72}
!83 = !{!80, !8, i64 76}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = distinct !{null}
!87 = distinct !{null}
!88 = distinct !{null}
!89 = distinct !{null}
!90 = distinct !{null}
!91 = distinct !{null}
!92 = !{ptr @for_if_clauses_rule}
!93 = distinct !{null}
!94 = distinct !{null, null}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !47}
!98 = distinct !{null}
!99 = distinct !{null, null}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !42}
!102 = distinct !{!102, !47}
!103 = distinct !{null}
!104 = distinct !{null, null}
!105 = distinct !{!105, !42}
!106 = distinct !{!106, !42}
!107 = distinct !{!107, !47}
!108 = distinct !{null}
!109 = distinct !{null, null}
!110 = distinct !{null, null, null}
!111 = distinct !{null, null, null}
!112 = distinct !{null, null, null}
!113 = distinct !{null, null, null}
!114 = distinct !{!114, !42}
!115 = distinct !{!115, !42}
!116 = distinct !{!116, !47}
!117 = distinct !{null}
!118 = distinct !{null, null}
!119 = distinct !{null, null, null}
!120 = distinct !{null, null, null, null}
end_hunk_35
