Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/js-norm?download=true
inline.NumInlined: 105
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@cli_js_parse_done:bb.a
  store i64 %i.pc, ptr %i.cp, align 8, !tbaa !26
  br label %bb.cj

bb.cj:                                            ; preds = %.thread.i.i.i, %._crit_edge.i99.i
  %i.pf = phi i64 [ %i.pc, %.thread.i.i.i ], [ %i.pa, %._crit_edge.i99.i ]
  %i.pg = phi ptr [ %i.pe, %.thread.i.i.i ], [ %.pre139.pre.i, %._crit_edge.i99.i ] ; 3 uses
  %i.ph = getelementptr [16 x i8], ptr %i.pg, i64 %i.nh
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %i.pg, i64 %i.ns
  %i.pj = sub nuw i64 %i.oq, %i.ns
  %i.pk = shl i64 %i.pj, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ph, ptr nonnull align 8 %i.pi, i64 %i.pk, i1 false)
  store i64 %i.oz, ptr %i.co, align 8, !tbaa !21
  br label %replace_token_range.exit.i

replace_token_range.exit.i:                       ; preds = %bb.cj, %bb.ci, %.replace_token_range.exit_crit_edge.i
  %.pre139.i = phi ptr [ %.pre139.pre.i, %.replace_token_range.exit_crit_edge.i ], [ %.pre139.pre.i, %bb.ci ], [ %i.pg, %bb.cj ] ; 2 uses
  %i.pl = phi i64 [ %.pre138.i, %.replace_token_range.exit_crit_edge.i ], [ %i.pa, %bb.ci ], [ %i.pf, %bb.cj ]
  %i.pm = phi i64 [ %i.oq, %.replace_token_range.exit_crit_edge.i ], [ %i.oq, %bb.ci ], [ %i.oz, %bb.cj ] ; 3 uses
  %i.pn = load i64, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %i.po = add i64 %i.pn, %i.pm                    ; 2 uses
  %i.pp = icmp ult i64 %i.pl, %i.po
  br i1 %i.pp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %replace_token_range.exit.i
  %i.pq = add i64 %i.po, 1024                     ; 2 uses
  %i.pr = shl i64 %i.pq, 4
  %i.ps = call ptr @cli_max_realloc(ptr noundef %.pre139.i, i64 noundef %i.pr) #20 ; 3 uses
  %.not.i.i105.i = icmp eq ptr %i.ps, null
  br i1 %.not.i.i105.i, label %append_tokens.exit.i, label %.thread.i.i106.i

.thread.i.i106.i:                                 ; preds = %bb.ck
  store ptr %i.ps, ptr %2, align 8, !tbaa !22
  store i64 %i.pq, ptr %i.cp, align 8, !tbaa !26
  %.pre.i107.i = load i64, ptr %i.h, align 8, !tbaa !21
  br label %bb.cl

bb.cl:                                            ; preds = %.thread.i.i106.i, %replace_token_range.exit.i
  %i.pt = phi ptr [ %i.ps, %.thread.i.i106.i ], [ %.pre139.i, %replace_token_range.exit.i ]
  %i.pu = phi i64 [ %.pre.i107.i, %.thread.i.i106.i ], [ %i.pn, %replace_token_range.exit.i ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i64 noundef %i.pu) #20
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %i.pm
  %i.pw = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.px = load i64, ptr %i.h, align 8, !tbaa !21
  %i.py = shl i64 %i.px, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.pv, ptr align 8 %i.pw, i64 %i.py, i1 false)
  %i.pz = load i64, ptr %i.h, align 8, !tbaa !21
  %i.qa = add i64 %i.pz, %i.pm
  store i64 %i.qa, ptr %i.co, align 8, !tbaa !21
  br label %append_tokens.exit.i

append_tokens.exit.i:                             ; preds = %free_token.exit.i, %bb.cl, %bb.ck, %bb.cc, %bb.cb
  %i.qb = load ptr, ptr %i.c, align 8, !tbaa !30
  call void @free(ptr noundef %i.qb) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %handle_df.exit.thread.i

handle_df.exit.thread.i:                          ; preds = %append_tokens.exit.i, %handle_df.exit.i, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.ac
  %.2198.i = phi i64 [ %.2.i, %handle_df.exit.i ], [ %.2.i, %append_tokens.exit.i ], [ %.073122.i, %bb.bf ], [ %.073122.i, %bb.bq ], [ %.073122.i, %bb.bp ], [ %.1.i, %bb.ac ], [ %.073122.i, %bb.bk ], [ %.073122.i, %bb.bj ], [ %.073122.i, %bb.bi ], [ %.073122.i, %bb.bh ], [ %.073122.i, %bb.bn ], [ %.073122.i, %bb.be ], [ %.073122.i, %bb.bm ], [ %.073122.i, %bb.bo ] ; 2 uses
  %i.qc = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %.2198.i ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !24
  %i.qg = icmp eq i32 %i.qf, 73
  br i1 %i.qg, label %bb.cm, label %state_update_scope.exit.i

bb.cm:                                            ; preds = %handle_df.exit.thread.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 12
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !28
  %.not.i109.i = icmp eq i32 %i.qi, 3
  br i1 %.not.i109.i, label %bb.cn, label %.thread.i110.i

bb.cn:                                            ; preds = %bb.cm
  %i.qj = load ptr, ptr %i.qd, align 8, !tbaa !8  ; 2 uses
  %.not13.i.i = icmp eq ptr %i.qj, null
  br i1 %.not13.i.i, label %.thread.i110.i, label %state_update_scope.exit.sink.split.i

.thread.i110.i:                                   ; preds = %bb.cn, %bb.cm
  %i.qk = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !35 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.qm, null
  br i1 %.not14.i.i, label %state_update_scope.exit.i, label %state_update_scope.exit.sink.split.i

state_update_scope.exit.sink.split.i:             ; preds = %.thread.i110.i, %bb.cn
  %.sink.i = phi ptr [ %i.qm, %.thread.i110.i ], [ %i.qj, %bb.cn ]
  store ptr %.sink.i, ptr %i.cq, align 8, !tbaa !31
  br label %state_update_scope.exit.i

state_update_scope.exit.i:                        ; preds = %state_update_scope.exit.sink.split.i, %.thread.i110.i, %handle_df.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.qn = add i64 %.2198.i, 1                     ; 2 uses
  %i.qo = load i64, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %i.qp = icmp ult i64 %i.qn, %i.qo
  br i1 %i.qp, label %bb.u, label %run_decoders.exit

run_decoders.exit:                                ; preds = %state_update_scope.exit.i, %bb.c, %.loopexit, %run_folders.exit
  %i.qq = load ptr, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !36
  call void @free(ptr noundef %i.qr) #20
  call void @free(ptr noundef %i.qq) #20
  store ptr null, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @cli_js_process_buffer(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.token, align 8              ; 35 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.9) #20
  br label %yylex.exit.thread138

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %1, ptr %i.g, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %2, ptr %i.h, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 0, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 -1, ptr %i.j, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 7, ptr %i.k, align 4, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 20 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.cs, %bb.c
  %i.s = phi i64 [ -1, %bb.c ], [ %.pre236, %bb.cs ] ; 2 uses
  %i.t = phi i64 [ 0, %bb.c ], [ %.pre234, %bb.cs ] ; 2 uses
  %i.u = phi ptr [ %1, %bb.c ], [ %.pre232, %bb.cs ] ; 5 uses
  %i.v = phi i64 [ %2, %bb.c ], [ %.pre230, %bb.cs ] ; 3 uses
  %i.w = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.cs ] ; 21 uses
  %.093 = phi ptr [ %i.b, %bb.c ], [ %.2, %bb.cs ] ; 26 uses
  store i32 0, ptr %i.l, align 4, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ac = icmp eq i64 %i.t, %i.s
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !20
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #20
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !40
  %.pre.i = load i64, ptr %i.x, align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ak = phi i64 [ %i.v, %bb.e ], [ %.pre.i, %bb.f ], [ %i.v, %bb.d ] ; 2 uses
  %i.al = phi i64 [ %i.s, %bb.e ], [ %i.aj, %bb.f ], [ %i.t, %bb.d ] ; 3 uses
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 6 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !71
  %i.ap = icmp ult i64 %i.al, %i.ak
  br i1 %i.ap, label %.lr.ph142.i, label %yylex.exit.thread138

.lr.ph142.i:                                      ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.backedge.i, %.lr.ph142.i
  %i.as = phi i64 [ %i.al, %.lr.ph142.i ], [ %i.bm, %.backedge.i ] ; 6 uses
  %i.at = phi i64 [ %i.ak, %.lr.ph142.i ], [ %i.bn, %.backedge.i ] ; 6 uses
  %i.au = load i32, ptr %i.am, align 8, !tbaa !20
  switch i32 %i.au, label %bb.ao [
    i32 0, label %bb.i
    i32 4, label %bb.ag
    i32 5, label %bb.ah
    i32 6, label %bb.ai
    i32 1, label %.preheader.i
    i32 3, label %bb.am
    i32 2, label %.preheader113.i
  ]

.preheader113.i:                                  ; preds = %bb.h
  %4 = icmp ult i64 %i.as, %i.at
  br i1 %4, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.h
  %i.av = add nuw i64 %i.as, 1                    ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.at
  br i1 %i.aw, label %.lr.ph140.i, label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %i.aq, align 8, !tbaa !41
  %i.ay = icmp ugt i64 %i.ax, 32768
  br i1 %i.ay, label %bb.j, label %textbuf_clean.exit.i

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.ba = tail call ptr @cli_max_realloc(ptr noundef %i.az, i64 noundef 32768) #20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 32768, ptr %i.aq, align 8, !tbaa !41
  %.pre167.i = load i64, ptr %i.aa, align 8, !tbaa !40
  br label %textbuf_clean.exit.i

textbuf_clean.exit.i:                             ; preds = %bb.l, %bb.i
  %i.bb = phi i64 [ %i.as, %bb.i ], [ %.pre167.i, %bb.l ] ; 16 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !43
  %i.bc = add i64 %i.bb, 1                        ; 4 uses
  store i64 %i.bc, ptr %i.aa, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @ctype, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !27
  switch i32 %i.bh, label %.backedge.i [
    i32 15, label %yylex.exit.thread.thread172
    i32 1, label %bb.m
    i32 2, label %bb.w
    i32 3, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 6, label %bb.af
    i32 7, label %yylex.exit.thread.thread163
    i32 8, label %yylex.exit.thread.thread166
    i32 9, label %yylex.exit.thread.thread169
    i32 10, label %yylex.exit.thread.thread156
    i32 11, label %yylex.exit.thread.thread159
    i32 12, label %yylex.exit.thread.thread150
    i32 13, label %yylex.exit.thread.thread153
    i32 14, label %.thread.thread
  ]

bb.m:                                             ; preds = %textbuf_clean.exit.i
  %i.bi = icmp ult i64 %i.bc, %i.v
  br i1 %i.bi, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bc
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  switch i8 %i.bk, label %bb.q [
    i8 42, label %bb.o
    i8 47, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.am, align 8, !tbaa !20
  %i.bl = add i64 %i.bb, 2                        ; 2 uses
  store i64 %i.bl, ptr %i.aa, align 8, !tbaa !40
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.i, %.loopexit.i, %bb.p, %bb.o, %textbuf_clean.exit.i
  %i.bm = phi i64 [ %.pre-phi.i, %.loopexit.i ], [ %5, %._crit_edge.i ], [ %i.bc, %textbuf_clean.exit.i ], [ %i.bl, %bb.o ], [ %i.bp, %bb.p ] ; 2 uses
  %i.bn = load i64, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %i.bo = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.h, label %yylex.exit.thread138

bb.p:                                             ; preds = %bb.n
  store i32 2, ptr %i.am, align 8, !tbaa !20
  %i.bp = add i64 %i.bb, 2                        ; 2 uses
  store i64 %i.bp, ptr %i.aa, align 8, !tbaa !40
  br label %.backedge.i

bb.q:                                             ; preds = %bb.n, %bb.m
  store i64 %i.bb, ptr %i.aa, align 8, !tbaa !40
  %i.bq = load i64, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %.not32.i.i = icmp eq i64 %i.bq, %i.bb
  br i1 %.not32.i.i, label %select.unfold._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.br = sub i64 %i.bq, %i.bb
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 5)
  %i.bs = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bb ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  br label %bb.r

bb.r:                                             ; preds = %.thread.i.i.i, %.lr.ph.i.i
  %.01733.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.cy, %.thread.i.i.i ] ; 7 uses
  %i.bv = icmp ult i64 %.01733.i.i, 5
  br i1 %i.bv, label %bb.s, label %.thread.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bw = trunc nuw nsw i64 %.01733.i.i to i32
  %i.bx = getelementptr i8, ptr %i.bt, i64 %.01733.i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @op_hash.asso_values, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cd, %i.bw
  %i.cf = load i8, ptr %i.bt, align 1, !tbaa !8   ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @op_hash.asso_values, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nuw nsw i32 %i.ce, %i.cj            ; 2 uses
  %i.cl = icmp samesign ult i32 %i.ck, 122
  br i1 %i.cl, label %bb.t, label %.thread.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr @in_op_set.oplist, i64 %i.cm ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !73 ; 4 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %i.cq = icmp eq i8 %i.cf, %i.cp
  br i1 %i.cq, label %bb.u, label %.thread.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cs = add nuw nsw i64 %.01733.i.i, 4294967295
  %i.ct = and i64 %i.cs, 4294967295
  %i.cu = tail call i32 @strncmp(ptr noundef nonnull readonly %i.bu, ptr noundef nonnull %i.cr, i64 noundef %i.ct) #21
  %.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i, label %bb.v, label %.thread.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %.01733.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !8
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %parseOperator.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %i.cy = add nsw i64 %.01733.i.i, -1             ; 2 uses
  %.not.i103.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i103.i, label %select.unfold._crit_edge.i.i, label %bb.r

select.unfold._crit_edge.i.i:                     ; preds = %bb.q, %.thread.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 1715, ptr noundef nonnull @__PRETTY_FUNCTION__.parseOperator) #22
  unreachable

parseOperator.exit.i:                             ; preds = %bb.v
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr %i.co, ptr %3, align 8, !tbaa !8
  %i.cz = add i64 %.01733.i.i, %i.bb
  store i64 %i.cz, ptr %i.aa, align 8, !tbaa !40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !74
  br label %yylex.exit

bb.w:                                             ; preds = %textbuf_clean.exit.i
  store i64 %i.bb, ptr %i.aa, align 8, !tbaa !40
  %i.dc = load i64, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %.not32.i104.i = icmp eq i64 %i.dc, %i.bb
  br i1 %.not32.i104.i, label %select.unfold._crit_edge.i110.i, label %.lr.ph.i105.i

.lr.ph.i105.i:                                    ; preds = %bb.w
  %i.dd = sub i64 %i.dc, %i.bb
  %spec.select.i106.i = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 5)
  %i.de = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.bb ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  br label %bb.x

bb.x:                                             ; preds = %.thread.i.i108.i, %.lr.ph.i105.i
  %.01733.i107.i = phi i64 [ %spec.select.i106.i, %.lr.ph.i105.i ], [ %i.ek, %.thread.i.i108.i ] ; 7 uses
  %i.dh = icmp ult i64 %.01733.i107.i, 5
  br i1 %i.dh, label %bb.y, label %.thread.i.i108.i

bb.y:                                             ; preds = %bb.x
  %i.di = trunc nuw nsw i64 %.01733.i107.i to i32
  %i.dj = getelementptr i8, ptr %i.df, i64 %.01733.i107.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 -1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !8
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @op_hash.asso_values, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dp, %i.di
  %i.dr = load i8, ptr %i.df, align 1, !tbaa !8   ; 2 uses
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @op_hash.asso_values, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8
  %i.dv = zext i8 %i.du to i32
  %i.dw = add nuw nsw i32 %i.dq, %i.dv            ; 2 uses
  %i.dx = icmp samesign ult i32 %i.dw, 122
  br i1 %i.dx, label %bb.z, label %.thread.i.i108.i

bb.z:                                             ; preds = %bb.y
  %i.dy = zext nneg i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr @in_op_set.oplist, i64 %i.dy ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 16, !tbaa !73 ; 4 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !8
  %i.ec = icmp eq i8 %i.dr, %i.eb
  br i1 %i.ec, label %bb.aa, label %.thread.i.i108.i

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ee = add nuw nsw i64 %.01733.i107.i, 4294967295
  %i.ef = and i64 %i.ee, 4294967295
  %i.eg = tail call i32 @strncmp(ptr noundef nonnull readonly %i.dg, ptr noundef nonnull %i.ed, i64 noundef %i.ef) #21
  %.not.i.i111.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i111.i, label %bb.ab, label %.thread.i.i108.i

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.01733.i107.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !8
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %parseOperator.exit112.i, label %.thread.i.i108.i

.thread.i.i108.i:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.ek = add nsw i64 %.01733.i107.i, -1          ; 2 uses
  %.not.i109.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i109.i, label %select.unfold._crit_edge.i110.i, label %bb.x

select.unfold._crit_edge.i110.i:                  ; preds = %bb.w, %.thread.i.i108.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 1715, ptr noundef nonnull @__PRETTY_FUNCTION__.parseOperator) #22
  unreachable

parseOperator.exit112.i:                          ; preds = %bb.ab
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr %i.ea, ptr %3, align 8, !tbaa !8
  %i.el = add i64 %.01733.i107.i, %i.bb
  store i64 %i.el, ptr %i.aa, align 8, !tbaa !40
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !74
  br label %yylex.exit

bb.ac:                                            ; preds = %textbuf_clean.exit.i
  %i.eo = call fastcc range(i32 0, 21) i32 @parseString(ptr noundef nonnull %3, ptr noundef nonnull %i.w, i8 noundef signext 34, i32 noundef 4)
  br label %yylex.exit

bb.ad:                                            ; preds = %textbuf_clean.exit.i
  %i.ep = call fastcc range(i32 0, 21) i32 @parseString(ptr noundef nonnull %3, ptr noundef nonnull %i.w, i8 noundef signext 39, i32 noundef 5)
  br label %yylex.exit

bb.ae:                                            ; preds = %textbuf_clean.exit.i
  store i64 %i.bb, ptr %i.aa, align 8, !tbaa !40
  %i.eq = call fastcc i32 @parseNumber(ptr noundef nonnull %3, ptr noundef nonnull %i.w)
  br label %yylex.exit

bb.af:                                            ; preds = %textbuf_clean.exit.i
  store i64 %i.bb, ptr %i.aa, align 8, !tbaa !40
  %i.er = call fastcc i32 @parseId(ptr noundef nonnull %3, ptr noundef nonnull %i.w)
  br label %yylex.exit

yylex.exit.thread.thread163:                      ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.32, ptr %3, align 8, !tbaa !8
  store i32 7, ptr %i.m, align 8, !tbaa !24
  br label %bb.bs

yylex.exit.thread.thread166:                      ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.33, ptr %3, align 8, !tbaa !8
  store i32 8, ptr %i.m, align 8, !tbaa !24
  br label %bb.bt

yylex.exit.thread.thread169:                      ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.34, ptr %3, align 8, !tbaa !8
  store i32 9, ptr %i.m, align 8, !tbaa !24
  br label %bb.bw

yylex.exit.thread.thread156:                      ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.35, ptr %3, align 8, !tbaa !8
  store i32 10, ptr %i.m, align 8, !tbaa !24
  br label %bb.bh

yylex.exit.thread.thread159:                      ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.10, ptr %3, align 8, !tbaa !8
  store i32 11, ptr %i.m, align 8, !tbaa !24
  br label %bb.bl

yylex.exit.thread.thread150:                      ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.36, ptr %3, align 8, !tbaa !8
  store i32 12, ptr %i.m, align 8, !tbaa !24
  br label %bb.bc

yylex.exit.thread.thread153:                      ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.1, ptr %3, align 8, !tbaa !8
  store i32 13, ptr %i.m, align 8, !tbaa !24
  br label %bb.be

.thread.thread:                                   ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.37, ptr %3, align 8, !tbaa !8
  store i32 14, ptr %i.m, align 8, !tbaa !24
  br label %.thread144

yylex.exit.thread.thread172:                      ; preds = %textbuf_clean.exit.i
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr @.str.38, ptr %3, align 8, !tbaa !8
  store i32 15, ptr %i.m, align 8, !tbaa !24
  br label %bb.ca

bb.ag:                                            ; preds = %bb.h
  %i.es = call fastcc i32 @parseString(ptr noundef nonnull %3, ptr noundef nonnull %i.w, i8 noundef signext 34, i32 noundef 4)
  br label %yylex.exit

bb.ah:                                            ; preds = %bb.h
  %i.et = call fastcc i32 @parseString(ptr noundef nonnull %3, ptr noundef nonnull %i.w, i8 noundef signext 39, i32 noundef 5)
  br label %yylex.exit

bb.ai:                                            ; preds = %bb.h
  %i.eu = call fastcc i32 @parseId(ptr noundef nonnull %3, ptr noundef nonnull %i.w)
  br label %yylex.exit

.lr.ph140.i:                                      ; preds = %.preheader.i, %bb.al
  %i.ev = phi i64 [ %i.fd, %bb.al ], [ %i.av, %.preheader.i ] ; 5 uses
  %i.ew = phi i64 [ %i.ev, %bb.al ], [ %i.as, %.preheader.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !8
  %i.ez = icmp eq i8 %i.ey, 42
  br i1 %i.ez, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph140.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ev
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !8
  %i.fc = icmp eq i8 %i.fb, 47
  br i1 %i.fc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.am, align 8, !tbaa !20
  %.pre168.i = add i64 %i.ev, 1
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.aj, %.lr.ph140.i
  store i64 %i.ev, ptr %i.aa, align 8, !tbaa !40
  %i.fd = add i64 %i.ev, 1                        ; 2 uses
  %exitcond165.not.i = icmp eq i64 %i.fd, %i.at
  br i1 %exitcond165.not.i, label %.loopexit.i, label %.lr.ph140.i

.loopexit.i:                                      ; preds = %bb.al, %bb.ak, %.preheader.i
  %.pre-phi.i = phi i64 [ %.pre168.i, %bb.ak ], [ %i.av, %.preheader.i ], [ %i.at, %bb.al ] ; 2 uses
  store i64 %.pre-phi.i, ptr %i.aa, align 8, !tbaa !40
  br label %.backedge.i

bb.am:                                            ; preds = %bb.h
  %i.fe = call fastcc i32 @parseNumber(ptr noundef nonnull %3, ptr noundef nonnull %i.w)
  br label %yylex.exit

.lr.ph.i:                                         ; preds = %.preheader113.i, %bb.an
  %i.ff = phi i64 [ %i.fi, %bb.an ], [ %i.as, %.preheader113.i ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !8
  switch i8 %i.fh, label %bb.an [
    i8 10, label %._crit_edge.i
    i8 32, label %._crit_edge.i
  ]

bb.an:                                            ; preds = %.lr.ph.i
  %i.fi = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.aa, align 8, !tbaa !40
  %exitcond.not.i = icmp eq i64 %i.fi, %i.at
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.an, %.lr.ph.i, %.lr.ph.i, %.preheader113.i
  %5 = phi i64 [ %i.as, %.preheader113.i ], [ %i.ff, %.lr.ph.i ], [ %i.ff, %.lr.ph.i ], [ %i.at, %bb.an ]
  store i32 0, ptr %i.am, align 8, !tbaa !20
  br label %.backedge.i

bb.ao:                                            ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 1855, ptr noundef nonnull @__PRETTY_FUNCTION__.yylex) #22
  unreachable

yylex.exit:                                       ; preds = %parseOperator.exit.i, %parseOperator.exit112.i, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.am
  %.0.i = phi i32 [ %i.fe, %bb.am ], [ %i.db, %parseOperator.exit.i ], [ %i.en, %parseOperator.exit112.i ], [ %i.eo, %bb.ac ], [ %i.ep, %bb.ad ], [ %i.eq, %bb.ae ], [ %i.er, %bb.af ], [ %i.et, %bb.ah ], [ %i.eu, %bb.ai ], [ %i.es, %bb.ag ] ; 4 uses
  %.not100 = icmp eq i32 %.0.i, 0
  br i1 %.not100, label %yylex.exit.thread138, label %yylex.exit.thread

yylex.exit.thread:                                ; preds = %yylex.exit
  store i32 %.0.i, ptr %i.m, align 8, !tbaa !24
  switch i32 %.0.i, label %.thread [
    i32 56, label %bb.ap
    i32 3, label %bb.aq
    i32 12, label %bb.bc
    i32 13, label %bb.be
    i32 10, label %bb.bh
    i32 11, label %bb.bl
    i32 7, label %bb.bs
    i32 8, label %bb.bt
    i32 9, label %bb.bw
    i32 15, label %bb.ca
    i32 73, label %bb.cd
    i32 20, label %bb.cf
  ]

bb.ap:                                            ; preds = %yylex.exit.thread
  %i.fj = getelementptr inbounds nuw i8, ptr %.093, i64 48
  store i32 1, ptr %i.fj, align 8, !tbaa !75
  br label %.thread

bb.aq:                                            ; preds = %yylex.exit.thread
  %i.fk = load ptr, ptr %i.e, align 8, !tbaa !16  ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %bb.ar, label %yyget_text.exit

bb.ar:                                            ; preds = %bb.aq
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !36
  br label %yyget_text.exit

yyget_text.exit:                                  ; preds = %bb.aq, %bb.ar
  %i.fo = phi ptr [ %i.fn, %bb.ar ], [ %i.fm, %bb.aq ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !45 ; 2 uses
  %.not.i107 = icmp eq i64 %i.fq, 0
  br i1 %.not.i107, label %bb.as, label %yyget_leng.exit

bb.as:                                            ; preds = %yyget_text.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !46
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.fs, i64 1)
  br label %yyget_leng.exit

yyget_leng.exit:                                  ; preds = %yyget_text.exit, %bb.as
  %i.ft = phi i64 [ %spec.select.i, %bb.as ], [ %i.fq, %yyget_text.exit ]
  %i.fu = shl i64 %i.ft, 32
  %i.fv = ashr exact i64 %i.fu, 32                ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.093, i64 52
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !76
  %i.fy = icmp eq i32 %i.fx, 14
  br i1 %i.fy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %yyget_leng.exit
  store i32 2, ptr %i.l, align 4, !tbaa !28
  %i.fz = tail call ptr @cli_safer_strdup(ptr noundef %i.fo) #20
  store ptr %i.fz, ptr %3, align 8, !tbaa !8
  store i32 74, ptr %i.m, align 8, !tbaa !24
  br label %.thread144

bb.au:                                            ; preds = %yyget_leng.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %.093, i64 48 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !75
  switch i32 %i.gb, label %.thread [
    i32 4, label %bb.av
    i32 0, label %bb.aw
    i32 2, label %bb.aw
    i32 1, label %bb.ay
    i32 5, label %bb.ay
    i32 3, label %bb.ba
  ]

bb.av:                                            ; preds = %bb.au
  %i.gc = load i64, ptr %i.q, align 8, !tbaa !77
  %i.gd = add i64 %i.gc, 1
  store i64 %i.gd, ptr %i.q, align 8, !tbaa !77
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.au, %bb.av
  store i32 1, ptr %i.l, align 4, !tbaa !28
  %i.ge = tail call ptr @cli_hashtab_find(ptr noundef nonnull %.093, ptr noundef %i.fo, i64 noundef range(i64 -2147483648, 2147483648) %i.fv) #20 ; 2 uses
  %.not.i108 = icmp eq ptr %i.ge, null
  br i1 %.not.i108, label %bb.ax, label %.sink.split.i

bb.ax:                                            ; preds = %bb.aw
  %i.gf = tail call ptr @cli_hashtab_insert(ptr noundef nonnull %.093, ptr noundef %i.fo, i64 noundef range(i64 -2147483648, 2147483648) %i.fv, i64 noundef -1) #20 ; 2 uses
  %.not12.i = icmp eq ptr %i.gf, null
  br i1 %.not12.i, label %scope_use.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ax, %bb.aw
  %.sink.i = phi ptr [ %i.ge, %bb.aw ], [ %i.gf, %bb.ax ]
  %i.gg = load ptr, ptr %.sink.i, align 8, !tbaa !78
  br label %scope_use.exit

scope_use.exit:                                   ; preds = %bb.ax, %.sink.split.i
  %.0.i109 = phi ptr [ null, %bb.ax ], [ %i.gg, %.sink.split.i ]
  store ptr %.0.i109, ptr %3, align 8, !tbaa !8
  br label %.thread

bb.ay:                                            ; preds = %bb.au, %bb.au
  store i32 1, ptr %i.l, align 4, !tbaa !28
  %i.gh = load i64, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.gi = add i64 %i.gh, 1
  store i64 %i.gi, ptr %0, align 8, !tbaa !79
  %i.gj = tail call ptr @cli_hashtab_insert(ptr noundef nonnull %.093, ptr noundef %i.fo, i64 noundef range(i64 -2147483648, 2147483648) %i.fv, i64 noundef %i.gh) #20 ; 2 uses
  %.not.i110 = icmp eq ptr %i.gj, null
  br i1 %.not.i110, label %scope_declare.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !78
  br label %scope_declare.exit

scope_declare.exit:                               ; preds = %bb.ay, %bb.az
  %i.gl = phi ptr [ %i.gk, %bb.az ], [ null, %bb.ay ]
  store ptr %i.gl, ptr %3, align 8, !tbaa !8
  store i32 2, ptr %i.ga, align 8, !tbaa !75
  %i.gm = getelementptr inbounds nuw i8, ptr %.093, i64 56
  store i32 0, ptr %i.gm, align 8, !tbaa !80
  br label %.thread

bb.ba:                                            ; preds = %bb.au
  store i32 1, ptr %i.l, align 4, !tbaa !28
  %i.gn = load i64, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.go = add i64 %i.gn, 1
  store i64 %i.go, ptr %0, align 8, !tbaa !79
  %i.gp = tail call ptr @cli_hashtab_insert(ptr noundef nonnull %.093, ptr noundef %i.fo, i64 noundef range(i64 -2147483648, 2147483648) %i.fv, i64 noundef %i.gn) #20 ; 2 uses
  %.not.i111 = icmp eq ptr %i.gp, null
  br i1 %.not.i111, label %scope_declare.exit112, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !78
  br label %scope_declare.exit112

scope_declare.exit112:                            ; preds = %bb.ba, %bb.bb
  %i.gr = phi ptr [ %i.gq, %bb.bb ], [ null, %bb.ba ]
  store ptr %i.gr, ptr %3, align 8, !tbaa !8
  store i32 4, ptr %i.ga, align 8, !tbaa !75
  br label %.thread

bb.bc:                                            ; preds = %yylex.exit.thread.thread150, %yylex.exit.thread
  %i.gs = getelementptr inbounds nuw i8, ptr %.093, i64 48 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !75
  %.off = add i32 %i.gt, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  store i32 5, ptr %i.gs, align 8, !tbaa !75
  br label %.thread

bb.be:                                            ; preds = %yylex.exit.thread.thread153, %yylex.exit.thread
  %i.gu = getelementptr inbounds nuw i8, ptr %.093, i64 48 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !75
  switch i32 %i.gv, label %.thread [
    i32 3, label %bb.bf
    i32 4, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.gw = load i64, ptr %i.q, align 8, !tbaa !77
  %i.gx = add i64 %i.gw, 1
  store i64 %i.gx, ptr %i.q, align 8, !tbaa !77
  br label %.thread

bb.bg:                                            ; preds = %bb.be
  store i32 0, ptr %i.gu, align 8, !tbaa !75
  br label %.thread

bb.bh:                                            ; preds = %yylex.exit.thread.thread156, %yylex.exit.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %.093, i64 48 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !75
  switch i32 %i.gz, label %bb.bk [
    i32 3, label %bb.bi
    i32 4, label %bb.bi
    i32 5, label %bb.bi
    i32 1, label %bb.bj
    i32 2, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh
  store i32 0, ptr %i.gy, align 8, !tbaa !75
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bh
  %i.ha = load i64, ptr %i.q, align 8, !tbaa !77
  %i.hb = add i64 %i.ha, 1
end_hunk_0
