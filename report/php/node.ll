Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/node?download=true
inline.NumInlined: 77
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zim_DOMNode_lookupNamespaceURI:bb.a
    i8 6, label %bb.c
    i8 1, label %.split107.thread
  ], !prof !109

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %.split107.thread

.split107.thread:                                 ; preds = %bb.b, %bb.c
  %storemerge.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !51
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 1) #9
  %cond.fr87 = freeze i1 %i.i
  br i1 %cond.fr87, label %.critedge, label %bb.d, !prof !124

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread97
  %.067106 = phi i32 [ 1, %.thread97 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.068105 = phi i32 [ 0, %.thread97 ], [ 5, %zend_parse_arg_str_ex.exit ]
  %.069104 = phi ptr [ null, %.thread97 ], [ %i.e, %zend_parse_arg_str_ex.exit ]
  %.070103 = phi i32 [ 0, %.thread97 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.067106, i32 noundef %.070103, ptr noundef null, i32 noundef %.068105, ptr noundef %.069104) #9
  br label %bb.q

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit, %.split107.thread
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.r) #9
  br label %bb.q

bb.f:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !89   ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %php_dom_follow_spec_doc_ref.exit.thread, label %php_dom_follow_spec_doc_ref.exit

php_dom_follow_spec_doc_ref.exit:                 ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.w = load i16, ptr %i.v, align 4
  %i.x = and i16 %i.w, 255
  %i.y = icmp eq i16 %i.x, 2
  br i1 %i.y, label %bb.g, label %php_dom_follow_spec_doc_ref.exit.thread

bb.g:                                             ; preds = %php_dom_follow_spec_doc_ref.exit
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %.not83 = icmp eq ptr %i.z, null
  br i1 %.not83, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ad = phi ptr [ null, %bb.i ], [ %i.z, %bb.h ], [ null, %bb.g ]
  %i.ae = call ptr @dom_locate_a_namespace(ptr noundef %i.s, ptr noundef %i.ad) ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.k, label %zend_string_alloc.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.ag, align 8, !tbaa !22
  br label %bb.q

zend_string_alloc.exit:                           ; preds = %bb.j
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #10 ; 4 uses
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 32
  %i.ak = call noalias ptr @_emalloc(i64 noundef %i.aj) #11 ; 6 uses
  store i32 1, ptr %i.ak, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 22, ptr %i.al, align 4, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.ah, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull align 1 %i.ae, i64 %i.ah, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  store i8 0, ptr %i.ap, align 1, !tbaa !22
  store ptr %i.ak, ptr %1, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.aq, align 8, !tbaa !22
  br label %bb.q

php_dom_follow_spec_doc_ref.exit.thread:          ; preds = %bb.f, %php_dom_follow_spec_doc_ref.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !39
  switch i32 %i.as, label %bb.n [
    i32 9, label %bb.l
    i32 13, label %bb.l
  ]

bb.l:                                             ; preds = %php_dom_follow_spec_doc_ref.exit.thread, %php_dom_follow_spec_doc_ref.exit.thread
  %i.at = call ptr @xmlDocGetRootElement(ptr noundef nonnull %i.s) #9 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.av, align 8, !tbaa !22
  br label %bb.q

bb.n:                                             ; preds = %php_dom_follow_spec_doc_ref.exit.thread, %bb.l
  %.0 = phi ptr [ %i.at, %bb.l ], [ %i.s, %php_dom_follow_spec_doc_ref.exit.thread ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !59
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %.not80 = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = select i1 %.not80, ptr null, ptr %i.az
  %i.bb = call ptr @xmlSearchNs(ptr noundef %i.ax, ptr noundef nonnull %.0, ptr noundef %i.ba) #9 ; 2 uses
  %.not81 = icmp eq ptr %i.bb, null
  br i1 %.not81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !60 ; 3 uses
  %.not82 = icmp eq ptr %i.bd, null
  br i1 %.not82, label %bb.p, label %zend_string_alloc.exit86

zend_string_alloc.exit86:                         ; preds = %bb.o
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bd) #10 ; 4 uses
  %i.bf = and i64 %i.be, -8
  %i.bg = add i64 %i.bf, 32
  %i.bh = call noalias ptr @_emalloc(i64 noundef %i.bg) #11 ; 6 uses
  store i32 1, ptr %i.bh, align 4, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 22, ptr %i.bi, align 4, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 0, ptr %i.bj, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.be, ptr %i.bk, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr nonnull align 1 %i.bd, i64 %i.be, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.be
  store i8 0, ptr %i.bm, align 1, !tbaa !22
  store ptr %i.bh, ptr %1, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.bn, align 8, !tbaa !22
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.bo, align 8, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.k, %zend_string_alloc.exit, %bb.p, %zend_string_alloc.exit86, %bb.m, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_DOMNode_C14N(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @dom_canonicalization(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dom_canonicalization(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct._zend_array, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i8 0, ptr %i.c, align 1, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i8 0, ptr %i.d, align 1, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store ptr null, ptr %i.e, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i64 0, ptr %i.f, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = trunc nuw i32 %2 to i1                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 2 uses
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.bk, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.bk, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.v) #9
  br label %bb.bk

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !89, !nonnull !101, !noundef !101 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !128  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %php_dom_follow_spec_node.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132 ; 2 uses
  %.not10.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i, label %php_dom_follow_spec_node.exit.thread, label %php_dom_follow_spec_node.exit

php_dom_follow_spec_node.exit:                    ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = and i16 %i.af, 255
  %i.ah = icmp eq i16 %i.ag, 2
  br i1 %i.ah, label %.preheader, label %php_dom_follow_spec_node.exit.thread

.preheader:                                       ; preds = %php_dom_follow_spec_node.exit, %.preheader
  %.0139 = phi ptr [ %i.aj, %.preheader ], [ %i.w, %php_dom_follow_spec_node.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0139, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %.not162 = icmp eq ptr %i.aj, null
  br i1 %.not162, label %bb.h, label %.preheader, !llvm.loop !125

bb.h:                                             ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.0139, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !39
  %i.am = and i32 %i.al, -5
  %spec.select.not = icmp eq i32 %i.am, 9
  br i1 %spec.select.not, label %bb.i, label %bb.k, !prof !95

bb.i:                                             ; preds = %bb.h
  call void @_zend_hash_init(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #9
  %i.an = call ptr @xmlDocGetRootElement(ptr noundef %i.y) #9 ; 2 uses
  %.not164 = icmp eq ptr %i.an, null
  br i1 %.not164, label %.thread191, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @dom_relink_ns_decls(ptr noundef nonnull %3, ptr noundef nonnull %i.an) #9
  br label %.thread191

bb.k:                                             ; preds = %bb.h
  call void @php_dom_throw_error_with_message(i32 noundef 3, ptr noundef nonnull @.str.32, i1 noundef zeroext true) #9
  br label %bb.bj

php_dom_follow_spec_node.exit.thread:             ; preds = %bb.g, %bb.f, %php_dom_follow_spec_node.exit
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.l, label %.thread191

bb.l:                                             ; preds = %php_dom_follow_spec_node.exit.thread
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.33) #9
  br label %bb.bj

.thread191:                                       ; preds = %bb.j, %bb.i, %php_dom_follow_spec_node.exit.thread
  %.1.i189 = phi i1 [ false, %php_dom_follow_spec_node.exit.thread ], [ true, %bb.i ], [ true, %bb.j ]
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread191
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !39
  switch i32 %i.ar, label %bb.n [
    i32 9, label %bb.ah
    i32 13, label %bb.ah
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.ah

bb.o:                                             ; preds = %.thread191
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !22 ; 2 uses
  %i.at = load ptr, ptr @zend_known_strings, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 312
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.aw = call ptr @zend_hash_find(ptr noundef %i.as, ptr noundef %i.av) #9 ; 4 uses
  %.not.i184 = icmp eq ptr %i.aw, null
  br i1 %.not.i184, label %zend_hash_find_deref.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !22  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 10
  br i1 %i.az, label %bb.q, label %bb.r, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !22 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.r

zend_hash_find_deref.exit:                        ; preds = %bb.o
  %i.bc = add nuw nsw i32 %2, 3
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef %i.bc, ptr noundef nonnull @.str.34) #9
  br label %.critedge183

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bd = phi i8 [ %i.ay, %bb.p ], [ %.pre, %bb.q ]
  %.0.i.ph = phi ptr [ %i.aw, %bb.p ], [ %i.bb, %bb.q ] ; 2 uses
  %.not166 = icmp eq i8 %i.bd, 6
  br i1 %.not166, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = add nuw nsw i32 %2, 3
  %i.bf = call ptr @zend_zval_value_name(ptr noundef nonnull %.0.i.ph) #9
  call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef %i.be, ptr noundef nonnull @.str.35, ptr noundef %i.bf) #9
  br label %.critedge183

bb.t:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %.0.i.ph, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = call ptr @xmlXPathNewContext(ptr noundef %i.y) #9 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.bj, align 8, !tbaa !141
  %i.bk = call ptr @zend_hash_str_find(ptr noundef %i.as, ptr noundef nonnull @.str.36, i64 noundef 10) #9 ; 4 uses
  %.not.i185 = icmp eq ptr %i.bk, null
  br i1 %.not.i185, label %zend_hash_str_find_deref.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !22  ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 10
  br i1 %i.bn, label %bb.v, label %bb.w, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !22 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.phi.trans.insert215.a = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.pre216.a = load i8, ptr %.phi.trans.insert215.a, align 8, !tbaa !22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bq = phi i8 [ %i.bm, %bb.u ], [ %.pre216.a, %bb.v ]
  %.0.i186.ph = phi ptr [ %i.bk, %bb.u ], [ %i.bp, %bb.v ]
  %i.br = icmp eq i8 %i.bq, 7
  br i1 %i.br, label %bb.x, label %zend_hash_str_find_deref.exit

bb.x:                                             ; preds = %bb.w
  %i.bs = load ptr, ptr %.0.i186.ph, align 8, !tbaa !22 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !22
  %i.bv = and i32 %i.bu, 4
  %.not168 = icmp eq i32 %i.bv, 0
  br i1 %.not168, label %bb.y, label %zend_hash_str_find_deref.exit

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !22 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !142 ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %.idx = shl nuw nsw i64 %i.ca, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx
  %.not169207 = icmp eq i32 %i.bz, 0
  br i1 %.not169207, label %zend_hash_str_find_deref.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y, %bb.ad
  %.0136208 = phi ptr [ %i.cr, %bb.ad ], [ %i.bx, %bb.y ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0136208, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !22  ; 3 uses
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.ad, label %bb.z, !prof !42

bb.z:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.0136208, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !145 ; 2 uses
  %i.ch = icmp eq i8 %i.cd, 10
  br i1 %i.ch, label %bb.aa, label %bb.ab, !prof !42

bb.aa:                                            ; preds = %bb.z
  %i.ci = load ptr, ptr %.0136208, align 8, !tbaa !22 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.phi.trans.insert217.a = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.pre218.a = load i8, ptr %.phi.trans.insert217.a, align 8, !tbaa !22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ck = phi i8 [ %.pre218.a, %bb.aa ], [ %i.cd, %bb.z ]
  %.0137 = phi ptr [ %i.cj, %bb.aa ], [ %.0136208, %bb.z ]
  %i.cl = icmp eq i8 %i.ck, 6
  %i.cm = icmp ne ptr %i.cg, null
  %or.cond6 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond6, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.co = load ptr, ptr %.0137, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = call i32 @xmlXPathRegisterNs(ptr noundef %i.bi, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cp) #9 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.0136208, i64 32 ; 2 uses
  %.not169 = icmp eq ptr %i.cr, %i.cb
  br i1 %.not169, label %zend_hash_str_find_deref.exit, label %.lr.ph, !llvm.loop !126

zend_hash_str_find_deref.exit:                    ; preds = %bb.ad, %bb.y, %bb.t, %bb.x, %bb.w
  %i.cs = call ptr @xmlXPathEvalExpression(ptr noundef nonnull %i.bh, ptr noundef %i.bi) #9 ; 5 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !141
  %.not170 = icmp eq ptr %i.cs, null
  br i1 %.not170, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %zend_hash_str_find_deref.exit
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !149
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @xmlXPathFreeObject(ptr noundef nonnull %i.cs) #9
  br label %.critedge

.critedge:                                        ; preds = %zend_hash_str_find_deref.exit, %bb.af
  call void @xmlXPathFreeContext(ptr noundef nonnull %i.bi) #9
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.37) #9
  br label %.critedge183

bb.ag:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !150
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.m, %bb.m, %bb.n
  %.1145 = phi ptr [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.m ], [ %i.bi, %bb.ag ] ; 2 uses
  %.1143 = phi ptr [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.m ], [ %i.cs, %bb.ag ] ; 2 uses
  %.0138 = phi i1 [ true, %bb.n ], [ false, %bb.m ], [ false, %bb.m ], [ false, %bb.ag ]
  %.1 = phi ptr [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.m ], [ %i.cw, %bb.ag ]
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %.not173 = icmp eq ptr %i.cx, null
  br i1 %.not173, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cy = load i8, ptr %i.c, align 1, !tbaa !99, !range !100, !noundef !101
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !151
  %i.dd = add i32 %i.dc, 1
  %i.de = zext i32 %i.dd to i64
  %i.df = call noalias ptr @_safe_emalloc(i64 noundef %i.de, i64 noundef 8, i64 noundef 0) #9 ; 3 uses
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !22 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !142 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !22
  %i.dm = shl i32 %i.dl, 2
  %i.dn = and i32 %i.dm, 16
  %narrow = sub nuw nsw i32 32, %i.dn
  %i.do = zext nneg i32 %narrow to i64
  %.not174209 = icmp eq i32 %i.dj, 0
  br i1 %.not174209, label %._crit_edge, label %.lr.ph214.preheader

.lr.ph214.preheader:                              ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !22
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %bb.an
  %.0131212 = phi ptr [ %i.ec, %bb.an ], [ %i.dq, %.lr.ph214.preheader ] ; 4 uses
  %.0132211 = phi i32 [ %i.ed, %bb.an ], [ %i.dj, %.lr.ph214.preheader ]
  %.0133210 = phi i32 [ %.1134, %bb.an ], [ 0, %.lr.ph214.preheader ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0131212, i64 8
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !22  ; 2 uses
  switch i8 %i.ds, label %bb.al [
    i8 0, label %bb.an
    i8 10, label %bb.ak
  ], !prof !152

bb.ak:                                            ; preds = %.lr.ph214
  %i.dt = load ptr, ptr %.0131212, align 8, !tbaa !22 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.phi.trans.insert219 = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.pre220 = load i8, ptr %.phi.trans.insert219, align 8, !tbaa !22
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph214, %bb.ak
  %i.dv = phi i8 [ %.pre220, %bb.ak ], [ %i.ds, %.lr.ph214 ]
  %.0135 = phi ptr [ %i.du, %bb.ak ], [ %.0131212, %.lr.ph214 ]
  %i.dw = icmp eq i8 %i.dv, 6
  br i1 %i.dw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dx = load ptr, ptr %.0135, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = add nsw i32 %.0133210, 1
  %i.ea = sext i32 %.0133210 to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ea
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !104
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph214, %bb.al, %bb.am
  %.1134 = phi i32 [ %.0133210, %.lr.ph214 ], [ %i.dz, %bb.am ], [ %.0133210, %bb.al ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0131212, i64 %i.do
  %i.ed = add i32 %.0132211, -1                   ; 2 uses
  %.not174 = icmp eq i32 %i.ed, 0
  br i1 %.not174, label %._crit_edge.loopexit, label %.lr.ph214, !llvm.loop !127

._crit_edge.loopexit:                             ; preds = %bb.an
  %i.ee = sext i32 %.1134 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aj
  %.0133.lcssa = phi i64 [ 0, %bb.aj ], [ %i.ee, %._crit_edge.loopexit ]
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.df, i64 %.0133.lcssa
  store ptr null, ptr %i.ef, align 8, !tbaa !104
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.38) #9
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.ao, %bb.ah
  %.0148 = phi ptr [ %i.df, %._crit_edge ], [ null, %bb.ao ], [ null, %bb.ah ] ; 4 uses
  br i1 %4, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.eh = call ptr @xmlOutputBufferCreateFilename(ptr noundef %i.eg, ptr noundef null, i32 noundef 0) #9
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ei = call ptr @xmlAllocOutputBuffer(ptr noundef null) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0146 = phi ptr [ %i.eh, %bb.aq ], [ %i.ei, %bb.ar ] ; 7 uses
  %.not175 = icmp eq ptr %.0146, null             ; 3 uses
  br i1 %.not175, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ej = load i8, ptr %i.c, align 1, !tbaa !99, !range !100, !noundef !101
  %i.ek = zext nneg i8 %i.ej to i32               ; 2 uses
  %i.el = load i8, ptr %i.d, align 1, !tbaa !99, !range !100, !noundef !101
  %i.em = zext nneg i8 %i.el to i32               ; 2 uses
  br i1 %.0138, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.en = call i32 @xmlC14NExecute(ptr noundef %i.y, ptr noundef nonnull @dom_canonicalize_node_parent_lookup_cb, ptr noundef nonnull %i.w, i32 noundef %i.ek, ptr noundef %.0148, i32 noundef %i.em, ptr noundef nonnull %.0146) #9
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.eo = call i32 @xmlC14NDocSaveTo(ptr noundef %i.y, ptr noundef %.1, i32 noundef %i.ek, ptr noundef %.0148, i32 noundef %i.em, ptr noundef nonnull %.0146) #9
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.as
  %.0147 = phi i32 [ %i.en, %bb.au ], [ %i.eo, %bb.av ], [ -1, %bb.as ] ; 2 uses
  %.not176 = icmp eq ptr %.0148, null
  br i1 %.not176, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_efree(ptr noundef nonnull %.0148) #9
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.not177 = icmp eq ptr %.1143, null
  br i1 %.not177, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @xmlXPathFreeObject(ptr noundef nonnull %.1143) #9
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.not178 = icmp eq ptr %.1145, null
  br i1 %.not178, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @xmlXPathFreeContext(ptr noundef nonnull %.1145) #9
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ep = icmp slt i32 %.0147, 0
  %or.cond = select i1 %.not175, i1 true, i1 %i.ep
  br i1 %or.cond, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %4, label %.thread205, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eq = call i64 @xmlOutputBufferGetSize(ptr noundef nonnull %.0146) #9 ; 5 uses
  %.not179 = icmp eq i64 %i.eq, 0
  br i1 %.not179, label %bb.bf, label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.be
  %i.er = call ptr @xmlOutputBufferGetContent(ptr noundef nonnull %.0146) #9
  %i.es = and i64 %i.eq, -8
  %i.et = add i64 %i.es, 32
  %i.eu = call noalias ptr @_emalloc(i64 noundef %i.et) #11 ; 6 uses
  store i32 1, ptr %i.eu, align 4, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 22, ptr %i.ev, align 4, !tbaa !22
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 0, ptr %i.ew, align 8, !tbaa !25
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 %i.eq, ptr %i.ex, align 8, !tbaa !26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr align 1 %i.er, i64 %i.eq, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  store i8 0, ptr %i.ez, align 1, !tbaa !22
  br label %.thread205.thread

bb.bf:                                            ; preds = %bb.be
  %i.fa = load ptr, ptr @zend_empty_string, align 8, !tbaa !51
  br label %.thread205.thread

bb.bg:                                            ; preds = %bb.bc
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.fb, align 8, !tbaa !22
  br i1 %.not175, label %.critedge183, label %.thread205

.thread205.thread:                                ; preds = %bb.bf, %zend_string_alloc.exit
  %.sink239 = phi ptr [ %i.fa, %bb.bf ], [ %i.eu, %zend_string_alloc.exit ]
  %.sink = phi i32 [ 6, %bb.bf ], [ 262, %zend_string_alloc.exit ]
  store ptr %.sink239, ptr %1, align 8, !tbaa !22
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink, ptr %i.fc, align 8, !tbaa !22
  %i.fd = call i32 @xmlOutputBufferClose(ptr noundef nonnull %.0146) #9 ; 0 uses
  br label %.critedge183

.thread205:                                       ; preds = %bb.bd, %bb.bg
  %i.fe = call i32 @xmlOutputBufferClose(ptr noundef nonnull %.0146) #9
  %5 = icmp sgt i32 %.0147, -1
  %or.cond4.not = select i1 %4, i1 %5, i1 false
  br i1 %or.cond4.not, label %bb.bh, label %.critedge183

bb.bh:                                            ; preds = %.thread205
  %i.ff = sext i32 %i.fe to i64
  store i64 %i.ff, ptr %1, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.fg, align 8, !tbaa !22
  br label %bb.bj

.critedge183:                                     ; preds = %.thread205.thread, %zend_hash_find_deref.exit, %.critedge, %bb.s, %.thread205, %bb.bg
  br i1 %.1.i189, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.critedge183
  call void @dom_unlink_ns_decls(ptr noundef nonnull %3) #9
  call void @zend_hash_destroy(ptr noundef nonnull %3) #9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.k, %bb.bh, %bb.bi, %.critedge183, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.bk

bb.bk:                                            ; preds = %bb.c, %bb.b, %bb.bj, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_DOMNode_C14NFile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @dom_canonicalization(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_DOMNode_getNodePath(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @dom_node_get_node_path(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dom_node_get_node_path(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.l) #9
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.n = tail call ptr @xmlGetNodePath(ptr noundef %i.m) #9 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %zend_string_alloc.exit

bb.f:                                             ; preds = %bb.e
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @php_dom_throw_error(i32 noundef 11, i1 noundef zeroext true) #9
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !22
  br label %bb.i

zend_string_alloc.exit:                           ; preds = %bb.e
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #10 ; 4 uses
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 32
  %i.t = tail call noalias ptr @_emalloc(i64 noundef %i.s) #11 ; 6 uses
  store i32 1, ptr %i.t, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 22, ptr %i.u, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.q, ptr %i.w, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 1 %i.n, i64 %i.q, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  store i8 0, ptr %i.y, align 1, !tbaa !22
  store ptr %i.t, ptr %1, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.z, align 8, !tbaa !22
  %i.aa = load ptr, ptr @xmlFree, align 8, !tbaa !53
  tail call void %i.aa(ptr noundef nonnull %i.n) #9
  br label %bb.i

bb.i:                                             ; preds = %zend_string_alloc.exit, %bb.h, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_Dom_Node_getNodePath(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @dom_node_get_node_path(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_DOMNode_getLineNo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.l) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.n = tail call i64 @xmlGetLineNo(ptr noundef %i.m) #9
  store i64 %i.n, ptr %1, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.o, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

declare i64 @xmlGetLineNo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zim_DOMNode_contains(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.c, label %bb.b, !prof !94

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #9
  br label %zend_parse_arg_object.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !22
  switch i8 %i.f, label %zend_parse_arg_object.exit [
    i8 8, label %.critedge
    i8 1, label %bb.d
  ], !prof !110

zend_parse_arg_object.exit:                       ; preds = %bb.c, %bb.b
  %.045 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  %.044 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ]
  %.043 = phi i32 [ 0, %bb.b ], [ 19, %bb.c ]
  %.042 = phi i32 [ 1, %bb.b ], [ 9, %bb.c ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.042, i32 noundef %.045, ptr noundef null, i32 noundef %.043, ptr noundef %.044) #9
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
