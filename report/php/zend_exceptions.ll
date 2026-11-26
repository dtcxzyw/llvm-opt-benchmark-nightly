Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_exceptions?download=true
inline.NumInlined: 80
inline.NumDeleted: 18
begin_hunk_0_@zim_Exception_getTraceAsString:bb.a
  br i1 %.not12, label %bb.d, label %bb.g

bb.d:                                             ; preds = %i_get_exception_base.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !21
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.v, %bb.e ], [ %i.p, %bb.d ]
  %i.w = load ptr, ptr %.0, align 8, !tbaa !21
  %i.x = call ptr @zend_trace_to_string(ptr noundef %i.w, i1 noundef zeroext true)
  store ptr %i.x, ptr %1, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.y, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %i_get_exception_base.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_Exception_getPrevious(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #12
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.f = load ptr, ptr @zend_ce_exception, align 8, !tbaa !19 ; 3 uses
  %i.g = icmp eq ptr %.val, %i.f
  br i1 %i.g, label %i_get_exception_base.exit, label %instanceof_function.exit.i

instanceof_function.exit.i:                       ; preds = %bb.c
  %i.h = tail call zeroext i1 @instanceof_function_slow(ptr noundef %.val, ptr noundef %i.f) #12
  %i.i = load ptr, ptr @zend_ce_exception, align 8
  %i.j = load ptr, ptr @zend_ce_error, align 8
  %cond.fr.i = freeze i1 %i.h
  %spec.select.i = select i1 %cond.fr.i, ptr %i.i, ptr %i.j
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !21
  br label %i_get_exception_base.exit

i_get_exception_base.exit:                        ; preds = %bb.c, %instanceof_function.exit.i
  %i.k = phi ptr [ %.pre, %instanceof_function.exit.i ], [ %i.d, %bb.c ]
  %i.l = phi ptr [ %spec.select.i, %instanceof_function.exit.i ], [ %i.f, %bb.c ]
  %i.m = load ptr, ptr @zend_known_strings, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = call ptr @zend_read_property_ex(ptr noundef %i.l, ptr noundef %i.k, ptr noundef %i.o, i1 noundef zeroext true, ptr noundef nonnull %2) #12 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %i.s = and i32 %i.r, 65280
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %i_get_exception_base.exit
  %i.t = and i32 %i.r, 255
  %i.u = icmp eq i32 %i.t, 10
  br i1 %i.u, label %bb.e, label %.sink.split, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = and i32 %i.y, 65280
  %.not17 = icmp eq i32 %i.z, 0
  br i1 %.not17, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink23 = phi i32 [ %i.y, %bb.e ], [ %i.r, %bb.d ]
  %.sink.in = phi ptr [ %i.w, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.aa = and i32 %.sink23, 65280
  %i.ab = icmp ne i32 %i.aa, 0
  call void @llvm.assume(i1 %i.ab)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !21 ; 2 uses
  %i.ac = load i32, ptr %.sink, align 4, !tbaa !20
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %.sink, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %i_get_exception_base.exit, %bb.e
  %.0 = phi ptr [ %i.p, %i_get_exception_base.exit ], [ %i.w, %bb.e ], [ %.sink.in, %.sink.split ] ; 2 uses
  %i.ae = load ptr, ptr %.0, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !21
  store ptr %i.ae, ptr %1, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_Exception___toString(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 7 uses
  %3 = alloca %struct._zval_struct, align 8       ; 7 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %5 = alloca %struct._zend_fcall_info, align 8   ; 8 uses
  %6 = alloca %struct._zend_fcall_info_cache, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #12
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @zend_empty_string, align 8, !tbaa !27 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val123 = load ptr, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %i.g = load ptr, ptr @zend_ce_exception, align 8, !tbaa !19 ; 3 uses
  %i.h = icmp eq ptr %.val123, %i.g
  br i1 %i.h, label %i_get_exception_base.exit, label %instanceof_function.exit.i

instanceof_function.exit.i:                       ; preds = %bb.c
  %i.i = tail call zeroext i1 @instanceof_function_slow(ptr noundef %.val123, ptr noundef %i.g) #12
  %i.j = load ptr, ptr @zend_ce_exception, align 8
  %i.k = load ptr, ptr @zend_ce_error, align 8
  %cond.fr.i = freeze i1 %i.i
  %spec.select.i = select i1 %cond.fr.i, ptr %i.j, ptr %i.k
  br label %i_get_exception_base.exit

i_get_exception_base.exit:                        ; preds = %bb.c, %instanceof_function.exit.i
  %i.l = phi ptr [ %spec.select.i, %instanceof_function.exit.i ], [ %i.g, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.7, i64 noundef 16) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %zend_hash_str_find_ptr.exit, label %bb.d

bb.d:                                             ; preds = %i_get_exception_base.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21, !nonnull !69, !noundef !69
  br label %zend_hash_str_find_ptr.exit

zend_hash_str_find_ptr.exit:                      ; preds = %i_get_exception_base.exit, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ null, %i_get_exception_base.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store i64 64, ptr %5, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.q, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.s, align 8, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr %.0.i, ptr %6, align 8, !tbaa !117
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.l, ptr %i.t, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.u, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !21
  %i.x = icmp eq i8 %i.w, 8
  br i1 %i.x, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %zend_hash_str_find_ptr.exit
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.ak, %.lr.ph
  %.0150 = phi ptr [ %i.a, %.lr.ph ], [ %.1, %bb.ak ] ; 13 uses
  %.082149 = phi ptr [ %i.d, %.lr.ph ], [ %.183, %bb.ak ] ; 8 uses
  %i.ab = load ptr, ptr %.0150, align 8, !tbaa !21 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %i.ae = load ptr, ptr @zend_ce_throwable, align 8, !tbaa !19 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %instanceof_function.exit103.thread, label %instanceof_function.exit103

instanceof_function.exit103:                      ; preds = %bb.e
  %i.ag = call zeroext i1 @instanceof_function_slow(ptr noundef %i.ad, ptr noundef %i.ae) #12
  br i1 %i.ag, label %instanceof_function.exit103.instanceof_function.exit103.thread_crit_edge, label %.critedge

instanceof_function.exit103.instanceof_function.exit103.thread_crit_edge: ; preds = %instanceof_function.exit103
  %.pre = load ptr, ptr %.0150, align 8, !tbaa !21
  br label %instanceof_function.exit103.thread

instanceof_function.exit103.thread:               ; preds = %instanceof_function.exit103.instanceof_function.exit103.thread_crit_edge, %bb.e
  %.val122.a = phi ptr [ %.pre, %instanceof_function.exit103.instanceof_function.exit103.thread_crit_edge ], [ %i.ab, %bb.e ] ; 2 uses
  %7 = getelementptr i8, ptr %.val122.a, i64 16
  %.val122 = load ptr, ptr %7, align 8, !tbaa !18 ; 2 uses
  %i.ah = load ptr, ptr @zend_ce_exception, align 8, !tbaa !19 ; 3 uses
  %i.ai = icmp eq ptr %.val122, %i.ah
  br i1 %i.ai, label %i_get_exception_base.exit127, label %instanceof_function.exit.i124

instanceof_function.exit.i124:                    ; preds = %instanceof_function.exit103.thread
  %i.aj = call zeroext i1 @instanceof_function_slow(ptr noundef %.val122, ptr noundef %i.ah) #12
  %i.ak = load ptr, ptr @zend_ce_exception, align 8
  %i.al = load ptr, ptr @zend_ce_error, align 8
  %cond.fr.i125 = freeze i1 %i.aj
  %spec.select.i126 = select i1 %cond.fr.i125, ptr %i.ak, ptr %i.al
  %.pre157.a = load ptr, ptr %.0150, align 8, !tbaa !21
  br label %i_get_exception_base.exit127

i_get_exception_base.exit127:                     ; preds = %instanceof_function.exit103.thread, %instanceof_function.exit.i124
  %i.am = phi ptr [ %.pre157.a, %instanceof_function.exit.i124 ], [ %.val122.a, %instanceof_function.exit103.thread ]
  %i.an = phi ptr [ %spec.select.i126, %instanceof_function.exit.i124 ], [ %i.ah, %instanceof_function.exit103.thread ]
  %i.ao = load ptr, ptr @zend_known_strings, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 216
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27
  %i.ar = call ptr @zend_read_property_ex(ptr noundef %i.an, ptr noundef %i.am, ptr noundef %i.aq, i1 noundef zeroext false, ptr noundef nonnull %3) #12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !21
  %i.au = icmp eq i8 %i.at, 6
  br i1 %i.au, label %bb.f, label %bb.h, !prof !66

bb.f:                                             ; preds = %i_get_exception_base.exit127
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.ay = and i32 %i.ax, 64
  %.not.i113 = icmp eq i32 %i.ay, 0
  br i1 %.not.i113, label %bb.g, label %zval_get_string.exit102

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.av, align 4, !tbaa !20
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.av, align 4, !tbaa !20
  br label %zval_get_string.exit102

bb.h:                                             ; preds = %i_get_exception_base.exit127
  %i.bb = call ptr @zval_get_string_func(ptr noundef nonnull %i.ar) #12
  br label %zval_get_string.exit102

zval_get_string.exit102:                          ; preds = %bb.g, %bb.f, %bb.h
  %i.bc = phi ptr [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.av, %bb.g ] ; 8 uses
  %i.bd = load ptr, ptr %.0150, align 8, !tbaa !21 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %.val121 = load ptr, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bf = load ptr, ptr @zend_ce_exception, align 8, !tbaa !19 ; 3 uses
  %i.bg = icmp eq ptr %.val121, %i.bf
  br i1 %i.bg, label %i_get_exception_base.exit131, label %instanceof_function.exit.i128

instanceof_function.exit.i128:                    ; preds = %zval_get_string.exit102
  %i.bh = call zeroext i1 @instanceof_function_slow(ptr noundef %.val121, ptr noundef %i.bf) #12
  %i.bi = load ptr, ptr @zend_ce_exception, align 8
  %i.bj = load ptr, ptr @zend_ce_error, align 8
  %cond.fr.i129 = freeze i1 %i.bh
  %spec.select.i130 = select i1 %cond.fr.i129, ptr %i.bi, ptr %i.bj
  %.pre158.a = load ptr, ptr %.0150, align 8, !tbaa !21
  br label %i_get_exception_base.exit131

i_get_exception_base.exit131:                     ; preds = %zval_get_string.exit102, %instanceof_function.exit.i128
  %i.bk = phi ptr [ %.pre158.a, %instanceof_function.exit.i128 ], [ %i.bd, %zval_get_string.exit102 ]
  %i.bl = phi ptr [ %spec.select.i130, %instanceof_function.exit.i128 ], [ %i.bf, %zval_get_string.exit102 ]
  %i.bm = load ptr, ptr @zend_known_strings, align 8, !tbaa !25
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.bo = call ptr @zend_read_property_ex(ptr noundef %i.bl, ptr noundef %i.bk, ptr noundef %i.bn, i1 noundef zeroext false, ptr noundef nonnull %3) #12 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !21
  %i.br = icmp eq i8 %i.bq, 6
  br i1 %i.br, label %bb.i, label %bb.k, !prof !66

bb.i:                                             ; preds = %i_get_exception_base.exit131
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !21
  %i.bv = and i32 %i.bu, 64
  %.not.i114 = icmp eq i32 %i.bv, 0
  br i1 %.not.i114, label %bb.j, label %zval_get_string.exit

bb.j:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !20
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !20
  br label %zval_get_string.exit

bb.k:                                             ; preds = %i_get_exception_base.exit131
  %i.by = call ptr @zval_get_string_func(ptr noundef nonnull %i.bo) #12
  br label %zval_get_string.exit

zval_get_string.exit:                             ; preds = %bb.j, %bb.i, %bb.k
  %i.bz = phi ptr [ %i.by, %bb.k ], [ %i.bs, %bb.i ], [ %i.bs, %bb.j ] ; 6 uses
  %i.ca = load ptr, ptr %.0150, align 8, !tbaa !21 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %.val120 = load ptr, ptr %i.cb, align 8, !tbaa !18 ; 2 uses
  %i.cc = load ptr, ptr @zend_ce_exception, align 8, !tbaa !19 ; 3 uses
  %i.cd = icmp eq ptr %.val120, %i.cc
  br i1 %i.cd, label %i_get_exception_base.exit135, label %instanceof_function.exit.i132

instanceof_function.exit.i132:                    ; preds = %zval_get_string.exit
  %i.ce = call zeroext i1 @instanceof_function_slow(ptr noundef %.val120, ptr noundef %i.cc) #12
  %i.cf = load ptr, ptr @zend_ce_exception, align 8
  %i.cg = load ptr, ptr @zend_ce_error, align 8
  %cond.fr.i133 = freeze i1 %i.ce
  %spec.select.i134 = select i1 %cond.fr.i133, ptr %i.cf, ptr %i.cg
  %.pre159.a = load ptr, ptr %.0150, align 8, !tbaa !21
  br label %i_get_exception_base.exit135

i_get_exception_base.exit135:                     ; preds = %zval_get_string.exit, %instanceof_function.exit.i132
  %i.ch = phi ptr [ %.pre159.a, %instanceof_function.exit.i132 ], [ %i.ca, %zval_get_string.exit ]
  %i.ci = phi ptr [ %spec.select.i134, %instanceof_function.exit.i132 ], [ %i.cc, %zval_get_string.exit ]
  %i.cj = load ptr, ptr @zend_known_strings, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !27
  %i.cm = call ptr @zend_read_property_ex(ptr noundef %i.ci, ptr noundef %i.ch, ptr noundef %i.cl, i1 noundef zeroext false, ptr noundef nonnull %3) #12 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !21
  %i.cp = icmp eq i8 %i.co, 4
  br i1 %i.cp, label %bb.l, label %bb.m, !prof !66

bb.l:                                             ; preds = %i_get_exception_base.exit135
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !21
  br label %zval_get_long.exit

bb.m:                                             ; preds = %i_get_exception_base.exit135
  %i.cr = call i64 @zval_get_long_func(ptr noundef nonnull %i.cm, i1 noundef zeroext false) #12
  br label %zval_get_long.exit

zval_get_long.exit:                               ; preds = %bb.l, %bb.m
  %i.cs = phi i64 [ %i.cq, %bb.l ], [ %i.cr, %bb.m ] ; 2 uses
  %i.ct = load ptr, ptr %.0150, align 8, !tbaa !21 ; 2 uses
  store ptr %i.ct, ptr %i.y, align 8, !tbaa !120
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18
  store ptr %i.cv, ptr %i.z, align 8, !tbaa !121
  %i.cw = call i32 @zend_call_function(ptr noundef nonnull %5, ptr noundef nonnull %6) #12 ; 0 uses
  %i.cx = load i8, ptr %i.aa, align 8, !tbaa !21
  %.not90 = icmp eq i8 %i.cx, 6
  br i1 %.not90, label %bb.o, label %bb.n

bb.n:                                             ; preds = %zval_get_long.exit
  call void @zval_ptr_dtor(ptr noundef nonnull %2) #12
  store i32 0, ptr %i.aa, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %zval_get_long.exit
  %i.cy = load ptr, ptr %.0150, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !18 ; 2 uses
  %i.db = load ptr, ptr @zend_ce_type_error, align 8, !tbaa !19
  %i.dc = icmp eq ptr %i.da, %i.db
  %i.dd = load ptr, ptr @zend_ce_argument_count_error, align 8
  %i.de = icmp eq ptr %i.da, %i.dd
  %or.cond = select i1 %i.dc, i1 true, i1 %i.de
  br i1 %or.cond, label %bb.p, label %zend_string_release_ex.exit112

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.dg = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(1) @.str.9) #14
  %.not91 = icmp eq ptr %i.dg, null
  br i1 %.not91, label %zend_string_release_ex.exit112, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = call ptr (i64, ptr, ...) @zend_strpprintf_unchecked(i64 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.bc) #12 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !21
  %i.dk = and i32 %i.dj, 64
  %.not.i111 = icmp eq i32 %i.dk, 0
  br i1 %.not.i111, label %bb.r, label %zend_string_release_ex.exit112

bb.r:                                             ; preds = %bb.q
  %i.dl = load i32, ptr %i.bc, align 4, !tbaa !20 ; 2 uses
  %i.dm = icmp ne i32 %i.dl, 0
  call void @llvm.assume(i1 %i.dm)
  %i.dn = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dn, ptr %i.bc, align 4, !tbaa !20
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.s, label %zend_string_release_ex.exit112

bb.s:                                             ; preds = %bb.r
  call void @_efree(ptr noundef nonnull %i.bc) #12
  br label %zend_string_release_ex.exit112

zend_string_release_ex.exit112:                   ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.p
  %.086 = phi ptr [ %i.bc, %bb.o ], [ %i.bc, %bb.p ], [ %i.dh, %bb.q ], [ %i.dh, %bb.r ], [ %i.dh, %bb.s ] ; 6 uses
  %i.dp = load i8, ptr %i.aa, align 8, !tbaa !21
  %i.dq = icmp eq i8 %i.dp, 6
  br i1 %i.dq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %zend_string_release_ex.exit112
  %i.dr = load ptr, ptr %2, align 8, !tbaa !21    ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !81
  %.not92 = icmp eq i64 %i.dt, 0
  br i1 %.not92, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !21
  %i.dw = and i32 %i.dv, 64
  %.not.i116 = icmp eq i32 %i.dw, 0
  br i1 %.not.i116, label %bb.v, label %zend_string_copy.exit117

bb.v:                                             ; preds = %bb.u
  %i.dx = load i32, ptr %i.dr, align 8, !tbaa !20
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dr, align 8, !tbaa !20
  br label %zend_string_copy.exit117

bb.w:                                             ; preds = %bb.t, %zend_string_release_ex.exit112
  %i.dz = call noalias ptr @_emalloc_40() #12     ; 7 uses
  store i32 1, ptr %i.dz, align 4, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 22, ptr %i.ea, align 4, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
end_hunk_0
