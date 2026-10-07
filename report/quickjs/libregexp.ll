Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@re_parse_term:bb.a
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !41
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !40 ; 3 uses
  %i.ht = icmp eq i64 %i.hq, %i.hs
  br i1 %i.ht, label %bb.bn, label %bb.bo, !prof !42

bb.bn:                                            ; preds = %bb.bm
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.ho)
  br label %re_emit_op.exit499

bb.bo:                                            ; preds = %bb.bm
  %i.hu = load ptr, ptr %0, align 8, !tbaa !43
  %i.hv = add i64 %i.hs, 1
  store i64 %i.hv, ptr %i.hr, align 8, !tbaa !40
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 %i.ho, ptr %i.hw, align 1, !tbaa !21
  br label %re_emit_op.exit499

bb.bp:                                            ; preds = %bb.bj
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !31, !range !47, !noundef !48
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ib = load i8, ptr %i.ia, align 4, !tbaa !30, !range !47, !noundef !48
  %i.ic = or disjoint i8 %i.ib, 28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.id = phi i8 [ 28, %bb.bp ], [ %i.ic, %bb.bq ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !41
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !40 ; 3 uses
  %i.ii = icmp eq i64 %i.if, %i.ih
  br i1 %i.ii, label %bb.bs, label %bb.bt, !prof !42

bb.bs:                                            ; preds = %bb.br
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.id)
  br label %re_emit_op.exit499

bb.bt:                                            ; preds = %bb.br
  %i.ij = load ptr, ptr %0, align 8, !tbaa !43
  %i.ik = add i64 %i.ih, 1
  store i64 %i.ik, ptr %i.ig, align 8, !tbaa !40
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ih
  store i8 %i.id, ptr %i.il, align 1, !tbaa !21
  br label %re_emit_op.exit499

re_emit_op.exit499:                               ; preds = %bb.bt, %bb.bs, %bb.bo, %bb.bn
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  br label %re_emit_op.exit.thread

bb.bu:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.io = load i8, ptr %i.in, align 1, !tbaa !21
  %.not416 = icmp eq i8 %i.io, 60
  br i1 %.not416, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.iq = load i8, ptr %i.ip, align 4, !tbaa !30, !range !47, !noundef !48
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %.thread591, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.is = tail call fastcc zeroext i1 @re_has_named_captures(ptr noundef %0)
  br i1 %i.is, label %.thread591, label %.thread596

bb.bx:                                            ; preds = %bb.bu
  %i.it = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store ptr %i.it, ptr %i.b, align 8, !tbaa !20
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.iv = call fastcc i32 @re_parse_group_name(ptr noundef %i.iu, ptr noundef %i.b)
  %.not417 = icmp eq i32 %i.iv, 0
  br i1 %.not417, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ix = load i8, ptr %i.iw, align 4, !tbaa !30, !range !47, !noundef !48
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %.thread591, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iz = tail call fastcc zeroext i1 @re_has_named_captures(ptr noundef %0)
  br i1 %i.iz, label %.thread591, label %.thread596

bb.ca:                                            ; preds = %bb.bx
  %i.ja = tail call fastcc i32 @find_group_name(ptr noundef %0, ptr noundef %i.iu, i1 noundef zeroext false) ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 0                    ; 2 uses
  br i1 %i.jb, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.jc = call fastcc i32 @re_parse_captures(ptr noundef %0, ptr noundef %i.c, ptr noundef nonnull %i.iu, i1 noundef zeroext false) ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.jf = load i8, ptr %i.je, align 4, !tbaa !30, !range !47, !noundef !48
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %.thread591, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jh = tail call fastcc zeroext i1 @re_has_named_captures(ptr noundef %0)
  br i1 %i.jh, label %.thread591, label %.thread596

bb.ce:                                            ; preds = %bb.cb, %bb.ca
  %.0360 = phi i32 [ %i.ja, %bb.ca ], [ %i.jc, %bb.cb ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !44
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !35
  %i.jn = select i1 %1, i32 34, i32 32
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !31, !range !47, !noundef !48
  %i.jq = zext nneg i8 %i.jp to i32
  %i.jr = or disjoint i32 %i.jn, %i.jq
  tail call fastcc void @re_emit_op_u8(ptr noundef %0, i32 noundef %i.jr, i32 noundef %.0360)
  br i1 %i.jb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.js = call fastcc i32 @re_parse_captures(ptr noundef %0, ptr noundef %i.c, ptr noundef nonnull %i.iu, i1 noundef zeroext true) ; 0 uses
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.jt = tail call fastcc i32 @find_group_name(ptr noundef %0, ptr noundef %i.iu, i1 noundef zeroext true) ; 0 uses
  br label %bb.ch

.thread591:                                       ; preds = %bb.cc, %bb.cd, %bb.by, %bb.bz, %bb.bv, %bb.bw
  %.str.11.sink = phi ptr [ @.str.7, %bb.by ], [ @.str.11, %bb.bv ], [ @.str.11, %bb.bw ], [ @.str.7, %bb.bz ], [ @.str.12, %bb.cd ], [ @.str.12, %bb.cc ]
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull %.str.11.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.thread

.thread596:                                       ; preds = %bb.cd, %bb.bz, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.dm

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !20
  store ptr %i.ju, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %re_emit_op.exit

bb.ci:                                            ; preds = %bb.bj
  %i.jv = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  store ptr %i.jv, ptr %i.a, align 8, !tbaa !20
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.jx = load i8, ptr %i.jw, align 4, !tbaa !30, !range !47, !noundef !48
  %i.jy = trunc nuw i8 %i.jx to i1
  %i.jz = load i8, ptr %i.jv, align 1, !tbaa !21  ; 3 uses
  br i1 %i.jy, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ka = add i8 %i.jz, -58
  %i.kb = icmp ult i8 %i.ka, -10
  br i1 %i.kb, label %dbuf_putc.exit507.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.13)
  br label %.thread

bb.cl:                                            ; preds = %bb.ci
  %i.kc = and i8 %i.jz, -8
  %or.cond450 = icmp eq i8 %i.kc, 48
  br i1 %or.cond450, label %bb.cm, label %dbuf_putc.exit507.thread

bb.cm:                                            ; preds = %bb.cl
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  store ptr %i.kd, ptr %i.a, align 8, !tbaa !20
  %i.ke = zext nneg i8 %i.jz to i32
  %i.kf = add nsw i32 %i.ke, -48                  ; 2 uses
  %i.kg = load i8, ptr %i.kd, align 1, !tbaa !21  ; 2 uses
  %i.kh = and i8 %i.kg, -8
  %or.cond451 = icmp eq i8 %i.kh, 48
  br i1 %or.cond451, label %bb.cn, label %dbuf_putc.exit507.thread

bb.cn:                                            ; preds = %bb.cm
  %i.ki = shl nuw nsw i32 %i.kf, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.kj, ptr %i.a, align 8, !tbaa !20
  %i.kk = zext nneg i8 %i.kg to i32
  %i.kl = add nsw i32 %i.ki, -48
  %i.km = add nsw i32 %i.kl, %i.kk
  br label %dbuf_putc.exit507.thread

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.co
  %i.kn = phi i8 [ %i.ku, %bb.co ], [ %i.hh, %.lr.ph.split.i.preheader ]
  %.021.i = phi i64 [ %i.kr, %bb.co ], [ 0, %.lr.ph.split.i.preheader ]
  %.01320.i = phi ptr [ %i.kt, %bb.co ], [ %i.hg, %.lr.ph.split.i.preheader ]
  %i.ko = mul i64 %.021.i, 10
  %i.kp = zext nneg i8 %i.kn to i64
  %i.kq = add nsw i64 %i.kp, -48
  %i.kr = add nsw i64 %i.kq, %i.ko                ; 4 uses
  %i.ks = icmp ult i64 %i.kr, 2147483647
  br i1 %i.ks, label %bb.co, label %parse_digits.exit505.thread

bb.co:                                            ; preds = %.lr.ph.split.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.01320.i, i64 1 ; 3 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !21  ; 2 uses
  %i.kv = add i8 %i.ku, -58
  %or.cond.i = icmp ult i8 %i.kv, -10
  br i1 %or.cond.i, label %parse_digits.exit505, label %.lr.ph.split.i

parse_digits.exit505:                             ; preds = %bb.co
  store ptr %i.kt, ptr %i.a, align 8, !tbaa !20
  %i.kw = trunc nuw nsw i64 %i.kr to i32          ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !35 ; 2 uses
  %.not413 = icmp sgt i32 %i.ky, %i.kw
  br i1 %.not413, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %parse_digits.exit505
  %i.kz = tail call fastcc i32 @re_count_captures(ptr noundef %0)
  %.not414 = icmp sgt i32 %i.kz, %i.kw
  br i1 %.not414, label %._crit_edge, label %parse_digits.exit505.thread

._crit_edge:                                      ; preds = %bb.cp
  %.pre682 = load i32, ptr %i.kx, align 4, !tbaa !35
  br label %bb.cx

parse_digits.exit505.thread:                      ; preds = %.lr.ph.split.i, %bb.cp
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.lb = load i8, ptr %i.la, align 4, !tbaa !30, !range !47, !noundef !48
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %dbuf_putc.exit507, label %bb.cq

bb.cq:                                            ; preds = %parse_digits.exit505.thread
  store ptr %i.hg, ptr %i.a, align 8, !tbaa !20
  %i.ld = load i8, ptr %i.hg, align 1, !tbaa !21  ; 5 uses
  %i.le = icmp ult i8 %i.ld, 56
  br i1 %i.le, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  %i.lf = icmp samesign ult i8 %i.ld, 52
  br i1 %i.lf, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lg = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 3 uses
  store ptr %i.lg, ptr %i.a, align 8, !tbaa !20
  %i.lh = zext nneg i8 %i.ld to i32
  %i.li = add nsw i32 %i.lh, -48
  %.pre = load i8, ptr %i.lg, align 1, !tbaa !21
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lj = phi i8 [ %.pre, %bb.cs ], [ %i.ld, %bb.cr ] ; 2 uses
  %i.lk = phi ptr [ %i.lg, %bb.cs ], [ %i.hg, %bb.cr ] ; 2 uses
  %.0361 = phi i32 [ %i.li, %bb.cs ], [ 0, %bb.cr ] ; 2 uses
  %i.ll = and i8 %i.lj, -8
  %or.cond452 = icmp eq i8 %i.ll, 48
  br i1 %or.cond452, label %bb.cu, label %dbuf_putc.exit507.thread

bb.cu:                                            ; preds = %bb.ct
  %i.lm = shl nsw i32 %.0361, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 2 uses
  store ptr %i.ln, ptr %i.a, align 8, !tbaa !20
  %i.lo = zext nneg i8 %i.lj to i32
  %i.lp = add nsw i32 %i.lm, -48
  %i.lq = add nsw i32 %i.lp, %i.lo                ; 2 uses
  %i.lr = load i8, ptr %i.ln, align 1, !tbaa !21  ; 2 uses
  %i.ls = and i8 %i.lr, -8
  %or.cond453 = icmp eq i8 %i.ls, 48
  br i1 %or.cond453, label %bb.cv, label %dbuf_putc.exit507.thread

bb.cv:                                            ; preds = %bb.cu
  %i.lt = shl nsw i32 %i.lq, 3
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  store ptr %i.lu, ptr %i.a, align 8, !tbaa !20
  %i.lv = zext nneg i8 %i.lr to i32
  %i.lw = add nsw i32 %i.lt, -48
  %i.lx = add nsw i32 %i.lw, %i.lv
  br label %dbuf_putc.exit507.thread

bb.cw:                                            ; preds = %bb.cq
  %i.ly = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.ly, ptr %i.a, align 8, !tbaa !20
  %i.lz = zext i8 %i.ld to i32
  br label %dbuf_putc.exit507.thread

bb.cx:                                            ; preds = %._crit_edge, %parse_digits.exit505
  %i.ma = phi i32 [ %.pre682, %._crit_edge ], [ %i.ky, %parse_digits.exit505 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !44
  %i.md = trunc i64 %i.mc to i32                  ; 2 uses
  %i.me = select i1 %1, i32 34, i32 32
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.mg = load i8, ptr %i.mf, align 2, !tbaa !31, !range !47, !noundef !48
  %i.mh = zext nneg i8 %i.mg to i32
  %i.mi = or disjoint i32 %i.me, %i.mh
  tail call fastcc void @re_emit_op_u8(ptr noundef %0, i32 noundef %i.mi, i32 noundef 1)
  %i.mj = trunc i64 %i.kr to i8                   ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !41
  %i.mm = load i64, ptr %i.mb, align 8, !tbaa !40 ; 3 uses
  %i.mn = icmp eq i64 %i.ml, %i.mm
  br i1 %i.mn, label %bb.cy, label %bb.cz, !prof !42

bb.cy:                                            ; preds = %bb.cx
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.mj)
  br label %re_emit_op.exit

bb.cz:                                            ; preds = %bb.cx
  %i.mo = load ptr, ptr %0, align 8, !tbaa !43
  %i.mp = add i64 %i.mm, 1
  store i64 %i.mp, ptr %i.mb, align 8, !tbaa !40
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mm
  store i8 %i.mj, ptr %i.mq, align 1, !tbaa !21
  br label %re_emit_op.exit

dbuf_putc.exit507:                                ; preds = %parse_digits.exit505.thread
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.14)
  br label %.thread

bb.da:                                            ; preds = %bb.c
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !44 ; 4 uses
  %i.mt = trunc i64 %i.ms to i32                  ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !35 ; 3 uses
  br i1 %1, label %bb.db, label %re_emit_op.exit508

bb.db:                                            ; preds = %bb.da
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !41
  %i.my = icmp eq i64 %i.mx, %i.ms
  br i1 %i.my, label %bb.dc, label %bb.dd, !prof !42

bb.dc:                                            ; preds = %bb.db
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext 44)
  br label %re_emit_op.exit508

bb.dd:                                            ; preds = %bb.db
  %i.mz = load ptr, ptr %0, align 8, !tbaa !43
  %i.na = add i64 %i.ms, 1
  store i64 %i.na, ptr %i.mr, align 8, !tbaa !40
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.ms
  store i8 44, ptr %i.nb, align 1, !tbaa !21
  br label %re_emit_op.exit508

re_emit_op.exit508:                               ; preds = %bb.dd, %bb.dc, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.nc = call fastcc i32 @re_parse_nested_class(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.a)
  %.not.i509 = icmp eq i32 %i.nc, 0
  br i1 %.not.i509, label %bb.de, label %re_parse_char_class.exit.thread

re_parse_char_class.exit.thread:                  ; preds = %re_emit_op.exit508
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread

bb.de:                                            ; preds = %re_emit_op.exit508
  %i.nd = call fastcc i32 @re_emit_string_list(ptr noundef nonnull %0, ptr noundef %2)
  %.not7.i.not = icmp eq i32 %i.nd, 0
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !68 ; 2 uses
  %.not19.i.i = icmp eq i32 %i.nf, 0
  br i1 %.not19.i.i, label %re_parse_char_class.exit, label %.lr.ph17.i.i

.lr.ph17.i.i:                                     ; preds = %bb.de
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge.i.i, %.lr.ph17.i.i
  %i.ni = phi i32 [ %i.nf, %.lr.ph17.i.i ], [ %i.np, %._crit_edge.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph17.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.nj = load ptr, ptr %i.ng, align 8, !tbaa !69
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv.i.i
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !71 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.nl, null
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.df, %.lr.ph.i.i
  %.01214.i.i = phi ptr [ %i.nm, %.lr.ph.i.i ], [ %i.nl, %bb.df ] ; 2 uses
  %i.nm = load ptr, ptr %.01214.i.i, align 8, !tbaa !71 ; 2 uses
  %i.nn = load ptr, ptr %i.nh, align 8, !tbaa !72
  %i.no = call ptr @lre_realloc(ptr noundef %i.nn, ptr noundef nonnull %.01214.i.i, i64 noundef 0) #20 ; 0 uses
  %.not.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load i32, ptr %i.ne, align 4, !tbaa !68
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.df
  %i.np = phi i32 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.ni, %bb.df ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nq = zext i32 %i.np to i64
  %i.nr = icmp samesign ult i64 %indvars.iv.next.i.i, %i.nq
  br i1 %i.nr, label %bb.df, label %re_parse_char_class.exit, !llvm.loop !4

re_parse_char_class.exit:                         ; preds = %._crit_edge.i.i, %bb.de
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !72
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 48
end_hunk_0
