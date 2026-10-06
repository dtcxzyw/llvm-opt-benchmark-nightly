Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pdo_stmt?download=true
inline.NumInlined: 50
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zim_PDOStatement_fetch:bb.a
  br i1 %.not91, label %bb.v, label %bb.u

bb.u:                                             ; preds = %zval_ptr_dtor_nogc.exit
  %i.bq = load ptr, ptr %i.ad, align 8, !tbaa !33
  call void @pdo_handle_error(ptr noundef %i.bq, ptr noundef nonnull %i.ac) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %zval_ptr_dtor_nogc.exit
  store i32 2, ptr %i.bd, align 8, !tbaa !41
  br label %pdo_verify_fetch_mode.exit.thread

bb.w:                                             ; preds = %pdo_verify_fetch_mode.exit
  %i.br = trunc i64 %i.az to i32
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !83
  %i.bv = call fastcc zeroext i1 @do_fetch(ptr noundef nonnull %i.ac, ptr noundef %1, i32 noundef %i.br, i32 noundef %i.bt, i64 noundef %i.bu, ptr noundef null)
  br i1 %i.bv, label %pdo_verify_fetch_mode.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(6) @.str.1) #16
  %.not90 = icmp eq i32 %i.bw, 0
  br i1 %.not90, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !33
  call void @pdo_handle_error(ptr noundef %i.bx, ptr noundef nonnull %i.ac) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.by, align 8, !tbaa !41
  br label %pdo_verify_fetch_mode.exit.thread

pdo_verify_fetch_mode.exit.thread:                ; preds = %bb.n, %.critedge.sink.split.i, %.thread, %bb.i, %bb.w, %bb.v, %bb.q, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare ptr @_zend_new_array_0() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @pdo_do_key_pair_fetch(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct._zval_struct, align 8       ; 8 uses
  %5 = alloca %struct._zval_struct, align 8       ; 6 uses
  %i.b = tail call fastcc zeroext i1 @do_fetch_common(ptr noundef %0, i32 noundef %1, i64 noundef %2)
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  tail call void @pdo_raise_impl_error(ptr noundef %i.f, ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.51) #15
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call fastcc void @fetch_value(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0, ptr noundef null)
  call fastcc void @fetch_value(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 1, ptr noundef null)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !41
  switch i8 %i.h, label %bb.f [
    i8 4, label %bb.e
    i8 6, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %4, align 8, !tbaa !41
  %i.j = call ptr @zend_hash_index_update(ptr noundef %3, i64 noundef %i.i, ptr noundef nonnull %5) #15 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @_convert_to_string(ptr noundef nonnull %4) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.k = load ptr, ptr %4, align 8, !tbaa !41     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !78
  %i.o = load i8, ptr %i.l, align 8, !tbaa !41    ; 3 uses
  %i.p = icmp sgt i8 %i.o, 57
  br i1 %i.p, label %_zend_handle_numeric_str.exit.thread, label %bb.h, !prof !84

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i8 %i.o, 48
  br i1 %i.q, label %bb.i, label %_zend_handle_numeric_str.exit

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i8 %i.o, 45
  br i1 %.not.i, label %bb.j, label %_zend_handle_numeric_str.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 25
  %i.s = load i8, ptr %i.r, align 1, !tbaa !41
  %i.t = add i8 %i.s, -58
  %or.cond.i = icmp ult i8 %i.t, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.h, %bb.j
  %i.u = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %i.l, i64 noundef %i.n, ptr noundef nonnull %i.a) #15
  br i1 %i.u, label %bb.k, label %_zend_handle_numeric_str.exit.thread

bb.k:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.v = load i64, ptr %i.a, align 8, !tbaa !83
  %i.w = call ptr @zend_hash_index_update(ptr noundef %3, i64 noundef %i.v, ptr noundef nonnull %5) #15 ; 0 uses
  br label %zend_symtable_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.j, %bb.i, %bb.g, %_zend_handle_numeric_str.exit
  %i.x = call ptr @zend_hash_update(ptr noundef %3, ptr noundef nonnull %i.k, ptr noundef nonnull %5) #15 ; 0 uses
  br label %zend_symtable_update.exit

zend_symtable_update.exit:                        ; preds = %bb.k, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.l

bb.l:                                             ; preds = %zend_symtable_update.exit, %bb.e
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.l ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @do_fetch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct._zval_struct, align 8       ; 6 uses
  %7 = alloca %struct._zval_struct, align 8       ; 7 uses
  %8 = alloca %struct._zval_struct, align 8       ; 17 uses
  %9 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0197 = phi i32 [ %i.e, %bb.b ], [ %2, %bb.a ] ; 8 uses
  %i.f = and i32 %.0197, -16
  %i.g = and i32 %.0197, 15                       ; 4 uses
  %i.h = tail call fastcc zeroext i1 @do_fetch_common(ptr noundef %0, i32 noundef %3, i64 noundef %4)
  br i1 %i.h, label %bb.d, label %bb.ce

bb.d:                                             ; preds = %bb.c
  switch i32 %i.g, label %bb.u [
    i32 6, label %bb.e
    i32 1, label %bb.f
    i32 7, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !41
  br label %bb.ce

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !111  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !42
  %i.m = add i32 %.pre.i, 1
  br label %pdo_get_lazy_object.exit

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @pdo_row_ce, align 8, !tbaa !112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !113
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !114
  %i.s = lshr i32 %i.r, 30
  %.lobit.i.i = and i32 %i.s, 1
  %i.t = xor i32 %.lobit.i.i, 1
  %i.u = sub nsw i32 %i.p, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 4
  %i.x = add nsw i64 %i.w, 64
  %i.y = tail call noalias ptr @_emalloc(i64 noundef %i.x) #17 ; 2 uses
  store ptr %0, ptr %i.y, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  %i.aa = load ptr, ptr @pdo_row_ce, align 8, !tbaa !112
  tail call void @zend_object_std_init(ptr noundef nonnull %i.z, ptr noundef %i.aa) #15
  %i.ab = load ptr, ptr @pdo_row_ce, align 8, !tbaa !112
  tail call void @object_properties_init(ptr noundef nonnull %i.z, ptr noundef %i.ab) #15
  store ptr %i.z, ptr %i.j, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !42
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !42
  %i.af = load i32, ptr %i.z, align 8, !tbaa !42  ; 2 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  br label %pdo_get_lazy_object.exit

pdo_get_lazy_object.exit:                         ; preds = %._crit_edge.i, %bb.g
  %i.ah = phi i32 [ %i.m, %._crit_edge.i ], [ %i.af, %bb.g ]
  %i.ai = phi ptr [ %i.k, %._crit_edge.i ], [ %i.z, %bb.g ] ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !42
  store ptr %i.ai, ptr %1, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 776, ptr %i.aj, align 8, !tbaa !41
  br label %bb.ce

bb.h:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %i.am = and i32 %.0197, 96
  %.not243 = icmp ne i32 %i.am, 0
  %i.an = icmp eq i32 %i.al, -1                   ; 2 uses
  %or.cond247 = select i1 %.not243, i1 %i.an, i1 false
  %.0211 = select i1 %or.cond247, i32 1, i32 %i.al ; 5 uses
  %i.ao = icmp slt i32 %.0211, 0
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.52) #15
  br label %bb.ce

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !29
  %.not244 = icmp slt i32 %.0211, %i.aq
  br i1 %.not244, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.53) #15
  br label %bb.ce

bb.l:                                             ; preds = %bb.j
  %i.ar = icmp eq i32 %i.f, 32                    ; 2 uses
  br i1 %i.ar, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not298 = icmp eq i32 %.0211, 0
  br i1 %.not298, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.l, %bb.n
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.thread
  %.sink = phi i32 [ 1, %bb.m ], [ %.0211, %.thread ], [ 0, %bb.n ]
  tail call fastcc void @fetch_value(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.sink, ptr noundef null)
  %.not245 = icmp eq ptr %5, null
  br i1 %.not245, label %bb.ce, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sink321 = phi i32 [ 0, %bb.r ], [ %.0211, %bb.q ]
  tail call fastcc void @fetch_value(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %.sink321, ptr noundef null)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !41
  %.not246 = icmp eq i8 %i.av, 6
  br i1 %.not246, label %bb.ce, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_convert_to_string(ptr noundef nonnull %5) #15
  br label %bb.ce

bb.u:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 6 uses
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = or i16 %i.ax, 2
  store i16 %i.ay, ptr %i.aw, align 2
  switch i32 %i.g, label %bb.aq [
    i32 0, label %bb.v
    i32 2, label %bb.v
    i32 4, label %bb.v
    i32 3, label %bb.v
    i32 11, label %bb.v
    i32 5, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.ak
    i32 10, label %bb.an
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %.not233 = icmp eq ptr %5, null
  br i1 %.not233, label %.thread271, label %.thread280

.thread271:                                       ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !29
  %i.bb = tail call ptr @_zend_new_array(i32 noundef %i.ba) #15
  store ptr %i.bb, ptr %1, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.bc, align 8, !tbaa !41
  br label %bb.au

.thread280:                                       ; preds = %bb.v
  %i.bd = tail call ptr @_zend_new_array_0() #15
  store ptr %i.bd, ptr %1, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.be, align 8, !tbaa !41
  br label %bb.ar

bb.w:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr @zend_standard_class_def, align 8, !tbaa !112
  tail call void @object_init(ptr noundef %1) #15
  br label %.thread269

bb.x:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 3 uses
  %i.bj = and i32 %.0197, 128
  %.not227 = icmp eq i32 %i.bj, 0
  br i1 %.not227, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call fastcc void @fetch_value(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null)
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !41
  %i.bm = icmp eq i8 %i.bl, 6
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bn = load ptr, ptr %6, align 8, !tbaa !41
  %i.bo = call ptr @zend_lookup_class(ptr noundef %i.bn) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0198 = phi ptr [ %i.bo, %bb.z ], [ %i.bi, %bb.y ] ; 2 uses
  %i.bp = icmp eq ptr %.0198, null
  %i.bq = load ptr, ptr @zend_standard_class_def, align 8
  %spec.select = select i1 %i.bp, ptr %i.bq, ptr %.0198
  call void @zval_ptr_dtor(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ad

bb.ab:                                            ; preds = %bb.x
  %i.br = icmp eq ptr %i.bi, null
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !48

bb.ac:                                            ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !33
  tail call void @pdo_raise_impl_error(ptr noundef %i.bt, ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.54) #15
  br label %bb.cd

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.0201 = phi i32 [ 1, %bb.aa ], [ 0, %bb.ab ]   ; 3 uses
  %.2 = phi ptr [ %spec.select, %bb.aa ], [ %i.bi, %bb.ab ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.2) ]
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !41 ; 4 uses
  %i.bv = and i32 %.0197, 512
  %.not228 = icmp eq i32 %i.bv, 0
  br i1 %.not228, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %.2, i64 416
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !155
  %.not232 = icmp eq ptr %i.bx, null
  br i1 %.not232, label %bb.af, label %.thread269

bb.af:                                            ; preds = %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33
  call void @pdo_raise_impl_error(ptr noundef %i.bz, ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.55) #15
  br label %bb.cd

bb.ag:                                            ; preds = %bb.ad
  %i.ca = call i32 @object_init_ex(ptr noundef %1, ptr noundef nonnull %.2) #15
  %.not229 = icmp eq i32 %i.ca, 0
  br i1 %.not229, label %bb.ah, label %bb.cd, !prof !84

bb.ah:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %.2, i64 256
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !117 ; 2 uses
  %.not230 = icmp eq ptr %i.cc, null
  %i.cd = and i32 %.0197, 256
  %.not231 = icmp eq i32 %i.cd, 0
  %or.cond248 = select i1 %.not230, i1 true, i1 %.not231
  br i1 %or.cond248, label %.thread269, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val267 = load ptr, ptr %1, align 8, !tbaa !41
  %i.ce = call fastcc zeroext i1 @pdo_call_fetch_object_constructor(ptr noundef %i.cc, ptr noundef %i.bu, ptr %.val267)
  br i1 %i.ce, label %bb.aj, label %.thread269, !prof !48
end_hunk_0
