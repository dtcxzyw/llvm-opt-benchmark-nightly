Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/cookie?download=true
inline.NumInlined: 40
inline.NumDeleted: 22
begin_hunk_0_@replace_existing:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.l) #12
  %.not102 = icmp eq i32 %i.m, 0
  br i1 %.not102, label %bb.c, label %.critedge132

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92   ; 3 uses
  %.not103 = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %.not106 = icmp eq ptr %i.p, null               ; 2 uses
  br i1 %.not103, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not106, label %.critedge132, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #12 ; 4 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #12 ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %cookie_tailmatch.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.u = sub i64 0, %i.q
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u ; 2 uses
  %i.w = tail call i32 @curl_strnequal(ptr noundef nonnull %i.o, ptr noundef nonnull %i.v, i64 noundef %i.q) #11
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %cookie_tailmatch.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %i.r, %i.q
  br i1 %i.x, label %.critedge, label %cookie_tailmatch.exit

cookie_tailmatch.exit:                            ; preds = %bb.g
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !78
  %i.aa = icmp eq i8 %i.z, 46
  br i1 %i.aa, label %.critedge, label %cookie_tailmatch.exit.thread

cookie_tailmatch.exit.thread:                     ; preds = %bb.f, %bb.e, %cookie_tailmatch.exit
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #12 ; 4 uses
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !92  ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #12 ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %.critedge132, label %bb.h

bb.h:                                             ; preds = %cookie_tailmatch.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ah = sub i64 0, %i.ac
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = tail call i32 @curl_strnequal(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ai, i64 noundef %i.ac) #11
  %.not.i143 = icmp eq i32 %i.aj, 0
  br i1 %.not.i143, label %.critedge132, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i64 %i.ae, %i.ac
  br i1 %i.ak, label %.critedge, label %cookie_tailmatch.exit145

cookie_tailmatch.exit145:                         ; preds = %bb.i
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !78
  %i.an = icmp eq i8 %i.am, 46
  br i1 %i.an, label %.critedge, label %.critedge132

bb.j:                                             ; preds = %bb.c
  br i1 %.not106, label %.critedge, label %.critedge132

.critedge:                                        ; preds = %bb.i, %bb.g, %cookie_tailmatch.exit, %cookie_tailmatch.exit145, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !90 ; 6 uses
  %.not107 = icmp eq ptr %i.ap, null
  br i1 %.not107, label %.critedge132, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !90  ; 2 uses
  %.not108 = icmp eq ptr %i.aq, null
  br i1 %.not108, label %.critedge132, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = and i8 %i.as, 2
  %.not109 = icmp eq i8 %i.at, 0
  br i1 %.not109, label %.critedge132, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.h, align 4
  %i.av = and i8 %i.au, 2
  %i.aw = icmp ne i8 %i.av, 0
  %or.cond = or i1 %3, %i.aw
  br i1 %or.cond, label %.critedge132, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !78
  %.not110 = icmp eq i8 %i.ax, 0
  br i1 %.not110, label %.thread152, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.az = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ay, i32 noundef 47) #12 ; 2 uses
  %.not111 = icmp eq ptr %i.az, null
  br i1 %.not111, label %.thread152, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ap to i64
  %i.bc = sub i64 %i.ba, %i.bb
  br label %bb.q

.thread152:                                       ; preds = %bb.n, %bb.o
  %i.bd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #12
  br label %bb.q

bb.q:                                             ; preds = %.thread152, %bb.p
  %.081 = phi i64 [ %i.bc, %bb.p ], [ %i.bd, %.thread152 ]
  %i.be = tail call i32 @strncmp(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef %.081) #12
  %.not112.not = icmp eq i32 %i.be, 0
  br i1 %.not112.not, label %bb.r, label %.critedge132

bb.r:                                             ; preds = %bb.q
  %.not113 = icmp eq ptr %0, null
  br i1 %.not113, label %.critedge142, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = and i64 %i.bg, 536870912
  %.not114 = icmp eq i64 %i.bh, 0
  br i1 %.not114, label %.critedge142, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !81 ; 2 uses
  %.not115 = icmp eq ptr %i.bj, null
  br i1 %.not115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !82
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %.critedge142

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef %i.bn, ptr noundef %i.bo) #11
  br label %.critedge142

.critedge132:                                     ; preds = %bb.h, %cookie_tailmatch.exit.thread, %bb.d, %bb.j, %.critedge, %bb.k, %bb.l, %bb.m, %cookie_tailmatch.exit145, %bb.q, %bb.b
  %.not116 = icmp eq ptr %.084169, null
  br i1 %.not116, label %bb.w, label %.thread156

bb.w:                                             ; preds = %.critedge132
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.br = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.bq) #12
  %.not117 = icmp eq i32 %i.br, 0
  br i1 %.not117, label %bb.x, label %.thread156

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !92 ; 2 uses
  %.not118 = icmp eq ptr %i.bt, null
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %.not121 = icmp eq ptr %i.bu, null              ; 2 uses
  br i1 %.not118, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not121, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = tail call i32 @curl_strequal(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu) #11
  %.not122 = icmp eq i32 %i.bv, 0
  br i1 %.not122, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = load i8, ptr %i.h, align 4
  %i.bz = xor i8 %i.by, %i.bx
  %i.ca = and i8 %i.bz, 1
  %i.cb = icmp eq i8 %i.ca, 0
  %spec.select137 = select i1 %i.cb, i8 1, i8 %.087168
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %spec.select138 = select i1 %.not121, i8 1, i8 %.087168
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aa, %bb.z
  %.188 = phi i8 [ %spec.select138, %bb.ab ], [ %spec.select137, %bb.aa ], [ %.087168, %bb.z ], [ %.087168, %bb.y ]
  %i.cc = trunc nuw i8 %.188 to i1
  br i1 %i.cc, label %bb.ad, label %.thread156

bb.ad:                                            ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !90 ; 2 uses
  %.not123 = icmp eq ptr %i.ce, null              ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !90  ; 3 uses
  %.not124 = icmp eq ptr %.pre, null
  %or.cond193 = select i1 %.not123, i1 true, i1 %.not124
  br i1 %or.cond193, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ce, ptr noundef nonnull dereferenceable(1) %.pre) #12
  %.not125 = icmp eq i32 %i.cf, 0
  br i1 %.not125, label %bb.ag, label %.thread156

bb.af:                                            ; preds = %bb.ad
  %.old = icmp ne ptr %.pre, null
  %.not128.old = xor i1 %.not123, %.old
  br i1 %.not128.old, label %bb.ag, label %.thread156

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cg = load i8, ptr %i.h, align 4
  %i.ch = and i8 %i.cg, 4
  %.not129 = icmp eq i8 %i.ch, 0
  br i1 %.not129, label %bb.ah, label %.thread156

bb.ah:                                            ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.cj = load i8, ptr %i.ci, align 4
  %i.ck = and i8 %i.cj, 4
  %.not130 = icmp eq i8 %i.ck, 0
  br i1 %.not130, label %.thread156, label %.critedge142

.thread156:                                       ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ac, %bb.ae, %bb.w, %.critedge132
  %.491 = phi i8 [ %.087168, %bb.w ], [ %.087168, %.critedge132 ], [ 0, %bb.af ], [ 1, %bb.ah ], [ 1, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.ae ] ; 3 uses
  %.286 = phi ptr [ null, %bb.w ], [ %.084169, %.critedge132 ], [ null, %bb.af ], [ %.083170, %bb.ah ], [ %.083170, %bb.ag ], [ null, %bb.ac ], [ null, %bb.ae ] ; 4 uses
  %i.cl = tail call ptr @Curl_node_next(ptr noundef nonnull %.083170) #11 ; 2 uses
  %.not = icmp eq ptr %i.cl, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !108

._crit_edge:                                      ; preds = %.thread156
  %.not101 = icmp eq ptr %.286, null
  br i1 %.not101, label %._crit_edge.thread, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.cm = tail call ptr @Curl_node_elem(ptr noundef nonnull %.286) #11 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 104
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !100
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !100
  tail call void @Curl_node_remove(ptr noundef nonnull %.286) #11
  %i.cq = load ptr, ptr @Curl_cfree, align 8, !tbaa !88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !92
  tail call void %i.cq(ptr noundef %i.cs) #11, !inline_history !105
  %i.ct = load ptr, ptr @Curl_cfree, align 8, !tbaa !88
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !90
  tail call void %i.ct(ptr noundef %i.cv) #11, !inline_history !105
  %i.cw = load ptr, ptr @Curl_cfree, align 8, !tbaa !88
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !95
  tail call void %i.cw(ptr noundef %i.cy) #11, !inline_history !105
  %i.cz = load ptr, ptr @Curl_cfree, align 8, !tbaa !88
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !96
  tail call void %i.cz(ptr noundef %i.db) #11, !inline_history !105
  %i.dc = load ptr, ptr @Curl_cfree, align 8, !tbaa !88
  tail call void %i.dc(ptr noundef nonnull %i.cm) #11, !inline_history !105
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.ai, %._crit_edge
  %.087.lcssa192 = phi i8 [ %.491, %._crit_edge ], [ %.491, %bb.ai ], [ 0, %bb.a ]
  store i8 %.087.lcssa192, ptr %4, align 1, !tbaa !8
  br label %.critedge142

.critedge142:                                     ; preds = %bb.ah, %bb.v, %bb.u, %bb.s, %bb.r, %._crit_edge.thread
  %.not161 = phi i1 [ true, %._crit_edge.thread ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.ah ]
  ret i1 %.not161
}

declare ptr @curlx_memdup(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 63) i64 @cookiehash(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %cookie_hash_domain.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @Curl_host_is_ipnum(ptr noundef nonnull %0) #11
  br i1 %i.a, label %cookie_hash_domain.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 4 uses
  %i.c = tail call ptr @memrchr(ptr noundef nonnull %0, i32 noundef 46, i64 noundef %i.b) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %get_top_domain.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call ptr @memrchr(ptr noundef nonnull %0, i32 noundef 46, i64 noundef %i.f) #12 ; 2 uses
  %.not22.i = icmp eq ptr %i.g, null
  br i1 %.not22.i, label %get_top_domain.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %.neg.i = add i64 %i.b, %i.e
  %i.j = sub i64 %.neg.i, %i.i
  br label %get_top_domain.exit

get_top_domain.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  %.017.i = phi i64 [ %i.j, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.not23.i = icmp eq ptr %.0.i, null
  %i.k = select i1 %.not23.i, ptr %0, ptr %.0.i   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.017.i
  %.not.i5 = icmp eq i64 %.017.i, 0
  br i1 %.not.i5, label %cookie_hash_domain.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %get_top_domain.exit, %.lr.ph.i
  %.011.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.k, %get_top_domain.exit ] ; 2 uses
  %.0910.i = phi i64 [ %i.r, %.lr.ph.i ], [ 5381, %get_top_domain.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %.011.i, align 1, !tbaa !78
  %i.o = tail call signext i8 @Curl_raw_toupper(i8 noundef signext %i.n) #11
  %i.p = sext i8 %i.o to i64
  %i.q = mul i64 %.0910.i, 33
  %i.r = xor i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ult ptr %i.m, %i.l
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !109

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.t = urem i64 %i.r, 63
  br label %cookie_hash_domain.exit

cookie_hash_domain.exit:                          ; preds = %._crit_edge.loopexit.i, %get_top_domain.exit, %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 26, %get_top_domain.exit ], [ %i.t, %._crit_edge.loopexit.i ]
  ret i64 %.0
}

declare void @Curl_llist_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @Curl_cookie_init() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !88
  %i.b = tail call ptr %i.a(i64 noundef 1, i64 noundef 2040) #11 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv
  tail call void @Curl_llist_init(ptr noundef nonnull %i.c, ptr noundef null) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !110

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2016
  store i64 9223372036854775807, ptr %i.d, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

declare void @Curl_llist_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @Curl_cookie_loadfiles(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %2 = alloca %struct.dynbuf, align 8             ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @Curl_share_lock(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 2) #11 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112
  %.not19 = icmp eq ptr %i.g, null
  br i1 %.not19, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !88
  %i.i = tail call ptr %i.h(i64 noundef 1, i64 noundef 2040) #11, !inline_history !113 ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.thread25, label %.preheader.i

.thread25:                                        ; preds = %bb.c
  store ptr null, ptr %i.f, align 8, !tbaa !112
  br label %.loopexit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %indvars.iv.i
  tail call void @Curl_llist_init(ptr noundef nonnull %i.j, ptr noundef null) #11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 63
  br i1 %exitcond.not.i, label %bb.d, label %.preheader.i, !llvm.loop !110
end_hunk_0
