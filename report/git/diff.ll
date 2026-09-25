Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff?download=true
inline.NumInlined: 585
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@fn_out_diff_words_write_helper:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.g = tail call ptr @memchr(ptr noundef %4, i32 noundef 10, i64 noundef %3) #34 ; 5 uses
  %.not42.peel = icmp eq ptr %i.g, %4
  br i1 %.not42.peel, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !564  ; 4 uses
  %.not43.peel = icmp eq ptr %i.h, null
  br i1 %.not43.peel, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.h, align 1, !tbaa !44
  %.fr.peel = freeze i8 %i.i                      ; 2 uses
  %.not75 = icmp eq i8 %.fr.peel, 0
  %spec.select.peel = select i1 %.not75, ptr null, ptr @.str.441 ; 2 uses
  %.not45.peel = icmp eq i8 %.fr.peel, 0
  br i1 %.not45.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.h, i64 noundef %i.j) #33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.k = phi ptr [ %spec.select.peel, %bb.e ], [ %spec.select.peel, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.l = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %i.m = load ptr, ptr %1, align 8, !tbaa !565    ; 2 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.m, i64 noundef %i.n) #33
  %.not46.peel = icmp eq ptr %i.g, null
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %4 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = select i1 %.not46.peel, i64 %3, i64 %i.q
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef %4, i64 noundef %i.r) #33
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !566  ; 2 uses
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.s, i64 noundef %i.t) #33
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.k, i64 noundef %i.u) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.not47.peel = icmp eq ptr %i.g, null
  br i1 %.not47.peel, label %strbuf_setlen.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef %i.v) #33
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %4 to i64
  %.neg.peel = sub i64 %i.y, %i.x
  %i.z = add i64 %.neg.peel, %3                   ; 3 uses
  %.not48.peel = icmp eq i64 %i.z, 0
  br i1 %.not48.peel, label %strbuf_setlen.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !70
  %i.ac = trunc i64 %i.ab to i32
  call fastcc void @emit_diff_symbol(ptr noundef %0, i32 noundef 9, ptr noundef %i.aa, i32 noundef %i.ac, i32 noundef 0)
  store i64 0, ptr %i.f, align 8, !tbaa !70
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %.not9.i.peel = icmp eq ptr %i.ad, @strbuf_slopbuf
  br i1 %.not9.i.peel, label %bb.k, label %.peel.next.sink.split

bb.k:                                             ; preds = %bb.j
  %i.ae = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !44
  %.not10.i.peel = icmp eq i8 %i.ae, 0
  br i1 %.not10.i.peel, label %.peel.next.preheader, label %.loopexit

.peel.next.sink.split:                            ; preds = %bb.u, %bb.j
  %.sink = phi ptr [ %i.ad, %bb.j ], [ %i.bh, %bb.u ]
  %.03258.ph = phi ptr [ %i.w, %bb.j ], [ %i.ba, %bb.u ]
  %.03457.ph = phi i64 [ %i.z, %bb.j ], [ %i.bd, %bb.u ]
  store i8 0, ptr %.sink, align 1, !tbaa !44
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.k, %.peel.next.sink.split
  %.03258.ph1 = phi ptr [ %.03258.ph, %.peel.next.sink.split ], [ %i.w, %bb.k ]
  %.03457.ph2 = phi i64 [ %.03457.ph, %.peel.next.sink.split ], [ %i.z, %bb.k ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.v
  %.03258 = phi ptr [ %i.ba, %bb.v ], [ %.03258.ph1, %.peel.next.preheader ] ; 5 uses
  %.03457 = phi i64 [ %i.bd, %bb.v ], [ %.03457.ph2, %.peel.next.preheader ] ; 3 uses
  %i.af = call ptr @memchr(ptr noundef nonnull %.03258, i32 noundef 10, i64 noundef %.03457) #34 ; 5 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.peel.next
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.ai = call ptr %i.ag(ptr noundef nonnull %0, ptr noundef %i.ah) #33, !inline_history !271
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.peel.next
  %i.aj = phi ptr [ %i.ai, %bb.l ], [ @.str.41, %.peel.next ] ; 2 uses
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.aj, i64 noundef %i.ak) #33
  %.not42 = icmp eq ptr %i.af, %.03258
  br i1 %.not42, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !564 ; 4 uses
  %.not43 = icmp eq ptr %i.al, null
  br i1 %.not43, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load i8, ptr %i.al, align 1, !tbaa !44
  %.fr = freeze i8 %i.am                          ; 2 uses
  %.not76 = icmp eq i8 %.fr, 0
  %spec.select = select i1 %.not76, ptr null, ptr @.str.441 ; 2 uses
  %.not45 = icmp eq i8 %.fr, 0
  br i1 %.not45, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.al, i64 noundef %i.an) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %i.ao = phi ptr [ %spec.select, %bb.p ], [ %spec.select, %bb.o ], [ null, %bb.n ] ; 2 uses
  %i.ap = phi i1 [ true, %bb.p ], [ false, %bb.o ], [ false, %bb.n ]
  %i.aq = load ptr, ptr %1, align 8, !tbaa !565   ; 2 uses
  %i.ar = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.aq, i64 noundef %i.ar) #33
  %.not46 = icmp eq ptr %i.af, null
  %i.as = ptrtoint ptr %i.af to i64
  %i.at = ptrtoint ptr %.03258 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = select i1 %.not46, i64 %.03457, i64 %i.au
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %.03258, i64 noundef %i.av) #33
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !566 ; 2 uses
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.aw, i64 noundef %i.ax) #33
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.ao, i64 noundef %i.ay) #33
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.m
  %.not47 = icmp eq ptr %i.af, null
  br i1 %.not47, label %strbuf_setlen.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #34
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef %i.az) #33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %.03258 to i64
  %.neg = sub i64 %i.bc, %i.bb
  %i.bd = add i64 %.neg, %.03457                  ; 3 uses
  %.not48 = icmp eq i64 %i.bd, 0
  br i1 %.not48, label %strbuf_setlen.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.bf = load i64, ptr %i.f, align 8, !tbaa !70
  %i.bg = trunc i64 %i.bf to i32
  call fastcc void @emit_diff_symbol(ptr noundef nonnull %0, i32 noundef 9, ptr noundef %i.be, i32 noundef %i.bg, i32 noundef 0)
  store i64 0, ptr %i.f, align 8, !tbaa !70
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %.not9.i = icmp eq ptr %i.bh, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.v, label %.peel.next.sink.split, !llvm.loop !563

bb.v:                                             ; preds = %bb.u
  %i.bi = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !44
  %.not10.i = icmp eq i8 %i.bi, 0
  br i1 %.not10.i, label %.peel.next, label %.loopexit, !llvm.loop !563

.loopexit:                                        ; preds = %bb.v, %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.418, ptr noundef nonnull @.str.416, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #35
  unreachable

strbuf_setlen.exit.thread:                        ; preds = %bb.t, %bb.s, %bb.h, %bb.i
  %.pre = load i64, ptr %i.f, align 8, !tbaa !70  ; 2 uses
  %.not49 = icmp eq i64 %.pre, 0
  br i1 %.not49, label %strbuf_setlen.exit.thread.thread, label %bb.w

bb.w:                                             ; preds = %strbuf_setlen.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !47
  %i.bl = trunc i64 %.pre to i32
  call fastcc void @emit_diff_symbol(ptr noundef %0, i32 noundef 9, ptr noundef %i.bk, i32 noundef %i.bl, i32 noundef 0)
  br label %strbuf_setlen.exit.thread.thread

strbuf_setlen.exit.thread.thread:                 ; preds = %bb.a, %bb.w, %strbuf_setlen.exit.thread
  call void @strbuf_release(ptr noundef nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @diff_words_fill(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((0, 16)) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.regmatch_t], align 4   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !570  ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %st_mult.exit.a, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !571
  br label %bb.b

st_mult.exit.a:                                   ; preds = %bb.a
  %i.e = mul i32 %i.c, 3
  %i.f = add i32 %i.e, 48                         ; 2 uses
  %4 = sdiv i32 %i.f, 2
  %.inv = icmp sgt i32 %i.f, 1
  %storemerge = select i1 %.inv, i32 %4, i32 1    ; 3 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !570
  %5 = sext i32 %storemerge to i64                ; 2 uses
  %mul.ov.i = icmp slt i32 %storemerge, 0
  br i1 %mul.ov.i, label %6, label %st_mult.exit

6:                                                ; preds = %st_mult.exit.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.363, i64 noundef 16, i64 noundef %5) #35
  unreachable

st_mult.exit:                                     ; preds = %st_mult.exit.a
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !571
  %9 = shl nuw nsw i64 %5, 4
  %10 = tail call ptr @xrealloc(ptr noundef %8, i64 noundef %9) #33 ; 2 uses
  store ptr %10, ptr %7, align 8, !tbaa !571
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.g = phi ptr [ %.pre, %._crit_edge ], [ %10, %st_mult.exit ] ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !315    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !331
  store ptr %i.h, ptr %i.g, align 8, !tbaa !332
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 1, ptr %i.k, align 8, !tbaa !572
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !314  ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph123, label %find_word_boundaries.exit.thread96

.lr.ph123:                                        ; preds = %bb.b
  %.not.i = icmp eq ptr %2, null
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.k
  %i.p = phi i64 [ %i.m, %.lr.ph123 ], [ %i.do, %bb.k ] ; 2 uses
  %i.q = phi i64 [ 0, %.lr.ph123 ], [ %i.cn, %bb.k ] ; 2 uses
  %.0122 = phi i64 [ 0, %.lr.ph123 ], [ %.2, %bb.k ] ; 3 uses
  %storemerge56121 = phi i32 [ 0, %.lr.ph123 ], [ %.494, %bb.k ] ; 2 uses
  br i1 %.not.i, label %.critedge.i, label %.lr.ph64.preheader.i

.lr.ph64.preheader.i:                             ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !221
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %bb.e, %.lr.ph64.preheader.i
  %.286 = phi i32 [ %storemerge56121, %.lr.ph64.preheader.i ], [ %i.aq, %bb.e ] ; 4 uses
  %i.r = phi ptr [ %.pre.i, %.lr.ph64.preheader.i ], [ %i.y, %bb.e ]
  %i.s = phi i64 [ %i.p, %.lr.ph64.preheader.i ], [ %i.as, %bb.e ]
  %i.t = phi i64 [ %i.q, %.lr.ph64.preheader.i ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  store i32 0, ptr %3, align 4, !tbaa !574
  %i.v = trunc i64 %i.s to i32
  %i.w = sub i32 %i.v, %.286
  store i32 %i.w, ptr %i.o, align 4, !tbaa !575
  %i.x = call i32 @regexec(ptr noundef nonnull %2, ptr noundef %i.u, i64 noundef 1, ptr noundef nonnull %3, i32 noundef 4) #33
  %.not53.i = icmp eq i32 %i.x, 0
  br i1 %.not53.i, label %bb.d, label %find_word_boundaries.exit.thread101

find_word_boundaries.exit.thread101:              ; preds = %.lr.ph64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %find_word_boundaries.exit.thread96

bb.d:                                             ; preds = %.lr.ph64.i
  %i.y = load ptr, ptr %0, align 8, !tbaa !221    ; 4 uses
  %i.z = sext i32 %.286 to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %3, align 4, !tbaa !574   ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !575 ; 2 uses
  %i.af = sub nsw i32 %i.ae, %i.ab
  %i.ag = sext i32 %i.af to i64
  %i.ah = call ptr @memchr(ptr noundef %i.ad, i32 noundef 10, i64 noundef %i.ag) #34 ; 2 uses
  %.not54.i = icmp eq ptr %i.ah, null
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.y to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = add nsw i32 %i.ae, %.286
  %i.an = select i1 %.not54.i, i32 %i.am, i32 %i.al ; 4 uses
  %i.ao = add nsw i32 %i.ab, %.286                ; 3 uses
  %i.ap = icmp eq i32 %i.ao, %i.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %i.ap, label %bb.e, label %find_word_boundaries.exit

bb.e:                                             ; preds = %bb.d
  %i.aq = add nsw i32 %i.an, 1                    ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = load i64, ptr %i.l, align 8, !tbaa !222 ; 3 uses
  %i.at = icmp sgt i64 %i.as, %i.ar
  br i1 %i.at, label %.lr.ph64.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.c
  %.084 = phi i32 [ %storemerge56121, %bb.c ], [ %i.aq, %bb.e ]
  %.pre-phi.i = phi i64 [ %i.q, %bb.c ], [ %i.ar, %bb.e ] ; 5 uses
  %i.au = phi i64 [ %i.p, %bb.c ], [ %i.as, %bb.e ] ; 5 uses
  %i.av = icmp sgt i64 %i.au, %.pre-phi.i
  br i1 %i.av, label %.lr.ph65.i, label %find_word_boundaries.exit.thread96

.lr.ph65.i:                                       ; preds = %.critedge.i
  %i.aw = load ptr, ptr %0, align 8, !tbaa !221   ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.pre-phi.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !44
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !44
  %i.bc = and i8 %i.bb, 1
  %.not50.i118 = icmp eq i8 %i.bc, 0
  br i1 %.not50.i118, label %.critedge2.i.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph65.i
  %i.bd = add nsw i64 %i.au, -1                   ; 2 uses
  %exitcond.not176 = icmp eq i64 %.pre-phi.i, %i.bd
  br i1 %exitcond.not176, label %find_word_boundaries.exit.thread96, label %.lr.ph178, !llvm.loop !567

.lr.ph178:                                        ; preds = %.lr.ph.preheader
  br label %bb.f, !llvm.loop !567

bb.f:                                             ; preds = %.lr.ph178, %.lr.ph
  %indvars.iv.i119177 = phi i64 [ %.pre-phi.i, %.lr.ph178 ], [ %indvars.iv.next.i, %.lr.ph ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i119177, 1 ; 5 uses
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 %indvars.iv.next.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !44
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !44
  %i.bj = and i8 %i.bi, 1
  %.not50.i = icmp eq i8 %i.bj, 0
  br i1 %.not50.i, label %.critedge2.i.preheader.loopexit, label %.lr.ph, !llvm.loop !567

.critedge2.i.preheader.loopexit:                  ; preds = %bb.f
  %i.bk = trunc nsw i64 %indvars.iv.next.i to i32
  br label %.critedge2.i.preheader

.critedge2.i.preheader:                           ; preds = %.critedge2.i.preheader.loopexit, %.lr.ph65.i
  %.185.lcssa = phi i32 [ %.084, %.lr.ph65.i ], [ %i.bk, %.critedge2.i.preheader.loopexit ]
  %indvars.iv.i.lcssa = phi i64 [ %.pre-phi.i, %.lr.ph65.i ], [ %indvars.iv.next.i, %.critedge2.i.preheader.loopexit ] ; 2 uses
  %i.bl = add nsw i64 %indvars.iv.i.lcssa, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.au, i64 %i.bl) ; 2 uses
  %indvars.iv.next75.i179.a = add nsw i64 %indvars.iv.i.lcssa, 1 ; 2 uses
  %i.bm = icmp sgt i64 %i.au, %indvars.iv.next75.i179.a
  br i1 %i.bm, label %.lr.ph181, label %find_word_boundaries.exit.thread.loopexit

.lr.ph:                                           ; preds = %bb.f
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.bd
  br i1 %exitcond.not, label %find_word_boundaries.exit.thread96, label %bb.f, !llvm.loop !567

.critedge2.i:                                     ; preds = %.lr.ph181
  %indvars.iv.next75.i = add nsw i64 %indvars.iv.next75.i180, 1 ; 2 uses
  %i.bn = icmp sgt i64 %i.au, %indvars.iv.next75.i
  br i1 %i.bn, label %.lr.ph181, label %find_word_boundaries.exit.thread.loopexit, !llvm.loop !568

.lr.ph181:                                        ; preds = %.critedge2.i.preheader, %.critedge2.i
  %indvars.iv.next75.i180 = phi i64 [ %indvars.iv.next75.i, %.critedge2.i ], [ %indvars.iv.next75.i179.a, %.critedge2.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.aw, i64 %indvars.iv.next75.i180
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !44
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !44
  %i.bt = and i8 %i.bs, 1
  %.not52.i = icmp eq i8 %i.bt, 0
  br i1 %.not52.i, label %.critedge2.i, label %.find_word_boundaries.exit.thread.loopexit_crit_edge, !llvm.loop !568

find_word_boundaries.exit:                        ; preds = %bb.d
  %.not = icmp sgt i32 %i.ao, %i.an
  br i1 %.not, label %find_word_boundaries.exit.thread96, label %find_word_boundaries.exit.thread

.find_word_boundaries.exit.thread.loopexit_crit_edge: ; preds = %.lr.ph181
  br label %find_word_boundaries.exit.thread.loopexit, !llvm.loop !568

find_word_boundaries.exit.thread.loopexit:        ; preds = %.critedge2.i, %.find_word_boundaries.exit.thread.loopexit_crit_edge, %.critedge2.i.preheader
  %indvars.iv.next75.i.lcssa = phi i64 [ %indvars.iv.next75.i180, %.find_word_boundaries.exit.thread.loopexit_crit_edge ], [ %smax, %.critedge2.i.preheader ], [ %smax, %.critedge2.i ]
  %i.bu = trunc nsw i64 %indvars.iv.next75.i.lcssa to i32
  br label %find_word_boundaries.exit.thread

find_word_boundaries.exit.thread:                 ; preds = %find_word_boundaries.exit.thread.loopexit, %find_word_boundaries.exit
  %i.bv = phi ptr [ %i.y, %find_word_boundaries.exit ], [ %i.aw, %find_word_boundaries.exit.thread.loopexit ]
  %.494 = phi i32 [ %i.an, %find_word_boundaries.exit ], [ %i.bu, %find_word_boundaries.exit.thread.loopexit ] ; 3 uses
  %.48893 = phi i32 [ %i.ao, %find_word_boundaries.exit ], [ %.185.lcssa, %find_word_boundaries.exit.thread.loopexit ] ; 2 uses
  %i.bw = load i32, ptr %i.k, align 8, !tbaa !572 ; 3 uses
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !570 ; 2 uses
  %.not57 = icmp slt i32 %i.bw, %i.bx
  br i1 %.not57, label %find_word_boundaries.exit.thread._crit_edge, label %bb.g

find_word_boundaries.exit.thread._crit_edge:      ; preds = %find_word_boundaries.exit.thread
  %.pre135.a = load ptr, ptr %i.i, align 8, !tbaa !571
  br label %bb.i

bb.g:                                             ; preds = %find_word_boundaries.exit.thread
  %i.by = add nsw i32 %i.bw, 1
  %i.bz = mul i32 %i.bx, 3
  %i.ca = add i32 %i.bz, 48
  %i.cb = sdiv i32 %i.ca, 2
  %. = call i32 @llvm.smax.i32(i32 %i.cb, i32 %i.by) ; 3 uses
  store i32 %., ptr %i.b, align 4, !tbaa !570
  %i.cc = sext i32 %. to i64                      ; 2 uses
  %mul.ov.i64 = icmp slt i32 %., 0
  br i1 %mul.ov.i64, label %bb.h, label %st_mult.exit65

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @die(ptr noundef nonnull @.str.363, i64 noundef 16, i64 noundef %i.cc) #35
  unreachable

st_mult.exit65:                                   ; preds = %bb.g
  %i.cd = load ptr, ptr %i.i, align 8, !tbaa !571
  %i.ce = shl nuw nsw i64 %i.cc, 4
  %i.cf = call ptr @xrealloc(ptr noundef %i.cd, i64 noundef %i.ce) #33 ; 2 uses
  store ptr %i.cf, ptr %i.i, align 8, !tbaa !571
  %.pre134 = load ptr, ptr %0, align 8, !tbaa !315
  %.pre136.a = load i32, ptr %i.k, align 8, !tbaa !572
  br label %bb.i

bb.i:                                             ; preds = %find_word_boundaries.exit.thread._crit_edge, %st_mult.exit65
  %i.cg = phi i32 [ %.pre136.a, %st_mult.exit65 ], [ %i.bw, %find_word_boundaries.exit.thread._crit_edge ] ; 2 uses
  %i.ch = phi ptr [ %i.cf, %st_mult.exit65 ], [ %.pre135.a, %find_word_boundaries.exit.thread._crit_edge ]
end_hunk_0
