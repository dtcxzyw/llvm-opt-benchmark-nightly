Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml7scanner29yaml_parser_fetch_flow_scalar17h27a076f4a9d487c3E:bb.a

bb.ay:                                            ; preds = %bb.bc, %bb.bb, %bb.ax, %bb.aw
  %.sroa.0.0.i166.i = phi i64 [ 3, %bb.bb ], [ 1, %bb.aw ], [ 2, %bb.ax ], [ %..i165.i, %bb.bc ] ; 2 uses
  %i.fw = load i64, ptr %i.cl, align 8, !noundef !6 ; 2 uses
  %i.fx = add i64 %i.fw, %.sroa.0.0.i166.i        ; 4 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  br i1 %i.fy, label %bb.az, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i167.i", !prof !4

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i167.i": ; preds = %bb.ay
  store i64 %i.fx, ptr %i.cl, align 8
  %i.fz = load i64, ptr %i.cv, align 8, !noundef !6 ; 3 uses
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.ba, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit168.i, !prof !4

bb.ba:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i167.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.bb:                                            ; preds = %bb.ax
  %i.gb = and i8 %i.fs, -16
  %i.gc = icmp eq i8 %i.gb, -32
  br i1 %i.gc, label %bb.ay, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gd = and i8 %i.fs, -8
  %i.ge = icmp eq i8 %i.gd, -16
  %..i165.i = select i1 %i.ge, i64 4, i64 0
  br label %bb.ay

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit168.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i167.i"
  %i.gf = add nuw i64 %i.fz, 1                    ; 2 uses
  store i64 %i.gf, ptr %i.cv, align 8
  %i.gg = load i64, ptr %i.dd, align 8, !noundef !6 ; 2 uses
  %i.gh = add i64 %i.gg, -1
  store i64 %i.gh, ptr %i.dd, align 8
  %i.gi = getelementptr i8, ptr %i.fr, i64 %.sroa.0.0.i166.i ; 3 uses
  store ptr %i.gi, ptr %i.cm, align 8
  %i.gj = load i8, ptr %i.gi, align 1, !noundef !6 ; 4 uses
  %i.gk = icmp sgt i8 %i.gj, -1
  br i1 %i.gk, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit168.i
  %i.gl = and i8 %i.gj, -32
  %i.gm = icmp eq i8 %i.gl, -64
  br i1 %i.gm, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bi, %bb.bh, %bb.bd, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit168.i
  %.sroa.0.0.i170.i = phi i64 [ 3, %bb.bh ], [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit168.i ], [ 2, %bb.bd ], [ %..i169.i, %bb.bi ] ; 2 uses
  %i.gn = add i64 %.sroa.0.0.i170.i, %i.fx        ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.fx
  br i1 %i.go, label %bb.bf, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i171.i", !prof !4

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i171.i": ; preds = %bb.be
  store i64 %i.gn, ptr %i.cl, align 8
  %i.gp = icmp eq i64 %i.gf, -1
  br i1 %i.gp, label %bb.bg, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit172.i, !prof !4

bb.bg:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i171.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.bh:                                            ; preds = %bb.bd
  %i.gq = and i8 %i.gj, -16
  %i.gr = icmp eq i8 %i.gq, -32
  br i1 %i.gr, label %bb.be, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = and i8 %i.gj, -8
  %i.gt = icmp eq i8 %i.gs, -16
  %..i169.i = select i1 %i.gt, i64 4, i64 0
  br label %bb.be

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit172.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i171.i"
  %i.gu = add nuw i64 %i.fz, 2
  store i64 %i.gu, ptr %i.cv, align 8
  %i.gv = add i64 %i.gg, -2
  store i64 %i.gv, ptr %i.dd, align 8
  %i.gw = getelementptr i8, ptr %i.gi, i64 %.sroa.0.0.i170.i
  store ptr %i.gw, ptr %i.cm, align 8
  br label %.loopexit.i

.critedge154.i:                                   ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %i.gx = load ptr, ptr %i.cm, align 8, !noundef !6 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !noundef !6 ; 4 uses
  %i.gz = icmp sgt i8 %i.gy, -1
  br i1 %i.gz, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.critedge154.i
  %i.ha = and i8 %i.gy, -32
  %i.hb = icmp eq i8 %i.ha, -64
  br i1 %i.hb, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bo, %bb.bn, %bb.bj, %.critedge154.i
  %.sroa.0.0.i174.i = phi i64 [ 3, %bb.bn ], [ 1, %.critedge154.i ], [ 2, %bb.bj ], [ %..i173.i, %bb.bo ] ; 2 uses
  %i.hc = load i64, ptr %i.cl, align 8, !noundef !6 ; 2 uses
  %i.hd = add i64 %i.hc, %.sroa.0.0.i174.i        ; 4 uses
  %i.he = icmp ult i64 %i.hd, %i.hc
  br i1 %i.he, label %bb.bl, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i175.i", !prof !4

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i175.i": ; preds = %bb.bk
  store i64 %i.hd, ptr %i.cl, align 8
  %i.hf = load i64, ptr %i.cv, align 8, !noundef !6 ; 3 uses
  %i.hg = icmp eq i64 %i.hf, -1
  br i1 %i.hg, label %bb.bm, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit176.i, !prof !4

bb.bm:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i175.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.bn:                                            ; preds = %bb.bj
  %i.hh = and i8 %i.gy, -16
  %i.hi = icmp eq i8 %i.hh, -32
  br i1 %i.hi, label %bb.bk, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hj = and i8 %i.gy, -8
  %i.hk = icmp eq i8 %i.hj, -16
  %..i173.i = select i1 %i.hk, i64 4, i64 0
  br label %bb.bk

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit176.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i175.i"
  %i.hl = add nuw i64 %i.hf, 1                    ; 2 uses
  store i64 %i.hl, ptr %i.cv, align 8
  %i.hm = load i64, ptr %i.dd, align 8, !noundef !6 ; 2 uses
  %i.hn = add i64 %i.hm, -1
  store i64 %i.hn, ptr %i.dd, align 8
  %i.ho = getelementptr i8, ptr %i.gx, i64 %.sroa.0.0.i174.i ; 3 uses
  store ptr %i.ho, ptr %i.cm, align 8
  %i.hp = load i8, ptr %i.ho, align 1, !noundef !6 ; 4 uses
  %i.hq = icmp sgt i8 %i.hp, -1
  br i1 %i.hq, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit176.i
  %i.hr = and i8 %i.hp, -32
  %i.hs = icmp eq i8 %i.hr, -64
  br i1 %i.hs, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bu, %bb.bt, %bb.bp, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit176.i
  %.sroa.0.0.i178.i = phi i64 [ 3, %bb.bt ], [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit176.i ], [ 2, %bb.bp ], [ %..i177.i, %bb.bu ] ; 2 uses
  %i.ht = add i64 %.sroa.0.0.i178.i, %i.hd        ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hd
  br i1 %i.hu, label %bb.br, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i179.i", !prof !4

bb.br:                                            ; preds = %bb.bq
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i179.i": ; preds = %bb.bq
  store i64 %i.ht, ptr %i.cl, align 8
  %i.hv = icmp eq i64 %i.hl, -1
  br i1 %i.hv, label %bb.bs, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit180.i, !prof !4

bb.bs:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i179.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.bt:                                            ; preds = %bb.bp
  %i.hw = and i8 %i.hp, -16
  %i.hx = icmp eq i8 %i.hw, -32
  br i1 %i.hx, label %bb.bq, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hy = and i8 %i.hp, -8
  %i.hz = icmp eq i8 %i.hy, -16
  %..i177.i = select i1 %i.hz, i64 4, i64 0
  br label %bb.bq

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit180.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i179.i"
  %i.ia = add nuw i64 %i.hf, 2
  store i64 %i.ia, ptr %i.cv, align 8
  %i.ib = add i64 %i.hm, -2
  store i64 %i.ib, ptr %i.dd, align 8
  %i.ic = getelementptr i8, ptr %i.ho, i64 %.sroa.0.0.i178.i
  store ptr %i.ic, ptr %i.cm, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.3, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.7, %.critedge140.i, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit180.i, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit172.i
  %i.id = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 2)
  br i1 %i.id, label %.preheader297.split.i, label %.loopexit296.i

.critedge.i:                                      ; preds = %.thread267.i
  switch i8 %i.ek, label %.critedge140.i [
    i8 34, label %.loopexit298.i
    i8 92, label %bb.bv
  ]

bb.bv:                                            ; preds = %.critedge.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !noundef !6 ; 2 uses
  switch i8 %i.if, label %.thread271.i [
    i8 13, label %bb.bw
    i8 10, label %bb.bw
    i8 -62, label %bb.bx
    i8 -30, label %bb.by
  ]

bb.bw:                                            ; preds = %bb.bz, %bb.bx, %bb.bv, %bb.bv
  %i.ig = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef 3)
  br i1 %i.ig, label %bb.ca, label %.loopexit296.i

bb.bx:                                            ; preds = %bb.bv
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.ii = load i8, ptr %i.ih, align 1, !noundef !6
  %i.ij = icmp eq i8 %i.ii, -123
  br i1 %i.ij, label %bb.bw, label %.thread271.i

bb.by:                                            ; preds = %bb.bv
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.il = load i8, ptr %i.ik, align 1, !noundef !6
  %i.im = icmp eq i8 %i.il, -128
  br i1 %i.im, label %bb.bz, label %.thread271.i

bb.bz:                                            ; preds = %bb.by
  %i.in = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  %i.io = load i8, ptr %i.in, align 1, !noundef !6
  %i.ip = and i8 %i.io, -2
  %switch32 = icmp eq i8 %i.ip, -88
  br i1 %switch32, label %bb.bw, label %.thread271.i

bb.ca:                                            ; preds = %bb.bw
  %i.iq = load ptr, ptr %i.cm, align 8, !noundef !6 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !noundef !6 ; 4 uses
  %i.is = icmp sgt i8 %i.ir, -1
  br i1 %i.is, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.it = and i8 %i.ir, -32
  %i.iu = icmp eq i8 %i.it, -64
  br i1 %i.iu, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cg, %bb.cf, %bb.cb, %bb.ca
  %.sroa.0.0.i182.i = phi i64 [ 3, %bb.cf ], [ 1, %bb.ca ], [ 2, %bb.cb ], [ %..i181.i, %bb.cg ] ; 2 uses
  %i.iv = load i64, ptr %i.cl, align 8, !noundef !6 ; 2 uses
  %i.iw = add i64 %i.iv, %.sroa.0.0.i182.i        ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.iv
  br i1 %i.ix, label %bb.cd, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i183.i", !prof !4

bb.cd:                                            ; preds = %bb.cc
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i183.i": ; preds = %bb.cc
  store i64 %i.iw, ptr %i.cl, align 8
  %i.iy = load i64, ptr %i.cv, align 8, !noundef !6 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, -1
  br i1 %i.iz, label %bb.ce, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit184.i, !prof !4

bb.ce:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i183.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.cf:                                            ; preds = %bb.cb
  %i.ja = and i8 %i.ir, -16
  %i.jb = icmp eq i8 %i.ja, -32
  br i1 %i.jb, label %bb.cc, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jc = and i8 %i.ir, -8
  %i.jd = icmp eq i8 %i.jc, -16
  %..i181.i = select i1 %i.jd, i64 4, i64 0
  br label %bb.cc

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit184.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i183.i"
  %i.je = add nuw i64 %i.iy, 1
  store i64 %i.je, ptr %i.cv, align 8
  %i.jf = load i64, ptr %i.dd, align 8, !noundef !6
  %i.jg = add i64 %i.jf, -1
  store i64 %i.jg, ptr %i.dd, align 8
  %i.jh = getelementptr i8, ptr %i.iq, i64 %.sroa.0.0.i182.i
  store ptr %i.jh, ptr %i.cm, align 8
  tail call fastcc void @_ZN14unsafe_libyaml7scanner9SKIP_LINE17hc921a906d7b29922E(ptr noundef nonnull %0)
  br label %.loopexit298.i

.critedge140.i:                                   ; preds = %.critedge.i, %bb.ar
  call fastcc void @_ZN14unsafe_libyaml7scanner4READ17he812c9f45329f0f7E(ptr noundef nonnull %0, ptr noundef %i.e)
  br label %.loopexit.i

.thread271.i:                                     ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bv
  %i.ji = load ptr, ptr %i.bn, align 8, !noundef !6 ; 3 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 5
  %i.jk = load ptr, ptr %i.bp, align 8, !noundef !6 ; 2 uses
  %.not.i = icmp ult ptr %i.jj, %i.jk
  br i1 %.not.i, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %.thread271.i
  %i.jl = load ptr, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.jo = sub i64 %i.jm, %i.jn                    ; 4 uses
  %i.jp = add i64 %i.jo, 4611686018427387904
  %i.jq = icmp slt i64 %i.jp, 0
  br i1 %i.jq, label %bb.ci, label %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit186.i, !prof !4

bb.ci:                                            ; preds = %bb.ch
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable

_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit186.i: ; preds = %bb.ch
  %i.jr = shl nsw i64 %i.jo, 1                    ; 2 uses
  %i.js = tail call fastcc noundef ptr @_ZN14unsafe_libyaml3api12yaml_realloc17h5fba004c459eee5cE(ptr noundef %i.jl, i64 noundef %i.jr) ; 4 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 %i.jo
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jt, i8 0, i64 %i.jo, i1 false)
  %i.ju = ptrtoint ptr %i.ji to i64
  %i.jv = sub i64 %i.ju, %i.jn
  %i.jw = getelementptr i8, ptr %i.js, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.js, i64 %i.jr
  store ptr %i.jx, ptr %i.bp, align 8
  store ptr %i.js, ptr %i.e, align 8
  %.pre358.i = load ptr, ptr %i.cm, align 8       ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre358.i, i64 1
  %.pre359.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit186.i, %.thread271.i
  %i.jy = phi ptr [ %i.ji, %.thread271.i ], [ %i.jw, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit186.i ] ; 51 uses
  %2 = phi i8 [ %i.if, %.thread271.i ], [ %.pre359.i, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit186.i ]
  %3 = phi ptr [ %i.ej, %.thread271.i ], [ %.pre358.i, %_ZN14unsafe_libyaml3api18yaml_string_extend17h62b2adeea2c7d500E.exit186.i ] ; 2 uses
  switch i8 %2, label %.loopexit296.i.sink.split [
    i8 48, label %bb.ck
    i8 97, label %bb.cl
    i8 98, label %bb.cm
    i8 116, label %bb.cn
    i8 9, label %bb.cn
    i8 110, label %bb.co
    i8 118, label %bb.cp
    i8 102, label %bb.cq
    i8 114, label %bb.cr
    i8 101, label %bb.cs
    i8 32, label %bb.ct
    i8 34, label %bb.cu
    i8 47, label %bb.cv
    i8 92, label %bb.cw
    i8 78, label %bb.cx
    i8 95, label %bb.cy
    i8 76, label %bb.cz
    i8 80, label %bb.da
    i8 120, label %bb.dd
    i8 117, label %bb.db
    i8 85, label %bb.dc
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.jz = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.jz, ptr %i.bn, align 8
  store i8 0, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cl:                                            ; preds = %bb.cj
  %i.ka = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.ka, ptr %i.bn, align 8
  store i8 7, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cm:                                            ; preds = %bb.cj
  %i.kb = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kb, ptr %i.bn, align 8
  store i8 8, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cn:                                            ; preds = %bb.cj, %bb.cj
  %i.kc = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kc, ptr %i.bn, align 8
  store i8 9, ptr %i.jy, align 1
  br label %.critedge154.i

bb.co:                                            ; preds = %bb.cj
  %i.kd = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kd, ptr %i.bn, align 8
  store i8 10, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cp:                                            ; preds = %bb.cj
  %i.ke = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.ke, ptr %i.bn, align 8
  store i8 11, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cq:                                            ; preds = %bb.cj
  %i.kf = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kf, ptr %i.bn, align 8
  store i8 12, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cr:                                            ; preds = %bb.cj
  %i.kg = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kg, ptr %i.bn, align 8
  store i8 13, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cs:                                            ; preds = %bb.cj
  %i.kh = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kh, ptr %i.bn, align 8
  store i8 27, ptr %i.jy, align 1
  br label %.critedge154.i

bb.ct:                                            ; preds = %bb.cj
  %i.ki = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.ki, ptr %i.bn, align 8
  store i8 32, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cu:                                            ; preds = %bb.cj
  %i.kj = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kj, ptr %i.bn, align 8
  store i8 34, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cv:                                            ; preds = %bb.cj
  %i.kk = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kk, ptr %i.bn, align 8
  store i8 47, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cw:                                            ; preds = %bb.cj
  %i.kl = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.kl, ptr %i.bn, align 8
  store i8 92, ptr %i.jy, align 1
  br label %.critedge154.i

bb.cx:                                            ; preds = %bb.cj
  %i.km = getelementptr i8, ptr %i.jy, i64 1
  store i8 -62, ptr %i.jy, align 1
  %i.kn = getelementptr i8, ptr %i.jy, i64 2
  store ptr %i.kn, ptr %i.bn, align 8
  store i8 -123, ptr %i.km, align 1
  br label %.critedge154.i

bb.cy:                                            ; preds = %bb.cj
  %i.ko = getelementptr i8, ptr %i.jy, i64 1
  store i8 -62, ptr %i.jy, align 1
  %i.kp = getelementptr i8, ptr %i.jy, i64 2
  store ptr %i.kp, ptr %i.bn, align 8
  store i8 -96, ptr %i.ko, align 1
  br label %.critedge154.i

bb.cz:                                            ; preds = %bb.cj
  %i.kq = getelementptr i8, ptr %i.jy, i64 1
  store i8 -30, ptr %i.jy, align 1
  %i.kr = getelementptr i8, ptr %i.jy, i64 2
  store i8 -128, ptr %i.kq, align 1
  %i.ks = getelementptr i8, ptr %i.jy, i64 3
  store ptr %i.ks, ptr %i.bn, align 8
  store i8 -88, ptr %i.kr, align 1
  br label %.critedge154.i

bb.da:                                            ; preds = %bb.cj
  %i.kt = getelementptr i8, ptr %i.jy, i64 1
  store i8 -30, ptr %i.jy, align 1
  %i.ku = getelementptr i8, ptr %i.jy, i64 2
  store i8 -128, ptr %i.kt, align 1
  %i.kv = getelementptr i8, ptr %i.jy, i64 3
  store ptr %i.kv, ptr %i.bn, align 8
  store i8 -87, ptr %i.ku, align 1
  br label %.critedge154.i

bb.db:                                            ; preds = %bb.cj
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cj
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.cj
  %exitcond.not.i.1 = phi i1 [ false, %bb.db ], [ true, %bb.cj ], [ false, %bb.dc ] ; 2 uses
  %exitcond.not.i.3 = phi i1 [ true, %bb.db ], [ false, %bb.cj ], [ false, %bb.dc ] ; 2 uses
  %.sroa.017.0.i = phi i64 [ 4, %bb.db ], [ 2, %bb.cj ], [ 8, %bb.dc ]
  %i.kw = load i8, ptr %3, align 1, !noundef !6   ; 4 uses
  %i.kx = icmp sgt i8 %i.kw, -1
  br i1 %i.kx, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ky = and i8 %i.kw, -32
  %i.kz = icmp eq i8 %i.ky, -64
  br i1 %i.kz, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.dj, %bb.di, %bb.de, %bb.dd
  %.sroa.0.0.i188.i = phi i64 [ 3, %bb.di ], [ 1, %bb.dd ], [ 2, %bb.de ], [ %..i187.i, %bb.dj ] ; 2 uses
  %i.la = load i64, ptr %i.cl, align 8, !noundef !6 ; 2 uses
  %i.lb = add i64 %i.la, %.sroa.0.0.i188.i        ; 4 uses
  %i.lc = icmp ult i64 %i.lb, %i.la
  br i1 %i.lc, label %bb.dg, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i189.i", !prof !4

bb.dg:                                            ; preds = %bb.df
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i189.i": ; preds = %bb.df
  store i64 %i.lb, ptr %i.cl, align 8
  %i.ld = load i64, ptr %i.cv, align 8, !noundef !6 ; 3 uses
  %i.le = icmp eq i64 %i.ld, -1
  br i1 %i.le, label %bb.dh, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit190.i, !prof !4

bb.dh:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i189.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.di:                                            ; preds = %bb.de
  %i.lf = and i8 %i.kw, -16
  %i.lg = icmp eq i8 %i.lf, -32
  br i1 %i.lg, label %bb.df, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lh = and i8 %i.kw, -8
  %i.li = icmp eq i8 %i.lh, -16
  %..i187.i = select i1 %i.li, i64 4, i64 0
  br label %bb.df

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit190.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i189.i"
  %i.lj = add nuw i64 %i.ld, 1                    ; 2 uses
  store i64 %i.lj, ptr %i.cv, align 8
  %i.lk = load i64, ptr %i.dd, align 8, !noundef !6 ; 2 uses
  %i.ll = add i64 %i.lk, -1
  store i64 %i.ll, ptr %i.dd, align 8
  %i.lm = getelementptr i8, ptr %3, i64 %.sroa.0.0.i188.i ; 3 uses
  store ptr %i.lm, ptr %i.cm, align 8
  %i.ln = load i8, ptr %i.lm, align 1, !noundef !6 ; 4 uses
  %i.lo = icmp sgt i8 %i.ln, -1
  br i1 %i.lo, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit190.i
  %i.lp = and i8 %i.ln, -32
  %i.lq = icmp eq i8 %i.lp, -64
  br i1 %i.lq, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dp, %bb.do, %bb.dk, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit190.i
  %.sroa.0.0.i192.i = phi i64 [ 3, %bb.do ], [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit190.i ], [ 2, %bb.dk ], [ %..i191.i, %bb.dp ] ; 2 uses
  %i.lr = add i64 %.sroa.0.0.i192.i, %i.lb        ; 2 uses
  %i.ls = icmp ult i64 %i.lr, %i.lb
  br i1 %i.ls, label %bb.dm, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i193.i", !prof !4

bb.dm:                                            ; preds = %bb.dl
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i193.i": ; preds = %bb.dl
  store i64 %i.lr, ptr %i.cl, align 8
  %i.lt = icmp eq i64 %i.lj, -1
  br i1 %i.lt, label %bb.dn, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit194.i, !prof !4

bb.dn:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i193.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.do:                                            ; preds = %bb.dk
  %i.lu = and i8 %i.ln, -16
  %i.lv = icmp eq i8 %i.lu, -32
  br i1 %i.lv, label %bb.dl, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lw = and i8 %i.ln, -8
  %i.lx = icmp eq i8 %i.lw, -16
  %..i191.i = select i1 %i.lx, i64 4, i64 0
  br label %bb.dl

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit194.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i193.i"
  %i.ly = add nuw i64 %i.ld, 2
  store i64 %i.ly, ptr %i.cv, align 8
  %i.lz = add i64 %i.lk, -2
  store i64 %i.lz, ptr %i.dd, align 8
  %i.ma = getelementptr i8, ptr %i.lm, i64 %.sroa.0.0.i192.i
  store ptr %i.ma, ptr %i.cm, align 8
  %i.mb = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml7scanner5CACHE17h435fe5f305cc104bE(ptr noundef nonnull %0, i64 noundef %.sroa.017.0.i)
  br i1 %i.mb, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit208.preheader.i", label %.loopexit296.i

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit208.preheader.i": ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit194.i
  %i.mc = load ptr, ptr %i.cm, align 8, !noundef !6 ; 8 uses
  %i.md = load i8, ptr %i.mc, align 1, !noundef !6 ; 5 uses
  %i.me = add i8 %i.md, -48                       ; 2 uses
  %or.cond143.i = icmp ult i8 %i.me, 10
  br i1 %or.cond143.i, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i", label %bb.fg

bb.dq:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.7", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1"
  %.lcssa = phi i32 [ %i.vp, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.7" ], [ %i.th, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1" ], [ %i.ub, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3" ] ; 15 uses
  %i.mf = and i32 %.lcssa, -2048
  %or.cond.i = icmp eq i32 %i.mf, 55296
  %i.mg = icmp ugt i32 %.lcssa, 1114111
  %or.cond3.i = or i1 %i.mg, %or.cond.i
  br i1 %or.cond3.i, label %.loopexit296.i.sink.split, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mh = icmp samesign ult i32 %.lcssa, 128
  br i1 %i.mh, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.mi = icmp samesign ult i32 %.lcssa, 2048
  br i1 %i.mi, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i", label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.mj = getelementptr i8, ptr %i.jy, i64 1
  store ptr %i.mj, ptr %i.bn, align 8
  %i.mk = trunc nuw nsw i32 %.lcssa to i8
  store i8 %i.mk, ptr %i.jy, align 1
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.ml = icmp samesign ult i32 %.lcssa, 65536
  br i1 %i.ml, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit200.i", label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit196.i"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i": ; preds = %bb.ds
  %i.mm = getelementptr i8, ptr %i.jy, i64 1
  %i.mn = lshr i32 %.lcssa, 6
  %i.mo = trunc nuw nsw i32 %i.mn to i8
  %i.mp = or disjoint i8 %i.mo, -64
  store i8 %i.mp, ptr %i.jy, align 1
  %i.mq = getelementptr i8, ptr %i.jy, i64 2
  store ptr %i.mq, ptr %i.bn, align 8
  %i.mr = trunc i32 %.lcssa to i8
  %i.ms = and i8 %i.mr, 63
  %i.mt = or disjoint i8 %i.ms, -128
  store i8 %i.mt, ptr %i.mm, align 1
  br label %bb.dv

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit196.i": ; preds = %bb.du
  %i.mu = getelementptr i8, ptr %i.jy, i64 4
  store ptr %i.mu, ptr %i.bn, align 8
  %i.mv = lshr i32 %.lcssa, 18
  %i.mw = trunc nuw nsw i32 %i.mv to i8
  %i.mx = lshr i32 %.lcssa, 12
  %i.my = trunc i32 %i.mx to i8
  %i.mz = lshr i32 %.lcssa, 6
  %i.na = trunc i32 %i.mz to i8
  %i.nb = trunc i32 %.lcssa to i8
  %i.nc = insertelement <4 x i8> poison, i8 %i.mw, i64 0
  %i.nd = insertelement <4 x i8> %i.nc, i8 %i.my, i64 1
  %i.ne = insertelement <4 x i8> %i.nd, i8 %i.na, i64 2
  %i.nf = insertelement <4 x i8> %i.ne, i8 %i.nb, i64 3
  %i.ng = and <4 x i8> %i.nf, <i8 -1, i8 63, i8 63, i8 63>
  %i.nh = or disjoint <4 x i8> %i.ng, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.nh, ptr %i.jy, align 1
  br label %bb.dv

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit200.i": ; preds = %bb.du
  %i.ni = getelementptr i8, ptr %i.jy, i64 3
  %i.nj = getelementptr i8, ptr %i.jy, i64 2
  %i.nk = getelementptr i8, ptr %i.jy, i64 1
  %i.nl = lshr i32 %.lcssa, 12
  %i.nm = trunc nuw nsw i32 %i.nl to i8
  %i.nn = or disjoint i8 %i.nm, -32
  store i8 %i.nn, ptr %i.jy, align 1
  %i.no = lshr i32 %.lcssa, 6
  %i.np = trunc i32 %i.no to i8
  %i.nq = and i8 %i.np, 63
  %i.nr = or disjoint i8 %i.nq, -128
  store i8 %i.nr, ptr %i.nk, align 1
  store ptr %i.ni, ptr %i.bn, align 8
  %i.ns = trunc i32 %.lcssa to i8
  %i.nt = and i8 %i.ns, 63
  %i.nu = or disjoint i8 %i.nt, -128
  store i8 %i.nu, ptr %i.nj, align 1
  br label %bb.dv

bb.dv:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit200.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit196.i", %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit.i", %bb.dt
  %.promoted.i = load ptr, ptr %i.cm, align 8     ; 2 uses
  %.promoted313.i = load i64, ptr %i.cl, align 8  ; 2 uses
  %i.nv = load i8, ptr %.promoted.i, align 1, !noundef !6 ; 4 uses
  %i.nw = icmp sgt i8 %i.nv, -1
  br i1 %i.nw, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nx = and i8 %i.nv, -32
  %i.ny = icmp eq i8 %i.nx, -64
  br i1 %i.ny, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.eb, %bb.ea, %bb.dw, %bb.dv
  %.sroa.0.0.i204.i = phi i64 [ 3, %bb.ea ], [ 1, %bb.dv ], [ 2, %bb.dw ], [ %..i203.i, %bb.eb ] ; 2 uses
  %i.nz = add i64 %.sroa.0.0.i204.i, %.promoted313.i ; 4 uses
  %i.oa = icmp ult i64 %i.nz, %.promoted313.i
  br i1 %i.oa, label %bb.dy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i", !prof !4

bb.dy:                                            ; preds = %bb.ff, %bb.fb, %bb.ex, %bb.et, %bb.eo, %bb.ek, %bb.ef, %bb.dx
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i": ; preds = %bb.dx
  store i64 %i.nz, ptr %i.cl, align 8
  %i.ob = load i64, ptr %i.cv, align 8, !noundef !6 ; 2 uses
  %i.oc = icmp eq i64 %i.ob, -1
  br i1 %i.oc, label %bb.dz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i, !prof !4

bb.dz:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.7", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.6", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.5", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.4", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.3", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.2", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.1", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.ea:                                            ; preds = %bb.dw
  %i.od = and i8 %i.nv, -16
  %i.oe = icmp eq i8 %i.od, -32
  br i1 %i.oe, label %bb.dx, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.of = and i8 %i.nv, -8
  %i.og = icmp eq i8 %i.of, -16
  %..i203.i = select i1 %i.og, i64 4, i64 0
  br label %bb.dx

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i"
  %i.oh = add nuw i64 %i.ob, 1
  store i64 %i.oh, ptr %i.cv, align 8
  %i.oi = load i64, ptr %i.dd, align 8, !noundef !6
  %i.oj = add i64 %i.oi, -1
  store i64 %i.oj, ptr %i.dd, align 8
  %i.ok = getelementptr i8, ptr %.promoted.i, i64 %.sroa.0.0.i204.i ; 3 uses
  store ptr %i.ok, ptr %i.cm, align 8
  %i.ol = load i8, ptr %i.ok, align 1, !noundef !6 ; 4 uses
  %i.om = icmp sgt i8 %i.ol, -1
  br i1 %i.om, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i
  %i.on = and i8 %i.ol, -32
  %i.oo = icmp eq i8 %i.on, -64
  br i1 %i.oo, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.op = and i8 %i.ol, -16
  %i.oq = icmp eq i8 %i.op, -32
end_hunk_0
