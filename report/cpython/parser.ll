Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/parser?download=true
inline.NumInlined: 275
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@star_atom_rule:bb.a
  %i.ap = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6
  %.not119 = icmp eq ptr %i.ap, null
  br i1 %.not119, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.thread139, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr i8, ptr %i.aq, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !35
  %i.au = getelementptr i8, ptr %i.aq, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !36
  %i.aw = getelementptr i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.ay = tail call ptr @_PyAST_Tuple(ptr noundef %i.an, i32 noundef 2, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.at, i32 noundef %i.av, ptr noundef %i.ax) #6 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.x, label %.thread139

bb.x:                                             ; preds = %bb.w
  %i.ba = tail call ptr @PyErr_Occurred() #6
  %.not120 = icmp eq ptr %i.ba, null
  br i1 %.not120, label %.thread139, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread139

bb.z:                                             ; preds = %bb.u, %bb.s
  %.pr = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %.not121 = icmp eq i32 %.pr, 0
  br i1 %.not121, label %bb.aa, label %.thread139

bb.aa:                                            ; preds = %bb.z
  %i.bb = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 9) #6
  %.not122 = icmp eq ptr %i.bb, null
  br i1 %.not122, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = tail call fastcc ptr @star_targets_list_seq_rule(ptr noundef nonnull %0)
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !26
  %.not123 = icmp eq i32 %i.bd, 0
  br i1 %.not123, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.be = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 10) #6
  %.not124 = icmp eq ptr %i.be, null
  br i1 %.not124, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.thread139, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = getelementptr i8, ptr %i.bf, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !35
  %i.bj = getelementptr i8, ptr %i.bf, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr i8, ptr %0, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !37
  %i.bn = tail call ptr @_PyAST_List(ptr noundef %i.bc, i32 noundef 2, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef %i.bm) #6 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.af, label %.thread139

bb.af:                                            ; preds = %bb.ae
  %i.bp = tail call ptr @PyErr_Occurred() #6
  %.not125 = icmp eq ptr %i.bp, null
  br i1 %.not125, label %.thread139, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread139

bb.ah:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread139

.thread139:                                       ; preds = %bb.ah, %bb.k, %bb.j, %bb.q, %bb.p, %bb.x, %bb.w, %bb.af, %bb.ae, %bb.ad, %bb.z, %.thread146, %bb.v, %bb.r, %bb.l, %bb.h, %bb.d, %bb.ag, %bb.y, %.thread135, %.thread128, %bb.g
  %.10 = phi ptr [ null, %bb.ag ], [ null, %bb.g ], [ null, %bb.d ], [ null, %.thread128 ], [ null, %bb.h ], [ null, %.thread135 ], [ null, %bb.l ], [ null, %bb.ad ], [ null, %bb.v ], [ null, %bb.y ], [ null, %bb.r ], [ null, %bb.z ], [ null, %.thread146 ], [ null, %bb.ah ], [ %i.ay, %bb.w ], [ %i.ai, %bb.p ], [ %i.ab, %bb.j ], [ null, %bb.k ], [ null, %bb.q ], [ null, %bb.x ], [ null, %bb.af ], [ %i.bn, %bb.ae ]
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !25
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr %i.a, align 8, !tbaa !25
  ret ptr %.10
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_targets_tuple_seq_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 20 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.g = getelementptr i8, ptr %0, i64 96         ; 13 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not44 = icmp eq i32 %i.h, 0
  br i1 %.not44, label %bb.e, label %.thread62

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 3 uses
  %i.k = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not45 = icmp eq ptr %i.k, null
  br i1 %.not45, label %_loop1_100_rule.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !25
  %i.n = icmp eq i32 %i.l, 6000
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyThreadState_Get() #6, !inline_history !152
  %i.p = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.o, i32 noundef 1) #6, !inline_history !152
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !152
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66.i = icmp eq i32 %i.q, 0
  br i1 %.not66.i, label %bb.j, label %_loop1_100_rule.exit.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.i, align 8, !tbaa !27
  %i.s = tail call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !152 ; 3 uses
  %.not67.i = icmp eq ptr %i.s, null
  br i1 %.not67.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.t = tail call ptr @PyErr_NoMemory() #6, !inline_history !152 ; 0 uses
  br label %_loop1_100_rule.exit.thread.sink.split

bb.l:                                             ; preds = %bb.j
  %i.u = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68.i = icmp eq i32 %i.u, 0
  br i1 %.not68.i, label %.preheader77, label %_loop1_100_rule.exit.thread.sink.split

.preheader77:                                     ; preds = %bb.l
  %i.v = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !25
  %i.x = icmp eq i32 %i.v, 6000
  br i1 %i.x, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader77
  %i.y = tail call ptr @PyThreadState_Get() #6, !inline_history !153
  %i.z = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.y, i32 noundef 1) #6, !inline_history !153
  %.not.i108 = icmp eq i32 %i.z, 0
  br i1 %.not.i108, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader77
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !153
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !26
  %.not22.i = icmp eq i32 %i.aa, 0
  br i1 %.not22.i, label %bb.p, label %._crit_edge.thread

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !153
  %.not23.i = icmp eq ptr %i.ab, null
  br i1 %.not23.i, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0), !inline_history !153 ; 2 uses
  %.not24.i = icmp eq ptr %i.ac, null
  br i1 %.not24.i, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.p, %bb.q, %bb.o
  %storemerge.in.i110121 = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i111122 = add i32 %storemerge.in.i110121, -1
  store i32 %storemerge.i111122, ptr %i.a, align 8, !tbaa !25
  store i32 %i.r, ptr %i.i, align 8, !tbaa !27
  br label %bb.aa

.lr.ph:                                           ; preds = %bb.q, %bb.x
  %i.ad = phi ptr [ %i.as, %bb.x ], [ %i.ac, %bb.q ]
  %.051.i84 = phi i64 [ %i.aj, %bb.x ], [ 0, %bb.q ] ; 7 uses
  %.052.i83 = phi i64 [ %.1.i, %bb.x ], [ 1, %bb.q ] ; 2 uses
  %.055.i82 = phi ptr [ %.2.i, %bb.x ], [ %i.s, %bb.q ] ; 3 uses
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge = add i32 %storemerge.in, -1        ; 2 uses
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !25
  %i.ae = icmp eq i64 %.051.i84, %.052.i83
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.af = shl i64 %.051.i84, 4
  %i.ag = tail call ptr @PyMem_Realloc(ptr noundef %.055.i82, i64 noundef %i.af) #6, !inline_history !152 ; 2 uses
  %.not70.not.i = icmp eq ptr %i.ag, null
  br i1 %.not70.not.i, label %bb.y, label %._crit_edge150

._crit_edge150:                                   ; preds = %bb.r
  %i.ah = shl i64 %.051.i84, 1
  %.pre = load i32, ptr %i.a, align 8, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge150, %.lr.ph
  %i.ai = phi i32 [ %storemerge, %.lr.ph ], [ %.pre, %._crit_edge150 ] ; 2 uses
  %.2.i = phi ptr [ %.055.i82, %.lr.ph ], [ %i.ag, %._crit_edge150 ] ; 11 uses
  %.1.i = phi i64 [ %.052.i83, %.lr.ph ], [ %i.ah, %._crit_edge150 ]
  %i.aj = add i64 %.051.i84, 1                    ; 5 uses
  %i.ak = getelementptr [8 x i8], ptr %.2.i, i64 %.051.i84
  store ptr %i.ad, ptr %i.ak, align 8, !tbaa !30
  %i.al = load i32, ptr %i.i, align 8, !tbaa !27
  %i.am = add i32 %i.ai, 1
  store i32 %i.am, ptr %i.a, align 8, !tbaa !25
  %i.an = icmp eq i32 %i.ai, 6000
  br i1 %i.an, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = tail call ptr @PyThreadState_Get() #6, !inline_history !153
  %i.ap = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ao, i32 noundef 1) #6, !inline_history !153
  %.not.i112 = icmp eq i32 %i.ap, 0
  br i1 %.not.i112, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !153
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !26
  %.not22.i113 = icmp eq i32 %i.aq, 0
  br i1 %.not22.i113, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !153
  %.not23.i117 = icmp eq ptr %i.ar, null
  br i1 %.not23.i117, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0), !inline_history !153 ; 2 uses
  %.not24.i118 = icmp eq ptr %i.as, null
  br i1 %.not24.i118, label %._crit_edge, label %.lr.ph, !llvm.loop !154

bb.y:                                             ; preds = %bb.r
  tail call void @PyMem_Free(ptr noundef %.055.i82) #6, !inline_history !152
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.at = tail call ptr @PyErr_NoMemory() #6, !inline_history !152 ; 0 uses
  br label %_loop1_100_rule.exit.thread.sink.split

._crit_edge:                                      ; preds = %bb.v, %bb.w, %bb.x
  %storemerge.in.i115125 = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i116126 = add i32 %storemerge.in.i115125, -1
  store i32 %storemerge.i116126, ptr %i.a, align 8, !tbaa !25
  store i32 %i.al, ptr %i.i, align 8, !tbaa !27
  %i.au = icmp eq i64 %i.aj, 0
  br i1 %i.au, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.av = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71.i = icmp eq i32 %i.av, 0
  br i1 %.not71.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.thread, %bb.z, %._crit_edge
  %.055.i.lcssa103 = phi ptr [ %i.s, %._crit_edge.thread ], [ %.2.i, %bb.z ], [ %.2.i, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.i.lcssa103) #6, !inline_history !152
  br label %_loop1_100_rule.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.aw = getelementptr i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.ay = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.aj, ptr noundef %i.ax) #6, !inline_history !152 ; 3 uses
  %.not72.i = icmp eq ptr %i.ay, null
  br i1 %.not72.i, label %_loop1_100_rule.exit.thread57, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %i.az = icmp ult i64 %.051.i84, 9223372036854775807
  br i1 %i.az, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %.preheader
  %i.ba = getelementptr i8, ptr %i.ay, i64 8      ; 5 uses
  %xtraiter = and i64 %i.aj, 3                    ; 3 uses
  %i.bb = icmp ult i64 %.051.i84, 3
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter = and i64 %i.aj, -4
  br label %bb.ac

_loop1_100_rule.exit.thread57:                    ; preds = %bb.ab
  tail call void @PyMem_Free(ptr noundef nonnull %.2.i) #6, !inline_history !152
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.bc = tail call ptr @PyErr_NoMemory() #6, !inline_history !152 ; 0 uses
  br label %_loop1_100_rule.exit.thread.sink.split

bb.ac:                                            ; preds = %bb.ac, %.lr.ph88.new
  %.0.i87 = phi i64 [ 0, %.lr.ph88.new ], [ %i.bw, %bb.ac ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph88.new ], [ %niter.next.3, %bb.ac ]
  %i.bd = getelementptr [8 x i8], ptr %.2.i, i64 %.0.i87
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %.0.i87
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !30
  %i.bh = or disjoint i64 %.0.i87, 1              ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %.2.i, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !30
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !30
  %i.bm = or disjoint i64 %.0.i87, 2              ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %.2.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bm
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !30
  %i.br = or disjoint i64 %.0.i87, 3              ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %.2.i, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.br
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !30
  %i.bw = add nuw nsw i64 %.0.i87, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge89.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !155

._crit_edge89.loopexit.unr-lcssa:                 ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge89, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge89.loopexit.unr-lcssa, %.lr.ph88
  %.0.i87.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %i.bw, %._crit_edge89.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader
  %.0.i87.epil = phi i64 [ %.0.i87.epil.init, %.epil.preheader ], [ %i.cb, %bb.ad ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ad ]
  %i.bx = getelementptr [8 x i8], ptr %.2.i, i64 %.0.i87.epil
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30
  %i.bz = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %.0.i87.epil
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !30
  %i.cb = add nuw nsw i64 %.0.i87.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge89, label %bb.ad, !llvm.loop !156

._crit_edge89:                                    ; preds = %._crit_edge89.loopexit.unr-lcssa, %bb.ad, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2.i) #6, !inline_history !152
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !25
  %i.cc = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.cd = load i32, ptr %i.g, align 8, !tbaa !26
  %.not47 = icmp eq i32 %i.cd, 0
  br i1 %.not47, label %bb.ae, label %.thread68

.thread68:                                        ; preds = %._crit_edge89
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread62

bb.ae:                                            ; preds = %._crit_edge89
  %i.ce = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ay) #6 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.af, label %.thread62

bb.af:                                            ; preds = %bb.ae
  %i.cg = tail call ptr @PyErr_Occurred() #6
  %.not48 = icmp eq ptr %i.cg, null
  br i1 %.not48, label %.thread62, label %.thread65

.thread65:                                        ; preds = %bb.af
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread62

_loop1_100_rule.exit.thread.sink.split:           ; preds = %bb.l, %bb.i, %_loop1_100_rule.exit.thread57, %bb.k, %bb.aa, %bb.y
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !25
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr %i.a, align 8, !tbaa !25
  br label %_loop1_100_rule.exit.thread

_loop1_100_rule.exit.thread:                      ; preds = %_loop1_100_rule.exit.thread.sink.split, %bb.e
  %.pr = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %.not49 = icmp eq i32 %.pr, 0
  br i1 %.not49, label %bb.ag, label %.thread62

bb.ag:                                            ; preds = %_loop1_100_rule.exit.thread
  %i.cj = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not50 = icmp eq ptr %i.cj, null
  br i1 %.not50, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not51 = icmp eq ptr %i.ck, null
  br i1 %.not51, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = tail call ptr @_PyPegen_singleton_seq(ptr noundef nonnull %0, ptr noundef nonnull %i.cj) #6 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.aj, label %.thread62

bb.aj:                                            ; preds = %bb.ai
  %i.cn = tail call ptr @PyErr_Occurred() #6
  %.not52 = icmp eq ptr %i.cn, null
  br i1 %.not52, label %.thread62, label %.thread74

.thread74:                                        ; preds = %bb.aj
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread62

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread62

.thread62:                                        ; preds = %bb.ak, %bb.af, %bb.ae, %bb.aj, %bb.ai, %_loop1_100_rule.exit.thread, %.thread68, %bb.d, %.thread74, %.thread65
  %.3 = phi ptr [ null, %.thread74 ], [ null, %_loop1_100_rule.exit.thread ], [ null, %.thread65 ], [ null, %bb.d ], [ null, %.thread68 ], [ null, %bb.ak ], [ %i.ce, %bb.ae ], [ null, %bb.af ], [ null, %bb.aj ], [ %i.cl, %bb.ai ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !25
  %i.cp = add i32 %i.co, -1
  store i32 %i.cp, ptr %i.a, align 8, !tbaa !25
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @star_targets_list_seq_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !25
  %i.m = icmp eq i32 %i.k, 6000
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyThreadState_Get() #6, !inline_history !157
  %i.o = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.n, i32 noundef 1) #6, !inline_history !157
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !157
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load i32, ptr %i.g, align 8, !tbaa !26
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.i, label %_gather_99_rule.exit.thread

_gather_99_rule.exit.thread:                      ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 8, !tbaa !25
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @star_target_rule(ptr noundef nonnull %0), !inline_history !157 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  br i1 %.not23.i, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i32 %.pre, 1
end_hunk_0
begin_hunk_1_@_tmp_70_rule:bb.a
  %storemerge107.i = add i32 %storemerge.in106.i, -1
  br label %dict_rule.exit.thread

bb.bl:                                            ; preds = %bb.bk
  %i.ez = load i32, ptr %i.j, align 8, !tbaa !27
  %i.fa = tail call fastcc ptr @_gather_86_rule(ptr noundef nonnull %0), !inline_history !201 ; 3 uses
  %.not24.i.i = icmp eq ptr %i.fa, null
  br i1 %.not24.i.i, label %double_starred_kvpairs_rule.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fb = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6, !inline_history !201 ; 0 uses
  %i.fc = load i32, ptr %i.g, align 8, !tbaa !26
  %.not25.i.i = icmp eq i32 %i.fc, 0
  %storemerge.in100.i = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge101.i = add i32 %storemerge.in100.i, -1 ; 2 uses
  br i1 %.not25.i.i, label %double_starred_kvpairs_rule.exit.thread.i, label %dict_rule.exit.thread

double_starred_kvpairs_rule.exit.thread.i:        ; preds = %bb.bm
  store i32 %storemerge101.i, ptr %i.a, align 8, !tbaa !25
  br label %bb.bn

double_starred_kvpairs_rule.exit.i:               ; preds = %bb.bl
  %.pre88.pre.i = load i32, ptr %i.g, align 8, !tbaa !26
  %i.fd = icmp eq i32 %.pre88.pre.i, 0
  store i32 %i.ez, ptr %i.j, align 8, !tbaa !27
  %storemerge.in.i146 = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i147 = add i32 %storemerge.in.i146, -1 ; 2 uses
  store i32 %storemerge.i147, ptr %i.a, align 8, !tbaa !25
  br i1 %i.fd, label %bb.bn, label %dict_rule.exit.thread

bb.bn:                                            ; preds = %double_starred_kvpairs_rule.exit.i, %double_starred_kvpairs_rule.exit.thread.i
  %i.fe = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 26) #6, !inline_history !200
  %.not72.i = icmp eq ptr %i.fe, null
  br i1 %.not72.i, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ff = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6, !inline_history !200 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fh = load i32, ptr %i.a, align 8, !tbaa !25
  br label %dict_rule.exit.thread

bb.bq:                                            ; preds = %bb.bo
  %i.fi = getelementptr i8, ptr %i.ff, i64 28
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !35
  %i.fk = getelementptr i8, ptr %i.ff, i64 32
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !36
  %i.fm = tail call ptr @_PyPegen_get_keys(ptr noundef nonnull %0, ptr noundef %i.fa) #6, !inline_history !200 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.br, label %CHECK_CALL.exit.i

bb.br:                                            ; preds = %bb.bq
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %CHECK_CALL.exit.i

CHECK_CALL.exit.i:                                ; preds = %bb.br, %bb.bq
  %i.fo = tail call ptr @_PyPegen_get_values(ptr noundef nonnull %0, ptr noundef %i.fa) #6, !inline_history !200 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.bs, label %CHECK_CALL.exit76.i

bb.bs:                                            ; preds = %CHECK_CALL.exit.i
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %CHECK_CALL.exit76.i

CHECK_CALL.exit76.i:                              ; preds = %bb.bs, %CHECK_CALL.exit.i
  %i.fq = getelementptr i8, ptr %0, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !37
  %i.fs = tail call ptr @_PyAST_Dict(ptr noundef %i.fm, ptr noundef %i.fo, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef %i.fj, i32 noundef %i.fl, ptr noundef %i.fr) #6, !inline_history !200 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.bt, label %dict_rule.exit

bb.bt:                                            ; preds = %CHECK_CALL.exit76.i
  %i.fu = tail call ptr @PyErr_Occurred() #6, !inline_history !200
  %.not73.i = icmp eq ptr %i.fu, null
  br i1 %.not73.i, label %dict_rule.exit.thread162, label %dict_rule.exit.thread.thread.sink.split

bb.bu:                                            ; preds = %bb.bn, %bb.bg
  %.pr.i = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.eb, ptr %i.j, align 8, !tbaa !27
  %.not74.i = icmp eq i32 %.pr.i, 0
  br i1 %.not74.i, label %bb.bv, label %dict_rule.exit.thread.thread

bb.bv:                                            ; preds = %bb.bu
  %i.fv = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 25) #6, !inline_history !200
  %.not75.i = icmp eq ptr %i.fv, null
  br i1 %.not75.i, label %dict_rule.exit.thread162, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call fastcc void @invalid_double_starred_kvpairs_rule(ptr noundef nonnull %0)
  br label %dict_rule.exit.thread162

dict_rule.exit.thread162:                         ; preds = %bb.bv, %bb.bw, %bb.bt
  %i.fw = load i32, ptr %i.a, align 8, !tbaa !25
  br label %dict_rule.exit.thread

dict_rule.exit:                                   ; preds = %CHECK_CALL.exit76.i
  %i.fx = load i32, ptr %i.a, align 8, !tbaa !25
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr %i.a, align 8, !tbaa !25
  br label %bb.bz

dict_rule.exit.thread.thread.sink.split:          ; preds = %bb.bt, %bb.bd
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %dict_rule.exit.thread.thread

dict_rule.exit.thread.thread:                     ; preds = %dict_rule.exit.thread.thread.sink.split, %bb.bu, %bb.bb
  %.pre90.i = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge165187 = add i32 %.pre90.i, -1
  store i32 %i.k, ptr %i.j, align 8, !tbaa !27
  br label %bb.ca

dict_rule.exit.thread:                            ; preds = %double_starred_kvpairs_rule.exit.thread103.i, %bb.bm, %double_starred_kvpairs_rule.exit.i, %bb.bf, %bb.bp, %dict_rule.exit.thread162
  %storemerge165.in.ph = phi i32 [ %i.fh, %bb.bp ], [ %i.ep, %bb.bf ], [ %i.fw, %dict_rule.exit.thread162 ], [ %storemerge107.i, %double_starred_kvpairs_rule.exit.thread103.i ], [ %storemerge.i147, %double_starred_kvpairs_rule.exit.i ], [ %storemerge101.i, %bb.bm ]
  %.pr = load i32, ptr %i.g, align 8, !tbaa !26
  %storemerge165 = add i32 %storemerge165.in.ph, -1 ; 2 uses
  store i32 %storemerge165, ptr %i.a, align 8, !tbaa !25
  store i32 %i.k, ptr %i.j, align 8, !tbaa !27
  %.not51 = icmp eq i32 %.pr, 0
  br i1 %.not51, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %dict_rule.exit.thread
  %i.fz = tail call fastcc ptr @set_rule(ptr noundef nonnull %0) ; 2 uses
  %.not52 = icmp eq ptr %i.fz, null
  br i1 %.not52, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 %i.k, ptr %i.j, align 8, !tbaa !27
  br label %bb.bz

bb.bz:                                            ; preds = %dict_rule.exit, %dictcomp_rule.exit, %bb.by, %bb.bx, %bb.ax
  %.4 = phi ptr [ %i.dl, %bb.ax ], [ %i.fs, %dict_rule.exit ], [ %.470.i, %dictcomp_rule.exit ], [ null, %bb.by ], [ %i.fz, %bb.bx ]
  %i.ga = load i32, ptr %i.a, align 8, !tbaa !25
  br label %bb.ca

bb.ca:                                            ; preds = %dict_rule.exit.thread.thread, %dict_rule.exit.thread, %setcomp_rule.exit.thread.thread155, %dictcomp_rule.exit.thread.thread152, %setcomp_rule.exit.thread, %setcomp_rule.exit.thread.thread, %dictcomp_rule.exit.thread, %dictcomp_rule.exit.thread.thread, %bb.bz, %bb.e
  %.sink136 = phi i32 [ %i.i, %bb.e ], [ %i.ce, %dictcomp_rule.exit.thread ], [ %i.du, %setcomp_rule.exit.thread.thread155 ], [ %i.ga, %bb.bz ], [ %i.ca, %dictcomp_rule.exit.thread.thread ], [ %storemerge, %setcomp_rule.exit.thread.thread ], [ %i.dw, %setcomp_rule.exit.thread ], [ %i.cc, %dictcomp_rule.exit.thread.thread152 ], [ %storemerge165, %dict_rule.exit.thread ], [ %storemerge165187, %dict_rule.exit.thread.thread ]
  %.140 = phi ptr [ null, %bb.e ], [ null, %dictcomp_rule.exit.thread ], [ null, %setcomp_rule.exit.thread.thread155 ], [ %.4, %bb.bz ], [ null, %dictcomp_rule.exit.thread.thread ], [ null, %setcomp_rule.exit.thread.thread ], [ null, %setcomp_rule.exit.thread ], [ null, %dictcomp_rule.exit.thread.thread152 ], [ null, %dict_rule.exit.thread ], [ null, %dict_rule.exit.thread.thread ]
  %i.gb = add i32 %.sink136, -1
  store i32 %i.gb, ptr %i.a, align 8, !tbaa !25
  ret ptr %.140
}

declare ptr @_PyPegen_string_token(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_82_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @_tmp_156_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @_tmp_156_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !205

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !206

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !207

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

declare ptr @_PyPegen_concatenate_strings(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_83_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @tstring_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @tstring_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !208

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !209

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !210

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

declare ptr @_PyPegen_concatenate_tstrings(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tstring_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 32 uses
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
  %i.h = getelementptr i8, ptr %0, i64 96         ; 16 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %.not29 = icmp eq i32 %i.i, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.b, align 8, !tbaa !25
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.b, align 8, !tbaa !25
  br label %bb.az

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !52
  %i.l = call i32 @_PyPegen_is_memoized(ptr noundef nonnull %0, i32 noundef 1171, ptr noundef nonnull %i.a) #6
  %.not30 = icmp eq i32 %i.l, 0
  br i1 %.not30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.b, align 8, !tbaa !25
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !25
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %bb.ay

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 16         ; 9 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = load i32, ptr %i.h, align 8, !tbaa !26
  %.not31 = icmp eq i32 %i.r, 0
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.b, align 8, !tbaa !25
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr %i.b, align 8, !tbaa !25
  br label %bb.ay

bb.j:                                             ; preds = %bb.h
  %i.u = call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 62) #6 ; 2 uses
  %.not32 = icmp eq ptr %i.u, null
  br i1 %.not32, label %_loop0_81_rule.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !25
  %i.x = icmp eq i32 %i.v, 6000
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = call ptr @PyThreadState_Get() #6, !inline_history !211
  %i.z = call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.y, i32 noundef 1) #6, !inline_history !211
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !211
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !26
  %.not62.i = icmp eq i32 %i.aa, 0
  br i1 %.not62.i, label %bb.o, label %_loop0_81_rule.exit.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !27
  %i.ac = call ptr @PyMem_Malloc(i64 noundef 8) #6, !inline_history !211 ; 2 uses
  %.not63.i = icmp eq ptr %i.ac, null
  br i1 %.not63.i, label %_loop0_81_rule.exit.thread.sink.split.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !26
  %.not64.i = icmp eq i32 %i.ad, 0
  br i1 %.not64.i, label %.preheader106, label %_loop0_81_rule.exit.thread.sink.split

.preheader106:                                    ; preds = %bb.p
  %i.ae = getelementptr i8, ptr %0, i64 20
  %i.af = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 148
  br label %bb.q

bb.q:                                             ; preds = %.preheader106, %bb.as
  %.053.i = phi i32 [ %i.cw, %bb.as ], [ %i.ab, %.preheader106 ]
  %.051.i = phi ptr [ %.2.i, %bb.as ], [ %i.ac, %.preheader106 ] ; 9 uses
  %.048.i = phi i64 [ %.1.i, %bb.as ], [ 1, %.preheader106 ] ; 4 uses
  %.047.i = phi i64 [ %i.cu, %bb.as ], [ 0, %.preheader106 ] ; 8 uses
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !25
  %i.ak = icmp eq i32 %i.ai, 6000
  br i1 %i.ak, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = call ptr @PyThreadState_Get() #6, !inline_history !212
  %i.am = call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.al, i32 noundef 1) #6, !inline_history !212
  %.not.i36 = icmp eq i32 %i.am, 0
  br i1 %.not.i36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !212
end_hunk_1
begin_hunk_2_@_tmp_10_rule:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @annotated_rhs_rule(ptr noundef nonnull %0) ; 2 uses
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ %i.l, %bb.f ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !25
  ret ptr %.2
}

declare ptr @_PyAST_AnnAssign(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_11_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not33 = icmp eq i32 %i.h, 0
  br i1 %.not33, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 7) #6
  %.not34 = icmp eq ptr %i.k, null
  br i1 %.not34, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @single_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not35 = icmp eq ptr %i.l, null
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6
  %.not36 = icmp eq ptr %i.m, null
  br i1 %.not36, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.n = load i32, ptr %i.g, align 8, !tbaa !26
  %.not37 = icmp eq i32 %i.n, 0
  br i1 %.not37, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = tail call fastcc ptr @single_subscript_attribute_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not38 = icmp eq ptr %i.o, null
  br i1 %.not38, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.h, %bb.d
  %.230 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ %i.l, %bb.g ], [ null, %bb.j ], [ %i.o, %bb.i ]
  %i.p = load i32, ptr %i.a, align 8, !tbaa !25
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.a, align 8, !tbaa !25
  ret ptr %.230
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_12_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 14 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.aa

.preheader75:                                     ; preds = %bb.g
  %i.n = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !25
  %i.p = icmp eq i32 %i.n, 6000
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader75
  %i.q = tail call ptr @PyThreadState_Get() #6, !inline_history !1
  %i.r = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.q, i32 noundef 1) #6, !inline_history !1
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader75
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load i32, ptr %i.g, align 8, !tbaa !26
  %.not22.i = icmp eq i32 %i.s, 0
  br i1 %.not22.i, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %bb.j
  %i.t = tail call fastcc ptr @star_targets_rule(ptr noundef nonnull %0), !inline_history !1 ; 2 uses
  %.not23.i = icmp eq ptr %i.t, null
  br i1 %.not23.i, label %._crit_edge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6, !inline_history !1
  %.not24.i = icmp eq ptr %i.u, null
  br i1 %.not24.i, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.k, %bb.l, %bb.j
  %storemerge.in.i110 = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i111 = add i32 %storemerge.in.i110, -1
  store i32 %storemerge.i111, ptr %i.a, align 8, !tbaa !25
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.v

.lr.ph:                                           ; preds = %bb.l, %bb.s
  %i.v = phi ptr [ %i.aj, %bb.s ], [ %i.t, %bb.l ]
  %.05182 = phi i64 [ %i.ab, %bb.s ], [ 0, %bb.l ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.s ], [ 1, %bb.l ]  ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.s ], [ %i.k, %bb.l ] ; 3 uses
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge = add i32 %storemerge.in, -1        ; 2 uses
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !25
  %i.w = icmp eq i64 %.05182, %.05281
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.x = shl i64 %.05182, 4
  %i.y = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.x) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.y, null
  br i1 %.not70.not, label %bb.t, label %._crit_edge139

._crit_edge139:                                   ; preds = %bb.m
  %i.z = shl i64 %.05182, 1
  %.pre = load i32, ptr %i.a, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge139, %.lr.ph
  %i.aa = phi i32 [ %storemerge, %.lr.ph ], [ %.pre, %._crit_edge139 ] ; 2 uses
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.y, %._crit_edge139 ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.z, %._crit_edge139 ]
  %i.ab = add i64 %.05182, 1                      ; 5 uses
  %i.ac = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !30
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !27
  %i.ae = add i32 %i.aa, 1
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !25
  %i.af = icmp eq i32 %i.aa, 6000
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call ptr @PyThreadState_Get() #6, !inline_history !1
  %i.ah = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.ag, i32 noundef 1) #6, !inline_history !1
  %.not.i101 = icmp eq i32 %i.ah, 0
  br i1 %.not.i101, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !26
  %.not22.i102 = icmp eq i32 %i.ai, 0
  br i1 %.not22.i102, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.aj = tail call fastcc ptr @star_targets_rule(ptr noundef nonnull %0), !inline_history !1 ; 2 uses
  %.not23.i106 = icmp eq ptr %i.aj, null
  br i1 %.not23.i106, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 22) #6, !inline_history !1
  %.not24.i107 = icmp eq ptr %i.ak, null
  br i1 %.not24.i107, label %._crit_edge, label %.lr.ph, !llvm.loop !264

bb.t:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.al = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.q, %bb.r, %bb.s
  %storemerge.in.i104114 = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i105115 = add i32 %storemerge.in.i104114, -1
  store i32 %storemerge.i105115, ptr %i.a, align 8, !tbaa !25
  store i32 %i.ad, ptr %i.i, align 8, !tbaa !27
  %i.am = icmp eq i64 %i.ab, 0
  br i1 %i.am, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.an = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.an, 0
  br i1 %.not71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread, %bb.u, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.u ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ao = getelementptr i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.aq = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.ab, ptr noundef %i.ap) #6 ; 3 uses
  %.not72 = icmp eq ptr %i.aq, null
  br i1 %.not72, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.ar = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ar, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.as = getelementptr i8, ptr %i.aq, i64 8      ; 5 uses
  %xtraiter = and i64 %i.ab, 3                    ; 3 uses
  %i.at = icmp ult i64 %.05182, 3
  br i1 %i.at, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.ab, -4
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.au = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.aa

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bt, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.az, %bb.y ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.av = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %.085.epil
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !30
  %i.az = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.y, !llvm.loop !265

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.y, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bt, %bb.z ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.z ]
  %i.ba = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %.085
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !30
  %i.be = or disjoint i64 %.085, 1                ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %.2, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !30
  %i.bh = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.be
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !30
  %i.bj = or disjoint i64 %.085, 2                ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %.2, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.bj
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !30
  %i.bo = or disjoint i64 %.085, 3                ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %.2, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.br = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bo
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !30
  %i.bt = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.z, !llvm.loop !266

bb.aa:                                            ; preds = %bb.x, %._crit_edge87, %bb.g, %bb.d, %bb.t, %bb.f, %bb.v
  %.7 = phi ptr [ null, %bb.t ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.v ], [ null, %bb.g ], [ %i.aq, %._crit_edge87 ], [ null, %bb.x ]
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

declare ptr @_PyAST_Assign(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @NEW_TYPE_COMMENT(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = tail call ptr @PyBytes_AsString(ptr noundef %i.c) #6 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_PyPegen_new_type_comment(ptr noundef %0, ptr noundef nonnull %i.d) #6 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.h, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.f, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @single_target_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.e, label %.thread61

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 3 uses
  %i.k = tail call fastcc ptr @single_subscript_attribute_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not49 = icmp eq ptr %i.k, null
  br i1 %.not49, label %bb.f, label %.thread61

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.l = load i32, ptr %i.g, align 8, !tbaa !26
  %.not50 = icmp eq i32 %i.l, 0
  br i1 %.not50, label %bb.g, label %.thread61

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0) #6 ; 2 uses
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_set_expr_context(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 2) #6 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.thread61

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #6
  %.not52 = icmp eq ptr %i.p, null
  br i1 %.not52, label %.thread61, label %.thread64

.thread64:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread61

bb.j:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.q = load i32, ptr %i.g, align 8, !tbaa !26
  %.not53 = icmp eq i32 %i.q, 0
  br i1 %.not53, label %bb.k, label %.thread61

bb.k:                                             ; preds = %bb.j
  %i.r = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 7) #6
  %.not54 = icmp eq ptr %i.r, null
  br i1 %.not54, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call fastcc ptr @single_target_rule(ptr noundef nonnull %0) ; 2 uses
  %.not55 = icmp eq ptr %i.s, null
  br i1 %.not55, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6
  %.not56 = icmp eq ptr %i.t, null
  br i1 %.not56, label %bb.n, label %.thread61

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread61

.thread61:                                        ; preds = %bb.e, %bb.m, %bb.n, %bb.i, %bb.h, %bb.j, %bb.f, %bb.d, %.thread64
  %.343 = phi ptr [ null, %.thread64 ], [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ %i.s, %bb.m ], [ %i.k, %bb.e ], [ null, %bb.n ], [ null, %bb.i ], [ %i.n, %bb.h ]
  %i.u = load i32, ptr %i.a, align 8, !tbaa !25
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.a, align 8, !tbaa !25
  ret ptr %.343
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @augassign_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
end_hunk_2
begin_hunk_3_@import_from_targets_rule:bb.a
  %.not22.i = icmp eq ptr %i.aj, null
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !25
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !25
  br i1 %.not22.i, label %import_from_as_names_rule.exit.thread105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 0 uses
  %i.an = load i32, ptr %i.g, align 8, !tbaa !26
  %.not88 = icmp eq i32 %i.an, 0
  br i1 %.not88, label %bb.p, label %.thread111

.thread111:                                       ; preds = %bb.o
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread117

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6
  %.not89 = icmp eq ptr %i.ao, null
  br i1 %.not89, label %import_from_as_names_rule.exit.thread105, label %.thread117

import_from_as_names_rule.exit.thread105:         ; preds = %bb.n, %bb.i, %bb.p, %import_from_as_names_rule.exit.thread
  %.pr = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %.not90 = icmp eq i32 %.pr, 0
  br i1 %.not90, label %bb.q, label %.thread117

bb.q:                                             ; preds = %import_from_as_names_rule.exit.thread105
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !25
  %i.ar = icmp eq i32 %i.ap, 6000
  br i1 %i.ar, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = tail call ptr @PyThreadState_Get() #6, !inline_history !2
  %i.at = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.as, i32 noundef 1) #6, !inline_history !2
  %.not.i135 = icmp eq i32 %i.at, 0
  br i1 %.not.i135, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.au = load i32, ptr %i.g, align 8, !tbaa !26
  %.not21.i136 = icmp eq i32 %i.au, 0
  br i1 %.not21.i136, label %bb.u, label %import_from_as_names_rule.exit.thread138

bb.u:                                             ; preds = %bb.t
  %i.av = tail call fastcc ptr @_gather_20_rule(ptr noundef nonnull %0), !inline_history !2 ; 2 uses
  %.not22.i137 = icmp eq ptr %i.av, null
  br i1 %.not22.i137, label %import_from_as_names_rule.exit.thread138, label %bb.v

import_from_as_names_rule.exit.thread138:         ; preds = %bb.u, %bb.t
  %storemerge.in.i140 = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i141 = add i32 %storemerge.in.i140, -1
  store i32 %storemerge.i141, ptr %i.a, align 8, !tbaa !25
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %storemerge.in.i = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr %i.a, align 8, !tbaa !25
  %i.aw = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 0, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 12) #6
  %.not92 = icmp eq i32 %i.aw, 0
  br i1 %.not92, label %bb.w, label %.thread117

bb.w:                                             ; preds = %import_from_as_names_rule.exit.thread138, %bb.v
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.ax = load i32, ptr %i.g, align 8, !tbaa !26
  %.not93 = icmp eq i32 %i.ax, 0
  br i1 %.not93, label %bb.x, label %.thread117

bb.x:                                             ; preds = %bb.w
  %i.ay = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 16) #6
  %.not94 = icmp eq ptr %i.ay, null
  br i1 %.not94, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = tail call ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef nonnull %0) #6 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.thread117, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr i8, ptr %i.az, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  %i.bd = getelementptr i8, ptr %i.az, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !36
  %i.bf = getelementptr i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bh = tail call ptr @_PyPegen_alias_for_star(ptr noundef nonnull %0, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.bc, i32 noundef %i.be, ptr noundef %i.bg) #6 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.aa, label %CHECK_CALL.exit

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %CHECK_CALL.exit

CHECK_CALL.exit:                                  ; preds = %bb.z, %bb.aa
  %i.bj = tail call ptr @_PyPegen_singleton_seq(ptr noundef nonnull %0, ptr noundef %i.bh) #6 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.ab, label %.thread117

bb.ab:                                            ; preds = %CHECK_CALL.exit
  %i.bl = tail call ptr @PyErr_Occurred() #6
  %.not95 = icmp eq ptr %i.bl, null
  br i1 %.not95, label %.thread117, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread117

bb.ad:                                            ; preds = %bb.x
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.bm = getelementptr i8, ptr %0, i64 148
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !42
  %.not96 = icmp eq i32 %i.bn, 0
  br i1 %.not96, label %.thread117, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i32, ptr %i.g, align 8, !tbaa !26
  %.not97 = icmp eq i32 %i.bo, 0
  br i1 %.not97, label %bb.af, label %.thread117

bb.af:                                            ; preds = %bb.ae
  %i.bp = tail call fastcc ptr @invalid_import_from_targets_rule(ptr noundef nonnull %0) ; 2 uses
  %.not98 = icmp eq ptr %i.bp, null
  br i1 %.not98, label %.thread124, label %.thread117

.thread124:                                       ; preds = %bb.af
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread117

.thread117:                                       ; preds = %bb.p, %bb.v, %bb.af, %.thread124, %bb.ad, %bb.ab, %CHECK_CALL.exit, %bb.ae, %bb.y, %bb.w, %import_from_as_names_rule.exit.thread105, %.thread111, %bb.h, %bb.d, %bb.ac, %bb.g
  %.6 = phi ptr [ null, %bb.ac ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.ae ], [ null, %bb.h ], [ null, %bb.y ], [ null, %import_from_as_names_rule.exit.thread105 ], [ null, %bb.w ], [ null, %.thread111 ], [ %i.bp, %bb.af ], [ %i.av, %bb.v ], [ null, %bb.ad ], [ %i.aj, %bb.p ], [ null, %.thread124 ], [ null, %bb.ab ], [ %i.bj, %CHECK_CALL.exit ]
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !25
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr %i.a, align 8, !tbaa !25
  ret ptr %.6
}

declare ptr @_PyPegen_checked_future_import(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyPegen_seq_count_dots(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_18_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @_tmp_160_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @_tmp_160_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !294

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !295

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !296

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

declare ptr @_PyAST_ImportFrom(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_160_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 23) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.l = load i32, ptr %i.g, align 8, !tbaa !26
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 52) #6 ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.124 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !25
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !25
  ret ptr %.124
}

declare ptr @_PyPegen_alias_for_star(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @invalid_import_from_targets_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not39 = icmp eq i32 %i.h, 0
  br i1 %.not39, label %bb.e, label %.thread53

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !25
  %i.m = icmp eq i32 %i.k, 6000
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyThreadState_Get() #6, !inline_history !2
  %i.o = tail call i32 @_Py_ReachedRecursionLimitWithMargin(ptr noundef %i.n, i32 noundef 1) #6, !inline_history !2
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_Pypegen_stack_overflow(ptr noundef nonnull %0) #6, !inline_history !2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load i32, ptr %i.g, align 8, !tbaa !26
  %.not21.i = icmp eq i32 %i.p, 0
  br i1 %.not21.i, label %bb.i, label %import_from_as_names_rule.exit.thread

import_from_as_names_rule.exit.thread:            ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 8, !tbaa !25
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !25
  br label %import_from_as_names_rule.exit.thread51

bb.i:                                             ; preds = %bb.h
  %i.s = tail call fastcc ptr @_gather_20_rule(ptr noundef nonnull %0), !inline_history !2
  %.not22.i = icmp eq ptr %i.s, null
  %i.t = load i32, ptr %i.a, align 8, !tbaa !25
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr %i.a, align 8, !tbaa !25
  br i1 %.not22.i, label %import_from_as_names_rule.exit.thread51, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
end_hunk_3
begin_hunk_4_@_gather_132_rule:bb.a
bb.n:                                             ; preds = %bb.n, %.lr.ph93.i.new
  %.092.i = phi i64 [ 0, %.lr.ph93.i.new ], [ %i.bf, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph93.i.new ], [ %niter.next.3, %bb.n ]
  %i.am = getelementptr [8 x i8], ptr %.056.lcssa.i, i64 %.092.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.092.i
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.092.i, 1              ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.056.lcssa.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.092.i, 2              ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.056.lcssa.i, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.092.i, 3              ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.056.lcssa.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.092.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !317

_loop0_131_rule.exit.thread.sink.split.sink.split: ; preds = %bb.l, %.critedge.i
  %.056.lcssa.i.sink = phi ptr [ %.056.lcssa.i, %.critedge.i ], [ %.05683.i33, %bb.l ]
  tail call void @PyMem_Free(ptr noundef %.056.lcssa.i.sink) #6
  br label %_loop0_131_rule.exit.thread.sink.split

_loop0_131_rule.exit.thread.sink.split:           ; preds = %_loop0_131_rule.exit.thread.sink.split.sink.split, %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.bg = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %_loop0_131_rule.exit.thread

_loop0_131_rule.exit.thread:                      ; preds = %_loop0_131_rule.exit.thread.sink.split, %bb.i, %bb.k
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !25
  br label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93.i
  %.092.i.epil.init = phi i64 [ 0, %.lr.ph93.i ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.092.i.epil = phi i64 [ %.092.i.epil.init, %.epil.preheader ], [ %i.bn, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bj = getelementptr [8 x i8], ptr %.056.lcssa.i, i64 %.092.i.epil
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.092.i.epil
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !30
  %i.bn = add nuw nsw i64 %.092.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !318

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %.preheader.i
  tail call void @PyMem_Free(ptr noundef nonnull %.056.lcssa.i) #6
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !25
  %i.bq = tail call ptr @_PyPegen_seq_insert_in_front(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.e, %_loop0_131_rule.exit.thread
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit, %bb.d
  %.119 = phi ptr [ null, %bb.d ], [ null, %bb.p ], [ %i.bq, %.loopexit ]
  %storemerge.in = load i32, ptr %i.a, align 8, !tbaa !25
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !25
  ret ptr %.119
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_133_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.l = load i32, ptr %i.g, align 8, !tbaa !26
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @lambda_param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.124 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !25
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !25
  ret ptr %.124
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_77_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @lambda_param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !319

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !320

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !321

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lambda_slash_with_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = tail call fastcc ptr @_loop0_72_rule(ptr noundef nonnull %0) ; 2 uses
  %.not49 = icmp eq ptr %i.k, null
  br i1 %.not49, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @_loop1_75_rule(ptr noundef nonnull %0) ; 2 uses
  %.not50 = icmp eq ptr %i.l, null
  br i1 %.not50, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 17) #6
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not52 = icmp eq ptr %i.n, null
  br i1 %.not52, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @_PyPegen_slash_with_default(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.q = tail call ptr @PyErr_Occurred() #6
  %.not53 = icmp eq ptr %i.q, null
  br i1 %.not53, label %.thread, label %.thread62

.thread62:                                        ; preds = %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.r = load i32, ptr %i.g, align 8, !tbaa !26
  %.not54 = icmp eq i32 %i.r, 0
  br i1 %.not54, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.s = tail call fastcc ptr @_loop0_72_rule(ptr noundef nonnull %0) ; 2 uses
  %.not55 = icmp eq ptr %i.s, null
  br i1 %.not55, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call fastcc ptr @_loop1_75_rule(ptr noundef nonnull %0) ; 2 uses
  %.not56 = icmp eq ptr %i.t, null
  br i1 %.not56, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 17) #6
  %.not57 = icmp eq ptr %i.u, null
  br i1 %.not57, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 11) #6
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = tail call ptr @_PyPegen_slash_with_default(ptr noundef nonnull %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #6 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.y = tail call ptr @PyErr_Occurred() #6
  %.not59 = icmp eq ptr %i.y, null
  br i1 %.not59, label %.thread, label %.thread69

.thread69:                                        ; preds = %bb.q
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.j, %bb.i, %bb.q, %bb.p, %bb.k, %bb.d, %.thread69, %.thread62
  %.3 = phi ptr [ null, %.thread69 ], [ null, %bb.k ], [ null, %.thread62 ], [ null, %bb.d ], [ null, %bb.r ], [ %i.o, %bb.i ], [ null, %bb.j ], [ null, %bb.q ], [ %i.w, %bb.p ]
  %i.z = load i32, ptr %i.a, align 8, !tbaa !25
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !25
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_75_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @lambda_param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !322

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !323

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !324

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

declare ptr @_PyPegen_slash_with_default(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lambda_param_with_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not47 = icmp eq ptr %i.k, null
  br i1 %.not47, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not48 = icmp eq ptr %i.l, null
  br i1 %.not48, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not49 = icmp eq ptr %i.m, null
  br i1 %.not49, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_name_default_pair(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef null) #6 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #6
  %.not50 = icmp eq ptr %i.p, null
  br i1 %.not50, label %.thread, label %.thread58

.thread58:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.q = load i32, ptr %i.g, align 8, !tbaa !26
  %.not51 = icmp eq i32 %i.q, 0
  br i1 %.not51, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.r = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not52 = icmp eq ptr %i.r, null
  br i1 %.not52, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call fastcc ptr @default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not53 = icmp eq ptr %i.s, null
  br i1 %.not53, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 11) #6
  %.not54 = icmp eq i32 %i.t, 0
  br i1 %.not54, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call ptr @_PyPegen_name_default_pair(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef null) #6 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.w = tail call ptr @PyErr_Occurred() #6
  %.not55 = icmp eq ptr %i.w, null
  br i1 %.not55, label %.thread, label %.thread65

.thread65:                                        ; preds = %bb.o
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.i, %bb.h, %bb.o, %bb.n, %bb.j, %bb.d, %.thread65, %.thread58
  %.3 = phi ptr [ null, %.thread65 ], [ null, %bb.j ], [ null, %.thread58 ], [ null, %bb.d ], [ null, %bb.p ], [ %i.n, %bb.h ], [ null, %bb.i ], [ null, %bb.o ], [ %i.u, %bb.n ]
  %i.x = load i32, ptr %i.a, align 8, !tbaa !25
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.a, align 8, !tbaa !25
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lambda_param_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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

end_hunk_4
begin_hunk_5_@_tmp_126_rule:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 8) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.l = load i32, ptr %i.g, align 8, !tbaa !26
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.124 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !25
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !25
  ret ptr %.124
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lambda_param_maybe_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 3 uses
  %i.k = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not47 = icmp eq ptr %i.k, null
  br i1 %.not47, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @default_rule(ptr noundef nonnull %0)
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not48 = icmp eq i32 %i.m, 0
  br i1 %.not48, label %bb.g, label %.thread61

.thread61:                                        ; preds = %bb.f
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not49 = icmp eq ptr %i.n, null
  br i1 %.not49, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @_PyPegen_name_default_pair(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.l, ptr noundef null) #6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @PyErr_Occurred() #6
  %.not50 = icmp eq ptr %i.q, null
  br i1 %.not50, label %.thread, label %.thread58

.thread58:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.j:                                             ; preds = %bb.g, %bb.e
  %.pr = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %.not51 = icmp eq i32 %.pr, 0
  br i1 %.not51, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.r = tail call fastcc ptr @lambda_param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not52 = icmp eq ptr %i.r, null
  br i1 %.not52, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call fastcc ptr @default_rule(ptr noundef nonnull %0)
  %i.t = load i32, ptr %i.g, align 8, !tbaa !26
  %.not53 = icmp eq i32 %i.t, 0
  br i1 %.not53, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.u = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 11) #6
  %.not54 = icmp eq i32 %i.u, 0
  br i1 %.not54, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = tail call ptr @_PyPegen_name_default_pair(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef %i.s, ptr noundef null) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.x = tail call ptr @PyErr_Occurred() #6
  %.not55 = icmp eq ptr %i.x, null
  br i1 %.not55, label %.thread, label %.thread67

.thread67:                                        ; preds = %bb.o
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.i, %bb.h, %bb.o, %bb.n, %bb.j, %.thread61, %bb.d, %.thread67, %.thread58
  %.3 = phi ptr [ null, %.thread67 ], [ null, %bb.j ], [ null, %.thread58 ], [ null, %bb.d ], [ null, %.thread61 ], [ null, %bb.p ], [ %i.o, %bb.h ], [ null, %bb.i ], [ null, %bb.o ], [ %i.v, %bb.n ]
  %i.y = load i32, ptr %i.a, align 8, !tbaa !25
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.a, align 8, !tbaa !25
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_74_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @lambda_param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !325

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !326

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !327

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop0_73_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not62 = icmp eq i32 %i.h, 0
  br i1 %.not62, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.preheader70, label %bb.n

.preheader70:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @lambda_param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6574 = icmp eq ptr %i.n, null
  br i1 %.not6574, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader70, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader70 ]
  %.04777 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader70 ] ; 5 uses
  %.04876 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader70 ] ; 2 uses
  %.05175 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader70 ] ; 3 uses
  %i.p = icmp eq i64 %.04777, %.04876
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.04777, 1
  %i.r = shl i64 %.04777, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05175, i64 noundef %i.r) #6 ; 2 uses
  %.not66.not = icmp eq ptr %i.s, null
  br i1 %.not66.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05175, %.lr.ph ], [ %i.s, %bb.h ] ; 3 uses
  %.1 = phi i64 [ %.04876, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.04777, 1                       ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.04777
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @lambda_param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not65 = icmp eq ptr %i.w, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !328

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05175) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.i, %.preheader70
  %.053.lcssa = phi i32 [ %i.j, %.preheader70 ], [ %i.v, %bb.i ]
  %.051.lcssa = phi ptr [ %i.k, %.preheader70 ], [ %.2, %bb.i ] ; 7 uses
  %.047.lcssa = phi i64 [ 0, %.preheader70 ], [ %i.t, %bb.i ] ; 5 uses
  store i32 %.053.lcssa, ptr %i.i, align 8, !tbaa !27
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.aa = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %.047.lcssa, ptr noundef %i.z) #6 ; 4 uses
  %.not67 = icmp eq ptr %i.aa, null
  br i1 %.not67, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ab = icmp sgt i64 %.047.lcssa, 0
  br i1 %i.ab, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 5 uses
  %xtraiter = and i64 %.047.lcssa, 3              ; 3 uses
  %i.ad = icmp ult i64 %.047.lcssa, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter = and i64 %.047.lcssa, 9223372036854775804
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge
  tail call void @PyMem_Free(ptr noundef nonnull %.051.lcssa) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
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
  %i.af = getelementptr [8 x i8], ptr %.051.lcssa, i64 %.080.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
end_hunk_5
begin_hunk_6_@invalid_parameters_helper_rule:bb.a
  %i.l = tail call ptr @_PyPegen_singleton_seq(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @PyErr_Occurred() #6
  %.not35 = icmp eq ptr %i.n, null
  br i1 %.not35, label %.thread, label %.thread40

.thread40:                                        ; preds = %bb.g
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.h:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.o = load i32, ptr %i.g, align 8, !tbaa !26
  %.not36 = icmp eq i32 %i.o, 0
  br i1 %.not36, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call fastcc ptr @_loop1_30_rule(ptr noundef nonnull %0) ; 2 uses
  %.not37 = icmp eq ptr %i.p, null
  br i1 %.not37, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.g, %bb.f, %bb.h, %bb.d, %.thread40
  %.229 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ null, %.thread40 ], [ %i.p, %bb.i ], [ null, %bb.j ], [ null, %bb.g ], [ %i.l, %bb.f ]
  %i.q = load i32, ptr %i.a, align 8, !tbaa !25
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !25
  ret ptr %.229
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @param_no_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 3 uses
  %i.k = tail call fastcc ptr @param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not47 = icmp eq ptr %i.k, null
  br i1 %.not47, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not48 = icmp eq ptr %i.l, null
  br i1 %.not48, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 57) #6
  %i.n = load i32, ptr %i.g, align 8, !tbaa !26
  %.not49 = icmp eq i32 %i.n, 0
  br i1 %.not49, label %bb.h, label %.thread61

.thread61:                                        ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @_PyPegen_add_type_comment_to_arg(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.m) #6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @PyErr_Occurred() #6
  %.not50 = icmp eq ptr %i.q, null
  br i1 %.not50, label %.thread, label %.thread58

.thread58:                                        ; preds = %bb.i
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.j:                                             ; preds = %bb.f, %bb.e
  %.pr = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %.not51 = icmp eq i32 %.pr, 0
  br i1 %.not51, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.r = tail call fastcc ptr @param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not52 = icmp eq ptr %i.r, null
  br i1 %.not52, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 57) #6
  %i.t = load i32, ptr %i.g, align 8, !tbaa !26
  %.not53 = icmp eq i32 %i.t, 0
  br i1 %.not53, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.u = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 8) #6
  %.not54 = icmp eq i32 %i.u, 0
  br i1 %.not54, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = tail call ptr @_PyPegen_add_type_comment_to_arg(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef %i.s) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.x = tail call ptr @PyErr_Occurred() #6
  %.not55 = icmp eq ptr %i.x, null
  br i1 %.not55, label %.thread, label %.thread67

.thread67:                                        ; preds = %bb.o
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.i, %bb.h, %bb.o, %bb.n, %bb.j, %.thread61, %bb.d, %.thread67, %.thread58
  %.3 = phi ptr [ null, %.thread67 ], [ null, %bb.j ], [ null, %.thread58 ], [ null, %bb.d ], [ null, %.thread61 ], [ null, %bb.p ], [ %i.o, %bb.h ], [ null, %bb.i ], [ null, %bb.o ], [ %i.v, %bb.n ]
  %i.y = load i32, ptr %i.a, align 8, !tbaa !25
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.a, align 8, !tbaa !25
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_29_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !338

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !339

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !340

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_tmp_125_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.l = load i32, ptr %i.g, align 8, !tbaa !26
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @param_no_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.d
  %.124 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.e ], [ null, %bb.h ], [ %i.m, %bb.g ]
  %i.n = load i32, ptr %i.a, align 8, !tbaa !25
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !25
  ret ptr %.124
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_32_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @param_maybe_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !341

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !342

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !343

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @slash_with_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = tail call fastcc ptr @_loop0_27_rule(ptr noundef nonnull %0) ; 2 uses
  %.not49 = icmp eq ptr %i.k, null
  br i1 %.not49, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @_loop1_30_rule(ptr noundef nonnull %0) ; 2 uses
  %.not50 = icmp eq ptr %i.l, null
  br i1 %.not50, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 17) #6
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not52 = icmp eq ptr %i.n, null
  br i1 %.not52, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @_PyPegen_slash_with_default(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.q = tail call ptr @PyErr_Occurred() #6
  %.not53 = icmp eq ptr %i.q, null
  br i1 %.not53, label %.thread, label %.thread62

.thread62:                                        ; preds = %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %i.r = load i32, ptr %i.g, align 8, !tbaa !26
  %.not54 = icmp eq i32 %i.r, 0
  br i1 %.not54, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.s = tail call fastcc ptr @_loop0_27_rule(ptr noundef nonnull %0) ; 2 uses
  %.not55 = icmp eq ptr %i.s, null
  br i1 %.not55, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call fastcc ptr @_loop1_30_rule(ptr noundef nonnull %0) ; 2 uses
  %.not56 = icmp eq ptr %i.t, null
  br i1 %.not56, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 17) #6
  %.not57 = icmp eq ptr %i.u, null
  br i1 %.not57, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 8) #6
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = tail call ptr @_PyPegen_slash_with_default(ptr noundef nonnull %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #6 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.y = tail call ptr @PyErr_Occurred() #6
  %.not59 = icmp eq ptr %i.y, null
  br i1 %.not59, label %.thread, label %.thread69

.thread69:                                        ; preds = %bb.q
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.j, %bb.i, %bb.q, %bb.p, %bb.k, %bb.d, %.thread69, %.thread62
  %.3 = phi ptr [ null, %.thread69 ], [ null, %bb.k ], [ null, %.thread62 ], [ null, %bb.d ], [ null, %bb.r ], [ %i.o, %bb.i ], [ null, %bb.j ], [ null, %bb.q ], [ %i.w, %bb.p ]
  %i.z = load i32, ptr %i.a, align 8, !tbaa !25
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !25
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_loop1_30_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 8) #6 ; 3 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.l = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.g, align 8, !tbaa !26
  %.not68 = icmp eq i32 %i.m, 0
  br i1 %.not68, label %.preheader75, label %bb.q

.preheader75:                                     ; preds = %bb.g
  %i.n = tail call fastcc ptr @param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not6979 = icmp eq ptr %i.n, null
  br i1 %.not6979, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader75
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader75, %bb.i
  %i.o = phi ptr [ %i.w, %bb.i ], [ %i.n, %.preheader75 ]
  %.05182 = phi i64 [ %i.t, %bb.i ], [ 0, %.preheader75 ] ; 7 uses
  %.05281 = phi i64 [ %.1, %bb.i ], [ 1, %.preheader75 ] ; 2 uses
  %.05580 = phi ptr [ %.2, %bb.i ], [ %i.k, %.preheader75 ] ; 3 uses
  %i.p = icmp eq i64 %.05182, %.05281
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = shl i64 %.05182, 1
  %i.r = shl i64 %.05182, 4
  %i.s = tail call ptr @PyMem_Realloc(ptr noundef %.05580, i64 noundef %i.r) #6 ; 2 uses
  %.not70.not = icmp eq ptr %i.s, null
  br i1 %.not70.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.2 = phi ptr [ %.05580, %.lr.ph ], [ %i.s, %bb.h ] ; 11 uses
  %.1 = phi i64 [ %.05281, %.lr.ph ], [ %i.q, %bb.h ]
  %i.t = add i64 %.05182, 1                       ; 5 uses
  %i.u = getelementptr [8 x i8], ptr %.2, i64 %.05182
  store ptr %i.o, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.i, align 8, !tbaa !27
  %i.w = tail call fastcc ptr @param_with_default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !344

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef %.05580) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.x = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.i
  store i32 %i.v, ptr %i.i, align 8, !tbaa !27
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.g, align 8, !tbaa !26
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k, %._crit_edge
  %.055.lcssa97 = phi ptr [ %i.k, %._crit_edge.thread ], [ %.2, %bb.k ], [ %.2, %._crit_edge ]
  tail call void @PyMem_Free(ptr noundef nonnull %.055.lcssa97) #6
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.t, ptr noundef %i.ab) #6 ; 4 uses
  %.not72 = icmp eq ptr %i.ac, null
  br i1 %.not72, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ad = icmp ult i64 %.05182, 9223372036854775807
  br i1 %i.ad, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ac, i64 8      ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.af = icmp ult i64 %.05182, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter = and i64 %i.t, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.ag = tail call ptr @PyErr_NoMemory() #6      ; 0 uses
  br label %bb.q

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %.lr.ph86
  %.085.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %i.bf, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.al, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ah = getelementptr [8 x i8], ptr %.2, i64 %.085.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.085.epil
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !30
  %i.al = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.o, !llvm.loop !345

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.o, %.preheader
  tail call void @PyMem_Free(ptr noundef nonnull %.2) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph86.new
  %.085 = phi i64 [ 0, %.lr.ph86.new ], [ %i.bf, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph86.new ], [ %niter.next.3, %bb.p ]
  %i.am = getelementptr [8 x i8], ptr %.2, i64 %.085
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.085
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !30
  %i.aq = or disjoint i64 %.085, 1                ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %.2, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.aq
  store ptr %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = or disjoint i64 %.085, 2                ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %.2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.av
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.085, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %.2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !30
  %i.bf = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.p, !llvm.loop !346

bb.q:                                             ; preds = %bb.n, %._crit_edge87, %bb.g, %bb.d, %bb.j, %bb.f, %bb.l
  %.7 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ac, %._crit_edge87 ], [ %i.ac, %bb.n ]
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !25
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !25
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @param_with_default_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not52 = icmp eq i32 %i.h, 0
  br i1 %.not52, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 3 uses
  %i.k = tail call fastcc ptr @param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not53 = icmp eq ptr %i.k, null
  br i1 %.not53, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call fastcc ptr @default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not54 = icmp eq ptr %i.l, null
  br i1 %.not54, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 12) #6
  %.not55 = icmp eq ptr %i.m, null
  br i1 %.not55, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 57) #6
  %i.o = load i32, ptr %i.g, align 8, !tbaa !26
  %.not56 = icmp eq i32 %i.o, 0
  br i1 %.not56, label %bb.i, label %.thread69

.thread69:                                        ; preds = %bb.h
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_PyPegen_name_default_pair(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.n) #6 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.r = tail call ptr @PyErr_Occurred() #6
  %.not57 = icmp eq ptr %i.r, null
  br i1 %.not57, label %.thread, label %.thread66

.thread66:                                        ; preds = %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.pr = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  %.not58 = icmp eq i32 %.pr, 0
  br i1 %.not58, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.s = tail call fastcc ptr @param_rule(ptr noundef nonnull %0) ; 2 uses
  %.not59 = icmp eq ptr %i.s, null
  br i1 %.not59, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call fastcc ptr @default_rule(ptr noundef nonnull %0) ; 2 uses
  %.not60 = icmp eq ptr %i.t, null
  br i1 %.not60, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call ptr @_PyPegen_expect_token(ptr noundef nonnull %0, i32 noundef 57) #6
  %i.v = load i32, ptr %i.g, align 8, !tbaa !26
  %.not61 = icmp eq i32 %i.v, 0
  br i1 %.not61, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.w = tail call i32 @_PyPegen_lookahead_with_int(i32 noundef 1, ptr noundef nonnull @_PyPegen_expect_token, ptr noundef nonnull %0, i32 noundef 8) #6
  %.not62 = icmp eq i32 %i.w, 0
  br i1 %.not62, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = tail call ptr @_PyPegen_name_default_pair(ptr noundef nonnull %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef %i.u) #6 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.z = tail call ptr @PyErr_Occurred() #6
  %.not63 = icmp eq ptr %i.z, null
  br i1 %.not63, label %.thread, label %.thread75

.thread75:                                        ; preds = %bb.q
  store i32 1, ptr %i.g, align 8, !tbaa !26
  br label %.thread

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  store i32 %i.j, ptr %i.i, align 8, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.j, %bb.i, %bb.q, %bb.p, %bb.k, %.thread69, %bb.d, %.thread75, %.thread66
  %.3 = phi ptr [ null, %.thread75 ], [ null, %bb.k ], [ null, %.thread66 ], [ null, %bb.d ], [ null, %.thread69 ], [ null, %bb.r ], [ %i.p, %bb.i ], [ null, %bb.j ], [ null, %bb.q ], [ %i.x, %bb.p ]
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !25
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !25
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @param_rule(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = add i32 %i.b, 1
end_hunk_6
