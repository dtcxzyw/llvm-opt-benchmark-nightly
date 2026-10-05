Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/add-interactive?download=true
inline.NumInlined: 101
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@choose_prompt_help:bb.a
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !68
  %i.w = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i20 = icmp eq i32 %i.w, 0
  br i1 %.not4.i20, label %_.exit22, label %bb.g

bb.g:                                             ; preds = %_.exit19
  %i.x = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #17
  br label %_.exit22

_.exit22:                                         ; preds = %_.exit19, %bb.g
  %.0.i21 = phi ptr [ %i.x, %bb.g ], [ @.str.88, %_.exit19 ]
  %i.y = tail call i32 (ptr, ptr, ptr, ...) @color_fprintf_ln(ptr noundef %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.87, ptr noundef %.0.i21) #17 ; 0 uses
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !68
  %i.aa = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i23 = icmp eq i32 %i.aa, 0
  br i1 %.not4.i23, label %_.exit25, label %bb.h

bb.h:                                             ; preds = %_.exit22
  %i.ab = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #17
  br label %_.exit25

_.exit25:                                         ; preds = %_.exit22, %bb.h
  %.0.i24 = phi ptr [ %i.ab, %bb.h ], [ @.str.90, %_.exit22 ]
  %i.ac = tail call i32 (ptr, ptr, ptr, ...) @color_fprintf_ln(ptr noundef %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.89, ptr noundef %.0.i24) #17 ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !68
  %i.ae = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i26 = icmp eq i32 %i.ae, 0
  br i1 %.not4.i26, label %_.exit28, label %bb.i

bb.i:                                             ; preds = %_.exit25
  %i.af = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.91, i32 noundef 5) #17
  br label %_.exit28

_.exit28:                                         ; preds = %_.exit25, %bb.i
  %.0.i27 = phi ptr [ %i.af, %bb.i ], [ @.str.91, %_.exit25 ]
  %i.ag = tail call i32 (ptr, ptr, ptr, ...) @color_fprintf_ln(ptr noundef %i.ad, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.28, ptr noundef %.0.i27) #17 ; 0 uses
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare zeroext i1 @want_color_fd(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !76
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.56, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare void @discard_index(ptr noundef) local_unnamed_addr #1

declare i32 @repo_read_index(ptr noundef) local_unnamed_addr #1

declare i32 @repo_refresh_and_write_index(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @warning(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @list_and_choose(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = and i32 %i.d, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.list_and_choose.input, i64 24, i1 false)
  %.not = trunc i32 %i.d to i1                    ; 4 uses
  %i.f = and i32 %i.d, 1
  %i.g = sub nsw i32 0, %i.f
  %i.h = sext i32 %i.g to i64
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  tail call void @free(ptr noundef %i.j) #17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77
  %i.m = tail call ptr @xcalloc(i64 noundef %i.l, i64 noundef 4) #17
  store ptr %i.m, ptr %i.i, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = icmp ne i32 %i.e, 0                      ; 2 uses
  %i.o = and i32 %i.d, 3
  %or.cond.not = icmp eq i32 %i.o, 1
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.92, i32 noundef 244, ptr noundef nonnull @.str.93) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !158
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %find_unique_prefixes.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @string_list_clear(ptr noundef nonnull %i.p, i32 noundef 0) #17
  %i.v = load i64, ptr %i.s, align 8, !tbaa !77   ; 3 uses
  %mul.ov.i.i = icmp ugt i64 %i.v, 1152921504606846975
  br i1 %mul.ov.i.i, label %bb.g, label %st_mult.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.41, i64 noundef 16, i64 noundef %i.v) #20
  unreachable

st_mult.exit.i:                                   ; preds = %bb.f
  %i.w = shl nuw i64 %i.v, 4
  %i.x = tail call ptr @xmalloc(i64 noundef %i.w) #17 ; 4 uses
  store ptr %i.x, ptr %i.p, align 8, !tbaa !159
  %i.y = load i64, ptr %i.s, align 8, !tbaa !77   ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.y, ptr %i.z, align 8, !tbaa !160
  store i64 %i.y, ptr %i.q, align 8, !tbaa !158
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %st_mult.exit.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !73    ; 3 uses
  %xtraiter = and i64 %i.y, 1
  %i.ab = icmp eq i64 %i.y, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.y, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %.04456.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.al, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.h ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.04456.i ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.04456.i ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !32
  %i.ag = or disjoint i64 %.04456.i, 1            ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ag ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !32
  %i.al = add nuw i64 %.04456.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !155

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.04456.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod261 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod261)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.04456.i.epil.init ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.04456.i.epil.init ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %st_mult.exit.i
  tail call void @string_list_sort(ptr noundef nonnull %i.p) #17
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !158
  %.not60.i = icmp eq i64 %i.aq, 0
  br i1 %.not60.i, label %find_unique_prefixes.exit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %._crit_edge.i
  %4 = load ptr, ptr %i.p, align 8, !tbaa !159
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %extend_prefix_length.exit55.i, %.lr.ph59.i
  %.157.i = phi i64 [ 0, %.lr.ph59.i ], [ %i.br, %extend_prefix_length.exit55.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.157.i ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32 ; 7 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !93
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ay = phi i64 [ %i.bc, %bb.k ], [ 0, %bb.i ]  ; 8 uses
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !75
  %i.bc = add nuw i64 %i.ay, 1                    ; 3 uses
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !76
  %or.cond.i = icmp sgt i8 %i.be, 0               ; 2 uses
  %spec.store.select.i = select i1 %or.cond.i, i64 %i.bc, i64 0
  store i64 %spec.store.select.i, ptr %i.ax, align 8, !tbaa !93
  br i1 %or.cond.i, label %bb.j, label %extend_prefix_length.exit.i

bb.l:                                             ; preds = %bb.j
  %.not47.i = icmp eq i64 %.157.i, 0
  br i1 %.not47.i, label %extend_prefix_length.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds i8, ptr %i.at, i64 -16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75 ; 2 uses
  %i.bh = load i64, ptr %i.as, align 8, !tbaa !162
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %extend_prefix_length.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !75 ; 2 uses
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.bi, ptr readonly %i.bg, i64 %i.ay)
  %.not17.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not17.i.i, label %.preheader.i.i, label %extend_prefix_length.exit.i

.preheader.i.i:                                   ; preds = %bb.n, %bb.q
  %i.bj = phi i64 [ %i.bm, %bb.q ], [ %i.ay, %bb.n ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !76  ; 3 uses
  %.not18.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not18.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.bm = add i64 %i.bj, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ax, align 8, !tbaa !93
  %i.bn = icmp ule i64 %i.bm, %i.bh
  %i.bo = icmp sgt i8 %i.bl, -1
  %or.cond.i.i = and i1 %i.bn, %i.bo
  br i1 %or.cond.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i.i
  store i64 0, ptr %i.ax, align 8, !tbaa !93
  br label %extend_prefix_length.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !76
  %.not19.i.i = icmp eq i8 %i.bl, %i.bq
  br i1 %.not19.i.i, label %.preheader.i.i, label %extend_prefix_length.exit.i

extend_prefix_length.exit.i:                      ; preds = %bb.k, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l
  %5 = phi i64 [ %i.ay, %bb.l ], [ 0, %bb.p ], [ %i.ay, %bb.n ], [ 0, %bb.m ], [ %i.bm, %bb.q ], [ 0, %bb.k ] ; 3 uses
  %i.br = add nuw i64 %.157.i, 1                  ; 3 uses
  %i.bs = load i64, ptr %i.q, align 8, !tbaa !158
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.r, label %extend_prefix_length.exit55.i

bb.r:                                             ; preds = %extend_prefix_length.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !75 ; 2 uses
  %i.bw = load i64, ptr %i.as, align 8, !tbaa !162
  %.not.i48.i = icmp eq i64 %5, 0
  br i1 %.not.i48.i, label %extend_prefix_length.exit55.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.av, align 8, !tbaa !75 ; 2 uses
  %bcmp.i49.i = tail call i32 @bcmp(ptr %i.bx, ptr readonly %i.bv, i64 %5)
  %.not17.i50.i = icmp eq i32 %bcmp.i49.i, 0
  br i1 %.not17.i50.i, label %.preheader.i51.i, label %extend_prefix_length.exit55.i

.preheader.i51.i:                                 ; preds = %bb.s, %bb.v
  %i.by = phi i64 [ %i.cb, %bb.v ], [ %5, %bb.s ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !76  ; 3 uses
  %.not18.i52.i = icmp eq i8 %i.ca, 0
  br i1 %.not18.i52.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader.i51.i
  %i.cb = add i64 %i.by, 1                        ; 3 uses
  store i64 %i.cb, ptr %i.ax, align 8, !tbaa !93
  %i.cc = icmp ule i64 %i.cb, %i.bw
  %i.cd = icmp sgt i8 %i.ca, -1
  %or.cond.i53.i = and i1 %i.cc, %i.cd
  br i1 %or.cond.i53.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader.i51.i
  store i64 0, ptr %i.ax, align 8, !tbaa !93
  br label %extend_prefix_length.exit55.i

bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !76
  %.not19.i54.i = icmp eq i8 %i.ca, %i.cf
  br i1 %.not19.i54.i, label %.preheader.i51.i, label %extend_prefix_length.exit55.i

extend_prefix_length.exit55.i:                    ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %extend_prefix_length.exit.i
  %i.cg = load i64, ptr %i.q, align 8, !tbaa !158
  %i.ch = icmp ult i64 %i.br, %i.cg
  br i1 %i.ch, label %bb.i, label %find_unique_prefixes.exit, !llvm.loop !156

find_unique_prefixes.exit:                        ; preds = %extend_prefix_length.exit55.i, %bb.e, %._crit_edge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cn = select i1 %.not, ptr @.str.94, ptr @.str.95
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %.tail149.thread.outer

.tail149.thread.outer:                            ; preds = %.tail149.thread.outer.backedge, %find_unique_prefixes.exit
  %.ph = phi ptr [ @strbuf_slopbuf, %find_unique_prefixes.exit ], [ %i.gt, %.tail149.thread.outer.backedge ]
  %.092.ph = phi i64 [ %i.h, %find_unique_prefixes.exit ], [ %.5.ph, %.tail149.thread.outer.backedge ] ; 3 uses
  br label %.tail149.thread

.tail149.thread:                                  ; preds = %.tail149.thread.outer, %bb.ab
  %6 = phi ptr [ %.pre.pre, %bb.ab ], [ %.ph, %.tail149.thread.outer ] ; 2 uses
  store i64 0, ptr %i.ci, align 8, !tbaa !92
  %.not9.i = icmp eq ptr %6, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.tail149.thread
  store i8 0, ptr %6, align 1, !tbaa !76
  br label %strbuf_setlen.exit

bb.x:                                             ; preds = %.tail149.thread
  %i.cq = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !76
  %.not10.i = icmp eq i8 %i.cq, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #20
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.w, %bb.x
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !74
  call fastcc void @list(ptr noundef %0, ptr noundef %1, ptr noundef %i.cr, ptr noundef %2)
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !68
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !26
  %i.cu = call i32 (ptr, ptr, ptr, ...) @color_fprintf(ptr noundef %i.cs, ptr noundef nonnull %i.cl, ptr noundef nonnull @.str.22, ptr noundef %i.ct) #17 ; 0 uses
  %i.cv = load ptr, ptr @stdout, align 8, !tbaa !68
  %i.cw = call i32 @fputs(ptr noundef nonnull %i.cn, ptr noundef %i.cv) ; 0 uses
  %i.cx = load ptr, ptr @stdout, align 8, !tbaa !68
  %i.cy = call i32 @fflush(ptr noundef %i.cx)     ; 0 uses
  %i.cz = call i32 @git_read_line_interactively(ptr noundef nonnull %3) #17
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %strbuf_setlen.exit
  %i.db = load ptr, ptr @stdout, align 8, !tbaa !68
  %i.dc = call i32 @putc(i32 noundef 10, ptr noundef %i.db), !inline_history !1 ; 0 uses
  %spec.select = select i1 %i.n, i64 -2, i64 %.092.ph
  br label %select.unfold140

bb.aa:                                            ; preds = %strbuf_setlen.exit
  %i.dd = load i64, ptr %i.ci, align 8, !tbaa !92
  %.not103 = icmp eq i64 %i.dd, 0
  br i1 %.not103, label %select.unfold140, label %sub_0

sub_0:                                            ; preds = %bb.aa
  %i.de = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 3 uses
  %i.df = load i8, ptr %i.de, align 1
  %.not168 = icmp eq i8 %i.df, 63
  br i1 %.not168, label %.tail, label %.preheader.preheader

.tail:                                            ; preds = %sub_0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.ab, label %.preheader.preheader

.preheader.preheader:                             ; preds = %sub_0, %.tail
  br label %.preheader.outer

bb.ab:                                            ; preds = %.tail
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !28
  call void %i.dj(ptr noundef nonnull %0) #17
  %.pre.pre = load ptr, ptr %i.cj, align 8, !tbaa !41
  br label %.tail149.thread

.preheader:                                       ; preds = %.preheader.outer, %bb.ac
  %.089 = phi ptr [ %i.dm, %bb.ac ], [ %.089.ph, %.preheader.outer ] ; 4 uses
  %i.dk = call i64 @strcspn(ptr noundef %.089, ptr noundef nonnull @.str.21) #18 ; 2 uses
  %.not105 = icmp eq i64 %i.dk, 0
  %i.dl = load i8, ptr %.089, align 1, !tbaa !76  ; 2 uses
  br i1 %.not105, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader
  %.not106 = icmp eq i8 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.089, i64 1
  br i1 %.not106, label %select.unfold, label %.preheader

bb.ad:                                            ; preds = %.preheader
  %i.dn = icmp eq i8 %i.dl, 45                    ; 4 uses
  %.190.idx = zext i1 %i.dn to i64
  %.190 = getelementptr inbounds nuw i8, ptr %.089, i64 %.190.idx ; 10 uses
  %i.do = sext i1 %i.dn to i64
  %.085 = add i64 %i.dk, %i.do                    ; 5 uses
  %not. = xor i1 %i.dn, true
  %.084 = zext i1 %not. to i32                    ; 6 uses
  %i.dp = icmp eq i64 %.085, 1
  %.pre = load i8, ptr %.190, align 1, !tbaa !76  ; 2 uses
  %i.dq = icmp eq i8 %.pre, 42
  %or.cond = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dr = load i64, ptr %i.s, align 8, !tbaa !77
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.ds = zext i8 %.pre to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !76
  %i.dv = and i8 %i.du, 2
  %.not107 = icmp eq i8 %i.dv, 0
  br i1 %.not107, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.dw = call i64 @__isoc23_strtoul(ptr noundef nonnull %.190, ptr noundef nonnull %i.b, i32 noundef 10) #17 ; 2 uses
  %i.dx = add i64 %i.dw, -1                       ; 3 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.190, i64 %.085 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = load i8, ptr %i.dy, align 1, !tbaa !76
  %i.ec = icmp eq i8 %i.eb, 45
  br i1 %i.ec, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 4 uses
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !33
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !76
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !76
  %i.ei = and i8 %i.eh, 2
  %.not108 = icmp eq i8 %i.ei, 0
  br i1 %.not108, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ed, ptr noundef nonnull %i.b, i32 noundef 10) #17
  %.pre183 = load ptr, ptr %i.b, align 8, !tbaa !33
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ek = load i64, ptr %i.s, align 8, !tbaa !77
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.el = phi ptr [ %.pre183, %bb.aj ], [ %i.ed, %bb.ak ]
  %.0 = phi i64 [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ]
  %.not109 = icmp eq ptr %i.el, %i.dz
  %spec.select116 = select i1 %.not109, i64 %i.dx, i64 -1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ag, %bb.ah
  %.080 = phi i64 [ %i.dx, %bb.ah ], [ %i.dx, %bb.ag ], [ %spec.select116, %bb.al ]
  %.1 = phi i64 [ -1, %bb.ah ], [ %i.dw, %bb.ag ], [ %.0, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.an

bb.an:                                            ; preds = %bb.af, %bb.am, %bb.ae
  %.181 = phi i64 [ 0, %bb.ae ], [ %.080, %bb.am ], [ -1, %bb.af ] ; 2 uses
  %.2 = phi i64 [ %i.dr, %bb.ae ], [ %.1, %bb.am ], [ -1, %bb.af ]
  %i.em = getelementptr inbounds nuw i8, ptr %.190, i64 %.085 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !76
  %.not110 = icmp eq i8 %i.en, 0
  br i1 %.not110, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = add i64 %.085, 1
  store i8 0, ptr %i.em, align 1, !tbaa !76
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.186 = phi i64 [ %i.eo, %bb.ao ], [ %.085, %bb.an ]
  %i.ep = icmp slt i64 %.181, 0
  br i1 %i.ep, label %bb.aq, label %.thread130

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.eq = call i64 @string_list_find_insert_index(ptr noundef nonnull %i.p, ptr noundef nonnull %.190, ptr noundef nonnull %i.a) #17 ; 6 uses
  %i.er = load i64, ptr %i.s, align 8, !tbaa !77  ; 3 uses
  %i.es = load i64, ptr %i.q, align 8, !tbaa !158 ; 2 uses
  %.not.i122 = icmp eq i64 %i.er, %i.es
  br i1 %.not.i122, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.92, i32 noundef 152, ptr noundef nonnull @.str.99, i64 noundef %i.er, i64 noundef %i.es) #20
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.et = load i8, ptr %i.a, align 1, !tbaa !163, !range !164, !noundef !165
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %find_unique.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not31.i = icmp eq i64 %i.eq, 0
  br i1 %.not31.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = load ptr, ptr %i.p, align 8, !tbaa !159
  %i.ew = getelementptr [16 x i8], ptr %i.ev, i64 %i.eq
  %i.ex = getelementptr i8, ptr %i.ew, i64 -16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !75
  %i.ez = call zeroext i1 @starts_with(ptr noundef %i.ey, ptr noundef nonnull %.190) #17
  br i1 %i.ez, label %.thread, label %._crit_edge.i123

._crit_edge.i123:                                 ; preds = %bb.au
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !158
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i123, %bb.at
  %i.fa = phi i64 [ %.pre.i, %._crit_edge.i123 ], [ %i.er, %bb.at ] ; 2 uses
  %i.fb = add i64 %i.eq, 1                        ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  br i1 %i.fc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fd = load ptr, ptr %i.p, align 8, !tbaa !159
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fb
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !75
  %i.fg = call zeroext i1 @starts_with(ptr noundef %i.ff, ptr noundef nonnull %.190) #17
  br i1 %i.fg, label %.thread, label %._crit_edge33.i

._crit_edge33.i:                                  ; preds = %bb.aw
  %.pre34.i = load i64, ptr %i.q, align 8, !tbaa !158
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge33.i, %bb.av
  %i.fh = phi i64 [ %.pre34.i, %._crit_edge33.i ], [ %i.fa, %bb.av ]
  %i.fi = icmp ult i64 %i.eq, %i.fh
  br i1 %i.fi, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  %i.fj = load ptr, ptr %i.p, align 8, !tbaa !159
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.eq
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !75
  %i.fm = call zeroext i1 @starts_with(ptr noundef %i.fl, ptr noundef nonnull %.190) #17
  br i1 %i.fm, label %find_unique.exit, label %.thread

.thread:                                          ; preds = %bb.ax, %bb.ay, %bb.au, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

find_unique.exit:                                 ; preds = %bb.as, %bb.ay
  %.pn32.i = load ptr, ptr %i.p, align 8, !tbaa !159
  %.pn.i = getelementptr inbounds nuw [16 x i8], ptr %.pn32.i, i64 %i.eq
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !32
  %i.fn = load ptr, ptr %1, align 8, !tbaa !73
  %i.fo = ptrtoint ptr %.0.i to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %.fr147 = freeze i64 %i.fq
  %i.fr = ashr i64 %.fr147, 4                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.fs = add nuw nsw i64 %i.fr, 1
  %i.ft = icmp slt i64 %i.fr, 0
  br i1 %i.ft, label %.loopexit, label %.thread130

.thread130:                                       ; preds = %bb.ap, %find_unique.exit
  %.3134 = phi i64 [ %i.fs, %find_unique.exit ], [ %.2, %bb.ap ] ; 2 uses
  %.282133 = phi i64 [ %i.fr, %find_unique.exit ], [ %.181, %bb.ap ] ; 9 uses
  %i.fu = load i64, ptr %i.s, align 8, !tbaa !77  ; 2 uses
  %.not111 = icmp ult i64 %.282133, %i.fu
  br i1 %.not111, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %.thread130
  %i.fv = add nuw nsw i64 %.282133, 1
  %.not112 = icmp ne i64 %i.fv, %.3134
  %or.cond.not148 = select i1 %.not, i1 %.not112, i1 false
  br i1 %or.cond.not148, label %.loopexit, label %bb.bb

.loopexit:                                        ; preds = %bb.az, %.thread130, %find_unique.exit, %.thread
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !68
  %i.fx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i = icmp eq i32 %i.fx, 0
  br i1 %.not4.i, label %_.exit, label %bb.ba

bb.ba:                                            ; preds = %.loopexit
  %i.fy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %.loopexit, %bb.ba
  %.0.i124 = phi ptr [ %i.fy, %bb.ba ], [ @.str.97, %.loopexit ]
  %i.fz = call i32 (ptr, ptr, ptr, ...) @color_fprintf_ln(ptr noundef %i.fw, ptr noundef nonnull %i.co, ptr noundef %.0.i124, ptr noundef nonnull %.190) #17 ; 0 uses
  br label %select.unfold

bb.bb:                                            ; preds = %bb.az
  br i1 %.not, label %select.unfold, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %spec.select118 = call i64 @llvm.umin.i64(i64 %.3134, i64 %i.fu) ; 4 uses
  %i.ga = icmp slt i64 %.282133, %spec.select118
  br i1 %i.ga, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bc
  %i.gb = load ptr, ptr %i.ck, align 8, !tbaa !74 ; 3 uses
  %i.gc = select i1 %i.dn, i64 -1, i64 1          ; 3 uses
  %i.gd = sub i64 %spec.select118, %.282133
  %.neg = add nuw i64 %.282133, 1
  %xtraiter262 = and i64 %i.gd, 1
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.282133 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !40
  %.not113.prol = icmp eq i32 %i.gf, %.084
  br i1 %.not113.prol, label %.prol.loopexit.unr-lcssa, label %bb.bd

bb.bd:                                            ; preds = %.prol.preheader
  store i32 %.084, ptr %i.ge, align 4, !tbaa !40
  %i.gg = add nsw i64 %.294.ph, %i.gc
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.bd, %.prol.preheader
  %.496.prol = phi i64 [ %i.gg, %bb.bd ], [ %.294.ph, %.prol.preheader ] ; 2 uses
  %i.gh = add nuw nsw i64 %.282133, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.496.lcssa.unr = phi i64 [ poison, %.lr.ph ], [ %.496.prol, %.prol.loopexit.unr-lcssa ]
  %.383167.unr = phi i64 [ %.282133, %.lr.ph ], [ %i.gh, %.prol.loopexit.unr-lcssa ]
  %.395166.unr = phi i64 [ %.294.ph, %.lr.ph ], [ %.496.prol, %.prol.loopexit.unr-lcssa ]
  %i.gi = icmp eq i64 %spec.select118, %.neg
  br i1 %i.gi, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.bh
  %.383167 = phi i64 [ %i.gq, %bb.bh ], [ %.383167.unr, %.prol.loopexit ] ; 3 uses
  %.395166 = phi i64 [ %.496.1, %bb.bh ], [ %.395166.unr, %.prol.loopexit ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.383167 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !40
  %.not113 = icmp eq i32 %i.gk, %.084
  br i1 %.not113, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.new
  store i32 %.084, ptr %i.gj, align 4, !tbaa !40
  %i.gl = add nsw i64 %.395166, %i.gc
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.new, %bb.be
  %.496 = phi i64 [ %i.gl, %bb.be ], [ %.395166, %.lr.ph.new ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.383167
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !40
  %.not113.1 = icmp eq i32 %i.go, %.084
  br i1 %.not113.1, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 %.084, ptr %i.gn, align 4, !tbaa !40
  %i.gp = add nsw i64 %.496, %i.gc
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.496.1 = phi i64 [ %i.gp, %bb.bg ], [ %.496, %bb.bf ] ; 2 uses
  %i.gq = add nuw nsw i64 %.383167, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gq, %spec.select118
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !157

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.bh, %bb.bc
  %.395.lcssa = phi i64 [ %.294.ph, %bb.bc ], [ %.496.lcssa.unr, %.prol.loopexit ], [ %.496.1, %bb.bh ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.190, i64 %.186
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %.preheader.preheader, %._crit_edge
  %.294.ph = phi i64 [ %.092.ph, %.preheader.preheader ], [ %.395.lcssa, %._crit_edge ] ; 6 uses
  %.089.ph = phi ptr [ %i.de, %.preheader.preheader ], [ %i.gr, %._crit_edge ]
  br label %.preheader

select.unfold:                                    ; preds = %bb.ac, %bb.bb, %_.exit
  %.5.ph = phi i64 [ %.294.ph, %_.exit ], [ %.294.ph, %bb.ac ], [ %.282133, %bb.bb ] ; 4 uses
  %i.gs = icmp ne i64 %.5.ph, -1
  %or.cond3 = select i1 %i.n, i1 %i.gs, i1 false
  br i1 %or.cond3, label %select.unfold140, label %sub_0150

sub_0150:                                         ; preds = %select.unfold
  %i.gt = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 3 uses
  %i.gu = load i8, ptr %i.gt, align 1
  %.not169 = icmp eq i8 %i.gu, 42
  br i1 %.not169, label %.tail149, label %.tail149.thread.outer.backedge

.tail149:                                         ; preds = %sub_0150
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = icmp eq i8 %i.gw, 0
  br i1 %i.gx, label %select.unfold140, label %.tail149.thread.outer.backedge

.tail149.thread.outer.backedge:                   ; preds = %.tail149, %sub_0150
  br label %.tail149.thread.outer

select.unfold140:                                 ; preds = %bb.aa, %.tail149, %select.unfold, %bb.z
  %.6.ph = phi i64 [ %spec.select, %bb.z ], [ %.092.ph, %bb.aa ], [ %.5.ph, %.tail149 ], [ %.5.ph, %select.unfold ]
  call void @strbuf_release(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %.6.ph
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @strbuf_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @color_fprintf_ln(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @get_modified_files(ptr noundef %0, i32 noundef range(i32 0, 3) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.object_id, align 4          ; 6 uses
  %7 = alloca %struct.collection_status, align 8  ; 27 uses
  %8 = alloca %struct.rev_info, align 8           ; 48 uses
  %9 = alloca %struct.setup_revision_opt, align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = tail call ptr @get_main_ref_store(ptr noundef %0) #17
  %i.b = call ptr @refs_resolve_ref_unsafe(ptr noundef %i.a, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull %6, ptr noundef null) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, i8 0, i64 96, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  call void @discard_index(ptr noundef %i.d) #17
  %i.e = call i32 @repo_read_index_preload(ptr noundef %0, ptr noundef %3, i32 noundef 0) #17
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.c ], [ @.str.31, %bb.b ]
  %i.i = call i32 (ptr, ...) @error(ptr noundef %.0.i) #17 ; 0 uses
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  call void @string_list_clear(ptr noundef %2, i32 noundef 1) #17
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @string_list_clear(ptr noundef nonnull %i.j, i32 noundef 0) #17
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  call void @free(ptr noundef %i.l) #17
  store ptr null, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %2, ptr %i.m, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  call void @hashmap_init(ptr noundef nonnull %i.n, ptr noundef nonnull @pathname_entry_cmp, ptr noundef null, i64 noundef 0) #17
  %i.o = icmp eq i32 %1, 2
  %i.p = zext i1 %i.o to i32                      ; 5 uses
  %i.q = icmp ne i32 %1, 0                        ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 1800 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 2040 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 2048 ; 6 uses
  %.not29 = icmp eq ptr %3, null                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 296 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 1724 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 %i.p, ptr %7, align 8, !tbaa !100
  %i.y = load i8, ptr %i.r, align 8
  %i.z = and i8 %i.y, -2
  store i8 %i.z, ptr %i.r, align 8
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.d
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.ab = call ptr @empty_tree_oid_hex(ptr noundef %i.aa) #17
  store ptr %i.ab, ptr %9, align 8, !tbaa !167
  call void @repo_init_revisions(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef null) #17
  %i.ac = call i32 @setup_revisions(i32 noundef 0, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %9) #17 ; 0 uses
  store i32 4096, ptr %i.t, align 8, !tbaa !199
  store ptr @collect_changes_cb, ptr %i.u, align 8, !tbaa !200
  store ptr %7, ptr %i.v, align 8, !tbaa !201
  br i1 %.not29, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  call void @copy_pathspec(ptr noundef nonnull %i.w, ptr noundef nonnull %3) #17
  %i.ad = load i32, ptr %7, align 8, !tbaa !100
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i

.split.us.split.us.preheader:                     ; preds = %.split.us
  %i.af = load i32, ptr %7, align 8, !tbaa !100
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.us.split.us.preheader
  store i32 1, ptr %i.x, align 4, !tbaa !202
  call void @run_diff_files(ptr noundef nonnull %8, i32 noundef 0) #17
  br label %.split.us.split.us.1

bb.f:                                             ; preds = %.split.us.split.us.preheader
  call void @run_diff_index(ptr noundef nonnull %8, i32 noundef 1) #17
  br label %.split.us.split.us.1

.split.us.split.us.1:                             ; preds = %bb.f, %bb.e
  call void @release_revisions(ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %storemerge.us.us.1 = xor i32 %i.p, 1
  store i32 %storemerge.us.us.1, ptr %7, align 8, !tbaa !100
  %i.ah = zext i1 %i.q to i8
  %i.ai = load i8, ptr %i.r, align 8
  %i.aj = and i8 %i.ai, -2
  %i.ak = or disjoint i8 %i.aj, %i.ah
  store i8 %i.ak, ptr %i.r, align 8
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.am = call ptr @empty_tree_oid_hex(ptr noundef %i.al) #17
  store ptr %i.am, ptr %9, align 8, !tbaa !167
  call void @repo_init_revisions(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef null) #17
  %i.an = call i32 @setup_revisions(i32 noundef 0, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %9) #17 ; 0 uses
  store i32 4096, ptr %i.t, align 8, !tbaa !199
  store ptr @collect_changes_cb, ptr %i.u, align 8, !tbaa !200
  store ptr %7, ptr %i.v, align 8, !tbaa !201
  %i.ao = load i32, ptr %7, align 8, !tbaa !100
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split.us.split.us.1
  store i32 1, ptr %i.x, align 4, !tbaa !202
  call void @run_diff_files(ptr noundef nonnull %8, i32 noundef 0) #17
  br label %.split32.us

bb.h:                                             ; preds = %.split.us.split.us.1
  call void @run_diff_index(ptr noundef nonnull %8, i32 noundef 1) #17
  br label %.split32.us

bb.i:                                             ; preds = %.split.us.split.preheader
  store i32 1, ptr %i.x, align 4, !tbaa !202
  call void @run_diff_files(ptr noundef nonnull %8, i32 noundef 0) #17
  br label %.split.us.split.1

bb.j:                                             ; preds = %.split.us.split.preheader
  call void @run_diff_index(ptr noundef nonnull %8, i32 noundef 1) #17
  br label %.split.us.split.1

.split.us.split.1:                                ; preds = %bb.j, %bb.i
  call void @release_revisions(ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %storemerge.us.1 = xor i32 %i.p, 1
  store i32 %storemerge.us.1, ptr %7, align 8, !tbaa !100
  %i.aq = zext i1 %i.q to i8
  %i.ar = load i8, ptr %i.r, align 8
  %i.as = and i8 %i.ar, -2
  %i.at = or disjoint i8 %i.as, %i.aq
  store i8 %i.at, ptr %i.r, align 8
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.av = call ptr @empty_tree_oid_hex(ptr noundef %i.au) #17
  store ptr %i.av, ptr %9, align 8, !tbaa !167
  call void @repo_init_revisions(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef null) #17
  %i.aw = call i32 @setup_revisions(i32 noundef 0, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %9) #17 ; 0 uses
  store i32 4096, ptr %i.t, align 8, !tbaa !199
  store ptr @collect_changes_cb, ptr %i.u, align 8, !tbaa !200
  store ptr %7, ptr %i.v, align 8, !tbaa !201
  call void @copy_pathspec(ptr noundef nonnull %i.w, ptr noundef nonnull %3) #17
  %i.ax = load i32, ptr %7, align 8, !tbaa !100
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split.us.split.1
  store i32 1, ptr %i.x, align 4, !tbaa !202
end_hunk_0
