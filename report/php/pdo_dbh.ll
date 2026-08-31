Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pdo_dbh?download=true
inline.NumInlined: 38
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@php_pdo_internal_construct_driver:bb.a
  br i1 %.not246543, label %bb.bg, label %.thread445

.thread446.a:                                     ; preds = %bb.be
  %i.gu = call noalias ptr @__zend_strdup(ptr noundef nonnull %.1322) #11
  %i.gv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !110
  %.not246447 = icmp eq ptr %.1319, null
  br i1 %.not246447, label %.thread550, label %.thread448.a

.thread443.a:                                     ; preds = %.thread
  %i.gw = call noalias ptr @_estrdup(ptr noundef nonnull %.1322) #11
  %i.gx = getelementptr inbounds nuw i8, ptr %.2430438, i64 16
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !110
  %.not246444 = icmp eq ptr %.1319, null
  br i1 %.not246444, label %bb.bg, label %.thread445

.thread448.a:                                     ; preds = %bb.bf, %.thread446.a
  %i.gy = call noalias ptr @__zend_strdup(ptr noundef nonnull %.1319) #11
  br label %.thread550

.thread445:                                       ; preds = %.thread540, %.thread443.a
  %i.gz = call noalias ptr @_estrdup(ptr noundef nonnull %.1319) #11
  br label %bb.bg

.thread550:                                       ; preds = %.thread448.a, %bb.bf, %.thread446.a
  %.ph549 = phi ptr [ null, %.thread446.a ], [ null, %bb.bf ], [ %i.gy, %.thread448.a ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %.ph549, ptr %i.ha, align 8, !tbaa !111
  %i.hb = getelementptr inbounds nuw i8, ptr %.1, i64 62
  store i16 4, ptr %i.hb, align 2, !tbaa !112
  br label %.thread450

bb.bg:                                            ; preds = %.thread540, %.thread445, %.thread443.a
  %i.hc = phi ptr [ %i.gz, %.thread445 ], [ null, %.thread443.a ], [ null, %.thread540 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.2430438, i64 24
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !111
  %i.he = getelementptr inbounds nuw i8, ptr %.2430438, i64 62
  store i16 4, ptr %i.he, align 2, !tbaa !112
  br i1 %.not231.a, label %.thread481, label %.thread450

.thread481:                                       ; preds = %bb.bg
  %i.hf = getelementptr inbounds nuw i8, ptr %.2430438, i64 32 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 8
  %i.hh = or i8 %i.hg, 2
  store i8 %i.hh, ptr %i.hf, align 8
  br label %pdo_attr_lval.exit295

.thread450:                                       ; preds = %.thread550, %zend_string_release_ex.exit, %.split, %bb.bg
  %.1204427458 = phi i1 [ false, %bb.bg ], [ %.0203394416, %.split ], [ %.0203394416, %zend_string_release_ex.exit ], [ true, %.thread550 ] ; 3 uses
  %.1199429456 = phi i1 [ false, %bb.bg ], [ true, %.split ], [ true, %zend_string_release_ex.exit ], [ false, %.thread550 ] ; 3 uses
  %.2431454 = phi ptr [ %.2430438, %bb.bg ], [ %.1, %.split ], [ %.1, %zend_string_release_ex.exit ], [ %.1, %.thread550 ] ; 5 uses
  %i.hi = load ptr, ptr %.1316, align 8, !tbaa !12
  %i.hj = call ptr @zend_hash_index_find(ptr noundef %i.hi, i64 noundef 0) #11 ; 4 uses
  %.not7.i = icmp eq ptr %i.hj, null
  br i1 %.not7.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %.thread450
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !12
  %i.hm = icmp eq i8 %i.hl, 4
  br i1 %i.hm, label %bb.bi, label %bb.bj, !prof !72

bb.bi:                                            ; preds = %bb.bh
  %i.hn = load i64, ptr %i.hj, align 8, !tbaa !12
  br label %pdo_attr_lval.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ho = call i64 @zval_get_long_func(ptr noundef nonnull %i.hj, i1 noundef zeroext false) #11
  br label %pdo_attr_lval.exit

pdo_attr_lval.exit:                               ; preds = %bb.bi, %bb.bj
  %.0.i291 = phi i64 [ %i.hn, %bb.bi ], [ %i.ho, %bb.bj ]
  %.0.i291.fr = freeze i64 %.0.i291
  %.not247.a = icmp eq i64 %.0.i291.fr, 0
  %i.hp = getelementptr inbounds nuw i8, ptr %.2431454, i64 32 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 8
  %spec.select486 = select i1 %.not247.a, i8 0, i8 2
  %i.hr = and i8 %i.hq, -3
  %i.hs = or disjoint i8 %spec.select486, %i.hr
  store i8 %i.hs, ptr %i.hp, align 8
  br label %bb.bl

bb.bk:                                            ; preds = %.thread450
  %i.ht = getelementptr inbounds nuw i8, ptr %.2431454, i64 32 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 8
  %i.hv = or i8 %i.hu, 2
  store i8 %i.hv, ptr %i.ht, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %pdo_attr_lval.exit
  %i.hw = load ptr, ptr %.1316, align 8, !tbaa !12
  %i.hx = call ptr @zend_hash_index_find(ptr noundef %i.hw, i64 noundef 3) #11 ; 4 uses
  %.not7.i293 = icmp eq ptr %i.hx, null
  br i1 %.not7.i293, label %pdo_attr_lval.exit295, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !12
  %i.ia = icmp eq i8 %i.hz, 4
  br i1 %i.ia, label %bb.bn, label %bb.bo, !prof !72

bb.bn:                                            ; preds = %bb.bm
  %i.ib = load i64, ptr %i.hx, align 8, !tbaa !12
  br label %pdo_attr_lval.exit295

bb.bo:                                            ; preds = %bb.bm
  %i.ic = call i64 @zval_get_long_func(ptr noundef nonnull %i.hx, i1 noundef zeroext false) #11
  br label %pdo_attr_lval.exit295

pdo_attr_lval.exit295:                            ; preds = %.thread481, %bb.bl, %bb.bn, %bb.bo
  %.1204427459466480 = phi i1 [ false, %.thread481 ], [ %.1204427458, %bb.bl ], [ %.1204427458, %bb.bn ], [ %.1204427458, %bb.bo ] ; 2 uses
  %.1199429457467478 = phi i1 [ false, %.thread481 ], [ %.1199429456, %bb.bl ], [ %.1199429456, %bb.bn ], [ %.1199429456, %bb.bo ]
  %.2431455468476 = phi ptr [ %.2430438, %.thread481 ], [ %.2431454, %bb.bl ], [ %.2431454, %bb.bn ], [ %.2431454, %bb.bo ] ; 11 uses
  %.0.i294 = phi i64 [ 2, %.thread481 ], [ 2, %bb.bl ], [ %i.ib, %bb.bn ], [ %i.ic, %bb.bo ]
  %i.id = trunc i64 %.0.i294 to i8
  %i.ie = getelementptr inbounds nuw i8, ptr %.2431455468476, i64 34
  store i8 %i.id, ptr %i.ie, align 2, !tbaa !60
  %i.if = getelementptr inbounds nuw i8, ptr %.2431455468476, i64 40
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !109
  %.not248.a = icmp eq ptr %i.ig, null
  br i1 %.not248.a, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %pdo_attr_lval.exit295
  %.not249.a = icmp eq ptr %.1322, null
  br i1 %.not249.a, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ih = getelementptr inbounds nuw i8, ptr %.2431455468476, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !110
  %.not250.a = icmp eq ptr %i.ii, null
  br i1 %.not250.a, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.not251.a = icmp eq ptr %.1319, null
  br i1 %.not251.a, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ij = getelementptr inbounds nuw i8, ptr %.2431455468476, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !111
  %.not252.a = icmp eq ptr %i.ik, null
  br i1 %.not252.a, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.bq, %pdo_attr_lval.exit295
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.22) #11
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.il = load ptr, ptr @pdo_exception_ce, align 8, !tbaa !64
  call void @zend_replace_error_handling(i32 noundef 1, ptr noundef %i.il, ptr noundef nonnull %5) #11
  br i1 %.1199429457467478, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.im = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !113
  %i.io = call i32 %i.in(ptr noundef nonnull %.2431455468476, ptr noundef %.1316) #11
  %.not253 = icmp eq i32 %i.io, 0
  br i1 %.not253, label %bb.cj, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %.1204427459466480, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.ip = getelementptr inbounds nuw i8, ptr %.2431455468476, i64 64
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !105
  %i.ir = getelementptr inbounds nuw i8, ptr %.2431455468476, i64 72
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !106
  %i.it = call i32 @php_pdo_list_entry() #11
  %i.iu = call ptr @zend_register_persistent_resource(ptr noundef %i.iq, i64 noundef %i.is, ptr noundef nonnull %.2431455468476, i32 noundef %i.it) #11
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.23) #11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by, %bb.bw
  %i.iw = getelementptr inbounds nuw i8, ptr %.2431455468476, i64 104
  store ptr %i.be, ptr %i.iw, align 8, !tbaa !114
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bu, %bb.bz
  br i1 %.not231.a, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ix = load ptr, ptr %.1316, align 8, !tbaa !12 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !83 ; 2 uses
  %.not256489 = icmp eq i32 %i.ja, 0
  br i1 %.not256489, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.cb
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ci
  %.0179493 = phi i32 [ %i.ju, %bb.ci ], [ %i.ja, %.lr.ph.preheader ]
  %.0180492 = phi ptr [ %.1181, %bb.ci ], [ %i.jc, %.lr.ph.preheader ] ; 7 uses
  %.0182491 = phi i32 [ %.1183, %bb.ci ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0184490 = phi ptr [ %.1185, %bb.ci ], [ null, %.lr.ph.preheader ]
  %i.jd = load i32, ptr %i.iy, align 8, !tbaa !12
  %i.je = and i32 %i.jd, 4
  %.not257 = icmp eq i32 %i.je, 0
  br i1 %.not257, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph
  %i.jf = getelementptr inbounds nuw i8, ptr %.0180492, i64 16
  %i.jg = zext i32 %.0182491 to i64
  %i.jh = add i32 %.0182491, 1
  br label %bb.ce

bb.cd:                                            ; preds = %.lr.ph
  %i.ji = getelementptr inbounds nuw i8, ptr %.0180492, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %.0180492, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !115
  %i.jl = getelementptr inbounds nuw i8, ptr %.0180492, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !117
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.0186 = phi i64 [ %i.jg, %bb.cc ], [ %i.jk, %bb.cd ]
  %.1185 = phi ptr [ %.0184490, %bb.cc ], [ %i.jm, %bb.cd ] ; 2 uses
  %.1183 = phi i32 [ %i.jh, %bb.cc ], [ %.0182491, %bb.cd ]
  %.1181 = phi ptr [ %i.jf, %bb.cc ], [ %i.ji, %bb.cd ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.0180492, i64 8
  %i.jo = load i8, ptr %i.jn, align 8, !tbaa !12  ; 2 uses
  %i.jp = icmp ne i8 %i.jo, 0
  %.not258 = icmp eq ptr %.1185, null
  %or.cond264 = select i1 %i.jp, i1 %.not258, i1 false, !prof !118
  br i1 %or.cond264, label %bb.cf, label %bb.ci, !prof !118

bb.cf:                                            ; preds = %bb.ce
  %i.jq = icmp eq i8 %i.jo, 10
  br i1 %i.jq, label %bb.cg, label %bb.ch, !prof !74

bb.cg:                                            ; preds = %bb.cf
  %i.jr = load ptr, ptr %.0180492, align 8, !tbaa !12
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.0187 = phi ptr [ %i.js, %bb.cg ], [ %.0180492, %bb.cf ]
  %i.jt = call fastcc zeroext i1 @pdo_dbh_attribute_set(ptr noundef %.2431455468476, i64 noundef %.0186, ptr noundef nonnull %.0187, i32 noundef 3) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ce, %bb.ch
  %i.ju = add i32 %.0179493, -1                   ; 2 uses
  %.not256 = icmp eq i32 %i.ju, 0
  br i1 %.not256, label %.loopexit, label %.lr.ph, !llvm.loop !119

.loopexit:                                        ; preds = %bb.ci, %bb.cb, %bb.ca
  call void @zend_restore_error_handling(ptr noundef nonnull %5) #11
  br label %create_driver_specific_pdo_object.exit

bb.cj:                                            ; preds = %bb.bv
  br i1 %.1204427459466480, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jv = getelementptr inbounds nuw i8, ptr %.2431455468476, i64 80 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !104
  %i.jx = add i32 %i.jw, -1
  store i32 %i.jx, ptr %i.jv, align 8, !tbaa !104
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  call void @zend_restore_error_handling(ptr noundef nonnull %5) #11
  %i.jy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !70
  %.not254 = icmp eq ptr %i.jy, null
  br i1 %.not254, label %bb.cm, label %create_driver_specific_pdo_object.exit

bb.cm:                                            ; preds = %bb.cl
  %i.jz = load ptr, ptr @pdo_exception_ce, align 8, !tbaa !64
  %i.ka = call ptr @zend_throw_exception(ptr noundef %i.jz, ptr noundef nonnull @.str.24, i64 noundef 0) #11 ; 0 uses
  br label %create_driver_specific_pdo_object.exit

.critedge262:                                     ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %create_driver_specific_pdo_object.exit

create_driver_specific_pdo_object.exit:           ; preds = %bb.af, %bb.ac, %bb.ab, %bb.i, %bb.cl, %bb.cm, %bb.p, %.critedge262, %.loopexit, %bb.u, %bb.s, %dsn_from_uri.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret void
}

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @cfg_get_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_argument_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @zend_throw_exception_ex(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare void @zend_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @pdo_find_driver(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @php_pdo_list_entry() local_unnamed_addr #2

declare void @zend_list_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @__zend_calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noalias ptr @__zend_strdup(ptr noundef) local_unnamed_addr #2

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #2

declare void @zend_replace_error_handling(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_register_persistent_resource(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @pdo_dbh_attribute_set(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef range(i32 2, 4) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  switch i64 %1, label %bb.bf [
    i64 3, label %bb.b
    i64 8, label %bb.i
    i64 11, label %bb.p
    i64 19, label %bb.t
    i64 17, label %bb.af
    i64 13, label %bb.ak
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  switch i8 %i.c, label %pdo_get_long_param.exit [
    i8 6, label %bb.e
    i8 4, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.d
  ], !prof !120

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %2, align 8, !tbaa !12
  br label %zval_get_long.exit.i

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.e = tail call i64 @zval_get_long_func(ptr noundef nonnull %2, i1 noundef zeroext false) #11
  br label %zval_get_long.exit.i

zval_get_long.exit.i:                             ; preds = %bb.d, %bb.c
  %i.f = phi i64 [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !121
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !12
  %i.h = call zeroext i8 @is_numeric_str_function(ptr noundef %i.g, ptr noundef nonnull %i.a, ptr noundef null) #11
  %i.i = icmp eq i8 %i.h, 4
  br i1 %i.i, label %thread-pre-split, label %pdo_get_long_param.exit

pdo_get_long_param.exit:                          ; preds = %bb.b, %bb.e
  %i.j = call ptr @zend_zval_value_name(ptr noundef nonnull %2) #11
  call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.36, ptr noundef %i.j) #11
  br label %bb.bp

thread-pre-split:                                 ; preds = %bb.e
  %.pr = load i64, ptr %i.a, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %zval_get_long.exit.i
  %i.k = phi i64 [ %.pr, %thread-pre-split ], [ %i.f, %zval_get_long.exit.i ] ; 2 uses
  %switch = icmp ult i64 %i.k, 3
  br i1 %switch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.l, ptr %i.m, align 2, !tbaa !60
  br label %bb.bp

bb.h:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef %3, ptr noundef nonnull @.str.53) #11
  br label %bb.bp

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !12
  switch i8 %i.o, label %pdo_get_long_param.exit104 [
    i8 6, label %bb.l
    i8 4, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.k
  ], !prof !120

bb.j:                                             ; preds = %bb.i
  %i.p = load i64, ptr %2, align 8, !tbaa !12
  br label %zval_get_long.exit.i102

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.q = tail call i64 @zval_get_long_func(ptr noundef nonnull %2, i1 noundef zeroext false) #11
  br label %zval_get_long.exit.i102

zval_get_long.exit.i102:                          ; preds = %bb.k, %bb.j
  %i.r = phi i64 [ %i.p, %bb.j ], [ %i.q, %bb.k ] ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !121
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %2, align 8, !tbaa !12
  %i.t = call zeroext i8 @is_numeric_str_function(ptr noundef %i.s, ptr noundef nonnull %i.a, ptr noundef null) #11
  %i.u = icmp eq i8 %i.t, 4
  br i1 %i.u, label %thread-pre-split114, label %pdo_get_long_param.exit104

pdo_get_long_param.exit104:                       ; preds = %bb.i, %bb.l
end_hunk_0
