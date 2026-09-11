Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/iconv?download=true
inline.NumInlined: 40
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zif_iconv_mime_encode:bb.a
  %i.ea = add nuw i64 %..i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dy, i64 %i.ea, i1 false)
  %i.eb = load i32, ptr %i.de, align 4, !tbaa !12
  %i.ec = and i32 %i.eb, 64
  %.not24.i = icmp eq i32 %i.ec, 0
  br i1 %.not24.i, label %bb.am, label %zend_string_realloc.exit

bb.am:                                            ; preds = %zend_string_alloc.exit.i
  %i.ed = load i32, ptr %i.cy, align 8, !tbaa !53 ; 2 uses
  %i.ee = icmp ne i32 %i.ed, 0
  call void @llvm.assume(i1 %i.ee)
  %i.ef = add i32 %i.ed, -1
  store i32 %i.ef, ptr %i.cy, align 8, !tbaa !53
  br label %zend_string_realloc.exit

zend_string_realloc.exit:                         ; preds = %bb.al, %zend_string_alloc.exit.i, %bb.am
  %.0.i90 = phi ptr [ %i.dl, %bb.al ], [ %i.dt, %bb.am ], [ %i.dt, %zend_string_alloc.exit.i ]
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !63
  br label %smart_str_trim_to_size_ex.exit

smart_str_trim_to_size_ex.exit:                   ; preds = %smart_str_0.exit.i, %bb.ai, %zend_string_realloc.exit
  %i.eg = phi ptr [ null, %smart_str_0.exit.i ], [ %i.cy, %bb.ai ], [ %.0.i90, %zend_string_realloc.exit ]
  store ptr null, ptr %2, align 8, !tbaa !62
  br label %smart_str_extract_ex.exit

bb.an:                                            ; preds = %bb.ah
  %i.eh = load ptr, ptr @zend_empty_string, align 8, !tbaa !17
  br label %smart_str_extract_ex.exit

smart_str_extract_ex.exit:                        ; preds = %smart_str_trim_to_size_ex.exit, %bb.an
  %.0.i87 = phi ptr [ %i.eg, %smart_str_trim_to_size_ex.exit ], [ %i.eh, %bb.an ] ; 2 uses
  store ptr %.0.i87, ptr %1, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i87, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !12
  %i.ek = and i32 %i.ej, 64
  %.not71 = icmp eq i32 %i.ek, 0
  %i.el = select i1 %.not71, i32 262, i32 6
  br label %bb.as

bb.ao:                                            ; preds = %zend_hash_str_find_deref.exit
  br i1 %.not.i86, label %smart_str_free_ex.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !12
  %i.eo = and i32 %i.en, 64
  %.not.i.i92 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i92, label %bb.aq, label %zend_string_release_ex.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ep = load i32, ptr %i.ct, align 4, !tbaa !53 ; 2 uses
  %i.eq = icmp ne i32 %i.ep, 0
  call void @llvm.assume(i1 %i.eq)
  %i.er = add i32 %i.ep, -1                       ; 2 uses
  store i32 %i.er, ptr %i.ct, align 4, !tbaa !53
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ar, label %zend_string_release_ex.exit.i

bb.ar:                                            ; preds = %bb.aq
  call void @_efree(ptr noundef nonnull %i.ct) #16
  br label %zend_string_release_ex.exit.i

zend_string_release_ex.exit.i:                    ; preds = %bb.ar, %bb.aq, %bb.ap
  store ptr null, ptr %2, align 8, !tbaa !62
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %bb.ao, %zend_string_release_ex.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.et, align 8, !tbaa !63
  br label %bb.as

bb.as:                                            ; preds = %smart_str_free_ex.exit, %smart_str_extract_ex.exit
  %.sink = phi i32 [ 2, %smart_str_free_ex.exit ], [ %i.el, %smart_str_extract_ex.exit ]
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink, ptr %i.eu, align 8, !tbaa !12
  %.not72 = icmp eq ptr %.2, null
  br i1 %.not72, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !12
  %i.ex = and i32 %i.ew, 64
  %.not.i85 = icmp eq i32 %i.ex, 0
  br i1 %.not.i85, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.ey = load i32, ptr %.2, align 4, !tbaa !53   ; 2 uses
  %i.ez = icmp ne i32 %i.ey, 0
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add i32 %i.ey, -1                       ; 2 uses
  store i32 %i.fa, ptr %.2, align 4, !tbaa !53
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  call void @_efree(ptr noundef nonnull %.2) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.o, %bb.u, %bb.ae, %bb.as, %get_internal_encoding.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare ptr @zval_try_get_string_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_php_iconv_mime_encode(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 0, 2) %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca i64, align 8                      ; 11 uses
  %10 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17 ; 5 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #17 ; 4 uses
  %i.g = add i64 %2, 2
  %.not = icmp ult i64 %i.g, %5
  %i.h = add i64 %i.e, 12
  %.not165 = icmp ult i64 %i.h, %5
  %or.cond = select i1 %.not, i1 %.not165, i1 false
  br i1 %or.cond, label %bb.b, label %.thread352

bb.b:                                             ; preds = %bb.a
  %i.i = call noalias ptr @iconv_open(ptr noundef nonnull @.str.97, ptr noundef %9) #16 ; 4 uses
  %i.j = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @__errno_location() #18
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = icmp eq i32 %i.l, 22
  %. = select i1 %i.m, i32 2, i32 1
  br label %.thread352

bb.d:                                             ; preds = %bb.b
  %i.n = call noalias ptr @iconv_open(ptr noundef nonnull %8, ptr noundef %9) #16 ; 8 uses
  %i.o = icmp eq ptr %i.n, inttoptr (i64 -1 to ptr)
  br i1 %i.o, label %.thread490, label %bb.e

.thread490:                                       ; preds = %bb.d
  %i.p = call ptr @__errno_location() #18
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = icmp eq i32 %i.q, 22
  %.176 = select i1 %i.r, i32 2, i32 1
  %i.s = call i32 @iconv_close(ptr noundef %i.i) #16 ; 0 uses
  br label %.thread352

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %10, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52
  %i.u = call i32 @__sigsetjmp(ptr noundef nonnull %10, i32 noundef 0) #19
  %.not509 = icmp eq i32 %i.u, 0                  ; 3 uses
  br i1 %.not509, label %bb.f, label %.thread307

bb.f:                                             ; preds = %bb.e
  %i.v = call noalias ptr @_safe_emalloc(i64 noundef 1, i64 noundef %5, i64 noundef 5) #16 ; 26 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.x = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %i.i) ; 0 uses
  %i.y = sub i64 %5, %2
  %i.z = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %.not.i208 = icmp eq ptr %i.z, null
  br i1 %.not.i208, label %bb.h, label %bb.g, !prof !64

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %i.ac = add i64 %i.ab, 2                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !63
  %.not12.i209 = icmp ult i64 %i.ac, %i.ae
  br i1 %.not12.i209, label %smart_str_alloc.exit212, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i210 = phi i64 [ 2, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i210) #16
  %.pre = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre394 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %smart_str_alloc.exit212

smart_str_alloc.exit212:                          ; preds = %bb.g, %bb.h
  %i.af = phi i64 [ %i.ab, %bb.g ], [ %.pre394, %bb.h ]
  %i.ag = phi ptr [ %i.z, %bb.g ], [ %.pre, %bb.h ]
  %.1.i211 = phi i64 [ %i.ac, %bb.g ], [ %.0.i210, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i16 8250, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %0, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.1.i211, ptr %i.ak, align 8, !tbaa !56
  store ptr %3, ptr %i.a, align 8, !tbaa !15
  store i64 %4, ptr %i.b, align 8, !tbaa !20
  %11 = icmp eq i32 %7, 0
  %12 = select i1 %11, i64 12, i64 11
  %i.al = add i64 %12, %i.e
  %i.am = add i64 %i.al, %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.ao = add i64 %5, -1
  %trunc = trunc nuw i32 %7 to i1
  br label %bb.i

bb.i:                                             ; preds = %.thread274, %smart_str_alloc.exit212
  %.0138.in = phi i64 [ %i.y, %smart_str_alloc.exit212 ], [ %.7281.in, %.thread274 ]
  %.0138 = add i64 %.0138.in, -2                  ; 3 uses
  %i.ap = icmp ult i64 %.0138, %i.am
  %i.aq = load ptr, ptr %0, align 8, !tbaa !62    ; 5 uses
  %.not.i203 = icmp eq ptr %i.aq, null            ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i203, label %bb.l, label %bb.k, !prof !64

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !56 ; 2 uses
  %i.at = add i64 %i.as, %i.f                     ; 3 uses
  %i.au = load i64, ptr %i.an, align 8, !tbaa !63
  %.not12.i204 = icmp ult i64 %i.at, %i.au
  br i1 %.not12.i204, label %bb.m, label %bb.l, !prof !57

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i205 = phi i64 [ %i.f, %bb.j ], [ %i.at, %bb.k ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i205) #16
  %.pre395 = load ptr, ptr %0, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert396 = getelementptr inbounds nuw i8, ptr %.pre395, i64 16
  %.pre397 = load i64, ptr %.phi.trans.insert396, align 8, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = phi i64 [ %i.as, %bb.k ], [ %.pre397, %bb.l ]
  %i.aw = phi ptr [ %i.aq, %bb.k ], [ %.pre395, %bb.l ]
  %.1.i206 = phi i64 [ %i.at, %bb.k ], [ %.0.i205, %bb.l ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %6, i64 %i.f, i1 false)
  %i.az = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.1.i206, ptr %i.ba, align 8, !tbaa !56
  %i.bb = add i64 %.1.i206, 1                     ; 5 uses
  %i.bc = load i64, ptr %i.an, align 8, !tbaa !63
  %.not12.i.i = icmp ult i64 %i.bb, %i.bc
  br i1 %.not12.i.i, label %.thread, label %bb.n, !prof !57

bb.n:                                             ; preds = %bb.m
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.bb) #16
  %.pre398 = load ptr, ptr %0, align 8, !tbaa !62
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m
  %i.bd = phi ptr [ %.pre398, %bb.n ], [ %i.az, %bb.m ]
  %i.be = getelementptr i8, ptr %i.bd, i64 23
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bb
  store i8 32, ptr %i.bf, align 1, !tbaa !12
  %i.bg = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.bb, ptr %i.bh, align 8, !tbaa !56
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  br i1 %.not.i203, label %bb.q, label %._crit_edge399, !prof !90

._crit_edge399:                                   ; preds = %bb.o
  %.phi.trans.insert400 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.pre401 = load i64, ptr %.phi.trans.insert400, align 8, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge399, %.thread
  %i.bi = phi i64 [ %i.bb, %.thread ], [ %.pre401, %._crit_edge399 ] ; 2 uses
  %.1139261 = phi i64 [ %i.ao, %.thread ], [ %.0138, %._crit_edge399 ] ; 2 uses
  %i.bj = phi ptr [ %i.bg, %.thread ], [ %i.aq, %._crit_edge399 ]
  %i.bk = add i64 %i.bi, 2                        ; 3 uses
  %i.bl = load i64, ptr %i.an, align 8, !tbaa !63
  %.not12.i199 = icmp ult i64 %i.bk, %i.bl
  br i1 %.not12.i199, label %bb.r, label %bb.q, !prof !57

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1139262 = phi i64 [ %.0138, %bb.o ], [ %.1139261, %bb.p ]
  %.0.i200 = phi i64 [ 2, %bb.o ], [ %i.bk, %bb.p ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i200) #16
  %.pre402 = load ptr, ptr %0, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert403 = getelementptr inbounds nuw i8, ptr %.pre402, i64 16
  %.pre404 = load i64, ptr %.phi.trans.insert403, align 8, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = phi i64 [ %i.bi, %bb.p ], [ %.pre404, %bb.q ]
  %i.bn = phi ptr [ %i.bj, %bb.p ], [ %.pre402, %bb.q ]
  %.1139260 = phi i64 [ %.1139261, %bb.p ], [ %.1139262, %bb.q ]
  %.1.i201 = phi i64 [ %i.bk, %bb.p ], [ %.0.i200, %bb.q ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  store i16 16189, ptr %i.bp, align 1
  %i.bq = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %.1.i201, ptr %i.br, align 8, !tbaa !56
  %i.bs = add i64 %.1.i201, %i.e                  ; 7 uses
  %i.bt = load i64, ptr %i.an, align 8, !tbaa !63
  %.not12.i194 = icmp ult i64 %i.bs, %i.bt
  br i1 %.not12.i194, label %bb.t, label %bb.s, !prof !57

bb.s:                                             ; preds = %bb.r
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.bs) #16
  %.pre405 = load ptr, ptr %0, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert406 = getelementptr inbounds nuw i8, ptr %.pre405, i64 16
  %.pre407 = load i64, ptr %.phi.trans.insert406, align 8, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bu = phi i64 [ %.pre407, %bb.s ], [ %.1.i201, %bb.r ]
  %i.bv = phi ptr [ %.pre405, %bb.s ], [ %i.bq, %bb.r ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull align 1 %8, i64 %i.e, i1 false)
  %i.by = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !56
  %i.ca = add i64 %i.bs, 1                        ; 4 uses
  %i.cb = load i64, ptr %i.an, align 8, !tbaa !63
  %.not12.i.i214 = icmp ult i64 %i.ca, %i.cb
  br i1 %.not12.i.i214, label %smart_str_appendc_ex.exit217, label %bb.u, !prof !57

bb.u:                                             ; preds = %bb.t
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.ca) #16
  %.pre408 = load ptr, ptr %0, align 8, !tbaa !62
  br label %smart_str_appendc_ex.exit217

smart_str_appendc_ex.exit217:                     ; preds = %bb.t, %bb.u
  %i.cc = phi ptr [ %i.by, %bb.t ], [ %.pre408, %bb.u ]
  %i.cd = getelementptr i8, ptr %i.cc, i64 23
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.ca
  store i8 63, ptr %i.ce, align 1, !tbaa !12
  %i.cf = load ptr, ptr %0, align 8, !tbaa !62    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.ca, ptr %i.cg, align 8, !tbaa !56
  %i.ch = sub i64 %.1139260, %i.e                 ; 5 uses
  %i.ci = add i64 %i.bs, 2                        ; 7 uses
  %i.cj = load i64, ptr %i.an, align 8, !tbaa !63
  %.not12.i.i229 = icmp ult i64 %i.ci, %i.cj      ; 2 uses
  br i1 %trunc, label %bb.an, label %bb.v

bb.v:                                             ; preds = %smart_str_appendc_ex.exit217
  br i1 %.not12.i.i229, label %bb.x, label %bb.w, !prof !57

bb.w:                                             ; preds = %bb.v
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.ci) #16
  %.pre409 = load ptr, ptr %0, align 8, !tbaa !62
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ck = phi ptr [ %.pre409, %bb.w ], [ %i.cf, %bb.v ]
  %i.cl = getelementptr i8, ptr %i.ck, i64 23
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.ci
  store i8 66, ptr %i.cm, align 1, !tbaa !12
  %i.cn = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %i.ci, ptr %i.co, align 8, !tbaa !56
  %i.cp = add i64 %i.bs, 3                        ; 4 uses
  %i.cq = load i64, ptr %i.an, align 8, !tbaa !63
  %.not12.i.i224 = icmp ult i64 %i.cp, %i.cq
  br i1 %.not12.i.i224, label %smart_str_appendc_ex.exit227, label %bb.y, !prof !57

bb.y:                                             ; preds = %bb.x
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.cp) #16
  %.pre410 = load ptr, ptr %0, align 8, !tbaa !62
  br label %smart_str_appendc_ex.exit227

smart_str_appendc_ex.exit227:                     ; preds = %bb.x, %bb.y
  %i.cr = phi ptr [ %i.cn, %bb.x ], [ %.pre410, %bb.y ]
  %i.cs = getelementptr i8, ptr %i.cr, i64 23
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cp
  store i8 63, ptr %i.ct, align 1, !tbaa !12
  %i.cu = load ptr, ptr %0, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %i.cp, ptr %i.cv, align 8, !tbaa !56
  %i.cw = add i64 %i.ch, -5                       ; 2 uses
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.cz = add i64 %i.ch, -7                       ; 2 uses
  %i.da = lshr i64 %i.cz, 2
  %i.db = mul nuw i64 %i.da, 3                    ; 3 uses
  store ptr %i.v, ptr %i.c, align 8, !tbaa !15
  %.not169362 = icmp ugt i64 %i.cz, 7
  br i1 %.not169362, label %.lr.ph, label %.thread307

.lr.ph:                                           ; preds = %smart_str_appendc_ex.exit227, %bb.ae
  %.0131363 = phi i64 [ %i.dr, %bb.ae ], [ 4, %smart_str_appendc_ex.exit227 ] ; 3 uses
  %i.dc = sub nuw i64 %i.db, %.0131363
  store i64 %i.dc, ptr %i.d, align 8, !tbaa !20
  %i.dd = call i64 @iconv(ptr noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #16
  %i.de = icmp eq i64 %i.dd, -1
  br i1 %i.de, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph
  %i.df = call ptr @__errno_location() #18
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !18
end_hunk_0
