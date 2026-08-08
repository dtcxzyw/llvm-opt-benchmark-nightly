inline.NumInlined: 50
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zim_PDOStatement_getColumnMeta:bb.a
  %i.ae = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(6) @.str.1) #16
  %.not62 = icmp eq i32 %i.ae, 0
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !32
  call void @pdo_handle_error(ptr noundef %i.af, ptr noundef nonnull %i.l) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.ag, align 8, !tbaa !42
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 -112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !94
  %i.ak = getelementptr inbounds [24 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !42
  %i.ao = and i32 %i.an, 64
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.n, label %zend_string_copy.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !43
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !43
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.m, %bb.n
  call void @add_assoc_str_ex(ptr noundef %1, ptr noundef nonnull @.str.17, i64 noundef 4, ptr noundef nonnull %i.al) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !165
  call void @add_assoc_long_ex(ptr noundef %1, ptr noundef nonnull @.str.18, i64 noundef 3, i64 noundef %i.as) #15
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !166
  call void @add_assoc_long_ex(ptr noundef %1, ptr noundef nonnull @.str.19, i64 noundef 9, i64 noundef %i.au) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.h, %bb.l, %zend_string_copy.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @pdo_stmt_free_default_fetch_mode(ptr nofree noundef captures(none) initializes((72, 104)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %i.c = and i32 %i.b, 15
  switch i32 %i.c, label %zend_object_release.exit [
    i32 9, label %bb.b
    i32 8, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 6 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %zend_object_release.exit, label %bb.c, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 2 uses
  %i.g = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.h, ptr %i.e, align 4, !tbaa !43
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @zend_objects_store_del(ptr noundef nonnull %i.e) #15
  br label %zend_object_release.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42
  %i.l = and i32 %i.k, -1008
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %zend_object_release.exit, !prof !51

bb.f:                                             ; preds = %bb.e
  tail call void @gc_possible_root(ptr noundef nonnull %i.e) #15
  br label %zend_object_release.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 5 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %zend_object_release.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42
  %i.r = and i32 %i.q, 64
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.i, label %zend_object_release.exit

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.o, align 4, !tbaa !43   ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.u, ptr %i.o, align 4, !tbaa !43
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %zend_object_release.exit

bb.j:                                             ; preds = %bb.i
  tail call void @zend_array_destroy(ptr noundef nonnull %i.o) #15
  br label %zend_object_release.exit

zend_object_release.exit:                         ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.a, %bb.g, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @pdo_stmt_setup_fetch_mode(ptr nofree noundef captures(none) initializes((72, 104)) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %2, 1                            ; 8 uses
  %i.b = add i32 %2, 2                            ; 2 uses
  %i.c = add i32 %4, %2                           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !98
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %pdo_stmt_free_default_fetch_mode.exit [
    i32 9, label %bb.b
    i32 8, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 6 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %pdo_stmt_free_default_fetch_mode.exit, label %bb.c, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !43
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @zend_objects_store_del(ptr noundef nonnull %i.h) #15
  br label %pdo_stmt_free_default_fetch_mode.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !42
  %i.o = and i32 %i.n, -1008
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %pdo_stmt_free_default_fetch_mode.exit, !prof !51

bb.f:                                             ; preds = %bb.e
  tail call void @gc_possible_root(ptr noundef nonnull %i.h) #15
  br label %pdo_stmt_free_default_fetch_mode.exit

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 5 uses
  %.not.i112 = icmp eq ptr %i.r, null
  br i1 %.not.i112, label %pdo_stmt_free_default_fetch_mode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !42
  %i.u = and i32 %i.t, 64
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.i, label %pdo_stmt_free_default_fetch_mode.exit

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.r, align 4, !tbaa !43   ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.x, ptr %i.r, align 4, !tbaa !43
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %pdo_stmt_free_default_fetch_mode.exit

bb.j:                                             ; preds = %bb.i
  tail call void @zend_array_destroy(ptr noundef nonnull %i.r) #15
  br label %pdo_stmt_free_default_fetch_mode.exit

pdo_stmt_free_default_fetch_mode.exit:            ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store i32 4, ptr %i.d, align 4, !tbaa !98
  %or.cond.i = icmp ugt i64 %1, 1023
  br i1 %or.cond.i, label %.critedge.sink.split.i, label %bb.k

bb.k:                                             ; preds = %pdo_stmt_free_default_fetch_mode.exit
  %i.aa = trunc nuw nsw i64 %1 to i32             ; 2 uses
  %i.ab = and i32 %i.aa, 15                       ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  %.027.i = select i1 %i.ac, i32 4, i32 %i.ab
  %.not.i113115 = icmp samesign ult i64 %1, 16
  %.not.i113 = or i1 %.not.i113115, %i.ac
  br i1 %.not.i113, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp samesign ugt i64 %1, 127
  %i.ae = icmp ne i32 %i.ab, 8
  %or.cond3.i = and i1 %i.ad, %i.ae
  br i1 %or.cond3.i, label %.critedge.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not31.i = icmp samesign ult i64 %1, 512
  br i1 %.not31.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.47) #15
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !99
  %.not32.i = icmp eq ptr %i.af, null
  br i1 %.not32.i, label %bb.o, label %.critedge, !prof !95

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  switch i32 %.027.i, label %.critedge.sink.split.i [
    i32 10, label %bb.p
    i32 1, label %pdo_verify_fetch_mode.exit
    i32 9, label %pdo_verify_fetch_mode.exit
    i32 2, label %pdo_verify_fetch_mode.exit
    i32 3, label %pdo_verify_fetch_mode.exit
    i32 4, label %pdo_verify_fetch_mode.exit
    i32 5, label %pdo_verify_fetch_mode.exit
    i32 6, label %pdo_verify_fetch_mode.exit
    i32 7, label %pdo_verify_fetch_mode.exit
    i32 8, label %pdo_verify_fetch_mode.exit
    i32 11, label %pdo_verify_fetch_mode.exit
    i32 12, label %pdo_verify_fetch_mode.exit
  ]

bb.p:                                             ; preds = %bb.o
  br label %.critedge.sink.split.i

.critedge.sink.split.i:                           ; preds = %bb.p, %bb.o, %bb.l, %pdo_stmt_free_default_fetch_mode.exit
  %.str.48.sink.i = phi ptr [ @.str.46, %bb.l ], [ @.str.48, %bb.p ], [ @.str.45, %pdo_stmt_free_default_fetch_mode.exit ], [ @.str.45, %bb.o ]
  tail call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef %2, ptr noundef nonnull %.str.48.sink.i) #15
  br label %.critedge

pdo_verify_fetch_mode.exit:                       ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %i.ag = and i64 %1, 15
  switch i64 %i.ag, label %bb.bw [
    i64 0, label %bb.q
    i64 1, label %bb.q
    i64 2, label %bb.q
    i64 3, label %bb.q
    i64 4, label %bb.q
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 11, label %bb.q
    i64 12, label %bb.q
    i64 7, label %bb.w
    i64 8, label %bb.ah
    i64 9, label %bb.bn
  ]

bb.q:                                             ; preds = %pdo_verify_fetch_mode.exit, %pdo_verify_fetch_mode.exit, %pdo_verify_fetch_mode.exit, %pdo_verify_fetch_mode.exit, %pdo_verify_fetch_mode.exit, %pdo_verify_fetch_mode.exit, %pdo_verify_fetch_mode.exit, %pdo_verify_fetch_mode.exit, %pdo_verify_fetch_mode.exit
  %.not95 = icmp eq i32 %4, 0
  br i1 %.not95, label %bb.bx, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = tail call ptr @get_active_function_or_method_name() #15 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  tail call void (ptr, ...) @zend_argument_count_error(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.ai, i32 noundef %2, i32 noundef %i.c) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !42 ; 2 uses
  %i.al = and i32 %i.ak, 64
  %.not.i108 = icmp eq i32 %i.al, 0
  br i1 %.not.i108, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.am = load i32, ptr %i.ah, align 4, !tbaa !43 ; 2 uses
  %i.an = icmp ne i32 %i.am, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.ah, align 4, !tbaa !43
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.aq = and i32 %i.ak, 128
  %.not5.i109 = icmp eq i32 %i.aq, 0
  br i1 %.not5.i109, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.ah) #15
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  tail call void @_efree(ptr noundef nonnull %i.ah) #15
  br label %.critedge

bb.w:                                             ; preds = %pdo_verify_fetch_mode.exit
  %.not93 = icmp eq i32 %4, 1
  br i1 %.not93, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = tail call ptr @get_active_function_or_method_name() #15 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  tail call void (ptr, ...) @zend_argument_count_error(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.as, i32 noundef %i.a, i32 noundef %i.c) #15
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !42 ; 2 uses
  %i.av = and i32 %i.au, 64
  %.not.i105 = icmp eq i32 %i.av, 0
  br i1 %.not.i105, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !43 ; 2 uses
  %i.ax = icmp ne i32 %i.aw, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.ar, align 4, !tbaa !43
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ba = and i32 %i.au, 128
  %.not5.i106 = icmp eq i32 %i.ba, 0
  br i1 %.not5.i106, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.ar) #15
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  tail call void @_efree(ptr noundef nonnull %i.ar) #15
  br label %.critedge

bb.ac:                                            ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !42
  %.not94 = icmp eq i8 %i.bc, 4
  br i1 %.not94, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = tail call ptr @zend_zval_value_name(ptr noundef nonnull %3) #15
  tail call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef %i.a, ptr noundef nonnull @.str.8, ptr noundef %i.bd) #15
  br label %.critedge

bb.ae:                                            ; preds = %bb.ac
  %i.be = load i64, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef %i.a, ptr noundef nonnull @.str.9) #15
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae
  %i.bg = trunc i64 %i.be to i32
  store i32 %i.bg, ptr %i.z, align 8, !tbaa !42
  br label %bb.bx

bb.ah:                                            ; preds = %pdo_verify_fetch_mode.exit
  %i.bh = and i64 %1, 128
  %.not86 = icmp eq i64 %i.bh, 0
  %i.bi = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not86, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bi, label %bb.bx, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bj = tail call ptr @get_active_function_or_method_name() #15 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  tail call void (ptr, ...) @zend_argument_count_error(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.bk, i32 noundef %2, i32 noundef %i.c) #15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42 ; 2 uses
  %i.bn = and i32 %i.bm, 64
  %.not.i102 = icmp eq i32 %i.bn, 0
  br i1 %.not.i102, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !43 ; 2 uses
  %i.bp = icmp ne i32 %i.bo, 0
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bj, align 4, !tbaa !43
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak
  %i.bs = and i32 %i.bm, 128
  %.not5.i103 = icmp eq i32 %i.bs, 0
  br i1 %.not5.i103, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @free(ptr noundef nonnull %i.bj) #15
  br label %.critedge

bb.an:                                            ; preds = %bb.al
  tail call void @_efree(ptr noundef nonnull %i.bj) #15
  br label %.critedge

bb.ao:                                            ; preds = %bb.ah
  br i1 %i.bi, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.bt = tail call ptr @get_active_function_or_method_name() #15 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  tail call void (ptr, ...) @zend_argument_count_error(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bu, i32 noundef %i.a, i32 noundef %i.c) #15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !42 ; 2 uses
  %i.bx = and i32 %i.bw, 64
  %.not.i99 = icmp eq i32 %i.bx, 0
  br i1 %.not.i99, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.by = load i32, ptr %i.bt, align 4, !tbaa !43 ; 2 uses
  %i.bz = icmp ne i32 %i.by, 0
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = add i32 %i.by, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.bt, align 4, !tbaa !43
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.cc = and i32 %i.bw, 128
  %.not5.i100 = icmp eq i32 %i.cc, 0
  br i1 %.not5.i100, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %i.bt) #15
  br label %.critedge

bb.at:                                            ; preds = %bb.ar
  tail call void @_efree(ptr noundef nonnull %i.bt) #15
  br label %.critedge

bb.au:                                            ; preds = %bb.ao
  %i.cd = icmp ugt i32 %4, 2
  br i1 %i.cd, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ce = tail call ptr @get_active_function_or_method_name() #15 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  tail call void (ptr, ...) @zend_argument_count_error(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.cf, i32 noundef %i.b, i32 noundef %i.c) #15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !42 ; 2 uses
  %i.ci = and i32 %i.ch, 64
end_hunk_0
