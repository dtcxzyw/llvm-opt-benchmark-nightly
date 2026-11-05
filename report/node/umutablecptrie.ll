Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/umutablecptrie?download=true
inline.NumInlined: 129
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
  %indvars.iv.next.i121.i.1 = add nuw nsw i64 %indvars.iv.i120.i, 2 ; 2 uses
  %niter339.next.1 = add i64 %niter339, 2         ; 2 uses
  %niter339.ncmp.1 = icmp eq i64 %niter339.next.1, %unroll_iter338
  br i1 %niter339.ncmp.1, label %.preheader.i114.i.loopexit.unr-lcssa, label %bb.o, !llvm.loop !39

bb.t:                                             ; preds = %bb.t, %.lr.ph16.i115.i
  %indvars.iv18.i116.i = phi i64 [ 0, %.lr.ph16.i115.i ], [ %indvars.iv.next19.i117.i, %bb.t ] ; 2 uses
  %i.cj = load ptr, ptr %i.bu, align 8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv18.i116.i ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 255
  store i32 %i.cm, ptr %i.ck, align 4
  %indvars.iv.next19.i117.i = add nuw nsw i64 %indvars.iv18.i116.i, 1 ; 2 uses
  %i.cn = load i32, ptr %i.br, align 4
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next19.i117.i, %i.co
  br i1 %i.cp, label %bb.t, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i, !llvm.loop !40

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i: ; preds = %bb.l, %bb.t, %.preheader.i114.i, %.preheader.i.i, %bb.d
  %i.cq = icmp eq i32 %1, 0
  %i.cr = select i1 %i.cq, i32 65536, i32 4096    ; 7 uses
  %i.cs = lshr exact i32 %i.cr, 4                 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cu, 1114111
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

bb.v:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 69695
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = load ptr, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 278524
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %0, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 278524
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = add i32 %i.df, 15
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dh
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i: ; preds = %bb.x, %bb.w, %bb.u
  %.1.in.i.i.i = phi ptr [ %i.di, %bb.x ], [ %i.cv, %bb.u ], [ %i.da, %bb.w ]
  %.1.i.i.i = load i32, ptr %.1.in.i.i.i, align 4 ; 21 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 12 uses
  store i32 %.1.i.i.i, ptr %i.dj, align 4
  %i.dk = ashr i32 %i.cu, 4                       ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i.i, label %.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = load ptr, ptr %0, align 8
  %i.dq = zext nneg i32 %i.dk to i64
  br label %bb.y

bb.y:                                             ; preds = %.thread.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.thread.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.next.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 0
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i.i
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  br i1 %i.dt, label %bb.ap, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dw ; 16 uses
  %i.dy = load i32, ptr %i.dx, align 4
  %.not.i49.i.i = icmp eq i32 %i.dy, %.1.i.i.i
  br i1 %.not.i49.i.i, label %bb.aa, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  %.not.1.i.i.i = icmp eq i32 %i.ea, %.1.i.i.i
  br i1 %.not.1.i.i.i, label %bb.ab, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = load i32, ptr %i.eb, align 4
  %.not.2.i.i.i = icmp eq i32 %i.ec, %.1.i.i.i
  br i1 %.not.2.i.i.i, label %bb.ac, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.ee = load i32, ptr %i.ed, align 4
  %.not.3.i.i.i = icmp eq i32 %i.ee, %.1.i.i.i
  br i1 %.not.3.i.i.i, label %bb.ad, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eg = load i32, ptr %i.ef, align 4
  %.not.4.i.i.i = icmp eq i32 %i.eg, %.1.i.i.i
  br i1 %.not.4.i.i.i, label %bb.ae, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.ei = load i32, ptr %i.eh, align 4
  %.not.5.i.i.i = icmp eq i32 %i.ei, %.1.i.i.i
  br i1 %.not.5.i.i.i, label %bb.af, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ek = load i32, ptr %i.ej, align 4
  %.not.6.i.i.i = icmp eq i32 %i.ek, %.1.i.i.i
  br i1 %.not.6.i.i.i, label %bb.ag, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.em = load i32, ptr %i.el, align 4
  %.not.7.i.i.i = icmp eq i32 %i.em, %.1.i.i.i
  br i1 %.not.7.i.i.i, label %bb.ah, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.eo = load i32, ptr %i.en, align 4
  %.not.8.i.i.i = icmp eq i32 %i.eo, %.1.i.i.i
  br i1 %.not.8.i.i.i, label %bb.ai, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  %i.eq = load i32, ptr %i.ep, align 4
  %.not.9.i.i.i = icmp eq i32 %i.eq, %.1.i.i.i
  br i1 %.not.9.i.i.i, label %bb.aj, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.er = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.es = load i32, ptr %i.er, align 4
  %.not.10.i.i.i = icmp eq i32 %i.es, %.1.i.i.i
  br i1 %.not.10.i.i.i, label %bb.ak, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.dx, i64 44
  %i.eu = load i32, ptr %i.et, align 4
  %.not.11.i.i.i = icmp eq i32 %i.eu, %.1.i.i.i
  br i1 %.not.11.i.i.i, label %bb.al, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.ew = load i32, ptr %i.ev, align 4
  %.not.12.i.i.i = icmp eq i32 %i.ew, %.1.i.i.i
  br i1 %.not.12.i.i.i, label %bb.am, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dx, i64 52
  %i.ey = load i32, ptr %i.ex, align 4
  %.not.13.i.i.i = icmp eq i32 %i.ey, %.1.i.i.i
  br i1 %.not.13.i.i.i, label %bb.an, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.fa = load i32, ptr %i.ez, align 4
  %.not.14.i.i.i = icmp eq i32 %i.fa, %.1.i.i.i
  br i1 %.not.14.i.i.i, label %bb.ao, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dx, i64 60
  %i.fc = load i32, ptr %i.fb, align 4
  %.not.15.i.i.i = icmp eq i32 %i.fc, %.1.i.i.i
  br i1 %.not.15.i.i.i, label %.thread.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ap:                                            ; preds = %bb.y
  %i.fd = icmp eq i32 %i.dv, %.1.i.i.i
  br i1 %i.fd, label %.thread.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

.thread.i.i.i:                                    ; preds = %bb.ap, %bb.ao
  %i.fe = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.fe, label %bb.y, label %.thread.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.2.i.in.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %.2.i.i.i = shl nuw nsw i32 %.2.i.in.i.i, 4
  %i.ff = add nuw nsw i32 %.2.i.i.i, 496
  %i.fg = and i32 %i.ff, 2147483136               ; 5 uses
  %i.fh = icmp eq i32 %i.fg, 1114112
  br i1 %i.fh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  store i32 %i.fj, ptr %i.dj, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i
  %i.fk = phi i32 [ %.1.i.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i ], [ %i.fj, %bb.aq ]
  %i.fl = icmp samesign ult i32 %i.fg, %i.cr
  br i1 %i.fl, label %.thread.i.i, label %.loopexit.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.i, %bb.ar, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i
  %i.fm = phi i32 [ %i.fk, %bb.ar ], [ %.1.i.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i ], [ %.1.i.i.i, %.thread.i.i.i ] ; 4 uses
  %i.fn = phi i32 [ %i.fg, %bb.ar ], [ 0, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i ], [ 0, %.thread.i.i.i ] ; 3 uses
  %i.fo = lshr exact i32 %i.fn, 4                 ; 2 uses
  %i.fp = icmp samesign ult i32 %i.fo, %i.cs
  br i1 %i.fp, label %.lr.ph.i124.i, label %.loopexit.i.i

.lr.ph.i124.i:                                    ; preds = %.thread.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.fr = zext nneg i32 %i.fo to i64
  %wide.trip.count.i125.i = zext nneg i32 %i.cs to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i124.i
  %indvars.iv.i126.i = phi i64 [ %i.fr, %.lr.ph.i124.i ], [ %indvars.iv.next.i127.i.3, %bb.as ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.i126.i
  store i8 0, ptr %i.fs, align 1
  %i.ft = load ptr, ptr %0, align 8
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i126.i
  store i32 %i.fm, ptr %i.fu, align 4
  %indvars.iv.next.i127.i = or disjoint i64 %indvars.iv.i126.i, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.next.i127.i
  store i8 0, ptr %i.fv, align 1
  %i.fw = load ptr, ptr %0, align 8
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.next.i127.i
  store i32 %i.fm, ptr %i.fx, align 4
  %indvars.iv.next.i127.i.1 = or disjoint i64 %indvars.iv.i126.i, 2 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.next.i127.i.1
  store i8 0, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %0, align 8
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i127.i.1
  store i32 %i.fm, ptr %i.ga, align 4
  %indvars.iv.next.i127.i.2 = or disjoint i64 %indvars.iv.i126.i, 3 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.next.i127.i.2
  store i8 0, ptr %i.gb, align 1
  %i.gc = load ptr, ptr %0, align 8
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next.i127.i.2
  store i32 %i.fm, ptr %i.gd, align 4
  %indvars.iv.next.i127.i.3 = add nuw nsw i64 %indvars.iv.i126.i, 4 ; 2 uses
  %exitcond.not.i128.i.3 = icmp eq i64 %indvars.iv.next.i127.i.3, %wide.trip.count.i125.i
  br i1 %exitcond.not.i128.i.3, label %.loopexit.i.i, label %bb.as, !llvm.loop !41

.loopexit.i.i:                                    ; preds = %bb.as, %.thread.i.i, %bb.ar
  %i.ge = phi i32 [ %i.fg, %bb.ar ], [ %i.cr, %.thread.i.i ], [ %i.cr, %bb.as ] ; 3 uses
  %i.gf = phi i32 [ %i.fg, %bb.ar ], [ %i.fn, %.thread.i.i ], [ %i.fn, %bb.as ]
  store i32 %i.ge, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.gi = zext nneg i32 %i.ge to i64
  br label %bb.bo

.lr.ph149.i.i.i:                                  ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit58.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 6 uses
  store i32 -1, ptr %i.gj, align 4
  %i.gk = lshr exact i32 %i.ge, 4
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 18 uses
  br label %bb.at

bb.at:                                            ; preds = %.thread133.i.i.i, %.lr.ph149.i.i.i
  %.079146.i.i.i = phi i32 [ 0, %.lr.ph149.i.i.i ], [ %i.lm, %.thread133.i.i.i ] ; 9 uses
  %.080145.i.i.i = phi i32 [ 4, %.lr.ph149.i.i.i ], [ %spec.select98.i.i.i, %.thread133.i.i.i ]
  %.082144.i.i.i = phi i32 [ 64, %.lr.ph149.i.i.i ], [ %spec.select.i.i.i, %.thread133.i.i.i ]
  %.084143.i.i.i = phi i32 [ 148, %.lr.ph149.i.i.i ], [ %.5136.i.i.i, %.thread133.i.i.i ] ; 4 uses
  %i.go = icmp eq i32 %.079146.i.i.i, %i.cs       ; 2 uses
  %spec.select.i.i.i = select i1 %i.go, i32 16, i32 %.082144.i.i.i ; 5 uses
  %spec.select98.i.i.i = select i1 %i.go, i32 1, i32 %.080145.i.i.i ; 7 uses
  %i.gp = load ptr, ptr %0, align 8               ; 2 uses
  %i.gq = zext nneg i32 %.079146.i.i.i to i64     ; 4 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4            ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gq ; 3 uses
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = icmp eq i8 %i.gu, 1
  br i1 %i.gv, label %.lr.ph.i.preheader.i.i.i, label %bb.aw

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.at
  %i.gw = load ptr, ptr %i.gh, align 8
  %i.gx = zext i32 %i.gs to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4            ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  %i.hb = add nsw i32 %spec.select.i.i.i, -1
  %i.hc = zext nneg i32 %i.hb to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.hc, 2
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.au, %.lr.ph.i.preheader.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.hg, %bb.au ], [ %i.ha, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.he = load i32, ptr %.08.i.i.i.i, align 4
  %i.hf = icmp eq i32 %i.he, %i.gz
  br i1 %i.hf, label %bb.au, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4 ; 3 uses
  %i.hh = icmp ult ptr %i.hg, %i.hd
  br i1 %i.hh, label %.lr.ph.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i, !llvm.loop !42

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i: ; preds = %bb.au, %.lr.ph.i.i.i.i
  %.0.lcssa.i.ph.i.i.i = phi ptr [ %i.hg, %bb.au ], [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.hi = icmp eq ptr %.0.lcssa.i.ph.i.i.i, %i.hd
  br i1 %i.hi, label %.thread.i54.i.i, label %bb.av

.thread.i54.i.i:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i
  store i8 0, ptr %i.gt, align 1
  store i32 %i.gz, ptr %i.gr, align 4
  br label %.critedge.i.i.i

bb.av:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i
  %i.hj = add nsw i32 %spec.select.i.i.i, %.084143.i.i.i
  br label %.thread133.i.i.i

bb.aw:                                            ; preds = %bb.at
  %i.hk = icmp samesign ugt i32 %spec.select98.i.i.i, 1
  br i1 %i.hk, label %bb.ax, label %.critedge.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.hl = add nuw nsw i32 %spec.select98.i.i.i, %.079146.i.i.i
  %i.hm = zext nneg i32 %i.hl to i64              ; 2 uses
  %indvars.iv.next.i52.i.i230 = add nuw nsw i64 %i.gq, 1 ; 2 uses
  %.not96.not.i.i.i231 = icmp samesign ult i64 %indvars.iv.next.i52.i.i230, %i.hm
  br i1 %.not96.not.i.i.i231, label %.lr.ph, label %.critedge.i.i.i

bb.ay:                                            ; preds = %.lr.ph
  %indvars.iv.next.i52.i.i = add nuw nsw i64 %indvars.iv.next.i52.i.i232, 1 ; 2 uses
  %.not96.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i52.i.i, %i.hm
  br i1 %.not96.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !43

.lr.ph:                                           ; preds = %bb.ax, %bb.ay
  %indvars.iv.next.i52.i.i232 = phi i64 [ %indvars.iv.next.i52.i.i, %bb.ay ], [ %indvars.iv.next.i52.i.i230, %bb.ax ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i52.i.i232
  %i.ho = load i32, ptr %i.hn, align 4
  %.not.i53.i.i = icmp eq i32 %i.ho, %i.gs
  br i1 %.not.i53.i.i, label %bb.ay, label %bb.bn, !llvm.loop !43

.critedge.i.i.i:                                  ; preds = %bb.ay, %bb.ax, %bb.aw, %.thread.i54.i.i
  %.076.i.i.i = phi i32 [ %i.gz, %.thread.i54.i.i ], [ %i.gs, %bb.aw ], [ %i.gs, %bb.ax ], [ %i.gs, %bb.ay ] ; 6 uses
  %i.hp = load i32, ptr %i.gj, align 4            ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, -1
  br i1 %i.hq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.critedge.i.i.i
  %i.hr = zext nneg i32 %i.hp to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = icmp eq i32 %i.ht, %.076.i.i.i
  br i1 %i.hu, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.critedge.i.i.i
  %i.hv = load i32, ptr %5, align 4               ; 5 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph.i103.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i

.lr.ph.i103.i.i.i:                                ; preds = %bb.ba
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.hv to i64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i103.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i103.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.bc ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i.i.i.i
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = icmp eq i32 %i.hy, %.076.i.i.i
  br i1 %i.hz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.bb, !llvm.loop !44

bb.bd:                                            ; preds = %bb.bb
  %i.ia = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  store i32 %i.ia, ptr %i.gj, align 4
  br label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.bc
  %i.ib = icmp eq i32 %i.hv, 32
  br i1 %i.ib, label %.preheader.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.ba
  store i32 %i.hv, ptr %i.gj, align 4
  %i.ic = sext i32 %i.hv to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.ic
  store i32 %.079146.i.i.i, ptr %i.id, align 4
  %i.ie = load i32, ptr %5, align 4
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.if
  store i32 %.076.i.i.i, ptr %i.ig, align 4
  %i.ih = load i32, ptr %5, align 4               ; 2 uses
  %i.ii = add nsw i32 %i.ih, 1
  store i32 %i.ii, ptr %5, align 4
  %i.ij = sext i32 %i.ih to i64
  br label %.thread127.sink.split.i.i.i
end_hunk_0
