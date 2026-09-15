Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/compile?download=true
inline.NumInlined: 315
inline.NumDeleted: 14
begin_hunk_0_@gen_op_var_fresh:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local { ptr, ptr } @gen_op_bound(i32 noundef %0, ptr %1, ptr nofree readnone captures(address) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne ptr %1, %2
  %.not8 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 228, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_op_bound) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = tail call ptr @opcode_describe(i32 noundef %0) #15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = and i32 %i.g, 1024
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %gen_op_unbound.exit

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_op_unbound) #16
  unreachable

gen_op_unbound.exit:                              ; preds = %bb.c
  %i.i = tail call ptr @jv_mem_alloc(i64 noundef 160) #15 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 %0, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store i32 -1, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  store i32 -1, ptr %i.n, align 4, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr null, ptr %i.q, align 8, !tbaa !26
  %i.r = tail call noalias ptr @strdup(ptr noundef readonly %i.d) #15
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store ptr %i.r, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %i.i, 1
  store ptr %1, ptr %i.l, align 8, !tbaa !40
  store i32 0, ptr %i.t, align 8, !tbaa !38
  ret { ptr, ptr } %.fca.1.insert.i.i
}

; Function Attrs: nounwind uwtable
define dso_local { ptr, ptr } @gen_dictpair(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @gen_subexp(ptr %0, ptr %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 5 uses
  %i.d = tail call { ptr, ptr } @gen_subexp(ptr %2, ptr %3) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 4 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %block_join.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i = icmp eq ptr %i.c, null
  br i1 %.not7.i.i, label %block_join.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !27
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %inst_join.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

inst_join.exit.i.i:                               ; preds = %bb.e
  store ptr %i.e, ptr %i.c, align 8, !tbaa !27
  store ptr %i.c, ptr %i.h, align 8, !tbaa !41
  br label %block_join.exit

block_join.exit:                                  ; preds = %bb.a, %bb.b, %inst_join.exit.i.i
  %.sroa.3.0.i = phi ptr [ %i.c, %bb.a ], [ %i.f, %bb.b ], [ %i.f, %inst_join.exit.i.i ] ; 4 uses
  %.sroa.0.1.i = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ], [ %i.b, %inst_join.exit.i.i ]
  %i.j = tail call ptr @opcode_describe(i32 noundef 21) #15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %block_join.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_op_simple) #16
  unreachable

bb.h:                                             ; preds = %block_join.exit
  %i.n = tail call ptr @jv_mem_alloc(i64 noundef 160) #15 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i32 21, ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store i32 -1, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 108
  store i32 -1, ptr %i.s, align 4, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !26
  %.not7.i.i14 = icmp eq ptr %.sroa.3.0.i, null
  br i1 %.not7.i.i14, label %block_join.exit22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %.sroa.3.0.i, align 8, !tbaa !27
  %.not.i.i.i15 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i15, label %inst_join.exit.i.i17, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

inst_join.exit.i.i17:                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.n, ptr %.sroa.3.0.i, align 8, !tbaa !27
  store ptr %.sroa.3.0.i, ptr %i.x, align 8, !tbaa !41
  br label %block_join.exit22

block_join.exit22:                                ; preds = %bb.h, %inst_join.exit.i.i17
  %.sroa.0.1.i19 = phi ptr [ %.sroa.0.1.i, %inst_join.exit.i.i17 ], [ %i.n, %bb.h ]
  %.fca.0.insert.i20 = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i19, 0
  %.fca.1.insert.i21 = insertvalue { ptr, ptr } %.fca.0.insert.i20, ptr %i.n, 1
  ret { ptr, ptr } %.fca.1.insert.i21
}

; Function Attrs: nounwind uwtable
define dso_local { ptr, ptr } @block_join(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %block_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %1, null
  br i1 %.not7.i, label %block_append.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %.not10.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i, label %inst_join.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

inst_join.exit.i:                                 ; preds = %bb.e
  store ptr %2, ptr %1, align 8, !tbaa !27
  store ptr %1, ptr %i.b, align 8, !tbaa !41
  br label %block_append.exit

block_append.exit:                                ; preds = %inst_join.exit.i, %bb.b, %bb.a
  %.sroa.3.0 = phi ptr [ %1, %bb.a ], [ %3, %bb.b ], [ %3, %inst_join.exit.i ]
  %.sroa.0.1 = phi ptr [ %0, %bb.a ], [ %2, %bb.b ], [ %0, %inst_join.exit.i ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local { ptr, ptr } @gen_subexp(ptr %0, ptr %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 3 uses
  %i.b = icmp ne ptr %1, null
  %.not41 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not41, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @opcode_describe(i32 noundef 1) #15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %gen_op_simple.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_op_simple) #16
  unreachable

gen_op_simple.exit:                               ; preds = %bb.b
  %i.g = tail call ptr @jv_mem_alloc(i64 noundef 160) #15 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store i32 -1, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  store i32 -1, ptr %i.l, align 4, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr null, ptr %i.o, align 8, !tbaa !26
  br label %block_join.exit38

bb.d:                                             ; preds = %bb.a
  %i.p = icmp eq ptr %0, %1
  %.not43 = select i1 %i.a, i1 %i.p, i1 false
  br i1 %.not43, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %block_const.exit, label %bb.g

block_const.exit:                                 ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call { i64, ptr } @jv_copy(i64 %i.u, ptr %i.w) #15 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %block_const.exit, %.lr.ph.i
  %.05.i = phi ptr [ %i.y, %.lr.ph.i ], [ %0, %block_const.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i, align 8, !tbaa !27 ; 2 uses
  tail call fastcc void @inst_free(ptr noundef nonnull %.05.i), !inline_history !42
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %block_free.exit, label %.lr.ph.i, !llvm.loop !0

block_free.exit:                                  ; preds = %.lr.ph.i
  %i.z = tail call ptr @opcode_describe(i32 noundef 4) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !35
  %i.ac = and i32 %i.ab, 2
  %.not.i20 = icmp eq i32 %i.ac, 0
  br i1 %.not.i20, label %bb.f, label %gen_op_pushk_under.exit

bb.f:                                             ; preds = %block_free.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_op_pushk_under) #16
  unreachable

gen_op_pushk_under.exit:                          ; preds = %block_free.exit
  %i.ad = extractvalue { i64, ptr } %i.x, 1
  %i.ae = extractvalue { i64, ptr } %i.x, 0
  %i.af = tail call ptr @jv_mem_alloc(i64 noundef 160) #15 ; 13 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i32 4, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store i32 -1, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aj, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 108
  store i32 -1, ptr %i.ak, align 4, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr null, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %i.ae, ptr %i.ao, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr %i.ad, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36
  br label %block_join.exit38

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ap = tail call ptr @opcode_describe(i32 noundef 23) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !30
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %gen_op_simple.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_op_simple) #16
  unreachable

gen_op_simple.exit25:                             ; preds = %bb.g
  %i.at = tail call ptr @jv_mem_alloc(i64 noundef 160) #15 ; 13 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store i32 23, ptr %i.au, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  store i32 -1, ptr %i.av, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 108
  store i32 -1, ptr %i.ay, align 4, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store ptr null, ptr %i.bb, align 8, !tbaa !26
  br i1 %i.a, label %bb.i, label %block_join.exit

bb.i:                                             ; preds = %gen_op_simple.exit25
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  %.not10.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not10.i.i.i, label %inst_join.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

inst_join.exit.i.i:                               ; preds = %bb.i
  store ptr %0, ptr %i.at, align 8, !tbaa !27
  store ptr %i.at, ptr %i.bc, align 8, !tbaa !41
  br label %block_join.exit

block_join.exit:                                  ; preds = %gen_op_simple.exit25, %inst_join.exit.i.i
  %.sroa.3.0.i = phi ptr [ %i.at, %gen_op_simple.exit25 ], [ %1, %inst_join.exit.i.i ] ; 4 uses
  %i.be = tail call ptr @opcode_describe(i32 noundef 24) #15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !30
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %block_join.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_op_simple) #16
  unreachable

bb.l:                                             ; preds = %block_join.exit
  %i.bi = tail call ptr @jv_mem_alloc(i64 noundef 160) #15 ; 14 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store i32 24, ptr %i.bj, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 152
  store i32 -1, ptr %i.bk, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bm, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 108
  store i32 -1, ptr %i.bn, align 4, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store ptr null, ptr %i.bq, align 8, !tbaa !26
  %.not7.i.i30 = icmp eq ptr %.sroa.3.0.i, null
  br i1 %.not7.i.i30, label %block_join.exit38, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %.sroa.3.0.i, align 8, !tbaa !27
  %.not.i.i.i31 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i31, label %inst_join.exit.i.i33, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

inst_join.exit.i.i33:                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bi, ptr %.sroa.3.0.i, align 8, !tbaa !27
  store ptr %.sroa.3.0.i, ptr %i.bs, align 8, !tbaa !41
  br label %block_join.exit38

block_join.exit38:                                ; preds = %inst_join.exit.i.i33, %bb.l, %gen_op_pushk_under.exit, %gen_op_simple.exit
  %.pn46 = phi ptr [ %i.g, %gen_op_simple.exit ], [ %i.af, %gen_op_pushk_under.exit ], [ %i.at, %inst_join.exit.i.i33 ], [ %i.bi, %bb.l ]
  %.pn44 = phi ptr [ %i.g, %gen_op_simple.exit ], [ %i.af, %gen_op_pushk_under.exit ], [ %i.bi, %inst_join.exit.i.i33 ], [ %i.bi, %bb.l ]
  %.fca.0.insert.i.i.pn = insertvalue { ptr, ptr } poison, ptr %.pn46, 0
  %.pn = insertvalue { ptr, ptr } %.fca.0.insert.i.i.pn, ptr %.pn44, 1
  ret { ptr, ptr } %.pn
}

; Function Attrs: nounwind uwtable
define dso_local void @block_append(ptr nofree noundef captures(none) %0, ptr %1, ptr %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %inst_join.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__.inst_join) #16
  unreachable

inst_join.exit:                                   ; preds = %bb.e
  store ptr %1, ptr %i.b, align 8, !tbaa !27
  store ptr %i.b, ptr %i.d, align 8, !tbaa !41
  br label %bb.h
end_hunk_0
