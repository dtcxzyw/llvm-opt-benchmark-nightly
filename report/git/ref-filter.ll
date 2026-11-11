Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ref-filter?download=true
inline.NumInlined: 234
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@if_then_else_handler:bb.a
  %i.z = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !22
  %.not10.i11 = icmp eq i8 %i.z, 0
  br i1 %.not10.i11, label %strbuf_setlen.exit12, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.197, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit12:                             ; preds = %bb.m, %bb.n
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !120 ; 3 uses
  %.not.i13 = icmp eq ptr %i.aa, null
  br i1 %.not.i13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %strbuf_setlen.exit12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @strbuf_addbuf(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.l) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %strbuf_setlen.exit12
  tail call void @strbuf_release(ptr noundef nonnull %i.l) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !124 ; 2 uses
  %.not13.i14 = icmp eq ptr %i.ad, null
  br i1 %.not13.i14, label %pop_stack_element.exit15, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !125
  tail call void %i.ad(ptr noundef %i.ae) #24, !inline_history !1
  br label %pop_stack_element.exit15

pop_stack_element.exit15:                         ; preds = %bb.q, %bb.r
  tail call void @free(ptr noundef nonnull %i.b) #24
  br label %strbuf_setlen.exit18

bb.s:                                             ; preds = %bb.c
  br i1 %.not8, label %bb.t, label %strbuf_setlen.exit18

bb.t:                                             ; preds = %bb.s
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not9.i16 = icmp eq ptr %i.ah, @strbuf_slopbuf
  br i1 %.not9.i16, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.ah, align 1, !tbaa !22
  br label %strbuf_setlen.exit18

bb.v:                                             ; preds = %bb.t
  %i.ai = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !22
  %.not10.i17 = icmp eq i8 %i.ai, 0
  br i1 %.not10.i17, label %strbuf_setlen.exit18, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.197, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit18:                             ; preds = %bb.v, %bb.u, %bb.s, %pop_stack_element.exit, %pop_stack_element.exit15
  %.0 = phi ptr [ %i.q, %pop_stack_element.exit ], [ %i.b, %bb.s ], [ %i.aa, %pop_stack_element.exit15 ], [ %i.b, %bb.u ], [ %i.b, %bb.v ]
  store ptr %.0, ptr %0, align 8, !tbaa !121
  ret void
}

declare i32 @odb_read_object_info_extended(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @grab_sub_body_contents(ptr nofree noundef writeonly captures(none) %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 9 uses
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %5 = alloca %struct.strbuf, align 8             ; 7 uses
  %6 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 4 uses
  %i.c = load i32, ptr @used_atom_cnt, align 4, !tbaa !14
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %spec.select.idx = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %.087112 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.an ] ; 7 uses
  %.088111 = phi i64 [ 0, %.lr.ph ], [ %.290, %bb.an ] ; 7 uses
  %.091110 = phi i64 [ 0, %.lr.ph ], [ %.293, %bb.an ] ; 7 uses
  %.094109 = phi i64 [ 0, %.lr.ph ], [ %.296, %bb.an ] ; 7 uses
  %.097108 = phi ptr [ null, %.lr.ph ], [ %.299, %bb.an ] ; 7 uses
  %.0100107 = phi ptr [ null, %.lr.ph ], [ %.2102, %bb.an ] ; 7 uses
  %.0103106 = phi ptr [ null, %.lr.ph ], [ %.2105, %bb.an ] ; 8 uses
  %i.i = load ptr, ptr @used_atom, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %indvars.iv ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv ; 14 uses
  %i.n = load i8, ptr %i.l, align 1, !tbaa !22
  %i.o = icmp eq i8 %i.n, 42
  %i.p = zext i1 %i.o to i32
  %.not62 = icmp eq i32 %1, %i.p
  br i1 %.not62, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.j, align 8, !tbaa !33
  %spec.select = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.idx ; 4 uses
  %i.r = icmp eq i32 %i.q, 31
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.h, align 8, !tbaa !162  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !22
  switch i32 %i.u, label %bb.an [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = call ptr @xmemdupz(ptr noundef %i.b, i64 noundef %i.s) #24
  store ptr %i.v, ptr %i.m, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.s, ptr %i.w, align 8, !tbaa !114
  br label %bb.an

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.s, ptr %i.x, align 8, !tbaa !115
  %i.y = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.181, i64 noundef %i.s) #24
  store ptr %i.y, ptr %i.m, align 8, !tbaa !70
  br label %bb.an

bb.g:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.e, align 4, !tbaa !161
  switch i32 %i.z, label %bb.an [
    i32 4, label %bb.h
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select, ptr noundef nonnull dereferenceable(5) @.str.59) #25
  %.not65 = icmp eq i32 %i.aa, 0
  br i1 %.not65, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call zeroext i1 @starts_with(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.58) #24
  br i1 %i.ab, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = call zeroext i1 @starts_with(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.60) #24
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call zeroext i1 @starts_with(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.61) #24
  br i1 %i.ad, label %bb.l, label %bb.an

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.not66 = icmp eq ptr %.0103106, null
  br i1 %.not66, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ae
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.053.i = phi ptr [ %i.b, %bb.m ], [ %spec.select.i, %bb.o ] ; 3 uses
  %i.ag = load i8, ptr %.053.i, align 1, !tbaa !22
  switch i8 %i.ag, label %bb.o [
    i8 0, label %.critedge.i.preheader
    i8 10, label %.critedge.i.preheader
  ]

.critedge.i.preheader:                            ; preds = %bb.n, %bb.n
  br label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.ah = call ptr @strchrnul(ptr noundef nonnull %.053.i, i32 noundef 10) #25 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !22
  %.not66.i = icmp ne i8 %i.ai, 0
  %spec.select.idx.i = zext i1 %.not66.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx.i
  br label %bb.n, !llvm.loop !290

.critedge.i:                                      ; preds = %.critedge.i.preheader, %.critedge.i
  %.154.i = phi ptr [ %i.al, %.critedge.i ], [ %.053.i, %.critedge.i.preheader ] ; 10 uses
  %i.aj = load i8, ptr %.154.i, align 1, !tbaa !22
  %i.ak = icmp eq i8 %i.aj, 10
  %i.al = getelementptr inbounds nuw i8, ptr %.154.i, i64 1
  br i1 %i.ak, label %.critedge.i, label %bb.p, !llvm.loop !291

bb.p:                                             ; preds = %.critedge.i
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.154.i) #25
  %i.an = call i64 @parse_signed_buffer(ptr noundef nonnull %.154.i, i64 noundef %i.am) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %.154.i, i64 %i.an ; 5 uses
  %i.ap = ptrtoint ptr %i.af to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.154.i, ptr noundef nonnull dereferenceable(1) @.str.183) #25 ; 2 uses
  %.not63.i = icmp eq ptr %i.as, null
  br i1 %.not63.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.154.i, ptr noundef nonnull dereferenceable(1) @.str.184) #25 ; 2 uses
  %.not64.i = icmp eq ptr %i.at, null
  br i1 %.not64.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.i = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ] ; 2 uses
  %i.au = icmp ult ptr %.1.i, %i.ao
  %i.av = select i1 %i.au, ptr %.1.i, ptr %i.ao   ; 2 uses
  %.pre.i = ptrtoint ptr %i.av to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi.i = phi i64 [ %i.aq, %bb.q ], [ %.pre.i, %bb.r ]
  %.2.i = phi ptr [ %i.ao, %bb.q ], [ %i.av, %bb.r ]
  %i.aw = ptrtoint ptr %.154.i to i64
  %i.ax = sub i64 %.pre-phi.i, %i.aw              ; 2 uses
  %.not6567.i = icmp eq i64 %i.ax, 0
  br i1 %.not6567.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.critedge4.i
  %.3 = phi i64 [ %i.bb, %.critedge4.i ], [ %i.ax, %bb.s ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.154.i, i64 %.3
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  switch i8 %i.ba, label %.critedge2.i [
    i8 10, label %.critedge4.i
    i8 13, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.bb = add i64 %.3, -1                         ; 2 uses
  %.not65.i = icmp eq i64 %i.bb, 0
  br i1 %.not65.i, label %.critedge2.i, label %.lr.ph.i, !llvm.loop !292

.critedge2.i:                                     ; preds = %.critedge4.i, %.lr.ph.i, %bb.s
  %.4 = phi i64 [ 0, %bb.s ], [ 0, %.critedge4.i ], [ %.3, %.lr.ph.i ]
  br label %bb.t

bb.t:                                             ; preds = %.critedge6.i, %.critedge2.i
  %.255.i = phi ptr [ %.2.i, %.critedge2.i ], [ %i.bd, %.critedge6.i ] ; 5 uses
  %i.bc = load i8, ptr %.255.i, align 1, !tbaa !22
  switch i8 %i.bc, label %find_subpos.exit [
    i8 10, label %.critedge6.i
    i8 13, label %.critedge6.i
  ]

.critedge6.i:                                     ; preds = %bb.t, %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %.255.i, i64 1
  br label %bb.t, !llvm.loop !293

find_subpos.exit:                                 ; preds = %bb.t
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.255.i) #25
  %i.bf = ptrtoint ptr %.255.i to i64
  %i.bg = sub i64 %i.aq, %i.bf
  br label %bb.u

bb.u:                                             ; preds = %find_subpos.exit, %bb.l
  %.1104 = phi ptr [ %.154.i, %find_subpos.exit ], [ %.0103106, %bb.l ] ; 22 uses
  %.1101 = phi ptr [ %.255.i, %find_subpos.exit ], [ %.0100107, %bb.l ] ; 13 uses
  %.198 = phi ptr [ %i.ao, %find_subpos.exit ], [ %.097108, %bb.l ] ; 12 uses
  %.195 = phi i64 [ %.4, %find_subpos.exit ], [ %.094109, %bb.l ] ; 14 uses
  %.192 = phi i64 [ %i.be, %find_subpos.exit ], [ %.091110, %bb.l ] ; 11 uses
  %.189 = phi i64 [ %i.bg, %find_subpos.exit ], [ %.088111, %bb.l ] ; 12 uses
  %.1 = phi i64 [ %i.ar, %find_subpos.exit ], [ %.087112, %bb.l ] ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !22
  switch i32 %i.bi, label %bb.an [
    i32 6, label %bb.v
    i32 7, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 1, label %bb.ad
    i32 5, label %bb.ae
    i32 4, label %bb.af
    i32 8, label %bb.aj
    i32 0, label %bb.am
  ]

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_sorting_atom.err, i64 24, i1 false)
  %.not.i = icmp eq i64 %.195, 0
  br i1 %.not.i, label %copy_subject.exit, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.v, %bb.z
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.pre-phi, %bb.z ], [ 0, %bb.v ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1104, i64 %indvars.iv.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !22  ; 4 uses
  switch i8 %i.bk, label %.thread.i [
    i8 13, label %bb.w
    i8 10, label %bb.y
  ]

bb.w:                                             ; preds = %.lr.ph.i68
  %i.bl = add nuw i64 %indvars.iv.i, 1            ; 3 uses
  %i.bm = icmp ugt i64 %.195, %i.bl
  br i1 %i.bm, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %.1104, i64 %i.bl
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !22
  %i.bp = icmp eq i8 %i.bo, 10
  br i1 %i.bp, label %bb.z, label %.thread.i

bb.y:                                             ; preds = %.lr.ph.i68
  %i.bq = load i64, ptr %3, align 8, !tbaa !126   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i, label %.sink.split.sink.split.i, label %strbuf_avail.exit.i.i

strbuf_avail.exit.i.i:                            ; preds = %bb.y
  %i.br = load i64, ptr %i.f, align 8, !tbaa !108 ; 2 uses
  %.neg.i.i = add i64 %i.br, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bq, %.neg.i.i
  br i1 %.not.i.i, label %.sink.split.sink.split.i, label %.sink.split.i

.thread.i:                                        ; preds = %bb.x, %bb.w, %.lr.ph.i68
  %i.bs = load i64, ptr %3, align 8, !tbaa !126   ; 2 uses
  %.not.i.i16.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i16.i, label %.sink.split.sink.split.i, label %strbuf_avail.exit.i17.i

strbuf_avail.exit.i17.i:                          ; preds = %.thread.i
  %i.bt = load i64, ptr %i.f, align 8, !tbaa !108 ; 2 uses
  %.neg.i18.i = add i64 %i.bt, 1                  ; 2 uses
  %.not.i19.i = icmp eq i64 %i.bs, %.neg.i18.i
  br i1 %.not.i19.i, label %.sink.split.sink.split.i, label %.sink.split.i

.sink.split.sink.split.i:                         ; preds = %strbuf_avail.exit.i17.i, %.thread.i, %strbuf_avail.exit.i.i, %bb.y
  %.sink.ph.i = phi i8 [ 32, %bb.y ], [ 32, %strbuf_avail.exit.i.i ], [ %i.bk, %strbuf_avail.exit.i17.i ], [ %i.bk, %.thread.i ]
  call void @strbuf_grow(ptr noundef nonnull %3, i64 noundef 1) #24
  %.pre.i23.i = load i64, ptr %i.f, align 8, !tbaa !108 ; 2 uses
  %.pre7.i24.i = add i64 %.pre.i23.i, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %strbuf_avail.exit.i17.i, %strbuf_avail.exit.i.i
  %.pre-phi.i.sink.i = phi i64 [ %.neg.i.i, %strbuf_avail.exit.i.i ], [ %.neg.i18.i, %strbuf_avail.exit.i17.i ], [ %.pre7.i24.i, %.sink.split.sink.split.i ]
  %.sink35.i = phi i64 [ %i.br, %strbuf_avail.exit.i.i ], [ %i.bt, %strbuf_avail.exit.i17.i ], [ %.pre.i23.i, %.sink.split.sink.split.i ]
  %.sink.i = phi i8 [ 32, %strbuf_avail.exit.i.i ], [ %i.bk, %strbuf_avail.exit.i17.i ], [ %.sink.ph.i, %.sink.split.sink.split.i ]
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !29
  store i64 %.pre-phi.i.sink.i, ptr %i.f, align 8, !tbaa !108
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sink35.i
  store i8 %.sink.i, ptr %i.bv, align 1, !tbaa !22
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !108
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !22
  %.pre = add nuw i64 %indvars.iv.i, 1
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i, %bb.x
  %indvars.iv.next.i.pre-phi = phi i64 [ %.pre, %.sink.split.i ], [ %i.bl, %bb.x ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.pre-phi, %.195
  br i1 %exitcond.not.i, label %copy_subject.exit, label %.lr.ph.i68, !llvm.loop !294

copy_subject.exit:                                ; preds = %bb.z, %bb.v
  %i.bz = call ptr @strbuf_detach(ptr noundef nonnull %3, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  store ptr %i.bz, ptr %i.m, align 8, !tbaa !70
  br label %bb.an

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_sorting_atom.err, i64 24, i1 false)
  call void @format_sanitized_subject(ptr noundef nonnull %4, ptr noundef nonnull %.1104, i64 noundef %.195) #24
  %i.ca = call ptr @strbuf_detach(ptr noundef nonnull %4, ptr noundef null) #24
  store ptr %i.ca, ptr %i.m, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.an

bb.ab:                                            ; preds = %bb.u
  %i.cb = call ptr @xmemdupz(ptr noundef %.1101, i64 noundef %.192) #24
  store ptr %i.cb, ptr %i.m, align 8, !tbaa !70
  br label %bb.an

bb.ac:                                            ; preds = %bb.u
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1104) #25 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !115
  %i.ce = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.181, i64 noundef %i.cc) #24
  store ptr %i.ce, ptr %i.m, align 8, !tbaa !70
  br label %bb.an

bb.ad:                                            ; preds = %bb.u
  %i.cf = call ptr @xmemdupz(ptr noundef %.1101, i64 noundef %.189) #24
  store ptr %i.cf, ptr %i.m, align 8, !tbaa !70
  br label %bb.an

bb.ae:                                            ; preds = %bb.u
  %i.cg = call ptr @xmemdupz(ptr noundef %.198, i64 noundef %.1) #24
  store ptr %i.cg, ptr %i.m, align 8, !tbaa !70
  br label %bb.an

bb.af:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_sorting_atom.err, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.1101, i64 %.189 ; 4 uses
  %i.ci = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !22 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  %i.cm = icmp ne ptr %i.ch, %.1104
  %i.cn = and i1 %i.cm, %i.cl
  br i1 %i.cn, label %bb.ag, label %append_lines.exit

bb.ag:                                            ; preds = %bb.af
  %i.co = ptrtoint ptr %.1104 to i64              ; 2 uses
  %i.cp = sub i64 %i.ci, %i.co                    ; 2 uses
  %i.cq = call ptr @memchr(ptr noundef nonnull %.1104, i32 noundef 10, i64 noundef %i.cp) #25 ; 3 uses
  %.not25.peel.i = icmp eq ptr %i.cq, null        ; 2 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.co
  %i.ct = select i1 %.not25.peel.i, i64 %i.cp, i64 %i.cs
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %.1104, i64 noundef %i.ct) #24
  br i1 %.not25.peel.i, label %append_lines.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
end_hunk_0
