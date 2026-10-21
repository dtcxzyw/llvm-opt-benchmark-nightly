Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/regcomp?download=true
inline.NumInlined: 319
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@pg_reg_getcolor:bb.a
  %i.p = add i32 %i.h, 1
  br label %bb.e

.thread:                                          ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i32, ptr %i.q, align 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.b
  %.228 = phi i32 [ %.02638, %bb.b ], [ %i.p, %bb.d ] ; 2 uses
  %.2 = phi i32 [ %i.h, %bb.b ], [ %.02539, %bb.d ] ; 2 uses
  %i.s = icmp slt i32 %.228, %.2
  br i1 %i.s, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.a, %.thread
  %.231 = phi i32 [ %i.r, %.thread ], [ 0, %bb.a ], [ 0, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.ai

bb.f:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = load i8, ptr %i.aa, align 2, !range !20, !noundef !21
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.split.i, label %regc_wc_isprint.exit.i

.split.i:                                         ; preds = %bb.g
  %i.ad = add i32 %1, -32
  %narrow.i.i = icmp ult i32 %i.ad, 95
  %spec.select = select i1 %narrow.i.i, i32 %i.y, i32 0
  br label %bb.h

regc_wc_isprint.exit.i:                           ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call zeroext i1 %i.ah(i32 noundef %1, ptr noundef nonnull %i.z) #17, !inline_history !101
  br i1 %i.ai, label %regc_wc_isprint.exit.i._crit_edge, label %bb.h

regc_wc_isprint.exit.i._crit_edge:                ; preds = %regc_wc_isprint.exit.i
  %.pre = load i32, ptr %i.x, align 8
  br label %bb.h

bb.h:                                             ; preds = %.split.i, %regc_wc_isprint.exit.i._crit_edge, %regc_wc_isprint.exit.i, %bb.f
  %.0.i = phi i32 [ %spec.select, %.split.i ], [ 0, %regc_wc_isprint.exit.i ], [ 0, %bb.f ], [ %.pre, %regc_wc_isprint.exit.i._crit_edge ] ; 5 uses
  %i.aj = load i32, ptr %i.w, align 8             ; 2 uses
  %.not41.i = icmp eq i32 %i.aj, 0
  br i1 %.not41.i, label %regc_wc_isalnum.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i8, ptr %i.al, align 2, !range !20, !noundef !21
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %.split100.i.a

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i32 %1, 128
  br i1 %i.ao, label %regc_wc_isalnum.exit.i, label %regc_wc_isalnum.exit.thread.i

.split100.i.a:                                    ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call zeroext i1 %i.as(i32 noundef %1, ptr noundef nonnull %i.ak) #17, !inline_history !102
  br i1 %i.at, label %.split100.i._crit_edge.a, label %regc_wc_isalnum.exit.thread.i

.split100.i._crit_edge.a:                         ; preds = %.split100.i.a
  %.pre41 = load i32, ptr %i.w, align 8
  br label %bb.k

regc_wc_isalnum.exit.i:                           ; preds = %bb.j
  %i.au = zext nneg i32 %1 to i64
  %i.av = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, 3
  %.not110.i = icmp eq i8 %i.ax, 0
  br i1 %.not110.i, label %regc_wc_isalnum.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %.split100.i._crit_edge.a, %regc_wc_isalnum.exit.i
  %i.ay = phi i32 [ %.pre41, %.split100.i._crit_edge.a ], [ %i.aj, %regc_wc_isalnum.exit.i ]
  %i.az = or i32 %i.ay, %.0.i
  br label %regc_wc_isalnum.exit.thread.i

regc_wc_isalnum.exit.thread.i:                    ; preds = %bb.k, %regc_wc_isalnum.exit.i, %.split100.i.a, %bb.j, %bb.h
  %.1.i = phi i32 [ %i.az, %bb.k ], [ %.0.i, %regc_wc_isalnum.exit.i ], [ %.0.i, %bb.h ], [ %.0.i, %bb.j ], [ %.0.i, %.split100.i.a ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %.not43.i = icmp eq i32 %i.bb, 0
  br i1 %.not43.i, label %regc_wc_isalpha.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %regc_wc_isalnum.exit.thread.i
  %i.bc = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i8, ptr %i.bd, align 2, !range !20, !noundef !21
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %.split101.i.a

bb.m:                                             ; preds = %bb.l
  %i.bg = icmp ult i32 %1, 128
  br i1 %i.bg, label %regc_wc_isalpha.exit.i, label %regc_wc_isalpha.exit.thread.i

.split101.i.a:                                    ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call zeroext i1 %i.bk(i32 noundef %1, ptr noundef nonnull %i.bc) #17, !inline_history !103
  br i1 %i.bl, label %.split101.i._crit_edge, label %regc_wc_isalpha.exit.thread.i

.split101.i._crit_edge:                           ; preds = %.split101.i.a
  %.pre42 = load i32, ptr %i.ba, align 4
  br label %bb.n

regc_wc_isalpha.exit.i:                           ; preds = %bb.m
  %i.bm = zext nneg i32 %1 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = and i8 %i.bo, 2
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %regc_wc_isalpha.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %.split101.i._crit_edge, %regc_wc_isalpha.exit.i
  %i.br = phi i32 [ %.pre42, %.split101.i._crit_edge ], [ %i.bb, %regc_wc_isalpha.exit.i ]
  %i.bs = or i32 %i.br, %.1.i
  br label %regc_wc_isalpha.exit.thread.i

regc_wc_isalpha.exit.thread.i:                    ; preds = %bb.n, %regc_wc_isalpha.exit.i, %.split101.i.a, %bb.m, %regc_wc_isalnum.exit.thread.i
  %.2.i = phi i32 [ %i.bs, %bb.n ], [ %.1.i, %regc_wc_isalpha.exit.i ], [ %.1.i, %regc_wc_isalnum.exit.thread.i ], [ %.1.i, %bb.m ], [ %.1.i, %.split101.i.a ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4            ; 3 uses
  %.not45.i = icmp eq i32 %i.bu, 0
  br i1 %.not45.i, label %regc_wc_isword.exit.thread83.i, label %bb.o

bb.o:                                             ; preds = %regc_wc_isalpha.exit.thread.i
  %i.bv = icmp eq i32 %1, 95
  br i1 %i.bv, label %regc_wc_isword.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i8, ptr %i.bx, align 2, !range !20, !noundef !21
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.split102.i.a

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp ult i32 %1, 128
  br i1 %i.ca, label %regc_wc_isword.exit.i, label %regc_wc_isword.exit.thread83.i

.split102.i.a:                                    ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call zeroext i1 %i.ce(i32 noundef %1, ptr noundef nonnull %i.bw) #17, !inline_history !104
  br i1 %i.cf, label %.split102.i.regc_wc_isword.exit.regc_wc_isword.exit.thread_crit_edge.i_crit_edge, label %regc_wc_isword.exit.thread83.i

.split102.i.regc_wc_isword.exit.regc_wc_isword.exit.thread_crit_edge.i_crit_edge: ; preds = %.split102.i.a
  %.pre.i.pre = load i32, ptr %i.bt, align 4
  br label %regc_wc_isword.exit.thread.i

regc_wc_isword.exit.i:                            ; preds = %bb.q
  %i.cg = zext nneg i32 %1 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = and i8 %i.ci, 3
  %.not111.i = icmp eq i8 %i.cj, 0
  br i1 %.not111.i, label %regc_wc_isword.exit.thread83.i, label %regc_wc_isword.exit.thread.i

regc_wc_isword.exit.thread.i:                     ; preds = %regc_wc_isword.exit.i, %.split102.i.regc_wc_isword.exit.regc_wc_isword.exit.thread_crit_edge.i_crit_edge, %bb.o
  %i.ck = phi i32 [ %i.bu, %bb.o ], [ %.pre.i.pre, %.split102.i.regc_wc_isword.exit.regc_wc_isword.exit.thread_crit_edge.i_crit_edge ], [ %i.bu, %regc_wc_isword.exit.i ]
  %i.cl = or i32 %i.ck, %.2.i
  br label %regc_wc_isword.exit.thread83.i

regc_wc_isword.exit.thread83.i:                   ; preds = %regc_wc_isword.exit.thread.i, %regc_wc_isword.exit.i, %.split102.i.a, %bb.q, %regc_wc_isalpha.exit.thread.i
  %.3.i = phi i32 [ %i.cl, %regc_wc_isword.exit.thread.i ], [ %.2.i, %regc_wc_isword.exit.i ], [ %.2.i, %regc_wc_isalpha.exit.thread.i ], [ %.2.i, %bb.q ], [ %.2.i, %.split102.i.a ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %.not47.i = icmp eq i32 %i.cn, 0
  br i1 %.not47.i, label %regc_wc_isdigit.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %regc_wc_isword.exit.thread83.i
  %i.co = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cq = load i8, ptr %i.cp, align 2, !range !20, !noundef !21
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.s, label %.split103.i.a

bb.s:                                             ; preds = %bb.r
  %i.cs = add i32 %1, -48
  %or.cond.i = icmp ult i32 %i.cs, 10
  br i1 %or.cond.i, label %bb.t, label %regc_wc_isdigit.exit.thread.i

.split103.i.a:                                    ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call zeroext i1 %i.cw(i32 noundef %1, ptr noundef nonnull %i.co) #17, !inline_history !105
  br i1 %i.cx, label %.split103.i._crit_edge.a, label %regc_wc_isdigit.exit.thread.i

.split103.i._crit_edge.a:                         ; preds = %.split103.i.a
  %.pre44 = load i32, ptr %i.cm, align 4
  br label %bb.t

bb.t:                                             ; preds = %.split103.i._crit_edge.a, %bb.s
  %i.cy = phi i32 [ %.pre44, %.split103.i._crit_edge.a ], [ %i.cn, %bb.s ]
  %i.cz = or i32 %i.cy, %.3.i
  br label %regc_wc_isdigit.exit.thread.i

regc_wc_isdigit.exit.thread.i:                    ; preds = %bb.t, %.split103.i.a, %bb.s, %regc_wc_isword.exit.thread83.i
  %.4.i = phi i32 [ %i.cz, %bb.t ], [ %.3.i, %.split103.i.a ], [ %.3.i, %regc_wc_isword.exit.thread83.i ], [ %.3.i, %bb.s ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4            ; 2 uses
  %.not49.i = icmp eq i32 %i.db, 0
  br i1 %.not49.i, label %regc_wc_ispunct.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %regc_wc_isdigit.exit.thread.i
  %i.dc = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.de = load i8, ptr %i.dd, align 2, !range !20, !noundef !21
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.v, label %.split104.i.a

bb.v:                                             ; preds = %bb.u
  %i.dg = icmp ult i32 %1, 128
  br i1 %i.dg, label %regc_wc_ispunct.exit.i, label %regc_wc_ispunct.exit.thread.i

.split104.i.a:                                    ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = tail call zeroext i1 %i.dk(i32 noundef %1, ptr noundef nonnull %i.dc) #17, !inline_history !106
  br i1 %i.dl, label %.split104.i._crit_edge.a, label %regc_wc_ispunct.exit.thread.i

.split104.i._crit_edge.a:                         ; preds = %.split104.i.a
  %.pre45 = load i32, ptr %i.da, align 4
  br label %bb.w

regc_wc_ispunct.exit.i:                           ; preds = %bb.v
  %i.dm = zext nneg i32 %1 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = and i8 %i.do, 64
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %regc_wc_ispunct.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %.split104.i._crit_edge.a, %regc_wc_ispunct.exit.i
  %i.dr = phi i32 [ %.pre45, %.split104.i._crit_edge.a ], [ %i.db, %regc_wc_ispunct.exit.i ]
  %i.ds = or i32 %i.dr, %.4.i
  br label %regc_wc_ispunct.exit.thread.i

regc_wc_ispunct.exit.thread.i:                    ; preds = %bb.w, %regc_wc_ispunct.exit.i, %.split104.i.a, %bb.v, %regc_wc_isdigit.exit.thread.i
  %.5.i = phi i32 [ %i.ds, %bb.w ], [ %.4.i, %regc_wc_ispunct.exit.i ], [ %.4.i, %regc_wc_isdigit.exit.thread.i ], [ %.4.i, %bb.v ], [ %.4.i, %.split104.i.a ] ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8            ; 2 uses
  %.not51.i = icmp eq i32 %i.du, 0
  br i1 %.not51.i, label %regc_wc_isspace.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %regc_wc_ispunct.exit.thread.i
  %i.dv = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i8, ptr %i.dw, align 2, !range !20, !noundef !21
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.y, label %.split105.i.a

bb.y:                                             ; preds = %bb.x
  %i.dz = icmp ult i32 %1, 128
  br i1 %i.dz, label %regc_wc_isspace.exit.i, label %regc_wc_isspace.exit.thread.i

.split105.i.a:                                    ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 104
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call zeroext i1 %i.ed(i32 noundef %1, ptr noundef nonnull %i.dv) #17, !inline_history !107
  br i1 %i.ee, label %.split105.i._crit_edge, label %regc_wc_isspace.exit.thread.i

.split105.i._crit_edge:                           ; preds = %.split105.i.a
  %.pre46 = load i32, ptr %i.dt, align 8
  br label %bb.z

regc_wc_isspace.exit.i:                           ; preds = %bb.y
  %i.ef = zext nneg i32 %1 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %regc_wc_isspace.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %.split105.i._crit_edge, %regc_wc_isspace.exit.i
  %i.ej = phi i32 [ %.pre46, %.split105.i._crit_edge ], [ %i.du, %regc_wc_isspace.exit.i ]
  %i.ek = or i32 %i.ej, %.5.i
  br label %regc_wc_isspace.exit.thread.i

regc_wc_isspace.exit.thread.i:                    ; preds = %bb.z, %regc_wc_isspace.exit.i, %.split105.i.a, %bb.y, %regc_wc_ispunct.exit.thread.i
  %.6.i = phi i32 [ %i.ek, %bb.z ], [ %.5.i, %regc_wc_isspace.exit.i ], [ %.5.i, %regc_wc_ispunct.exit.thread.i ], [ %.5.i, %bb.y ], [ %.5.i, %.split105.i.a ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %.not53.i = icmp eq i32 %i.em, 0
  br i1 %.not53.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %regc_wc_isspace.exit.thread.i
  %i.en = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.ep = load i8, ptr %i.eo, align 2, !range !20, !noundef !21
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %.split106.i.a, label %regc_wc_islower.exit.i

.split106.i.a:                                    ; preds = %bb.aa
  %i.er = add i32 %1, -97
  %narrow.i69.i = icmp ult i32 %i.er, 26
  br i1 %narrow.i69.i, label %bb.ab, label %bb.ac

regc_wc_islower.exit.i:                           ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = tail call zeroext i1 %i.ev(i32 noundef %1, ptr noundef nonnull %i.en) #17, !inline_history !108
  br i1 %i.ew, label %regc_wc_islower.exit.i._crit_edge, label %bb.ac

regc_wc_islower.exit.i._crit_edge:                ; preds = %regc_wc_islower.exit.i
  %.pre47 = load i32, ptr %i.el, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %regc_wc_islower.exit.i._crit_edge, %.split106.i.a
  %i.ex = phi i32 [ %.pre47, %regc_wc_islower.exit.i._crit_edge ], [ %i.em, %.split106.i.a ]
  %i.ey = or i32 %i.ex, %.6.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %regc_wc_islower.exit.i, %.split106.i.a, %regc_wc_isspace.exit.thread.i
  %.7.i = phi i32 [ %i.ey, %bb.ab ], [ %.6.i, %regc_wc_islower.exit.i ], [ %.6.i, %regc_wc_isspace.exit.thread.i ], [ %.6.i, %.split106.i.a ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4            ; 2 uses
  %.not55.i = icmp eq i32 %i.fa, 0
  br i1 %.not55.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fb = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fd = load i8, ptr %i.fc, align 2, !range !20, !noundef !21
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %.split107.i.a, label %regc_wc_isupper.exit.i

.split107.i.a:                                    ; preds = %bb.ad
  %i.ff = add i32 %1, -65
  %narrow.i72.i = icmp ult i32 %i.ff, 26
  br i1 %narrow.i72.i, label %bb.ae, label %bb.af

regc_wc_isupper.exit.i:                           ; preds = %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = tail call zeroext i1 %i.fj(i32 noundef %1, ptr noundef nonnull %i.fb) #17, !inline_history !109
  br i1 %i.fk, label %regc_wc_isupper.exit.i._crit_edge, label %bb.af

regc_wc_isupper.exit.i._crit_edge:                ; preds = %regc_wc_isupper.exit.i
  %.pre48 = load i32, ptr %i.ez, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %regc_wc_isupper.exit.i._crit_edge, %.split107.i.a
  %i.fl = phi i32 [ %.pre48, %regc_wc_isupper.exit.i._crit_edge ], [ %i.fa, %.split107.i.a ]
  %i.fm = or i32 %i.fl, %.7.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %regc_wc_isupper.exit.i, %.split107.i.a, %bb.ac
  %.8.i = phi i32 [ %i.fm, %bb.ae ], [ %.7.i, %regc_wc_isupper.exit.i ], [ %.7.i, %bb.ac ], [ %.7.i, %.split107.i.a ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8            ; 2 uses
  %.not57.i = icmp eq i32 %i.fo, 0
  br i1 %.not57.i, label %cclass_column_index.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !range !20, !noundef !21
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %.split108.i, label %regc_wc_isgraph.exit.i

.split108.i:                                      ; preds = %bb.ag
  %i.ft = add i32 %1, -33
  %narrow.i75.i = icmp ult i32 %i.ft, 94
  br i1 %narrow.i75.i, label %bb.ah, label %cclass_column_index.exit

regc_wc_isgraph.exit.i:                           ; preds = %bb.ag
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = tail call zeroext i1 %i.fx(i32 noundef %1, ptr noundef nonnull %i.fp) #17, !inline_history !110
end_hunk_0
begin_hunk_1_@next:bb.a
  store i32 112, ptr %i.c, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.at, ptr %i.im, align 8
  br label %brenext.exit

bb.db:                                            ; preds = %bb.p
  %i.in = icmp eq i32 %i.at, 61
  %.not335 = icmp ult ptr %i.as, %i.ap
  %or.cond401.a = select i1 %i.in, i1 %.not335, i1 false
  br i1 %or.cond401.a, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.io = load i32, ptr %i.as, align 4
  %i.ip = icmp eq i32 %i.io, 93
  br i1 %i.ip, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.iq, ptr %i.g, align 8
  store i32 6, ptr %i.f, align 4
  store i32 88, ptr %i.c, align 4
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 61, ptr %i.ir, align 8
  br label %brenext.exit

bb.de:                                            ; preds = %bb.dc, %bb.db
  store i32 112, ptr %i.c, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.at, ptr %i.is, align 8
  br label %brenext.exit

bb.df:                                            ; preds = %bb.p
  %i.it = icmp eq i32 %i.at, 58
  %.not352 = icmp ult ptr %i.as, %i.ap
  %or.cond402.a = select i1 %i.it, i1 %.not352, i1 false
  br i1 %or.cond402.a, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.iu = load i32, ptr %i.as, align 4
  %i.iv = icmp eq i32 %i.iu, 93
  br i1 %i.iv, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.iw, ptr %i.g, align 8
  store i32 6, ptr %i.f, align 4
  store i32 88, ptr %i.c, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 58, ptr %i.ix, align 8
  br label %brenext.exit

bb.di:                                            ; preds = %bb.dg, %bb.df
  store i32 112, ptr %i.c, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.at, ptr %i.iy, align 8
  br label %brenext.exit

bb.dj:                                            ; preds = %bb.p
  switch i32 %i.at, label %bb.fn [
    i32 124, label %bb.dk
    i32 42, label %bb.dl
    i32 43, label %bb.dp
    i32 63, label %bb.dt
    i32 123, label %bb.dx
    i32 40, label %bb.ed
    i32 41, label %bb.et
    i32 91, label %bb.ew
    i32 46, label %bb.fi
    i32 94, label %bb.fj
    i32 36, label %bb.fk
    i32 92, label %bb.fl
  ]

bb.dk:                                            ; preds = %bb.dj
  store i32 124, ptr %i.c, align 4
  br label %brenext.exit

bb.dl:                                            ; preds = %bb.dj
  %i.iz = load i32, ptr %i.e, align 4
  %i.ja = and i32 %i.iz, 2
  %.not376 = icmp ne i32 %i.ja, 0
  %.not377 = icmp ult ptr %i.as, %i.ap
  %or.cond403.a = select i1 %.not376, i1 %.not377, i1 false
  br i1 %or.cond403.a, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.jb = load i32, ptr %i.as, align 4
  %i.jc = icmp eq i32 %i.jb, 63
  br i1 %i.jc, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.jd, ptr %i.g, align 8
  %i.je = load ptr, ptr %0, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = or i64 %i.jg, 128
  store i64 %i.jh, ptr %i.jf, align 8
  store i32 42, ptr %i.c, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ji, align 8
  br label %brenext.exit

bb.do:                                            ; preds = %bb.dm, %bb.dl
  store i32 42, ptr %i.c, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.jj, align 8
  br label %brenext.exit

bb.dp:                                            ; preds = %bb.dj
  %i.jk = load i32, ptr %i.e, align 4
  %i.jl = and i32 %i.jk, 2
  %.not374 = icmp ne i32 %i.jl, 0
  %.not375 = icmp ult ptr %i.as, %i.ap
  %or.cond404.a = select i1 %.not374, i1 %.not375, i1 false
  br i1 %or.cond404.a, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.jm = load i32, ptr %i.as, align 4
  %i.jn = icmp eq i32 %i.jm, 63
  br i1 %i.jn, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.jo, ptr %i.g, align 8
  %i.jp = load ptr, ptr %0, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = or i64 %i.jr, 128
  store i64 %i.js, ptr %i.jq, align 8
  store i32 43, ptr %i.c, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.jt, align 8
  br label %brenext.exit

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  store i32 43, ptr %i.c, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ju, align 8
  br label %brenext.exit

bb.dt:                                            ; preds = %bb.dj
  %i.jv = load i32, ptr %i.e, align 4
  %i.jw = and i32 %i.jv, 2
  %.not372 = icmp ne i32 %i.jw, 0
  %.not373 = icmp ult ptr %i.as, %i.ap
  %or.cond405 = select i1 %.not372, i1 %.not373, i1 false
  br i1 %or.cond405, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.jx = load i32, ptr %i.as, align 4
  %i.jy = icmp eq i32 %i.jx, 63
  br i1 %i.jy, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.jz, ptr %i.g, align 8
  %i.ka = load ptr, ptr %0, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = or i64 %i.kc, 128
  store i64 %i.kd, ptr %i.kb, align 8
  store i32 63, ptr %i.c, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ke, align 8
  br label %brenext.exit

bb.dw:                                            ; preds = %bb.du, %bb.dt
  store i32 63, ptr %i.c, align 4
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.kf, align 8
  br label %brenext.exit

bb.dx:                                            ; preds = %bb.dj
  %i.kg = load i32, ptr %i.e, align 4
  %i.kh = and i32 %i.kg, 32
  %.not369 = icmp eq i32 %i.kh, 0
  br i1 %.not369, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call fastcc void @skip(ptr noundef %0)
  %.pre935 = load ptr, ptr %i.g, align 8
  %.pre936 = load ptr, ptr %i.h, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.ki = phi ptr [ %.pre936, %bb.dy ], [ %i.ap, %bb.dx ]
  %i.kj = phi ptr [ %.pre935, %bb.dy ], [ %i.as, %bb.dx ] ; 2 uses
  %.not370 = icmp ult ptr %i.kj, %i.ki
  br i1 %.not370, label %bb.ea, label %regc_wc_isdigit.exit.thread

bb.ea:                                            ; preds = %bb.dz
  %i.kk = load i32, ptr %i.kj, align 4            ; 2 uses
  %i.kl = load ptr, ptr @pg_regex_locale, align 8 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.kn = load i8, ptr %i.km, align 2, !range !20, !noundef !21
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.eb, label %.split

bb.eb:                                            ; preds = %bb.ea
  %i.kp = add i32 %i.kk, -48
  %or.cond1131 = icmp ult i32 %i.kp, 10
  br i1 %or.cond1131, label %bb.ec, label %regc_wc_isdigit.exit.thread

.split:                                           ; preds = %bb.ea
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = tail call zeroext i1 %i.kt(i32 noundef %i.kk, ptr noundef nonnull %i.kl) #17, !inline_history !122
  br i1 %i.ku, label %bb.ec, label %regc_wc_isdigit.exit.thread

regc_wc_isdigit.exit.thread:                      ; preds = %bb.eb, %.split, %bb.dz
  %i.kv = load ptr, ptr %0, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = or i64 %i.kx, 8
  store i64 %i.ky, ptr %i.kw, align 8
  %i.kz = load ptr, ptr %0, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = or i64 %i.lb, 256
  store i64 %i.lc, ptr %i.la, align 8
  store i32 112, ptr %i.c, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 123, ptr %i.ld, align 8
  br label %brenext.exit

bb.ec:                                            ; preds = %bb.eb, %.split
  %i.le = load ptr, ptr %0, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = or i64 %i.lg, 4
  store i64 %i.lh, ptr %i.lf, align 8
  store i32 4, ptr %i.f, align 4
  store i32 123, ptr %i.c, align 4
  br label %brenext.exit

bb.ed:                                            ; preds = %bb.dj
  %i.li = load i32, ptr %i.e, align 4
  %i.lj = and i32 %i.li, 2
  %.not358 = icmp ne i32 %i.lj, 0
  %.not359 = icmp ult ptr %i.as, %i.ap
  %or.cond406 = select i1 %.not358, i1 %.not359, i1 false
  br i1 %or.cond406, label %bb.ee, label %bb.es

bb.ee:                                            ; preds = %bb.ed
  %i.lk = load i32, ptr %i.as, align 4
  %i.ll = icmp eq i32 %i.lk, 63
  br i1 %i.ll, label %bb.ef, label %bb.es

bb.ef:                                            ; preds = %bb.ee
  %i.lm = load ptr, ptr %0, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = or i64 %i.lo, 128
  store i64 %i.lp, ptr %i.ln, align 8
  %i.lq = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 3 uses
  store ptr %i.lr, ptr %i.g, align 8
  %i.ls = load ptr, ptr %i.h, align 8             ; 4 uses
  %.not360 = icmp ult ptr %i.lr, %i.ls
  br i1 %.not360, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i32 101, ptr %i.c, align 4
  %i.lt = load i32, ptr %i.a, align 8             ; 2 uses
  %.not368 = icmp eq i32 %i.lt, 0
  %spec.select385 = select i1 %.not368, i32 13, i32 %i.lt
  store i32 %spec.select385, ptr %i.a, align 8
  br label %brenext.exit

bb.eh:                                            ; preds = %bb.ef
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 5 uses
  store ptr %i.lu, ptr %i.g, align 8
  %i.lv = load i32, ptr %i.lr, align 4
  switch i32 %i.lv, label %bb.er [
    i32 58, label %bb.ei
    i32 35, label %.preheader408
    i32 61, label %bb.ej
    i32 33, label %bb.ek
    i32 60, label %bb.el
  ]

.preheader408:                                    ; preds = %bb.eh
  %.not364769 = icmp ult ptr %i.lu, %i.ls
  br i1 %.not364769, label %.lr.ph, label %.critedge

bb.ei:                                            ; preds = %bb.eh
  store i32 40, ptr %i.c, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.lw, align 8
  br label %brenext.exit

.lr.ph:                                           ; preds = %.preheader408, %.lr.ph
  %i.lx = phi ptr [ %i.lz, %.lr.ph ], [ %i.lu, %.preheader408 ] ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4
  %.not365 = icmp ne i32 %i.ly, 41
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 4 ; 3 uses
  store ptr %i.lz, ptr %i.g, align 8
  %.not364 = icmp ult ptr %i.lz, %i.ls
  %or.cond1300 = select i1 %.not365, i1 %.not364, i1 false
  br i1 %or.cond1300, label %.lr.ph, label %.critedge, !llvm.loop !120

.critedge:                                        ; preds = %.lr.ph, %.preheader408
  %i.ma = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.ma, 0
  br i1 %.not, label %bb.b, label %brenext.exit

bb.ej:                                            ; preds = %bb.eh
  %i.mb = load ptr, ptr %0, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = or i64 %i.md, 2
  store i64 %i.me, ptr %i.mc, align 8
  store i32 76, ptr %i.c, align 4
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.mf, align 8
  br label %brenext.exit

bb.ek:                                            ; preds = %bb.eh
  %i.mg = load ptr, ptr %0, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16 ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = or i64 %i.mi, 2
  store i64 %i.mj, ptr %i.mh, align 8
  store i32 76, ptr %i.c, align 4
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.mk, align 8
  br label %brenext.exit

bb.el:                                            ; preds = %bb.eh
  %.not361 = icmp ult ptr %i.lu, %i.ls
  br i1 %.not361, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  store i32 101, ptr %i.c, align 4
  %i.ml = load i32, ptr %i.a, align 8             ; 2 uses
  %.not363 = icmp eq i32 %i.ml, 0
  %spec.select386 = select i1 %.not363, i32 13, i32 %i.ml
  store i32 %spec.select386, ptr %i.a, align 8
  br label %brenext.exit

bb.en:                                            ; preds = %bb.el
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  store ptr %i.mm, ptr %i.g, align 8
  %i.mn = load i32, ptr %i.lu, align 4
  switch i32 %i.mn, label %bb.eq [
    i32 61, label %bb.eo
    i32 33, label %bb.ep
  ]

bb.eo:                                            ; preds = %bb.en
  %i.mo = load ptr, ptr %0, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8
  %i.mr = or i64 %i.mq, 2
  store i64 %i.mr, ptr %i.mp, align 8
  store i32 76, ptr %i.c, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ms, align 8
  br label %brenext.exit

bb.ep:                                            ; preds = %bb.en
  %i.mt = load ptr, ptr %0, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8
  %i.mw = or i64 %i.mv, 2
  store i64 %i.mw, ptr %i.mu, align 8
  store i32 76, ptr %i.c, align 4
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.mx, align 8
  br label %brenext.exit

bb.eq:                                            ; preds = %bb.en
  store i32 101, ptr %i.c, align 4
  %i.my = load i32, ptr %i.a, align 8             ; 2 uses
  %.not362 = icmp eq i32 %i.my, 0
  %spec.select387 = select i1 %.not362, i32 13, i32 %i.my
  store i32 %spec.select387, ptr %i.a, align 8
  br label %brenext.exit

bb.er:                                            ; preds = %bb.eh
  store i32 101, ptr %i.c, align 4
  %i.mz = load i32, ptr %i.a, align 8             ; 2 uses
  %.not367 = icmp eq i32 %i.mz, 0
  %spec.select388 = select i1 %.not367, i32 13, i32 %i.mz
  store i32 %spec.select388, ptr %i.a, align 8
  br label %brenext.exit

bb.es:                                            ; preds = %bb.ee, %bb.ed
  store i32 40, ptr %i.c, align 4
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.na, align 8
  br label %brenext.exit

bb.et:                                            ; preds = %bb.dj
  %i.nb = load i32, ptr %i.d, align 8
  %i.nc = icmp eq i32 %i.nb, 40
  br i1 %i.nc, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.nd = load ptr, ptr %0, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8
  %i.ng = or i64 %i.nf, 256
  store i64 %i.ng, ptr %i.ne, align 8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  store i32 41, ptr %i.c, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 41, ptr %i.nh, align 8
end_hunk_1
begin_hunk_2_@regc_ctype_get_cache:bb.a

bb.s:                                             ; preds = %.sink.split104, %bb.q
  %i.aw = load i32, ptr %i.q, align 8             ; 4 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = load ptr, ptr %i.t, align 8
  tail call void @free(ptr noundef %i.ay) #17
  br label %.sink.split106

bb.u:                                             ; preds = %bb.s
  %i.az = load i32, ptr %i.r, align 4
  %i.ba = icmp slt i32 %i.aw, %i.az
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.t, align 8
  %i.bc = sext i32 %i.aw to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %i.be = tail call ptr @realloc(ptr noundef %i.bb, i64 noundef %i.bd) #21 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.loopexit, label %.sink.split106

.sink.split106:                                   ; preds = %bb.v, %bb.t
  %.sink108 = phi ptr [ null, %bb.t ], [ %i.be, %bb.v ]
  %.sink107 = phi i32 [ 0, %bb.t ], [ %i.aw, %bb.v ]
  store ptr %.sink108, ptr %i.t, align 8
  store i32 %.sink107, ptr %i.r, align 4
  br label %bb.w

bb.w:                                             ; preds = %.sink.split106, %bb.u
  %i.bg = load ptr, ptr @pg_ctype_cache_list, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.bg, ptr %i.bh, align 8
  store ptr %i.i, ptr @pg_ctype_cache_list, align 8
  br label %bb.x

.loopexit:                                        ; preds = %bb.l, %bb.v, %bb.r, %bb.o, %bb.f
  %i.bi = load ptr, ptr %i.p, align 8
  tail call void @free(ptr noundef %i.bi) #17
  %i.bj = load ptr, ptr %i.t, align 8
  tail call void @free(ptr noundef %i.bj) #17
  tail call void @free(ptr noundef nonnull %i.i) #17
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %.loopexit, %bb.w, %bb.d
  %.075 = phi ptr [ %i.g, %bb.d ], [ %i.m, %bb.w ], [ null, %.loopexit ], [ null, %._crit_edge ]
  ret ptr %.075
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_isprint(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %0, -32
  %narrow = icmp ult i32 %i.e, 95
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 %i.i(i32 noundef %0, ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %narrow, %bb.b ], [ %i.j, %bb.c ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_isalnum(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %0, 128
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 3
  %i.j = icmp ne i8 %i.i, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call zeroext i1 %i.n(i32 noundef %0, ptr noundef nonnull %i.a) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0.shrunk = phi i1 [ %i.o, %bb.d ], [ false, %bb.b ], [ %i.j, %bb.c ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_isalpha(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %0, 128
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = lshr i8 %i.h, 1
  %.lobit = and i8 %i.i, 1
  %i.j = zext nneg i8 %.lobit to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call zeroext i1 %i.n(i32 noundef %0, ptr noundef nonnull %i.a) #17
  %i.p = zext i1 %i.o to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_isword(i32 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i32 %0, 95
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i8, ptr %i.c, align 2, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %0, 128
  br i1 %i.f, label %bb.d, label %regc_wc_isalnum.exit

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 3
  %i.k = icmp ne i8 %i.j, 0
  br label %regc_wc_isalnum.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call zeroext i1 %i.o(i32 noundef %0, ptr noundef nonnull %i.b) #17, !inline_history !26
  br label %regc_wc_isalnum.exit

regc_wc_isalnum.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %.0.shrunk.i = phi i1 [ %i.p, %bb.e ], [ false, %bb.c ], [ %i.k, %bb.d ]
  %.0.i = zext i1 %.0.shrunk.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %regc_wc_isalnum.exit
  %.0 = phi i32 [ %.0.i, %regc_wc_isalnum.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_isdigit(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = add i32 %0, -48
  %narrow = icmp ult i32 %1, 10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 %i.h(i32 noundef %0, ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %narrow, %bb.b ], [ %i.i, %bb.c ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_ispunct(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %0, 128
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = lshr i8 %i.h, 6
  %.lobit = and i8 %i.i, 1
  %i.j = zext nneg i8 %.lobit to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call zeroext i1 %i.n(i32 noundef %0, ptr noundef nonnull %i.a) #17
  %i.p = zext i1 %i.o to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_isspace(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %0, 128
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %.lobit = lshr i8 %i.h, 7
  %i.i = zext nneg i8 %.lobit to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call zeroext i1 %i.m(i32 noundef %0, ptr noundef nonnull %i.a) #17
  %i.o = zext i1 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_islower(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %0, -97
  %narrow = icmp ult i32 %i.e, 26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 %i.i(i32 noundef %0, ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %narrow, %bb.b ], [ %i.j, %bb.c ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_isupper(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %0, -65
  %narrow = icmp ult i32 %i.e, 26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 %i.i(i32 noundef %0, ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %narrow, %bb.b ], [ %i.j, %bb.c ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @regc_wc_isgraph(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @pg_regex_locale, align 8  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i8, ptr %i.b, align 2, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %0, -33
  %narrow = icmp ult i32 %i.e, 94
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 %i.i(i32 noundef %0, ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %narrow, %bb.b ], [ %i.j, %bb.c ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare i32 @GetDatabaseEncoding() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @store_match(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, -2147483648) %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp samesign ugt i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not33 = icmp slt i32 %i.c, %i.e
  br i1 %.not33, label %._crit_edge35, label %bb.c

._crit_edge35:                                    ; preds = %bb.b
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre37 = load ptr, ptr %.phi.trans.insert36, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = shl i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call ptr @realloc(ptr noundef %i.h, i64 noundef %i.j) #21 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.g, align 8
  %.pre38 = load i32, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge35, %bb.d
  %i.m = phi i32 [ %i.c, %._crit_edge35 ], [ %.pre38, %bb.d ]
end_hunk_2
