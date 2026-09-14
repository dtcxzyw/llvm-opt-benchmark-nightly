Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/js-norm?download=true
inline.NumInlined: 105
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cli_js_parse_done:bb.a
.replace_token_range.exit_crit_edge.i:            ; preds = %bb.cf
  %.pre138.i = load i64, ptr %i.cp, align 8, !tbaa !26
  br label %replace_token_range.exit.i

.preheader.i98.i:                                 ; preds = %bb.cf
  %i.os = icmp ult i64 %i.nh, %i.ns
  br i1 %i.os, label %.lr.ph.i102.i, label %._crit_edge.i99.i

.lr.ph.i102.i:                                    ; preds = %.preheader.i98.i, %free_token.exit.i.i
  %.050.i.i = phi i64 [ %i.oy, %free_token.exit.i.i ], [ %i.nh, %.preheader.i98.i ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %.pre139.pre.i, i64 %.050.i.i ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !28
  %i.ow = icmp eq i32 %i.ov, 2
  br i1 %i.ow, label %bb.cg, label %free_token.exit.i.i

bb.cg:                                            ; preds = %.lr.ph.i102.i
  %i.ox = load ptr, ptr %i.ot, align 8, !tbaa !8  ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i.i29, label %free_token.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.ox) #20
  store ptr null, ptr %i.ot, align 8, !tbaa !8
  br label %free_token.exit.i.i

free_token.exit.i.i:                              ; preds = %bb.ch, %bb.cg, %.lr.ph.i102.i
  %i.oy = add nuw i64 %.050.i.i, 1                ; 2 uses
  %exitcond.not.i103.i = icmp eq i64 %i.oy, %i.ns
  br i1 %exitcond.not.i103.i, label %._crit_edge.i99.i, label %.lr.ph.i102.i

._crit_edge.i99.i:                                ; preds = %free_token.exit.i.i, %.preheader.i98.i
  %.neg.i = sub i64 %i.nh, %i.ns
  %i.oz = add i64 %i.oq, %.neg.i                  ; 4 uses
  %i.pa = load i64, ptr %i.cp, align 8, !tbaa !26 ; 3 uses
  %i.pb = icmp ult i64 %i.pa, %i.oz
  br i1 %i.pb, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i99.i
  %i.pc = add i64 %i.oz, 1024                     ; 3 uses
  %i.pd = shl i64 %i.pc, 4
  %i.pe = call ptr @cli_max_realloc(ptr noundef %.pre139.pre.i, i64 noundef %i.pd) #20 ; 3 uses
  %.not.i47.i.i = icmp eq ptr %i.pe, null
  br i1 %.not.i47.i.i, label %replace_token_range.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ci
  store ptr %i.pe, ptr %2, align 8, !tbaa !22
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
  %i.s = phi i64 [ -1, %bb.c ], [ %.pre237, %bb.cs ] ; 2 uses
  %i.t = phi i64 [ 0, %bb.c ], [ %.pre235, %bb.cs ] ; 2 uses
  %i.u = phi ptr [ %1, %bb.c ], [ %.pre233, %bb.cs ] ; 4 uses
  %i.v = phi i64 [ %2, %bb.c ], [ %.pre231, %bb.cs ] ; 3 uses
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
  %i.as = phi i64 [ %i.al, %.lr.ph142.i ], [ %i.bn, %.backedge.i ] ; 5 uses
  %i.at = phi i64 [ %i.ak, %.lr.ph142.i ], [ %i.bo, %.backedge.i ] ; 6 uses
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
  %i.av = icmp ult i64 %i.as, %i.at
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.h
  %i.aw = add nuw i64 %i.as, 1                    ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  br i1 %i.ax, label %.lr.ph140.i, label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !41
  %i.az = icmp ugt i64 %i.ay, 32768
  br i1 %i.az, label %bb.j, label %textbuf_clean.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.bb = tail call ptr @cli_max_realloc(ptr noundef %i.ba, i64 noundef 32768) #20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.bb, ptr %i.w, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 32768, ptr %i.aq, align 8, !tbaa !41
  %.pre167.i = load i64, ptr %i.aa, align 8, !tbaa !40
  br label %textbuf_clean.exit.i

textbuf_clean.exit.i:                             ; preds = %bb.l, %bb.i
  %i.bc = phi i64 [ %i.as, %bb.i ], [ %.pre167.i, %bb.l ] ; 16 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !43
  %i.bd = add i64 %i.bc, 1                        ; 4 uses
  store i64 %i.bd, ptr %i.aa, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @ctype, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  switch i32 %i.bi, label %.backedge.i [
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
  %i.bj = icmp ult i64 %i.bd, %i.v
  br i1 %i.bj, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bd
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  switch i8 %i.bl, label %bb.q [
    i8 42, label %bb.o
    i8 47, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.am, align 8, !tbaa !20
  %i.bm = add i64 %i.bc, 2                        ; 2 uses
  store i64 %i.bm, ptr %i.aa, align 8, !tbaa !40
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.i, %.loopexit.i, %bb.p, %bb.o, %textbuf_clean.exit.i
  %i.bn = phi i64 [ %.pre-phi.i, %.loopexit.i ], [ %i.fi, %._crit_edge.i ], [ %i.bd, %textbuf_clean.exit.i ], [ %i.bm, %bb.o ], [ %i.bq, %bb.p ] ; 2 uses
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %yylex.exit.thread138

bb.p:                                             ; preds = %bb.n
  store i32 2, ptr %i.am, align 8, !tbaa !20
  %i.bq = add i64 %i.bc, 2                        ; 2 uses
  store i64 %i.bq, ptr %i.aa, align 8, !tbaa !40
  br label %.backedge.i

bb.q:                                             ; preds = %bb.n, %bb.m
  store i64 %i.bc, ptr %i.aa, align 8, !tbaa !40
  %i.br = load i64, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %.not32.i.i = icmp eq i64 %i.br, %i.bc
  br i1 %.not32.i.i, label %select.unfold._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bs = sub i64 %i.br, %i.bc
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 5)
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bc ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  br label %bb.r

bb.r:                                             ; preds = %.thread.i.i.i, %.lr.ph.i.i
  %.01733.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.cz, %.thread.i.i.i ] ; 7 uses
  %i.bw = icmp ult i64 %.01733.i.i, 5
  br i1 %i.bw, label %bb.s, label %.thread.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc nuw nsw i64 %.01733.i.i to i32
  %i.by = getelementptr i8, ptr %i.bu, i64 %.01733.i.i
  %i.bz = getelementptr i8, ptr %i.by, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @op_hash.asso_values, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.ce, %i.bx
  %i.cg = load i8, ptr %i.bu, align 1, !tbaa !8   ; 2 uses
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @op_hash.asso_values, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.cf, %i.ck            ; 2 uses
  %i.cm = icmp samesign ult i32 %i.cl, 122
  br i1 %i.cm, label %bb.t, label %.thread.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr @in_op_set.oplist, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !73 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cr = icmp eq i8 %i.cg, %i.cq
  br i1 %i.cr, label %bb.u, label %.thread.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.ct = add nuw nsw i64 %.01733.i.i, 4294967295
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = tail call i32 @strncmp(ptr noundef nonnull readonly %i.bv, ptr noundef nonnull %i.cs, i64 noundef %i.cu) #21
  %.not.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i, label %bb.v, label %.thread.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.01733.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %parseOperator.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %i.cz = add nsw i64 %.01733.i.i, -1             ; 2 uses
  %.not.i103.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i103.i, label %select.unfold._crit_edge.i.i, label %bb.r

select.unfold._crit_edge.i.i:                     ; preds = %bb.q, %.thread.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 1715, ptr noundef nonnull @__PRETTY_FUNCTION__.parseOperator) #22
  unreachable

parseOperator.exit.i:                             ; preds = %bb.v
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr %i.cp, ptr %3, align 8, !tbaa !8
  %i.da = add i64 %.01733.i.i, %i.bc
  store i64 %i.da, ptr %i.aa, align 8, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !74
  br label %yylex.exit

bb.w:                                             ; preds = %textbuf_clean.exit.i
  store i64 %i.bc, ptr %i.aa, align 8, !tbaa !40
  %i.dd = load i64, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %.not32.i104.i = icmp eq i64 %i.dd, %i.bc
  br i1 %.not32.i104.i, label %select.unfold._crit_edge.i110.i, label %.lr.ph.i105.i

.lr.ph.i105.i:                                    ; preds = %bb.w
  %i.de = sub i64 %i.dd, %i.bc
  %spec.select.i106.i = tail call i64 @llvm.umin.i64(i64 %i.de, i64 5)
  %i.df = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.bc ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  br label %bb.x

bb.x:                                             ; preds = %.thread.i.i108.i, %.lr.ph.i105.i
  %.01733.i107.i = phi i64 [ %spec.select.i106.i, %.lr.ph.i105.i ], [ %i.el, %.thread.i.i108.i ] ; 7 uses
  %i.di = icmp ult i64 %.01733.i107.i, 5
  br i1 %i.di, label %bb.y, label %.thread.i.i108.i

bb.y:                                             ; preds = %bb.x
  %i.dj = trunc nuw nsw i64 %.01733.i107.i to i32
  %i.dk = getelementptr i8, ptr %i.dg, i64 %.01733.i107.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !8
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @op_hash.asso_values, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dq, %i.dj
  %i.ds = load i8, ptr %i.dg, align 1, !tbaa !8   ; 2 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @op_hash.asso_values, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !8
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dr, %i.dw            ; 2 uses
  %i.dy = icmp samesign ult i32 %i.dx, 122
  br i1 %i.dy, label %bb.z, label %.thread.i.i108.i

bb.z:                                             ; preds = %bb.y
  %i.dz = zext nneg i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr @in_op_set.oplist, i64 %i.dz ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !73 ; 4 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !8
  %i.ed = icmp eq i8 %i.ds, %i.ec
  br i1 %i.ed, label %bb.aa, label %.thread.i.i108.i

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ef = add nuw nsw i64 %.01733.i107.i, 4294967295
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = tail call i32 @strncmp(ptr noundef nonnull readonly %i.dh, ptr noundef nonnull %i.ee, i64 noundef %i.eg) #21
  %.not.i.i111.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i111.i, label %bb.ab, label %.thread.i.i108.i

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.01733.i107.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %parseOperator.exit112.i, label %.thread.i.i108.i

.thread.i.i108.i:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.el = add nsw i64 %.01733.i107.i, -1          ; 2 uses
  %.not.i109.i = icmp eq i64 %i.el, 0
  br i1 %.not.i109.i, label %select.unfold._crit_edge.i110.i, label %bb.x

select.unfold._crit_edge.i110.i:                  ; preds = %bb.w, %.thread.i.i108.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 1715, ptr noundef nonnull @__PRETTY_FUNCTION__.parseOperator) #22
  unreachable

parseOperator.exit112.i:                          ; preds = %bb.ab
  store i32 1, ptr %i.l, align 4, !tbaa !28
  store ptr %i.eb, ptr %3, align 8, !tbaa !8
  %i.em = add i64 %.01733.i107.i, %i.bc
  store i64 %i.em, ptr %i.aa, align 8, !tbaa !40
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !74
  br label %yylex.exit

bb.ac:                                            ; preds = %textbuf_clean.exit.i
  %i.ep = call fastcc range(i32 0, 21) i32 @parseString(ptr noundef nonnull %3, ptr noundef nonnull %i.w, i8 noundef signext 34, i32 noundef 4)
  br label %yylex.exit

bb.ad:                                            ; preds = %textbuf_clean.exit.i
  %i.eq = call fastcc range(i32 0, 21) i32 @parseString(ptr noundef nonnull %3, ptr noundef nonnull %i.w, i8 noundef signext 39, i32 noundef 5)
  br label %yylex.exit

bb.ae:                                            ; preds = %textbuf_clean.exit.i
  store i64 %i.bc, ptr %i.aa, align 8, !tbaa !40
  %i.er = call fastcc i32 @parseNumber(ptr noundef nonnull %3, ptr noundef nonnull %i.w)
  br label %yylex.exit

bb.af:                                            ; preds = %textbuf_clean.exit.i
  store i64 %i.bc, ptr %i.aa, align 8, !tbaa !40
  %i.es = call fastcc i32 @parseId(ptr noundef nonnull %3, ptr noundef nonnull %i.w)
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
  %i.et = call fastcc i32 @parseString(ptr noundef nonnull %3, ptr noundef nonnull %i.w, i8 noundef signext 34, i32 noundef 4)
  br label %yylex.exit

bb.ah:                                            ; preds = %bb.h
  %i.eu = call fastcc i32 @parseString(ptr noundef nonnull %3, ptr noundef nonnull %i.w, i8 noundef signext 39, i32 noundef 5)
  br label %yylex.exit

bb.ai:                                            ; preds = %bb.h
  %i.ev = call fastcc i32 @parseId(ptr noundef nonnull %3, ptr noundef nonnull %i.w)
  br label %yylex.exit

.lr.ph140.i:                                      ; preds = %.preheader.i, %bb.al
  %i.ew = phi i64 [ %i.fc, %bb.al ], [ %i.aw, %.preheader.i ] ; 4 uses
  %4 = getelementptr i8, ptr %i.u, i64 %i.ew      ; 2 uses
  %i.ex = getelementptr i8, ptr %4, i64 -1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !8
  %i.ez = icmp eq i8 %i.ey, 42
  br i1 %i.ez, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph140.i
  %i.fa = load i8, ptr %4, align 1, !tbaa !8
  %i.fb = icmp eq i8 %i.fa, 47
  br i1 %i.fb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.am, align 8, !tbaa !20
  %.pre168.i = add i64 %i.ew, 1
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.aj, %.lr.ph140.i
  store i64 %i.ew, ptr %i.aa, align 8, !tbaa !40
  %i.fc = add i64 %i.ew, 1                        ; 2 uses
  %exitcond165.not.i = icmp eq i64 %i.fc, %i.at
  br i1 %exitcond165.not.i, label %.loopexit.i, label %.lr.ph140.i

.loopexit.i:                                      ; preds = %bb.al, %bb.ak, %.preheader.i
  %.pre-phi.i = phi i64 [ %.pre168.i, %bb.ak ], [ %i.aw, %.preheader.i ], [ %i.at, %bb.al ] ; 2 uses
  store i64 %.pre-phi.i, ptr %i.aa, align 8, !tbaa !40
  br label %.backedge.i

bb.am:                                            ; preds = %bb.h
  %i.fd = call fastcc i32 @parseNumber(ptr noundef nonnull %3, ptr noundef nonnull %i.w)
  br label %yylex.exit

.lr.ph.i:                                         ; preds = %.preheader113.i, %bb.an
  %i.fe = phi i64 [ %i.fh, %bb.an ], [ %i.as, %.preheader113.i ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !8
  switch i8 %i.fg, label %bb.an [
    i8 10, label %._crit_edge.i
    i8 32, label %._crit_edge.i
  ]

bb.an:                                            ; preds = %.lr.ph.i
  %i.fh = add i64 %i.fe, 1                        ; 3 uses
  store i64 %i.fh, ptr %i.aa, align 8, !tbaa !40
  %exitcond.not.i = icmp eq i64 %i.fh, %i.at
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.an, %.lr.ph.i, %.lr.ph.i, %.preheader113.i
  %i.fi = phi i64 [ %i.as, %.preheader113.i ], [ %i.fe, %.lr.ph.i ], [ %i.fe, %.lr.ph.i ], [ %i.at, %bb.an ]
  store i32 0, ptr %i.am, align 8, !tbaa !20
  br label %.backedge.i

bb.ao:                                            ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 1855, ptr noundef nonnull @__PRETTY_FUNCTION__.yylex) #22
  unreachable

yylex.exit:                                       ; preds = %parseOperator.exit.i, %parseOperator.exit112.i, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.am
  %.0.i = phi i32 [ %i.fd, %bb.am ], [ %i.dc, %parseOperator.exit.i ], [ %i.eo, %parseOperator.exit112.i ], [ %i.ep, %bb.ac ], [ %i.eq, %bb.ad ], [ %i.er, %bb.ae ], [ %i.es, %bb.af ], [ %i.eu, %bb.ah ], [ %i.ev, %bb.ai ], [ %i.et, %bb.ag ] ; 4 uses
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
  %sext178 = shl i64 %i.ft, 32
  %i.fu = ashr exact i64 %sext178, 32             ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.093, i64 52
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !76
  %i.fx = icmp eq i32 %i.fw, 14
  br i1 %i.fx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %yyget_leng.exit
  store i32 2, ptr %i.l, align 4, !tbaa !28
  %i.fy = tail call ptr @cli_safer_strdup(ptr noundef %i.fo) #20
  store ptr %i.fy, ptr %3, align 8, !tbaa !8
  store i32 74, ptr %i.m, align 8, !tbaa !24
  br label %.thread144

bb.au:                                            ; preds = %yyget_leng.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %.093, i64 48 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !75
  switch i32 %i.ga, label %.thread [
    i32 4, label %bb.av
    i32 0, label %bb.aw
    i32 2, label %bb.aw
    i32 1, label %bb.ay
    i32 5, label %bb.ay
    i32 3, label %bb.ba
  ]

bb.av:                                            ; preds = %bb.au
  %i.gb = load i64, ptr %i.q, align 8, !tbaa !77
  %i.gc = add i64 %i.gb, 1
  store i64 %i.gc, ptr %i.q, align 8, !tbaa !77
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.au, %bb.av
  store i32 1, ptr %i.l, align 4, !tbaa !28
  %i.gd = tail call ptr @cli_hashtab_find(ptr noundef nonnull %.093, ptr noundef %i.fo, i64 noundef range(i64 -2147483648, 2147483648) %i.fu) #20 ; 2 uses
  %.not.i108 = icmp eq ptr %i.gd, null
  br i1 %.not.i108, label %bb.ax, label %.sink.split.i

bb.ax:                                            ; preds = %bb.aw
  %i.ge = tail call ptr @cli_hashtab_insert(ptr noundef nonnull %.093, ptr noundef %i.fo, i64 noundef range(i64 -2147483648, 2147483648) %i.fu, i64 noundef -1) #20 ; 2 uses
  %.not12.i = icmp eq ptr %i.ge, null
  br i1 %.not12.i, label %scope_use.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ax, %bb.aw
  %.sink.i = phi ptr [ %i.gd, %bb.aw ], [ %i.ge, %bb.ax ]
  %i.gf = load ptr, ptr %.sink.i, align 8, !tbaa !78
  br label %scope_use.exit

scope_use.exit:                                   ; preds = %bb.ax, %.sink.split.i
  %.0.i109 = phi ptr [ null, %bb.ax ], [ %i.gf, %.sink.split.i ]
  store ptr %.0.i109, ptr %3, align 8, !tbaa !8
  br label %.thread

bb.ay:                                            ; preds = %bb.au, %bb.au
  store i32 1, ptr %i.l, align 4, !tbaa !28
  %i.gg = load i64, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %0, align 8, !tbaa !79
  %i.gi = tail call ptr @cli_hashtab_insert(ptr noundef nonnull %.093, ptr noundef %i.fo, i64 noundef range(i64 -2147483648, 2147483648) %i.fu, i64 noundef %i.gg) #20 ; 2 uses
  %.not.i110 = icmp eq ptr %i.gi, null
  br i1 %.not.i110, label %scope_declare.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !78
  br label %scope_declare.exit

scope_declare.exit:                               ; preds = %bb.ay, %bb.az
  %i.gk = phi ptr [ %i.gj, %bb.az ], [ null, %bb.ay ]
  store ptr %i.gk, ptr %3, align 8, !tbaa !8
  store i32 2, ptr %i.fz, align 8, !tbaa !75
  %i.gl = getelementptr inbounds nuw i8, ptr %.093, i64 56
  store i32 0, ptr %i.gl, align 8, !tbaa !80
  br label %.thread

bb.ba:                                            ; preds = %bb.au
  store i32 1, ptr %i.l, align 4, !tbaa !28
  %i.gm = load i64, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.gn = add i64 %i.gm, 1
  store i64 %i.gn, ptr %0, align 8, !tbaa !79
  %i.go = tail call ptr @cli_hashtab_insert(ptr noundef nonnull %.093, ptr noundef %i.fo, i64 noundef range(i64 -2147483648, 2147483648) %i.fu, i64 noundef %i.gm) #20 ; 2 uses
  %.not.i111 = icmp eq ptr %i.go, null
  br i1 %.not.i111, label %scope_declare.exit112, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !78
  br label %scope_declare.exit112

scope_declare.exit112:                            ; preds = %bb.ba, %bb.bb
  %i.gq = phi ptr [ %i.gp, %bb.bb ], [ null, %bb.ba ]
  store ptr %i.gq, ptr %3, align 8, !tbaa !8
  store i32 4, ptr %i.fz, align 8, !tbaa !75
  br label %.thread

bb.bc:                                            ; preds = %yylex.exit.thread.thread150, %yylex.exit.thread
  %i.gr = getelementptr inbounds nuw i8, ptr %.093, i64 48 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !75
  %.off = add i32 %i.gs, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.bd, label %.thread

end_hunk_0
