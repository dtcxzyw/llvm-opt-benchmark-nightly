Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_auto_possess?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@get_chr_property_list:bb.a
  %i.fh = and i8 %i.fg, 63
  %i.fi = zext nneg i8 %i.fh to i32               ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.2207215, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !21
  %i.fl = and i8 %i.fk, 63
  %i.fm = zext nneg i8 %i.fl to i32               ; 2 uses
  br i1 %i.fa, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fn = shl nuw i32 %i.dg, 24
  %i.fo = and i32 %i.fn, 50331648
  %i.fp = shl nuw nsw i32 %i.dw, 18
  %i.fq = or disjoint i32 %i.fp, %i.fo
  %i.fr = shl nuw nsw i32 %i.fe, 12
  %i.fs = or disjoint i32 %i.fq, %i.fr
  %i.ft = shl nuw nsw i32 %i.fi, 6
  %i.fu = or disjoint i32 %i.fs, %i.ft
  %i.fv = or disjoint i32 %i.fu, %i.fm
  %i.fw = getelementptr inbounds nuw i8, ptr %.2207215, i64 5
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.fx = shl i32 %i.dg, 30
  %i.fy = and i32 %i.fx, 1073741824
  %i.fz = shl nuw nsw i32 %i.dw, 24
  %i.ga = or disjoint i32 %i.fz, %i.fy
  %i.gb = shl nuw nsw i32 %i.fe, 18
  %i.gc = or disjoint i32 %i.ga, %i.gb
  %i.gd = shl nuw nsw i32 %i.fi, 12
  %i.ge = or disjoint i32 %i.gc, %i.gd
  %i.gf = shl nuw nsw i32 %i.fm, 6
  %i.gg = or disjoint i32 %i.ge, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.2207215, i64 5
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !21
  %i.gj = and i8 %i.gi, 63
  %i.gk = zext nneg i8 %i.gj to i32
  %i.gl = or disjoint i32 %i.gg, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.2207215, i64 6
  br label %bb.af

bb.af:                                            ; preds = %bb.x, %bb.ab, %bb.ae, %bb.ad, %bb.z, %.thread204.thread
  %.4 = phi ptr [ %i.dn, %bb.x ], [ %i.eg, %bb.z ], [ %i.ey, %bb.ab ], [ %i.fw, %bb.ad ], [ %i.gm, %bb.ae ], [ %i.de, %.thread204.thread ] ; 2 uses
  %.1 = phi i32 [ %i.dr, %bb.x ], [ %i.ef, %bb.z ], [ %i.ex, %bb.ab ], [ %i.fv, %bb.ad ], [ %i.gl, %bb.ae ], [ %i.dg, %.thread204.thread ] ; 8 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.1, ptr %i.gn, align 4, !tbaa !12
  %i.go = icmp samesign ult i32 %.1, 128
  br i1 %i.go, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gp = icmp samesign ugt i32 %.1, 255
  %i.gq = or i32 %2, %1
  %i.gr = icmp ne i32 %i.gq, 0
  %or.cond25 = or i1 %i.gr, %i.gp
  br i1 %or.cond25, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gs = zext nneg i32 %.1 to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !21
  %i.gv = zext i8 %i.gu to i32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gw = lshr i32 %.1, 7
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !23
  %i.ha = zext i16 %i.gz to i32
  %i.hb = shl nuw nsw i32 %i.ha, 7
  %i.hc = and i32 %.1, 127
  %i.hd = or disjoint i32 %i.hb, %i.hc
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !23
  %i.hh = zext i16 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !26
  %i.hl = add nsw i32 %i.hk, %.1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink221 = phi i32 [ %i.hl, %bb.ai ], [ %i.gv, %bb.ah ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sink221, ptr %i.hm, align 4, !tbaa !12
  %i.hn = icmp eq i32 %.1, %.sink221
  br i1 %i.hn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 -1, ptr %i.ho, align 4, !tbaa !12
  br label %bb.be

bb.al:                                            ; preds = %bb.aj
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 -1, ptr %i.hp, align 4, !tbaa !12
  br label %bb.be

bb.am:                                            ; preds = %bb.k, %bb.k
  %i.hq = load i8, ptr %.2, align 1, !tbaa !21    ; 2 uses
  %.not = icmp eq i8 %i.hq, 10
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hr = zext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !21
  %i.hv = zext i8 %i.hu to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !12
  %i.hx = getelementptr inbounds nuw i8, ptr %.2, i64 2
  br label %bb.be

bb.ao:                                            ; preds = %bb.am
  %i.hy = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !21
  %i.ia = zext i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @_pcre2_ucd_caseless_sets_8, i64 %i.ia ; 6 uses
  %.ptr195 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 3 uses
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !12 ; 2 uses
  store i32 %i.id, ptr %.ptr195, align 4, !tbaa !12
  %.not196 = icmp eq i32 %i.id, -1
  br i1 %.not196, label %bb.av, label %bb.aq

bb.ap:                                            ; preds = %bb.au
  %i.ie = load i8, ptr %i.ic, align 1, !tbaa !21
  %i.if = zext i8 %i.ie to i32
  store i32 %i.if, ptr %.ptr195, align 4, !tbaa !12
  %i.ig = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !21
  %i.ii = zext i8 %i.ih to i32
  store i32 %i.ii, ptr %.0181.ptr.1, align 4, !tbaa !12
  br label %bb.be

bb.aq:                                            ; preds = %bb.ao
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %.0181.ptr.1 = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !12 ; 2 uses
  store i32 %i.ik, ptr %.0181.ptr.1, align 4, !tbaa !12
  %.not196.1 = icmp eq i32 %i.ik, -1
  br i1 %.not196.1, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.0181.ptr.2 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.im = load i32, ptr %i.il, align 4, !tbaa !12 ; 2 uses
  store i32 %i.im, ptr %.0181.ptr.2, align 4, !tbaa !12
  %.not196.2 = icmp eq i32 %i.im, -1
  br i1 %.not196.2, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %.0181.ptr.3 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.io = load i32, ptr %i.in, align 4, !tbaa !12 ; 2 uses
  store i32 %i.io, ptr %.0181.ptr.3, align 4, !tbaa !12
  %.not196.3 = icmp eq i32 %i.io, -1
  br i1 %.not196.3, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %.0181.ptr.4 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !12 ; 2 uses
  store i32 %i.iq, ptr %.0181.ptr.4, align 4, !tbaa !12
  %.not196.4 = icmp eq i32 %i.iq, -1
  br i1 %.not196.4, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 20
  %.0181.ptr.5 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !12 ; 2 uses
  store i32 %i.is, ptr %.0181.ptr.5, align 4, !tbaa !12
  %.not196.5 = icmp eq i32 %i.is, -1
  br i1 %.not196.5, label %bb.av, label %bb.ap

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %i.it = icmp eq i8 %.0185, 16
  %i.iu = select i1 %i.it, i32 29, i32 31
  store i32 %i.iu, ptr %4, align 4, !tbaa !12
  br label %bb.be

bb.aw:                                            ; preds = %bb.k
  %i.iv = load i8, ptr %.2, align 1, !tbaa !21
  %i.iw = zext i8 %i.iv to i64
  %i.ix = shl nuw nsw i64 %i.iw, 8
  %i.iy = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !21
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ix
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ja
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.k, %bb.k
  %i.je = getelementptr inbounds nuw i8, ptr %.2, i64 32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0183 = phi ptr [ %i.jd, %bb.aw ], [ %i.je, %bb.ax ] ; 6 uses
  %i.jf = load i8, ptr %.0183, align 1, !tbaa !21
  switch i8 %i.jf, label %bb.bc [
    i8 98, label %bb.az
    i8 99, label %bb.az
    i8 102, label %bb.az
    i8 103, label %bb.az
    i8 106, label %bb.az
    i8 108, label %bb.az
    i8 100, label %bb.ba
    i8 101, label %bb.ba
    i8 107, label %bb.ba
    i8 104, label %bb.bb
    i8 105, label %bb.bb
    i8 109, label %bb.bb
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay
  store i32 1, ptr %i.c, align 4, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.0183, i64 1
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay, %bb.ay, %bb.ay
  %i.jh = getelementptr inbounds nuw i8, ptr %.0183, i64 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay, %bb.ay, %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %.0183, i64 1
  %5 = load i16, ptr %i.ji, align 1
  %i.jj = icmp eq i16 %5, 0
  %i.jk = zext i1 %i.jj to i32
  store i32 %i.jk, ptr %i.c, align 4, !tbaa !12
  %i.jl = getelementptr inbounds nuw i8, ptr %.0183, i64 5
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.1184 = phi ptr [ %.0183, %bb.ay ], [ %i.jg, %bb.az ], [ %i.jh, %bb.ba ], [ %i.jl, %bb.bb ] ; 2 uses
  %i.jm = ptrtoint ptr %.1184 to i64
  %i.jn = ptrtoint ptr %.2 to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !12
  br label %bb.be

bb.bd:                                            ; preds = %bb.k
  br label %bb.be

bb.be:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.ak, %bb.al, %bb.bd, %bb.bc, %bb.av, %bb.ap, %bb.an, %bb.u
  %.0186 = phi ptr [ null, %bb.bd ], [ %.1184, %bb.bc ], [ %.3, %bb.u ], [ %.2, %bb.k ], [ %i.hx, %bb.an ], [ %i.ic, %bb.ap ], [ %i.ic, %bb.av ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.4, %bb.al ], [ %.4, %bb.ak ]
  ret ptr %.0186
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @compare_opcodes(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load i32, ptr %6, align 4, !tbaa !12     ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %6, align 4, !tbaa !12
  %i.d = icmp slt i32 %i.b, 2
  %.1262.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %.1262.sroa.gep340 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %.1262.sroa.gep348 = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 6 uses
  %.1262.sroa.gep349 = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  br i1 %i.d, label %.thread366, label %.preheader404

.preheader404:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not307 = icmp eq i32 %1, 0                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.k = icmp eq ptr %4, %i.a
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader404
  %.0273 = phi ptr [ %0, %.preheader404 ], [ %.0273.be, %.backedge.backedge ] ; 7 uses
  %.0247 = phi i32 [ 0, %.preheader404 ], [ %.0247.be, %.backedge.backedge ] ; 11 uses
  %i.l = load i8, ptr %.0273, align 1, !tbaa !21  ; 2 uses
  switch i8 %i.l, label %.loopexit403 [
    i8 118, label %bb.b
    i8 119, label %bb.c
    i8 120, label %.preheader402
  ]

bb.b:                                             ; preds = %.backedge
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @_pcre2_OP_lengths_8, i64 118), align 1, !tbaa !21
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.0273, i64 %i.n
  br label %.backedge.backedge

bb.c:                                             ; preds = %.backedge
  %i.p = getelementptr inbounds nuw i8, ptr %.0273, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !21
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0273, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.0273, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  br label %.backedge.backedge

.preheader402:                                    ; preds = %.backedge, %.preheader402
  %.1274 = phi ptr [ %i.ag, %.preheader402 ], [ %.0273, %.backedge ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1274, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.1274, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.1274, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 120
  br i1 %i.ai, label %.preheader402, label %.loopexit403, !llvm.loop !27

.loopexit403:                                     ; preds = %.preheader402, %.backedge
  %.2275 = phi ptr [ %.0273, %.backedge ], [ %i.ag, %.preheader402 ] ; 12 uses
  %.0268 = phi i8 [ %i.l, %.backedge ], [ %i.ah, %.preheader402 ] ; 4 uses
  switch i8 %.0268, label %bb.r [
    i8 0, label %bb.d
    i8 121, label %bb.e
    i8 124, label %bb.e
    i8 -123, label %bb.l
    i8 -121, label %bb.l
    i8 -119, label %bb.l
    i8 -105, label %bb.n
    i8 -104, label %bb.n
  ]

bb.d:                                             ; preds = %.loopexit403
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !12
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  br label %.thread366

bb.e:                                             ; preds = %.loopexit403, %.loopexit403
  %i.am = load i32, ptr %i.e, align 4, !tbaa !12
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread366, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.2275, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.aq = zext i8 %i.ap to i64
  %.neg = mul nsw i64 %i.aq, -256
  %i.ar = getelementptr inbounds nuw i8, ptr %.2275, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = zext i8 %i.as to i64
  %.neg301 = sub nsw i64 %.neg, %i.at             ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.2275, i64 %.neg301
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21
  switch i8 %i.av, label %bb.k [
    i8 -119, label %bb.g
    i8 -114, label %bb.g
    i8 -118, label %bb.g
    i8 -113, label %bb.g
    i8 -122, label %bb.h
    i8 127, label %bb.i
    i8 -128, label %bb.i
    i8 -123, label %bb.i
    i8 -127, label %bb.j
    i8 -126, label %bb.j
    i8 -125, label %.thread366
    i8 -124, label %.thread366
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !34
  %.not306 = icmp eq i32 %i.aw, 0
  br i1 %.not306, label %bb.k, label %.thread366

bb.h:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %4, align 4, !tbaa !12
  %.off = add i32 %i.ax, -29
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.k, label %.thread366

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.ay = xor i32 %.0247, 1
  br label %.thread366

bb.j:                                             ; preds = %bb.f, %bb.f
  %i.az = getelementptr inbounds i8, ptr %.2275, i64 %.neg301
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %i.bc = icmp ne i8 %i.bb, 126
  %.not302 = icmp eq i32 %.0247, 0
  %narrow = and i1 %i.bc, %.not302
  %i.bd = zext i1 %narrow to i32
  br label %.thread366

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.be = zext nneg i8 %.0268 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.2275, i64 %i.bh
  br label %.backedge.backedge

bb.l:                                             ; preds = %.loopexit403, %.loopexit403, %.loopexit403
  %i.bj = getelementptr inbounds nuw i8, ptr %.2275, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !21
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.2275, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !21
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.2275, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp ; 2 uses
  %i.bs = zext i8 %.0268 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.2275, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !21
  %i.by = icmp eq i8 %i.bx, 120
  br i1 %i.by, label %.lr.ph, label %.backedge.backedge

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.0259425 = phi ptr [ %i.cj, %bb.m ], [ %i.br, %bb.l ] ; 4 uses
  %.3276424 = phi ptr [ %i.cb, %bb.m ], [ %i.bw, %bb.l ]
  %i.bz = call fastcc i32 @compare_opcodes(ptr noundef nonnull %.3276424, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.not300 = icmp eq i32 %i.bz, 0
end_hunk_0
