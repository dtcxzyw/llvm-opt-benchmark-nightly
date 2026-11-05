Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/umutablecptrie?download=true
inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i121.i.1 = add nuw nsw i64 %indvars.iv.i120.i, 2 ; 2 uses
  %niter383.next.1 = add i64 %niter383, 2         ; 2 uses
  %niter383.ncmp.1 = icmp eq i64 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %.preheader.i114.i.loopexit.unr-lcssa, label %bb.o, !llvm.loop !62

bb.t:                                             ; preds = %bb.t, %.lr.ph16.i115.i
  %indvars.iv18.i116.i = phi i64 [ 0, %.lr.ph16.i115.i ], [ %indvars.iv.next19.i117.i, %bb.t ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv18.i116.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34
  %i.ci = and i32 %i.ch, 255
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !34
  %indvars.iv.next19.i117.i = add nuw nsw i64 %indvars.iv18.i116.i, 1 ; 2 uses
  %i.cj = load i32, ptr %i.bp, align 4, !tbaa !35
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next19.i117.i, %i.ck
  br i1 %i.cl, label %bb.t, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i, !llvm.loop !63

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i: ; preds = %bb.l, %bb.t, %.preheader.i114.i, %.preheader.i.i, %bb.d
  %i.cm = icmp eq i32 %1, 0
  %i.cn = select i1 %i.cm, i32 65536, i32 4096    ; 9 uses
  %i.co = lshr exact i32 %i.cn, 4                 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cq, 1114111
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

bb.v:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 69695
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !40
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = load ptr, ptr %0, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 278524
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !32
  %i.cz = load ptr, ptr %0, align 8, !tbaa !22
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 278524
  %i.db = load i32, ptr %i.da, align 4, !tbaa !34
  %i.dc = add i32 %i.db, 15
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dd
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i: ; preds = %bb.x, %bb.w, %bb.u
  %.1.in.i.i.i = phi ptr [ %i.de, %bb.x ], [ %i.cr, %bb.u ], [ %i.cw, %bb.w ]
  %.1.i.i.i = load i32, ptr %.1.in.i.i.i, align 4, !tbaa !34 ; 21 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 12 uses
  store i32 %.1.i.i.i, ptr %i.df, align 4, !tbaa !30
  %i.dg = ashr i32 %i.cq, 4                       ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i.i.i, label %.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = zext nneg i32 %i.dg to i64
  br label %bb.y

bb.y:                                             ; preds = %.thread.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.thread.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next.i.i.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !40
  %i.dp = icmp eq i8 %i.do, 0
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next.i.i.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !34 ; 2 uses
  br i1 %i.dp, label %bb.ap, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ds ; 16 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !34
  %.not.i55.i.i = icmp eq i32 %i.du, %.1.i.i.i
  br i1 %.not.i55.i.i, label %bb.aa, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !34
  %.not.1.i.i.i = icmp eq i32 %i.dw, %.1.i.i.i
  br i1 %.not.1.i.i.i, label %bb.ab, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !34
  %.not.2.i.i.i = icmp eq i32 %i.dy, %.1.i.i.i
  br i1 %.not.2.i.i.i, label %bb.ac, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !34
  %.not.3.i.i.i = icmp eq i32 %i.ea, %.1.i.i.i
  br i1 %.not.3.i.i.i, label %bb.ad, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !34
  %.not.4.i.i.i = icmp eq i32 %i.ec, %.1.i.i.i
  br i1 %.not.4.i.i.i, label %bb.ae, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !34
  %.not.5.i.i.i = icmp eq i32 %i.ee, %.1.i.i.i
  br i1 %.not.5.i.i.i, label %bb.af, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !34
  %.not.6.i.i.i = icmp eq i32 %i.eg, %.1.i.i.i
  br i1 %.not.6.i.i.i, label %bb.ag, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !34
  %.not.7.i.i.i = icmp eq i32 %i.ei, %.1.i.i.i
  br i1 %.not.7.i.i.i, label %bb.ah, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !34
  %.not.8.i.i.i = icmp eq i32 %i.ek, %.1.i.i.i
  br i1 %.not.8.i.i.i, label %bb.ai, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.em = load i32, ptr %i.el, align 4, !tbaa !34
  %.not.9.i.i.i = icmp eq i32 %i.em, %.1.i.i.i
  br i1 %.not.9.i.i.i, label %bb.aj, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !34
  %.not.10.i.i.i = icmp eq i32 %i.eo, %.1.i.i.i
  br i1 %.not.10.i.i.i, label %bb.ak, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !34
  %.not.11.i.i.i = icmp eq i32 %i.eq, %.1.i.i.i
  br i1 %.not.11.i.i.i, label %bb.al, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.es = load i32, ptr %i.er, align 4, !tbaa !34
  %.not.12.i.i.i = icmp eq i32 %i.es, %.1.i.i.i
  br i1 %.not.12.i.i.i, label %bb.am, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !34
  %.not.13.i.i.i = icmp eq i32 %i.eu, %.1.i.i.i
  br i1 %.not.13.i.i.i, label %bb.an, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !34
  %.not.14.i.i.i = icmp eq i32 %i.ew, %.1.i.i.i
  br i1 %.not.14.i.i.i, label %bb.ao, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 60
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !34
  %.not.15.i.i.i = icmp eq i32 %i.ey, %.1.i.i.i
  br i1 %.not.15.i.i.i, label %.thread.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

bb.ap:                                            ; preds = %bb.y
  %i.ez = icmp eq i32 %i.dr, %.1.i.i.i
  br i1 %i.ez, label %.thread.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i

.thread.i.i.i:                                    ; preds = %bb.ap, %bb.ao
  %i.fa = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.fa, label %bb.y, label %.thread.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.2.i.in.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %.2.i.i.i = shl nuw nsw i32 %.2.i.in.i.i, 4
  %i.fb = add nuw nsw i32 %.2.i.i.i, 496
  %i.fc = and i32 %i.fb, 2147483136               ; 5 uses
  %i.fd = icmp eq i32 %i.fc, 1114112
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !27 ; 2 uses
  store i32 %i.ff, ptr %i.df, align 4, !tbaa !30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i
  %i.fg = phi i32 [ %i.ff, %bb.aq ], [ %.1.i.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie13findHighStartEv.exit.i.i ]
  %i.fh = icmp samesign ult i32 %i.fc, %i.cn
  br i1 %i.fh, label %.thread.i.i, label %.loopexit133.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.i, %bb.ar, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i
  %i.fi = phi i32 [ %i.fg, %bb.ar ], [ %.1.i.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i ], [ %.1.i.i.i, %.thread.i.i.i ] ; 5 uses
  %i.fj = phi i32 [ %i.fc, %bb.ar ], [ 0, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit.i.i ], [ 0, %.thread.i.i.i ] ; 5 uses
  %i.fk = lshr exact i32 %i.fj, 4                 ; 2 uses
  %i.fl = icmp samesign ult i32 %i.fk, %i.co
  br i1 %i.fl, label %.lr.ph.i124.i, label %.loopexit133.i.i

.lr.ph.i124.i:                                    ; preds = %.thread.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.fn = zext nneg i32 %i.fk to i64              ; 4 uses
  %wide.trip.count.i125.i = zext nneg i32 %i.co to i64 ; 3 uses
  %7 = load ptr, ptr %0, align 8, !tbaa !22       ; 7 uses
  %i.fo = sub nsw i64 %wide.trip.count.i125.i, %i.fn
  %i.fp = getelementptr i8, ptr %0, i64 %i.fn
  %i.fq = getelementptr i8, ptr %i.fp, i64 64
  %i.fr = getelementptr i8, ptr %0, i64 %wide.trip.count.i125.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 64
  %i.ft = lshr exact i32 %i.fj, 2
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr nuw i8, ptr %7, i64 %i.fu
  %i.fw = lshr exact i32 %i.cn, 2
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr i8, ptr %7, i64 %i.fx
  %bound0 = icmp ult ptr %i.fq, %i.fy
  %bound1 = icmp ult ptr %i.fv, %i.fs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i124.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fi, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fz = add nuw i64 %index, %i.fn               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store <4 x i8> zeroinitializer, ptr %i.ga, align 1, !tbaa !40, !alias.scope !116, !noalias !117
  store <4 x i8> zeroinitializer, ptr %i.gb, align 1, !tbaa !40, !alias.scope !116, !noalias !117
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.fz ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gc, align 4, !tbaa !34, !alias.scope !117
  store <4 x i32> %broadcast.splat, ptr %i.gd, align 4, !tbaa !34, !alias.scope !117
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %i.fo
  br i1 %i.ge, label %.loopexit133.i.i, label %vector.body, !llvm.loop !67

scalar.ph:                                        ; preds = %.lr.ph.i124.i, %scalar.ph
  %indvars.iv.i126.i = phi i64 [ %indvars.iv.next.i127.i.3, %scalar.ph ], [ %i.fn, %.lr.ph.i124.i ] ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i126.i
  store i8 0, ptr %i.gf, align 1, !tbaa !40
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i126.i
  store i32 %i.fi, ptr %i.gg, align 4, !tbaa !34
  %indvars.iv.next.i127.i = or disjoint i64 %indvars.iv.i126.i, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next.i127.i
  store i8 0, ptr %i.gh, align 1, !tbaa !40
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next.i127.i
  store i32 %i.fi, ptr %i.gi, align 4, !tbaa !34
  %indvars.iv.next.i127.i.1 = or disjoint i64 %indvars.iv.i126.i, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next.i127.i.1
  store i8 0, ptr %i.gj, align 1, !tbaa !40
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next.i127.i.1
  store i32 %i.fi, ptr %i.gk, align 4, !tbaa !34
  %indvars.iv.next.i127.i.2 = or disjoint i64 %indvars.iv.i126.i, 3 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next.i127.i.2
  store i8 0, ptr %i.gl, align 1, !tbaa !40
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next.i127.i.2
  store i32 %i.fi, ptr %i.gm, align 4, !tbaa !34
  %indvars.iv.next.i127.i.3 = add nuw nsw i64 %indvars.iv.i126.i, 4 ; 2 uses
  %exitcond.not.i128.i.3 = icmp eq i64 %indvars.iv.next.i127.i.3, %wide.trip.count.i125.i
  br i1 %exitcond.not.i128.i.3, label %.loopexit133.i.i, label %scalar.ph, !llvm.loop !68

.loopexit133.i.i:                                 ; preds = %vector.body, %scalar.ph, %.thread.i.i, %bb.ar
  %i.gn = phi i32 [ %i.fc, %bb.ar ], [ %i.cn, %.thread.i.i ], [ %i.cn, %scalar.ph ], [ %i.cn, %vector.body ] ; 3 uses
  %i.go = phi i32 [ %i.fc, %bb.ar ], [ %i.fj, %.thread.i.i ], [ %i.fj, %scalar.ph ], [ %i.fj, %vector.body ]
  store i32 %i.gn, ptr %i.cp, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.gr = zext nneg i32 %i.gn to i64
  br label %bb.bn

.lr.ph149.i.i.i:                                  ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !tbaa !119
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 6 uses
  store i32 -1, ptr %i.gs, align 4, !tbaa !120
  %i.gt = lshr exact i32 %i.gn, 4
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 18 uses
  br label %bb.as

bb.as:                                            ; preds = %.thread133.i.i.i, %.lr.ph149.i.i.i
  %.079146.i.i.i = phi i32 [ 0, %.lr.ph149.i.i.i ], [ %i.ls, %.thread133.i.i.i ] ; 9 uses
  %.080145.i.i.i = phi i32 [ 4, %.lr.ph149.i.i.i ], [ %spec.select98.i.i.i, %.thread133.i.i.i ]
  %.082144.i.i.i = phi i32 [ 64, %.lr.ph149.i.i.i ], [ %spec.select.i.i.i, %.thread133.i.i.i ]
  %.084143.i.i.i = phi i32 [ 148, %.lr.ph149.i.i.i ], [ %.5136.i.i.i, %.thread133.i.i.i ] ; 4 uses
  %i.gx = icmp eq i32 %.079146.i.i.i, %i.co       ; 2 uses
  %spec.select.i.i.i = select i1 %i.gx, i32 16, i32 %.082144.i.i.i ; 5 uses
  %spec.select98.i.i.i = select i1 %i.gx, i32 1, i32 %.080145.i.i.i ; 7 uses
  %i.gy = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.gz = zext nneg i32 %.079146.i.i.i to i64     ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gz ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !34 ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gz ; 3 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !40
  %i.he = icmp eq i8 %i.hd, 1
  br i1 %i.he, label %.lr.ph.i.preheader.i.i.i, label %bb.av

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.as
  %i.hf = load ptr, ptr %i.gq, align 8, !tbaa !32
  %i.hg = zext i32 %i.hb to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !34 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %i.hk = add nsw i32 %spec.select.i.i.i, -1
  %i.hl = zext nneg i32 %i.hk to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.hl, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.at, %.lr.ph.i.preheader.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.hp, %bb.at ], [ %i.hj, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.hn = load i32, ptr %.08.i.i.i.i, align 4, !tbaa !34
  %i.ho = icmp eq i32 %i.hn, %i.hi
  br i1 %i.ho, label %bb.at, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4 ; 3 uses
  %i.hq = icmp ult ptr %i.hp, %i.hm
  br i1 %i.hq, label %.lr.ph.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i, !llvm.loop !69

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i
  %.0.lcssa.i.ph.i.i.i = phi ptr [ %i.hp, %bb.at ], [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.hr = icmp eq ptr %.0.lcssa.i.ph.i.i.i, %i.hm
  br i1 %i.hr, label %.thread.i60.i.i, label %bb.au

.thread.i60.i.i:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i
  store i8 0, ptr %i.hc, align 1, !tbaa !40
  store i32 %i.hi, ptr %i.ha, align 4, !tbaa !34
  br label %.critedge.i.i.i

bb.au:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i
  %i.hs = add nsw i32 %spec.select.i.i.i, %.084143.i.i.i
  br label %.thread133.i.i.i

bb.av:                                            ; preds = %bb.as
  %i.ht = icmp samesign ugt i32 %spec.select98.i.i.i, 1
  br i1 %i.ht, label %bb.aw, label %.critedge.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hu = add nuw nsw i32 %spec.select98.i.i.i, %.079146.i.i.i
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %indvars.iv.next.i58.i.i224 = add nuw nsw i64 %i.gz, 1 ; 2 uses
  %.not96.not.i.i.i225 = icmp samesign ult i64 %indvars.iv.next.i58.i.i224, %i.hv
  br i1 %.not96.not.i.i.i225, label %.lr.ph, label %.critedge.i.i.i

bb.ax:                                            ; preds = %.lr.ph
  %indvars.iv.next.i58.i.i = add nuw nsw i64 %indvars.iv.next.i58.i.i226, 1 ; 2 uses
  %.not96.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i58.i.i, %i.hv
  br i1 %.not96.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !70

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %indvars.iv.next.i58.i.i226 = phi i64 [ %indvars.iv.next.i58.i.i, %bb.ax ], [ %indvars.iv.next.i58.i.i224, %bb.aw ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i58.i.i226
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !34
  %.not.i59.i.i = icmp eq i32 %i.hx, %i.hb
  br i1 %.not.i59.i.i, label %bb.ax, label %bb.bm, !llvm.loop !70

.critedge.i.i.i:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %.thread.i60.i.i
  %.076.i.i.i = phi i32 [ %i.hi, %.thread.i60.i.i ], [ %i.hb, %bb.av ], [ %i.hb, %bb.aw ], [ %i.hb, %bb.ax ] ; 6 uses
  %i.hy = load i32, ptr %i.gs, align 4, !tbaa !120 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.critedge.i.i.i
  %i.ia = zext nneg i32 %i.hy to i64              ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !34
  %i.id = icmp eq i32 %i.ic, %.076.i.i.i
  br i1 %i.id, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge.i.i.i
  %i.ie = load i32, ptr %5, align 4, !tbaa !119   ; 5 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph.i103.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i

.lr.ph.i103.i.i.i:                                ; preds = %bb.az
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ie to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i103.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i103.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.bb ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i.i.i.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !34
  %i.ii = icmp eq i32 %i.ih, %.076.i.i.i
  br i1 %i.ii, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ba, !llvm.loop !71

bb.bc:                                            ; preds = %bb.ba
  %i.ij = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  store i32 %i.ij, ptr %i.gs, align 4, !tbaa !120
  br label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.bb
  %i.ik = icmp eq i32 %i.ie, 32
end_hunk_0
