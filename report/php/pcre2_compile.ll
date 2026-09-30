Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_compile?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@compile_regex:bb.a
  %.lobit1589.i = and i32 %i.dg, 1
  %i.dh = ptrtoint ptr %.1229 to i64
  %i.di = and i32 %.0237, 655360
  %or.cond22.i = icmp ne i32 %i.di, 0             ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 176
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 176
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.promoted = phi ptr [ %.1224, %bb.k ], [ %i.bfo, %.thread ] ; 39 uses
  %.21736 = phi i64 [ %.1, %bb.k ], [ %.23, %.thread ] ; 4 uses
  %.1238 = phi i32 [ %.0237, %bb.k ], [ %.2239.ph, %.thread ] ; 32 uses
  %.1235 = phi i32 [ %.0234, %bb.k ], [ %.2236.ph, %.thread ] ; 32 uses
  %.01522.i = phi i32 [ %.0237, %bb.k ], [ %.81530.i.ph, %.thread ] ; 51 uses
  %.01519.i = phi i32 [ %.0234, %bb.k ], [ %.21521.i.ph, %.thread ] ; 46 uses
  %.01512.i = phi i32 [ 0, %bb.k ], [ %.61518.i.ph, %.thread ] ; 54 uses
  %.01499.i = phi i32 [ 0, %bb.k ], [ %.121511.i.ph, %.thread ] ; 48 uses
  %.01493.i = phi i32 [ 0, %bb.k ], [ %.51498.i.ph, %.thread ] ; 26 uses
  %.01486.i = phi i32 [ 0, %bb.k ], [ %.61492.i.ph, %.thread ] ; 27 uses
  %.01455.i = phi i32 [ -1, %bb.k ], [ %.171472.i.ph, %.thread ] ; 46 uses
  %.01442.i = phi i32 [ -1, %bb.k ], [ %.121454.i.ph, %.thread ] ; 48 uses
  %.01436.i = phi i32 [ -1, %bb.k ], [ %.51441.i.ph, %.thread ] ; 26 uses
  %.01425.i = phi i32 [ -1, %bb.k ], [ %.101435.i.ph, %.thread ] ; 23 uses
  %.01416.i = phi i32 [ %.lobit1589.i, %bb.k ], [ %.81424.i.ph, %.thread ] ; 34 uses
  %.01408.i = phi i64 [ 0, %bb.k ], [ %.71415.i.ph, %.thread ] ; 35 uses
  %.01383.i = phi ptr [ %.1229, %bb.k ], [ %.41.i.ph, %.thread ] ; 5 uses
  %.01380.i = phi ptr [ %.1229, %bb.k ], [ %.11381.i, %.thread ] ; 3 uses
  %.01366.i = phi ptr [ null, %bb.k ], [ %.131379.i.ph, %.thread ]
  %.01360.i = phi i32 [ 0, %bb.k ], [ %.41364.i.ph, %.thread ] ; 30 uses
  %.01357.i = phi i32 [ 0, %bb.k ], [ %.21359.i.ph, %.thread ] ; 32 uses
  %.01347.i = phi i32 [ 0, %bb.k ], [ %.91356.i.ph, %.thread ]
  %.01270.i = phi i32 [ %i.df, %bb.k ], [ %.21272.i.ph, %.thread ] ; 32 uses
  %.01236.i = phi i32 [ %.lobit.i, %bb.k ], [ %.21238.i.ph, %.thread ] ; 32 uses
  %.01217.i = phi i32 [ 0, %bb.k ], [ %.51222.i.ph, %.thread ] ; 48 uses
  %.01214.i = phi i32 [ -1, %bb.k ], [ %.11215.i, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  %i.dt = load i32, ptr %.promoted, align 4, !tbaa !28 ; 13 uses
  %i.du = and i32 %i.dt, -65536                   ; 10 uses
  %i.dv = and i32 %i.dt, 65535                    ; 16 uses
  br i1 %i.bd, label %._crit_edge1755, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.dx = load i64, ptr %i.bg, align 8, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -100
  %i.ea = icmp ugt ptr %.01383.i, %i.dz
  br i1 %i.ea, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not1656.i = icmp ult ptr %.01383.i, %i.dy
  %i.eb = select i1 %.not1656.i, i32 186, i32 152
  store i32 %i.eb, ptr %4, align 4, !tbaa !28
  br label %compile_branch.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ec = icmp ult ptr %.01383.i, %.01380.i
  %spec.select.i = select i1 %i.ec, ptr %.01380.i, ptr %.01383.i ; 3 uses
  %i.ed = icmp ult i32 %i.dt, -2144075776
  %i.ee = icmp ugt i32 %i.du, -2143354880
  %or.cond.i = or i1 %i.ed, %i.ee
  br i1 %or.cond.i, label %bb.p, label %._crit_edge1755

bb.p:                                             ; preds = %bb.o
  %i.ef = sub i64 2147483627, %.21736
  %i.eg = ptrtoint ptr %spec.select.i to i64
  %i.eh = sub i64 %i.eg, %i.dh                    ; 2 uses
  %i.ei = icmp ult i64 %i.ef, %i.eh
  br i1 %i.ei, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 120, ptr %4, align 4, !tbaa !28
  br label %compile_branch.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.ej = add i64 %.21736, %i.eh                  ; 2 uses
  %i.ek = icmp ugt i64 %i.ej, 65536
  br i1 %i.ek, label %bb.s, label %._crit_edge1755

bb.s:                                             ; preds = %bb.r
  store i32 120, ptr %4, align 4, !tbaa !28
  br label %compile_branch.exit.thread

._crit_edge1755:                                  ; preds = %bb.l, %bb.r, %bb.o
  %.31737 = phi i64 [ %.21736, %bb.o ], [ %i.ej, %bb.r ], [ %.21736, %bb.l ] ; 66 uses
  %.31386.i = phi ptr [ %spec.select.i, %bb.o ], [ %.1229, %bb.r ], [ %.01383.i, %bb.l ] ; 156 uses
  %.11381.i = phi ptr [ %spec.select.i, %bb.o ], [ %.1229, %bb.r ], [ %.01380.i, %bb.l ]
  %i.el = icmp ult i32 %i.dt, -2144075776
  %i.em = icmp ugt i32 %i.du, -2143354880
  %or.cond10.i = or i1 %i.el, %i.em               ; 2 uses
  %i.en = icmp ne i32 %.01347.i, 0                ; 3 uses
  %i.eo = icmp eq i32 %.01357.i, 0
  %.11367.i = select i1 %or.cond10.i, ptr %.31386.i, ptr %.01366.i ; 86 uses
  %i.ep = select i1 %or.cond10.i, i1 %i.en, i1 false
  %i.eq = select i1 %i.ep, i1 %i.eo, i1 false
  %.11215.i = select i1 %i.eq, i32 1, i32 %.01214.i ; 2 uses
  %i.er = lshr i32 %i.dt, 16
  %trunc.i = trunc nuw i32 %i.er to i16
  switch i16 %trunc.i, label %bb.li [
    i16 -32768, label %compile_branch.exit
    i16 -32767, label %compile_branch.exit
    i16 -32743, label %compile_branch.exit
    i16 -32759, label %bb.t
    i16 -32746, label %bb.w
    i16 -32745, label %bb.x
    i16 -32757, label %bb.y
    i16 -32756, label %bb.y
    i16 -32754, label %bb.z
    i16 -32758, label %bb.z
    i16 -32726, label %bb.cs
    i16 -32722, label %bb.cx
    i16 -32720, label %bb.cx
    i16 -32724, label %bb.cy
    i16 -32725, label %bb.cy
    i16 -32718, label %bb.cz
    i16 -32717, label %bb.da
    i16 -32721, label %bb.db
    i16 -32719, label %bb.db
    i16 -32727, label %bb.dc
    i16 -32723, label %bb.dc
    i16 -32741, label %bb.dj
    i16 -32748, label %bb.dk
    i16 -32751, label %bb.dk
    i16 -32749, label %bb.dk
    i16 -32752, label %bb.dz
    i16 -32750, label %bb.ea
    i16 -32747, label %bb.ef
    i16 -32753, label %bb.ey
    i16 -32733, label %bb.em
    i16 -32729, label %bb.en
    i16 -32732, label %bb.eo
    i16 -32731, label %bb.es
    i16 -32730, label %bb.et
    i16 -32728, label %bb.eu
    i16 -32766, label %bb.ev
    i16 -32734, label %bb.ew
    i16 -32742, label %bb.ex
    i16 -32764, label %bb.ft
    i16 -32735, label %bb.ft
    i16 -32762, label %bb.ge
    i16 -32761, label %bb.gf
    i16 -32706, label %bb.gn
    i16 -32705, label %bb.gn
    i16 -32707, label %bb.gn
    i16 -32716, label %.thread1837
    i16 -32715, label %.thread1837
    i16 -32714, label %.thread1837
    i16 -32713, label %.thread1851
    i16 -32712, label %.thread1851
    i16 -32711, label %.thread1851
    i16 -32710, label %bb.gm
    i16 -32709, label %bb.gm
    i16 -32708, label %bb.gm
    i16 -32763, label %bb.kj
    i16 -32765, label %bb.kk
    i16 -32736, label %bb.kr
    i16 -32760, label %bb.ku
    i16 -32744, label %bb.kv
  ]

bb.t:                                             ; preds = %._crit_edge1755
  %i.es = and i32 %.01522.i, 1024
  %.not1650.i = icmp eq i32 %i.es, 0
  br i1 %.not1650.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = icmp eq i32 %.01455.i, -1
  %spec.select1658.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2)
  %spec.select1659.i = select i1 %i.et, i32 -2, i32 %.01425.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 28, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 27, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.w:                                             ; preds = %._crit_edge1755
  %i.ew = and i32 %.01522.i, 1024
  %.not1649.i = icmp eq i32 %i.ew, 0
  %i.ex = select i1 %.not1649.i, i8 25, i8 26
  %i.ey = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %i.ex, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.x:                                             ; preds = %._crit_edge1755
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2) ; 2 uses
  %16 = and i32 %.01522.i, 32
  %.not1648.i = icmp eq i32 %16, 0
  %17 = select i1 %.not1648.i, i8 12, i8 13
  %i.ez = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %17, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.y:                                             ; preds = %._crit_edge1755, %._crit_edge1755
  %i.fa = icmp eq i32 %i.du, -2146697216
  %i.fb = select i1 %i.fa, i8 13, i8 -93
  %i.fc = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %i.fb, ptr %.31386.i, align 1, !tbaa !29
  %spec.store.select13.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2) ; 2 uses
  br label %.thread

bb.z:                                             ; preds = %._crit_edge1755, %._crit_edge1755
  %i.fd = icmp eq i32 %i.du, -2146566144          ; 5 uses
  %i.fe = zext i1 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %.promoted, i64 4 ; 4 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !28 ; 15 uses
  %i.fh = icmp sgt i32 %i.fg, -1
  br i1 %i.fh, label %bb.aa, label %.thread256

bb.aa:                                            ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !28 ; 4 uses
  %i.fk = icmp eq i32 %i.fj, -2146631680
  br i1 %i.fk, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !68
  %i.fl = icmp eq i32 %i.du, -2146828288
  br i1 %i.fl, label %bb.lk, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %spec.store.select14.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2) ; 4 uses
  %i.fm = and i32 %.01522.i, 8
  %.not1645.i = icmp ne i32 %i.fm, 0              ; 2 uses
  %or.cond1660.i.not = select i1 %or.cond22.i, i1 %.not1645.i, i1 false
  br i1 %or.cond1660.i.not, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.fn = lshr i32 %i.fg, 7
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !30
  %i.fr = zext i16 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 7
  %i.ft = and i32 %i.fg, 127
  %i.fu = or disjoint i32 %i.fs, %i.ft
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !30
  %i.fy = zext i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !83  ; 3 uses
  %.not1646.i = icmp eq i8 %i.gb, 0
  br i1 %.not1646.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gc = and i32 %.01519.i, 128
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = zext i8 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr @_pcre2_ucd_caseless_sets_8, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !28
  %i.gh = icmp ugt i32 %i.gg, 127
  br i1 %i.gh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gi = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 15, ptr %.31386.i, align 1, !tbaa !29
  %i.gj = getelementptr inbounds nuw i8, ptr %.31386.i, i64 2
  store i8 10, ptr %i.gi, align 1, !tbaa !29
  %i.gk = getelementptr inbounds nuw i8, ptr %.31386.i, i64 3
  store i8 %i.gb, ptr %i.gj, align 1, !tbaa !29
  br label %.thread

bb.ah:                                            ; preds = %bb.af, %bb.ad, %bb.ac
  %i.gl = select i1 %.not1645.i, i8 32, i8 31
  %i.gm = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1 ; 3 uses
  store i8 %i.gl, ptr %.31386.i, align 1, !tbaa !29
  %i.gn = icmp samesign ugt i32 %i.fg, 127
  %or.cond18.i = and i1 %i.dd, %i.gn
  br i1 %or.cond18.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.go = call i32 @_pcre2_ord2utf_8(i32 noundef %i.fg, ptr noundef nonnull %i.gm) #17, !inline_history !173
  %i.gp = zext i32 %i.go to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gq = trunc i32 %i.fg to i8
  store i8 %i.gq, ptr %i.gm, align 1, !tbaa !29
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gr = phi i64 [ %i.gp, %bb.ai ], [ 1, %bb.aj ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gr
  br label %.thread

bb.al:                                            ; preds = %bb.aa
  %i.gt = icmp eq i32 %i.du, -2146828288
  %i.gu = icmp sgt i32 %i.fj, -1
  %or.cond2269 = and i1 %i.gt, %i.gu
  br i1 %or.cond2269, label %bb.am, label %.thread256

bb.am:                                            ; preds = %bb.al
  %i.gv = getelementptr inbounds nuw i8, ptr %.promoted, i64 12 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !28
  %i.gx = icmp eq i32 %i.gw, -2146631680
  br i1 %i.gx, label %bb.an, label %.thread256

bb.an:                                            ; preds = %bb.am
  %i.gy = lshr i32 %i.fg, 7
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !30
  %i.hc = zext i16 %i.hb to i32
  %i.hd = shl nuw nsw i32 %i.hc, 7
  %i.he = and i32 %i.fg, 127
  %i.hf = or disjoint i32 %i.hd, %i.he
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !30
  %i.hj = zext i16 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !83
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ho = and i32 %.01519.i, 128
  %i.hp = icmp ne i32 %i.ho, 0
  %i.hq = or i32 %i.fj, %i.fg
  %i.hr = icmp samesign ult i32 %i.hq, 128
  %or.cond1661.i = and i1 %i.hp, %i.hr
  br i1 %or.cond1661.i, label %.thread257, label %.thread256

bb.ap:                                            ; preds = %bb.an
  %i.hs = icmp samesign ugt i32 %i.fg, 127
  %or.cond24.i = and i1 %or.cond22.i, %i.hs
  br i1 %or.cond24.i, label %bb.aq, label %.thread257

bb.aq:                                            ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !80
  %i.hv = add nsw i32 %i.hu, %i.fg
  br label %bb.ar

.thread257:                                       ; preds = %bb.ao, %bb.ap
  %i.hw = load ptr, ptr %i.bx, align 8, !tbaa !40
  %i.hx = zext nneg i32 %i.fg to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !29
  %i.ia = zext i8 %i.hz to i32
  br label %bb.ar

bb.ar:                                            ; preds = %.thread257, %bb.aq
  %.01287.i = phi i32 [ %i.hv, %bb.aq ], [ %i.ia, %.thread257 ] ; 2 uses
  %.not1638.i = icmp ne i32 %i.fg, %.01287.i
  %i.ib = icmp eq i32 %i.fj, %.01287.i
  %or.cond652 = and i1 %.not1638.i, %i.ib
  br i1 %or.cond652, label %bb.as, label %.thread256

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gv, ptr %i.a, align 8, !tbaa !68
  %i.ic = and i32 %.01522.i, 8
  %i.id = icmp ne i32 %i.ic, 0                    ; 2 uses
  %.11523.i = or i32 %.01522.i, 8
  %.11417.i = select i1 %i.id, i32 %.01416.i, i32 1
  br label %.thread425

.thread256:                                       ; preds = %bb.z, %bb.ar, %bb.ao, %bb.am, %bb.al
  %i.ie = getelementptr inbounds nuw i8, ptr %.31386.i, i64 4 ; 9 uses
  store ptr %i.ie, ptr %i.e, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.if = load i32, ptr %i.ff, align 4, !tbaa !28 ; 2 uses
  %.not1639.i1171 = icmp eq i32 %i.if, -2146631680
  br i1 %.not1639.i1171, label %._crit_edge1178.thread, label %.lr.ph1177

._crit_edge1178.thread:                           ; preds = %.thread256
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !68
  %spec.store.select33.i1826 = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2)
  br label %bb.cp

.lr.ph1177:                                       ; preds = %.thread256
  %i.ig = and i32 %.01522.i, 8
  %i.ih = icmp ne i32 %i.ig, 0
  %i.ii = and i32 %.01522.i, 131072
  %.not1644.i = icmp ne i32 %i.ii, 0
  %i.ij = and i32 %.01519.i, 2048
  %i.ik = icmp eq i32 %i.ij, 0
  %or.cond1663.i = select i1 %.not1644.i, i1 %i.ik, i1 false
  %i.il = and i32 %.01522.i, -9                   ; 6 uses
  %i.im = and i32 %.01522.i, 524288
  %.not.i136 = icmp eq i32 %i.im, 0
  %i.in = select i1 %.not.i136, i32 -1, i32 1114111 ; 2 uses
  %i.io = ptrtoint ptr %i.ie to i64
  br label %bb.at

end_hunk_0
