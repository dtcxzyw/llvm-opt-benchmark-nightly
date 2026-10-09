Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_parse?download=true
inline.NumInlined: 342
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@parse_chunk:bb.a
  %i.bee = zext nneg i32 %i.bed to i64
  %i.bef = add nsw i64 %i.bee, -32768             ; 2 uses
  %i.beg = icmp eq i64 %i.bef, -1
  %i.beh = add nuw nsw i64 %i.bea, 1
  %i.bei = add nsw i64 %i.beh, %i.bef
  %i.bej = trunc i64 %i.bei to i32                ; 2 uses
  %.not13.i.i.i = icmp eq i32 %i.bej, -1
  %.not.i.i.i = select i1 %i.beg, i1 true, i1 %.not13.i.i.i
  br i1 %.not.i.i.i, label %bb.js, label %bb.jr, !llvm.loop !1

bb.js:                                            ; preds = %bb.jr
  %i.bek = sub i32 %i.bbq, %.0.i.i.i
  %i.bel = add i32 %i.bek, 32767                  ; 2 uses
  %i.bem = icmp ugt i32 %i.bel, 65535
  br i1 %i.bem, label %bb.jt, label %jmp_patchins.exit.i.i.i

bb.jt:                                            ; preds = %bb.js
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bbp, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !54
  call fastcc void @err_syntax(ptr noundef %i.beo, i32 noundef 2399) #14, !inline_history !137
  unreachable

jmp_patchins.exit.i.i.i:                          ; preds = %bb.js
  %i.bep = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.bea
  %i.beq = trunc nuw i32 %i.bel to i16
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bep, i64 2
  store i16 %i.beq, ptr %i.ber, align 2, !tbaa !78
  br label %parse_call_assign.exit

parse_call_assign.exit:                           ; preds = %bb.jq, %jmp_patchins.exit.i.i.i, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  br label %parse_stmt.exit

parse_stmt.exit:                                  ; preds = %.thread, %parse_if.exit, %parse_while.exit, %lex_match.exit, %parse_for.exit, %parse_repeat.exit, %parse_func.exit, %bb.hl, %bb.hn, %bb.ho, %parse_continue.exit, %bb.ib, %parse_goto.exit, %parse_call_assign.exit
  %.not = phi i1 [ false, %bb.ho ], [ false, %parse_continue.exit ], [ false, %bb.hn ], [ true, %.thread ], [ true, %parse_call_assign.exit ], [ true, %parse_goto.exit ], [ true, %bb.ib ], [ true, %bb.hl ], [ true, %parse_func.exit ], [ true, %parse_repeat.exit ], [ true, %parse_for.exit ], [ true, %lex_match.exit ], [ true, %parse_while.exit ], [ true, %parse_if.exit ]
  %i.bes = load i32, ptr %i.e, align 4, !tbaa !72
  %i.bet = icmp eq i32 %i.bes, 59
  br i1 %i.bet, label %bb.ju, label %lex_opt.exit

bb.ju:                                            ; preds = %parse_stmt.exit
  call void @lj_lex_next(ptr noundef nonnull %0) #12
  br label %lex_opt.exit

lex_opt.exit:                                     ; preds = %parse_stmt.exit, %bb.ju
  %i.beu = load ptr, ptr %0, align 8, !tbaa !27   ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 56
  %i.bew = load i32, ptr %i.bev, align 8, !tbaa !66
  %i.bex = getelementptr inbounds nuw i8, ptr %i.beu, i64 52
  store i32 %i.bew, ptr %i.bex, align 4, !tbaa !89
  br i1 %.not, label %bb.c, label %.critedge, !llvm.loop !139

.critedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %lex_opt.exit
  %i.bey = load i32, ptr %i.a, align 4, !tbaa !52
  %i.bez = add i32 %i.bey, -1
  store i32 %i.bez, ptr %i.a, align 4, !tbaa !52
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal fastcc void @err_token(ptr noundef %0, i32 noundef range(i32 40, 301) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  %i.c = tail call ptr @lj_lex_token2str(ptr noundef %0, i32 noundef %1) #12
  tail call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef %0, i32 noundef %i.b, i32 noundef 2385, ptr noundef %i.c) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fs_finish(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 28 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106
  %i.f = sub nsw i32 %1, %i.e                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %.not.i = icmp ugt i32 %i.h, %i.j
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.m = add i32 %i.h, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76
  %trunc46.i = trunc i32 %i.p to i8
  switch i8 %trunc46.i, label %bb.c [
    i8 76, label %bc_isret_or_tail.exit.thread.i
    i8 75, label %bc_isret_or_tail.exit.thread.i
    i8 74, label %bc_isret_or_tail.exit.thread.i
    i8 73, label %bc_isret_or_tail.exit.thread.i
    i8 68, label %bc_isret_or_tail.exit.thread.i
    i8 67, label %bc_isret_or_tail.exit.thread.i
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.t = load i8, ptr %i.s, align 1, !tbaa !69
  %i.u = and i8 %i.t, 8
  %.not36.i = icmp eq i8 %i.u, 0
  br i1 %.not36.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.c, i32 noundef -2147483598) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.c, i32 noundef 65611) ; 0 uses
  br label %bc_isret_or_tail.exit.thread.i

bc_isret_or_tail.exit.thread.i:                   ; preds = %bb.e, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 13 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !69
  %i.ab = or i8 %i.aa, 16
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !69
  tail call fastcc void @fscope_end(ptr noundef nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !63
  %i.ae = and i8 %i.ad, 64
  %.not37.i = icmp ne i8 %i.ae, 0
  %.not3843.i = icmp ugt i32 %i.h, 1
  %or.cond.i = and i1 %.not3843.i, %.not37.i
  br i1 %or.cond.i, label %.lr.ph.i, label %fs_fixup_ret.exit

.lr.ph.i:                                         ; preds = %bc_isret_or_tail.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %wide.trip.count.i = zext i32 %i.h to i64
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph.i
  %i.ag = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.az, %.critedge.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !76 ; 2 uses
  %trunc.i = trunc i32 %i.ai to i8
  switch i8 %trunc.i, label %.critedge.i [
    i8 67, label %bb.g
    i8 68, label %bb.g
    i8 73, label %bb.g
    i8 74, label %bb.g
    i8 75, label %bb.g
    i8 76, label %bb.g
    i8 51, label %fs_fixup_ret.exit
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.aj = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.c, i32 noundef %i.ai) ; 2 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !74 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !84
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !84
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = sub i32 %i.aj, %i.ar
  %i.at = add i32 %i.as, 32767                    ; 2 uses
  %i.au = icmp ugt i32 %i.at, 65535
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54
  tail call fastcc void @err_syntax(ptr noundef %i.aw, i32 noundef 2615) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = shl nuw i32 %i.at, 16
  %i.ay = or disjoint i32 %i.ax, 50
  store i32 %i.ay, ptr %i.al, align 4, !tbaa !76
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %bb.f
  %i.az = phi ptr [ %i.ag, %bb.f ], [ %i.ak, %bb.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %fs_fixup_ret.exit, label %bb.f, !llvm.loop !141

fs_fixup_ret.exit:                                ; preds = %bb.f, %.critedge.i, %bc_isret_or_tail.exit.thread.i
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !58  ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !107
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bc, 108
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  %i.bj = and i64 %i.bi, 68719476728              ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !108
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3                ; 3 uses
  %i.bo = add nuw nsw i64 %i.bj, %i.bn            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 91 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !61  ; 2 uses
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = add nuw nsw i64 %i.bs, 2
  %i.bu = and i64 %i.bt, 1020                     ; 3 uses
  %i.bv = add nuw nsw i64 %i.bu, %i.bo            ; 2 uses
  %i.bw = add i32 %i.ba, -1
  %i.bx = icmp slt i32 %i.f, 256                  ; 2 uses
  %i.by = icmp samesign ult i32 %i.f, 65536       ; 2 uses
  %i.bz = select i1 %i.by, i32 1, i32 2
  %i.ca = select i1 %i.bx, i32 0, i32 %i.bz
  %i.cb = shl i32 %i.bw, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bv, %i.cc            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !91 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !167 ; 4 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !168
  %.not65.i = icmp eq i8 %i.bq, 0
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %fs_fixup_ret.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 492
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.j

bb.j:                                             ; preds = %lj_buf_more.exit58.i, %.lr.ph.i77
  %i.cl = phi ptr [ %i.ci, %.lr.ph.i77 ], [ %i.de, %lj_buf_more.exit58.i ] ; 2 uses
  %indvars.iv.i79 = phi i64 [ 0, %.lr.ph.i77 ], [ %indvars.iv.next.i80, %lj_buf_more.exit58.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv.i79
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !78
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !93
  %i.cr = inttoptr i64 %i.cq to ptr               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !100
  %i.cu = add i32 %i.ct, 1                        ; 3 uses
  %i.cv = load ptr, ptr %i.ck, align 8, !tbaa !169
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cl to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = icmp ugt i32 %i.cu, %i.cz
  br i1 %i.da, label %bb.k, label %lj_buf_more.exit58.i, !prof !170

bb.k:                                             ; preds = %bb.j
  %i.db = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef %i.cu) #12
  br label %lj_buf_more.exit58.i

lj_buf_more.exit58.i:                             ; preds = %bb.k, %bb.j
  %.0.i57.i = phi ptr [ %i.db, %bb.k ], [ %i.cl, %bb.j ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dd = zext i32 %i.cu to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i57.i, ptr nonnull align 4 %i.dc, i64 %i.dd, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i57.i, i64 %i.dd ; 3 uses
  store ptr %i.de, ptr %i.cg, align 8, !tbaa !171
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %i.br
  br i1 %exitcond.not.i81, label %._crit_edge.loopexit.i, label %bb.j, !llvm.loop !142

._crit_edge.loopexit.i:                           ; preds = %lj_buf_more.exit58.i
  %.pre.i82 = load ptr, ptr %i.ch, align 8, !tbaa !172
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %fs_fixup_ret.exit
  %i.df = phi ptr [ %.pre.i82, %._crit_edge.loopexit.i ], [ %i.ci, %fs_fixup_ret.exit ]
  %i.dg = phi ptr [ %i.de, %._crit_edge.loopexit.i ], [ %i.ci, %fs_fixup_ret.exit ] ; 3 uses
  %i.dh = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !55 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !56 ; 2 uses
  %i.dr = icmp ult i32 %i.dq, %i.dm
  br i1 %i.dr, label %.lr.ph63.i, label %._crit_edge64.i

.lr.ph63.i:                                       ; preds = %._crit_edge.i
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph63.i
  %i.dv = phi ptr [ %i.dg, %.lr.ph63.i ], [ %i.fh, %bb.s ] ; 5 uses
  %.061.i = phi ptr [ %i.dt, %.lr.ph63.i ], [ %i.fi, %bb.s ] ; 5 uses
  %.05360.i = phi i32 [ 0, %.lr.ph63.i ], [ %.1.i, %bb.s ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.061.i, i64 17
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !96
  %i.dy = and i8 %i.dx, 6
  %.not.i83 = icmp eq i8 %i.dy, 0
  br i1 %.not.i83, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.dz = load i64, ptr %.061.i, align 8, !tbaa !93 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, 7
  br i1 %i.ea, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !169
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dv to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = icmp ult i32 %i.ef, 11
  br i1 %i.eg, label %bb.o, label %lj_buf_more.exit56.i, !prof !170

bb.o:                                             ; preds = %bb.n
  %i.eh = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef 11) #12
  br label %lj_buf_more.exit56.i

lj_buf_more.exit56.i:                             ; preds = %bb.o, %bb.n
  %.0.i55.i = phi ptr [ %i.eh, %bb.o ], [ %i.dv, %bb.n ] ; 2 uses
  %i.ei = trunc nuw nsw i64 %i.dz to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i55.i, i64 1
  store i8 %i.ei, ptr %.0.i55.i, align 1, !tbaa !33
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.ek = inttoptr i64 %i.dz to ptr               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !100 ; 2 uses
  %i.en = add i32 %i.em, 1
  %i.eo = add i32 %i.em, 11                       ; 2 uses
  %i.ep = load ptr, ptr %i.du, align 8, !tbaa !169
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.dv to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp ugt i32 %i.eo, %i.et
  br i1 %i.eu, label %bb.q, label %lj_buf_more.exit.i, !prof !170

bb.q:                                             ; preds = %bb.p
  %i.ev = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef %i.eo) #12
  br label %lj_buf_more.exit.i

lj_buf_more.exit.i:                               ; preds = %bb.q, %bb.p
  %.0.i.i = phi ptr [ %i.ev, %bb.q ], [ %i.dv, %bb.p ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ex = zext i32 %i.en to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr nonnull align 4 %i.ew, i64 %i.ex, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ex
  br label %bb.r

bb.r:                                             ; preds = %lj_buf_more.exit.i, %lj_buf_more.exit56.i
  %.051.i = phi ptr [ %i.ej, %lj_buf_more.exit56.i ], [ %i.ey, %lj_buf_more.exit.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.061.i, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !94 ; 3 uses
  %i.fb = sub i32 %i.fa, %.05360.i
  %i.fc = tail call ptr @lj_strfmt_wuleb128(ptr noundef %.051.i, i32 noundef %i.fb) #12
  %i.fd = getelementptr inbounds nuw i8, ptr %.061.i, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !109
  %i.ff = sub i32 %i.fe, %i.fa
  %i.fg = tail call ptr @lj_strfmt_wuleb128(ptr noundef %i.fc, i32 noundef %i.ff) #12 ; 2 uses
  store ptr %i.fg, ptr %i.cg, align 8, !tbaa !171
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %i.fh = phi ptr [ %i.dv, %bb.l ], [ %i.fg, %bb.r ] ; 3 uses
  %.1.i = phi i32 [ %.05360.i, %bb.l ], [ %i.fa, %bb.r ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.061.i, i64 24 ; 2 uses
  %i.fj = icmp ult ptr %i.fi, %i.do
  br i1 %i.fj, label %bb.l, label %._crit_edge64.i.loopexit, !llvm.loop !143

._crit_edge64.i.loopexit:                         ; preds = %bb.s
  %.pre = ptrtoint ptr %i.fh to i64
  br label %._crit_edge64.i

._crit_edge64.i:                                  ; preds = %._crit_edge64.i.loopexit, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre, %._crit_edge64.i.loopexit ], [ %i.dh, %._crit_edge.i ]
  %i.fk = phi ptr [ %i.fh, %._crit_edge64.i.loopexit ], [ %i.dg, %._crit_edge.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !169
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %.pre-phi
  %i.fp = and i64 %i.fo, 4294967295
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.t, label %fs_prep_var.exit, !prof !170

bb.t:                                             ; preds = %._crit_edge64.i
  %i.fr = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef 1) #12
  br label %fs_prep_var.exit

fs_prep_var.exit:                                 ; preds = %._crit_edge64.i, %bb.t
  %.0.i.i.i = phi ptr [ %i.fr, %bb.t ], [ %i.fk, %._crit_edge64.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  store i8 0, ptr %.0.i.i.i, align 1, !tbaa !33
  store ptr %i.fs, ptr %i.cg, align 8, !tbaa !168
  %i.ft = load ptr, ptr %i.ch, align 8, !tbaa !172
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = add i64 %i.fw, %i.cd                    ; 2 uses
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = and i64 %i.fx, 4294967295
  %i.ga = tail call ptr @lj_mem_newgco(ptr noundef %i.b, i64 noundef %i.fz) #12 ; 31 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 9
  store i8 7, ptr %i.gb, align 1, !tbaa !174
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  store i32 %i.fy, ptr %i.gc, align 8, !tbaa !175
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 62
  store i16 0, ptr %i.gd, align 2, !tbaa !176
  %i.ge = load i8, ptr %i.ac, align 8, !tbaa !63  ; 2 uses
  %i.gf = and i8 %i.ge, -97
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 61
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !177
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !65
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 10
  store i8 %i.gi, ptr %i.gj, align 2, !tbaa !178
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 90
  %i.gl = load i8, ptr %i.gk, align 2, !tbaa !64  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 11
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !179
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !49
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !180
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.bj ; 5 uses
  %i.gs = load i32, ptr %i.bd, align 8, !tbaa !107
  %i.gt = add i32 %i.gs, 1
  %i.gu = zext i32 %i.gt to i64
  %.neg = mul nsw i64 %i.gu, -8
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %.neg
  store i32 0, ptr %i.gv, align 4, !tbaa !88
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 104 ; 7 uses
  %i.gx = load i32, ptr %i.g, align 8, !tbaa !58  ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !74 ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 %i.gx, ptr %i.ha, align 4, !tbaa !181
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 180
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !99
  %.not.i84 = icmp eq i32 %i.he, 1
  %i.hf = and i8 %i.ge, 2
  %.not15.i = icmp eq i8 %i.hf, 0
  %..i = select i1 %.not15.i, i32 96, i32 99
  %.0.i = select i1 %.not.i84, i32 %..i, i32 19
  %i.hg = zext i8 %i.gl to i32
  %i.hh = shl nuw nsw i32 %i.hg, 8
  %i.hi = or disjoint i32 %.0.i, %i.hh
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !88
  %i.hj = icmp ugt i32 %i.gx, 1
  br i1 %i.hj, label %.lr.ph.preheader.i, label %fs_fixup_bc.exit

.lr.ph.preheader.i:                               ; preds = %fs_prep_var.exit
  %wide.trip.count.i86 = zext i32 %i.gx to i64    ; 6 uses
  %i.hk = add nsw i64 %wide.trip.count.i86, -1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.gx, 22
  br i1 %min.iters.check, label %.lr.ph.i87.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.hl = getelementptr i8, ptr %i.ga, i64 108
  %i.hm = shl nuw nsw i64 %wide.trip.count.i86, 2
  %i.hn = getelementptr i8, ptr %i.ga, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 104
  %i.hp = getelementptr i8, ptr %i.gz, i64 8
  %i.hq = shl nuw nsw i64 %wide.trip.count.i86, 3
  %i.hr = getelementptr i8, ptr %i.gz, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -4
  %bound0 = icmp ult ptr %i.hl, %i.hs
  %bound1 = icmp ult ptr %i.hp, %i.ho
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i87.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ht = and i64 %i.hk, 7                        ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  %i.hv = select i1 %i.hu, i64 8, i64 %i.ht
  %n.vec = sub nsw i64 %i.hk, %i.hv               ; 2 uses
  %i.hw = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hx = or disjoint i64 %index, 1               ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %index
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %wide.vec = load <8 x i32>, ptr %i.hy, align 4, !tbaa !76, !alias.scope !182
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec130 = load <8 x i32>, ptr %i.ia, align 4, !tbaa !76, !alias.scope !182
  %strided.vec131 = shufflevector <8 x i32> %wide.vec130, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.hx ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store <4 x i32> %strided.vec, ptr %i.ib, align 4, !tbaa !88, !alias.scope !183, !noalias !182
  store <4 x i32> %strided.vec131, ptr %i.ic, align 4, !tbaa !88, !alias.scope !183, !noalias !182
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %.lr.ph.i87.preheader, label %vector.body, !llvm.loop !147

.lr.ph.i87.preheader:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader.i
  %indvars.iv.i88.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i ], [ %i.hw, %vector.body ] ; 4 uses
  %i.ie = sub nsw i64 %wide.trip.count.i86, %indvars.iv.i88.ph
  %xtraiter = and i64 %i.ie, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i87.prol.loopexit, label %.lr.ph.i87.prol

.lr.ph.i87.prol:                                  ; preds = %.lr.ph.i87.preheader, %.lr.ph.i87.prol
  %indvars.iv.i88.prol = phi i64 [ %indvars.iv.next.i89.prol, %.lr.ph.i87.prol ], [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i87.prol ], [ 0, %.lr.ph.i87.preheader ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i88.prol
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !76
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.i88.prol
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !88
  %indvars.iv.next.i89.prol = add nuw nsw i64 %indvars.iv.i88.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i87.prol.loopexit, label %.lr.ph.i87.prol, !llvm.loop !148

.lr.ph.i87.prol.loopexit:                         ; preds = %.lr.ph.i87.prol, %.lr.ph.i87.preheader
  %indvars.iv.i88.unr = phi i64 [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ], [ %indvars.iv.next.i89.prol, %.lr.ph.i87.prol ]
  %i.ii = sub nsw i64 %indvars.iv.i88.ph, %wide.trip.count.i86
  %i.ij = icmp ugt i64 %i.ii, -4
  br i1 %i.ij, label %fs_fixup_bc.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.prol.loopexit, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89.3, %.lr.ph.i87 ], [ %indvars.iv.i88.unr, %.lr.ph.i87.prol.loopexit ] ; 6 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i88
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !76
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.i88
  store i32 %i.il, ptr %i.im, align 4, !tbaa !88
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i89
  %i.io = load i32, ptr %i.in, align 4, !tbaa !76
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next.i89
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !88
  %indvars.iv.next.i89.1 = add nuw nsw i64 %indvars.iv.i88, 2 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i89.1
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !76
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next.i89.1
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !88
  %indvars.iv.next.i89.2 = add nuw nsw i64 %indvars.iv.i88, 3 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i89.2
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !76
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next.i89.2
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !88
  %indvars.iv.next.i89.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 2 uses
  %exitcond.not.i90.3 = icmp eq i64 %indvars.iv.next.i89.3, %wide.trip.count.i86
  br i1 %exitcond.not.i90.3, label %fs_fixup_bc.exit, label %.lr.ph.i87, !llvm.loop !149

fs_fixup_bc.exit:                                 ; preds = %.lr.ph.i87.prol.loopexit, %.lr.ph.i87, %fs_prep_var.exit
  %i.iw = load i32, ptr %i.bk, align 4, !tbaa !108 ; 2 uses
  %i.ix = icmp ugt i32 %i.iw, 65536
  br i1 %i.ix, label %bb.u, label %bb.v

bb.u:                                             ; preds = %fs_fixup_bc.exit
  tail call fastcc void @err_limit(ptr noundef nonnull readonly %i.c, i32 noundef 65536, ptr noundef nonnull @.str.10) #14
  unreachable

bb.v:                                             ; preds = %fs_fixup_bc.exit
  %i.iy = load i32, ptr %i.bd, align 8, !tbaa !107 ; 2 uses
  %i.iz = icmp ugt i32 %i.iy, 65536
  br i1 %i.iz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @err_limit(ptr noundef nonnull readonly %i.c, i32 noundef 65536, ptr noundef nonnull @.str.10) #14
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ja = ptrtoint ptr %i.gr to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !187
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ga, i64 52
  store i32 %i.iw, ptr %i.jc, align 4, !tbaa !188
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store i32 %i.iy, ptr %i.jd, align 8, !tbaa !189
  %i.je = load ptr, ptr %i.c, align 8, !tbaa !32  ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !190
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 48 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !111 ; 2 uses
  %.not53.i = icmp eq i32 %i.jj, 0
  br i1 %.not53.i, label %._crit_edge.i94, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.x, %bb.z
  %i.jk = phi i32 [ %i.ju, %bb.z ], [ %i.jj, %bb.x ]
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i93, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.i92 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !33
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i91
  %i.jp = load i32, ptr %i.jl, align 8, !tbaa !33
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.jq
  %i.js = trunc nuw i64 %indvars.iv.i92 to i32
  %i.jt = uitofp i32 %i.js to double
  store double %i.jt, ptr %i.jr, align 8, !tbaa !33
  %.pre.i96 = load i32, ptr %i.ji, align 8, !tbaa !111
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i91
  %i.ju = phi i32 [ %i.jk, %.lr.ph.i91 ], [ %.pre.i96, %bb.y ] ; 2 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %i.jv = zext i32 %i.ju to i64
  %i.jw = icmp samesign ult i64 %indvars.iv.next.i93, %i.jv
  br i1 %i.jw, label %.lr.ph.i91, label %._crit_edge.i94, !llvm.loop !150

._crit_edge.i94:                                  ; preds = %bb.z, %bb.x
  %i.jx = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !191
  %i.jz = inttoptr i64 %i.jy to ptr
  %i.ka = getelementptr inbounds nuw i8, ptr %i.je, i64 52
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !192
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %fs_fixup_uv2.exit.i, %._crit_edge.i94
  %.152.i = phi i32 [ 0, %._crit_edge.i94 ], [ %i.lw, %fs_fixup_uv2.exit.i ] ; 2 uses
  %i.ke = zext i32 %.152.i to i64
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %i.ke ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !33
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.ab, label %fs_fixup_uv2.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.kj = load i32, ptr %i.kf, align 8, !tbaa !33
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !33 ; 3 uses
  %i.kn = icmp ult i64 %i.km, -1970324836974592
  br i1 %i.kn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.kk
  store i64 %i.km, ptr %i.ko, align 8, !tbaa !33
  br label %fs_fixup_uv2.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.kp = and i64 %i.km, 140737488355327          ; 2 uses
  %i.kq = inttoptr i64 %i.kp to ptr               ; 4 uses
  %i.kr = xor i64 %i.kk, -1
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.kr
  store i64 %i.kp, ptr %i.ks, align 8, !tbaa !193
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ku = load i8, ptr %i.kt, align 8, !tbaa !33
  %i.kv = and i8 %i.ku, 3
  %.not47.i = icmp eq i8 %i.kv, 0
  br i1 %.not47.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kw = load i8, ptr %i.kc, align 8, !tbaa !33
  %i.kx = and i8 %i.kw, 4
  %.not48.i = icmp eq i8 %i.kx, 0
  br i1 %.not48.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ky = load ptr, ptr %i.kd, align 8, !tbaa !57
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !37
  %i.lb = inttoptr i64 %i.la to ptr
  tail call void @lj_gc_barrierf(ptr noundef %i.lb, ptr noundef nonnull %i.ga, ptr noundef nonnull %i.kq) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.lc = load i64, ptr %i.kl, align 8, !tbaa !33
  %.mask.i = and i64 %i.lc, -140737488355328
  %i.ld = icmp eq i64 %.mask.i, -1125899906842624
  br i1 %i.ld, label %bb.ah, label %fs_fixup_uv2.exit.i

bb.ah:                                            ; preds = %bb.ag
  %.val.i = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.le = getelementptr i8, ptr %i.kq, i64 40
  %.val49.i = load i64, ptr %i.le, align 8, !tbaa !194
  %i.lf = getelementptr i8, ptr %i.kq, i64 60
  %.val50.i = load i8, ptr %i.lf, align 4, !tbaa !195 ; 2 uses
  %i.lg = getelementptr i8, ptr %.val.i, i64 144
  %.val.val.i = load ptr, ptr %i.lg, align 8, !tbaa !91
  %i.lh = inttoptr i64 %.val49.i to ptr
  %.not2.i.i = icmp eq i8 %.val50.i, 0
  br i1 %.not2.i.i, label %fs_fixup_uv2.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ah
  %wide.trip.count.i.i = zext i8 %.val50.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.am ] ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %indvars.iv.i.i ; 2 uses
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !78 ; 3 uses
  %i.lk = icmp ugt i16 %i.lj, -61
  br i1 %i.lk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.ll = add nsw i16 %i.lj, 60
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.lm = zext i16 %i.lj to i64
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %.val.val.i, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 17
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !96
  %i.lq = and i8 %i.lp, 1
  %.not.i.i = icmp eq i8 %i.lq, 0
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !95
  %i.lt = zext i8 %i.ls to i16                    ; 2 uses
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lu = or disjoint i16 %i.lt, -32768
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.lv = or disjoint i16 %i.lt, -16384
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  %.sink.i.i = phi i16 [ %i.lu, %bb.ak ], [ %i.lv, %bb.al ], [ %i.ll, %bb.ai ]
  store i16 %.sink.i.i, ptr %i.li, align 2, !tbaa !78
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %fs_fixup_uv2.exit.i, label %.lr.ph.i.i, !llvm.loop !151

fs_fixup_uv2.exit.i:                              ; preds = %bb.am, %bb.ah, %bb.ag, %bb.ac, %bb.aa
  %i.lw = add i32 %.152.i, 1                      ; 2 uses
  %.not.i95 = icmp ugt i32 %i.lw, %i.kb
  br i1 %.not.i95, label %fs_fixup_k.exit, label %bb.aa, !llvm.loop !152

fs_fixup_k.exit:                                  ; preds = %fs_fixup_uv2.exit.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.bo ; 2 uses
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !194
  %i.ma = load i8, ptr %i.bp, align 1, !tbaa !61  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ga, i64 60
  store i8 %i.ma, ptr %i.mb, align 4, !tbaa !195
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %i.md = zext i8 %i.ma to i64
  %i.me = shl nuw nsw i64 %i.md, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.lx, ptr nonnull readonly align 4 %i.mc, i64 %i.me, i1 false)
  %i.mf = getelementptr i8, ptr %i.ga, i64 %i.bv  ; 17 uses
  %i.mg = load ptr, ptr %i.gy, align 8, !tbaa !74 ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 17 uses
  %i.mi = load i32, ptr %i.d, align 4, !tbaa !106 ; 15 uses
  %i.mj = load i32, ptr %i.g, align 8, !tbaa !58
  %i.mk = add i32 %i.mj, -1                       ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  store i32 %i.mi, ptr %i.ml, align 8, !tbaa !196
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ga, i64 76
  store i32 %i.f, ptr %i.mm, align 4, !tbaa !197
  %i.mn = ptrtoint ptr %i.mf to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ga, i64 80
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !198
  %umax54.i = tail call i32 @llvm.umax.i32(i32 %i.mk, i32 1)
  %wide.trip.count55.i = zext i32 %umax54.i to i64 ; 17 uses
  br i1 %i.bx, label %.preheader.i.preheader, label %bb.an, !prof !48

.preheader.i.preheader:                           ; preds = %fs_fixup_k.exit
  %min.iters.check179 = icmp ult i32 %i.mk, 17
  br i1 %min.iters.check179, label %.preheader.i.preheader197, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.preheader.i.preheader
  %i.mp = getelementptr i8, ptr %i.ga, i64 %i.bj
  %i.mq = getelementptr i8, ptr %i.mp, i64 %wide.trip.count55.i
  %i.mr = getelementptr i8, ptr %i.mq, i64 %i.bn
  %i.ms = getelementptr i8, ptr %i.mr, i64 %i.bu
  %i.mt = getelementptr i8, ptr %i.mg, i64 12
  %i.mu = shl nuw nsw i64 %wide.trip.count55.i, 3
  %i.mv = getelementptr i8, ptr %i.mg, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 8
  %bound0181 = icmp ult ptr %i.mf, %i.mw
  %bound1182 = icmp ult ptr %i.mt, %i.ms
  %found.conflict183 = and i1 %bound0181, %bound1182
  br i1 %found.conflict183, label %.preheader.i.preheader197, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck180
  %i.mx = and i64 %wide.trip.count55.i, 7         ; 2 uses
  %i.my = icmp eq i64 %i.mx, 0
  %i.mz = select i1 %i.my, i64 8, i64 %i.mx
  %n.vec185 = sub nsw i64 %wide.trip.count55.i, %i.mz ; 2 uses
  %broadcast.splatinsert186 = insertelement <4 x i32> poison, i32 %i.mi, i64 0
  %broadcast.splat187 = shufflevector <4 x i32> %broadcast.splatinsert186, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next194, %vector.body188 ] ; 4 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %index189
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %index189
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 36
  %wide.vec190.a = load <8 x i32>, ptr %i.nc, align 4, !tbaa !84, !alias.scope !199
  %strided.vec191.a = shufflevector <8 x i32> %wide.vec190.a, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec192 = load <8 x i32>, ptr %i.nd, align 4, !tbaa !84, !alias.scope !199
  %strided.vec193 = shufflevector <8 x i32> %wide.vec192, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ne = sub nsw <4 x i32> %strided.vec191.a, %broadcast.splat187
  %i.nf = sub nsw <4 x i32> %strided.vec193, %broadcast.splat187
  %i.ng = trunc <4 x i32> %i.ne to <4 x i8>
  %i.nh = trunc <4 x i32> %i.nf to <4 x i8>
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mf, i64 %index189 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  store <4 x i8> %i.ng, ptr %i.ni, align 1, !tbaa !33, !alias.scope !200, !noalias !199
  store <4 x i8> %i.nh, ptr %i.nj, align 1, !tbaa !33, !alias.scope !200, !noalias !199
  %index.next194 = add nuw i64 %index189, 8       ; 2 uses
  %i.nk = icmp eq i64 %index.next194, %n.vec185
  br i1 %i.nk, label %.preheader.i.preheader197, label %vector.body188, !llvm.loop !156

.preheader.i.preheader197:                        ; preds = %vector.body188, %vector.memcheck180, %.preheader.i.preheader
  %indvars.iv51.i.ph = phi i64 [ 0, %vector.memcheck180 ], [ 0, %.preheader.i.preheader ], [ %n.vec185, %vector.body188 ] ; 4 uses
  %i.nl = sub nsw i64 %wide.trip.count55.i, %indvars.iv51.i.ph
  %xtraiter206 = and i64 %i.nl, 3                 ; 2 uses
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod207.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader197, %.preheader.i.prol
  %indvars.iv51.i.prol = phi i64 [ %indvars.iv.next52.i.prol, %.preheader.i.prol ], [ %indvars.iv51.i.ph, %.preheader.i.preheader197 ] ; 3 uses
  %prol.iter208 = phi i64 [ %prol.iter208.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader197 ]
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv51.i.prol
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !84
  %i.np = sub nsw i32 %i.no, %i.mi
  %i.nq = trunc i32 %i.np to i8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mf, i64 %indvars.iv51.i.prol
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !33
  %indvars.iv.next52.i.prol = add nuw nsw i64 %indvars.iv51.i.prol, 1 ; 2 uses
  %prol.iter208.next = add i64 %prol.iter208, 1   ; 2 uses
  %prol.iter208.cmp.not = icmp eq i64 %prol.iter208.next, %xtraiter206
  br i1 %prol.iter208.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !157

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader197
  %indvars.iv51.i.unr = phi i64 [ %indvars.iv51.i.ph, %.preheader.i.preheader197 ], [ %indvars.iv.next52.i.prol, %.preheader.i.prol ]
  %i.ns = sub nsw i64 %indvars.iv51.i.ph, %wide.trip.count55.i
  %i.nt = icmp ugt i64 %i.ns, -4
  br i1 %i.nt, label %fs_fixup_line.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i.3, %.preheader.i ], [ %indvars.iv51.i.unr, %.preheader.i.prol.loopexit ] ; 6 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv51.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !84
  %i.nx = sub nsw i32 %i.nw, %i.mi
  %i.ny = trunc i32 %i.nx to i8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mf, i64 %indvars.iv51.i
  store i8 %i.ny, ptr %i.nz, align 1, !tbaa !33
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.next52.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !84
  %i.od = sub nsw i32 %i.oc, %i.mi
  %i.oe = trunc i32 %i.od to i8
  %i.of = getelementptr inbounds nuw i8, ptr %i.mf, i64 %indvars.iv.next52.i
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !33
  %indvars.iv.next52.i.1 = add nuw nsw i64 %indvars.iv51.i, 2 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.next52.i.1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !84
  %i.oj = sub nsw i32 %i.oi, %i.mi
  %i.ok = trunc i32 %i.oj to i8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mf, i64 %indvars.iv.next52.i.1
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !33
  %indvars.iv.next52.i.2 = add nuw nsw i64 %indvars.iv51.i, 3 ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.next52.i.2
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !84
  %i.op = sub nsw i32 %i.oo, %i.mi
  %i.oq = trunc i32 %i.op to i8
  %i.or = getelementptr inbounds nuw i8, ptr %i.mf, i64 %indvars.iv.next52.i.2
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !33
  %indvars.iv.next52.i.3 = add nuw nsw i64 %indvars.iv51.i, 4 ; 2 uses
  %exitcond56.not.i.3 = icmp eq i64 %indvars.iv.next52.i.3, %wide.trip.count55.i
  br i1 %exitcond56.not.i.3, label %fs_fixup_line.exit, label %.preheader.i, !llvm.loop !158

bb.an:                                            ; preds = %fs_fixup_k.exit
  br i1 %i.by, label %.preheader38.i.preheader, label %.preheader40.i.preheader, !prof !48

.preheader40.i.preheader:                         ; preds = %bb.an
  %min.iters.check140 = icmp ult i32 %i.mk, 21
  br i1 %min.iters.check140, label %.preheader40.i.preheader200, label %vector.memcheck141

.preheader40.i.preheader200:                      ; preds = %vector.body147, %vector.memcheck141, %.preheader40.i.preheader
  %indvars.iv.i97.ph = phi i64 [ 0, %vector.memcheck141 ], [ 0, %.preheader40.i.preheader ], [ %n.vec146, %vector.body147 ] ; 4 uses
  %i.os = sub nsw i64 %wide.trip.count55.i, %indvars.iv.i97.ph
  %xtraiter203 = and i64 %i.os, 3                 ; 2 uses
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.preheader40.i.prol.loopexit, label %.preheader40.i.prol

.preheader40.i.prol:                              ; preds = %.preheader40.i.preheader200, %.preheader40.i.prol
  %indvars.iv.i97.prol = phi i64 [ %indvars.iv.next.i98.prol, %.preheader40.i.prol ], [ %indvars.iv.i97.ph, %.preheader40.i.preheader200 ] ; 3 uses
  %prol.iter205 = phi i64 [ %prol.iter205.next, %.preheader40.i.prol ], [ 0, %.preheader40.i.preheader200 ]
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.i97.prol
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !84
  %i.ow = sub nsw i32 %i.ov, %i.mi
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i97.prol
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !88
  %indvars.iv.next.i98.prol = add nuw nsw i64 %indvars.iv.i97.prol, 1 ; 2 uses
  %prol.iter205.next = add i64 %prol.iter205, 1   ; 2 uses
  %prol.iter205.cmp.not = icmp eq i64 %prol.iter205.next, %xtraiter203
  br i1 %prol.iter205.cmp.not, label %.preheader40.i.prol.loopexit, label %.preheader40.i.prol, !llvm.loop !159

.preheader40.i.prol.loopexit:                     ; preds = %.preheader40.i.prol, %.preheader40.i.preheader200
  %indvars.iv.i97.unr = phi i64 [ %indvars.iv.i97.ph, %.preheader40.i.preheader200 ], [ %indvars.iv.next.i98.prol, %.preheader40.i.prol ]
  %i.oy = sub nsw i64 %indvars.iv.i97.ph, %wide.trip.count55.i
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %fs_fixup_line.exit, label %.preheader40.i

vector.memcheck141:                               ; preds = %.preheader40.i.preheader
  %2 = shl nuw nsw i64 %wide.trip.count55.i, 2
  %i.pa = getelementptr i8, ptr %i.ga, i64 %i.bj
  %i.pb = getelementptr i8, ptr %i.pa, i64 %i.bn
  %i.pc = getelementptr i8, ptr %i.pb, i64 %2
  %i.pd = getelementptr i8, ptr %i.pc, i64 %i.bu
  %i.pe = getelementptr i8, ptr %i.mg, i64 12
  %i.pf = shl nuw nsw i64 %wide.trip.count55.i, 3
  %i.pg = getelementptr i8, ptr %i.mg, i64 %i.pf
  %i.ph = getelementptr i8, ptr %i.pg, i64 8
  %bound0142 = icmp ult ptr %i.mf, %i.ph
  %bound1143 = icmp ult ptr %i.pe, %i.pd
  %found.conflict144 = and i1 %bound0142, %bound1143
  br i1 %found.conflict144, label %.preheader40.i.preheader200, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck141
  %i.pi = and i64 %wide.trip.count55.i, 7         ; 2 uses
  %i.pj = icmp eq i64 %i.pi, 0
  %i.pk = select i1 %i.pj, i64 8, i64 %i.pi
  %n.vec146 = sub nsw i64 %wide.trip.count55.i, %i.pk ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.mi, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body147 ] ; 4 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %index148
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %index148
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 36
  %wide.vec149 = load <8 x i32>, ptr %i.pn, align 4, !tbaa !84, !alias.scope !201
  %strided.vec150 = shufflevector <8 x i32> %wide.vec149, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec151 = load <8 x i32>, ptr %i.po, align 4, !tbaa !84, !alias.scope !201
  %strided.vec152 = shufflevector <8 x i32> %wide.vec151, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pp = sub nsw <4 x i32> %strided.vec150, %broadcast.splat
  %i.pq = sub nsw <4 x i32> %strided.vec152, %broadcast.splat
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index148 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store <4 x i32> %i.pp, ptr %i.pr, align 4, !tbaa !88, !alias.scope !202, !noalias !201
  store <4 x i32> %i.pq, ptr %i.ps, align 4, !tbaa !88, !alias.scope !202, !noalias !201
  %index.next153 = add nuw i64 %index148, 8       ; 2 uses
  %i.pt = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.pt, label %.preheader40.i.preheader200, label %vector.body147, !llvm.loop !163

.preheader38.i.preheader:                         ; preds = %bb.an
  %min.iters.check157 = icmp ult i32 %i.mk, 9
  br i1 %min.iters.check157, label %.preheader38.i.preheader198, label %vector.ph158

vector.ph158:                                     ; preds = %.preheader38.i.preheader
  %i.pu = and i64 %wide.trip.count55.i, 7         ; 2 uses
  %i.pv = icmp eq i64 %i.pu, 0
  %i.pw = select i1 %i.pv, i64 8, i64 %i.pu
  %n.vec159 = sub nsw i64 %wide.trip.count55.i, %i.pw ; 2 uses
  %broadcast.splatinsert160 = insertelement <4 x i32> poison, i32 %i.mi, i64 0
  %broadcast.splat161 = shufflevector <4 x i32> %broadcast.splatinsert160, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph158
  %index163 = phi i64 [ 0, %vector.ph158 ], [ %index.next168, %vector.body162 ] ; 4 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %index163
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %index163
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 36
  %wide.vec164 = load <8 x i32>, ptr %i.pz, align 4, !tbaa !84
  %strided.vec165 = shufflevector <8 x i32> %wide.vec164, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec166 = load <8 x i32>, ptr %i.qa, align 4, !tbaa !84
  %strided.vec167 = shufflevector <8 x i32> %wide.vec166, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.qb = sub nsw <4 x i32> %strided.vec165, %broadcast.splat161
  %i.qc = sub nsw <4 x i32> %strided.vec167, %broadcast.splat161
  %i.qd = trunc <4 x i32> %i.qb to <4 x i16>
  %i.qe = trunc <4 x i32> %i.qc to <4 x i16>
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.mf, i64 %index163 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store <4 x i16> %i.qd, ptr %i.qf, align 2, !tbaa !78
  store <4 x i16> %i.qe, ptr %i.qg, align 2, !tbaa !78
  %index.next168 = add nuw i64 %index163, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next168, %n.vec159
  br i1 %i.qh, label %.preheader38.i.preheader198, label %vector.body162, !llvm.loop !164

.preheader38.i.preheader198:                      ; preds = %vector.body162, %.preheader38.i.preheader
  %indvars.iv45.i.ph = phi i64 [ 0, %.preheader38.i.preheader ], [ %n.vec159, %vector.body162 ]
  br label %.preheader38.i

.preheader38.i:                                   ; preds = %.preheader38.i.preheader198, %.preheader38.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %.preheader38.i ], [ %indvars.iv45.i.ph, %.preheader38.i.preheader198 ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv45.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !84
  %i.ql = sub nsw i32 %i.qk, %i.mi
  %i.qm = trunc i32 %i.ql to i16
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.mf, i64 %indvars.iv45.i
  store i16 %i.qm, ptr %i.qn, align 2, !tbaa !78
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count55.i
  br i1 %exitcond50.not.i, label %fs_fixup_line.exit, label %.preheader38.i, !llvm.loop !165

.preheader40.i:                                   ; preds = %.preheader40.i.prol.loopexit, %.preheader40.i
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i98.3, %.preheader40.i ], [ %indvars.iv.i97.unr, %.preheader40.i.prol.loopexit ] ; 6 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.i97
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !84
  %i.qr = sub nsw i32 %i.qq, %i.mi
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i97
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !88
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.next.i98
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !84
  %i.qw = sub nsw i32 %i.qv, %i.mi
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i98
  store i32 %i.qw, ptr %i.qx, align 4, !tbaa !88
  %indvars.iv.next.i98.1 = add nuw nsw i64 %indvars.iv.i97, 2 ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.next.i98.1
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !84
  %i.rb = sub nsw i32 %i.ra, %i.mi
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i98.1
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !88
  %indvars.iv.next.i98.2 = add nuw nsw i64 %indvars.iv.i97, 3 ; 2 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.next.i98.2
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !84
  %i.rg = sub nsw i32 %i.rf, %i.mi
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.next.i98.2
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !88
  %indvars.iv.next.i98.3 = add nuw nsw i64 %indvars.iv.i97, 4 ; 2 uses
  %exitcond.not.i99.3 = icmp eq i64 %indvars.iv.next.i98.3, %wide.trip.count55.i
  br i1 %exitcond.not.i99.3, label %fs_fixup_line.exit, label %.preheader40.i, !llvm.loop !166

fs_fixup_line.exit:                               ; preds = %.preheader40.i.prol.loopexit, %.preheader40.i, %.preheader38.i, %.preheader.i.prol.loopexit, %.preheader.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.cd ; 3 uses
  %.val75 = load ptr, ptr %i.cg, align 8, !tbaa !171
  %.val76 = load ptr, ptr %i.ch, align 8, !tbaa !172 ; 2 uses
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  store i64 %i.rj, ptr %i.rk, align 8, !tbaa !203
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.dk
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !204
  %i.ro = ptrtoint ptr %.val75 to i64
  %i.rp = ptrtoint ptr %.val76 to i64
  %i.rq = sub i64 %i.ro, %i.rp
  %i.rr = and i64 %i.rq, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ri, ptr align 1 %.val76, i64 %i.rr, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !37
  %i.ru = inttoptr i64 %i.rt to ptr               ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 147
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !205
  %i.rx = and i8 %i.rw, 1
  %.not = icmp eq i8 %i.rx, 0
  br i1 %.not, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %fs_fixup_line.exit
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 280
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !206
  %i.sa = inttoptr i64 %i.rz to ptr               ; 3 uses
  %i.sb = tail call i64 @lj_vmevent_prepare(ptr noundef %i.sa, i32 noundef 115736) #12 ; 2 uses
  %.not74 = icmp eq i64 %i.sb, 0
  br i1 %.not74, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 40 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !50 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  store ptr %i.se, ptr %i.sc, align 8, !tbaa !50
  %i.sf = ptrtoint ptr %i.ga to i64
  %i.sg = or i64 %i.sf, -1125899906842624
  store i64 %i.sg, ptr %i.sd, align 8, !tbaa !33
  tail call void @lj_vmevent_call(ptr noundef %i.sa, i64 noundef %i.sb) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %fs_fixup_line.exit
  %i.sh = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !50
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -8
  store ptr %i.sj, ptr %i.sh, align 8, !tbaa !50
  %i.sk = load i32, ptr %i.dp, align 4, !tbaa !56
  store i32 %i.sk, ptr %i.dl, align 4, !tbaa !55
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !53
  store ptr %i.sm, ptr %0, align 8, !tbaa !27
  ret ptr %i.ga
}

declare hidden ptr @lj_tab_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @jmp_patchval(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %.not18 = icmp eq i32 %1, -1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.b = icmp eq i32 %3, 255                      ; 2 uses
  %i.c = trunc i32 %3 to i8                       ; 3 uses
  %i.d = add i8 %i.c, 1
  %.val.pre = load ptr, ptr %i.a, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %jmp_patchins.exit15
  %i.e = phi ptr [ %.val.pre, %.lr.ph ], [ %i.au, %jmp_patchins.exit15 ] ; 3 uses
  %.019 = phi i32 [ %1, %.lr.ph ], [ %i.o, %jmp_patchins.exit15 ] ; 4 uses
  %i.f = zext i32 %.019 to i64                    ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !76   ; 2 uses
  %i.i = lshr i32 %i.h, 16
  %i.j = zext nneg i32 %i.i to i64
  %i.k = add nsw i64 %i.j, -32768                 ; 2 uses
end_hunk_0
