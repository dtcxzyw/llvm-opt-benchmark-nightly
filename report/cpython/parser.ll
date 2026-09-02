Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/parser?download=true
inline.NumInlined: 275
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@star_expressions_rule:bb.a
  br label %_loop1_56_rule.exit.thread.sink.split

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.new
  %.0.i157 = phi i64 [ 0, %.lr.ph.new ], [ %i.cf, %bb.ac ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ac ]
  %i.bm = getelementptr [8 x i8], ptr %.055.i, i64 %.0.i157
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %.0.i157
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !30
  %i.bq = or disjoint i64 %.0.i157, 1             ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %.055.i, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !30
  %i.bt = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bq
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !30
  %i.bv = or disjoint i64 %.0.i157, 2             ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %.055.i, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %i.bv
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !30
  %i.ca = or disjoint i64 %.0.i157, 3             ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %.055.i, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  %i.cd = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.ca
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !30
  %i.cf = add nuw nsw i64 %.0.i157, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !165

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0.i157.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader
  %.0.i157.epil = phi i64 [ %.0.i157.epil.init, %.epil.preheader ], [ %i.ck, %bb.ad ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ad ]
  %i.cg = getelementptr [8 x i8], ptr %.055.i, i64 %.0.i157.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30
  %i.ci = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %.0.i157.epil
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !30
  %i.ck = add nuw nsw i64 %.0.i157.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ad, !llvm.loop !166

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ad, %.preheader
  tail call void @PyMem_Free(ptr noundef %.055.i) #6, !inline_history !162
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !25
  %i.cl = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.cm = load i32, ptr %i.g, align 8, !tbaa !26
  %.not95 = icmp eq i32 %i.cm, 0
  br i1 %.not95, label %bb.ae, label %.thread133

.thread133:                                       ; preds = %._crit_edge
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread126

bb.ae:                                            ; preds = %._crit_edge
  %i.cn = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.thread126, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr i8, ptr %i.cn, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !35
  %i.cr = getelementptr i8, ptr %i.cn, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !36
  %i.ct = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.bh) #6 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ag, label %CHECK_CALL.exit

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %CHECK_CALL.exit

CHECK_CALL.exit:                                  ; preds = %bb.af, %bb.ag
  %i.cv = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.cw = tail call ptr @_PyAST_Tuple(ptr noundef %i.ct, i32 noundef 1, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.cq, i32 noundef %i.cs, ptr noundef %i.cv) #6 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ah, label %.thread126

bb.ah:                                            ; preds = %CHECK_CALL.exit
  %i.cy = tail call ptr @PyErr_Occurred() #6
  %.not96 = icmp eq ptr %i.cy, null
  br i1 %.not96, label %.thread126, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread126

_loop1_56_rule.exit.thread.sink.split:            ; preds = %bb.p, %bb.m, %_loop1_56_rule.exit.thread121, %bb.o, %bb.aa, %bb.y
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !25
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr %i.a, align 8, !tbaa !25
  br label %_loop1_56_rule.exit.thread

_loop1_56_rule.exit.thread:                       ; preds = %_loop1_56_rule.exit.thread.sink.split, %bb.i
  %.pr = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %.not97 = icmp eq i32 %.pr, 0
  br i1 %.not97, label %bb.aj, label %.thread126

bb.aj:                                            ; preds = %_loop1_56_rule.exit.thread
  %i.db = tail call fastcc ptr @star_expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not98 = icmp eq ptr %i.db, null
  br i1 %.not98, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dc = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not99 = icmp eq ptr %i.dc, null
  br i1 %.not99, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dd = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.thread126, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = getelementptr i8, ptr %i.dd, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !35
  %i.dh = getelementptr i8, ptr %i.dd, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !36
  %i.dj = tail call ptr @_PyPegen_singleton_seq(ptr noundef nonnull %0, ptr noundef nonnull %i.db) #6 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.an, label %CHECK_CALL.exit103

bb.an:                                            ; preds = %bb.am
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %CHECK_CALL.exit103

CHECK_CALL.exit103:                               ; preds = %bb.am, %bb.an
  %i.dl = getelementptr i8, ptr %0, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37
  %i.dn = tail call ptr @_PyAST_Tuple(ptr noundef %i.dj, i32 noundef 1, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.dg, i32 noundef %i.di, ptr noundef %i.dm) #6 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ao, label %.thread126

bb.ao:                                            ; preds = %CHECK_CALL.exit103
  %i.dp = tail call ptr @PyErr_Occurred() #6
  %.not100 = icmp eq ptr %i.dp, null
  br i1 %.not100, label %.thread126, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread126

bb.aq:                                            ; preds = %bb.ak, %bb.aj
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.dq = load i32, ptr %i.g, align 8, !tbaa !26
  %.not101 = icmp eq i32 %i.dq, 0
  br i1 %.not101, label %bb.ar, label %.thread126

bb.ar:                                            ; preds = %bb.aq
  %i.dr = tail call fastcc ptr @star_expression_rule(ptr noundef nonnull %0) ; 2 uses
  %.not102 = icmp eq ptr %i.dr, null
  br i1 %.not102, label %bb.as, label %.thread126

bb.as:                                            ; preds = %bb.ar
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread126

.thread126:                                       ; preds = %bb.ar, %bb.as, %bb.ah, %CHECK_CALL.exit, %bb.ao, %CHECK_CALL.exit103, %bb.aq, %bb.al, %_loop1_56_rule.exit.thread, %.thread133, %bb.ae, %bb.h, %bb.d, %bb.ap, %bb.ai, %bb.g
  %.8 = phi ptr [ null, %bb.ap ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.aq ], [ null, %bb.ae ], [ null, %bb.ai ], [ null, %bb.al ], [ null, %bb.h ], [ null, %_loop1_56_rule.exit.thread ], [ null, %.thread133 ], [ %i.dr, %bb.ar ], [ %i.cw, %CHECK_CALL.exit ], [ null, %bb.as ], [ null, %bb.ah ], [ null, %bb.ao ], [ %i.dn, %CHECK_CALL.exit103 ]
  %i.ds = load i32, ptr %i.a, align 8, !tbaa !25
  %i.dt = add i32 %i.ds, -1
  store i32 %i.dt, ptr %i.a, align 8, !tbaa !25
  ret ptr %.8
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @_RAISE_SYNTAX_ERROR_INVALID_TARGET(ptr noundef %0, i32 noundef range(i32 0, 3) %1, ptr noundef nonnull %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @_PyPegen_get_invalid_target(ptr noundef nonnull %2, i32 noundef %1) #6 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %CHECK_CALL_NULL_ALLOWED.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #6
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %CHECK_CALL_NULL_ALLOWED.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.d, align 8, !tbaa !26
  br label %CHECK_CALL_NULL_ALLOWED.exit.thread

CHECK_CALL_NULL_ALLOWED.exit:                     ; preds = %bb.a
  %3 = and i32 %1, 1
  %or.cond = icmp eq i32 %3, 0
  %.str.60..str.61 = select i1 %or.cond, ptr @.str.60, ptr @.str.61
  %i.e = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !43
  %i.f = getelementptr i8, ptr %i.a, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %i.a, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %i.a, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %i.a, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = sext i32 %i.p to i64
  %i.r = tail call ptr @_PyPegen_get_expr_name(ptr noundef nonnull %i.a) #6
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef %0, ptr noundef %i.e, i64 noundef %i.h, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q, ptr noundef nonnull %.str.60..str.61, ptr noundef %i.r)
  br label %CHECK_CALL_NULL_ALLOWED.exit.thread

CHECK_CALL_NULL_ALLOWED.exit.thread:              ; preds = %bb.c, %bb.b, %CHECK_CALL_NULL_ALLOWED.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_expression_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 18 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !25
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
  %i.h = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %.not53 = icmp eq i32 %i.i, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.b, align 8, !tbaa !25
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.b, align 8, !tbaa !25
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !52
  %i.l = call i32 @_PyPegen_is_memoized(ptr noundef nonnull %0, i32 noundef 1113, ptr noundef nonnull %i.a) #6
  %.not54 = icmp eq i32 %i.l, 0
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.b, align 8, !tbaa !25
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !25
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27   ; 5 uses
  %i.r = getelementptr i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @_PyPegen_fill_token(ptr noundef nonnull %0) #6
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.h, align 8, !tbaa !26
  %i.w = load i32, ptr %i.b, align 8, !tbaa !25
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.b, align 8, !tbaa !25
  br label %.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = sext i32 %i.q to i64
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.af = getelementptr i8, ptr %i.ac, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !34
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !26
  %.not55 = icmp eq i32 %i.ah, 0
  br i1 %.not55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !25
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !25
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ak = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 16) #6
  %.not56 = icmp eq ptr %i.ak, null
  br i1 %.not56, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = call fastcc ptr @bitwise_or_rule(ptr noundef nonnull %0) ; 2 uses
  %.not57 = icmp eq ptr %i.al, null
  br i1 %.not57, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = load i32, ptr %i.b, align 8, !tbaa !25
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.b, align 8, !tbaa !25
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.aq = getelementptr i8, ptr %i.am, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.as = getelementptr i8, ptr %i.am, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !36
  %i.au = getelementptr i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.aw = call ptr @_PyAST_Starred(ptr noundef nonnull %i.al, i32 noundef 1, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ar, i32 noundef %i.at, ptr noundef %i.av) #6 ; 3 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !52
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.r, label %.thread63

bb.r:                                             ; preds = %bb.q
  %i.ay = call ptr @PyErr_Occurred() #6
  %.not58 = icmp eq ptr %i.ay, null
  br i1 %.not58, label %..thread63_crit_edge, label %bb.s

..thread63_crit_edge:                             ; preds = %bb.r
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %.thread63

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.h, align 8, !tbaa !26
  %i.az = load i32, ptr %i.b, align 8, !tbaa !25
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr %i.b, align 8, !tbaa !25
  br label %.thread

bb.t:                                             ; preds = %bb.n, %bb.m
  store i32 %i.q, ptr %i.p, align 8, !tbaa !27
  %i.bb = load i32, ptr %i.h, align 8, !tbaa !26
  %.not59 = icmp eq i32 %i.bb, 0
  br i1 %.not59, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = load i32, ptr %i.b, align 8, !tbaa !25
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr %i.b, align 8, !tbaa !25
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.be = call ptr @expression_rule(ptr noundef nonnull %0) ; 3 uses
  %.not60 = icmp eq ptr %i.be, null
  br i1 %.not60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.be, ptr %i.a, align 8, !tbaa !52
  br label %.thread63

bb.x:                                             ; preds = %bb.v
  store i32 %i.q, ptr %i.p, align 8, !tbaa !27
  store ptr null, ptr %i.a, align 8, !tbaa !52
  br label %.thread63

.thread63:                                        ; preds = %..thread63_crit_edge, %bb.q, %bb.w, %bb.x
  %i.bf = phi ptr [ %.pre, %..thread63_crit_edge ], [ %i.aw, %bb.q ], [ %i.be, %bb.w ], [ null, %bb.x ]
  %i.bg = call i32 @_PyPegen_insert_memo(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 1113, ptr noundef %i.bf) #6 ; 0 uses
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !25
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.b, align 8, !tbaa !25
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.p, %bb.j, %.thread63, %bb.u, %bb.l, %bb.g
  %.5 = phi ptr [ %i.o, %bb.g ], [ null, %bb.j ], [ null, %bb.l ], [ %i.bj, %.thread63 ], [ null, %bb.u ], [ null, %bb.p ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.e
  %.6 = phi ptr [ null, %bb.e ], [ %.5, %.thread ]
  ret ptr %.6
end_hunk_0
