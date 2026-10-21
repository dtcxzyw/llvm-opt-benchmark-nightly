Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_inheritance?download=true
inline.NumInlined: 86
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@inherit_property_hook:bb.a
  br i1 %.not4667, label %property_has_operation.exit61.thread, label %.thread69

.thread69:                                        ; preds = %property_has_operation.exit.thread64.thread, %.thread65
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = and i32 %i.ab, 64
  %.not47 = icmp eq i32 %i.ac, 0
  br i1 %.not47, label %.thread69._crit_edge, label %bb.h

.thread69._crit_edge:                             ; preds = %.thread69
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !114
  br label %bb.k

bb.h:                                             ; preds = %.thread69
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !111 ; 2 uses
  %i.af = and i32 %i.ae, 512
  %.not.i57 = icmp eq i32 %i.af, 0
  br i1 %.not.i57, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq i32 %3, 0
  %i.ah = and i32 %i.ae, 128
  %.not5.i59 = icmp eq i32 %i.ah, 0
  %or.cond.i60 = or i1 %i.ag, %.not5.i59
  br i1 %or.cond.i60, label %property_has_operation.exit61.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !114 ; 3 uses
  %.not6.i58 = icmp eq ptr %i.ai, null
  br i1 %.not6.i58, label %property_has_operation.exit61.thread71, label %property_has_operation.exit61

property_has_operation.exit61:                    ; preds = %bb.j
  %i.aj = zext nneg i32 %3 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !117
  %.not76 = icmp eq ptr %i.al, null
  br i1 %.not76, label %property_has_operation.exit61.thread71, label %property_has_operation.exit61.thread

property_has_operation.exit61.thread71:           ; preds = %bb.j, %property_has_operation.exit61
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43
  %i.ao = or i32 %i.an, 16
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %.thread69._crit_edge, %property_has_operation.exit61.thread71
  %i.ap = phi ptr [ %.pre, %.thread69._crit_edge ], [ %i.ai, %property_has_operation.exit61.thread71 ]
  %.not48 = icmp eq ptr %i.ap, null
  br i1 %.not48, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !129
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !129
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.not.i = icmp ult i64 %i.az, 16
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !102

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !100
  br label %zend_arena_alloc.exit

bb.n:                                             ; preds = %bb.l
  %i.bb = ptrtoint ptr %i.at to i64
  %i.bc = sub i64 %i.ax, %i.bb
  %..i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 40) ; 2 uses
  %i.bd = tail call noalias ptr @_emalloc(i64 noundef %..i) #17 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %..i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.at, ptr %i.bi, align 8, !tbaa !103
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98
  br label %zend_arena_alloc.exit

zend_arena_alloc.exit:                            ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ %i.au, %bb.m ], [ %i.be, %bb.n ] ; 2 uses
  store ptr %.0.i, ptr %i.f, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %zend_arena_alloc.exit, %bb.k
  %i.bj = load i8, ptr %i.e, align 8, !tbaa !28
  %i.bk = icmp eq i8 %i.bj, 1
  br i1 %i.bk, label %bb.p, label %bb.q, !prof !102

bb.p:                                             ; preds = %bb.o
  %.val = load i8, ptr %0, align 8, !tbaa !94
  %i.bl = tail call fastcc ptr @zend_duplicate_internal_function(ptr noundef nonnull %i.e, i8 %.val)
  br label %zend_duplicate_function.exit

bb.q:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !28 ; 3 uses
  %.not.i52 = icmp eq ptr %i.bn, null
  br i1 %.not.i52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !133
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !133
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28 ; 4 uses
  %.not11.i = icmp eq ptr %i.br, null
  br i1 %.not11.i, label %zend_duplicate_function.exit, label %bb.t, !prof !102

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !28
  %i.bu = and i32 %i.bt, 64
  %.not.i54 = icmp eq i32 %i.bu, 0
  br i1 %.not.i54, label %bb.u, label %zend_duplicate_function.exit

bb.u:                                             ; preds = %bb.t
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !92
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !92
  br label %zend_duplicate_function.exit

zend_duplicate_function.exit:                     ; preds = %bb.u, %bb.t, %bb.p, %bb.s
  %.0.i53 = phi ptr [ %i.bl, %bb.p ], [ %i.e, %bb.s ], [ %i.e, %bb.t ], [ %i.e, %bb.u ]
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.by = zext nneg i32 %3 to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  store ptr %.0.i53, ptr %i.bz, align 8, !tbaa !117
  br label %property_has_operation.exit61.thread

bb.v:                                             ; preds = %property_has_operation.exit.thread64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !28 ; 2 uses
  %.not49 = icmp eq ptr %i.cb, null
  %. = select i1 %.not49, ptr %i.o, ptr %i.cb
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %., ptr %i.cc, align 8, !tbaa !28
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !28 ; 2 uses
  %i.cf = and i32 %i.ce, 4
  %.not50 = icmp eq i32 %i.cf, 0
  br i1 %.not50, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !28
  %i.ci = or i32 %i.ch, 8
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !28
  br label %property_has_operation.exit61.thread

bb.x:                                             ; preds = %bb.v
  %i.cj = and i32 %i.ce, 32
  %.not51 = icmp eq i32 %i.cj, 0
  br i1 %.not51, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cr) #18
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !28
  tail call fastcc void @do_inheritance_check_on_method(ptr noundef nonnull %i.n, ptr noundef %i.ct, ptr noundef nonnull %i.o, ptr noundef %i.cv, ptr noundef %0, ptr noundef null, i32 noundef 124)
  br label %property_has_operation.exit61.thread

property_has_operation.exit61.thread:             ; preds = %.thread89, %property_has_operation.exit.thread64.thread, %.thread72, %bb.i, %.thread65, %bb.w, %bb.z, %property_has_operation.exit61, %property_has_operation.exit.thread64, %zend_duplicate_function.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 3) i32 @verify_property_type_compatibility(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !116  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !116  ; 4 uses
  %i.k = xor i32 %i.j, %i.g
  %i.l = and i32 %i.k, 262143
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !171
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !171
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %full_property_types_compatible.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = and i32 %i.g, 33554431
  %i.r = icmp ne i32 %i.q, 0
  %i.s = and i32 %i.j, 33554431
  %i.t = icmp eq i32 %i.s, 0
  %.not.i = xor i1 %i.r, %i.t
  br i1 %.not.i, label %bb.d, label %full_property_types_compatible.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %2, 2
  %.pre29.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %.pre32.i = load ptr, ptr %i.h, align 8         ; 2 uses
  br i1 %i.u, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110
  %i.z = tail call i32 @zend_perform_covariant_type_check(ptr noundef %i.w, ptr %.pre32.i, i32 %i.j, ptr noundef %i.y, ptr %.pre29.i, i32 %i.g) ; 2 uses
  %i.aa = icmp eq i32 %2, 1
  br i1 %i.aa, label %bb.f, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.e, align 8
  %.pre30.i = load i32, ptr %i.f, align 8
  %.pre31.i = load ptr, ptr %i.h, align 8
  %.pre33.i = load i32, ptr %i.i, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.d
  %i.ab = phi i32 [ %.pre33.i, %..thread_crit_edge.i ], [ %i.j, %bb.d ]
  %i.ac = phi ptr [ %.pre31.i, %..thread_crit_edge.i ], [ %.pre32.i, %bb.d ]
  %i.ad = phi i32 [ %.pre30.i, %..thread_crit_edge.i ], [ %i.g, %bb.d ]
  %i.ae = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %.pre29.i, %bb.d ]
  %i.af = phi i32 [ %i.z, %..thread_crit_edge.i ], [ 2, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !110
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !110
  %i.ak = tail call i32 @zend_perform_covariant_type_check(ptr noundef %i.ah, ptr %i.ae, i32 %i.ad, ptr noundef %i.aj, ptr %i.ac, i32 %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.al = phi i32 [ %i.af, %.thread.i ], [ %i.z, %bb.e ] ; 2 uses
  %i.am = phi i32 [ %i.ak, %.thread.i ], [ 2, %bb.e ] ; 2 uses
  %i.an = icmp eq i32 %i.al, 2
  %i.ao = icmp eq i32 %i.am, 2
  %or.cond.i = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %full_property_types_compatible.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ne i32 %i.al, 0
  %i.aq = icmp ne i32 %i.am, 0
  %or.cond3.not.i = select i1 %i.ap, i1 %i.aq, i1 false
  %spec.select.i = sext i1 %or.cond3.not.i to i32
  br label %full_property_types_compatible.exit

full_property_types_compatible.exit:              ; preds = %bb.b, %bb.f, %bb.g
  %.1.i = phi i32 [ 2, %bb.f ], [ 2, %bb.b ], [ %spec.select.i, %bb.g ] ; 4 uses
  %i.ar = icmp eq i32 %.1.i, 0
  %or.cond = and i1 %3, %i.ar
  %i.as = icmp eq i32 %.1.i, -1
  %or.cond3 = and i1 %4, %i.as
  %or.cond40 = or i1 %or.cond, %or.cond3
  br i1 %or.cond40, label %full_property_types_compatible.exit._crit_edge, label %bb.i

full_property_types_compatible.exit._crit_edge:   ; preds = %full_property_types_compatible.exit
  %.pre = load i32, ptr %i.f, align 8
  br label %bb.h

full_property_types_compatible.exit.thread:       ; preds = %bb.c
  br i1 %3, label %bb.h, label %.thread

bb.h:                                             ; preds = %full_property_types_compatible.exit._crit_edge, %full_property_types_compatible.exit.thread
  %5 = phi i32 [ %.pre, %full_property_types_compatible.exit._crit_edge ], [ %i.g, %full_property_types_compatible.exit.thread ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !110
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = tail call ptr @zend_type_to_string_resolved(ptr %i.av, i32 %5, ptr noundef %i.au) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.be = call i32 @zend_unmangle_property_name_ex(ptr noundef %i.bd, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null) #16 ; 0 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.bg = icmp eq i32 %2, 0
  %i.bh = icmp eq i32 %2, 1
  %i.bi = select i1 %i.bh, ptr @.str.68, ptr @.str.69
  %i.bj = select i1 %i.bg, ptr @.str.23, ptr %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !110
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.bb, ptr noundef %i.bf, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bo) #18
  unreachable

bb.i:                                             ; preds = %full_property_types_compatible.exit
  %.not = icmp eq i32 %.1.i, 2
  br i1 %.not, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !111
  %i.br = and i32 %i.bq, 64
  %.not36 = icmp eq i32 %i.br, 0
  br i1 %.not36, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !114, !nonnull !89, !noundef !89
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !117 ; 2 uses
  %.not37 = icmp eq ptr %i.bv, null
  br i1 %.not37, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !114 ; 2 uses
  %.not38 = icmp eq ptr %i.bx, null
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !117
  %.not39 = icmp eq ptr %i.bz, null
  br i1 %.not39, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !28 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.cc, align 8, !tbaa !156
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !133
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !110
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !110
  %i.ch = load ptr, ptr %i.h, align 8
  %i.ci = load i32, ptr %i.i, align 8
  %i.cj = tail call i32 @zend_perform_covariant_type_check(ptr noundef %i.ce, ptr %.sroa.0.0.copyload, i32 %.sroa.4.0.copyload, ptr noundef %i.cg, ptr %i.ch, i32 %i.ci) ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %or.cond5 = and i1 %3, %i.ck
  %i.cl = icmp eq i32 %i.cj, -1
  %or.cond7 = and i1 %4, %i.cl
  %or.cond41 = or i1 %or.cond5, %or.cond7
  br i1 %or.cond41, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cm = load ptr, ptr %i.bs, align 8, !tbaa !114
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !117
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !28 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cr, align 8, !tbaa !156
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !133
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !110
  %i.ct = tail call ptr @zend_type_to_string_resolved(ptr %.sroa.0.0.copyload.i, i32 %.sroa.3.0.copyload.i, ptr noundef %i.cs) #16
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !110
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.da = call i32 @zend_unmangle_property_name_ex(ptr noundef %i.cz, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #16 ; 0 uses
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dd = load ptr, ptr %i.cd, align 8, !tbaa !110
  %i.de = call ptr @zend_get_object_type_case(ptr noundef %i.dd, i1 noundef zeroext false) #16
  %i.df = load ptr, ptr %i.cd, align 8, !tbaa !110
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.cx, ptr noundef %i.db, ptr noundef nonnull %i.dc, ptr noundef %i.de, ptr noundef nonnull %i.di) #18
  unreachable

.thread:                                          ; preds = %full_property_types_compatible.exit.thread, %bb.j, %bb.m, %bb.k, %bb.n, %bb.i
  %.0 = phi i32 [ %.1.i, %bb.i ], [ 2, %bb.j ], [ 2, %bb.n ], [ 2, %bb.k ], [ 2, %bb.m ], [ 0, %full_property_types_compatible.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_property_compatibility_obligation(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #2 {
zend_hash_next_index_insert_ptr.exit:
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = tail call fastcc ptr @get_or_init_obligations_for_class(ptr noundef %0)
  %i.b = tail call noalias ptr @_emalloc_640() #16 ; 5 uses
  store i32 2, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !28
  store ptr %2, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %3, ptr %i.e, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.b, ptr %4, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 13, ptr %i.f, align 8, !tbaa !28
  %i.g = call ptr @zend_hash_next_index_insert(ptr noundef %i.a, ptr noundef nonnull %4) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

declare void @rc_dtor_func(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @do_inheritance_check_on_method(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef range(i32 14, 126) %6) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 9 uses
  %i.c = and i32 %i.b, 2097220
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.j, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %6, 16
  %.not209 = icmp eq i32 %i.e, 0
  br i1 %.not209, label %bb.cb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %6, 1
  %.not210 = icmp eq i32 %i.f, 0
  %.not211 = icmp eq ptr %1, %4
  %or.cond = or i1 %.not211, %.not210
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = and i32 %i.h, 2
  %.not212 = icmp eq i32 %i.i, 0
  br i1 %.not212, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %0, align 8, !tbaa !28
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %.not.i226 = icmp ult i64 %i.r, 256
  br i1 %.not.i226, label %bb.h, label %bb.g, !prof !102

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  store ptr %i.s, ptr %i.l, align 8, !tbaa !100
  br label %zend_arena_alloc.exit229

bb.h:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.p, %i.t
  %..i228 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 280) ; 2 uses
  %i.v = tail call noalias ptr @_emalloc(i64 noundef %..i228) #17 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  store ptr %i.x, ptr %i.v, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i228
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
end_hunk_0
