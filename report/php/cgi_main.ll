Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/cgi_main?download=true
inline.NumInlined: 41
inline.NumDeleted: 9
begin_hunk_0_@sapi_cgi_ub_write:bb.a
  %.not16 = or i1 %i.c, %.not1617
  br i1 %.not16, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @php_handle_aborted_connection() #27
  %i.e = sub i64 %1, %.021
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.01320, i64 %i.d
  %i.g = sub i64 %.021, %i.d                      ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !182

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.014 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ], [ %1, %bb.c ]
  ret i64 %.014
}

; Function Attrs: nounwind uwtable
define internal void @sapi_cgi_flush(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !56
  %i.b = tail call i32 @fflush(ptr noundef %i.a)
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @php_handle_aborted_connection() #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(read) uwtable
define internal noundef ptr @sapi_cgi_getenv(ptr nofree noundef readonly captures(none) %0, i64 %1) #17 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef %0) #27
  ret ptr %i.a
}

declare void @zend_error(i32 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @sapi_cgi_send_headers(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 216), align 8, !tbaa !54 ; 5 uses
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 73), align 1, !tbaa !63, !range !51, !noundef !62
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @php_cgi_globals, i64 65), align 1, !tbaa !186, !range !51, !noundef !62
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = icmp ne i32 %i.c, 200
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @php_cgi_globals, i64 64), align 8, !tbaa !187, !range !51, !noundef !62
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 232), align 8 ; 5 uses
  %i.l = icmp ne ptr %i.k, null                   ; 2 uses
  %or.cond3 = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.k) #27
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 232), align 8, !tbaa !188
  %i.o = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 32) #28 ; 2 uses
  %.not61 = icmp eq ptr %i.o, null
  br i1 %.not61, label %.thread71, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = call i64 @__isoc23_strtol(ptr noundef nonnull %i.p, ptr noundef null, i32 noundef 10) #27, !inline_history !0
  %i.r = trunc i64 %i.q to i32
  br label %.thread71

.thread71:                                        ; preds = %bb.d, %bb.e
  %.040 = phi i32 [ %i.r, %bb.e ], [ %i.c, %bb.d ]
  %spec.store.select = call i32 @llvm.smin.i32(i32 %i.m, i32 1024)
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 32) #28 ; 4 uses
  %.not = icmp ne ptr %i.s, null
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.k to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp sgt i64 %i.v, 4
  %or.cond67 = select i1 %.not, i1 %i.w, i1 false
  br i1 %or.cond67, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i32 @strncasecmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.57, i64 noundef 5) #28
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread82, label %bb.i

.thread82:                                        ; preds = %bb.h
  %i.z = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.s) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ab = call i64 @__isoc23_strtol(ptr noundef nonnull %i.aa, ptr noundef null, i32 noundef 10) #27, !inline_history !0
  %i.ac = trunc i64 %i.ab to i32
  br label %bb.p

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = call ptr @zend_llist_get_first_ex(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not5894 = icmp eq ptr %i.ad, null
  br i1 %.not5894, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.k, %bb.i
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 216), align 8 ; 3 uses
  br label %bb.l

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %.04795 = phi ptr [ %i.al, %bb.k ], [ %i.ad, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04795, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !44
  %i.ah = icmp ugt i64 %i.ag, 7
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ai = load ptr, ptr %.04795, align 8, !tbaa !45
  %i.aj = call i32 @strncasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.59, i64 noundef 7) #28
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.al = call ptr @zend_llist_get_next_ex(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not58 = icmp eq ptr %i.al, null
  br i1 %.not58, label %.preheader, label %.lr.ph, !llvm.loop !183

bb.l:                                             ; preds = %bb.l, %.preheader
  %.0 = phi ptr [ %i.ao, %bb.l ], [ @http_status_map, %.preheader ] ; 3 uses
  %i.am = load i32, ptr %.0, align 8, !tbaa !190  ; 2 uses
  %.not59 = icmp eq i32 %i.am, 0
  %i.an = icmp eq i32 %i.am, %i.ae
  %or.cond69 = select i1 %.not59, i1 true, i1 %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br i1 %or.cond69, label %bb.m, label %bb.l, !llvm.loop !184

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !191 ; 2 uses
  %.not60 = icmp eq ptr %i.aq, null
  br i1 %.not60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull @.str.60, i32 noundef %i.ae, ptr noundef nonnull %i.aq) #27
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.as = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull @.str.61, i32 noundef %i.ae) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.thread82, %.thread71
  %.23977 = phi i32 [ %spec.store.select, %.thread71 ], [ %i.z, %.thread82 ], [ %i.ar, %bb.n ], [ %i.as, %bb.o ]
  %.24275 = phi i32 [ %.040, %.thread71 ], [ %i.ac, %.thread82 ], [ %i.c, %bb.n ], [ %i.c, %bb.o ]
  %i.at = sext i32 %.23977 to i64
  %i.au = call i64 @php_output_write_unbuffered(ptr noundef nonnull %i.b, i64 noundef %i.at) #27 ; 0 uses
  %i.av = call i64 @php_output_write_unbuffered(ptr noundef nonnull @.str.62, i64 noundef 2) #27 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.p
  %.24276 = phi i32 [ %.24275, %bb.p ], [ %i.c, %bb.j ]
  %.043 = phi i1 [ true, %bb.p ], [ false, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.aw = call ptr @zend_llist_get_first_ex(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 3 uses
  %.not6296104 = icmp eq ptr %i.aw, null
  br i1 %.not6296104, label %.outer._crit_edge, label %.lr.ph98.lr.ph

.thread:                                          ; preds = %bb.b
  %i.ax = call ptr @zend_llist_get_first_ex(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not6296104136 = icmp eq ptr %i.ax, null
  br i1 %.not6296104136, label %.outer._crit_edge, label %.lr.ph98.preheader

.lr.ph98.lr.ph:                                   ; preds = %.loopexit
  %.24276.fr = freeze i32 %.24276
  %i.ay = icmp eq i32 %.24276.fr, 304
  br i1 %i.ay, label %.lr.ph98.us, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %.thread, %.lr.ph98.lr.ph
  %.245.ph106.ph = phi i1 [ false, %.thread ], [ %.043, %.lr.ph98.lr.ph ]
  %.148.ph105.ph = phi ptr [ %i.ax, %.thread ], [ %i.aw, %.lr.ph98.lr.ph ]
  br label %.lr.ph98

.lr.ph98.us:                                      ; preds = %.lr.ph98.lr.ph, %.outer.us
  %.245.ph106.us = phi i1 [ %.346.us, %.outer.us ], [ %.043, %.lr.ph98.lr.ph ] ; 5 uses
  %.148.ph105.us = phi ptr [ %i.bk, %.outer.us ], [ %i.aw, %.lr.ph98.lr.ph ]
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph98.us, %bb.v
  %.14897.us = phi ptr [ %.148.ph105.us, %.lr.ph98.us ], [ %i.bh, %bb.v ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.14897.us, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !44 ; 4 uses
  %.not63.us107 = icmp eq i64 %i.ba, 0
  br i1 %.not63.us107, label %.outer.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp ugt i64 %i.ba, 7
  %.pre121.pre = load ptr, ptr %.14897.us, align 8, !tbaa !45 ; 3 uses
  br i1 %i.bb, label %bb.s, label %.outer.us.sink.split

bb.s:                                             ; preds = %bb.r
  %i.bc = call i32 @strncasecmp(ptr noundef %.pre121.pre, ptr noundef nonnull @.str.59, i64 noundef 7) #28
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.split.us109, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp ugt i64 %i.ba, 13
  br i1 %i.be, label %bb.u, label %.outer.us.sink.split

bb.u:                                             ; preds = %bb.t
  %i.bf = call i32 @strncasecmp(ptr noundef %.pre121.pre, ptr noundef nonnull @.str.63, i64 noundef 13) #28
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.v, label %.outer.us.sink.split

bb.v:                                             ; preds = %bb.u
  %i.bh = call ptr @zend_llist_get_next_ex(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not62.us = icmp eq ptr %i.bh, null
  br i1 %.not62.us, label %.outer._crit_edge, label %bb.q, !llvm.loop !185

.split.us109:                                     ; preds = %bb.s
  br i1 %.245.ph106.us, label %.outer.us, label %.outer.us.sink.split

.outer.us.sink.split:                             ; preds = %bb.t, %bb.u, %bb.r, %.split.us109
  %.346.us.ph = phi i1 [ true, %.split.us109 ], [ %.245.ph106.us, %bb.r ], [ %.245.ph106.us, %bb.u ], [ %.245.ph106.us, %bb.t ]
  %i.bi = call i64 @php_output_write_unbuffered(ptr noundef %.pre121.pre, i64 noundef %i.ba) #27 ; 0 uses
  %i.bj = call i64 @php_output_write_unbuffered(ptr noundef nonnull @.str.62, i64 noundef 2) #27 ; 0 uses
  br label %.outer.us

.outer.us:                                        ; preds = %bb.q, %.outer.us.sink.split, %.split.us109
  %.346.us = phi i1 [ true, %.split.us109 ], [ %.346.us.ph, %.outer.us.sink.split ], [ %.245.ph106.us, %bb.q ]
  %i.bk = call ptr @zend_llist_get_next_ex(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not6296.us = icmp eq ptr %i.bk, null
  br i1 %.not6296.us, label %.outer._crit_edge, label %.lr.ph98.us, !llvm.loop !185

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.outer
  %.245.ph106 = phi i1 [ %.346, %.outer ], [ %.245.ph106.ph, %.lr.ph98.preheader ] ; 4 uses
  %.148.ph105 = phi ptr [ %i.bs, %.outer ], [ %.148.ph105.ph, %.lr.ph98.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.148.ph105, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !44 ; 3 uses
  %.not63.us = icmp eq i64 %i.bm, 0
  br i1 %.not63.us, label %.outer, label %bb.w

bb.w:                                             ; preds = %.lr.ph98
  %i.bn = icmp ugt i64 %i.bm, 7
  %.pre = load ptr, ptr %.148.ph105, align 8, !tbaa !45 ; 2 uses
  br i1 %i.bn, label %bb.x, label %.outer.sink.split

bb.x:                                             ; preds = %bb.w
  %i.bo = call i32 @strncasecmp(ptr noundef %.pre, ptr noundef nonnull @.str.59, i64 noundef 7) #28
  %i.bp = icmp eq i32 %i.bo, 0                    ; 2 uses
  %brmerge.not = select i1 %i.bp, i1 %.245.ph106, i1 false
  %.245.ph106.mux = select i1 %i.bp, i1 true, i1 %.245.ph106
  br i1 %brmerge.not, label %.outer, label %.outer.sink.split

.outer.sink.split:                                ; preds = %bb.x, %bb.w
  %.346.ph = phi i1 [ %.245.ph106, %bb.w ], [ %.245.ph106.mux, %bb.x ]
  %i.bq = call i64 @php_output_write_unbuffered(ptr noundef %.pre, i64 noundef %i.bm) #27 ; 0 uses
  %i.br = call i64 @php_output_write_unbuffered(ptr noundef nonnull @.str.62, i64 noundef 2) #27 ; 0 uses
  br label %.outer

.outer:                                           ; preds = %bb.x, %.outer.sink.split, %.lr.ph98
  %.346 = phi i1 [ true, %bb.x ], [ %.245.ph106, %.lr.ph98 ], [ %.346.ph, %.outer.sink.split ]
  %i.bs = call ptr @zend_llist_get_next_ex(ptr noundef %0, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not6296 = icmp eq ptr %i.bs, null
  br i1 %.not6296, label %.outer._crit_edge, label %.lr.ph98, !llvm.loop !185

.outer._crit_edge:                                ; preds = %.outer, %.outer.us, %bb.v, %.thread, %.loopexit
  %i.bt = call i64 @php_output_write_unbuffered(ptr noundef nonnull @.str.62, i64 noundef 2) #27 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %.outer._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i64 @sapi_cgi_read_post(ptr nofree noundef captures(none) %0, i64 noundef %1) #18 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 32), align 8, !tbaa !60
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 240), align 8, !tbaa !67
  %i.c = sub nsw i64 %i.a, %i.b
  %i.d = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.015 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.f = sub nuw i64 %i.d, %.015
  %i.g = tail call i64 @read(i32 noundef 0, ptr noundef %i.e, i64 noundef %i.f) #27 ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = and i64 %i.g, 2147483647
  %i.k = add i64 %i.j, %.015                      ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !192

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.015, %.lr.ph ], [ %i.k, %bb.b ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree nounwind memory(read) uwtable
define internal noundef ptr @sapi_cgi_read_cookies() #17 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.113) #27
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @sapi_cgi_register_variables(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = load ptr, ptr @php_import_environment_variables, align 8, !tbaa !57
  tail call void %i.c(ptr noundef %0) #27
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @php_cgi_globals, i64 67), align 1, !tbaa !61, !range !51, !noundef !62
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 48), align 8, !tbaa !59 ; 8 uses
  br i1 %i.e, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @fcgi_is_fastcgi() #27
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @sapi_globals, align 8, !tbaa !40
  %i.i = tail call ptr @fcgi_quick_getenv(ptr noundef %i.h, ptr noundef nonnull @.str.114, i32 noundef 9, i32 noundef 1733) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = tail call ptr @getenv(ptr noundef nonnull @.str.114) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.023 = phi ptr [ %i.i, %bb.c ], [ %i.j, %bb.d ] ; 4 uses
  %.not29 = icmp eq ptr %.023, null
  br i1 %.not29, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.023) #28 ; 4 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #28 ; 3 uses
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !73
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = icmp ult i64 %i.n, 32769                 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.h, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.p = tail call noalias ptr @_emalloc(i64 noundef %i.n) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = alloca i8, i64 %i.n, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.r = phi ptr [ %i.q, %bb.i ], [ %i.p, %bb.h ] ; 3 uses
  store ptr %i.r, ptr %i.b, align 8, !tbaa !41
  %i.s = add i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.f, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  %i.u = add i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %.023, i64 %i.u, i1 false)
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  store ptr %.023, ptr %i.b, align 8, !tbaa !41
  store i64 %i.k, ptr %i.a, align 8, !tbaa !73
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %.not30 = icmp eq ptr %i.f, null
  br i1 %.not30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.f, ptr %i.b, align 8, !tbaa !41
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #28 ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !73
end_hunk_0
