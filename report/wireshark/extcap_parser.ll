inline.NumInlined: 31
inline.NumDeleted: 6
begin_hunk_0_@extcap_free_arg:bb.a
  tail call void @g_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_free(ptr noundef %i.e)
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g)
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @g_free(ptr noundef %i.i)
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @g_free(ptr noundef %i.k)
  %i.l = getelementptr i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @g_free(ptr noundef %i.m)
  %i.n = getelementptr i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @g_free(ptr noundef %i.o)
  %i.p = getelementptr i8, ptr %0, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @g_free(ptr noundef %i.q)
  %i.r = getelementptr i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.c, label %extcap_free_complex.exit

extcap_free_complex.exit:                         ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @g_free(ptr noundef %i.u)
  tail call void @g_free(ptr noundef nonnull %i.s)
  br label %bb.c

bb.c:                                             ; preds = %extcap_free_complex.exit, %bb.b
  %i.v = getelementptr i8, ptr %0, i64 96
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not21 = icmp eq ptr %i.w, null
  br i1 %.not21, label %bb.d, label %extcap_free_complex.exit24

extcap_free_complex.exit24:                       ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @g_free(ptr noundef %i.y)
  tail call void @g_free(ptr noundef nonnull %i.w)
  br label %bb.d

bb.d:                                             ; preds = %extcap_free_complex.exit24, %bb.c
  %i.z = getelementptr i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %bb.e, label %extcap_free_complex.exit26

extcap_free_complex.exit26:                       ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @g_free(ptr noundef %i.ac)
  tail call void @g_free(ptr noundef nonnull %i.aa)
  br label %bb.e

bb.e:                                             ; preds = %extcap_free_complex.exit26, %bb.d
  %i.ad = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @g_list_foreach(ptr noundef %i.ae, ptr noundef nonnull @extcap_free_valuelist, ptr noundef null)
  %i.af = load ptr, ptr %i.ad, align 8
  tail call void @g_list_free(ptr noundef %i.af)
  tail call void @g_free(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_list_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @extcap_free_valuelist(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %extcap_free_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_free(ptr noundef %i.e)
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g)
  tail call void @g_free(ptr noundef nonnull %0)
  br label %extcap_free_value.exit

extcap_free_value.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @extcap_free_toolbar_control(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_free(ptr noundef %i.e)
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g)
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @g_free(ptr noundef %i.i)
  %i.j = getelementptr i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @g_free(ptr noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @g_list_free_full(ptr noundef %i.p, ptr noundef nonnull @extcap_free_toolbar_value)
  tail call void @g_free(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @extcap_free_toolbar_value(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_free(ptr noundef %i.e)
  tail call void @g_free(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @extcap_free_arg_list(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @g_list_free_full(ptr noundef %0, ptr noundef nonnull @extcap_free_arg)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @extcap_parse_args(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @extcap_tokenize_sentences(ptr noundef %0) ; 4 uses
  %.not44 = icmp eq ptr %i.a, null
  br i1 %.not44, label %extcap_free_tokenized_sentences.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %extcap_parse_arg_sentence.exit.thread
  %.046 = phi ptr [ %.1, %extcap_parse_arg_sentence.exit.thread ], [ null, %bb.a ] ; 18 uses
  %.01245 = phi ptr [ %i.fk, %extcap_parse_arg_sentence.exit.thread ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %.01245, align 8           ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %extcap_parse_arg_sentence.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.d, ptr noundef nonnull @.str.13)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.5)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.bh, label %extcap_parse_arg_sentence.exit.thread

.critedge.i:                                      ; preds = %bb.b
  %i.j = tail call noalias dereferenceable_or_null(136) ptr @g_malloc0(i64 noundef 136) #8 ; 32 uses
  %i.k = getelementptr i8, ptr %i.j, i64 80       ; 5 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.j, i64 51       ; 2 uses
  store i8 1, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %i.j, i64 53       ; 2 uses
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %i.b, i64 8        ; 17 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @g_hash_table_lookup(ptr noundef %i.o, ptr noundef nonnull inttoptr (i64 1 to ptr)) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

bb.e:                                             ; preds = %.critedge.i
  %i.r = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.33, ptr noundef %i.j) #9
  %.not.i = icmp eq i32 %i.r, 1
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = tail call ptr @g_hash_table_lookup(ptr noundef %i.s, ptr noundef nonnull inttoptr (i64 2 to ptr)) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %g_strdup_inline.exit216.i

bb.h:                                             ; preds = %bb.g
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

g_strdup_inline.exit216.i:                        ; preds = %bb.g
  %i.v = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.t) ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %char0.i = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %char0.i, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %g_strdup_inline.exit216.i
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

bb.j:                                             ; preds = %g_strdup_inline.exit216.i
  %i.y = load ptr, ptr %i.n, align 8
  %i.z = tail call ptr @g_hash_table_lookup(ptr noundef %i.y, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %g_strdup_inline.exit211.i

bb.k:                                             ; preds = %bb.j
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

g_strdup_inline.exit211.i:                        ; preds = %bb.j
  %i.ab = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.z)
  %i.ac = getelementptr i8, ptr %i.j, i64 16
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.n, align 8
  %i.ae = tail call ptr @g_hash_table_lookup(ptr noundef %i.ad, ptr noundef nonnull inttoptr (i64 9 to ptr)) ; 2 uses
  %.not164.i = icmp eq ptr %i.ae, null
  br i1 %.not164.i, label %bb.l, label %g_strdup_inline.exit206.i

g_strdup_inline.exit206.i:                        ; preds = %g_strdup_inline.exit211.i
  %i.af = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.ae)
  %i.ag = getelementptr i8, ptr %i.j, i64 24
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.l

bb.l:                                             ; preds = %g_strdup_inline.exit206.i, %g_strdup_inline.exit211.i
  %i.ah = load ptr, ptr %i.n, align 8
  %i.ai = tail call ptr @g_hash_table_lookup(ptr noundef %i.ah, ptr noundef nonnull inttoptr (i64 10 to ptr)) ; 2 uses
  %.not165.i = icmp eq ptr %i.ai, null
  br i1 %.not165.i, label %bb.m, label %g_strdup_inline.exit201.i

g_strdup_inline.exit201.i:                        ; preds = %bb.l
  %i.aj = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.ai)
  %i.ak = getelementptr i8, ptr %i.j, i64 32
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.m

bb.m:                                             ; preds = %g_strdup_inline.exit201.i, %bb.l
  %i.al = load ptr, ptr %i.n, align 8
  %i.am = tail call ptr @g_hash_table_lookup(ptr noundef %i.al, ptr noundef nonnull inttoptr (i64 13 to ptr)) ; 3 uses
  %.not166.i = icmp eq ptr %i.am, null
  br i1 %.not166.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call i32 @g_utf8_validate(ptr noundef nonnull %i.am, i64 noundef -1, ptr noundef null)
  %.not.i39 = icmp eq i32 %i.an, 0
  br i1 %.not.i39, label %matches_regex.exit41, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call i32 @g_regex_match_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.am, i32 noundef 1, i32 noundef 0)
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i8
  br label %matches_regex.exit41

matches_regex.exit41:                             ; preds = %bb.n, %bb.o
  %.0.i40 = phi i8 [ %i.aq, %bb.o ], [ 0, %bb.n ]
  %i.ar = getelementptr i8, ptr %i.j, i64 48
  store i8 %.0.i40, ptr %i.ar, align 8
  br label %bb.p

bb.p:                                             ; preds = %matches_regex.exit41, %bb.m
  %i.as = load ptr, ptr %i.n, align 8
  %i.at = tail call ptr @g_hash_table_lookup(ptr noundef %i.as, ptr noundef nonnull inttoptr (i64 14 to ptr)) ; 2 uses
  %.not167.i = icmp eq ptr %i.at, null
  br i1 %.not167.i, label %bb.q, label %g_strdup_inline.exit196.i

g_strdup_inline.exit196.i:                        ; preds = %bb.p
  %i.au = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.at)
  %i.av = getelementptr i8, ptr %i.j, i64 40
  store ptr %i.au, ptr %i.av, align 8
  br label %bb.q

bb.q:                                             ; preds = %g_strdup_inline.exit196.i, %bb.p
  %i.aw = load ptr, ptr %i.n, align 8
  %i.ax = tail call ptr @g_hash_table_lookup(ptr noundef %i.aw, ptr noundef nonnull inttoptr (i64 22 to ptr)) ; 2 uses
  %.not168.i = icmp eq ptr %i.ax, null
  br i1 %.not168.i, label %bb.r, label %g_strdup_inline.exit191.i

g_strdup_inline.exit191.i:                        ; preds = %bb.q
  %i.ay = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.ax)
  %i.az = getelementptr i8, ptr %i.j, i64 64
  store ptr %i.ay, ptr %i.az, align 8
  br label %bb.r

bb.r:                                             ; preds = %g_strdup_inline.exit191.i, %bb.q
  %i.ba = load ptr, ptr %i.n, align 8
  %i.bb = tail call ptr @g_hash_table_lookup(ptr noundef %i.ba, ptr noundef nonnull inttoptr (i64 15 to ptr)) ; 2 uses
  %.not169.i = icmp eq ptr %i.bb, null
  br i1 %.not169.i, label %bb.s, label %g_strdup_inline.exit186.i

g_strdup_inline.exit186.i:                        ; preds = %bb.r
  %i.bc = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.bb)
  %i.bd = getelementptr i8, ptr %i.j, i64 72
  store ptr %i.bc, ptr %i.bd, align 8
  br label %bb.s

bb.s:                                             ; preds = %g_strdup_inline.exit186.i, %bb.r
  %i.be = load ptr, ptr %i.n, align 8
  %i.bf = tail call ptr @g_hash_table_lookup(ptr noundef %i.be, ptr noundef nonnull inttoptr (i64 20 to ptr)) ; 2 uses
  %.not170.i = icmp eq ptr %i.bf, null
  br i1 %.not170.i, label %bb.t, label %g_strdup_inline.exit.i

g_strdup_inline.exit.i:                           ; preds = %bb.s
  %i.bg = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.bf)
  %i.bh = getelementptr i8, ptr %i.j, i64 56
  store ptr %i.bg, ptr %i.bh, align 8
  br label %bb.t

bb.t:                                             ; preds = %g_strdup_inline.exit.i, %bb.s
  %i.bi = load ptr, ptr %i.n, align 8
  %i.bj = tail call ptr @g_hash_table_lookup(ptr noundef %i.bi, ptr noundef nonnull inttoptr (i64 17 to ptr)) ; 4 uses
  %.not171.i = icmp eq ptr %i.bj, null
  br i1 %.not171.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = tail call i32 @g_strcmp0(ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.34)
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr i8, ptr %i.j, i64 49
  store i8 0, ptr %i.bm, align 1
  %1 = getelementptr i8, ptr %i.j, i64 50
  store i8 1, ptr %1, align 2
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bn = tail call i32 @g_utf8_validate(ptr noundef nonnull %i.bj, i64 noundef -1, ptr noundef null)
  %.not.i36 = icmp eq i32 %i.bn, 0
  br i1 %.not.i36, label %matches_regex.exit38, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = tail call i32 @g_regex_match_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.bj, i32 noundef 1, i32 noundef 0)
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i8
  br label %matches_regex.exit38

matches_regex.exit38:                             ; preds = %bb.w, %bb.x
  %.0.i37 = phi i8 [ %i.bq, %bb.x ], [ 0, %bb.w ]
  %i.br = getelementptr i8, ptr %i.j, i64 49
  store i8 %.0.i37, ptr %i.br, align 1
  br label %bb.y

bb.y:                                             ; preds = %matches_regex.exit38, %bb.v, %bb.t
  %i.bs = load ptr, ptr %i.n, align 8
  %i.bt = tail call ptr @g_hash_table_lookup(ptr noundef %i.bs, ptr noundef nonnull inttoptr (i64 4 to ptr)) ; 17 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.bv = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.35)
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.36)
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.37)
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.38)
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.39)
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.40)
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.41)
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cj = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.42)
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.43)
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.44)
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.45)
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.46)
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ct = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.47)
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cv = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.48)
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cx = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.49)
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cz = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.bt) ; 0 uses
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sink.i = phi i32 [ 1, %bb.aa ], [ 3, %bb.ac ], [ 5, %bb.ae ], [ 9, %bb.ag ], [ 11, %bb.ai ], [ 8, %bb.ak ], [ 12, %bb.am ], [ 13, %bb.an ], [ 14, %bb.al ], [ 7, %bb.aj ], [ 10, %bb.ah ], [ 6, %bb.af ], [ 4, %bb.ad ], [ 2, %bb.ab ], [ 15, %bb.ao ]
  store i32 %.sink.i, ptr %i.k, align 8
  %i.da = load ptr, ptr %i.n, align 8
  %i.db = tail call ptr @g_hash_table_lookup(ptr noundef %i.da, ptr noundef nonnull inttoptr (i64 21 to ptr)) ; 3 uses
  %.not172.i = icmp eq ptr %i.db, null
  br i1 %.not172.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dc = tail call i32 @g_utf8_validate(ptr noundef nonnull %i.db, i64 noundef -1, ptr noundef null)
  %.not.i33 = icmp eq i32 %i.dc, 0
  br i1 %.not.i33, label %matches_regex.exit35, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dd = tail call i32 @g_regex_match_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.db, i32 noundef 1, i32 noundef 0)
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i8
  br label %matches_regex.exit35

matches_regex.exit35:                             ; preds = %bb.ar, %bb.as
  %.0.i34 = phi i8 [ %i.df, %bb.as ], [ 0, %bb.ar ]
  store i8 %.0.i34, ptr %i.l, align 1
  br label %bb.at

bb.at:                                            ; preds = %matches_regex.exit35, %bb.aq
  %i.dg = load ptr, ptr %i.n, align 8
  %i.dh = tail call ptr @g_hash_table_lookup(ptr noundef %i.dg, ptr noundef nonnull inttoptr (i64 18 to ptr)) ; 3 uses
  %.not173.i = icmp eq ptr %i.dh, null
  br i1 %.not173.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = tail call i32 @g_utf8_validate(ptr noundef nonnull %i.dh, i64 noundef -1, ptr noundef null)
  %.not.i30 = icmp eq i32 %i.di, 0
  br i1 %.not.i30, label %matches_regex.exit32, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dj = tail call i32 @g_regex_match_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.dh, i32 noundef 1, i32 noundef 0)
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i8
  br label %matches_regex.exit32

matches_regex.exit32:                             ; preds = %bb.au, %bb.av
  %.0.i31 = phi i8 [ %i.dl, %bb.av ], [ 0, %bb.au ]
  %i.dm = getelementptr i8, ptr %i.j, i64 52
  store i8 %.0.i31, ptr %i.dm, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %matches_regex.exit32, %bb.at
  %i.dn = load ptr, ptr %i.n, align 8
  %i.do = tail call ptr @g_hash_table_lookup(ptr noundef %i.dn, ptr noundef nonnull inttoptr (i64 19 to ptr)) ; 3 uses
  %.not174.i = icmp eq ptr %i.do, null
  br i1 %.not174.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dp = tail call i32 @g_utf8_validate(ptr noundef nonnull %i.do, i64 noundef -1, ptr noundef null)
  %.not.i29 = icmp eq i32 %i.dp, 0
  br i1 %.not.i29, label %matches_regex.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dq = tail call i32 @g_regex_match_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.do, i32 noundef 1, i32 noundef 0)
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = zext i1 %i.dr to i8
  br label %matches_regex.exit

matches_regex.exit:                               ; preds = %bb.ax, %bb.ay
  %.0.i = phi i8 [ %i.ds, %bb.ay ], [ 0, %bb.ax ]
  store i8 %.0.i, ptr %i.m, align 1
  br label %bb.az

bb.az:                                            ; preds = %matches_regex.exit, %bb.aw
  %i.dt = load ptr, ptr %i.n, align 8
  %i.du = tail call ptr @g_hash_table_lookup(ptr noundef %i.dt, ptr noundef nonnull inttoptr (i64 8 to ptr)) ; 6 uses
  %.not175.i = icmp eq ptr %i.du, null
  br i1 %.not175.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dv = tail call ptr @g_strstr_len(ptr noundef nonnull %i.du, i64 noundef -1, ptr noundef nonnull @.str.51) ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.bb, label %extcap_parse_complex.exit28

bb.bb:                                            ; preds = %bb.ba
  %i.dx = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.du) ; 0 uses
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

extcap_parse_complex.exit28:                      ; preds = %bb.ba
  %i.dy = load i32, ptr %i.k, align 8
  %i.dz = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #8 ; 4 uses
  %i.ea = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.du)
  %i.eb = getelementptr i8, ptr %i.dz, i64 8
  store ptr %i.ea, ptr %i.eb, align 8
  store i32 %i.dy, ptr %i.dz, align 8
  %i.ec = getelementptr i8, ptr %i.j, i64 88
  store ptr %i.dz, ptr %i.ec, align 8
  %i.ed = icmp eq ptr %i.dz, null
  br i1 %i.ed, label %bb.bc, label %extcap_parse_complex.exit22

bb.bc:                                            ; preds = %extcap_parse_complex.exit28
  %i.ee = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.du) ; 0 uses
  tail call void @extcap_free_arg(ptr noundef %i.j)
  br label %extcap_parse_arg_sentence.exit.thread

extcap_parse_complex.exit22:                      ; preds = %extcap_parse_complex.exit28
  %i.ef = load i32, ptr %i.k, align 8
  %i.eg = getelementptr i8, ptr %i.dv, i64 1
  %i.eh = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #8 ; 4 uses
  %i.ei = tail call noalias ptr @g_strdup(ptr noundef %i.eg)
  %i.ej = getelementptr i8, ptr %i.eh, i64 8
  store ptr %i.ei, ptr %i.ej, align 8
  store i32 %i.ef, ptr %i.eh, align 8
  %i.ek = getelementptr i8, ptr %i.j, i64 96
end_hunk_0
