inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@zend_real_jit_func:bb.a
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !153
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !101
  %i.bw = and i32 %i.bv, 16777216
  %.not8.i = icmp eq i32 %i.bw, 0
  br i1 %.not8.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !154
  %i.bz = and i32 %i.by, 1
  %.not9.i = icmp eq i32 %i.bz, 0
  br i1 %.not9.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = and i64 %i.bn, 4294836223
  %i.cb = call i32 @zend_ssa_inference(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %.032, ptr noundef %1, ptr noundef nonnull %4, i64 noundef %i.ca) #34
  %.not10.i = icmp eq i32 %i.cb, 0
  br i1 %.not10.i, label %bb.r, label %zend_jit_op_array_analyze2.exit

bb.r:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.cd = and i64 %i.cc, 2
  %.not38 = icmp eq i64 %i.cd, 0
  br i1 %.not38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @zend_dump_op_array(ptr noundef %.032, i32 noundef 11, ptr noundef nonnull @.str.23, ptr noundef nonnull %4) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = call fastcc i32 @zend_jit(ptr noundef %.032, ptr noundef %4, ptr noundef %2)
  %.not39 = icmp eq i32 %i.ce, 0
  br i1 %.not39, label %bb.u, label %zend_jit_op_array_analyze2.exit

bb.u:                                             ; preds = %bb.t
  call fastcc void @zend_jit_cleanup_func_info(ptr noundef %.032)
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !144
  %i.ci = icmp ule ptr %i.g, %i.ch
  %.not.i4154 = icmp ugt ptr %i.g, %i.cf
  %or.cond.i4255 = and i1 %.not.i4154, %i.ci
  br i1 %or.cond.i4255, label %.sink.split, label %.critedge.i43, !prof !156

.critedge.i43:                                    ; preds = %bb.u, %.critedge.i43
  %.0.i4056 = phi ptr [ %i.ck, %.critedge.i43 ], [ %i.cf, %bb.u ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i4056, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !145 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i4056) #34
  store ptr %i.ck, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !144
  %i.cn = icmp ule ptr %i.g, %i.cm
  %.not.i41 = icmp ugt ptr %i.g, %i.ck
  %or.cond.i42 = and i1 %.not.i41, %i.cn
  br i1 %or.cond.i42, label %.sink.split, label %.critedge.i43, !prof !157, !llvm.loop !158

zend_jit_op_array_analyze2.exit:                  ; preds = %bb.q, %bb.t, %bb.d
  call fastcc void @zend_jit_cleanup_func_info(ptr noundef %.032)
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !144
  %i.cr = icmp ule ptr %i.g, %i.cq
  %.not.i51 = icmp ugt ptr %i.g, %i.co
  %or.cond.i52 = and i1 %.not.i51, %i.cr
  br i1 %or.cond.i52, label %.sink.split, label %.critedge.i, !prof !156

.critedge.i:                                      ; preds = %zend_jit_op_array_analyze2.exit, %.critedge.i
  %.0.i53 = phi ptr [ %i.ct, %.critedge.i ], [ %i.co, %zend_jit_op_array_analyze2.exit ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i53, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !145 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i53) #34
  store ptr %i.ct, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !144
  %i.cw = icmp ule ptr %i.g, %i.cv
  %.not.i = icmp ugt ptr %i.g, %i.ct
  %or.cond.i = and i1 %.not.i, %i.cw
  br i1 %or.cond.i, label %.sink.split, label %.critedge.i, !prof !157, !llvm.loop !158

.sink.split:                                      ; preds = %.critedge.i, %.critedge.i43, %zend_jit_op_array_analyze2.exit, %bb.u
  %.0.i.lcssa.sink = phi ptr [ %i.ck, %.critedge.i43 ], [ %i.cf, %bb.u ], [ %i.co, %zend_jit_op_array_analyze2.exit ], [ %i.ct, %.critedge.i ]
  %.0.ph = phi i32 [ 0, %.critedge.i43 ], [ 0, %bb.u ], [ -1, %zend_jit_op_array_analyze2.exit ], [ -1, %.critedge.i ]
  store ptr %i.g, ptr %.0.i.lcssa.sink, align 8, !tbaa !139
  store i8 %i.e, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !84
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @zend_jit_hot_func(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 4 uses
  call void @zend_shared_alloc_lock() #34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !163
  %i.j = and i32 %i.i, 131072
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 54), align 2, !tbaa !166, !range !81, !noundef !82
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @zend_accel_shared_protect(i1 noundef zeroext false) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.n = and i64 %i.m, 288
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.f, label %zend_jit_unprotect.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.p = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.q = call i32 @mprotect(ptr noundef %i.o, i64 noundef %i.p, i32 noundef 3) #34
  %.not1.i = icmp eq i32 %i.q, 0
  br i1 %.not1.i, label %zend_jit_unprotect.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.s = call ptr @__errno_location() #38
  %i.t = load i32, ptr %i.s, align 4, !tbaa !65   ; 2 uses
  %i.u = call ptr @strerror(i32 noundef %i.t) #34
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.24, i32 noundef %i.t, ptr noundef %i.u) #39 ; 0 uses
  br label %zend_jit_unprotect.exit

zend_jit_unprotect.exit:                          ; preds = %bb.e, %bb.f, %bb.g
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %2, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !169
  %i.x = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #40
  %.not23 = icmp eq i32 %i.x, 0                   ; 2 uses
  br i1 %.not23, label %.preheader, label %bb.j

.preheader:                                       ; preds = %zend_jit_unprotect.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.z = load i32, ptr %i.y, align 8, !tbaa !189  ; 3 uses
  %.not25 = icmp eq i32 %i.z, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 5 uses
  %wide.trip.count = zext i32 %i.z to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ad = icmp ult i32 %i.z, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.h ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !105
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !105
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.1
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  store ptr %i.al, ptr %i.am, align 8, !tbaa !105
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.2
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !105
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !190

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.epil
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !105
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.i, !llvm.loop !191

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.i, %.preheader
  store ptr %1, ptr %0, align 8, !tbaa !193
  %i.at = call fastcc i32 @zend_real_jit_func(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %1, i8 noundef zeroext 3) ; 0 uses
  %i.au = load i32, ptr %i.h, align 4, !tbaa !163
  %i.av = or i32 %i.au, 131072
  store i32 %i.av, ptr %i.h, align 4, !tbaa !163
  br label %bb.j

bb.j:                                             ; preds = %zend_jit_unprotect.exit, %._crit_edge
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !169
  %i.ax = icmp eq ptr %i.aw, %2
  call void @llvm.assume(i1 %i.ax)
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.az = and i64 %i.ay, 288
  %.not.i21 = icmp eq i64 %i.az, 0
  br i1 %.not.i21, label %bb.k, label %zend_jit_protect.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.bb = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.bc = call i32 @mprotect(ptr noundef %i.ba, i64 noundef %i.bb, i32 noundef 5) #34
  %.not1.i22 = icmp eq i32 %i.bc, 0
  br i1 %.not1.i22, label %zend_jit_protect.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.be = call ptr @__errno_location() #38
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !65 ; 2 uses
  %i.bg = call ptr @strerror(i32 noundef %i.bf) #34
  %i.bh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bd, ptr noundef nonnull @.str.24, i32 noundef %i.bf, ptr noundef %i.bg) #39 ; 0 uses
  br label %zend_jit_protect.exit

zend_jit_protect.exit:                            ; preds = %bb.j, %bb.k, %bb.l
  %i.bi = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 54), align 2, !tbaa !166, !range !81, !noundef !82
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %zend_jit_protect.exit
  call void @zend_accel_shared_protect(i1 noundef zeroext true) #34
  br label %bb.n

bb.n:                                             ; preds = %zend_jit_protect.exit, %bb.m
  call void @zend_shared_alloc_unlock() #34
  br i1 %.not23, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_zend_bailout(ptr noundef nonnull @.str.8, i32 noundef 3214) #36
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  call void @zend_shared_alloc_unlock() #34
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.n
  ret void
}

declare void @zend_shared_alloc_lock() local_unnamed_addr #4

declare void @zend_accel_shared_protect(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zend_jit_unprotect() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.b = and i64 %i.a, 288
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.d = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.e = tail call i32 @mprotect(ptr noundef %i.c, i64 noundef %i.d, i32 noundef 3) #34
  %.not1 = icmp eq i32 %i.e, 0
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.g = tail call ptr @__errno_location() #38
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65   ; 2 uses
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #34
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.24, i32 noundef %i.h, ptr noundef %i.i) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @zend_jit_protect() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.b = and i64 %i.a, 288
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.d = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.e = tail call i32 @mprotect(ptr noundef %i.c, i64 noundef %i.d, i32 noundef 5) #34
  %.not1 = icmp eq i32 %i.e, 0
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.g = tail call ptr @__errno_location() #38
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65   ; 2 uses
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #34
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.24, i32 noundef %i.h, ptr noundef %i.i) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare void @zend_shared_alloc_unlock() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_zend_bailout(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @zend_jit_blacklist_function(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !194
  %i.h = and i32 %i.g, 65536
  %.not5 = icmp eq i32 %i.h, 0
  br i1 %.not5, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @zend_shared_alloc_lock() #34
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 54), align 2, !tbaa !166, !range !81, !noundef !82
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @zend_accel_shared_protect(i1 noundef zeroext false) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.l = and i64 %i.k, 288
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.f, label %zend_jit_unprotect.exit

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.n = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.o = tail call i32 @mprotect(ptr noundef %i.m, i64 noundef %i.n, i32 noundef 3) #34
  %.not1.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i, label %zend_jit_unprotect.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.q = tail call ptr @__errno_location() #38
  %i.r = load i32, ptr %i.q, align 4, !tbaa !65   ; 2 uses
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #34
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.24, i32 noundef %i.r, ptr noundef %i.s) #39 ; 0 uses
  br label %zend_jit_unprotect.exit

zend_jit_unprotect.exit:                          ; preds = %bb.e, %bb.f, %bb.g
end_hunk_0
begin_hunk_1_@zend_jit_op_array:bb.a
  %i.h = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.i
  store ptr null, ptr %i.j, align 8, !tbaa !146
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.22) #34
  br label %zend_jit_setup_hot_trace_counters.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101
  %i.n = and i32 %i.m, 256
  %.not60 = icmp eq i32 %i.n, 0
  br i1 %.not60, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.e, %.critedge
  %.049 = phi ptr [ %i.q, %.critedge ], [ %i.k, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.049, i64 28
  %i.p = load i8, ptr %i.o, align 4, !tbaa !102
  %.off = add i8 %i.p, -63
  %switch = icmp ult i8 %.off, 2
  %i.q = getelementptr inbounds nuw i8, ptr %.049, i64 32
  br i1 %switch, label %.critedge, label %.loopexit, !llvm.loop !326

.loopexit:                                        ; preds = %.critedge, %bb.e
  %.150 = phi ptr [ %i.k, %bb.e ], [ %.049, %.critedge ] ; 2 uses
  %i.r = tail call ptr @zend_shared_alloc(i64 noundef 168) #34 ; 7 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %zend_jit_setup_hot_trace_counters.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.r, i8 0, i64 152, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 8192, ptr %i.s, align 4, !tbaa !327
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store ptr %0, ptr %i.t, align 8, !tbaa !328
  %i.u = load ptr, ptr %.150, align 8, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %i.u, ptr %i.v, align 8, !tbaa !121
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  store ptr %i.r, ptr %i.z, align 8, !tbaa !146
  %i.aa = load ptr, ptr @zend_jit_runtime_jit_handler, align 8, !tbaa !60
  store ptr %i.aa, ptr %.150, align 8, !tbaa !105
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !89
  tail call void @zend_shared_alloc_register_xlat_entry(ptr noundef %i.ab, ptr noundef nonnull %i.r) #34
  br label %zend_jit_setup_hot_trace_counters.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !89 ; 2 uses
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 172), align 4, !tbaa !325
  %i.af = and i32 %i.ae, 32768
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ah = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai
  store ptr null, ptr %i.aj, align 8, !tbaa !146
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.22) #34
  br label %zend_jit_setup_hot_trace_counters.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !238
  %.not56 = icmp eq ptr %i.al, null
  br i1 %.not56, label %zend_jit_setup_hot_trace_counters.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101
  %i.ao = and i32 %i.an, 256
  %.not57 = icmp eq i32 %i.ao, 0
  br i1 %.not57, label %.critedge2, label %.loopexit70

.critedge2:                                       ; preds = %bb.j, %.critedge2
  %.047 = phi ptr [ %i.ar, %.critedge2 ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.047, i64 28
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !102
  %.off62 = add i8 %i.aq, -63
  %switch63 = icmp ult i8 %.off62, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %.047, i64 32
  br i1 %switch63, label %.critedge2, label %.loopexit70, !llvm.loop !329

.loopexit70:                                      ; preds = %.critedge2, %bb.j
  %.148 = phi ptr [ %i.ad, %bb.j ], [ %.047, %.critedge2 ] ; 2 uses
  %i.as = tail call ptr @zend_shared_alloc(i64 noundef 168) #34 ; 7 uses
  %.not58 = icmp eq ptr %i.as, null
  br i1 %.not58, label %zend_jit_setup_hot_trace_counters.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.as, i8 0, i64 152, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 16384, ptr %i.at, align 4, !tbaa !327
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  store ptr %0, ptr %i.au, align 8, !tbaa !328
  %i.av = load ptr, ptr %.148, align 8, !tbaa !105
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !146
  %i.bb = load ptr, ptr @zend_jit_profile_jit_handler, align 8, !tbaa !60
  store ptr %i.bb, ptr %.148, align 8, !tbaa !105
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !89
  tail call void @zend_shared_alloc_register_xlat_entry(ptr noundef %i.bc, ptr noundef nonnull %i.as) #34
  br label %zend_jit_setup_hot_trace_counters.exit

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @zend_build_cfg(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef %0, i32 noundef 1262485504, ptr noundef nonnull %3) #34
  %i.bd = load i32, ptr %3, align 8, !tbaa !330
  %i.be = icmp sgt i32 %i.bd, 100000
  br i1 %i.be, label %zend_jit_setup_hot_counters.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @zend_cfg_build_predecessors(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %3) #34
  call void @zend_cfg_compute_dominators_tree(ptr noundef %0, ptr noundef nonnull %3) #34
  call void @zend_cfg_identify_loops(ptr noundef %0, ptr noundef nonnull %3) #34
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !189
  %i.bh = add i32 %i.bg, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 176
  %i.bl = call ptr @zend_shared_alloc(i64 noundef %i.bk) #34 ; 8 uses
  %.not26.i = icmp eq ptr %i.bl, null
  br i1 %.not26.i, label %zend_jit_setup_hot_counters.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bl, i8 0, i64 152, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 32768, ptr %i.bm, align 4, !tbaa !163
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  store ptr %0, ptr %i.bn, align 8, !tbaa !331
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = lshr i64 %i.bq, 33
  %i.bt = xor i64 %i.br, %i.bs
  %i.bu = mul i64 %i.bt, -4658895280553007687     ; 2 uses
  %i.bv = lshr i64 %i.bu, 27
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = mul i64 %i.bw, -7723592293110705685     ; 2 uses
  %i.by = lshr i64 %i.bx, 31
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = and i64 %i.bz, 127
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @zend_jit_hot_counters, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !332
  %i.cd = load i32, ptr %i.bf, align 8, !tbaa !189 ; 3 uses
  %.not31.i = icmp eq i32 %i.cd, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 168 ; 5 uses
  %wide.trip.count.i = zext i32 %i.cd to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cf = icmp ult i32 %i.cd, 4
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.o ]
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !105
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !60
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ck = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv.next.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !105
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !60
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.co = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %indvars.iv.next.i.1
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !105
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.1
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !60
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.cs = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %indvars.iv.next.i.2
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !105
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.2
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !60
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.o, !llvm.loop !333

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod76)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.p ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.cw = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %indvars.iv.i.epil
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !105
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.epil
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !60
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.p, !llvm.loop !334

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.p, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.db = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dc
  store ptr %i.bl, ptr %i.dd, align 8, !tbaa !146
  %.val.i = load i32, ptr %3, align 8             ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val27.i = load ptr, ptr %i.de, align 8        ; 3 uses
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 80), align 8, !tbaa !335
  %.not.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.dg = load ptr, ptr %i.bo, align 8, !tbaa !89 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !101
  %i.dj = and i32 %i.di, 256
  %.not17.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not17.i.i, label %.critedge.i.i, label %.loopexit2.i.i

.critedge.i.i:                                    ; preds = %bb.q, %.critedge.i.i
  %.015.i.i = phi ptr [ %i.dm, %.critedge.i.i ], [ %i.dg, %bb.q ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 28
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !102
  %.off.i.i = add i8 %i.dl, -63
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 32
  br i1 %switch.i.i, label %.critedge.i.i, label %.loopexit2.i.i, !llvm.loop !336

.loopexit2.i.i:                                   ; preds = %.critedge.i.i, %bb.q
  %.1.i.i = phi ptr [ %i.dg, %bb.q ], [ %.015.i.i, %.critedge.i.i ]
  %i.dn = load ptr, ptr @zend_jit_func_hot_counter_handler, align 8, !tbaa !60
  store ptr %i.dn, ptr %.1.i.i, align 8, !tbaa !105
  br label %bb.r

bb.r:                                             ; preds = %.loopexit2.i.i, %._crit_edge.i
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 72), align 8, !tbaa !337
  %.not18.i.i = icmp ne i64 %i.do, 0
  %i.dp = icmp ne i32 %.val.i, 0
  %or.cond.i.i = select i1 %.not18.i.i, i1 %i.dp, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %zend_jit_setup_hot_counters_ex.exit.i

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.dq = load ptr, ptr @zend_jit_loop_hot_counter_handler, align 8 ; 3 uses
  %wide.trip.count.i.i = zext i32 %.val.i to i64  ; 2 uses
  %xtraiter78 = and i64 %wide.trip.count.i.i, 1
  %i.dr = icmp eq i32 %.val.i, 1
  br i1 %i.dr, label %.epil.preheader77, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter82 = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.w ] ; 3 uses
  %niter83 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter83.next.1, %bb.w ]
  %i.ds = getelementptr inbounds nuw [64 x i8], ptr %.val27.i, i64 %indvars.iv.i.i ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !338
  %i.dv = and i32 %i.du, -2147418112
  %or.cond.not.i.i = icmp eq i32 %i.dv, -2147418112
  br i1 %or.cond.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !340
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.dz
  store ptr %i.dq, ptr %i.ea, align 8, !tbaa !105
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %.val27.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !338
  %i.ee = and i32 %i.ed, -2147418112
  %or.cond.not.i.i.1 = icmp eq i32 %i.ee, -2147418112
  br i1 %or.cond.not.i.i.1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 76
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !340
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.ei
  store ptr %i.dq, ptr %i.ej, align 8, !tbaa !105
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter83.next.1 = add i64 %niter83, 2           ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %zend_jit_setup_hot_counters_ex.exit.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !341

zend_jit_setup_hot_counters_ex.exit.i.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod80.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod80.not, label %zend_jit_setup_hot_counters_ex.exit.i, label %.epil.preheader77

.epil.preheader77:                                ; preds = %zend_jit_setup_hot_counters_ex.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %zend_jit_setup_hot_counters_ex.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod81 = trunc i32 %.val.i to i1
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.ek = getelementptr inbounds nuw [64 x i8], ptr %.val27.i, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !338
  %i.en = and i32 %i.em, -2147418112
  %or.cond.not.i.i.epil = icmp eq i32 %i.en, -2147418112
  br i1 %or.cond.not.i.i.epil, label %bb.x, label %zend_jit_setup_hot_counters_ex.exit.i

bb.x:                                             ; preds = %.epil.preheader77
  %i.eo = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !340
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.er
  store ptr %i.dq, ptr %i.es, align 8, !tbaa !105
  br label %zend_jit_setup_hot_counters_ex.exit.i

zend_jit_setup_hot_counters_ex.exit.i:            ; preds = %zend_jit_setup_hot_counters_ex.exit.i.loopexit.unr-lcssa, %bb.x, %.epil.preheader77, %bb.r
  %i.et = load ptr, ptr %i.bo, align 8, !tbaa !89
  call void @zend_shared_alloc_register_xlat_entry(ptr noundef %i.et, ptr noundef nonnull %i.bl) #34
  br label %zend_jit_setup_hot_counters.exit

zend_jit_setup_hot_counters.exit:                 ; preds = %bb.l, %bb.m, %zend_jit_setup_hot_counters_ex.exit.i
  %.0.i = phi i32 [ -1, %bb.m ], [ 0, %zend_jit_setup_hot_counters_ex.exit.i ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %zend_jit_setup_hot_trace_counters.exit

bb.y:                                             ; preds = %bb.b
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !189
  %i.ew = add i32 %i.ev, -1
  %i.ex = zext i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 5
  %i.ez = add nuw nsw i64 %i.ey, 200
  %i.fa = tail call ptr @zend_shared_alloc(i64 noundef %i.ez) #34 ; 8 uses
  %.not.i64 = icmp eq ptr %i.fa, null
  br i1 %.not.i64, label %zend_jit_setup_hot_trace_counters.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.fa, i8 0, i64 152, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 65536, ptr %i.fb, align 4, !tbaa !194
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 152
  store ptr %0, ptr %i.fc, align 8, !tbaa !275
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 168 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 160 ; 5 uses
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !199
  %i.fk = load i32, ptr %i.eu, align 8, !tbaa !189
  %.not84.i = icmp eq i32 %i.fk, 0
  br i1 %.not84.i, label %._crit_edge.i68, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %bb.z, %zend_jit_trace_supported.exit.i
  %indvars.iv.i66 = phi i64 [ %indvars.iv.next.i67, %zend_jit_trace_supported.exit.i ], [ 0, %bb.z ] ; 5 uses
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.fl, i64 %indvars.iv.i66
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !105
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.fd, i64 %indvars.iv.i66 ; 4 uses
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !57
  %i.fp = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %indvars.iv.i66
  %i.fr = tail call ptr @zend_get_opcode_handler_func(ptr noundef %i.fq) #34
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !57
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr null, ptr %i.ft, align 8, !tbaa !57
  %i.fu = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fu, i64 %indvars.iv.i66
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  %i.fx = load i8, ptr %i.fw, align 4, !tbaa !102
  switch i8 %i.fx, label %bb.aa [
    i8 107, label %zend_jit_trace_supported.exit.i
    i8 -94, label %zend_jit_trace_supported.exit.i
    i8 -93, label %zend_jit_trace_supported.exit.i
  ]

bb.aa:                                            ; preds = %.lr.ph.i65
  br label %zend_jit_trace_supported.exit.i

zend_jit_trace_supported.exit.i:                  ; preds = %bb.aa, %.lr.ph.i65, %.lr.ph.i65, %.lr.ph.i65
  %.0.i.i = phi i8 [ 0, %bb.aa ], [ 64, %.lr.ph.i65 ], [ 64, %.lr.ph.i65 ], [ 64, %.lr.ph.i65 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store i8 %.0.i.i, ptr %i.fy, align 8, !tbaa !57
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %i.fz = load i32, ptr %i.eu, align 8, !tbaa !189
  %i.ga = zext i32 %i.fz to i64
  %i.gb = icmp samesign ult i64 %indvars.iv.next.i67, %i.ga
  br i1 %i.gb, label %.lr.ph.i65, label %._crit_edge.i68, !llvm.loop !342

._crit_edge.i68:                                  ; preds = %zend_jit_trace_supported.exit.i, %bb.z
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gd = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.ge
  store ptr %i.fa, ptr %i.gf, align 8, !tbaa !146
  %i.gg = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 72), align 8, !tbaa !337
  %.not66.i = icmp eq i64 %i.gg, 0
  br i1 %.not66.i, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @zend_build_cfg(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %0, i32 noundef 1262485504, ptr noundef nonnull %2) #34
  %i.gh = load i32, ptr %2, align 8, !tbaa !330
  %i.gi = icmp sgt i32 %i.gh, 100000
  br i1 %i.gi, label %.critedge76.i, label %zend_jit_build_cfg.exit.i

zend_jit_build_cfg.exit.i:                        ; preds = %bb.ab
  call void @zend_cfg_build_predecessors(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %2) #34
  call void @zend_cfg_compute_dominators_tree(ptr noundef nonnull %0, ptr noundef nonnull %2) #34
  call void @zend_cfg_identify_loops(ptr noundef nonnull %0, ptr noundef nonnull %2) #34
  %i.gj = load i32, ptr %2, align 8, !tbaa !330   ; 2 uses
  %.not85.i = icmp eq i32 %i.gj, 0
  br i1 %.not85.i, label %._crit_edge83.i, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %zend_jit_build_cfg.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gl = load ptr, ptr @zend_jit_loop_trace_counter_handler, align 8
  %i.gm = load ptr, ptr @zend_jit_traces, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4 ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ah, %.lr.ph82.i
  %i.go = phi i32 [ %i.gj, %.lr.ph82.i ], [ %i.hr, %bb.ah ] ; 2 uses
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next88.i, %bb.ah ] ; 2 uses
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !343
  %i.gq = getelementptr inbounds nuw [64 x i8], ptr %i.gp, i64 %indvars.iv87.i ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !338
  %i.gt = and i32 %i.gs, -2147418112
  %or.cond.not.i = icmp eq i32 %i.gt, -2147418112
  br i1 %or.cond.not.i, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gu = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !340
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gu, i64 %i.gx ; 4 uses
  %i.gz = load i64, ptr %i.fj, align 8, !tbaa !199 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !57  ; 2 uses
  %i.hd = and i8 %i.hc, 64
  %.not70.i = icmp eq i8 %i.hd, 0
  br i1 %.not70.i, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.gl, ptr %i.gy, align 8, !tbaa !105
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !57
  %.not71.i = icmp eq ptr %i.hf, null
  br i1 %.not71.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hg = load i32, ptr %i.gn, align 4, !tbaa !273
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr @zend_jit_hot_counters, i64 %i.hh
  store ptr %i.hi, ptr %i.he, align 8, !tbaa !57
  %i.hj = load i32, ptr %i.gn, align 4, !tbaa !273
  %i.hk = add i32 %i.hj, 1
  %i.hl = and i32 %i.hk, 127
  store i32 %i.hl, ptr %i.gn, align 4, !tbaa !273
  %.pre.i = load i64, ptr %i.fj, align 8, !tbaa !199 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.pre.i
  %.phi.trans.insert90.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 24
  %.pre91.i = load i8, ptr %.phi.trans.insert90.i, align 8, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hm = phi i8 [ %.pre91.i, %bb.af ], [ %i.hc, %bb.ae ]
  %i.hn = phi i64 [ %.pre.i, %bb.af ], [ %i.gz, %bb.ae ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = or i8 %i.hm, 1
  store i8 %i.hq, ptr %i.hp, align 8, !tbaa !57
  %.pre92.i = load i32, ptr %2, align 8, !tbaa !330
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %i.hr = phi i32 [ %i.go, %bb.ac ], [ %i.go, %bb.ad ], [ %.pre92.i, %bb.ag ] ; 2 uses
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %i.hs = zext i32 %i.hr to i64
  %i.ht = icmp samesign ult i64 %indvars.iv.next88.i, %i.hs
  br i1 %i.ht, label %bb.ac, label %._crit_edge83.i, !llvm.loop !344

._crit_edge83.i:                                  ; preds = %bb.ah, %zend_jit_build_cfg.exit.i
end_hunk_1
begin_hunk_2_@zend_jit_script:bb.a
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !349
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv223
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !141 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !101
  %i.bh = and i32 %i.bg, 8192
  %.not135 = icmp eq i32 %i.bh, 0
  br i1 %.not135, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  call void @zend_init_func_return_info(ptr noundef nonnull %i.be, ptr noundef %0, ptr noundef nonnull %i.bi) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.bj = load i32, ptr %1, align 8, !tbaa !346   ; 4 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next224, %i.bk
  br i1 %i.bl, label %bb.j, label %.preheader168, !llvm.loop !352

.preheader167:                                    ; preds = %bb.v
  %i.bm = icmp sgt i32 %i.cs, 0
  br i1 %i.bm, label %.lr.ph185, label %.loopexit166

.lr.ph185:                                        ; preds = %.preheader167
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre249 = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  br label %bb.w

bb.n:                                             ; preds = %.lr.ph183, %bb.v
  %.pre247255 = phi i32 [ %i.bj, %.lr.ph183 ], [ %.pre247256, %bb.v ] ; 6 uses
  %i.bo = phi i32 [ %i.bj, %.lr.ph183 ], [ %i.cs, %bb.v ]
  %i.bp = phi i32 [ %.pre246, %.lr.ph183 ], [ %i.ct, %bb.v ] ; 7 uses
  %indvars.iv226 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next227, %bb.v ] ; 2 uses
  %i.bq = load ptr, ptr %i.ar, align 8, !tbaa !349
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv226
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !141 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 208
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60 ; 6 uses
  %.not132 = icmp eq ptr %i.bw, null
  br i1 %.not132, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 104), align 8, !tbaa !149
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 3), align 1, !tbaa !85
  %i.ca = icmp ugt i8 %i.bz, 2
  br i1 %i.ca, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !353
  %.not.i154 = icmp eq ptr %i.cc, null
  br i1 %.not.i154, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 148
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !153
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !101
  %i.ci = and i32 %i.ch, 16777216
  %.not8.i = icmp eq i32 %i.ci, 0
  br i1 %.not8.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !154
  %i.cl = and i32 %i.ck, 1
  %.not9.i = icmp eq i32 %i.cl, 0
  br i1 %.not9.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = and i64 %i.by, 4294836223
  %i.cn = call i32 @zend_ssa_inference(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %i.bs, ptr noundef %0, ptr noundef nonnull %i.bx, i64 noundef %i.cm) #34
  %.not10.i = icmp eq i32 %i.cn, 0
  br i1 %.not10.i, label %._crit_edge254, label %zend_jit_op_array_analyze2.exit

._crit_edge254:                                   ; preds = %bb.t
  %.pre245 = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %.pre247.pre = load i32, ptr %1, align 8, !tbaa !346
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge254, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.pre247 = phi i32 [ %.pre247255, %bb.o ], [ %.pre247255, %bb.p ], [ %.pre247255, %bb.q ], [ %.pre247255, %bb.r ], [ %.pre247255, %bb.s ], [ %.pre247.pre, %._crit_edge254 ] ; 2 uses
  %i.co = phi i32 [ %i.bp, %bb.o ], [ %i.bp, %bb.p ], [ %i.bp, %bb.q ], [ %i.bp, %bb.r ], [ %i.bp, %bb.s ], [ %.pre245, %._crit_edge254 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !350
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !196
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %bb.u
  %.pre247256 = phi i32 [ %.pre247255, %bb.n ], [ %.pre247, %bb.u ]
  %i.cs = phi i32 [ %i.bo, %bb.n ], [ %.pre247, %bb.u ] ; 4 uses
  %i.ct = phi i32 [ %i.bp, %bb.n ], [ %i.co, %bb.u ]
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.cu = sext i32 %i.cs to i64
  %i.cv = icmp slt i64 %indvars.iv.next227, %i.cu
  br i1 %i.cv, label %bb.n, label %.preheader167, !llvm.loop !354

.preheader165:                                    ; preds = %bb.aa
  %i.cw = icmp sgt i32 %i.dr, 0
  br i1 %i.cw, label %.lr.ph187, label %.loopexit166

.lr.ph187:                                        ; preds = %.preheader165
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !349 ; 5 uses
  %i.cz = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.da = sext i32 %i.cz to i64                   ; 5 uses
  %wide.trip.count238 = zext nneg i32 %i.dr to i64 ; 2 uses
  %xtraiter314 = and i64 %wide.trip.count238, 3   ; 3 uses
  %i.db = icmp ult i32 %i.dr, 4
  br i1 %i.db, label %.epil.preheader313, label %.lr.ph187.new

.lr.ph187.new:                                    ; preds = %.lr.ph187
  %unroll_iter318 = and i64 %wide.trip.count238, 2147483644
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph185, %bb.aa
  %i.dc = phi i32 [ %i.cs, %.lr.ph185 ], [ %i.dr, %bb.aa ]
  %i.dd = phi i32 [ %.pre249, %.lr.ph185 ], [ %i.ds, %bb.aa ] ; 2 uses
  %indvars.iv229 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next230, %bb.aa ] ; 3 uses
  %i.de = load ptr, ptr %i.bn, align 8, !tbaa !349
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv229
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !141 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 208
  %i.di = sext i32 %i.dd to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !60 ; 3 uses
  %.not = icmp eq ptr %i.dk, null
  br i1 %.not, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.dm = and i64 %i.dl, 2
  %.not130 = icmp eq i64 %i.dm, 0
  br i1 %.not130, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  call void @zend_dump_op_array(ptr noundef nonnull %i.dg, i32 noundef 11, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.dn) #34
  %.pre250 = load ptr, ptr %i.bn, align 8, !tbaa !349
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre250, i64 %indvars.iv229
  %.pre251 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !141
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.do = phi ptr [ %.pre251, %bb.y ], [ %i.dg, %bb.x ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dq = call fastcc i32 @zend_jit(ptr noundef %i.do, ptr noundef %i.dp, ptr noundef null)
  %.not131 = icmp eq i32 %i.dq, 0
  br i1 %.not131, label %._crit_edge252, label %zend_jit_op_array_analyze2.exit

._crit_edge252:                                   ; preds = %bb.z
  %.pre248 = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %.pre253 = load i32, ptr %1, align 8, !tbaa !346
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge252, %bb.w
  %i.dr = phi i32 [ %i.dc, %bb.w ], [ %.pre253, %._crit_edge252 ] ; 5 uses
  %i.ds = phi i32 [ %i.dd, %bb.w ], [ %.pre248, %._crit_edge252 ]
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.dt = sext i32 %i.dr to i64
  %i.du = icmp slt i64 %indvars.iv.next230, %i.dt
  br i1 %i.du, label %bb.w, label %.preheader165, !llvm.loop !355

bb.ab:                                            ; preds = %bb.ab, %.lr.ph187.new
  %indvars.iv235 = phi i64 [ 0, %.lr.ph187.new ], [ %indvars.iv.next236.3, %bb.ab ] ; 5 uses
  %niter319 = phi i64 [ 0, %.lr.ph187.new ], [ %niter319.next.3, %bb.ab ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv235
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !141
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 208
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.da
  store ptr null, ptr %i.dy, align 8, !tbaa !146
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv235
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !141
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 208
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.da
  store ptr null, ptr %i.ed, align 8, !tbaa !146
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv235
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !141
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 208
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.da
  store ptr null, ptr %i.ei, align 8, !tbaa !146
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv235
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !141
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 208
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.da
  store ptr null, ptr %i.en, align 8, !tbaa !146
  %indvars.iv.next236.3 = add nuw nsw i64 %indvars.iv235, 4 ; 2 uses
  %niter319.next.3 = add i64 %niter319, 4         ; 2 uses
  %niter319.ncmp.3 = icmp eq i64 %niter319.next.3, %unroll_iter318
  br i1 %niter319.ncmp.3, label %.loopexit166.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !356

.loopexit166.loopexit.unr-lcssa:                  ; preds = %bb.ab
  %lcmp.mod316.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod316.not, label %.loopexit166, label %.epil.preheader313

.epil.preheader313:                               ; preds = %.loopexit166.loopexit.unr-lcssa, %.lr.ph187
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next236.3, %.loopexit166.loopexit.unr-lcssa ]
  %lcmp.mod317 = icmp ne i64 %xtraiter314, 0
  call void @llvm.assume(i1 %lcmp.mod317)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader313
  %indvars.iv235.epil = phi i64 [ %indvars.iv235.epil.init, %.epil.preheader313 ], [ %indvars.iv.next236.epil, %bb.ac ] ; 2 uses
  %epil.iter315 = phi i64 [ 0, %.epil.preheader313 ], [ %epil.iter315.next, %bb.ac ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv235.epil
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !141
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 208
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.da
  store ptr null, ptr %i.er, align 8, !tbaa !146
  %indvars.iv.next236.epil = add nuw nsw i64 %indvars.iv235.epil, 1
  %epil.iter315.next = add i64 %epil.iter315, 1   ; 2 uses
  %epil.iter315.cmp.not = icmp eq i64 %epil.iter315.next, %xtraiter314
  br i1 %epil.iter315.cmp.not, label %.loopexit166, label %bb.ac, !llvm.loop !357

.loopexit166:                                     ; preds = %bb.d, %.loopexit166.loopexit.unr-lcssa, %bb.ac, %.preheader171, %.preheader170, %.preheader168, %.preheader167, %.preheader173, %.preheader165
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !144
  %i.ev = icmp ule ptr %i.g, %i.eu
  %.not.i149188 = icmp ugt ptr %i.g, %i.es
  %or.cond.i150189 = and i1 %.not.i149188, %i.ev
  br i1 %or.cond.i150189, label %zend_arena_release.exit152, label %.critedge.i151, !prof !156

.critedge.i151:                                   ; preds = %.loopexit166, %.critedge.i151
  %.0.i148190 = phi ptr [ %i.ex, %.critedge.i151 ], [ %i.es, %.loopexit166 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i148190, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !145 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i148190) #34
  store ptr %i.ex, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !144
  %i.fa = icmp ule ptr %i.g, %i.ez
  %.not.i149 = icmp ugt ptr %i.g, %i.ex
  %or.cond.i150 = and i1 %.not.i149, %i.fa
  br i1 %or.cond.i150, label %zend_arena_release.exit152, label %.critedge.i151, !prof !157, !llvm.loop !158

zend_arena_release.exit152:                       ; preds = %.critedge.i151, %.loopexit166
  %.0.i148.lcssa = phi ptr [ %i.es, %.loopexit166 ], [ %i.ex, %.critedge.i151 ]
  store ptr %i.g, ptr %.0.i148.lcssa, align 8, !tbaa !139
  %i.fb = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !84
  switch i8 %i.fb, label %.loopexit164 [
    i8 5, label %bb.ad
    i8 3, label %bb.ad
    i8 2, label %bb.ad
    i8 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %zend_arena_release.exit152, %zend_arena_release.exit152, %zend_arena_release.exit152, %zend_arena_release.exit152
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !57 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !87 ; 2 uses
  %i.fg = zext i32 %i.ff to i64
  %.idx = shl nuw nsw i64 %i.fg, 5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx
  %.not139200 = icmp eq i32 %i.ff, 0
  br i1 %.not139200, label %.loopexit164, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.ad, %.loopexit163
  %.0121201 = phi ptr [ %i.hw, %.loopexit163 ], [ %i.fd, %bb.ad ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0121201, i64 8
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !57
  switch i8 %i.fj, label %bb.ae [
    i8 0, label %.loopexit163
    i8 14, label %.loopexit163
  ], !prof !358

bb.ae:                                            ; preds = %.lr.ph203
  %i.fk = load ptr, ptr %.0121201, align 8, !tbaa !57 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 80
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !57 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 88
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !87 ; 2 uses
  %i.fp = zext i32 %i.fo to i64
  %.idx210 = shl nuw nsw i64 %i.fp, 5
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx210
  %.not141192 = icmp eq i32 %i.fo, 0
  br i1 %.not141192, label %._crit_edge, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.ae, %zend_jit_link_func_info.exit
  %.0120193 = phi ptr [ %i.gg, %zend_jit_link_func_info.exit ], [ %i.fm, %bb.ae ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0120193, i64 8
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !57
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %zend_jit_link_func_info.exit, label %bb.af, !prof !88

bb.af:                                            ; preds = %.lr.ph194
  %i.fu = load ptr, ptr %.0120193, align 8, !tbaa !57 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 208 ; 2 uses
  %i.fw = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !60
  %.not.i155 = icmp eq ptr %i.fz, null
  br i1 %.not.i155, label %bb.ag, label %zend_jit_link_func_info.exit

bb.ag:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 104
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !89
  %i.gc = call ptr @zend_shared_alloc_get_xlat_entry(ptr noundef %i.gb) #34 ; 2 uses
  %.not6.i = icmp eq ptr %i.gc, null
  br i1 %.not6.i, label %zend_jit_link_func_info.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gd = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.ge
  store ptr %i.gc, ptr %i.gf, align 8, !tbaa !146
  br label %zend_jit_link_func_info.exit

zend_jit_link_func_info.exit:                     ; preds = %bb.ah, %bb.ag, %bb.af, %.lr.ph194
  %i.gg = getelementptr inbounds nuw i8, ptr %.0120193, i64 32 ; 2 uses
  %.not141 = icmp eq ptr %i.gg, %i.fq
  br i1 %.not141, label %._crit_edge, label %.lr.ph194, !llvm.loop !359

._crit_edge:                                      ; preds = %zend_jit_link_func_info.exit, %bb.ae
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 432
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !360
  %.not142 = icmp eq i32 %i.gi, 0
  br i1 %.not142, label %.loopexit163, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 136
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !57 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fk, i64 144
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !87 ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %.idx211 = shl nuw nsw i64 %i.gn, 5
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx211
  %.not144196 = icmp eq i32 %i.gm, 0
  br i1 %.not144196, label %.loopexit163, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.ai, %.loopexit162
  %.0119197 = phi ptr [ %i.hv, %.loopexit162 ], [ %i.gk, %bb.ai ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0119197, i64 8
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !57
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %.loopexit162, label %bb.aj, !prof !88

bb.aj:                                            ; preds = %.lr.ph199
  %i.gs = load ptr, ptr %.0119197, align 8, !tbaa !57
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 64 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !361 ; 2 uses
  %.not145 = icmp eq ptr %i.gu, null
  br i1 %.not145, label %.loopexit162, label %.preheader161.preheader

.preheader161.preheader:                          ; preds = %bb.aj
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !323 ; 3 uses
  %.not146 = icmp eq ptr %i.gv, null
  br i1 %.not146, label %zend_jit_link_func_info.exit158, label %bb.ak

bb.ak:                                            ; preds = %.preheader161.preheader
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 208 ; 2 uses
  %i.gx = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !60
  %.not.i156 = icmp eq ptr %i.ha, null
  br i1 %.not.i156, label %bb.al, label %zend_jit_link_func_info.exit158

bb.al:                                            ; preds = %bb.ak
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 104
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !89
  %i.hd = call ptr @zend_shared_alloc_get_xlat_entry(ptr noundef %i.hc) #34 ; 2 uses
  %.not6.i157 = icmp eq ptr %i.hd, null
  br i1 %.not6.i157, label %zend_jit_link_func_info.exit158, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.hf
  store ptr %i.hd, ptr %i.hg, align 8, !tbaa !146
  br label %zend_jit_link_func_info.exit158

zend_jit_link_func_info.exit158:                  ; preds = %bb.am, %bb.al, %bb.ak, %.preheader161.preheader
  %i.hh = load ptr, ptr %i.gt, align 8, !tbaa !361
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !323 ; 3 uses
  %.not146.1 = icmp eq ptr %i.hj, null
  br i1 %.not146.1, label %.loopexit162, label %bb.an

bb.an:                                            ; preds = %zend_jit_link_func_info.exit158
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 208 ; 2 uses
  %i.hl = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !60
  %.not.i156.1 = icmp eq ptr %i.ho, null
  br i1 %.not.i156.1, label %bb.ao, label %.loopexit162

bb.ao:                                            ; preds = %bb.an
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 104
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !89
  %i.hr = call ptr @zend_shared_alloc_get_xlat_entry(ptr noundef %i.hq) #34 ; 2 uses
  %.not6.i157.1 = icmp eq ptr %i.hr, null
  br i1 %.not6.i157.1, label %.loopexit162, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hs = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.ht
  store ptr %i.hr, ptr %i.hu, align 8, !tbaa !146
  br label %.loopexit162

.loopexit162:                                     ; preds = %zend_jit_link_func_info.exit158, %bb.an, %bb.ao, %bb.ap, %bb.aj, %.lr.ph199
  %i.hv = getelementptr inbounds nuw i8, ptr %.0119197, i64 32 ; 2 uses
  %.not144 = icmp eq ptr %i.hv, %i.go
  br i1 %.not144, label %.loopexit163, label %.lr.ph199, !llvm.loop !365

.loopexit163:                                     ; preds = %.loopexit162, %bb.ai, %.lr.ph203, %.lr.ph203, %._crit_edge
  %i.hw = getelementptr inbounds nuw i8, ptr %.0121201, i64 32 ; 2 uses
  %.not139 = icmp eq ptr %i.hw, %i.fh
  br i1 %.not139, label %.loopexit164, label %.lr.ph203, !llvm.loop !366

zend_jit_op_array_analyze2.exit:                  ; preds = %bb.e, %bb.g, %bb.t, %bb.z
  %i.hx = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !84
  %i.hy = icmp eq i8 %i.hx, 0
  br i1 %i.hy, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %zend_jit_op_array_analyze2.exit
  %i.hz = load i32, ptr %1, align 8, !tbaa !346   ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph205, label %.loopexit

.lr.ph205:                                        ; preds = %.preheader
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !349 ; 5 uses
  %i.id = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.ie = sext i32 %i.id to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.hz to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.if = icmp ult i32 %i.hz, 4
  br i1 %i.if, label %.epil.preheader, label %.lr.ph205.new

.lr.ph205.new:                                    ; preds = %.lr.ph205
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph205.new
  %indvars.iv232 = phi i64 [ 0, %.lr.ph205.new ], [ %indvars.iv.next233.3, %bb.aq ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph205.new ], [ %niter.next.3, %bb.aq ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv232
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !141
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 208
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.ie
  store ptr null, ptr %i.ij, align 8, !tbaa !146
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv232
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !141
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 208
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ie
  store ptr null, ptr %i.io, align 8, !tbaa !146
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv232
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !141
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 208
  %i.it = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.ie
  store ptr null, ptr %i.it, align 8, !tbaa !146
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv232
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !141
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 208
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.ie
  store ptr null, ptr %i.iy, align 8, !tbaa !146
  %indvars.iv.next233.3 = add nuw nsw i64 %indvars.iv232, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.aq, !llvm.loop !367

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph205
  %indvars.iv232.epil.init = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next233.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod312 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod312)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.epil.preheader
  %indvars.iv232.epil = phi i64 [ %indvars.iv232.epil.init, %.epil.preheader ], [ %indvars.iv.next233.epil, %bb.ar ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ar ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv232.epil
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !141
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 208
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.ie
  store ptr null, ptr %i.jc, align 8, !tbaa !146
  %indvars.iv.next233.epil = add nuw nsw i64 %indvars.iv232.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.ar, !llvm.loop !368

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.ar, %.preheader, %zend_jit_op_array_analyze2.exit
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !144
  %i.jg = icmp ule ptr %i.g, %i.jf
  %.not.i206 = icmp ugt ptr %i.g, %i.jd
  %or.cond.i207 = and i1 %.not.i206, %i.jg
  br i1 %or.cond.i207, label %zend_arena_release.exit, label %.critedge.i, !prof !156

.critedge.i:                                      ; preds = %.loopexit, %.critedge.i
  %.0.i208 = phi ptr [ %i.ji, %.critedge.i ], [ %i.jd, %.loopexit ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i208, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !145 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i208) #34
  store ptr %i.ji, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !144
  %i.jl = icmp ule ptr %i.g, %i.jk
  %.not.i = icmp ugt ptr %i.g, %i.ji
  %or.cond.i = and i1 %.not.i, %i.jl
  br i1 %or.cond.i, label %zend_arena_release.exit, label %.critedge.i, !prof !157, !llvm.loop !158

zend_arena_release.exit:                          ; preds = %.critedge.i, %.loopexit
  %.0.i.lcssa = phi ptr [ %i.jd, %.loopexit ], [ %i.ji, %.critedge.i ]
  store ptr %i.g, ptr %.0.i.lcssa, align 8, !tbaa !139
  br label %.loopexit164

.loopexit164:                                     ; preds = %.loopexit163, %bb.ad, %zend_arena_release.exit152, %bb.a, %bb.b, %zend_arena_release.exit
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %zend_arena_release.exit ], [ -1, %bb.b ], [ 0, %zend_arena_release.exit152 ], [ 0, %bb.ad ], [ 0, %.loopexit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret i32 %.0
}

declare void @zend_build_call_graph(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_analyze_call_graph(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @zend_jit_op_array_analyze1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @zend_build_cfg(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef %0, i32 noundef 1262485504, ptr noundef %2) #34
  %i.a = load i32, ptr %2, align 8, !tbaa !330
  %i.b = icmp sgt i32 %i.a, 100000
  br i1 %i.b, label %zend_jit_build_cfg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @zend_cfg_build_predecessors(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %2) #34
  tail call void @zend_cfg_compute_dominators_tree(ptr noundef %0, ptr noundef nonnull %2) #34
  tail call void @zend_cfg_identify_loops(ptr noundef %0, ptr noundef nonnull %2) #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !154
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !154
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 3), align 1, !tbaa !85
  %i.i = icmp ugt i8 %i.h, 2
  br i1 %i.i, label %bb.e, label %zend_jit_build_cfg.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !353
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %zend_jit_build_cfg.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !153
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %zend_jit_build_cfg.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101
  %i.q = and i32 %i.p, 16777216
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.h, label %zend_jit_build_cfg.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !154
  %i.t = and i32 %i.s, 1
  %.not20 = icmp eq i32 %i.t, 0
  br i1 %.not20, label %bb.i, label %zend_jit_build_cfg.exit

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i32 @zend_build_ssa(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef %1, ptr noundef nonnull %0, i32 noundef 138412032, ptr noundef nonnull %2) #34
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %bb.j, label %zend_jit_build_cfg.exit

bb.j:                                             ; preds = %bb.i
  tail call void @zend_ssa_compute_use_def_chains(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %0, ptr noundef nonnull %2) #34
  tail call void @zend_ssa_find_false_dependencies(ptr noundef nonnull %0, ptr noundef nonnull %2) #34
  tail call void @zend_ssa_find_sccs(ptr noundef nonnull %0, ptr noundef nonnull %2) #34
  br label %zend_jit_build_cfg.exit

zend_jit_build_cfg.exit:                          ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.i
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ -1, %bb.a ]
  ret i32 %.0
}

declare ptr @zend_build_call_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_init_func_return_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_dump_op_array(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @zend_jit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._zend_jit_ctx, align 8      ; 196 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 58 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 32), align 8, !tbaa !369 ; 3 uses
  %.not2404 = icmp eq i64 %i.b, 0
  br i1 %.not2404, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @jit_bisect_pos, align 8, !tbaa !135
  %i.d = add nsw i64 %i.c, 1                      ; 3 uses
  store i64 %i.d, ptr @jit_bisect_pos, align 8, !tbaa !135
  %.not2405 = icmp slt i64 %i.d, %i.b
  br i1 %.not2405, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %bb.d, label %bb.bkf

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !237  ; 2 uses
  %.not2846 = icmp eq ptr %i.h, null
  br i1 %.not2846, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ @.str.11, %bb.e ], [ @.str.10, %bb.d ]
  %i.m = phi ptr [ %i.k, %bb.e ], [ @.str.10, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !238  ; 2 uses
  %.not2848 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %spec.select = select i1 %.not2848, ptr @.str.200, ptr %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !239
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load i32, ptr %i.t, align 8, !tbaa !370
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.199, ptr noundef nonnull %i.m, ptr noundef nonnull %i.l, ptr noundef nonnull %spec.select, ptr noundef nonnull %i.s, i32 noundef %i.u) #39 ; 0 uses
  br label %bb.bkf

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !154
  %i.y = and i32 %i.x, 16
  %.not2406 = icmp eq i32 %i.y, 0
  br i1 %.not2406, label %bb.h, label %bb.bkf

bb.h:                                             ; preds = %bb.g
  %.not2407 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not2407, label %bb.j, label %bb.i
end_hunk_2
begin_hunk_3_@zend_jit_config:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.aj, i64 noundef 3, ptr noundef nonnull @.str.32, i64 noundef 3) #34
  %.not62 = icmp eq i32 %i.ak, 0
  br i1 %.not62, label %bb.z, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.u
  %.pre82 = load i64, ptr %i.f, align 8, !tbaa !298
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge81, %bb.t
  %i.al = phi i64 [ %.pre82, %._crit_edge81 ], [ %i.ah, %bb.t ] ; 2 uses
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.an, i64 noundef 4, ptr noundef nonnull @.str.33, i64 noundef 4) #34
  %.not63 = icmp eq i32 %i.ao, 0
  br i1 %.not63, label %bb.z, label %thread-pre-split74

thread-pre-split74:                               ; preds = %bb.w
  %.pr75 = load i64, ptr %i.f, align 8, !tbaa !298
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split74, %bb.v
  %i.ap = phi i64 [ %.pr75, %thread-pre-split74 ], [ %i.al, %bb.v ] ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 7
  br i1 %i.aq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ar, i64 noundef 7, ptr noundef nonnull @.str.34, i64 noundef 7) #34
  %.not64 = icmp eq i32 %i.as, 0
  br i1 %.not64, label %bb.z, label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.y
  %.pre84 = load i64, ptr %i.f, align 8, !tbaa !298
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %bb.q
  store <4 x i8> <i8 1, i8 1, i8 5, i8 4>, ptr @jit_globals, align 8, !tbaa !57
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !86
  br label %bb.ah

bb.aa:                                            ; preds = %._crit_edge83, %bb.x
  %i.at = phi i64 [ %.pre84, %._crit_edge83 ], [ %i.ap, %bb.x ] ; 3 uses
  %i.au = load ptr, ptr @zend_known_strings, align 8, !tbaa !444
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !445 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !298
  %i.az = icmp eq i64 %i.at, %i.ay
  br i1 %i.az, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bc = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ba, i64 noundef %i.at, ptr noundef nonnull %i.bb, i64 noundef %i.at) #34
  %.not65 = icmp eq i32 %i.bc, 0
  br i1 %.not65, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store <4 x i8> <i8 1, i8 1, i8 0, i8 5>, ptr @jit_globals, align 8, !tbaa !57
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !86
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, i32 noundef 10) #34
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !242
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !298
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  %.not66 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not66, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bi = call fastcc i32 @zend_jit_parse_config_num(i64 noundef %i.be)
  %.not67 = icmp eq i32 %i.bi, 0
  br i1 %.not67, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr @jit_globals, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.35) #34
  store i8 0, ptr @jit_globals, align 8, !tbaa !75
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !83
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.b, %bb.c, %bb.ag, %bb.ac, %bb.z, %bb.o, %bb.f
  %.1 = phi i32 [ 0, %bb.o ], [ 0, %bb.af ], [ -1, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.f ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.1
}

declare i32 @zend_binary_strcasecmp(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @zend_jit_parse_config_num(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = urem i64 %0, 10                          ; 2 uses
  %i.d = udiv i64 %0, 10
  %i.e = add nsw i64 %i.c, -6
  %or.cond = icmp ult i64 %i.e, -5
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc nuw nsw i64 %i.c to i8
  store i8 %i.f, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 3), align 1, !tbaa !85
  %i.g = urem i64 %i.d, 10                        ; 3 uses
  %i.h = icmp samesign ugt i64 %i.g, 5
  %i.i = icmp eq i64 %i.g, 4
  %or.cond23 = or i1 %i.h, %i.i
  br i1 %or.cond23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = trunc nuw nsw i64 %i.g to i8
  store i8 %i.j, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 2), align 2, !tbaa !84
  %i.k = udiv i64 %0, 100
  %i.l = urem i64 %i.k, 10                        ; 2 uses
  %i.m = icmp samesign ugt i64 %i.l, 2
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i64 %i.l to i32            ; 2 uses
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !86
  %i.o = udiv i64 %0, 1000
  %i.p = urem i64 %i.o, 10                        ; 2 uses
  %i.q = icmp samesign ugt i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i64 %i.p, 0
  %i.r = select i1 %.not, i32 0, i32 4
  %i.s = or disjoint i32 %i.r, %i.n
  store i32 %i.s, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !86
  %.not22 = icmp samesign ult i64 %0, 10000
  br i1 %.not22, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.a
  %.sink = phi i8 [ 0, %bb.a ], [ 1, %bb.g ]
  store i8 %.sink, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !83
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zend_jit_debug_config(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = xor i64 %1, %0
  %i.b = and i64 %i.a, 496
  %.not6 = icmp eq i64 %i.b, 0
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, 16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.36) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @zend_jit_init() local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(848) @jit_globals, i8 0, i64 848, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zend_jit_check_support() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @zend_execute_ex, align 8, !tbaa !60
  %.not = icmp eq ptr %i.a, @execute_ex
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @zend_dtrace_enabled, align 1, !tbaa !446, !range !81, !noundef !82
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.sink.split9.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @sapi_module, align 8, !tbaa !447
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(7) @.str.38) #42
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %.sink.split9, label %.sink.split9.sink.split

.preheader:                                       ; preds = %bb.a, %bb.e
  %.08 = phi i32 [ %i.h, %bb.e ], [ 0, %bb.a ]    ; 3 uses
  %.0.off = add nsw i32 %.08, -57
  %switch = icmp ult i32 %.0.off, 2
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.f = trunc i32 %.08 to i8
  %i.g = tail call ptr @zend_get_user_opcode_handler(i8 noundef zeroext %i.f) #34
  %.not6 = icmp eq ptr %i.g, null
  br i1 %.not6, label %bb.e, label %.sink.split9.sink.split

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.h = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, 257
  br i1 %exitcond.not, label %bb.f, label %.preheader, !llvm.loop !450

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 16), align 8, !tbaa !451
  %i.j = icmp sgt i64 %i.i, 2147483648
  br i1 %i.j, label %.sink.split9.sink.split, label %bb.g

.sink.split9.sink.split:                          ; preds = %bb.d, %bb.f, %bb.b, %bb.c
  %.str.39.sink.sink = phi ptr [ @.str.41, %bb.f ], [ @.str.39, %bb.c ], [ @.str.37, %bb.b ], [ @.str.40, %bb.d ]
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull %.str.39.sink.sink) #34
  br label %.sink.split9

.sink.split9:                                     ; preds = %.sink.split9.sink.split, %bb.c
  store i8 0, ptr @jit_globals, align 8, !tbaa !75
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %.sink.split9, %bb.f
  %.05 = phi i32 [ 0, %bb.f ], [ -1, %.sink.split9 ]
  ret i32 %.05
}

declare void @execute_ex(ptr noundef) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare ptr @zend_get_user_opcode_handler(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zend_jit_startup(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @zend_get_halt_op() #34
  store ptr %i.a, ptr @zend_jit_halt_op, align 8, !tbaa !244
  %i.b = tail call ptr @zend_get_interrupt_op() #34
  store ptr %i.b, ptr @zend_jit_interrupt_op, align 8, !tbaa !244
  %i.c = tail call i32 @zend_get_op_array_extension_handle(ptr noundef nonnull @.str.42) #34
  store i32 %i.c, ptr @zend_jit_profile_counter_rid, align 4, !tbaa !65
  store ptr %0, ptr @dasm_buf, align 8, !tbaa !60
  store i64 %1, ptr @dasm_size, align 8, !tbaa !135
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  store ptr %i.e, ptr @dasm_end, align 8, !tbaa !60
  store ptr %i.e, ptr @dasm_ptr, align 8, !tbaa !59
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.g = and i64 %i.f, 288
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @mprotect(ptr noundef %0, i64 noundef %1, i32 noundef 7) #34
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %bb.d, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @mprotect(ptr noundef %0, i64 noundef %1, i32 noundef 5) #34
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.k = tail call ptr @__errno_location() #38
  %i.l = load i32, ptr %i.k, align 4, !tbaa !65   ; 2 uses
  %i.m = tail call ptr @strerror(i32 noundef %i.l) #34
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.24, i32 noundef %i.l, ptr noundef %i.m) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.p = and i64 %i.o, 288
  %.not.i16 = icmp eq i64 %i.p, 0                 ; 2 uses
  br i1 %2, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i16, label %bb.f, label %zend_jit_unprotect.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.r = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.s = tail call i32 @mprotect(ptr noundef %i.q, i64 noundef %i.r, i32 noundef 3) #34
  %.not1.i = icmp eq i32 %i.s, 0
  br i1 %.not1.i, label %zend_jit_unprotect.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.u = tail call ptr @__errno_location() #38
  %i.v = load i32, ptr %i.u, align 4, !tbaa !65   ; 2 uses
  %i.w = tail call ptr @strerror(i32 noundef %i.v) #34
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.24, i32 noundef %i.v, ptr noundef %i.w) #39 ; 0 uses
  br label %zend_jit_unprotect.exit

zend_jit_unprotect.exit:                          ; preds = %bb.e, %bb.f, %bb.g
  %i.y = load ptr, ptr @dasm_buf, align 8, !tbaa !60 ; 2 uses
  %i.z = load ptr, ptr @dasm_ptr, align 8, !tbaa !59
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = add i64 %i.aa, 15
  %i.ac = and i64 %i.ab, -16
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !60
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.af = and i64 %i.ae, 288
  %.not.i8 = icmp eq i64 %i.af, 0
  br i1 %.not.i8, label %bb.h, label %zend_jit_protect.exit

bb.h:                                             ; preds = %zend_jit_unprotect.exit
  %i.ag = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.ah = tail call i32 @mprotect(ptr noundef %i.y, i64 noundef %i.ag, i32 noundef 5) #34
  %.not1.i9 = icmp eq i32 %i.ah, 0
  br i1 %.not1.i9, label %zend_jit_protect.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.aj = tail call ptr @__errno_location() #38
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !65 ; 2 uses
  %i.al = tail call ptr @strerror(i32 noundef %i.ak) #34
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.24, i32 noundef %i.ak, ptr noundef %i.al) #39 ; 0 uses
  br label %zend_jit_protect.exit

zend_jit_protect.exit:                            ; preds = %zend_jit_unprotect.exit, %bb.h, %bb.i
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.ao = and i64 %i.an, 288
  %.not.i10 = icmp eq i64 %i.ao, 0
  br i1 %.not.i10, label %bb.j, label %zend_jit_unprotect.exit12

bb.j:                                             ; preds = %zend_jit_protect.exit
  %i.ap = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.aq = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.ar = tail call i32 @mprotect(ptr noundef %i.ap, i64 noundef %i.aq, i32 noundef 3) #34
  %.not1.i11 = icmp eq i32 %i.ar, 0
  br i1 %.not1.i11, label %zend_jit_unprotect.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.at = tail call ptr @__errno_location() #38
  %i.au = load i32, ptr %i.at, align 4, !tbaa !65 ; 2 uses
  %i.av = tail call ptr @strerror(i32 noundef %i.au) #34
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.24, i32 noundef %i.au, ptr noundef %i.av) #39 ; 0 uses
  br label %zend_jit_unprotect.exit12

zend_jit_unprotect.exit12:                        ; preds = %zend_jit_protect.exit, %bb.j, %bb.k
  tail call fastcc void @zend_jit_setup(i1 noundef zeroext false)
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.ay = and i64 %i.ax, 288
  %.not.i13 = icmp eq i64 %i.ay, 0
  br i1 %.not.i13, label %bb.l, label %bb.r

bb.l:                                             ; preds = %zend_jit_unprotect.exit12
  %i.az = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.ba = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.bb = tail call i32 @mprotect(ptr noundef %i.az, i64 noundef %i.ba, i32 noundef 5) #34
  %.not1.i14 = icmp eq i32 %i.bb, 0
  br i1 %.not1.i14, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.bd = tail call ptr @__errno_location() #38
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !65 ; 2 uses
  %i.bf = tail call ptr @strerror(i32 noundef %i.be) #34
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.24, i32 noundef %i.be, ptr noundef %i.bf) #39 ; 0 uses
  br label %bb.r

.critedge:                                        ; preds = %bb.d
  br i1 %.not.i16, label %bb.n, label %zend_jit_unprotect.exit18

bb.n:                                             ; preds = %.critedge
  %i.bh = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.bi = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.bj = tail call i32 @mprotect(ptr noundef %i.bh, i64 noundef %i.bi, i32 noundef 3) #34
  %.not1.i17 = icmp eq i32 %i.bj, 0
  br i1 %.not1.i17, label %zend_jit_unprotect.exit18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.bl = tail call ptr @__errno_location() #38
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !65 ; 2 uses
  %i.bn = tail call ptr @strerror(i32 noundef %i.bm) #34
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.24, i32 noundef %i.bm, ptr noundef %i.bn) #39 ; 0 uses
  br label %zend_jit_unprotect.exit18

zend_jit_unprotect.exit18:                        ; preds = %.critedge, %bb.n, %bb.o
  tail call fastcc void @zend_jit_setup(i1 noundef zeroext true)
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.bq = and i64 %i.bp, 288
  %.not.i19 = icmp eq i64 %i.bq, 0
  br i1 %.not.i19, label %bb.p, label %bb.w

bb.p:                                             ; preds = %zend_jit_unprotect.exit18
  %i.br = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.bs = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.bt = tail call i32 @mprotect(ptr noundef %i.br, i64 noundef %i.bs, i32 noundef 5) #34
  %.not1.i20 = icmp eq i32 %i.bt, 0
  br i1 %.not1.i20, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.bv = tail call ptr @__errno_location() #38
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !65 ; 2 uses
  %i.bx = tail call ptr @strerror(i32 noundef %i.bw) #34
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.24, i32 noundef %i.bw, ptr noundef %i.bx) #39 ; 0 uses
  br label %bb.w

end_hunk_3
begin_hunk_4_@zend_jit_trace:bb.a
  %i.arg = zext nneg i32 %i.arc to i64
  br label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %i.arh = getelementptr inbounds nuw i8, ptr %.019.i898.i, i64 80
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !392
  br label %zend_ssa_next_use_phi.exit.i904.i

bb.hh:                                            ; preds = %bb.hi
  %indvars.iv.next.i902.i = add nuw nsw i64 %indvars.iv.i901.i, 1 ; 2 uses
  %exitcond.not.i903.i = icmp eq i64 %indvars.iv.next.i902.i, %i.arg
  br i1 %exitcond.not.i903.i, label %zend_jit_var_supports_reg.exit908.i, label %bb.hi, !llvm.loop !393

bb.hi:                                            ; preds = %bb.hh, %.lr.ph.i900.i
  %indvars.iv.i901.i = phi i64 [ 0, %.lr.ph.i900.i ], [ %indvars.iv.next.i902.i, %bb.hh ] ; 3 uses
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %indvars.iv.i901.i
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !65
  %i.arl = zext i32 %i.ark to i64
  %i.arm = icmp eq i64 %indvars.iv1144.i, %i.arl
  br i1 %i.arm, label %bb.hj, label %bb.hh

bb.hj:                                            ; preds = %bb.hi
  %i.arn = getelementptr inbounds nuw i8, ptr %.019.i898.i, i64 80
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !392
  %i.arp = getelementptr inbounds nuw [8 x i8], ptr %i.aro, i64 %indvars.iv.i901.i
  br label %zend_ssa_next_use_phi.exit.i904.i

zend_ssa_next_use_phi.exit.i904.i:                ; preds = %bb.hj, %bb.hg
  %.1.i.in.i905.i = phi ptr [ %i.ari, %bb.hg ], [ %i.arp, %bb.hj ]
  %.1.i.i906.i = load ptr, ptr %.1.i.in.i905.i, align 8, !tbaa !394 ; 2 uses
  %.not26.i907.i = icmp eq ptr %.1.i.i906.i, null
  br i1 %.not26.i907.i, label %zend_jit_var_supports_reg.exit908.i, label %.preheader34.i897.i, !llvm.loop !493

zend_jit_var_supports_reg.exit908.i:              ; preds = %zend_ssa_next_use_phi.exit.i904.i, %.preheader.i899.i, %bb.hh, %bb.he, %bb.hc
  %i.arq = load ptr, ptr %i.tt, align 8, !tbaa !247
  %i.arr = getelementptr inbounds nuw [40 x i8], ptr %i.arq, i64 %indvars.iv1144.i
  %i.ars = load i32, ptr %i.arr, align 8, !tbaa !417 ; 2 uses
  %i.art = and i32 %i.ars, 2047
  %i.aru = add nsw i32 %i.art, -16
  %switch.and.i892.i = and i32 %i.aru, -17
  %i.arv = and i32 %i.ars, 268435456
  %i.arw = or i32 %switch.and.i892.i, %i.arv
  %or.cond1278.i = icmp eq i32 %i.arw, 0
  br i1 %or.cond1278.i, label %bb.hk, label %zend_jit_var_supports_reg.exit908.thread.i

bb.hk:                                            ; preds = %zend_jit_var_supports_reg.exit908.i
  %i.arx = getelementptr inbounds nuw [8 x i8], ptr %.0.i743.i, i64 %indvars.iv1144.i ; 2 uses
  store i32 -1, ptr %i.arx, align 4, !tbaa !380
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  store i32 1, ptr %i.ary, align 4, !tbaa !387
  %i.arz = add nsw i32 %.211020.i, 1
  br label %zend_jit_var_supports_reg.exit908.thread.i

zend_jit_var_supports_reg.exit908.thread.i:       ; preds = %.preheader34.i897.i, %bb.hk, %zend_jit_var_supports_reg.exit908.i, %bb.hd, %bb.hb, %bb.ha
  %.22.i = phi i32 [ %.211020.i, %bb.hd ], [ %i.arz, %bb.hk ], [ %.211020.i, %zend_jit_var_supports_reg.exit908.i ], [ %.211020.i, %bb.hb ], [ %.211020.i, %bb.ha ], [ %.211020.i, %.preheader34.i897.i ] ; 2 uses
  %indvars.iv.next1145.i = add nuw nsw i64 %indvars.iv1144.i, 1
  %indvars.iv.next1147.i = add nuw nsw i64 %indvars.iv1146.i, 1 ; 2 uses
  %i.asa = load i32, ptr %i.apn, align 4, !tbaa !248
  %i.asb = load i32, ptr %i.apo, align 8, !tbaa !249
  %i.asc = add i32 %i.asb, %i.asa
  %i.asd = zext i32 %i.asc to i64
  %i.ase = icmp samesign ult i64 %indvars.iv.next1147.i, %i.asd
  br i1 %i.ase, label %bb.ha, label %.loopexit971.i, !llvm.loop !505

bb.hl:                                            ; preds = %zend_jit_trace_ret_frame.exit.i
  %i.asf = add nsw i32 %.0600.i, -1
  br label %.loopexit971.i

.loopexit971.i:                                   ; preds = %zend_jit_var_supports_reg.exit908.thread.i, %bb.gf, %bb.gd, %.preheader974.i, %.preheader975.i, %bb.hl, %bb.gz, %._crit_edge1042.i, %bb.gg, %zend_jit_var_supports_reg.exit869.thread.i, %.preheader970.i, %.preheader972.i, %bb.ch
  %.1631.i = phi ptr [ %.0630.i, %bb.ch ], [ %i.alt, %._crit_edge1042.i ], [ %.0630.i, %.preheader970.i ], [ %i.tw, %bb.hl ], [ %.0630.i, %.preheader972.i ], [ %.0630.i, %zend_jit_var_supports_reg.exit869.thread.i ], [ %.0630.i, %bb.gg ], [ %i.tw, %bb.gz ], [ %.0630.i, %.preheader975.i ], [ %.0630.i, %bb.gd ], [ %.0630.i, %.preheader974.i ], [ %.0630.i, %bb.gf ], [ %i.tw, %zend_jit_var_supports_reg.exit908.thread.i ]
  %.1629.i = phi ptr [ %.0628.i, %bb.ch ], [ %i.amb, %._crit_edge1042.i ], [ %.0628.i, %.preheader970.i ], [ %i.uc, %bb.hl ], [ %.0628.i, %.preheader972.i ], [ %.0628.i, %zend_jit_var_supports_reg.exit869.thread.i ], [ %.0628.i, %bb.gg ], [ %i.uc, %bb.gz ], [ %.0628.i, %.preheader975.i ], [ %.0628.i, %bb.gd ], [ %.0628.i, %.preheader974.i ], [ %.0628.i, %bb.gf ], [ %i.uc, %zend_jit_var_supports_reg.exit908.thread.i ]
  %.4627.i = phi ptr [ %.0623.i, %bb.ch ], [ %.0623.i, %._crit_edge1042.i ], [ %.16241063.i, %.preheader970.i ], [ %.0623.i, %bb.hl ], [ %.26251052.i, %.preheader972.i ], [ %i.ajr, %zend_jit_var_supports_reg.exit869.thread.i ], [ %i.akz, %bb.gg ], [ %.0623.i, %bb.gz ], [ %.26251052.i11089, %.preheader975.i ], [ %.1624.i, %bb.gd ], [ %.16241063.i11096, %.preheader974.i ], [ %.2625.i, %bb.gf ], [ %.0623.i, %zend_jit_var_supports_reg.exit908.thread.i ]
  %.4608.i = phi i32 [ %.0604.i, %bb.ch ], [ %.0604.i, %._crit_edge1042.i ], [ %.16051064.i, %.preheader970.i ], [ %.0604.i, %bb.hl ], [ %.26061053.i, %.preheader972.i ], [ %i.ajs, %zend_jit_var_supports_reg.exit869.thread.i ], [ %i.ala, %bb.gg ], [ %.0604.i, %bb.gz ], [ %.26061053.i11090, %.preheader975.i ], [ %.1605.i, %bb.gd ], [ %.16051064.i11097, %.preheader974.i ], [ %.2606.i, %bb.gf ], [ %.0604.i, %zend_jit_var_supports_reg.exit908.thread.i ]
  %.23.i = phi i32 [ %.5.i, %bb.ch ], [ %.19.lcssa.i, %._crit_edge1042.i ], [ %.11.i, %.preheader970.i ], [ %.5.i, %bb.hl ], [ %.11.i, %.preheader972.i ], [ %.13.i, %zend_jit_var_supports_reg.exit869.thread.i ], [ %.11.i, %bb.gg ], [ %.5.i, %bb.gz ], [ %.11.i, %.preheader975.i ], [ %.15.i, %bb.gd ], [ %.11.i, %.preheader974.i ], [ %.11.i, %bb.gf ], [ %.22.i, %zend_jit_var_supports_reg.exit908.thread.i ]
  %.1601.i = phi i32 [ %.0600.i, %bb.ch ], [ %i.apa, %._crit_edge1042.i ], [ %.0600.i, %.preheader970.i ], [ %i.asf, %bb.hl ], [ %.0600.i, %.preheader972.i ], [ %.0600.i, %zend_jit_var_supports_reg.exit869.thread.i ], [ %.0600.i, %bb.gg ], [ 0, %bb.gz ], [ %.0600.i, %.preheader975.i ], [ %.0600.i, %bb.gd ], [ %.0600.i, %.preheader974.i ], [ %.0600.i, %bb.gf ], [ 0, %zend_jit_var_supports_reg.exit908.thread.i ]
  %.1599.i = phi ptr [ %.0598.i, %bb.ch ], [ %i.alq, %._crit_edge1042.i ], [ %.0598.i, %.preheader970.i ], [ %i.api, %bb.hl ], [ %.0598.i, %.preheader972.i ], [ %.0598.i, %zend_jit_var_supports_reg.exit869.thread.i ], [ %.0598.i, %bb.gg ], [ %i.api, %bb.gz ], [ %.0598.i, %.preheader975.i ], [ %.0598.i, %bb.gd ], [ %.0598.i, %.preheader974.i ], [ %.0598.i, %bb.gf ], [ %i.api, %zend_jit_var_supports_reg.exit908.thread.i ]
  %.1597.i = phi ptr [ %.0596.i, %bb.ch ], [ %i.alv, %._crit_edge1042.i ], [ %.0596.i, %.preheader970.i ], [ %i.apj, %bb.hl ], [ %.0596.i, %.preheader972.i ], [ %.0596.i, %zend_jit_var_supports_reg.exit869.thread.i ], [ %.0596.i, %bb.gg ], [ %i.apj, %bb.gz ], [ %.0596.i, %.preheader975.i ], [ %.0596.i, %bb.gd ], [ %.0596.i, %.preheader974.i ], [ %.0596.i, %bb.gf ], [ %i.apj, %zend_jit_var_supports_reg.exit908.thread.i ]
  %i.asg = getelementptr inbounds nuw i8, ptr %.0632.i, i64 16
  br label %bb.ch

bb.hm:                                            ; preds = %bb.ch
  %i.ash = load i8, ptr %i.ra, align 2, !tbaa !57 ; 2 uses
  %switch730.i = icmp ult i8 %i.ash, 3
  br i1 %switch730.i, label %bb.hn, label %.loopexit.i

bb.hn:                                            ; preds = %bb.hm
  %i.asi = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !256
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 8
  %.05921075.i = load ptr, ptr %i.ask, align 8, !tbaa !394 ; 2 uses
  %.not6681076.i = icmp eq ptr %.05921075.i, null
  br i1 %.not6681076.i, label %._crit_edge1080.i, label %.lr.ph1079.i

.lr.ph1079.i:                                     ; preds = %bb.hn, %bb.hq
  %.05921077.i = phi ptr [ %.0592.i, %bb.hq ], [ %.05921075.i, %bb.hn ] ; 3 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.05921077.i, i64 96
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !263
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 4
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !65
  %i.asp = sext i32 %i.aso to i64
  %i.asq = getelementptr inbounds [8 x i8], ptr %.0.i743.i, i64 %i.asp ; 2 uses
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !380
  %.not695.i = icmp eq i32 %i.asr, 0
  br i1 %.not695.i, label %bb.hq, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph1079.i
  %i.ass = load ptr, ptr %i.tr, align 8, !tbaa !250
  %i.ast = getelementptr inbounds nuw i8, ptr %.05921077.i, i64 68
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !259
  %i.asv = sext i32 %i.asu to i64
  %i.asw = getelementptr inbounds [48 x i8], ptr %i.ass, i64 %i.asv
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 40
  %i.asy = load i8, ptr %i.asx, align 8
  %i.asz = trunc i8 %i.asy to i1
  br i1 %i.asz, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asq, i64 4 ; 2 uses
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !387
  %i.atc = and i32 %i.atb, -5
  store i32 %i.atc, ptr %i.ata, align 4, !tbaa !387
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %.lr.ph1079.i
  %.0592.i = load ptr, ptr %.05921077.i, align 8, !tbaa !394 ; 2 uses
  %.not668.i = icmp eq ptr %.0592.i, null
  br i1 %.not668.i, label %._crit_edge1080.loopexit.i, label %.lr.ph1079.i, !llvm.loop !506

._crit_edge1080.loopexit.i:                       ; preds = %bb.hq
  %.pre1180.i = load i8, ptr %i.ra, align 2, !tbaa !57
  br label %._crit_edge1080.i

._crit_edge1080.i:                                ; preds = %._crit_edge1080.loopexit.i, %bb.hn
  %i.atd = phi i8 [ %.pre1180.i, %._crit_edge1080.loopexit.i ], [ %i.ash, %bb.hn ]
  %i.ate = icmp eq i8 %i.atd, 0
  br i1 %i.ate, label %.preheader966.i, label %.loopexit.i

.preheader966.i:                                  ; preds = %._crit_edge1080.i
  %i.atf = getelementptr inbounds nuw i8, ptr %.0630.i, i64 92
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !248 ; 4 uses
  %i.ath = icmp sgt i32 %i.atg, 0
  br i1 %i.ath, label %.lr.ph1082.i, label %.loopexit.i

.lr.ph1082.i:                                     ; preds = %.preheader966.i
  %wide.trip.count1165.i = zext nneg i32 %i.atg to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count1165.i, 1
  %i.ati = icmp eq i32 %i.atg, 1
  br i1 %i.ati, label %.epil.preheader, label %.lr.ph1082.i.new

.lr.ph1082.i.new:                                 ; preds = %.lr.ph1082.i
  %unroll_iter = and i64 %wide.trip.count1165.i, 2147483646
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hx, %.lr.ph1082.i.new
  %indvars.iv1162.i = phi i64 [ 0, %.lr.ph1082.i.new ], [ %indvars.iv.next1163.i.1, %bb.hx ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1082.i.new ], [ %niter.next.1, %bb.hx ]
  %i.atj = getelementptr inbounds nuw [8 x i8], ptr %.0.i743.i, i64 %indvars.iv1162.i ; 2 uses
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !380
  %.not693.i = icmp eq i32 %i.atk, 0
  br i1 %.not693.i, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.atl = load ptr, ptr %i.tr, align 8, !tbaa !250
  %i.atm = getelementptr inbounds nuw [48 x i8], ptr %i.atl, i64 %indvars.iv1162.i
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 24
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !254
  %.not694.i = icmp eq ptr %i.ato, null
  br i1 %.not694.i, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atj, i64 4 ; 2 uses
  %i.atq = load i32, ptr %i.atp, align 4, !tbaa !387
  %i.atr = and i32 %i.atq, -5
  store i32 %i.atr, ptr %i.atp, align 4, !tbaa !387
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hr
  %indvars.iv.next1163.i = or disjoint i64 %indvars.iv1162.i, 1 ; 2 uses
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %.0.i743.i, i64 %indvars.iv.next1163.i ; 2 uses
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !380
  %.not693.i.1 = icmp eq i32 %i.att, 0
  br i1 %.not693.i.1, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.atu = load ptr, ptr %i.tr, align 8, !tbaa !250
  %i.atv = getelementptr inbounds nuw [48 x i8], ptr %i.atu, i64 %indvars.iv.next1163.i
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 24
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !254
  %.not694.i.1 = icmp eq ptr %i.atx, null
  br i1 %.not694.i.1, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.aty = getelementptr inbounds nuw i8, ptr %i.ats, i64 4 ; 2 uses
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !387
  %i.aua = and i32 %i.atz, -5
  store i32 %i.aua, ptr %i.aty, align 4, !tbaa !387
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %bb.hu
  %indvars.iv.next1163.i.1 = add nuw nsw i64 %indvars.iv1162.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.hr, !llvm.loop !507

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.hx
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph1082.i
  %indvars.iv1162.i.epil.init = phi i64 [ 0, %.lr.ph1082.i ], [ %indvars.iv.next1163.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11620 = trunc i32 %i.atg to i1
  call void @llvm.assume(i1 %lcmp.mod11620)
  %i.aub = getelementptr inbounds nuw [8 x i8], ptr %.0.i743.i, i64 %indvars.iv1162.i.epil.init ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !380
  %.not693.i.epil = icmp eq i32 %i.auc, 0
  br i1 %.not693.i.epil, label %.loopexit.i, label %bb.hy

bb.hy:                                            ; preds = %.epil.preheader
  %i.aud = load ptr, ptr %i.tr, align 8, !tbaa !250
  %i.aue = getelementptr inbounds nuw [48 x i8], ptr %i.aud, i64 %indvars.iv1162.i.epil.init
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 24
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !254
  %.not694.i.epil = icmp eq ptr %i.aug, null
  br i1 %.not694.i.epil, label %bb.hz, label %.loopexit.i

bb.hz:                                            ; preds = %bb.hy
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aub, i64 4 ; 2 uses
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !387
  %i.auj = and i32 %i.aui, -5
  store i32 %i.auj, ptr %i.auh, align 4, !tbaa !387
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.hz, %bb.hy, %.epil.preheader, %.preheader966.i, %._crit_edge1080.i, %bb.hm
  %.not669.i = icmp eq i32 %.5.i, 0
  br i1 %.not669.i, label %.thread949.i, label %.preheader965.i

.preheader965.i:                                  ; preds = %.loopexit.i
  %i.auk = load i32, ptr %i.ke, align 8, !tbaa !379 ; 2 uses
  %i.aul = icmp sgt i32 %i.auk, 0
  br i1 %i.aul, label %.lr.ph1086.i, label %._crit_edge1087.thread.i

.lr.ph1086.i:                                     ; preds = %.preheader965.i
  %wide.trip.count1170.i = zext nneg i32 %i.auk to i64
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ih, %.lr.ph1086.i
  %indvars.iv1167.i = phi i64 [ 0, %.lr.ph1086.i ], [ %indvars.iv.next1168.i, %bb.ih ] ; 7 uses
  %.241085.i = phi i32 [ %.5.i, %.lr.ph1086.i ], [ %.25.i, %bb.ih ] ; 5 uses
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %.0.i743.i, i64 %indvars.iv1167.i ; 3 uses
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !380
  %.not689.i = icmp eq i32 %i.aun, 0
  br i1 %.not689.i, label %bb.ih, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aum, i64 4
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !387
  %i.auq = and i32 %i.aup, 5
  %or.cond.not.i = icmp eq i32 %i.auq, 5
  br i1 %or.cond.not.i, label %bb.ic, label %bb.ih

bb.ic:                                            ; preds = %bb.ib
  %.not692.i = icmp samesign ult i64 %indvars.iv1167.i, %i.ka
  br i1 %.not692.i, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv1167.i
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 2
  %i.aut = load i8, ptr %i.aus, align 2, !tbaa !57
  %i.auu = icmp eq i8 %i.aut, -1
  br i1 %i.auu, label %bb.ie, label %bb.ih

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.auv = load ptr, ptr %i.tp, align 8, !tbaa !266
  %i.auw = load ptr, ptr %i.tr, align 8, !tbaa !250
  %i.aux = getelementptr inbounds nuw [48 x i8], ptr %i.auw, i64 %indvars.iv1167.i
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 12
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !251
  %i.ava = sext i32 %i.auz to i64
  %i.avb = getelementptr inbounds [36 x i8], ptr %i.auv, i64 %i.ava ; 3 uses
  %i.avc = load i32, ptr %i.avb, align 4, !tbaa !408
  %i.avd = zext i32 %i.avc to i64
  %i.ave = icmp eq i64 %indvars.iv1167.i, %i.avd
  br i1 %i.ave, label %zend_ssa_next_use.exit771.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.avf = getelementptr inbounds nuw i8, ptr %i.avb, i64 4
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !409
  %i.avh = zext i32 %i.avg to i64
  %i.avi = icmp eq i64 %indvars.iv1167.i, %i.avh
  %..i9212 = select i1 %i.avi, i64 28, i64 32
  br label %zend_ssa_next_use.exit771.i

zend_ssa_next_use.exit771.i:                      ; preds = %bb.if, %bb.ie
  %.sink1279.i = phi i64 [ 24, %bb.ie ], [ %..i9212, %bb.if ]
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avb, i64 %.sink1279.i
  %.0.i770.i = load i32, ptr %i.avj, align 4, !tbaa !65
  %i.avk = icmp slt i32 %.0.i770.i, 0
  br i1 %i.avk, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %zend_ssa_next_use.exit771.i
  store i32 0, ptr %i.aum, align 4, !tbaa !380
  %i.avl = add nsw i32 %.241085.i, -1
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %zend_ssa_next_use.exit771.i, %bb.id, %bb.ib, %bb.ia
  %.25.i = phi i32 [ %i.avl, %bb.ig ], [ %.241085.i, %zend_ssa_next_use.exit771.i ], [ %.241085.i, %bb.id ], [ %.241085.i, %bb.ia ], [ %.241085.i, %bb.ib ] ; 3 uses
  %indvars.iv.next1168.i = add nuw nsw i64 %indvars.iv1167.i, 1 ; 2 uses
  %exitcond1171.not.i = icmp eq i64 %indvars.iv.next1168.i, %wide.trip.count1170.i
  br i1 %exitcond1171.not.i, label %._crit_edge1087.i, label %bb.ia, !llvm.loop !508

._crit_edge1087.i:                                ; preds = %bb.ih
  %.not670.i = icmp eq i32 %.25.i, 0
  br i1 %.not670.i, label %.thread949.i, label %._crit_edge1087.thread.i

._crit_edge1087.thread.i:                         ; preds = %._crit_edge1087.i, %.preheader965.i
  %.24.lcssa1248.i = phi i32 [ %.25.i, %._crit_edge1087.i ], [ %.5.i, %.preheader965.i ]
  %i.avm = load i8, ptr %i.ra, align 2, !tbaa !57
  %switch731.i = icmp ult i8 %i.avm, 3
  br i1 %switch731.i, label %bb.ii, label %bb.ji

bb.ii:                                            ; preds = %._crit_edge1087.thread.i
  %i.avn = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !256
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 8
  %.01091.i = load ptr, ptr %i.avp, align 8, !tbaa !394 ; 2 uses
  %.not6731092.i = icmp eq ptr %.01091.i, null
  br i1 %.not6731092.i, label %.critedge.i9209, label %.lr.ph1096.i

.lr.ph1096.i:                                     ; preds = %bb.ii
  %i.avq = load i32, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4
  %i.avr = and i32 %i.avq, 2
  %.not.i909.i = icmp eq i32 %i.avr, 0
  br label %bb.ij

bb.ij:                                            ; preds = %bb.jh, %.lr.ph1096.i
  %.01094.i = phi ptr [ %.01091.i, %.lr.ph1096.i ], [ %.0.i9210, %bb.jh ] ; 3 uses
  %.271093.i = phi i32 [ %.24.lcssa1248.i, %.lr.ph1096.i ], [ %.28.i, %bb.jh ] ; 11 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %.01094.i, i64 68
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !259 ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %.01094.i, i64 96
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !263 ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 4
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !65
  %i.avy = sext i32 %i.avt to i64                 ; 3 uses
  %i.avz = getelementptr inbounds [8 x i8], ptr %.0.i743.i, i64 %i.avy ; 5 uses
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !380
  %.not682.i = icmp eq i32 %i.awa, 0
  %i.awb = sext i32 %i.avx to i64                 ; 3 uses
  %i.awc = getelementptr inbounds [8 x i8], ptr %.0.i743.i, i64 %i.awb ; 4 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !380
  %.not683.i = icmp eq i32 %i.awd, 0              ; 2 uses
  br i1 %.not682.i, label %bb.jd, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  br i1 %.not683.i, label %bb.il, label %bb.ir

bb.il:                                            ; preds = %bb.ik
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avz, i64 4 ; 2 uses
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !387 ; 2 uses
  %i.awg = or i32 %i.awf, 1
  store i32 %i.awg, ptr %i.awe, align 4, !tbaa !387
  %i.awh = and i32 %i.awf, 4
  %.not685.i = icmp eq i32 %i.awh, 0
  br i1 %.not685.i, label %bb.jh, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.awi = load ptr, ptr %i.tr, align 8, !tbaa !250
  %i.awj = getelementptr inbounds [48 x i8], ptr %i.awi, i64 %i.avy ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 12
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !251 ; 2 uses
  %i.awm = icmp sgt i32 %i.awl, -1
  br i1 %i.awm, label %bb.in, label %bb.jh

bb.in:                                            ; preds = %bb.im
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awj, i64 24
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !254
  %.not686.i = icmp eq ptr %i.awo, null
  br i1 %.not686.i, label %bb.io, label %bb.jh

bb.io:                                            ; preds = %bb.in
  %i.awp = load ptr, ptr %i.tp, align 8, !tbaa !266
  %i.awq = zext nneg i32 %i.awl to i64
  %i.awr = getelementptr inbounds nuw [36 x i8], ptr %i.awp, i64 %i.awq ; 3 uses
  %i.aws = load i32, ptr %i.awr, align 4, !tbaa !408
  %i.awt = icmp eq i32 %i.aws, %i.avt
  br i1 %i.awt, label %zend_ssa_next_use.exit.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awr, i64 4
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !409
  %i.aww = icmp eq i32 %i.awv, %i.avt
  %.1281.i = select i1 %i.aww, i64 28, i64 32
  br label %zend_ssa_next_use.exit.i

zend_ssa_next_use.exit.i:                         ; preds = %bb.ip, %bb.io
  %.sink1280.i = phi i64 [ 24, %bb.io ], [ %.1281.i, %bb.ip ]
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awr, i64 %.sink1280.i
  %.0.i768.i = load i32, ptr %i.awx, align 4, !tbaa !65
  %i.awy = icmp slt i32 %.0.i768.i, 0
  br i1 %i.awy, label %bb.iq, label %bb.jh

end_hunk_4
begin_hunk_5_@zend_jit_trace_build_tssa:bb.a

bb.di:                                            ; preds = %bb.dh
  %i.wm = shl i32 %.21999, 9
  %i.wn = load i32, ptr %.11930, align 8, !tbaa !57
  %i.wo = or i32 %i.wn, %i.wm
  store i32 %i.wo, ptr %.11930, align 8, !tbaa !57
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vu, i64 92 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vu, i64 72 ; 2 uses
  %i.wr = load i32, ptr %i.wp, align 4, !tbaa !248
  %i.ws = load i32, ptr %i.wq, align 8, !tbaa !249
  %i.wt = sub i32 0, %i.wr
  %.not280 = icmp eq i32 %i.ws, %i.wt
  br i1 %.not280, label %.loopexit138, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.di, %.lr.ph177
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %.lr.ph177 ], [ 0, %bb.di ] ; 2 uses
  %.62003175 = phi i32 [ %i.wu, %.lr.ph177 ], [ %.21999, %bb.di ] ; 2 uses
  %i.wu = add nsw i32 %.62003175, 1               ; 2 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv319
  store i32 %.62003175, ptr %i.wv, align 4, !tbaa !65
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.ww = load i32, ptr %i.wp, align 4, !tbaa !248
  %i.wx = load i32, ptr %i.wq, align 8, !tbaa !249
  %i.wy = add i32 %i.wx, %i.ww
  %i.wz = zext i32 %i.wy to i64
  %i.xa = icmp samesign ult i64 %indvars.iv.next320, %i.wz
  br i1 %i.xa, label %.lr.ph177, label %.loopexit138, !llvm.loop !574

bb.dj:                                            ; preds = %zend_jit_trace_ret_frame.exit
  %i.xb = add nsw i32 %.31987, -1
  br label %.loopexit138

.loopexit138.loopexit:                            ; preds = %bb.cx
  %i.xc = trunc nsw i64 %indvars.iv.next326 to i32
  br label %.loopexit138

.loopexit138:                                     ; preds = %.lr.ph177, %.lr.ph182, %zend_jit_trace_op_len.exit2441, %.loopexit138.loopexit, %bb.di, %bb.dc, %zend_jit_trace_add_call_phis.exit, %bb.dj
  %.22012 = phi i32 [ %.02010, %zend_jit_trace_add_call_phis.exit ], [ %.02010, %bb.dc ], [ %.02010, %bb.di ], [ %.02010, %bb.dj ], [ %.12011192, %zend_jit_trace_op_len.exit2441 ], [ %i.xc, %.loopexit138.loopexit ], [ %.02010, %.lr.ph182 ], [ %.02010, %.lr.ph177 ]
  %.72004 = phi i32 [ %.21999, %zend_jit_trace_add_call_phis.exit ], [ %.21999, %bb.dc ], [ %.21999, %bb.di ], [ %.21999, %bb.dj ], [ %i.tj, %zend_jit_trace_op_len.exit2441 ], [ %.42001, %.loopexit138.loopexit ], [ %i.vo, %.lr.ph182 ], [ %i.wu, %.lr.ph177 ]
  %.11996 = phi ptr [ %.01995, %zend_jit_trace_add_call_phis.exit ], [ %i.vd, %bb.dc ], [ %i.wj, %bb.di ], [ %i.wj, %bb.dj ], [ %.01995, %zend_jit_trace_op_len.exit2441 ], [ %.01995, %.loopexit138.loopexit ], [ %i.vd, %.lr.ph182 ], [ %i.wj, %.lr.ph177 ]
  %.41988 = phi i32 [ %.31987, %zend_jit_trace_add_call_phis.exit ], [ %i.vg, %bb.dc ], [ 0, %bb.di ], [ %i.xb, %bb.dj ], [ %.31987, %zend_jit_trace_op_len.exit2441 ], [ %.31987, %.loopexit138.loopexit ], [ %i.vg, %.lr.ph182 ], [ 0, %.lr.ph177 ]
  %.11950 = phi ptr [ %.01949, %zend_jit_trace_add_call_phis.exit ], [ %i.vc, %bb.dc ], [ %i.wi, %bb.di ], [ %i.wi, %bb.dj ], [ %.01949, %zend_jit_trace_op_len.exit2441 ], [ %.01949, %.loopexit138.loopexit ], [ %i.vc, %.lr.ph182 ], [ %i.wi, %.lr.ph177 ]
  %.31913 = phi ptr [ %.21912, %zend_jit_trace_add_call_phis.exit ], [ %i.vf, %bb.dc ], [ %i.vu, %bb.di ], [ %i.vu, %bb.dj ], [ %.21912, %zend_jit_trace_op_len.exit2441 ], [ %.21912, %.loopexit138.loopexit ], [ %i.vf, %.lr.ph182 ], [ %i.vu, %.lr.ph177 ]
  %i.xd = getelementptr inbounds nuw i8, ptr %.11930, i64 16
  br label %zend_jit_trace_add_call_phis.exit

bb.dk:                                            ; preds = %zend_jit_trace_add_call_phis.exit
  %i.xe = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.i2396, i64 40 ; 3 uses
  store i32 %.21999, ptr %i.xf, align 8, !tbaa !379
  %i.xg = sext i32 %.21999 to i64                 ; 2 uses
  %i.xh = tail call { i64, i64 } asm "mulq $3\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 48, i64 range(i64 -2147483648, 2147483648) %i.xg) #35, !srcloc !142 ; 2 uses
  %i.xi = extractvalue { i64, i64 } %i.xh, 0      ; 2 uses
  %i.xj = extractvalue { i64, i64 } %i.xh, 1
  %.not.i2389.not = icmp eq i64 %i.xj, 0
  br i1 %.not.i2389.not, label %zend_arena_calloc.exit2370, label %bb.dl, !prof !67

bb.dl:                                            ; preds = %bb.dk
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.44, i64 noundef 48, i64 noundef range(i64 -2147483648, 2147483648) %i.xg) #36
  unreachable

zend_arena_calloc.exit2370:                       ; preds = %bb.dk
  %i.xk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143 ; 5 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !139 ; 3 uses
  %i.xm = add i64 %i.xi, 7
  %i.xn = and i64 %i.xm, -8                       ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !144
  %i.xq = ptrtoint ptr %i.xp to i64               ; 2 uses
  %i.xr = ptrtoint ptr %i.xl to i64
  %i.xs = sub i64 %i.xq, %i.xr
  %.not.i2413 = icmp ugt i64 %i.xn, %i.xs
  br i1 %.not.i2413, label %bb.dn, label %bb.dm, !prof !88

bb.dm:                                            ; preds = %zend_arena_calloc.exit2370
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.xn
  store ptr %i.xt, ptr %i.xk, align 8, !tbaa !139
  br label %zend_arena_alloc.exit2416

bb.dn:                                            ; preds = %zend_arena_calloc.exit2370
  %i.xu = add i64 %i.xn, 24
  %i.xv = ptrtoint ptr %i.xk to i64
  %i.xw = sub i64 %i.xq, %i.xv
  %..i2415 = tail call i64 @llvm.umax.i64(i64 %i.xu, i64 %i.xw) ; 2 uses
  %i.xx = tail call noalias ptr @_emalloc(i64 noundef %..i2415) #37 ; 6 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 24 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.xn
  store ptr %i.xz, ptr %i.xx, align 8, !tbaa !139
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 %..i2415
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store ptr %i.ya, ptr %i.yb, align 8, !tbaa !144
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  store ptr %i.xk, ptr %i.yc, align 8, !tbaa !145
  store ptr %i.xx, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !143
  br label %zend_arena_alloc.exit2416

zend_arena_alloc.exit2416:                        ; preds = %bb.dm, %bb.dn
  %.0.i2414 = phi ptr [ %i.xl, %bb.dm ], [ %i.xy, %bb.dn ] ; 42 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i2414, i8 0, i64 %i.xi, i1 false)
  %i.yd = getelementptr inbounds nuw i8, ptr %.0.i2396, i64 64 ; 45 uses
  store ptr %.0.i2414, ptr %i.yd, align 8, !tbaa !250
  %i.ye = load i8, ptr %i.mh, align 1, !tbaa !57
  %i.yf = icmp eq i8 %i.ye, 2
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xe, i64 92
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !248 ; 2 uses
  br i1 %i.yf, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %zend_arena_alloc.exit2416
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xe, i64 72
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !249
  %i.yk = add i32 %i.yj, %i.yh
  br label %bb.dp

bb.dp:                                            ; preds = %zend_arena_alloc.exit2416, %bb.do
  %.02005 = phi i32 [ %i.yk, %bb.do ], [ %i.yh, %zend_arena_alloc.exit2416 ] ; 6 uses
  %i.yl = icmp sgt i32 %.02005, 0
  br i1 %i.yl, label %.lr.ph202.preheader, label %.preheader137

.lr.ph202.preheader:                              ; preds = %bb.dp
  %wide.trip.count331 = zext nneg i32 %.02005 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count331, 1
  %i.ym = icmp eq i32 %.02005, 1
  br i1 %i.ym, label %.lr.ph202.epil.preheader, label %.lr.ph202.preheader.new

.lr.ph202.preheader.new:                          ; preds = %.lr.ph202.preheader
  %unroll_iter = and i64 %wide.trip.count331, 2147483646
  br label %.lr.ph202

.preheader137.loopexit.unr-lcssa:                 ; preds = %.lr.ph202
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader137, label %.lr.ph202.epil.preheader

.lr.ph202.epil.preheader:                         ; preds = %.preheader137.loopexit.unr-lcssa, %.lr.ph202.preheader
  %indvars.iv328.epil.init = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next329.1, %.preheader137.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod742 = trunc i32 %.02005 to i1
  tail call void @llvm.assume(i1 %lcmp.mod742)
  %i.yn = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv328.epil.init ; 4 uses
  %i.yo = trunc nuw nsw i64 %indvars.iv328.epil.init to i32
  store i32 %i.yo, ptr %i.yn, align 8, !tbaa !397
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  store i32 -1, ptr %i.yp, align 4, !tbaa !575
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  store i32 -1, ptr %i.yq, align 8, !tbaa !391
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yn, i64 12
  store i32 -1, ptr %i.yr, align 4, !tbaa !251
  br label %.preheader137

.preheader137:                                    ; preds = %.lr.ph202.epil.preheader, %.preheader137.loopexit.unr-lcssa, %bb.dp
  %.32023.lcssa = phi i32 [ 0, %bb.dp ], [ %.02005, %.preheader137.loopexit.unr-lcssa ], [ %.02005, %.lr.ph202.epil.preheader ] ; 2 uses
  %i.ys = load i32, ptr %i.xf, align 8, !tbaa !379 ; 2 uses
  %i.yt = icmp slt i32 %.32023.lcssa, %i.ys
  br i1 %i.yt, label %.lr.ph205.preheader, label %._crit_edge206

.lr.ph205.preheader:                              ; preds = %.preheader137
  %i.yu = zext nneg i32 %.32023.lcssa to i64      ; 4 uses
  %wide.trip.count336 = zext nneg i32 %i.ys to i64 ; 3 uses
  %i.yv = sub nsw i64 %wide.trip.count336, %i.yu
  %xtraiter743 = and i64 %i.yv, 7                 ; 2 uses
  %lcmp.mod744.not = icmp eq i64 %xtraiter743, 0
  br i1 %lcmp.mod744.not, label %.lr.ph205.prol.loopexit, label %.lr.ph205.prol

.lr.ph205.prol:                                   ; preds = %.lr.ph205.preheader, %.lr.ph205.prol
  %indvars.iv333.prol = phi i64 [ %indvars.iv.next334.prol, %.lr.ph205.prol ], [ %i.yu, %.lr.ph205.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph205.prol ], [ 0, %.lr.ph205.preheader ]
  %i.yw = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333.prol
  %indvars.iv.next334.prol = add nuw nsw i64 %indvars.iv333.prol, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i8 -1, i64 16, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter743
  br i1 %prol.iter.cmp.not, label %.lr.ph205.prol.loopexit, label %.lr.ph205.prol, !llvm.loop !576

.lr.ph205.prol.loopexit:                          ; preds = %.lr.ph205.prol, %.lr.ph205.preheader
  %indvars.iv333.unr = phi i64 [ %i.yu, %.lr.ph205.preheader ], [ %indvars.iv.next334.prol, %.lr.ph205.prol ]
  %i.yx = sub nsw i64 %i.yu, %wide.trip.count336
  %i.yy = icmp ugt i64 %i.yx, -8
  br i1 %i.yy, label %._crit_edge206, label %.lr.ph205

.lr.ph202:                                        ; preds = %.lr.ph202, %.lr.ph202.preheader.new
  %indvars.iv328 = phi i64 [ 0, %.lr.ph202.preheader.new ], [ %indvars.iv.next329.1, %.lr.ph202 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph202.preheader.new ], [ %niter.next.1, %.lr.ph202 ]
  %i.yz = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv328 ; 4 uses
  %i.za = trunc nuw nsw i64 %indvars.iv328 to i32
  store i32 %i.za, ptr %i.yz, align 8, !tbaa !397
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  store i32 -1, ptr %i.zb, align 4, !tbaa !575
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  store i32 -1, ptr %i.zc, align 8, !tbaa !391
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 12
  store i32 -1, ptr %i.zd, align 4, !tbaa !251
  %indvars.iv.next329 = or disjoint i64 %indvars.iv328, 1 ; 2 uses
  %i.ze = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv.next329 ; 4 uses
  %i.zf = trunc nuw nsw i64 %indvars.iv.next329 to i32
  store i32 %i.zf, ptr %i.ze, align 8, !tbaa !397
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  store i32 -1, ptr %i.zg, align 4, !tbaa !575
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  store i32 -1, ptr %i.zh, align 8, !tbaa !391
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 12
  store i32 -1, ptr %i.zi, align 4, !tbaa !251
  %indvars.iv.next329.1 = add nuw nsw i64 %indvars.iv328, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader137.loopexit.unr-lcssa, label %.lr.ph202, !llvm.loop !577

.lr.ph205:                                        ; preds = %.lr.ph205.prol.loopexit, %.lr.ph205
  %indvars.iv333 = phi i64 [ %indvars.iv.next334.7, %.lr.ph205 ], [ %indvars.iv333.unr, %.lr.ph205.prol.loopexit ] ; 9 uses
  %i.zj = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zj, i8 -1, i64 16, i1 false)
  %i.zk = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zl, i8 -1, i64 16, i1 false)
  %i.zm = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zn, i8 -1, i64 16, i1 false)
  %i.zo = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zp, i8 -1, i64 16, i1 false)
  %i.zq = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zr, i8 -1, i64 16, i1 false)
  %i.zs = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zt, i8 -1, i64 16, i1 false)
  %i.zu = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zv, i8 -1, i64 16, i1 false)
  %i.zw = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv333
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 336
  %indvars.iv.next334.7 = add nuw nsw i64 %indvars.iv333, 8 ; 2 uses
  %exitcond337.not.7 = icmp eq i64 %indvars.iv.next334.7, %wide.trip.count336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zx, i8 -1, i64 16, i1 false)
  br i1 %exitcond337.not.7, label %._crit_edge206, label %.lr.ph205, !llvm.loop !578

._crit_edge206:                                   ; preds = %.lr.ph205.prol.loopexit, %.lr.ph205, %.preheader137
  %i.zy = load i8, ptr %i.mi, align 2, !tbaa !57
  %switch2365 = icmp ult i8 %i.zy, 3
  br i1 %switch2365, label %bb.dq, label %.loopexit136

bb.dq:                                            ; preds = %._crit_edge206
  %i.zz = load ptr, ptr %i.lj, align 8, !tbaa !256
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  %.01940207 = load ptr, ptr %i.aaa, align 8, !tbaa !394 ; 2 uses
  %.not208 = icmp eq ptr %.01940207, null
  br i1 %.not208, label %.loopexit136, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.dq, %.lr.ph211
  %.01940209 = phi ptr [ %.01940, %.lr.ph211 ], [ %.01940207, %bb.dq ] ; 7 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.01940209, i64 64 ; 2 uses
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !262
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [4 x i8], ptr %.01995, i64 %i.aad
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !65
  %i.aag = getelementptr inbounds nuw i8, ptr %.01940209, i64 96
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !263 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 4 ; 2 uses
  store i32 %i.aaf, ptr %i.aai, align 4, !tbaa !65
  %i.aaj = load i32, ptr %i.aab, align 8, !tbaa !262
  %i.aak = getelementptr inbounds nuw i8, ptr %.01940209, i64 68
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !259
  %i.aam = sext i32 %i.aal to i64
  %i.aan = getelementptr inbounds [48 x i8], ptr %.0.i2414, i64 %i.aam ; 2 uses
  store i32 %i.aaj, ptr %i.aan, align 8, !tbaa !397
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  store ptr %.01940209, ptr %i.aao, align 8, !tbaa !384
  %i.aap = load i32, ptr %i.aah, align 4, !tbaa !65
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [48 x i8], ptr %.0.i2414, i64 %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  store ptr %.01940209, ptr %i.aas, align 8, !tbaa !254
  %i.aat = load i32, ptr %i.aai, align 4, !tbaa !65
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds [48 x i8], ptr %.0.i2414, i64 %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 24
  store ptr %.01940209, ptr %i.aaw, align 8, !tbaa !254
  %.01940 = load ptr, ptr %.01940209, align 8, !tbaa !394 ; 2 uses
  %.not = icmp eq ptr %.01940, null
  br i1 %.not, label %.loopexit136, label %.lr.ph211, !llvm.loop !579

.loopexit136:                                     ; preds = %.lr.ph211, %bb.dq, %._crit_edge206
  %i.aax = icmp sgt i32 %.02006, 0
  br i1 %i.aax, label %.lr.ph215.preheader, label %._crit_edge216

.lr.ph215.preheader:                              ; preds = %.loopexit136
  %i.aay = add nsw i32 %.02006, -1                ; 2 uses
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [36 x i8], ptr %.0.i2422, i64 %i.aaz
  %i.abb = zext nneg i32 %i.aay to i64
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %bb.ec
  %indvars.iv338 = phi i64 [ %i.abb, %.lr.ph215.preheader ], [ %indvars.iv.next339, %bb.ec ] ; 9 uses
  %.01909213 = phi ptr [ %i.aba, %.lr.ph215.preheader ], [ %i.adl, %bb.ec ] ; 10 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %.0.i2410, i64 %indvars.iv338
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !244 ; 3 uses
  %i.abe = load i32, ptr %.01909213, align 4, !tbaa !408 ; 4 uses
  %i.abf = icmp sgt i32 %i.abe, -1
  br i1 %i.abf, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.lr.ph215
  %i.abg = zext nneg i32 %i.abe to i64
  %i.abh = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %i.abg
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 12 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !251
  %i.abk = getelementptr inbounds nuw i8, ptr %.01909213, i64 24
  store i32 %i.abj, ptr %i.abk, align 4, !tbaa !496
  %i.abl = trunc nuw nsw i64 %indvars.iv338 to i32
  store i32 %i.abl, ptr %i.abi, align 4, !tbaa !251
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.lr.ph215
  %i.abm = getelementptr inbounds nuw i8, ptr %.01909213, i64 4
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !409 ; 4 uses
  %i.abo = icmp slt i32 %i.abn, 0
  %.not2311 = icmp eq i32 %i.abn, %i.abe
  %or.cond80 = or i1 %i.abo, %.not2311
  br i1 %or.cond80, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abp = zext nneg i32 %i.abn to i64
  %i.abq = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %i.abp
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 12 ; 2 uses
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !251
  %i.abt = getelementptr inbounds nuw i8, ptr %.01909213, i64 28
  store i32 %i.abs, ptr %i.abt, align 4, !tbaa !497
  %i.abu = trunc nuw nsw i64 %indvars.iv338 to i32
  store i32 %i.abu, ptr %i.abr, align 4, !tbaa !251
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.abv = getelementptr inbounds nuw i8, ptr %.01909213, i64 8
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !426 ; 4 uses
  %i.abx = icmp slt i32 %i.abw, 0
  %.not2312 = icmp eq i32 %i.abw, %i.abe
  %or.cond81 = or i1 %i.abx, %.not2312
  %.not2313 = icmp eq i32 %i.abw, %i.abn
  %or.cond83 = or i1 %.not2313, %or.cond81
  br i1 %or.cond83, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aby = zext nneg i32 %i.abw to i64
  %i.abz = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %i.aby
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 12 ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !251
  %i.acc = getelementptr inbounds nuw i8, ptr %.01909213, i64 32
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !498
  %i.acd = trunc nuw nsw i64 %indvars.iv338 to i32
  store i32 %i.acd, ptr %i.aca, align 4, !tbaa !251
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.ace = getelementptr inbounds nuw i8, ptr %.01909213, i64 12
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !427 ; 2 uses
  %i.acg = icmp sgt i32 %i.acf, -1
  br i1 %i.acg, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.aci = load i32, ptr %i.ach, align 8, !tbaa !57
  %i.acj = lshr i32 %i.aci, 4
  %i.ack = add nsw i32 %i.acj, -5
  %i.acl = zext nneg i32 %i.acf to i64
  %i.acm = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %i.acl ; 2 uses
  store i32 %i.ack, ptr %i.acm, align 8, !tbaa !397
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  %i.aco = trunc nuw nsw i64 %indvars.iv338 to i32
  store i32 %i.aco, ptr %i.acn, align 8, !tbaa !391
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.acp = getelementptr inbounds nuw i8, ptr %.01909213, i64 16
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !433 ; 2 uses
  %i.acr = icmp sgt i32 %i.acq, -1
  br i1 %i.acr, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abd, i64 12
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !57
  %i.acu = lshr i32 %i.act, 4
  %i.acv = add nsw i32 %i.acu, -5
  %i.acw = zext nneg i32 %i.acq to i64
  %i.acx = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %i.acw ; 2 uses
  store i32 %i.acv, ptr %i.acx, align 8, !tbaa !397
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  %i.acz = trunc nuw nsw i64 %indvars.iv338 to i32
  store i32 %i.acz, ptr %i.acy, align 8, !tbaa !391
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.ada = getelementptr inbounds nuw i8, ptr %.01909213, i64 20
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !399 ; 2 uses
  %i.adc = icmp sgt i32 %i.adb, -1
  br i1 %i.adc, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.add = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.ade = load i32, ptr %i.add, align 8, !tbaa !57
  %i.adf = lshr i32 %i.ade, 4
  %i.adg = add nsw i32 %i.adf, -5
  %i.adh = zext nneg i32 %i.adb to i64
  %i.adi = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %i.adh ; 2 uses
  store i32 %i.adg, ptr %i.adi, align 8, !tbaa !397
end_hunk_5
begin_hunk_6_@zend_jit_find_static_method_helper:bb.a

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !732
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !57
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao ; 2 uses
  store ptr %1, ptr %i.ap, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.053, ptr %i.aq, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ar = load i8, ptr %.053, align 8, !tbaa !57
  %i.as = icmp eq i8 %i.ar, 2
  br i1 %i.as, label %bb.n, label %bb.r, !prof !67

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.053, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = and i64 %i.av, 1
  %.not65 = icmp eq i64 %i.aw, 0
  br i1 %.not65, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !107
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.av
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ba = phi ptr [ %i.az, %bb.o ], [ %i.au, %bb.n ]
  %.not66 = icmp eq ptr %i.ba, null
  br i1 %.not66, label %bb.q, label %bb.r, !prof !88

bb.q:                                             ; preds = %bb.p
  tail call void @zend_init_func_run_time_cache(ptr noundef nonnull %.053) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.h, %bb.q, %bb.p, %bb.m, %bb.b, %bb.d
  %.1 = phi ptr [ null, %bb.h ], [ %.053, %bb.q ], [ null, %bb.i ], [ %i.l, %bb.b ], [ %i.p, %bb.d ], [ %.053, %bb.m ], [ %.053, %bb.p ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_push_this_method_call_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !246 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !57
  %.not = icmp eq i8 %i.d, 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !726  ; 2 uses
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %instanceof_function.exit.thread, label %instanceof_function.exit

instanceof_function.exit:                         ; preds = %bb.b
  %i.i = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.g, ptr noundef %0) #34
  br i1 %i.i, label %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, label %bb.c

instanceof_function.exit.instanceof_function.exit.thread_crit_edge: ; preds = %instanceof_function.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %instanceof_function.exit.thread

bb.c:                                             ; preds = %instanceof_function.exit, %bb.a
  tail call void @zend_non_static_method_call(ptr noundef %1) #34
  br label %zend_vm_stack_push_call_frame_ex.exit

instanceof_function.exit.thread:                  ; preds = %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, %bb.b
  %i.j = phi ptr [ %.pre, %instanceof_function.exit.instanceof_function.exit.thread_crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = add i32 %2, 5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57
  %i.n = add i32 %i.k, %i.m                       ; 2 uses
  %i.o = load i8, ptr %1, align 8, !tbaa !57
  %.not.i.i = icmp eq i8 %i.o, 1
  br i1 %.not.i.i, label %zend_vm_stack_push_call_frame.exit, label %bb.d, !prof !88

bb.d:                                             ; preds = %instanceof_function.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !57
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.s, i32 %2)
  %i.t = add i32 %i.q, %i.n
  %i.u = sub i32 %i.t, %..i.i
  br label %zend_vm_stack_push_call_frame.exit

zend_vm_stack_push_call_frame.exit:               ; preds = %instanceof_function.exit.thread, %bb.d
  %.0.i.i = phi i32 [ %i.u, %bb.d ], [ %i.n, %instanceof_function.exit.thread ]
  %i.v = shl i32 %.0.i.i, 4
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !720 ; 7 uses
  %i.x = zext i32 %i.v to i64                     ; 3 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 488), align 8, !tbaa !743
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !88

bb.e:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.ad = tail call ptr @zend_vm_stack_extend(i64 noundef %i.x) #34 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %1, ptr %i.ae, align 8, !tbaa !159
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.j, ptr %i.af, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 262920, ptr %i.ag, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 %2, ptr %i.ah, align 4, !tbaa !57
  br label %zend_vm_stack_push_call_frame_ex.exit

bb.f:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !720
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %1, ptr %i.aj, align 8, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.j, ptr %i.ak, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 776, ptr %i.al, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  store i32 %2, ptr %i.am, align 4, !tbaa !57
  br label %zend_vm_stack_push_call_frame_ex.exit

zend_vm_stack_push_call_frame_ex.exit:            ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.ad, %bb.e ], [ %i.w, %bb.f ]
  ret ptr %.0
}

declare ptr @zend_fetch_class_by_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @zend_fetch_class(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @zend_std_get_static_method(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_non_static_method_call(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @zend_jit_rope_end(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = add i32 %1, 1                            ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %i.a, 4
  br i1 %i.b, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.02431 = phi i32 [ 512, %.new ], [ %i.ah, %bb.b ]
  %.02530 = phi i64 [ 0, %.new ], [ %i.ak, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !57
  %i.g = and i32 %.02431, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !298
  %i.j = add i64 %i.i, %.02530
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !445  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = and i32 %i.g, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !298
  %i.s = add i64 %i.r, %i.j
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !445  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !57
  %i.y = and i32 %i.p, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !298
  %i.ab = add i64 %i.aa, %i.s
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !445 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !57
  %i.ah = and i32 %i.y, %i.ag                     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !298
  %i.ak = add i64 %i.aj, %i.ab                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %zend_string_alloc.exit.unr-lcssa, label %bb.b, !llvm.loop !745

zend_string_alloc.exit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zend_string_alloc.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %zend_string_alloc.exit.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %zend_string_alloc.exit.unr-lcssa ]
  %.02431.epil.init = phi i32 [ 512, %bb.a ], [ %i.ah, %zend_string_alloc.exit.unr-lcssa ]
  %.02530.epil.init = phi i64 [ 0, %bb.a ], [ %i.ak, %zend_string_alloc.exit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.02431.epil = phi i32 [ %.02431.epil.init, %.epil.preheader ], [ %i.ap, %bb.c ]
  %.02530.epil = phi i64 [ %.02530.epil.init, %.epil.preheader ], [ %i.as, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !445 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !57
  %i.ap = and i32 %.02431.epil, %i.ao             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !298
  %i.as = add i64 %i.ar, %.02530.epil             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %zend_string_alloc.exit, label %bb.c, !llvm.loop !746

zend_string_alloc.exit:                           ; preds = %bb.c, %zend_string_alloc.exit.unr-lcssa
  %.lcssa43 = phi i32 [ %i.ah, %zend_string_alloc.exit.unr-lcssa ], [ %i.ap, %bb.c ]
  %.lcssa42 = phi i64 [ %i.ak, %zend_string_alloc.exit.unr-lcssa ], [ %i.as, %bb.c ] ; 2 uses
  %i.at = and i64 %.lcssa42, -8
  %i.au = add i64 %i.at, 32
  %i.av = tail call noalias ptr @_emalloc(i64 noundef %i.au) #37 ; 6 uses
  store i32 1, ptr %i.av, align 4, !tbaa !317
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !685
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.lcssa42, ptr %i.ay, align 8, !tbaa !298
  %i.az = or disjoint i32 %.lcssa43, 22
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  br label %bb.d

bb.d:                                             ; preds = %zend_string_alloc.exit, %zend_string_release_ex.exit
  %.033 = phi ptr [ %i.ba, %zend_string_alloc.exit ], [ %i.bh, %zend_string_release_ex.exit ] ; 2 uses
  %.132 = phi i32 [ 0, %zend_string_alloc.exit ], [ %i.bp, %zend_string_release_ex.exit ] ; 2 uses
  %i.bb = zext i32 %.132 to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !445 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !298 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.033, ptr nonnull align 1 %i.be, i64 %i.bg, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.033, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !57
  %i.bk = and i32 %i.bj, 64
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.e, label %zend_string_release_ex.exit

bb.e:                                             ; preds = %bb.d
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !317 ; 2 uses
  %i.bm = icmp ne i32 %i.bl, 0
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bd, align 8, !tbaa !317
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.f, label %zend_string_release_ex.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_efree(ptr noundef nonnull %i.bd) #34
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  %i.bp = add i32 %.132, 1                        ; 2 uses
  %.not28 = icmp ugt i32 %i.bp, %1
  br i1 %.not28, label %bb.g, label %bb.d, !llvm.loop !747

bb.g:                                             ; preds = %zend_string_release_ex.exit
  store i8 0, ptr %i.bh, align 1, !tbaa !57
  ret ptr %i.av
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jit_frameless_observer(ptr noundef nonnull %0, i32 %.20.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = load ptr, ptr @zend_flf_functions, align 8, !tbaa !748
  %i.c = zext i32 %.20.val to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !323
  %i.f = call fastcc i64 @jit_observer_fcall_is_unobserved_start(ptr noundef %0, ptr noundef %i.e, ptr noundef %i.a, i32 noundef 0, i32 noundef 0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.h = tail call ptr @zend_hash_index_lookup(ptr noundef nonnull %i.g, i64 noundef ptrtoint (ptr @zend_frameless_observed_call to i64)) #34 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !57
  %i.k = icmp eq i8 %i.j, 4
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.h, align 8, !tbaa !57
  %i.m = trunc i64 %i.l to i32
  br label %jit_CONST_ADDR.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @ir_unique_const_addr(ptr noundef nonnull %0, i64 noundef ptrtoint (ptr @zend_frameless_observed_call to i64)) #34 ; 2 uses
  %i.o = sext i32 %i.n to i64
  store i64 %i.o, ptr %i.h, align 8, !tbaa !57
  store i32 4, ptr %i.i, align 8, !tbaa !57
  br label %jit_CONST_ADDR.exit

jit_CONST_ADDR.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.n, %bb.c ], [ %i.m, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = load i32, ptr %i.p, align 8, !tbaa !57   ; 4 uses
  %i.r = icmp ne i32 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 940 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !438  ; 4 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.loopexit.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %jit_CONST_ADDR.exit
  %i.v = icmp eq i32 %i.q, %i.t
  br i1 %i.v, label %jit_FP.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !419
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.015.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ad, %bb.e ]
  %i.x = sext i32 %.015.i to i64
  %i.y = getelementptr inbounds [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !57    ; 2 uses
  %i.aa = icmp ugt i8 %i.z, 98
  %i.ab = icmp eq i8 %i.z, 74
  %or.cond.i = or i1 %i.aa, %i.ab
  br i1 %or.cond.i, label %.loopexit.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !57 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %i.t
  br i1 %i.ae, label %jit_FP.exit, label %bb.d

.loopexit.sink.split.i:                           ; preds = %bb.d, %jit_CONST_ADDR.exit
  %i.af = tail call i32 @_ir_RLOAD(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 12) #34 ; 2 uses
  store i32 %i.af, ptr %i.s, align 4, !tbaa !438
  br label %jit_FP.exit

jit_FP.exit:                                      ; preds = %bb.e, %.preheader.i, %.loopexit.sink.split.i
  %i.ag = phi i32 [ %i.af, %.loopexit.sink.split.i ], [ %i.q, %.preheader.i ], [ %i.t, %bb.e ]
  %.sroa.0.0.extract.trunc = trunc i64 %i.f to i32
  %i.ah = tail call i32 @_ir_CALL_1(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i, i32 noundef %i.ag) #34 ; 0 uses
  %i.ai = tail call i32 @_ir_END(ptr noundef nonnull %0) #34
  tail call void @_ir_IF_TRUE(ptr noundef nonnull %0, i32 noundef %.sroa.0.0.extract.trunc) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %i.ai
}

declare void @zend_frameless_observed_call(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @zend_jit_class_may_be_modified(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !461
  switch i8 %i.a, label %bb.m [
    i8 1, label %.loopexit
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !431  ; 2 uses
  %i.d = and i32 %i.c, 1024
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !239
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %.not36 = icmp eq ptr %i.k, null
  br i1 %.not36, label %bb.g, label %bb.e
end_hunk_6
begin_hunk_7_@zend_runtime_jit:bb.a
  %.off = add i8 %i.af, -63
  %switch = icmp ult i8 %.off, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.020, i64 32
  br i1 %switch, label %.critedge, label %.loopexit, !llvm.loop !772

.loopexit:                                        ; preds = %.critedge, %bb.h
  %.121 = phi ptr [ %i.e, %bb.h ], [ %.020, %.critedge ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !121
  store ptr %i.ai, ptr %.121, align 8, !tbaa !105
  %i.aj = call fastcc i32 @zend_real_jit_func(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) ; 0 uses
  %i.ak = load i32, ptr %i.k, align 4, !tbaa !327
  %i.al = or i32 %i.ak, 131072
  store i32 %i.al, ptr %i.k, align 4, !tbaa !327
  br label %bb.i

bb.i:                                             ; preds = %zend_jit_unprotect.exit, %.loopexit
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !169
  %i.an = icmp eq ptr %i.am, %2
  call void @llvm.assume(i1 %i.an)
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 24), align 8, !tbaa !155
  %i.ap = and i64 %i.ao, 288
  %.not.i28 = icmp eq i64 %i.ap, 0
  br i1 %.not.i28, label %bb.j, label %zend_jit_protect.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @dasm_buf, align 8, !tbaa !60
  %i.ar = load i64, ptr @dasm_size, align 8, !tbaa !135
  %i.as = call i32 @mprotect(ptr noundef %i.aq, i64 noundef %i.ar, i32 noundef 5) #34
  %.not1.i29 = icmp eq i32 %i.as, 0
  br i1 %.not1.i29, label %zend_jit_protect.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !167
  %i.au = call ptr @__errno_location() #38
  %i.av = load i32, ptr %i.au, align 4, !tbaa !65 ; 2 uses
  %i.aw = call ptr @strerror(i32 noundef %i.av) #34
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.24, i32 noundef %i.av, ptr noundef %i.aw) #39 ; 0 uses
  br label %zend_jit_protect.exit

zend_jit_protect.exit:                            ; preds = %bb.i, %bb.j, %bb.k
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 54), align 2, !tbaa !166, !range !81, !noundef !82
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %zend_jit_protect.exit
  call void @zend_accel_shared_protect(i1 noundef zeroext true) #34
  br label %bb.m

bb.m:                                             ; preds = %zend_jit_protect.exit, %bb.l
  call void @zend_shared_alloc_unlock() #34
  br i1 %.not30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_zend_bailout(ptr noundef nonnull @.str.8, i32 noundef 3133) #36
  unreachable

.critedge27:                                      ; preds = %bb.a, %bb.b
  call void @zend_shared_alloc_unlock() #34
  br label %bb.o

bb.o:                                             ; preds = %.critedge27, %bb.m
  %i.ba = load ptr, ptr %1, align 8, !tbaa !105
  %i.bb = musttail call preserve_nonecc ptr %i.ba(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #34
  ret ptr %i.bb
}

declare preserve_nonecc ptr @zend_jit_profile_helper(ptr noundef, ptr noundef) #4

declare preserve_nonecc ptr @zend_jit_func_counter_helper(ptr noundef, ptr noundef) #4

declare preserve_nonecc ptr @zend_jit_loop_counter_helper(ptr noundef, ptr noundef) #4

declare preserve_nonecc ptr @zend_jit_func_trace_helper(ptr noundef, ptr noundef) #4

declare preserve_nonecc ptr @zend_jit_ret_trace_helper(ptr noundef, ptr noundef) #4

declare preserve_nonecc ptr @zend_jit_loop_trace_helper(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

declare i32 @ir_perf_jitdump_close() local_unnamed_addr #4

declare void @ir_gdb_unregister_all() local_unnamed_addr #4

declare void @zend_foreach_op_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @zend_jit_restart_preloaded_op_array(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zend_cfg, align 8          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr @zend_func_info_rid, align 4, !tbaa !65
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %zend_jit_restart_hot_trace_counters.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !196  ; 2 uses
  %i.h = and i32 %i.g, 65536
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !189
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %zend_jit_restart_hot_trace_counters.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.l = load ptr, ptr @zend_jit_func_trace_counter_handler, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr @zend_jit_loop_trace_counter_handler, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !57
  %i.r = and i8 %i.q, 67                          ; 2 uses
  store i8 %i.r, ptr %i.p, align 8, !tbaa !57
  switch i8 %i.r, label %bb.f [
    i8 1, label %bb.g
    i8 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %i.l, %bb.e ], [ %i.s, %bb.f ], [ %i.n, %bb.d ]
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv.i
  store ptr %.sink.i, ptr %i.u, align 8, !tbaa !105
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.i, align 8, !tbaa !189
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %bb.d, label %zend_jit_restart_hot_trace_counters.exit, !llvm.loop !773

bb.h:                                             ; preds = %bb.b
  %i.y = and i32 %i.g, 32768
  %.not8 = icmp eq i32 %i.y, 0
  br i1 %.not8, label %zend_jit_restart_hot_trace_counters.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !189 ; 3 uses
  %.not.i9 = icmp eq i32 %i.aa, 0
  br i1 %.not.i9, label %._crit_edge.i, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !89 ; 5 uses
  %wide.trip.count.i = zext i32 %i.aa to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ae = icmp ult i32 %i.aa, 4
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i10.new

.lr.ph.i10.new:                                   ; preds = %.lr.ph.i10
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i10.new
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10.new ], [ %indvars.iv.next.i12.3, %bb.j ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i10.new ], [ %niter.next.3, %bb.j ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i11
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i11
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !105
  %indvars.iv.next.i12 = or disjoint i64 %indvars.iv.i11, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i12
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.next.i12
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !105
  %indvars.iv.next.i12.1 = or disjoint i64 %indvars.iv.i11, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i12.1
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.next.i12.1
  store ptr %i.am, ptr %i.an, align 8, !tbaa !105
  %indvars.iv.next.i12.2 = or disjoint i64 %indvars.iv.i11, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i12.2
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.next.i12.2
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !105
  %indvars.iv.next.i12.3 = add nuw nsw i64 %indvars.iv.i11, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.j, !llvm.loop !774

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i10
  %indvars.iv.i11.epil.init = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i11.epil = phi i64 [ %indvars.iv.i11.epil.init, %.epil.preheader ], [ %indvars.iv.next.i12.epil, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i11.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !60
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i11.epil
  store ptr %i.as, ptr %i.at, align 8, !tbaa !105
  %indvars.iv.next.i12.epil = add nuw nsw i64 %indvars.iv.i11.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.k, !llvm.loop !775

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.k, %bb.i
  call void @zend_build_cfg(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %0, i32 noundef 1262485504, ptr noundef nonnull %2) #34
  %i.au = load i32, ptr %2, align 8, !tbaa !330
  %i.av = icmp sgt i32 %i.au, 100000
  br i1 %i.av, label %zend_jit_restart_hot_counters.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  call void @zend_cfg_build_predecessors(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), ptr noundef nonnull %2) #34
  call void @zend_cfg_compute_dominators_tree(ptr noundef nonnull %0, ptr noundef nonnull %2) #34
  call void @zend_cfg_identify_loops(ptr noundef nonnull %0, ptr noundef nonnull %2) #34
  %.val.i = load i32, ptr %2, align 8             ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val11.i = load ptr, ptr %i.aw, align 8        ; 3 uses
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 80), align 8, !tbaa !335
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !101
  %i.bc = and i32 %i.bb, 256
  %.not17.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not17.i.i, label %.critedge.i.i, label %.loopexit2.i.i

.critedge.i.i:                                    ; preds = %bb.m, %.critedge.i.i
  %.015.i.i = phi ptr [ %i.bf, %.critedge.i.i ], [ %i.az, %bb.m ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 28
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !102
  %.off.i.i = add i8 %i.be, -63
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 32
  br i1 %switch.i.i, label %.critedge.i.i, label %.loopexit2.i.i, !llvm.loop !336

.loopexit2.i.i:                                   ; preds = %.critedge.i.i, %bb.m
  %.1.i.i = phi ptr [ %i.az, %bb.m ], [ %.015.i.i, %.critedge.i.i ]
  %i.bg = load ptr, ptr @zend_jit_func_hot_counter_handler, align 8, !tbaa !60
  store ptr %i.bg, ptr %.1.i.i, align 8, !tbaa !105
  br label %bb.n

bb.n:                                             ; preds = %.loopexit2.i.i, %bb.l
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 72), align 8, !tbaa !337
  %.not18.i.i = icmp ne i64 %i.bh, 0
  %i.bi = icmp ne i32 %.val.i, 0
  %or.cond.i.i = select i1 %.not18.i.i, i1 %i.bi, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %zend_jit_restart_hot_counters.exit

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bj = load ptr, ptr @zend_jit_loop_hot_counter_handler, align 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %wide.trip.count.i.i = zext i32 %.val.i to i64  ; 2 uses
  %xtraiter16 = and i64 %wide.trip.count.i.i, 1
  %i.bl = icmp eq i32 %.val.i, 1
  br i1 %i.bl, label %.epil.preheader15, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter20 = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.s ] ; 3 uses
  %niter21 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter21.next.1, %bb.s ]
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %.val11.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !338
  %i.bp = and i32 %i.bo, -2147418112
  %or.cond.not.i.i = icmp eq i32 %i.bp, -2147418112
  br i1 %or.cond.not.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !89
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !340
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bt
  store ptr %i.bj, ptr %i.bu, align 8, !tbaa !105
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = getelementptr inbounds nuw [64 x i8], ptr %.val11.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !338
  %i.by = and i32 %i.bx, -2147418112
  %or.cond.not.i.i.1 = icmp eq i32 %i.by, -2147418112
  br i1 %or.cond.not.i.i.1, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !89
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 76
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !340
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.cc
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !105
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter21.next.1 = add i64 %niter21, 2           ; 2 uses
  %niter21.ncmp.1 = icmp eq i64 %niter21.next.1, %unroll_iter20
  br i1 %niter21.ncmp.1, label %zend_jit_restart_hot_counters.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !341

zend_jit_restart_hot_counters.exit.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod18.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod18.not, label %zend_jit_restart_hot_counters.exit, label %.epil.preheader15

.epil.preheader15:                                ; preds = %zend_jit_restart_hot_counters.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %zend_jit_restart_hot_counters.exit.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i32 %.val.i to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %.val11.i, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !338
  %i.ch = and i32 %i.cg, -2147418112
  %or.cond.not.i.i.epil = icmp eq i32 %i.ch, -2147418112
  br i1 %or.cond.not.i.i.epil, label %bb.t, label %zend_jit_restart_hot_counters.exit

bb.t:                                             ; preds = %.epil.preheader15
  %i.ci = load ptr, ptr %i.bk, align 8, !tbaa !89
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !340
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cl
  store ptr %i.bj, ptr %i.cm, align 8, !tbaa !105
  br label %zend_jit_restart_hot_counters.exit

zend_jit_restart_hot_counters.exit:               ; preds = %zend_jit_restart_hot_counters.exit.loopexit.unr-lcssa, %bb.t, %.epil.preheader15, %._crit_edge.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %zend_jit_restart_hot_trace_counters.exit

zend_jit_restart_hot_trace_counters.exit:         ; preds = %bb.g, %bb.c, %zend_jit_restart_hot_counters.exit, %bb.h, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #30

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nounwind allocsize(1) }
attributes #34 = { nounwind }
attributes #35 = { nounwind memory(read) }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { nounwind willreturn memory(none) }
attributes #39 = { cold nounwind }
attributes #40 = { nounwind returns_twice }
attributes #41 = { cold }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 16}
!13 = !{!"_zend_jit_trace_info", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !14, i64 48, !16, i64 56, !15, i64 64, !17, i64 72, !18, i64 80, !9, i64 88, !19, i64 96}
!14 = !{!"p1 _ZTS14_zend_op_array", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 _ZTS8_zend_op", !15, i64 0}
!17 = !{!"p1 _ZTS25_zend_jit_trace_exit_info", !15, i64 0}
!18 = !{!"p1 _ZTS21_zend_jit_trace_stack", !15, i64 0}
!19 = !{!"p1 _ZTS20_zend_jit_exit_const", !15, i64 0}
!20 = !{!21, !9, i64 56}
!21 = !{!"_ir_ctx", !22, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !23, i64 24, !24, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !25, i64 64, !15, i64 80, !27, i64 88, !28, i64 96, !24, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !29, i64 128, !24, i64 136, !24, i64 144, !24, i64 152, !24, i64 160, !24, i64 168, !9, i64 176, !9, i64 180, !23, i64 184, !9, i64 192, !9, i64 196, !9, i64 200, !23, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !30, i64 232, !32, i64 240, !33, i64 248, !34, i64 256, !35, i64 264, !24, i64 272, !10, i64 280, !15, i64 288, !9, i64 296, !9, i64 300, !23, i64 304, !9, i64 312, !9, i64 316, !9, i64 320, !24, i64 328, !15, i64 336, !36, i64 344, !37, i64 352, !38, i64 360, !10, i64 400, !10, i64 660}
!22 = !{!"p1 _ZTS8_ir_insn", !15, i64 0}
!23 = !{!"long", !10, i64 0}
!24 = !{!"p1 int", !15, i64 0}
!25 = !{!"_ir_insn", !26, i64 0, !10, i64 8}
!26 = !{!"", !10, i64 0, !10, i64 4}
!27 = !{!"p1 _ZTS11_ir_hashtab", !15, i64 0}
!28 = !{!"p1 _ZTS12_ir_use_list", !15, i64 0}
!29 = !{!"p1 _ZTS9_ir_block", !15, i64 0}
!30 = !{!"p2 _ZTS17_ir_live_interval", !31, i64 0}
!31 = !{!"any p2 pointer", !15, i64 0}
!32 = !{!"p1 _ZTS9_ir_arena", !15, i64 0}
!33 = !{!"p1 _ZTS14_ir_live_range", !15, i64 0}
!34 = !{!"p1 omnipotent char", !15, i64 0}
!35 = !{!"p1 _ZTS10_ir_strtab", !15, i64 0}
!36 = !{!"p1 _ZTS15_ir_code_buffer", !15, i64 0}
!37 = !{!"p1 _ZTS10_ir_loader", !15, i64 0}
!38 = !{!"_ir_strtab", !15, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !34, i64 24, !9, i64 32, !9, i64 36}
!39 = !{!13, !17, i64 72}
!40 = !{!41, !9, i64 20}
!41 = !{!"_zend_jit_trace_exit_info", !16, i64 0, !14, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !42, i64 28, !42, i64 36}
!42 = !{!"_zend_jit_ref_snapshot", !10, i64 0, !10, i64 4}
!43 = !{!13, !9, i64 32}
!44 = !{!13, !18, i64 80}
!45 = !{!41, !9, i64 24}
!46 = !{!41, !9, i64 16}
!47 = !{!48, !52, i64 1016}
!48 = !{!"_zend_jit_ctx", !21, i64 0, !16, i64 920, !49, i64 928, !49, i64 929, !49, i64 930, !9, i64 932, !9, i64 936, !9, i64 940, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !14, i64 960, !14, i64 968, !50, i64 976, !51, i64 984, !24, i64 992, !24, i64 1000, !24, i64 1008, !52, i64 1016, !53, i64 1024, !9, i64 1032, !54, i64 1040, !9, i64 1048, !55, i64 1056, !10, i64 1112}
!49 = !{!"_Bool", !10, i64 0}
!50 = !{!"p1 _ZTS9_zend_ssa", !15, i64 0}
!51 = !{!"p1 _ZTS12_zend_string", !15, i64 0}
!52 = !{!"p1 _ZTS20_zend_jit_trace_info", !15, i64 0}
!53 = !{!"p1 _ZTS17_zend_jit_reg_var", !15, i64 0}
!54 = !{!"p1 _ZTS8_ir_refs", !15, i64 0}
!55 = !{!"_zend_array", !56, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !23, i64 40, !15, i64 48}
!56 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!57 = !{!10, !10, i64 0}
!58 = !{!52, !52, i64 0}
!59 = !{!31, !31, i64 0}
!60 = !{!15, !15, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!21, !34, i64 256}
!64 = !{!21, !9, i64 40}
end_hunk_7
