Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-bacapp?download=true
inline.NumInlined: 1061
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@fBitStringTagVSBase:bb.a
  br i1 %exitcond.not.1.peel, label %._crit_edge101, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = and i32 %i.br, 32
  %.not94.2.peel = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not94.2.peel, i8 70, i8 84
  %i.cf = or disjoint i32 %i.bs, 2
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 255)
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ch
  store i8 %i.ce, ptr %i.ci, align 1
  %exitcond.not.2.peel = icmp eq i32 %spec.select.peel, 5
  br i1 %exitcond.not.2.peel, label %._crit_edge101, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = and i32 %i.br, 16
  %.not94.3.peel = icmp eq i32 %i.cj, 0
  %i.ck = select i1 %.not94.3.peel, i8 70, i8 84
  %i.cl = or disjoint i32 %i.bs, 3
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.cl, i32 255)
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.d, i64 %i.cn
  store i8 %i.ck, ptr %i.co, align 1
  %exitcond.not.3.peel = icmp eq i32 %spec.select.peel, 4
  br i1 %exitcond.not.3.peel, label %._crit_edge101, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = and i32 %i.br, 8
  %.not94.4.peel = icmp eq i32 %i.cp, 0
  %i.cq = select i1 %.not94.4.peel, i8 70, i8 84
  %i.cr = or disjoint i32 %i.bs, 4
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 255)
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr i8, ptr %i.d, i64 %i.ct
  store i8 %i.cq, ptr %i.cu, align 1
  %exitcond.not.4.peel = icmp eq i32 %spec.select.peel, 3
  br i1 %exitcond.not.4.peel, label %._crit_edge101, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cv = and i32 %i.br, 4
  %.not94.5.peel = icmp eq i32 %i.cv, 0
  %i.cw = select i1 %.not94.5.peel, i8 70, i8 84
  %i.cx = or disjoint i32 %i.bs, 5
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.cx, i32 255)
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.d, i64 %i.cz
  store i8 %i.cw, ptr %i.da, align 1
  %exitcond.not.5.peel = icmp eq i32 %spec.select.peel, 2
  br i1 %exitcond.not.5.peel, label %._crit_edge101, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.db = and i32 %i.br, 2
  %.not94.6.peel = icmp eq i32 %i.db, 0
  %i.dc = select i1 %.not94.6.peel, i8 70, i8 84
  %i.dd = or disjoint i32 %i.bs, 6
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 255)
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.d, i64 %i.df
  store i8 %i.dc, ptr %i.dg, align 1
  %exitcond.not.6.peel = icmp eq i32 %spec.select.peel, 1
  br i1 %exitcond.not.6.peel, label %._crit_edge101, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dh = and i32 %i.br, 1
  %.not94.7.peel = icmp eq i32 %i.dh, 0
  %i.di = select i1 %.not94.7.peel, i8 70, i8 84
  %i.dj = or disjoint i32 %i.bs, 7
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 255)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %i.d, i64 %i.dl
  store i8 %i.di, ptr %i.dm, align 1
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %.lr.ph.peel, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %._crit_edge101.loopexit.peel.begin, %bb.a
  %i.dn = add i32 %i.f, %i.e                      ; 2 uses
  %i.do = load i32, ptr @ett_bacapp_tag, align 4  ; 2 uses
  br i1 %6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge101
  %i.dp = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.dn, i32 noundef %i.do, ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef %4, ptr noundef nonnull %i.d)
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge101
  %i.dq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.dn, i32 noundef %i.do, ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.dq, %bb.j ], [ %i.dp, %bb.i ] ; 4 uses
  %i.dr = call fastcc i32 @fTagHeaderTree(ptr noundef %0, ptr noundef %1, ptr noundef %.0, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.ds = load i32, ptr @hf_bacapp_unused_bits, align 4
  %i.dt = call ptr @proto_tree_add_item(ptr noundef %.0, i32 noundef %i.ds, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %i.d, i8 noundef 0, i64 noundef 257, i1 noundef false) #6
  br i1 %.not111, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.k
  %i.du = add i32 %i.h, 1                         ; 3 uses
  %i.dv = add i32 %i.f, -2                        ; 3 uses
  %.not = icmp eq ptr %5, null
  %i.dw = getelementptr i8, ptr %1, i64 416
  br i1 %.not, label %.lr.ph109.split.us.preheader, label %.lr.ph109.split

.lr.ph109.split.us.preheader:                     ; preds = %.lr.ph109
  %.not131 = icmp eq i32 %i.dv, 0
  br i1 %.not131, label %.lr.ph109.split.us.peel, label %.lr.ph109.split.us.preheader.split

.lr.ph109.split.us.preheader.split:               ; preds = %.lr.ph109.split.us.preheader
  %i.dx = add i32 %i.f, -3
  br label %.lr.ph109.split.us

.lr.ph109.split.us:                               ; preds = %.lr.ph109.split.us.preheader.split, %.lr.ph109.split.us
  %.1107.us = phi i32 [ %i.fw, %.lr.ph109.split.us ], [ 0, %.lr.ph109.split.us.preheader.split ] ; 4 uses
  %i.dy = add i32 %i.du, %.1107.us
  %i.dz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dy) ; 2 uses
  %i.ea = zext i8 %i.dz to i32                    ; 7 uses
  %i.eb = shl i32 %.1107.us, 3                    ; 8 uses
  %.not92.us.us = icmp sgt i8 %i.dz, -1
  %i.ec = select i1 %.not92.us.us, i8 48, i8 49
  %i.ed = call i32 @llvm.umin.i32(i32 %i.eb, i32 255)
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr i8, ptr %i.d, i64 %i.ee
  store i8 %i.ec, ptr %i.ef, align 1
  %i.eg = and i32 %i.ea, 64
  %.not92.us.us.1 = icmp eq i32 %i.eg, 0
  %i.eh = select i1 %.not92.us.us.1, i8 48, i8 49
  %i.ei = or disjoint i32 %i.eb, 1
  %i.ej = call i32 @llvm.umin.i32(i32 %i.ei, i32 255)
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %i.d, i64 %i.ek
  store i8 %i.eh, ptr %i.el, align 1
  %i.em = and i32 %i.ea, 32
  %.not92.us.us.2 = icmp eq i32 %i.em, 0
  %i.en = select i1 %.not92.us.us.2, i8 48, i8 49
  %i.eo = or disjoint i32 %i.eb, 2
  %i.ep = call i32 @llvm.umin.i32(i32 %i.eo, i32 255)
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %i.d, i64 %i.eq
  store i8 %i.en, ptr %i.er, align 1
  %i.es = and i32 %i.ea, 16
  %.not92.us.us.3 = icmp eq i32 %i.es, 0
  %i.et = select i1 %.not92.us.us.3, i8 48, i8 49
  %i.eu = or disjoint i32 %i.eb, 3
  %i.ev = call i32 @llvm.umin.i32(i32 %i.eu, i32 255)
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr i8, ptr %i.d, i64 %i.ew
  store i8 %i.et, ptr %i.ex, align 1
  %i.ey = and i32 %i.ea, 8
  %.not92.us.us.4 = icmp eq i32 %i.ey, 0
  %i.ez = select i1 %.not92.us.us.4, i8 48, i8 49
  %i.fa = or disjoint i32 %i.eb, 4
  %i.fb = call i32 @llvm.umin.i32(i32 %i.fa, i32 255)
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr i8, ptr %i.d, i64 %i.fc
  store i8 %i.ez, ptr %i.fd, align 1
  %i.fe = and i32 %i.ea, 4
  %.not92.us.us.5 = icmp eq i32 %i.fe, 0
  %i.ff = select i1 %.not92.us.us.5, i8 48, i8 49
  %i.fg = or disjoint i32 %i.eb, 5
  %i.fh = call i32 @llvm.umin.i32(i32 %i.fg, i32 255)
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr i8, ptr %i.d, i64 %i.fi
  store i8 %i.ff, ptr %i.fj, align 1
  %i.fk = and i32 %i.ea, 2
  %.not92.us.us.6 = icmp eq i32 %i.fk, 0
  %i.fl = select i1 %.not92.us.us.6, i8 48, i8 49
  %i.fm = or disjoint i32 %i.eb, 6
  %i.fn = call i32 @llvm.umin.i32(i32 %i.fm, i32 255)
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr i8, ptr %i.d, i64 %i.fo
  store i8 %i.fl, ptr %i.fp, align 1
  %i.fq = and i32 %i.ea, 1
  %.not92.us.us.7 = icmp eq i32 %i.fq, 0
  %i.fr = select i1 %.not92.us.us.7, i8 48, i8 49
  %i.fs = or disjoint i32 %i.eb, 7
  %i.ft = call i32 @llvm.umin.i32(i32 %i.fs, i32 255)
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr i8, ptr %i.d, i64 %i.fu
  store i8 %i.fr, ptr %i.fv, align 1
  %i.fw = add nuw i32 %.1107.us, 1                ; 2 uses
  %exitcond118.not = icmp eq i32 %.1107.us, %i.dx
  br i1 %exitcond118.not, label %.lr.ph109.split.us.peel, label %.lr.ph109.split.us, !llvm.loop !32

.lr.ph109.split:                                  ; preds = %.lr.ph109, %._crit_edge105.split
  %.1107 = phi i32 [ %i.gn, %._crit_edge105.split ], [ 0, %.lr.ph109 ] ; 4 uses
  %.2106 = phi i32 [ %spec.select95, %._crit_edge105.split ], [ 0, %.lr.ph109 ]
  %i.fx = add i32 %i.du, %.1107                   ; 2 uses
  %i.fy = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fx)
  %i.fz = icmp eq i32 %.1107, %i.dv
  %spec.select95 = select i1 %i.fz, i32 %i.j, i32 %.2106 ; 3 uses
  %i.ga = sub nuw nsw i32 8, %spec.select95
  %i.gb = icmp samesign ult i32 %spec.select95, 8
  br i1 %i.gb, label %.lr.ph104, label %._crit_edge105.split

.lr.ph104:                                        ; preds = %.lr.ph109.split
  %i.gc = zext i8 %i.fy to i32
  %i.gd = shl i32 %.1107, 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph104, %bb.l
  %.188102 = phi i32 [ 0, %.lr.ph104 ], [ %i.gm, %bb.l ] ; 3 uses
  %i.ge = load i32, ptr @hf_bacapp_bit, align 4
  %7 = lshr exact i32 128, %.188102
  %i.gf = and i32 %7, %i.gc                       ; 2 uses
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = load ptr, ptr %i.dw, align 8
  %i.gi = add nuw nsw i32 %.188102, %i.gd
  %i.gj = call ptr @val_to_str(ptr noundef %i.gh, i32 noundef %i.gi, ptr noundef nonnull %5, ptr noundef nonnull @ASHRAE_Reserved_Fmt)
  %.not93 = icmp eq i32 %i.gf, 0
  %i.gk = select i1 %.not93, ptr @.str.215, ptr @.str.216
  %i.gl = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_boolean_format(ptr noundef %.0, i32 noundef %i.ge, ptr noundef %0, i32 noundef %i.fx, i32 noundef 1, i64 noundef %i.gg, ptr noundef nonnull @.str.230, ptr noundef %i.gj, ptr noundef nonnull %i.gk) ; 0 uses
  %i.gm = add nuw nsw i32 %.188102, 1             ; 2 uses
  %exitcond115.not = icmp eq i32 %i.gm, %i.ga
  br i1 %exitcond115.not, label %._crit_edge105.split, label %bb.l, !llvm.loop !33

._crit_edge105.split:                             ; preds = %bb.l, %.lr.ph109.split
  %i.gn = add nuw i32 %.1107, 1                   ; 2 uses
  %exitcond116.not = icmp eq i32 %i.gn, %i.g
  br i1 %exitcond116.not, label %._crit_edge110, label %.lr.ph109.split, !llvm.loop !34

.lr.ph109.split.us.peel:                          ; preds = %.lr.ph109.split.us.preheader, %.lr.ph109.split.us
  %i.go = phi i32 [ 0, %.lr.ph109.split.us.preheader ], [ %i.fw, %.lr.ph109.split.us ] ; 3 uses
  %i.gp = add i32 %i.du, %i.go
  %i.gq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gp) ; 2 uses
  %i.gr = icmp eq i32 %i.go, %i.dv
  %spec.select95.us.peel = select i1 %i.gr, i32 %i.j, i32 0 ; 8 uses
  %i.gs = icmp samesign ult i32 %spec.select95.us.peel, 8
  br i1 %i.gs, label %.lr.ph104.us.peel, label %._crit_edge110

.lr.ph104.us.peel:                                ; preds = %.lr.ph109.split.us.peel
  %i.gt = zext i8 %i.gq to i32                    ; 7 uses
  %i.gu = shl i32 %i.go, 3                        ; 8 uses
  %.not92.us.us.peel = icmp sgt i8 %i.gq, -1
  %i.gv = select i1 %.not92.us.us.peel, i8 48, i8 49
  %i.gw = call i32 @llvm.umin.i32(i32 %i.gu, i32 255)
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr i8, ptr %i.d, i64 %i.gx
  store i8 %i.gv, ptr %i.gy, align 1
  %exitcond117.not.peel = icmp eq i32 %spec.select95.us.peel, 7
  br i1 %exitcond117.not.peel, label %._crit_edge110, label %bb.m

bb.m:                                             ; preds = %.lr.ph104.us.peel
  %i.gz = and i32 %i.gt, 64
  %.not92.us.us.1.peel = icmp eq i32 %i.gz, 0
  %i.ha = select i1 %.not92.us.us.1.peel, i8 48, i8 49
  %i.hb = or disjoint i32 %i.gu, 1
  %i.hc = call i32 @llvm.umin.i32(i32 %i.hb, i32 255)
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr i8, ptr %i.d, i64 %i.hd
  store i8 %i.ha, ptr %i.he, align 1
  %exitcond117.not.1.peel = icmp eq i32 %spec.select95.us.peel, 6
  br i1 %exitcond117.not.1.peel, label %._crit_edge110, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hf = and i32 %i.gt, 32
  %.not92.us.us.2.peel = icmp eq i32 %i.hf, 0
  %i.hg = select i1 %.not92.us.us.2.peel, i8 48, i8 49
  %i.hh = or disjoint i32 %i.gu, 2
  %i.hi = call i32 @llvm.umin.i32(i32 %i.hh, i32 255)
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr i8, ptr %i.d, i64 %i.hj
  store i8 %i.hg, ptr %i.hk, align 1
  %exitcond117.not.2.peel = icmp eq i32 %spec.select95.us.peel, 5
  br i1 %exitcond117.not.2.peel, label %._crit_edge110, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hl = and i32 %i.gt, 16
  %.not92.us.us.3.peel = icmp eq i32 %i.hl, 0
  %i.hm = select i1 %.not92.us.us.3.peel, i8 48, i8 49
  %i.hn = or disjoint i32 %i.gu, 3
  %i.ho = call i32 @llvm.umin.i32(i32 %i.hn, i32 255)
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr i8, ptr %i.d, i64 %i.hp
  store i8 %i.hm, ptr %i.hq, align 1
  %exitcond117.not.3.peel = icmp eq i32 %spec.select95.us.peel, 4
  br i1 %exitcond117.not.3.peel, label %._crit_edge110, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hr = and i32 %i.gt, 8
  %.not92.us.us.4.peel = icmp eq i32 %i.hr, 0
  %i.hs = select i1 %.not92.us.us.4.peel, i8 48, i8 49
  %i.ht = or disjoint i32 %i.gu, 4
  %i.hu = call i32 @llvm.umin.i32(i32 %i.ht, i32 255)
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr i8, ptr %i.d, i64 %i.hv
  store i8 %i.hs, ptr %i.hw, align 1
  %exitcond117.not.4.peel = icmp eq i32 %spec.select95.us.peel, 3
  br i1 %exitcond117.not.4.peel, label %._crit_edge110, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hx = and i32 %i.gt, 4
  %.not92.us.us.5.peel = icmp eq i32 %i.hx, 0
  %i.hy = select i1 %.not92.us.us.5.peel, i8 48, i8 49
  %i.hz = or disjoint i32 %i.gu, 5
  %i.ia = call i32 @llvm.umin.i32(i32 %i.hz, i32 255)
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %i.d, i64 %i.ib
  store i8 %i.hy, ptr %i.ic, align 1
  %exitcond117.not.5.peel = icmp eq i32 %spec.select95.us.peel, 2
  br i1 %exitcond117.not.5.peel, label %._crit_edge110, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.id = and i32 %i.gt, 2
  %.not92.us.us.6.peel = icmp eq i32 %i.id, 0
  %i.ie = select i1 %.not92.us.us.6.peel, i8 48, i8 49
  %i.if = or disjoint i32 %i.gu, 6
  %i.ig = call i32 @llvm.umin.i32(i32 %i.if, i32 255)
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr i8, ptr %i.d, i64 %i.ih
  store i8 %i.ie, ptr %i.ii, align 1
  %exitcond117.not.6.peel = icmp eq i32 %spec.select95.us.peel, 1
  br i1 %exitcond117.not.6.peel, label %._crit_edge110, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ij = and i32 %i.gt, 1
  %.not92.us.us.7.peel = icmp eq i32 %i.ij, 0
  %i.ik = select i1 %.not92.us.us.7.peel, i8 48, i8 49
  %i.il = or disjoint i32 %i.gu, 7
  %i.im = call i32 @llvm.umin.i32(i32 %i.il, i32 255)
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr i8, ptr %i.d, i64 %i.in
  store i8 %i.ik, ptr %i.io, align 1
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge105.split, %.lr.ph104.us.peel, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.lr.ph109.split.us.peel, %bb.k
  %i.ip = icmp eq ptr %5, null
  br i1 %i.ip, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge110
  %i.iq = shl i32 %i.g, 3
  %i.ir = sub i32 %i.iq, %i.j
  %i.is = call i32 @llvm.umin.i32(i32 %i.ir, i32 255)
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr i8, ptr %i.d, i64 %i.it
  store i8 0, ptr %i.iu, align 1
  %i.iv = load i32, ptr @hf_bacapp_complete_bitstring, align 4
  %i.iw = load i32, ptr %i.c, align 4
  %i.ix = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %.0, i32 noundef %i.iv, ptr noundef %0, i32 noundef %i.h, i32 noundef %i.iw, ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge110
  %i.iy = load i32, ptr %i.c, align 4
  %i.iz = add i32 %i.iy, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.iz
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_registrar_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_with_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strconcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
