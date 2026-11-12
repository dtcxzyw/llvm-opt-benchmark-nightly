Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/array?download=true
inline.NumInlined: 57
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 33
begin_hunk_0_@zif_array_reverse:bb.a

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  br label %.critedge145

.critedge145:                                     ; preds = %bb.h, %bb.i, %bb.j
  %.0 = phi ptr [ %i.au, %bb.j ], [ %i.an, %bb.i ], [ %i.an, %bb.h ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25
  %.not137 = icmp eq i8 %i.ax, 0
  %.pre186 = load ptr, ptr %.0, align 8, !tbaa !25 ; 3 uses
  br i1 %.not137, label %.outer, label %bb.k

bb.k:                                             ; preds = %.critedge145
  %i.ay = load i32, ptr %.pre186, align 4, !tbaa !29
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %.pre186, align 4, !tbaa !29
  %.pre = load ptr, ptr %.0, align 8, !tbaa !25
  br label %.outer

.outer:                                           ; preds = %bb.k, %.critedge145
  %i.ba = phi ptr [ %.pre, %bb.k ], [ %.pre186, %.critedge145 ]
  %i.bb = load i32, ptr %i.av, align 8, !tbaa !25
  store ptr %i.ba, ptr %.0129.ph199, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %.0129.ph199, i64 8
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %.0129.ph199, i64 16
  %i.be = add i32 %.0128.ph200, 1                 ; 2 uses
  %.not136193 = icmp eq i64 %i.ao, 0
  br i1 %.not136193, label %.outer._crit_edge, label %.lr.ph196, !llvm.loop !272

.outer._crit_edge:                                ; preds = %.outer, %bb.g, %bb.f
  %.0128.ph.lcssa = phi i32 [ %.0128.ph200, %bb.g ], [ %i.ab, %bb.f ], [ %i.be, %.outer ] ; 3 uses
  %i.bf = load i32, ptr %i.aa, align 8, !tbaa !36
  %i.bg = sub i32 %.0128.ph.lcssa, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 28 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !35
  %i.bj = add i32 %i.bg, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !35
  store i32 %.0128.ph.lcssa, ptr %i.aa, align 8, !tbaa !36
  %i.bk = zext i32 %.0128.ph.lcssa to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !127
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  store i32 0, ptr %i.bm, align 4, !tbaa !129
  br label %.loopexit

bb.l:                                             ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %.not138178 = icmp eq i32 %i.bo, 0
  br i1 %.not138178, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25
  %i.br = zext i32 %i.bo to i64                   ; 2 uses
  %i.bs = shl i32 %i.u, 2
  %i.bt = and i32 %i.bs, 16
  %narrow = sub nuw nsw i32 32, %i.bt
  %i.bu = zext nneg i32 %narrow to i64
  %i.bv = mul nuw nsw i64 %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ %i.br, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %.0119181 = phi ptr [ %i.bw, %.lr.ph.preheader ], [ %.1120, %bb.v ] ; 4 uses
  %.0121180 = phi ptr [ null, %.lr.ph.preheader ], [ %.1122, %bb.v ]
  %i.bx = load i32, ptr %i.t, align 8, !tbaa !25
  %i.by = and i32 %i.bx, 4
  %.not139 = icmp eq i32 %i.by, 0
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bz = getelementptr inbounds i8, ptr %.0119181, i64 -16
  %i.ca = add nsw i64 %indvars.iv, -1
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds i8, ptr %.0119181, i64 -32
  %i.cc = getelementptr inbounds i8, ptr %.0119181, i64 -16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !120
  %i.ce = getelementptr inbounds i8, ptr %.0119181, i64 -8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !119
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0123 = phi i64 [ %i.ca, %bb.m ], [ %i.cd, %bb.n ]
  %.1122 = phi ptr [ %.0121180, %bb.m ], [ %i.cf, %bb.n ] ; 3 uses
  %.1120 = phi ptr [ %i.bz, %bb.m ], [ %i.cb, %bb.n ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1120, i64 8
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !25
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.v, label %bb.p, !prof !30

bb.p:                                             ; preds = %bb.o
  %.not140 = icmp eq ptr %.1122, null
  br i1 %.not140, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %1, align 8, !tbaa !25
  %i.ck = call ptr @zend_hash_add_new(ptr noundef %i.cj, ptr noundef nonnull %.1122, ptr noundef nonnull %.1120) #18
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cl = load i8, ptr %i.a, align 1, !tbaa !114, !range !117, !noundef !52
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.co = call ptr @zend_hash_index_add_new(ptr noundef %i.cn, i64 noundef %.0123, ptr noundef nonnull %.1120) #18
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cp = call ptr @zend_hash_next_index_insert_new(ptr noundef %i.cn, ptr noundef nonnull %.1120) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  %.1 = phi ptr [ %i.ck, %bb.q ], [ %i.co, %bb.s ], [ %i.cp, %bb.t ]
  call void @zval_add_ref(ptr noundef %.1) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.u
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cq = and i64 %indvars.iv.next, 4294967295
  %.not138 = icmp eq i64 %i.cq, 0
  br i1 %.not138, label %.loopexit, label %.lr.ph, !llvm.loop !273

.loopexit:                                        ; preds = %bb.v, %bb.l, %zend_parse_arg_array.exit.thread162, %.outer._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_array_pad(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %.not = icmp eq i32 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 3, i32 noundef 3) #18
  br label %zend_parse_arg_array.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !25
  %i.g = icmp eq i8 %i.f, 7
  br i1 %i.g, label %bb.d, label %zend_parse_arg_array.exit, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i8, ptr %i.i, align 8, !tbaa !25
  %i.k = icmp eq i8 %i.j, 4
  br i1 %i.k, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !27

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.d
  %i.l = load i64, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !24
  br label %.critedge.critedge

zend_parse_arg_long_ex.exit:                      ; preds = %bb.d
  %i.m = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 2) #18
  br i1 %i.m, label %zend_parse_arg_long_ex.exit..critedge.critedge_crit_edge, label %zend_parse_arg_array.exit, !prof !116

zend_parse_arg_long_ex.exit..critedge.critedge_crit_edge: ; preds = %zend_parse_arg_long_ex.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !24
  br label %.critedge.critedge

.critedge.critedge:                               ; preds = %zend_parse_arg_long_ex.exit..critedge.critedge_crit_edge, %zend_parse_arg_long_ex.exit.thread
  %i.n = phi i64 [ %.pre, %zend_parse_arg_long_ex.exit..critedge.critedge_crit_edge ], [ %i.l, %zend_parse_arg_long_ex.exit.thread ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 13 uses
  %i.p = add i64 %i.n, -1073741825
  %or.cond = icmp ult i64 %i.p, -2147483649
  br i1 %or.cond, label %bb.e, label %bb.f

zend_parse_arg_array.exit:                        ; preds = %bb.c, %bb.b, %zend_parse_arg_long_ex.exit
  %.0210 = phi i32 [ 0, %bb.b ], [ 0, %zend_parse_arg_long_ex.exit ], [ 6, %bb.c ]
  %.0209 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_long_ex.exit ], [ 9, %bb.c ]
  %.0207 = phi ptr [ null, %bb.b ], [ %i.h, %zend_parse_arg_long_ex.exit ], [ %i.d, %bb.c ]
  %.0204 = phi i32 [ 0, %bb.b ], [ 2, %zend_parse_arg_long_ex.exit ], [ 1, %bb.c ]
  call void @zend_wrong_parameter_error(i32 noundef %.0209, i32 noundef %.0204, ptr noundef null, i32 noundef %.0210, ptr noundef %.0207) #18
  br label %.loopexit

bb.e:                                             ; preds = %.critedge.critedge
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 2, ptr noundef nonnull @.str.24) #18
  br label %.loopexit

bb.f:                                             ; preds = %.critedge.critedge
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !25   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35   ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 4 uses
  %i.u = call i64 @imaxabs(i64 noundef %i.n) #21  ; 7 uses
  %.not217 = icmp sgt i64 %i.u, %i.t
  br i1 %.not217, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.v, ptr %i.w, align 8, !tbaa !25
  %i.x = and i32 %i.v, 65280
  %.not226 = icmp eq i32 %i.x, 0
  br i1 %.not226, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.q, align 4, !tbaa !29
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.q, align 4, !tbaa !29
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.aa = sub i64 %i.u, %i.t                      ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %.not218 = icmp eq i8 %i.ac, 0
  br i1 %.not218, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !25  ; 2 uses
  %i.ae = trunc i64 %i.aa to i32
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.ag = add i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = trunc i64 %i.u to i32
  %i.ai = call ptr @_zend_new_array(i32 noundef %i.ah) #18 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.aj, align 8, !tbaa !25
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !25
  %i.an = and i32 %i.am, 4
  %.not219 = icmp eq i32 %i.an, 0
  br i1 %.not219, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @zend_hash_real_init_packed(ptr noundef %i.ai) #18
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %1, align 8, !tbaa !25    ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !36 ; 4 uses
  %2 = icmp sgt i64 %i.aa, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ay = sub i64 %i.t, %i.u
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aa, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.0206246 = phi ptr [ %i.aw, %.lr.ph.new ], [ %i.bp, %bb.n ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.n ]
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.bb = load i32, ptr %i.ax, align 8, !tbaa !25
  store ptr %i.ba, ptr %.0206246, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %.0206246, i64 8
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %.0206246, i64 16
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.bf = load i32, ptr %i.ax, align 8, !tbaa !25
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %.0206246, i64 24
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.0206246, i64 32
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.bj = load i32, ptr %i.ax, align 8, !tbaa !25
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %.0206246, i64 40
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %.0206246, i64 48
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.bn = load i32, ptr %i.ax, align 8, !tbaa !25
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %.0206246, i64 56
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %.0206246, i64 64 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !274

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0206246.epil.init = phi ptr [ %i.aw, %.lr.ph ], [ %i.bp, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod294 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod294)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.0206246.epil = phi ptr [ %.0206246.epil.init, %.epil.preheader ], [ %i.bt, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.br = load i32, ptr %i.ax, align 8, !tbaa !25
  store ptr %i.bq, ptr %.0206246.epil, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.0206246.epil, i64 8
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %.0206246.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.o, !llvm.loop !275

._crit_edge.loopexit:                             ; preds = %bb.o, %._crit_edge.loopexit.unr-lcssa
  %i.bu = trunc i64 %i.u to i32
  %i.bv = add i32 %i.as, %i.bu
  %i.bw = sub i32 %i.bv, %i.s
  %.pre282 = load i32, ptr %i.ar, align 8, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %i.bx = phi i32 [ %i.as, %bb.m ], [ %.pre282, %._crit_edge.loopexit ]
  %.0205.lcssa = phi i32 [ %i.as, %bb.m ], [ %i.bw, %._crit_edge.loopexit ] ; 3 uses
  %i.by = sub i32 %.0205.lcssa, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 28 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !35
  %i.cb = add i32 %i.by, %i.ca
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !35
  store i32 %.0205.lcssa, ptr %i.ar, align 8, !tbaa !36
  %i.cc = zext i32 %.0205.lcssa to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !127
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i32 0, ptr %i.ce, align 4, !tbaa !129
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %._crit_edge
  %i.cf = load ptr, ptr %1, align 8, !tbaa !25    ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !36 ; 4 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !25 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !36 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %.idx = shl nuw nsw i64 %i.co, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx
  %.not224249 = icmp eq i32 %i.cn, 0
  br i1 %.not224249, label %._crit_edge256, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !25
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.ci
  br label %.lr.ph255

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %bb.t
  %.0198252 = phi ptr [ %i.dg, %bb.t ], [ %i.cl, %.lr.ph255.preheader ] ; 5 uses
  %.0200251 = phi i32 [ %.1201, %bb.t ], [ %i.ch, %.lr.ph255.preheader ] ; 2 uses
  %.0202250 = phi ptr [ %.1203, %bb.t ], [ %i.cs, %.lr.ph255.preheader ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0198252, i64 8 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !25
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.t, label %bb.q, !prof !30

bb.q:                                             ; preds = %.lr.ph255
  %i.cw = getelementptr inbounds nuw i8, ptr %.0198252, i64 9
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !25
  %.not225 = icmp eq i8 %i.cx, 0
  br i1 %.not225, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = load ptr, ptr %.0198252, align 8, !tbaa !25 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !29
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.db = load ptr, ptr %.0198252, align 8, !tbaa !25
  %i.dc = load i32, ptr %i.ct, align 8, !tbaa !25
  store ptr %i.db, ptr %.0202250, align 8, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %.0202250, i64 8
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %.0202250, i64 16
  %i.df = add i32 %.0200251, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph255, %bb.s
  %.1203 = phi ptr [ %.0202250, %.lr.ph255 ], [ %i.de, %bb.s ]
  %.1201 = phi i32 [ %.0200251, %.lr.ph255 ], [ %i.df, %bb.s ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0198252, i64 16 ; 2 uses
  %.not224 = icmp eq ptr %i.dg, %i.cp
  br i1 %.not224, label %._crit_edge256.loopexit, label %.lr.ph255, !llvm.loop !276

._crit_edge256.loopexit:                          ; preds = %bb.t
  %.pre283 = load i32, ptr %i.cg, align 8, !tbaa !36
  %.pre287 = zext i32 %.1201 to i64
  br label %._crit_edge256

._crit_edge256:                                   ; preds = %._crit_edge256.loopexit, %bb.p
  %.pre-phi = phi i64 [ %.pre287, %._crit_edge256.loopexit ], [ %i.ci, %bb.p ]
  %i.dh = phi i32 [ %.pre283, %._crit_edge256.loopexit ], [ %i.ch, %bb.p ]
  %.0200.lcssa = phi i32 [ %.1201, %._crit_edge256.loopexit ], [ %i.ch, %bb.p ] ; 2 uses
  %i.di = sub i32 %.0200.lcssa, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cf, i64 28 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !35
  %i.dl = add i32 %i.di, %i.dk
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !35
  store i32 %.0200.lcssa, ptr %i.cg, align 8, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i64 %.pre-phi, ptr %i.dm, align 8, !tbaa !127
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  store i32 0, ptr %i.dn, align 4, !tbaa !129
  %i.do = load i64, ptr %i.a, align 8, !tbaa !24
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge256
  %i.dq = load ptr, ptr %1, align 8, !tbaa !25    ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !36 ; 4 uses
  %i.dt = icmp sgt i64 %i.aa, 0
  br i1 %i.dt, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !25
  %i.dw = zext i32 %i.ds to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %xtraiter296 = and i64 %i.aa, 3                 ; 3 uses
  %i.dz = sub i64 %i.t, %i.u
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %.epil.preheader295, label %.lr.ph262.new

.lr.ph262.new:                                    ; preds = %.lr.ph262
  %unroll_iter300 = and i64 %i.aa, 9223372036854775804
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph262.new
  %.0197258 = phi ptr [ %i.dx, %.lr.ph262.new ], [ %i.eq, %bb.v ] ; 9 uses
  %niter301 = phi i64 [ 0, %.lr.ph262.new ], [ %niter301.next.3, %bb.v ]
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.ec = load i32, ptr %i.dy, align 8, !tbaa !25
  store ptr %i.eb, ptr %.0197258, align 8, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %.0197258, i64 8
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %.0197258, i64 16
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.eg = load i32, ptr %i.dy, align 8, !tbaa !25
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %.0197258, i64 24
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %.0197258, i64 32
  %i.ej = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.ek = load i32, ptr %i.dy, align 8, !tbaa !25
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !25
  %i.el = getelementptr inbounds nuw i8, ptr %.0197258, i64 40
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !25
  %i.em = getelementptr inbounds nuw i8, ptr %.0197258, i64 48
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.eo = load i32, ptr %i.dy, align 8, !tbaa !25
  store ptr %i.en, ptr %i.em, align 8, !tbaa !25
  %i.ep = getelementptr inbounds nuw i8, ptr %.0197258, i64 56
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %.0197258, i64 64 ; 2 uses
  %niter301.next.3 = add i64 %niter301, 4         ; 2 uses
  %niter301.ncmp.3 = icmp eq i64 %niter301.next.3, %unroll_iter300
  br i1 %niter301.ncmp.3, label %._crit_edge263.loopexit.unr-lcssa, label %bb.v, !llvm.loop !277

._crit_edge263.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod298.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod298.not, label %._crit_edge263.loopexit, label %.epil.preheader295

.epil.preheader295:                               ; preds = %._crit_edge263.loopexit.unr-lcssa, %.lr.ph262
  %.0197258.epil.init = phi ptr [ %i.dx, %.lr.ph262 ], [ %i.eq, %._crit_edge263.loopexit.unr-lcssa ]
  %lcmp.mod299 = icmp ne i64 %xtraiter296, 0
  call void @llvm.assume(i1 %lcmp.mod299)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader295
  %.0197258.epil = phi ptr [ %.0197258.epil.init, %.epil.preheader295 ], [ %i.eu, %bb.w ] ; 3 uses
  %epil.iter297 = phi i64 [ 0, %.epil.preheader295 ], [ %epil.iter297.next, %bb.w ]
  %i.er = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.es = load i32, ptr %i.dy, align 8, !tbaa !25
  store ptr %i.er, ptr %.0197258.epil, align 8, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %.0197258.epil, i64 8
  store i32 %i.es, ptr %i.et, align 8, !tbaa !25
  %i.eu = getelementptr inbounds nuw i8, ptr %.0197258.epil, i64 16
  %epil.iter297.next = add i64 %epil.iter297, 1   ; 2 uses
  %epil.iter297.cmp.not = icmp eq i64 %epil.iter297.next, %xtraiter296
  br i1 %epil.iter297.cmp.not, label %._crit_edge263.loopexit, label %bb.w, !llvm.loop !278

._crit_edge263.loopexit:                          ; preds = %bb.w, %._crit_edge263.loopexit.unr-lcssa
  %i.ev = trunc i64 %i.u to i32
  %i.ew = add i32 %i.ds, %i.ev
  %i.ex = sub i32 %i.ew, %i.s
  %.pre284 = load i32, ptr %i.dr, align 8, !tbaa !36
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %._crit_edge263.loopexit, %bb.u
  %i.ey = phi i32 [ %i.ds, %bb.u ], [ %.pre284, %._crit_edge263.loopexit ]
  %.0196.lcssa = phi i32 [ %i.ds, %bb.u ], [ %i.ex, %._crit_edge263.loopexit ] ; 3 uses
  %i.ez = sub i32 %.0196.lcssa, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dq, i64 28 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !35
  %i.fc = add i32 %i.ez, %i.fb
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !35
  store i32 %.0196.lcssa, ptr %i.dr, align 8, !tbaa !36
  %i.fd = zext i32 %.0196.lcssa to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !127
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  store i32 0, ptr %i.ff, align 4, !tbaa !129
  br label %.loopexit

bb.x:                                             ; preds = %bb.k
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !24
  %i.fh = icmp slt i64 %i.fg, 0
  %3 = icmp sgt i64 %i.aa, 0                      ; 2 uses
  %or.cond275 = and i1 %i.fh, %3
  br i1 %or.cond275, label %.lr.ph266, label %.loopexit245

.lr.ph266:                                        ; preds = %bb.x, %.lr.ph266
  %.2265 = phi i64 [ %i.fk, %.lr.ph266 ], [ 0, %bb.x ]
  %i.fi = load ptr, ptr %1, align 8, !tbaa !25
  %i.fj = call ptr @zend_hash_next_index_insert_new(ptr noundef %i.fi, ptr noundef nonnull %i.o) #18 ; 0 uses
  %i.fk = add nuw nsw i64 %.2265, 1               ; 2 uses
  %exitcond280.not = icmp eq i64 %i.fk, %i.aa
  br i1 %exitcond280.not, label %.loopexit245.loopexit, label %.lr.ph266, !llvm.loop !279

.loopexit245.loopexit:                            ; preds = %.lr.ph266
  %.pre285 = load ptr, ptr %i.d, align 8, !tbaa !25
  br label %.loopexit245

.loopexit245:                                     ; preds = %.loopexit245.loopexit, %bb.x
  %i.fl = phi ptr [ %.pre285, %.loopexit245.loopexit ], [ %i.ak, %bb.x ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !25 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !36 ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %.idx277 = shl nuw nsw i64 %i.fq, 5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx277
  %.not221267 = icmp eq i32 %i.fp, 0
  br i1 %.not221267, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %.loopexit245, %bb.ad
  %.0268 = phi ptr [ %i.gf, %bb.ad ], [ %i.fn, %.loopexit245 ] ; 7 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0268, i64 8
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !25
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %bb.ad, label %bb.y, !prof !30

bb.y:                                             ; preds = %.lr.ph271
  %i.fv = getelementptr inbounds nuw i8, ptr %.0268, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !119 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0268, i64 9
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !25
  %.not222 = icmp eq i8 %i.fy, 0
  br i1 %.not222, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fz = load ptr, ptr %.0268, align 8, !tbaa !25 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !29
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not223 = icmp eq ptr %i.fw, null
  %i.gc = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  br i1 %.not223, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = call ptr @zend_hash_add_new(ptr noundef %i.gc, ptr noundef nonnull %i.fw, ptr noundef nonnull %.0268) #18 ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ge = call ptr @zend_hash_next_index_insert_new(ptr noundef %i.gc, ptr noundef nonnull %.0268) #18 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.lr.ph271
  %i.gf = getelementptr inbounds nuw i8, ptr %.0268, i64 32 ; 2 uses
  %.not221 = icmp eq ptr %i.gf, %i.fr
  br i1 %.not221, label %._crit_edge272, label %.lr.ph271, !llvm.loop !280

._crit_edge272:                                   ; preds = %bb.ad, %.loopexit245
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !24
  %i.gh = icmp sgt i64 %i.gg, 0
  %or.cond276 = and i1 %i.gh, %3
  br i1 %or.cond276, label %.lr.ph274, label %.loopexit

.lr.ph274:                                        ; preds = %._crit_edge272, %.lr.ph274
  %.3273 = phi i64 [ %i.gk, %.lr.ph274 ], [ 0, %._crit_edge272 ]
  %i.gi = load ptr, ptr %1, align 8, !tbaa !25
  %i.gj = call ptr @zend_hash_next_index_insert_new(ptr noundef %i.gi, ptr noundef nonnull %i.o) #18 ; 0 uses
  %i.gk = add nuw nsw i64 %.3273, 1               ; 2 uses
  %exitcond281.not = icmp eq i64 %i.gk, %i.aa
  br i1 %exitcond281.not, label %.loopexit, label %.lr.ph274, !llvm.loop !281

.loopexit:                                        ; preds = %.lr.ph274, %zend_parse_arg_array.exit, %._crit_edge263, %._crit_edge256, %._crit_edge272, %bb.g, %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @imaxabs(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden void @zif_array_flip(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct._zval_struct, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.c, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !25
  %i.g = icmp eq i8 %i.f, 7
  br i1 %i.g, label %.critedge, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.b, %bb.c
  %.096.ph = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.095.ph = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  %.094.ph = phi i32 [ 6, %bb.c ], [ 0, %bb.b ]
  %.093.ph = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.093.ph, i32 noundef %.096.ph, ptr noundef null, i32 noundef %.094.ph, ptr noundef %.095.ph) #18
  br label %.loopexit

.critedge:                                        ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = tail call ptr @_zend_new_array(i32 noundef %i.j) #18
  store ptr %i.k, ptr %1, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.l, align 8, !tbaa !25
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !36   ; 2 uses
  %.not99131 = icmp eq i32 %i.p, 0
  br i1 %.not99131, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.z
  %.085135 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %bb.z ]
  %.086134 = phi ptr [ %i.r, %.lr.ph ], [ %.1, %bb.z ] ; 7 uses
  %.087133 = phi i32 [ 0, %.lr.ph ], [ %.188, %bb.z ] ; 3 uses
  %.089132 = phi ptr [ null, %.lr.ph ], [ %.190, %bb.z ]
  %i.t = load i32, ptr %i.n, align 8, !tbaa !25
  %i.u = and i32 %i.t, 4
  %.not100 = icmp eq i32 %i.u, 0
  br i1 %.not100, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.086134, i64 16
  %i.w = zext i32 %.087133 to i64
  %i.x = add i32 %.087133, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.086134, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.086134, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !120
  %i.ab = getelementptr inbounds nuw i8, ptr %.086134, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !119
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.091 = phi i64 [ %i.w, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %.190 = phi ptr [ %.089132, %bb.f ], [ %i.ac, %bb.g ] ; 11 uses
  %.188 = phi i32 [ %i.x, %bb.f ], [ %.087133, %bb.g ]
  %.1 = phi ptr [ %i.v, %bb.f ], [ %i.y, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.086134, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !25  ; 2 uses
  switch i8 %i.ae, label %bb.j [
    i8 0, label %bb.z
    i8 10, label %bb.i
  ], !prof !37

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %.086134, align 8, !tbaa !25 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ah = phi i8 [ %.pre, %bb.i ], [ %i.ae, %bb.h ]
  %.0 = phi ptr [ %i.ag, %bb.i ], [ %.086134, %bb.h ] ; 2 uses
  switch i8 %i.ah, label %bb.y [
    i8 4, label %bb.k
    i8 6, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %.not103 = icmp eq ptr %.190, null
  br i1 %.not103, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.190, ptr %2, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %.190, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !25
  %i.ak = and i32 %i.aj, 64
  %.not104 = icmp eq i32 %i.ak, 0
  br i1 %.not104, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.al = load i32, ptr %.190, align 4, !tbaa !29
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %.190, align 4, !tbaa !29
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  store i64 %.091, ptr %2, align 8, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.sink = phi i32 [ 4, %bb.n ], [ 262, %bb.m ], [ 6, %bb.l ]
  store i32 %.sink, ptr %i.s, align 8, !tbaa !25
  %i.an = load ptr, ptr %1, align 8, !tbaa !25
  %i.ao = load i64, ptr %.0, align 8, !tbaa !25
  %i.ap = call ptr @zend_hash_index_update(ptr noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull %2) #18 ; 0 uses
  br label %bb.z

bb.p:                                             ; preds = %bb.j
  %.not101 = icmp eq ptr %.190, null
  br i1 %.not101, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %.190, ptr %2, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %.190, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.as = and i32 %i.ar, 64
  %.not102 = icmp eq i32 %i.as, 0
  br i1 %.not102, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %.190, align 4, !tbaa !29
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %.190, align 4, !tbaa !29
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  store i64 %.091, ptr %2, align 8, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.sink139 = phi i32 [ 4, %bb.s ], [ 262, %bb.r ], [ 6, %bb.q ]
  store i32 %.sink139, ptr %i.s, align 8, !tbaa !25
  %i.av = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.aw = load ptr, ptr %.0, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !123
  %i.ba = load i8, ptr %i.ax, align 8, !tbaa !25  ; 3 uses
  %i.bb = icmp sgt i8 %i.ba, 57
  br i1 %i.bb, label %_zend_handle_numeric_str.exit.thread, label %bb.u, !prof !27

bb.u:                                             ; preds = %bb.t
  %i.bc = icmp slt i8 %i.ba, 48
  br i1 %i.bc, label %bb.v, label %_zend_handle_numeric_str.exit

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp eq i8 %i.ba, 45
  br i1 %.not.i, label %bb.w, label %_zend_handle_numeric_str.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25
  %i.bf = add i8 %i.be, -58
  %or.cond.i = icmp ult i8 %i.bf, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

end_hunk_0
