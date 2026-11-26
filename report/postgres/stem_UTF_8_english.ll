Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/stem_UTF_8_english?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@english_UTF_8_stem:bb.a
  %i.fx = sext i32 %i.fd to i64
  %i.fy = getelementptr i8, ptr %i.fw, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -1
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  %.mask201.i = and i32 %i.gb, 224
  %.not200.i = icmp eq i32 %.mask201.i, 96
  br i1 %.not200.i, label %bb.bl, label %.thread237.i

bb.bl:                                            ; preds = %bb.bk
  %i.gc = and i32 %i.gb, 31
  %i.gd = shl nuw i32 1, %i.gc
  %i.ge = and i32 %i.gd, 34881536
  %.not202.i = icmp eq i32 %i.ge, 0
  br i1 %.not202.i, label %.thread237.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gf = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_4, i32 noundef 7, ptr noundef null) #3
  switch i32 %i.gf, label %r_Step_1b.exit.thread [
    i32 0, label %.thread237.i
    i32 1, label %bb.bn
    i32 2, label %bb.bq
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.gg = load i32, ptr %i.e, align 4
  %i.gh = load i32, ptr %i.a, align 8
  %.neg.i186 = sub i32 %i.gh, %i.gg
  %i.gi = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 121, i32 noundef 0) #3
  %.not204.i = icmp eq i32 %i.gi, 0
  br i1 %.not204.i, label %bb.bo, label %.thread237.i

bb.bo:                                            ; preds = %bb.bn
  %i.gj = load i32, ptr %i.a, align 8
  %i.gk = load i32, ptr %i.cz, align 8
  %i.gl = icmp sgt i32 %i.gj, %i.gk
  br i1 %i.gl, label %.thread237.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gm = load i32, ptr %i.e, align 4
  %i.gn = add i32 %i.gm, %.neg.i186               ; 2 uses
  store i32 %i.gn, ptr %i.a, align 8
  store i32 %i.gn, ptr %i.c, align 4
  %i.go = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_7) #3 ; 2 uses
  %i.gp = icmp sgt i32 %i.go, -1
  br i1 %i.gp, label %r_Step_1b.exit.thread, label %.critedge

bb.bq:                                            ; preds = %bb.bm
  %i.gq = load i32, ptr %i.a, align 8
  %i.gr = load i32, ptr %i.cz, align 8
  %i.gs = icmp sgt i32 %i.gq, %i.gr
  br i1 %i.gs, label %.thread237.i, label %r_Step_1b.exit.thread

.thread237.i:                                     ; preds = %bb.bq, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bc
  %i.gt = load i32, ptr %i.e, align 4
  %i.gu = sub i32 %i.gt, %i.ff
  store i32 %i.gu, ptr %i.a, align 8
  %i.gv = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 121, i32 noundef 1) #3
  %i.gw = icmp sgt i32 %i.gv, -1
  br i1 %i.gw, label %.critedge.i, label %r_Step_1b.exit.thread

.critedge.i:                                      ; preds = %.thread237.i
  %i.gx = load i32, ptr %i.e, align 4
  %i.gy = sub i32 %i.gx, %i.ff
  store i32 %i.gy, ptr %i.a, align 8
  %i.gz = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, -1
  br i1 %i.ha, label %bb.br, label %.critedge

bb.br:                                            ; preds = %.critedge.i
  %i.hb = load i32, ptr %i.a, align 8             ; 7 uses
  store i32 %i.hb, ptr %i.bf, align 8
  store i32 %i.hb, ptr %i.c, align 4
  %i.hc = load i32, ptr %i.e, align 4
  %.neg214.i = sub i32 %i.hb, %i.hc
  %i.hd = add i32 %i.hb, -1                       ; 2 uses
  %i.he = load i32, ptr %i.cz, align 8
  %.not205.i = icmp sgt i32 %i.hd, %i.he
  br i1 %.not205.i, label %bb.bs, label %.thread240.i

bb.bs:                                            ; preds = %bb.br
  %i.hf = load ptr, ptr %0, align 8
  %i.hg = sext i32 %i.hd to i64
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = zext i8 %i.hi to i32                    ; 2 uses
  %.mask207.i = and i32 %i.hj, 224
  %.not206.i = icmp eq i32 %.mask207.i, 96
  br i1 %.not206.i, label %bb.bt, label %.thread240.i

bb.bt:                                            ; preds = %bb.bs
  %i.hk = and i32 %i.hj, 31
  %i.hl = shl nuw i32 1, %i.hk
  %i.hm = and i32 %i.hl, 68514004
  %.not208.i = icmp eq i32 %i.hm, 0
  br i1 %.not208.i, label %.thread240.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hn = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_6, i32 noundef 13, ptr noundef null) #3
  switch i32 %i.hn, label %.._crit_edge.i184_crit_edge [
    i32 1, label %r_Step_1b.exit
    i32 2, label %bb.bv
    i32 3, label %..thread240_crit_edge.i
  ]

.._crit_edge.i184_crit_edge:                      ; preds = %bb.bu
  %.pre241 = load i32, ptr %i.cz, align 8
  br label %._crit_edge.i184

..thread240_crit_edge.i:                          ; preds = %bb.bu
  %.pre257.i = load i32, ptr %i.a, align 8
  br label %.thread240.i

bb.bv:                                            ; preds = %bb.bu
  %i.ho = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_aeo, i32 noundef 97, i32 noundef 111, i32 noundef 0) #3
  %.not212.i = icmp eq i32 %i.ho, 0
  %.pre242 = load i32, ptr %i.cz, align 8         ; 3 uses
  br i1 %.not212.i, label %bb.bw, label %._crit_edge.i184

bb.bw:                                            ; preds = %bb.bv
  %i.hp = load i32, ptr %i.a, align 8
  %i.hq = icmp sgt i32 %i.hp, %.pre242
  br i1 %i.hq, label %._crit_edge.i184, label %r_Step_1b.exit.thread

.thread240.i:                                     ; preds = %..thread240_crit_edge.i, %bb.bt, %bb.bs, %bb.br
  %i.hr = phi i32 [ %.pre257.i, %..thread240_crit_edge.i ], [ %i.hb, %bb.br ], [ %i.hb, %bb.bs ], [ %i.hb, %bb.bt ] ; 2 uses
  %i.hs = load i32, ptr %i.bw, align 4
  %.not209.i = icmp eq i32 %i.hr, %i.hs
  br i1 %.not209.i, label %bb.bx, label %r_Step_1b.exit.thread

bb.bx:                                            ; preds = %.thread240.i
  %i.ht = load i32, ptr %i.e, align 4
  %i.hu = tail call fastcc i32 @r_shortv(ptr noundef nonnull %0)
  %.not210.not.not.not.i = icmp eq i32 %i.hu, 0
  br i1 %.not210.not.not.not.i, label %r_Step_1b.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.neg211.i = sub i32 %i.hr, %i.ht
  %i.hv = load i32, ptr %i.e, align 4
  %i.hw = add i32 %.neg211.i, %i.hv
  store i32 %i.hw, ptr %i.a, align 8
  br label %r_Step_1b.exit

._crit_edge.i184:                                 ; preds = %.._crit_edge.i184_crit_edge, %bb.bw, %bb.bv
  %i.hx = phi i32 [ %.pre241, %.._crit_edge.i184_crit_edge ], [ %.pre242, %bb.bw ], [ %.pre242, %bb.bv ]
  %.pre.i185 = load i32, ptr %i.e, align 4
  %i.hy = add i32 %.pre.i185, %.neg214.i          ; 3 uses
  store i32 %i.hy, ptr %i.a, align 8
  store i32 %i.hy, ptr %i.bf, align 8
  %i.hz = load ptr, ptr %0, align 8
  %i.ia = tail call i32 @skip_b_utf8(ptr noundef %i.hz, i32 noundef %i.hy, i32 noundef %i.hx, i32 noundef 1) #3 ; 3 uses
  %i.ib = icmp sgt i32 %i.ia, -1
  br i1 %i.ib, label %bb.bz, label %r_Step_1b.exit.thread

bb.bz:                                            ; preds = %._crit_edge.i184
  store i32 %i.ia, ptr %i.a, align 8
  store i32 %i.ia, ptr %i.c, align 4
  %i.ic = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.id = icmp slt i32 %i.ic, 0
  br i1 %i.id, label %.critedge, label %r_Step_1b.exit.thread

r_Step_1b.exit:                                   ; preds = %bb.bu, %bb.by
  %s_9.sink.i = phi ptr [ @s_9, %bb.by ], [ @s_8, %bb.bu ]
  %i.ie = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %s_9.sink.i) #3 ; 2 uses
  %i.if = icmp sgt i32 %i.ie, -1
  br i1 %i.if, label %r_Step_1b.exit.thread, label %.critedge

r_Step_1b.exit.thread:                            ; preds = %bb.bd, %bb.bh, %bb.bi, %.thread240.i, %bb.bw, %.thread237.i, %._crit_edge.i184, %bb.bx, %bb.bp, %bb.bc, %bb.bq, %bb.bm, %.thread.i182, %bb.bz, %r_Step_1b.exit
  %i.ig = load i32, ptr %i.e, align 4             ; 4 uses
  store i32 %i.ig, ptr %i.a, align 8
  store i32 %i.ig, ptr %i.bf, align 8
  %i.ih = load i32, ptr %i.cz, align 8
  %.not.i187 = icmp sgt i32 %i.ig, %i.ih
  br i1 %.not.i187, label %bb.ca, label %r_Step_1c.exit.thread

bb.ca:                                            ; preds = %r_Step_1b.exit.thread
  %i.ii = load ptr, ptr %0, align 8
  %i.ij = add nsw i32 %i.ig, -1                   ; 3 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds i8, ptr %i.ii, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1
  switch i8 %i.im, label %r_Step_1c.exit.thread [
    i8 121, label %bb.cb
    i8 89, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.ca
  store i32 %i.ij, ptr %i.a, align 8
  store i32 %i.ij, ptr %i.c, align 4
  %i.in = tail call i32 @out_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_v, i32 noundef 97, i32 noundef 121, i32 noundef 0) #3
  %.not35.i = icmp eq i32 %i.in, 0
  br i1 %.not35.i, label %bb.cc, label %r_Step_1c.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %i.io = load i32, ptr %i.a, align 8
  %i.ip = load i32, ptr %i.cz, align 8
  %i.iq = icmp sgt i32 %i.io, %i.ip
  br i1 %i.iq, label %bb.cd, label %r_Step_1c.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %i.ir = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_10) #3 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, -1
  br i1 %i.is, label %r_Step_1c.exit.thread, label %.critedge

r_Step_1c.exit.thread:                            ; preds = %bb.cd, %r_Step_1b.exit.thread, %bb.ca, %bb.cc, %bb.cb
  %i.it = load i32, ptr %i.e, align 4
  store i32 %i.it, ptr %i.a, align 8
  %i.iu = tail call fastcc i32 @r_Step_2(ptr noundef nonnull %0) ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, -1
  br i1 %i.iv, label %bb.ce, label %.critedge

bb.ce:                                            ; preds = %r_Step_1c.exit.thread
  %i.iw = load i32, ptr %i.e, align 4
  store i32 %i.iw, ptr %i.a, align 8
  %i.ix = tail call fastcc i32 @r_Step_3(ptr noundef nonnull %0) ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, -1
  br i1 %i.iy, label %bb.cf, label %.critedge

bb.cf:                                            ; preds = %bb.ce
  %i.iz = load i32, ptr %i.e, align 4
  store i32 %i.iz, ptr %i.a, align 8
  %i.ja = tail call fastcc i32 @r_Step_4(ptr noundef nonnull %0) ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, -1
  br i1 %i.jb, label %bb.cg, label %.critedge

bb.cg:                                            ; preds = %bb.cf
  %i.jc = load i32, ptr %i.e, align 4
  store i32 %i.jc, ptr %i.a, align 8
  %i.jd = tail call fastcc i32 @r_Step_5(ptr noundef nonnull %0) ; 2 uses
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %bb.ch, label %.critedge

bb.ch:                                            ; preds = %bb.cg
  %i.jf = load i32, ptr %i.cz, align 8            ; 2 uses
  store i32 %i.jf, ptr %i.a, align 8
  %i.jg = tail call fastcc i32 @r_postlude(ptr noundef nonnull %0) ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, -1
  br i1 %i.jh, label %bb.ci, label %.critedge

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.jf, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.cd, %bb.az, %bb.aw, %bb.av, %bb.at, %bb.ap, %bb.bi, %.critedge.i, %bb.bz, %bb.bp, %bb.t, %bb.r, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.ce, %r_Step_1c.exit.thread, %r_Step_1b.exit, %bb.cf, %bb.cg, %bb.ch, %bb.o, %bb.p, %bb.ci
  %i.ji = phi i32 [ 1, %bb.o ], [ 1, %bb.ci ], [ 1, %bb.p ], [ %i.av, %bb.r ], [ %i.ag, %bb.n ], [ %i.ae, %bb.m ], [ %i.ac, %bb.l ], [ %i.aa, %bb.k ], [ %i.y, %bb.j ], [ %i.w, %bb.i ], [ %i.u, %bb.h ], [ %i.s, %bb.g ], [ %i.jg, %bb.ch ], [ %i.ix, %bb.ce ], [ %i.iu, %r_Step_1c.exit.thread ], [ %i.ep, %bb.az ], [ %i.ie, %r_Step_1b.exit ], [ %i.go, %bb.bp ], [ %i.ja, %bb.cf ], [ %i.jd, %bb.cg ], [ %i.ir, %bb.cd ], [ %i.bd, %bb.t ], [ %i.ft, %bb.bi ], [ %i.gz, %.critedge.i ], [ %i.ic, %bb.bz ], [ %i.dj, %bb.ap ], [ %i.eb, %bb.av ], [ %i.du, %bb.at ], [ %i.ef, %bb.aw ], [ %i.bt, %bb.aa ]
  ret i32 %i.ji
}

declare i32 @skip_utf8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_Step_2(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %.mask = and i32 %i.k, 224
  %.not139 = icmp eq i32 %.mask, 96
  br i1 %.not139, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.k, 31
  %i.m = shl nuw i32 1, %i.l
  %i.n = and i32 %i.m, 1864192
  %.not140 = icmp eq i32 %i.n, 0
  br i1 %.not140, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_7, i32 noundef 25, ptr noundef null) #3 ; 2 uses
  %.not141 = icmp eq i32 %i.o, 0
  br i1 %.not141, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 8              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %0, i64 36
  %.val161 = load i32, ptr %i.r, align 4
  %.not162 = icmp sgt i32 %.val161, %i.p
  br i1 %.not162, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.o, label %bb.z [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
    i32 13, label %bb.s
    i32 14, label %bb.t
    i32 15, label %bb.w
    i32 16, label %bb.x
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_11) #3 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.z, label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.u = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_12) #3 ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.z, label %bb.aa

bb.i:                                             ; preds = %bb.f
  %i.w = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_13) #3 ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.z, label %bb.aa

bb.j:                                             ; preds = %bb.f
  %i.y = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_14) #3 ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.z, label %bb.aa

bb.k:                                             ; preds = %bb.f
  %i.aa = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_15) #3 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.z, label %bb.aa

bb.l:                                             ; preds = %bb.f
  %i.ac = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_16) #3 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.z, label %bb.aa

bb.m:                                             ; preds = %bb.f
  %i.ae = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_17) #3 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.z, label %bb.aa

bb.n:                                             ; preds = %bb.f
  %i.ag = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_18) #3 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.z, label %bb.aa

bb.o:                                             ; preds = %bb.f
  %i.ai = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_19) #3 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.z, label %bb.aa

bb.p:                                             ; preds = %bb.f
  %i.ak = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_20) #3 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.f
  %i.am = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_21) #3 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.f
  %i.ao = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_22) #3 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.z, label %bb.aa

bb.s:                                             ; preds = %bb.f
  %i.aq = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_23) #3 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.z, label %bb.aa

bb.t:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.e, align 8
  %.not144 = icmp sgt i32 %i.p, %i.as
  br i1 %.not144, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %0, align 8
  %i.au = add nsw i32 %i.p, -1                    ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %.not145 = icmp eq i8 %i.ax, 108
  br i1 %.not145, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  store i32 %i.au, ptr %i.a, align 8
  %i.ay = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_24) #3 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.z, label %bb.aa

bb.w:                                             ; preds = %bb.f
  %i.ba = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_25) #3 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.z, label %bb.aa

bb.x:                                             ; preds = %bb.f
  %i.bc = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_valid_LI, i32 noundef 99, i32 noundef 116, i32 noundef 0) #3
  %.not143 = icmp eq i32 %i.bc, 0
  br i1 %.not143, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bd = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.t, %bb.u, %bb.d, %bb.a, %bb.b, %bb.c, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.v, %bb.w, %bb.y, %bb.e, %bb.z
  %.17 = phi i32 [ 0, %bb.a ], [ 1, %bb.z ], [ %i.s, %bb.g ], [ %i.u, %bb.h ], [ %i.w, %bb.i ], [ %i.y, %bb.j ], [ %i.aa, %bb.k ], [ %i.ac, %bb.l ], [ %i.ae, %bb.m ], [ %i.ag, %bb.n ], [ %i.ai, %bb.o ], [ %i.ak, %bb.p ], [ %i.am, %bb.q ], [ %i.ao, %bb.r ], [ %i.aq, %bb.s ], [ 0, %bb.d ], [ %i.ay, %bb.v ], [ %i.ba, %bb.w ], [ 0, %bb.t ], [ %i.bd, %bb.y ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.u ], [ 0, %bb.x ]
  ret i32 %.17
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_Step_3(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8
  %i.d = add i32 %i.b, -2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = add i32 %i.b, -1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %.mask = and i32 %i.l, 224
  %.not68 = icmp eq i32 %.mask, 96
  br i1 %.not68, label %bb.c, label %bb.o
end_hunk_0
