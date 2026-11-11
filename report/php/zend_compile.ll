Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_compile?download=true
inline.NumInlined: 808
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@zend_compile_func_array_slice:bb.a
  br i1 %.not.i27, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.bf = load i32, ptr %i.ag, align 8, !tbaa !92 ; 2 uses
  %i.bg = icmp ne i32 %i.bf, 0
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bh, ptr %i.ag, align 8, !tbaa !92
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  call void @_efree(ptr noundef nonnull %i.ag) #30
  br label %.sink.split

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  %i.bl = and i32 %i.bk, 64
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.ag, align 8, !tbaa !92 ; 2 uses
  %i.bn = icmp ne i32 %i.bm, 0
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.ag, align 8, !tbaa !92
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %.sink.split

bb.r:                                             ; preds = %bb.q
  tail call void @_efree(ptr noundef nonnull %i.ag) #30
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n, %bb.o, %bb.r, %bb.q, %bb.p
  %.1.ph = phi i32 [ -1, %bb.r ], [ -1, %bb.p ], [ -1, %bb.q ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @zend_compile_func_array_key_exists(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._znode, align 8             ; 5 uses
  %3 = alloca %struct._znode, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.d = tail call ptr @llvm.frameaddress.p0(i32 0) ; 2 uses
  %.not.i.i = icmp ugt ptr %i.d, %i.c
  br i1 %.not.i.i, label %zend_compile_expr.exit, label %bb.c, !prof !192

bb.c:                                             ; preds = %bb.b
  call fastcc void @zend_stack_limit_error(), !inline_history !279
  unreachable

zend_compile_expr.exit:                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.g = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !279
  call fastcc void @zend_compile_expr_inner(ptr noundef nonnull %3, ptr noundef %i.f), !inline_history !279
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.g, ptr noundef nonnull %3, ptr noundef %i.f), !inline_history !279
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %.not.i.i4 = icmp ugt ptr %i.d, %i.h
  br i1 %.not.i.i4, label %zend_compile_expr.exit5, label %bb.d, !prof !192

bb.d:                                             ; preds = %zend_compile_expr.exit
  call fastcc void @zend_stack_limit_error(), !inline_history !279
  unreachable

zend_compile_expr.exit5:                          ; preds = %zend_compile_expr.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117  ; 2 uses
  %i.k = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !279
  call fastcc void @zend_compile_expr_inner(ptr noundef nonnull %2, ptr noundef %i.j), !inline_history !279
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.k, ptr noundef nonnull %2, ptr noundef %i.j), !inline_history !279
  %i.l = call fastcc ptr @zend_emit_op_tmp(ptr noundef %0, i8 noundef zeroext -62, ptr noundef nonnull %3, ptr noundef nonnull %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %zend_compile_expr.exit5
  %.0 = phi i32 [ 0, %zend_compile_expr.exit5 ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @zend_compile_func_sprintf(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._znode, align 8             ; 6 uses
  %3 = alloca %struct._znode, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call fastcc void @zend_eval_const_expr(ptr noundef nonnull %i.d)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 3 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !223
  %.not = icmp eq i16 %i.f, 64
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !87
  %.not152 = icmp eq i8 %i.i, 6
  br i1 %.not152, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !87   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46   ; 4 uses
  %i.m = icmp ugt i64 %i.l, 255
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = tail call ptr @memchr(ptr noundef nonnull %i.n, i32 noundef 37, i64 noundef %i.l) #31 ; 2 uses
  %.not153168 = icmp eq ptr %i.q, null
  br i1 %.not153168, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %i.r = phi ptr [ %i.z, %bb.h ], [ %i.q, %bb.e ] ; 2 uses
  %.0131169 = phi i32 [ %.1132, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.u = load i8, ptr %i.s, align 1, !tbaa !87
  switch i8 %i.u, label %.critedge [
    i8 115, label %bb.g
    i8 100, label %bb.g
    i8 37, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.v = add i32 %.0131169, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1132 = phi i32 [ %i.v, %bb.g ], [ %.0131169, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.p, %i.x
  %i.z = tail call ptr @memchr(ptr noundef nonnull %i.w, i32 noundef 37, i64 noundef %i.y) #31 ; 2 uses
  %.not153 = icmp eq ptr %i.z, null
  br i1 %.not153, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %.0131.lcssa = phi i32 [ 0, %bb.e ], [ %.1132, %bb.h ] ; 4 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !116
  %i.ab = add i32 %i.aa, -1
  %.not154 = icmp eq i32 %.0131.lcssa, %i.ab
  br i1 %.not154, label %bb.i, label %.critedge

bb.i:                                             ; preds = %._crit_edge
  %i.ac = icmp eq i64 %i.l, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %0, align 8, !tbaa !203
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr @zend_empty_string, align 8, !tbaa !58
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 6, ptr %i.af, align 8, !tbaa !87
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %.not155 = icmp eq i32 %.0131.lcssa, 0
  br i1 %.not155, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.k
  %i.ag = zext i32 %.0131.lcssa to i64
  %i.ah = tail call noalias ptr @_safe_emalloc(i64 noundef 24, i64 noundef %i.ag, i64 noundef 0) #30 ; 2 uses
  %i.ai = tail call ptr @llvm.frameaddress.p0(i32 0)
  %wide.trip.count = zext i32 %.0131.lcssa to i64
  br label %bb.l

._crit_edge173:                                   ; preds = %zend_compile_expr.exit, %bb.k
  %.0130198 = phi ptr [ null, %bb.k ], [ %i.ah, %zend_compile_expr.exit ] ; 4 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !87  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = call ptr @memchr(ptr noundef nonnull %i.ak, i32 noundef 37, i64 noundef %i.am) #31 ; 2 uses
  %.not156174 = icmp eq ptr %i.ap, null
  br i1 %.not156174, label %._crit_edge180, label %switch.edge.lr.ph

switch.edge.lr.ph:                                ; preds = %._crit_edge173
  %4 = ptrtoint ptr %i.ak to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %switch.edge

bb.l:                                             ; preds = %.lr.ph172, %zend_compile_expr.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next, %zend_compile_expr.exit ] ; 2 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %.not.i.i = icmp ugt ptr %i.ai, %i.as
  br i1 %.not.i.i, label %zend_compile_expr.exit, label %bb.m, !prof !192

bb.m:                                             ; preds = %bb.l
  call fastcc void @zend_stack_limit_error(), !inline_history !279
  unreachable

zend_compile_expr.exit:                           ; preds = %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117 ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.aw = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !279
  call fastcc void @zend_compile_expr_inner(ptr noundef %i.av, ptr noundef %i.au), !inline_history !279
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.aw, ptr noundef %i.av, ptr noundef %i.au), !inline_history !279
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge173, label %bb.l, !llvm.loop !499

switch.edge:                                      ; preds = %switch.edge.lr.ph, %bb.x
  %i.ax = phi ptr [ %i.ap, %switch.edge.lr.ph ], [ %i.cu, %bb.x ] ; 3 uses
  %5 = phi i64 [ %4, %switch.edge.lr.ph ], [ %i.cs, %bb.x ]
  %.2113179 = phi ptr [ %i.ak, %switch.edge.lr.ph ], [ %i.cr, %bb.x ] ; 2 uses
  %.0116178 = phi ptr [ null, %switch.edge.lr.ph ], [ %.2118, %bb.x ]
  %.0120177 = phi i32 [ -1, %switch.edge.lr.ph ], [ %.4124, %bb.x ] ; 2 uses
  %.0125176 = phi i32 [ 0, %switch.edge.lr.ph ], [ %.2127, %bb.x ] ; 4 uses
  %.3134175 = phi i32 [ 0, %switch.edge.lr.ph ], [ %.4135, %bb.x ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 4 uses
  %i.az = icmp ult ptr %i.ay, %i.an
  call void @llvm.assume(i1 %i.az)
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !87  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 37
  %spec.select = select i1 %i.bb, ptr %i.ay, ptr %i.ax ; 2 uses
  %.not158 = icmp eq ptr %spec.select, %.2113179
  br i1 %.not158, label %bb.o, label %zend_string_init.exit161

zend_string_init.exit161:                         ; preds = %switch.edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i8 1, ptr %2, align 8, !tbaa !203
  %i.bc = ptrtoint ptr %spec.select to i64
  %i.bd = sub i64 %i.bc, %5                       ; 4 uses
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 32
  %i.bg = call noalias ptr @_emalloc(i64 noundef %i.bf) #32 ; 6 uses
  store i32 1, ptr %i.bg, align 4, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 22, ptr %i.bh, align 4, !tbaa !87
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !172
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.bd, ptr %i.bj, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr nonnull align 1 %.2113179, i64 %i.bd, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bd
  store i8 0, ptr %i.bl, align 1, !tbaa !87
  store ptr %i.bg, ptr %i.aq, align 8, !tbaa !87
  store i32 262, ptr %i.ar, align 8, !tbaa !87
  %i.bm = icmp eq i32 %.0125176, 0
  br i1 %i.bm, label %.split137, label %.split

.split:                                           ; preds = %zend_string_init.exit161
  %i.bn = add i32 %.0125176, 1
  br label %bb.n

.split137:                                        ; preds = %zend_string_init.exit161
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !198
  br label %bb.n

bb.n:                                             ; preds = %.split, %.split137
  %.0125176.sink = phi i32 [ %.0125176, %.split ], [ 0, %.split137 ]
  %i.br = phi i32 [ %i.bn, %.split ], [ 1, %.split137 ]
  %.1121 = phi i32 [ %.0120177, %.split ], [ %i.bq, %.split137 ]
  %i.bs = call fastcc ptr @zend_compile_rope_add(ptr noundef %0, i32 noundef %.0125176.sink, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.pr = load i8, ptr %i.ay, align 1, !tbaa !87
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %switch.edge
  %i.bt = phi i8 [ %.pr, %bb.n ], [ %i.ba, %switch.edge ]
  %.1126 = phi i32 [ %i.br, %bb.n ], [ %.0125176, %switch.edge ] ; 4 uses
  %.2122 = phi i32 [ %.1121, %bb.n ], [ %.0120177, %switch.edge ] ; 2 uses
  %.1117 = phi ptr [ %i.bs, %bb.n ], [ %.0116178, %switch.edge ]
  switch i8 %i.bt, label %bb.u [
    i8 37, label %bb.x
    i8 115, label %bb.p
    i8 100, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.bu = zext i32 %.3134175 to i64
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %.0130198, i64 %i.bu ; 5 uses
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !203
  %i.bx = icmp eq i8 %i.bw, 1
  br i1 %i.bx, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !87
  switch i8 %i.bz, label %bb.s [
    i8 7, label %bb.r
    i8 6, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %i.ca = call fastcc ptr @zend_emit_op_tmp(ptr noundef nonnull %i.bv, i8 noundef zeroext 51, ptr noundef nonnull %i.bv, ptr noundef null)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  store i32 6, ptr %i.cb, align 4, !tbaa !204
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @_convert_to_string(ptr noundef nonnull %i.cc) #30
  br label %bb.v

bb.t:                                             ; preds = %bb.o
  %i.cd = zext i32 %.3134175 to i64
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %.0130198, i64 %i.cd ; 2 uses
  %i.cf = call fastcc ptr @zend_emit_op_tmp(ptr noundef %i.ce, i8 noundef zeroext 51, ptr noundef %i.ce, ptr noundef null)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store i32 4, ptr %i.cg, align 4, !tbaa !204
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  unreachable

bb.v:                                             ; preds = %bb.q, %bb.p, %bb.s, %bb.r, %bb.t
  %i.ch = icmp eq i32 %.1126, 0
  br i1 %i.ch, label %.split140, label %.split138

.split138:                                        ; preds = %bb.v
  %i.ci = add i32 %.1126, 1
  br label %bb.w

.split140:                                        ; preds = %bb.v
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !198
  br label %bb.w

bb.w:                                             ; preds = %.split138, %.split140
  %.1126.sink = phi i32 [ %.1126, %.split138 ], [ 0, %.split140 ]
  %i.cm = phi i32 [ %i.ci, %.split138 ], [ 1, %.split140 ]
  %.3123 = phi i32 [ %.2122, %.split138 ], [ %i.cl, %.split140 ]
  %i.cn = zext i32 %.3134175 to i64
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.0130198, i64 %i.cn
  %i.cp = call fastcc ptr @zend_compile_rope_add(ptr noundef %0, i32 noundef %.1126.sink, ptr noundef %i.co)
  %i.cq = add i32 %.3134175, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.o, %bb.w
  %.4135 = phi i32 [ %i.cq, %bb.w ], [ %.3134175, %bb.o ]
  %.2127 = phi i32 [ %i.cm, %bb.w ], [ %.1126, %bb.o ] ; 2 uses
  %.4124 = phi i32 [ %.3123, %bb.w ], [ %.2122, %bb.o ] ; 2 uses
  %.2118 = phi ptr [ %i.cp, %bb.w ], [ %.1117, %bb.o ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 4 uses
  %i.cs = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.ct = sub i64 %i.ao, %i.cs                    ; 2 uses
  %i.cu = call ptr @memchr(ptr noundef nonnull %i.cr, i32 noundef 37, i64 noundef %i.ct) #31 ; 2 uses
  %.not156 = icmp eq ptr %i.cu, null
  br i1 %.not156, label %._crit_edge180, label %switch.edge

._crit_edge180:                                   ; preds = %bb.x, %._crit_edge173
  %.0125.lcssa = phi i32 [ 0, %._crit_edge173 ], [ %.2127, %bb.x ] ; 4 uses
  %.0120.lcssa = phi i32 [ -1, %._crit_edge173 ], [ %.4124, %bb.x ] ; 2 uses
  %.0116.lcssa = phi ptr [ null, %._crit_edge173 ], [ %.2118, %bb.x ]
  %.2113.lcssa = phi ptr [ %i.ak, %._crit_edge173 ], [ %i.cr, %bb.x ] ; 2 uses
  %.lcssa = phi i64 [ %i.am, %._crit_edge173 ], [ %i.ct, %bb.x ] ; 4 uses
  %.not157 = icmp eq ptr %i.an, %.2113.lcssa
  br i1 %.not157, label %bb.z, label %zend_string_init.exit

zend_string_init.exit:                            ; preds = %._crit_edge180
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i8 1, ptr %3, align 8, !tbaa !203
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = and i64 %.lcssa, -8
  %i.cx = add i64 %i.cw, 32
  %i.cy = call noalias ptr @_emalloc(i64 noundef %i.cx) #32 ; 6 uses
  store i32 1, ptr %i.cy, align 4, !tbaa !92
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 22, ptr %i.cz, align 4, !tbaa !87
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 0, ptr %i.da, align 8, !tbaa !172
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 %.lcssa, ptr %i.db, align 8, !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr nonnull align 1 %.2113.lcssa, i64 %.lcssa, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.lcssa
  store i8 0, ptr %i.dd, align 1, !tbaa !87
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 262, ptr %i.de, align 8, !tbaa !87
  %i.df = icmp eq i32 %.0125.lcssa, 0
  br i1 %i.df, label %.split144, label %.split142

.split142:                                        ; preds = %zend_string_init.exit
  %i.dg = add i32 %.0125.lcssa, 1
  br label %bb.y

.split144:                                        ; preds = %zend_string_init.exit
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !198
  br label %bb.y

bb.y:                                             ; preds = %.split142, %.split144
  %.0125.lcssa.sink = phi i32 [ %.0125.lcssa, %.split142 ], [ 0, %.split144 ]
  %i.dk = phi i32 [ %i.dg, %.split142 ], [ 1, %.split144 ]
  %.5 = phi i32 [ %.0120.lcssa, %.split142 ], [ %i.dj, %.split144 ]
  %i.dl = call fastcc ptr @zend_compile_rope_add(ptr noundef %0, i32 noundef %.0125.lcssa.sink, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge180
  %.3128 = phi i32 [ %i.dk, %bb.y ], [ %.0125.lcssa, %._crit_edge180 ]
  %.6 = phi i32 [ %.5, %bb.y ], [ %.0120.lcssa, %._crit_edge180 ]
  %.3119 = phi ptr [ %i.dl, %bb.y ], [ %.0116.lcssa, %._crit_edge180 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.3119) ]
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !200
  %i.dp = zext i32 %.6 to i64
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dp
  call fastcc void @zend_compile_rope_finalize(ptr noundef %0, i32 noundef %.3128, ptr noundef %i.dq, ptr noundef nonnull %.3119)
  call void @_efree(ptr noundef %.0130198) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %bb.c, %bb.d, %._crit_edge, %bb.z, %bb.j, %bb.b, %bb.a
  %.4 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %._crit_edge ], [ 0, %bb.z ], [ 0, %bb.j ], [ -1, %bb.f ], [ -1, %.lr.ph ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @zend_compile_func_clone(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._znode, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.d = tail call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i.i = icmp ugt ptr %i.d, %i.c
  br i1 %.not.i.i, label %zend_compile_expr.exit, label %bb.c, !prof !192

bb.c:                                             ; preds = %bb.b
  call fastcc void @zend_stack_limit_error(), !inline_history !279
  unreachable

zend_compile_expr.exit:                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.g = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !279
  call fastcc void @zend_compile_expr_inner(ptr noundef nonnull %2, ptr noundef %i.f), !inline_history !279
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.g, ptr noundef nonnull %2, ptr noundef %i.f), !inline_history !279
  %i.h = call fastcc ptr @zend_emit_op_tmp(ptr noundef %0, i8 noundef zeroext 110, ptr noundef nonnull %2, ptr noundef null) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %zend_compile_expr.exit
  %.0 = phi i32 [ 0, %zend_compile_expr.exit ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @zend_try_compile_ct_bound_init_user_func(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !223
  %.not = icmp eq i16 %i.a, 64
  br i1 %.not, label %bb.b, label %zend_string_release_ex.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !87
  %.not23 = icmp eq i8 %i.c, 6
  br i1 %.not23, label %bb.c, label %zend_string_release_ex.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.f = tail call ptr @zend_string_tolower_ex(ptr noundef %i.e, i1 noundef zeroext false) #30 ; 7 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 56), align 8, !tbaa !275
  %i.h = tail call ptr @zend_hash_find(ptr noundef %i.g, ptr noundef %i.f) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %zend_hash_find_ptr.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !nonnull !108, !noundef !108 ; 7 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !87
  %.not.i29 = icmp eq i8 %i.j, 1
  br i1 %.not.i29, label %.split, label %fbc_is_finalized.exit

fbc_is_finalized.exit:                            ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87
  %i.m = and i32 %i.l, 33554432
  %.not40 = icmp eq i32 %i.m, 0
  br i1 %.not40, label %zend_hash_find_ptr.exit.thread, label %bb.e

.split:                                           ; preds = %bb.d
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 172), align 4, !tbaa !182
  %i.p = and i32 %i.o, 8
  %.not42 = icmp eq i32 %i.p, 0
  br i1 %.not42, label %zend_compile_ignore_function.exit.thread38, label %zend_hash_find_ptr.exit.thread

bb.e:                                             ; preds = %fbc_is_finalized.exit
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !250
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 172), align 4, !tbaa !182 ; 2 uses
  %i.u = and i32 %i.t, 512
  %.not.i30 = icmp eq i32 %i.u, 0
  br i1 %.not.i30, label %bb.f, label %zend_hash_find_ptr.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %i.t, 8192
  %.not4.i = icmp eq i32 %i.v, 0
  br i1 %.not4.i, label %zend_compile_ignore_function.exit.thread38, label %zend_compile_ignore_function.exit

zend_compile_ignore_function.exit:                ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87
  %.not41 = icmp eq ptr %i.x, %i.s
  br i1 %.not41, label %zend_compile_ignore_function.exit.thread38, label %zend_hash_find_ptr.exit.thread

zend_hash_find_ptr.exit.thread:                   ; preds = %bb.e, %bb.c, %.split, %zend_compile_ignore_function.exit, %fbc_is_finalized.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !87
  %i.aa = and i32 %i.z, 64
  %.not.i26 = icmp eq i32 %i.aa, 0
  br i1 %.not.i26, label %bb.g, label %zend_string_release_ex.exit

bb.g:                                             ; preds = %zend_hash_find_ptr.exit.thread
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !92  ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !92
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %zend_string_release_ex.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_efree(ptr noundef nonnull %i.f) #30
  br label %zend_string_release_ex.exit

zend_compile_ignore_function.exit.thread38:       ; preds = %bb.f, %.split, %zend_compile_ignore_function.exit
  %i.af = phi ptr [ %i.n, %.split ], [ %i.q, %zend_compile_ignore_function.exit ], [ %i.q, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !198 ; 3 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !198
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 192), align 8, !tbaa !199 ; 2 uses
  %.not.i.i = icmp ult i32 %i.ah, %i.aj
end_hunk_0
