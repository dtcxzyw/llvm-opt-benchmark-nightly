Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/opal_datatype_unpack?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@unpack_predefined_data:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %.233004828.i, i64 2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %.232894829.i, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %.233004828.i, i64 3 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.232894829.i, i64 %i.z ; 2 uses
  %i.dv = add i64 %.232794830.i, -3               ; 3 uses
  %i.dw = icmp ugt i64 %i.dv, 2
  br i1 %i.dw, label %.lr.ph4831.i, label %.loopexit.i, !llvm.loop !82

.lr.ph4824.i:                                     ; preds = %.lr.ph4824.i.prol.loopexit, %.lr.ph4824.i
  %.332804823.i = phi i64 [ %i.ev, %.lr.ph4824.i ], [ %.332804823.i.unr, %.lr.ph4824.i.prol.loopexit ]
  %.332904822.i = phi ptr [ %i.eu, %.lr.ph4824.i ], [ %.332904822.i.unr, %.lr.ph4824.i.prol.loopexit ] ; 5 uses
  %.333014821.i = phi ptr [ %i.et, %.lr.ph4824.i ], [ %.333014821.i.unr, %.lr.ph4824.i.prol.loopexit ] ; 9 uses
  %i.dx = load i8, ptr %.333014821.i, align 1, !tbaa !50
  store i8 %i.dx, ptr %.332904822.i, align 1, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %.333014821.i, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %.332904822.i, i64 1
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %.333014821.i, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %.332904822.i, i64 2
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !50
  %i.ee = getelementptr inbounds nuw i8, ptr %.333014821.i, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !50
  %i.eg = getelementptr inbounds nuw i8, ptr %.332904822.i, i64 3
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !50
  %i.eh = getelementptr inbounds nuw i8, ptr %.333014821.i, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.332904822.i, i64 %i.z ; 5 uses
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !50
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !50
  %i.ek = getelementptr inbounds nuw i8, ptr %.333014821.i, i64 5
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %i.el, ptr %i.em, align 1, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %.333014821.i, i64 6
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %.333014821.i, i64 7
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !50
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  store i8 %i.er, ptr %i.es, align 1, !tbaa !50
  %i.et = getelementptr inbounds nuw i8, ptr %.333014821.i, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.z ; 2 uses
  %i.ev = add i64 %.332804823.i, -8               ; 3 uses
  %i.ew = icmp ugt i64 %i.ev, 3
  br i1 %i.ew, label %.lr.ph4824.i, label %.loopexit.i, !llvm.loop !83

.lr.ph4817.i:                                     ; preds = %.preheader3568.i, %.lr.ph4817.i
  %.432814816.i = phi i64 [ %i.fm, %.lr.ph4817.i ], [ %.0, %.preheader3568.i ]
  %.432914815.i = phi ptr [ %i.fl, %.lr.ph4817.i ], [ %i.l, %.preheader3568.i ] ; 6 uses
  %.433024814.i = phi ptr [ %i.fk, %.lr.ph4817.i ], [ %i.m, %.preheader3568.i ] ; 6 uses
  %i.ex = load i8, ptr %.433024814.i, align 1, !tbaa !50
  store i8 %i.ex, ptr %.432914815.i, align 1, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %.433024814.i, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !50
  %i.fa = getelementptr inbounds nuw i8, ptr %.432914815.i, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !50
  %i.fb = getelementptr inbounds nuw i8, ptr %.433024814.i, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %.432914815.i, i64 2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %.433024814.i, i64 3
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !50
  %i.fg = getelementptr inbounds nuw i8, ptr %.432914815.i, i64 3
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !50
  %i.fh = getelementptr inbounds nuw i8, ptr %.433024814.i, i64 4
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !50
  %i.fj = getelementptr inbounds nuw i8, ptr %.432914815.i, i64 4
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !50
  %i.fk = getelementptr inbounds nuw i8, ptr %.433024814.i, i64 5 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.432914815.i, i64 %i.z ; 2 uses
  %i.fm = add i64 %.432814816.i, -5               ; 3 uses
  %i.fn = icmp ugt i64 %i.fm, 4
  br i1 %i.fn, label %.lr.ph4817.i, label %.loopexit.i, !llvm.loop !84

.lr.ph4810.i:                                     ; preds = %.preheader3570.i, %.lr.ph4810.i
  %.532824809.i = phi i64 [ %i.gg, %.lr.ph4810.i ], [ %.0, %.preheader3570.i ]
  %.532924808.i = phi ptr [ %i.gf, %.lr.ph4810.i ], [ %i.l, %.preheader3570.i ] ; 7 uses
  %.533034807.i = phi ptr [ %i.ge, %.lr.ph4810.i ], [ %i.m, %.preheader3570.i ] ; 7 uses
  %i.fo = load i8, ptr %.533034807.i, align 1, !tbaa !50
  store i8 %i.fo, ptr %.532924808.i, align 1, !tbaa !50
  %i.fp = getelementptr inbounds nuw i8, ptr %.533034807.i, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !50
  %i.fr = getelementptr inbounds nuw i8, ptr %.532924808.i, i64 1
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !50
  %i.fs = getelementptr inbounds nuw i8, ptr %.533034807.i, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !50
  %i.fu = getelementptr inbounds nuw i8, ptr %.532924808.i, i64 2
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !50
  %i.fv = getelementptr inbounds nuw i8, ptr %.533034807.i, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !50
  %i.fx = getelementptr inbounds nuw i8, ptr %.532924808.i, i64 3
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !50
  %i.fy = getelementptr inbounds nuw i8, ptr %.533034807.i, i64 4
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !50
  %i.ga = getelementptr inbounds nuw i8, ptr %.532924808.i, i64 4
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %.533034807.i, i64 5
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !50
  %i.gd = getelementptr inbounds nuw i8, ptr %.532924808.i, i64 5
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %.533034807.i, i64 6 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.532924808.i, i64 %i.z ; 2 uses
  %i.gg = add i64 %.532824809.i, -6               ; 3 uses
  %i.gh = icmp ugt i64 %i.gg, 5
  br i1 %i.gh, label %.lr.ph4810.i, label %.loopexit.i, !llvm.loop !85

.lr.ph4803.i:                                     ; preds = %.preheader3572.i, %.lr.ph4803.i
  %.632834802.i = phi i64 [ %i.hd, %.lr.ph4803.i ], [ %.0, %.preheader3572.i ]
  %.632934801.i = phi ptr [ %i.hc, %.lr.ph4803.i ], [ %i.l, %.preheader3572.i ] ; 8 uses
  %.633044800.i = phi ptr [ %i.hb, %.lr.ph4803.i ], [ %i.m, %.preheader3572.i ] ; 8 uses
  %i.gi = load i8, ptr %.633044800.i, align 1, !tbaa !50
  store i8 %i.gi, ptr %.632934801.i, align 1, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %.633044800.i, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !50
  %i.gl = getelementptr inbounds nuw i8, ptr %.632934801.i, i64 1
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !50
  %i.gm = getelementptr inbounds nuw i8, ptr %.633044800.i, i64 2
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %.632934801.i, i64 2
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !50
  %i.gp = getelementptr inbounds nuw i8, ptr %.633044800.i, i64 3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !50
  %i.gr = getelementptr inbounds nuw i8, ptr %.632934801.i, i64 3
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %.633044800.i, i64 4
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !50
  %i.gu = getelementptr inbounds nuw i8, ptr %.632934801.i, i64 4
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %.633044800.i, i64 5
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !50
  %i.gx = getelementptr inbounds nuw i8, ptr %.632934801.i, i64 5
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !50
  %i.gy = getelementptr inbounds nuw i8, ptr %.633044800.i, i64 6
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !50
  %i.ha = getelementptr inbounds nuw i8, ptr %.632934801.i, i64 6
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !50
  %i.hb = getelementptr inbounds nuw i8, ptr %.633044800.i, i64 7 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.632934801.i, i64 %i.z ; 2 uses
  %i.hd = add i64 %.632834802.i, -7               ; 3 uses
  %i.he = icmp ugt i64 %i.hd, 6
  br i1 %i.he, label %.lr.ph4803.i, label %.loopexit.i, !llvm.loop !86

bb.g:                                             ; preds = %bb.f
  %i.hf = icmp eq i64 %i.t, 8
  %i.hg = icmp ugt i64 %.0, 7
  %or.cond.i = and i1 %i.hg, %i.hf
  br i1 %or.cond.i, label %.preheader3559.i, label %.loopexit.i

.preheader3559.i:                                 ; preds = %bb.g, %.preheader3559.i
  %.73305.i = phi ptr [ %i.id, %.preheader3559.i ], [ %i.m, %bb.g ] ; 9 uses
  %.73294.i = phi ptr [ %i.ie, %.preheader3559.i ], [ %i.l, %bb.g ] ; 9 uses
  %.73284.i = phi i64 [ %i.if, %.preheader3559.i ], [ %.0, %bb.g ]
  %i.hh = load i8, ptr %.73305.i, align 1, !tbaa !50
  store i8 %i.hh, ptr %.73294.i, align 1, !tbaa !50
  %i.hi = getelementptr inbounds nuw i8, ptr %.73305.i, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %.73294.i, i64 1
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %.73305.i, i64 2
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %.73294.i, i64 2
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !50
  %i.ho = getelementptr inbounds nuw i8, ptr %.73305.i, i64 3
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !50
  %i.hq = getelementptr inbounds nuw i8, ptr %.73294.i, i64 3
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !50
  %i.hr = getelementptr inbounds nuw i8, ptr %.73305.i, i64 4
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !50
  %i.ht = getelementptr inbounds nuw i8, ptr %.73294.i, i64 4
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !50
  %i.hu = getelementptr inbounds nuw i8, ptr %.73305.i, i64 5
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !50
  %i.hw = getelementptr inbounds nuw i8, ptr %.73294.i, i64 5
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !50
  %i.hx = getelementptr inbounds nuw i8, ptr %.73305.i, i64 6
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !50
  %i.hz = getelementptr inbounds nuw i8, ptr %.73294.i, i64 6
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !50
  %i.ia = getelementptr inbounds nuw i8, ptr %.73305.i, i64 7
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !50
  %i.ic = getelementptr inbounds nuw i8, ptr %.73294.i, i64 7
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !50
  %i.id = getelementptr inbounds nuw i8, ptr %.73305.i, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.73294.i, i64 %i.z ; 2 uses
  %i.if = add i64 %.73284.i, -8                   ; 3 uses
  %.old1.i = icmp ugt i64 %i.if, 7
  br i1 %.old1.i, label %.preheader3559.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph4803.i, %.lr.ph4810.i, %.lr.ph4817.i, %.lr.ph4824.i.prol.loopexit, %.lr.ph4824.i, %.lr.ph4831.i, %.lr.ph4838.i.prol.loopexit, %.lr.ph4838.i, %.preheader3559.i, %bb.g, %.preheader3562.i, %.preheader3564.i, %.preheader3566.i, %.preheader3568.i, %.preheader3570.i, %.preheader3572.i
  %.83306.i = phi ptr [ %i.m, %bb.g ], [ %i.et, %.lr.ph4824.i ], [ %i.fk, %.lr.ph4817.i ], [ %i.ge, %.lr.ph4810.i ], [ %i.id, %.preheader3559.i ], [ %i.di, %.lr.ph4838.i ], [ %i.dt, %.lr.ph4831.i ], [ %i.m, %.preheader3562.i ], [ %i.m, %.preheader3564.i ], [ %i.m, %.preheader3566.i ], [ %i.m, %.preheader3568.i ], [ %i.m, %.preheader3570.i ], [ %i.m, %.preheader3572.i ], [ %.lcssa3094.unr, %.lr.ph4838.i.prol.loopexit ], [ %.lcssa3102.unr, %.lr.ph4824.i.prol.loopexit ], [ %i.hb, %.lr.ph4803.i ] ; 7 uses
  %.83295.i = phi ptr [ %i.l, %bb.g ], [ %i.eu, %.lr.ph4824.i ], [ %i.fl, %.lr.ph4817.i ], [ %i.gf, %.lr.ph4810.i ], [ %i.ie, %.preheader3559.i ], [ %i.dj, %.lr.ph4838.i ], [ %i.du, %.lr.ph4831.i ], [ %i.l, %.preheader3562.i ], [ %i.l, %.preheader3564.i ], [ %i.l, %.preheader3566.i ], [ %i.l, %.preheader3568.i ], [ %i.l, %.preheader3570.i ], [ %i.l, %.preheader3572.i ], [ %.lcssa3093.unr, %.lr.ph4838.i.prol.loopexit ], [ %.lcssa3101.unr, %.lr.ph4824.i.prol.loopexit ], [ %i.hc, %.lr.ph4803.i ] ; 7 uses
  %.83285.i = phi i64 [ %.0, %bb.g ], [ %i.ev, %.lr.ph4824.i ], [ %i.fm, %.lr.ph4817.i ], [ %i.gg, %.lr.ph4810.i ], [ %i.if, %.preheader3559.i ], [ %i.dk, %.lr.ph4838.i ], [ %i.dv, %.lr.ph4831.i ], [ %.0, %.preheader3562.i ], [ %.0, %.preheader3564.i ], [ %.0, %.preheader3566.i ], [ %.0, %.preheader3568.i ], [ %.0, %.preheader3570.i ], [ %.0, %.preheader3572.i ], [ %.lcssa3092.unr, %.lr.ph4838.i.prol.loopexit ], [ %.lcssa3100.unr, %.lr.ph4824.i.prol.loopexit ], [ %i.hd, %.lr.ph4803.i ] ; 11 uses
  %.not3424.i = icmp eq i64 %.83285.i, 0
  br i1 %.not3424.i, label %opal_datatype_unpack_predefined_element.exit.thread, label %iter.check3033

iter.check3033:                                   ; preds = %.loopexit.i
  %.83306.i3012 = ptrtoaddr ptr %.83295.i to i64
  %.83295.i3011 = ptrtoaddr ptr %.83306.i to i64
  %min.iters.check3015 = icmp ult i64 %.83285.i, 4
  %i.ig = sub i64 %.83295.i3011, %.83306.i3012
  %diff.check3013 = icmp ugt i64 %i.ig, -32
  %or.cond3050 = select i1 %min.iters.check3015, i1 true, i1 %diff.check3013
  br i1 %or.cond3050, label %.preheader.i.preheader, label %vector.main.loop.iter.check3016

vector.main.loop.iter.check3016:                  ; preds = %iter.check3033
  %min.iters.check3017 = icmp ult i64 %.83285.i, 32
  br i1 %min.iters.check3017, label %vec.epilog.ph3037, label %vector.ph3018

vector.ph3018:                                    ; preds = %vector.main.loop.iter.check3016
  %i.ih = and i64 %.83285.i, 28
  %n.vec3019 = and i64 %.83285.i, -32             ; 5 uses
  %i.ii = getelementptr i8, ptr %.83306.i, i64 %n.vec3019 ; 2 uses
  %i.ij = getelementptr i8, ptr %.83295.i, i64 %n.vec3019 ; 2 uses
  %i.ik = and i64 %.83285.i, 31
  br label %vector.body3020

vector.body3020:                                  ; preds = %vector.ph3018, %vector.body3020
  %index3021 = phi i64 [ 0, %vector.ph3018 ], [ %index.next3026, %vector.body3020 ] ; 3 uses
  %next.gep3022 = getelementptr i8, ptr %.83306.i, i64 %index3021 ; 2 uses
  %next.gep3023 = getelementptr i8, ptr %.83295.i, i64 %index3021 ; 2 uses
  %i.il = getelementptr i8, ptr %next.gep3022, i64 16
  %wide.load3024 = load <16 x i8>, ptr %next.gep3022, align 1, !tbaa !50
  %wide.load3025 = load <16 x i8>, ptr %i.il, align 1, !tbaa !50
  %i.im = getelementptr i8, ptr %next.gep3023, i64 16
  store <16 x i8> %wide.load3024, ptr %next.gep3023, align 1, !tbaa !50
  store <16 x i8> %wide.load3025, ptr %i.im, align 1, !tbaa !50
  %index.next3026 = add nuw i64 %index3021, 32    ; 2 uses
  %i.in = icmp eq i64 %index.next3026, %n.vec3019
  br i1 %i.in, label %middle.block3027, label %vector.body3020, !llvm.loop !87

middle.block3027:                                 ; preds = %vector.body3020
  %cmp.n3028 = icmp eq i64 %.83285.i, %n.vec3019
  br i1 %cmp.n3028, label %opal_datatype_unpack_predefined_element.exit.thread, label %vec.epilog.iter.check3035

vec.epilog.iter.check3035:                        ; preds = %middle.block3027
  %min.epilog.iters.check3036 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check3036, label %.preheader.i.preheader, label %vec.epilog.ph3037, !prof !306

vec.epilog.ph3037:                                ; preds = %vector.main.loop.iter.check3016, %vec.epilog.iter.check3035
  %vec.epilog.resume.val3029 = phi i64 [ %n.vec3019, %vec.epilog.iter.check3035 ], [ 0, %vector.main.loop.iter.check3016 ]
  %n.vec3038 = and i64 %.83285.i, -4              ; 4 uses
  %i.io = getelementptr i8, ptr %.83306.i, i64 %n.vec3038 ; 2 uses
  %i.ip = getelementptr i8, ptr %.83295.i, i64 %n.vec3038 ; 2 uses
  %i.iq = and i64 %.83285.i, 3
  br label %vec.epilog.vector.body3039

vec.epilog.vector.body3039:                       ; preds = %vec.epilog.vector.body3039, %vec.epilog.ph3037
  %index3040 = phi i64 [ %vec.epilog.resume.val3029, %vec.epilog.ph3037 ], [ %index.next3044, %vec.epilog.vector.body3039 ] ; 3 uses
  %next.gep3041 = getelementptr i8, ptr %.83306.i, i64 %index3040
  %next.gep3042 = getelementptr i8, ptr %.83295.i, i64 %index3040
  %wide.load3043 = load <4 x i8>, ptr %next.gep3041, align 1, !tbaa !50
  store <4 x i8> %wide.load3043, ptr %next.gep3042, align 1, !tbaa !50
  %index.next3044 = add nuw i64 %index3040, 4     ; 2 uses
  %i.ir = icmp eq i64 %index.next3044, %n.vec3038
  br i1 %i.ir, label %vec.epilog.middle.block3045, label %vec.epilog.vector.body3039, !llvm.loop !88

vec.epilog.middle.block3045:                      ; preds = %vec.epilog.vector.body3039
  %cmp.n3046 = icmp eq i64 %.83285.i, %n.vec3038
  br i1 %cmp.n3046, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check3033, %vec.epilog.iter.check3035, %vec.epilog.middle.block3045
  %.93307.i.ph = phi ptr [ %.83306.i, %iter.check3033 ], [ %i.ii, %vec.epilog.iter.check3035 ], [ %i.io, %vec.epilog.middle.block3045 ] ; 2 uses
  %.93296.i.ph = phi ptr [ %.83295.i, %iter.check3033 ], [ %i.ij, %vec.epilog.iter.check3035 ], [ %i.ip, %vec.epilog.middle.block3045 ] ; 2 uses
  %.93286.i.ph = phi i64 [ %.83285.i, %iter.check3033 ], [ %i.ik, %vec.epilog.iter.check3035 ], [ %i.iq, %vec.epilog.middle.block3045 ] ; 4 uses
  %i.is = add i64 %.93286.i.ph, -1
  %xtraiter3886 = and i64 %.93286.i.ph, 7         ; 2 uses
  %lcmp.mod3887.not = icmp eq i64 %xtraiter3886, 0
  br i1 %lcmp.mod3887.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.93307.i.prol = phi ptr [ %i.it, %.preheader.i.prol ], [ %.93307.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.93296.i.prol = phi ptr [ %i.iv, %.preheader.i.prol ], [ %.93296.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.93286.i.prol = phi i64 [ %i.iw, %.preheader.i.prol ], [ %.93286.i.ph, %.preheader.i.preheader ]
  %prol.iter3888 = phi i64 [ %prol.iter3888.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.it = getelementptr inbounds nuw i8, ptr %.93307.i.prol, i64 1 ; 3 uses
  %i.iu = load i8, ptr %.93307.i.prol, align 1, !tbaa !50
  %i.iv = getelementptr inbounds nuw i8, ptr %.93296.i.prol, i64 1 ; 3 uses
  store i8 %i.iu, ptr %.93296.i.prol, align 1, !tbaa !50
  %i.iw = add i64 %.93286.i.prol, -1              ; 2 uses
  %prol.iter3888.next = add i64 %prol.iter3888, 1 ; 2 uses
  %prol.iter3888.cmp.not = icmp eq i64 %prol.iter3888.next, %xtraiter3886
  br i1 %prol.iter3888.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !89

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa3084.unr = phi ptr [ poison, %.preheader.i.preheader ], [ %i.it, %.preheader.i.prol ]
  %.lcssa3083.unr = phi ptr [ poison, %.preheader.i.preheader ], [ %i.iv, %.preheader.i.prol ]
  %.93307.i.unr = phi ptr [ %.93307.i.ph, %.preheader.i.preheader ], [ %i.it, %.preheader.i.prol ]
  %.93296.i.unr = phi ptr [ %.93296.i.ph, %.preheader.i.preheader ], [ %i.iv, %.preheader.i.prol ]
  %.93286.i.unr = phi i64 [ %.93286.i.ph, %.preheader.i.preheader ], [ %i.iw, %.preheader.i.prol ]
  %i.ix = icmp ult i64 %i.is, 7
  br i1 %i.ix, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.93307.i = phi ptr [ %i.jt, %.preheader.i ], [ %.93307.i.unr, %.preheader.i.prol.loopexit ] ; 9 uses
  %.93296.i = phi ptr [ %i.jv, %.preheader.i ], [ %.93296.i.unr, %.preheader.i.prol.loopexit ] ; 9 uses
  %.93286.i = phi i64 [ %i.jw, %.preheader.i ], [ %.93286.i.unr, %.preheader.i.prol.loopexit ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.93307.i, i64 1
  %i.iz = load i8, ptr %.93307.i, align 1, !tbaa !50
  %i.ja = getelementptr inbounds nuw i8, ptr %.93296.i, i64 1
  store i8 %i.iz, ptr %.93296.i, align 1, !tbaa !50
  %i.jb = getelementptr inbounds nuw i8, ptr %.93307.i, i64 2
  %i.jc = load i8, ptr %i.iy, align 1, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %.93296.i, i64 2
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !50
  %i.je = getelementptr inbounds nuw i8, ptr %.93307.i, i64 3
  %i.jf = load i8, ptr %i.jb, align 1, !tbaa !50
  %i.jg = getelementptr inbounds nuw i8, ptr %.93296.i, i64 3
  store i8 %i.jf, ptr %i.jd, align 1, !tbaa !50
  %i.jh = getelementptr inbounds nuw i8, ptr %.93307.i, i64 4
  %i.ji = load i8, ptr %i.je, align 1, !tbaa !50
  %i.jj = getelementptr inbounds nuw i8, ptr %.93296.i, i64 4
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !50
  %i.jk = getelementptr inbounds nuw i8, ptr %.93307.i, i64 5
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %.93296.i, i64 5
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !50
  %i.jn = getelementptr inbounds nuw i8, ptr %.93307.i, i64 6
  %i.jo = load i8, ptr %i.jk, align 1, !tbaa !50
  %i.jp = getelementptr inbounds nuw i8, ptr %.93296.i, i64 6
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !50
  %i.jq = getelementptr inbounds nuw i8, ptr %.93307.i, i64 7
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !50
  %i.js = getelementptr inbounds nuw i8, ptr %.93296.i, i64 7
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !50
  %i.jt = getelementptr inbounds nuw i8, ptr %.93307.i, i64 8 ; 2 uses
  %i.ju = load i8, ptr %i.jq, align 1, !tbaa !50
  %i.jv = getelementptr inbounds nuw i8, ptr %.93296.i, i64 8 ; 2 uses
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !50
  %i.jw = add i64 %.93286.i, -8                   ; 2 uses
  %.old3.not.i.7 = icmp eq i64 %i.jw, 0
  br i1 %.old3.not.i.7, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader.i, !llvm.loop !90

bb.h:                                             ; preds = %bb.e
  %i.jx = ptrtoint ptr %i.m to i64
  %i.jy = and i64 %i.jx, 1
  %.not3418.i = icmp eq i64 %i.jy, 0
  %i.jz = ptrtoint ptr %i.l to i64
  %i.ka = and i64 %i.jz, 1
  %.not3419.i = icmp eq i64 %i.ka, 0
  %or.cond3426.i = select i1 %.not3418.i, i1 %.not3419.i, i1 false
  br i1 %or.cond3426.i, label %bb.i, label %opal_datatype_unpack_predefined_element.exit

bb.i:                                             ; preds = %bb.h
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !56 ; 2 uses
  %.not3420.i = trunc i64 %i.kc to i1
  %i.kd = icmp ugt i64 %.0, %i.t
  %or.cond3427.i = and i1 %i.kd, %.not3420.i
  br i1 %or.cond3427.i, label %opal_datatype_unpack_predefined_element.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ke = lshr i64 %i.kc, 1                       ; 22 uses
  switch i64 %i.t, label %bb.k [
    i64 1, label %.preheader3578.i
    i64 2, label %.preheader3580.i
    i64 3, label %.preheader3582.i
    i64 4, label %.preheader3584.i
    i64 5, label %.preheader3586.i
    i64 6, label %.preheader3588.i
    i64 7, label %.preheader3590.i
  ]

.preheader3590.i:                                 ; preds = %bb.j
  %i.kf = icmp ugt i64 %.0, 6
  br i1 %i.kf, label %.lr.ph4754.i, label %.loopexit3577.i

.preheader3588.i:                                 ; preds = %bb.j
  %i.kg = icmp ugt i64 %.0, 5
  br i1 %i.kg, label %.lr.ph4761.i, label %.loopexit3577.i

.preheader3586.i:                                 ; preds = %bb.j
  %i.kh = icmp ugt i64 %.0, 4
  br i1 %i.kh, label %.lr.ph4768.i, label %.loopexit3577.i

.preheader3584.i:                                 ; preds = %bb.j
  %i.ki = icmp ugt i64 %.0, 3
  br i1 %i.ki, label %.lr.ph4775.i.preheader, label %.loopexit3577.i

.lr.ph4775.i.preheader:                           ; preds = %.preheader3584.i
  %i.kj = add i64 %.0, -4                         ; 2 uses
  %i.kk = and i64 %i.kj, 4
  %lcmp.mod3866.not.not = icmp eq i64 %i.kk, 0
  br i1 %lcmp.mod3866.not.not, label %.lr.ph4775.i.prol, label %.lr.ph4775.i.prol.loopexit

.lr.ph4775.i.prol:                                ; preds = %.lr.ph4775.i.preheader
  %i.kl = load i16, ptr %i.m, align 2, !tbaa !58
  store i16 %i.kl, ptr %i.l, align 2, !tbaa !58
  %i.km = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !58
  %i.ko = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !58
  %i.kp = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !58
  %i.kr = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !58
  %i.ks = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !58
  %i.ku = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  store i16 %i.kt, ptr %i.ku, align 2, !tbaa !58
  %i.kv = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@unpack_predefined_data:bb.a
  %i.nv = getelementptr inbounds nuw i8, ptr %.232684779.i, i64 4
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !58
  %i.nx = getelementptr inbounds nuw i8, ptr %.232574780.i, i64 4
  store i16 %i.nw, ptr %i.nx, align 2, !tbaa !58
  %i.ny = getelementptr inbounds nuw i8, ptr %.232684779.i, i64 6 ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.232574780.i, i64 %i.ke ; 2 uses
  %i.oa = add i64 %.232474781.i, -3               ; 3 uses
  %i.ob = icmp ugt i64 %i.oa, 2
  br i1 %i.ob, label %.lr.ph4782.i, label %.loopexit3577.i, !llvm.loop !95

.lr.ph4775.i:                                     ; preds = %.lr.ph4775.i.prol.loopexit, %.lr.ph4775.i
  %.332484774.i = phi i64 [ %i.pa, %.lr.ph4775.i ], [ %.332484774.i.unr, %.lr.ph4775.i.prol.loopexit ]
  %.332584773.i = phi ptr [ %i.oz, %.lr.ph4775.i ], [ %.332584773.i.unr, %.lr.ph4775.i.prol.loopexit ] ; 5 uses
  %.332694772.i = phi ptr [ %i.oy, %.lr.ph4775.i ], [ %.332694772.i.unr, %.lr.ph4775.i.prol.loopexit ] ; 9 uses
  %i.oc = load i16, ptr %.332694772.i, align 2, !tbaa !58
  store i16 %i.oc, ptr %.332584773.i, align 2, !tbaa !58
  %i.od = getelementptr inbounds nuw i8, ptr %.332694772.i, i64 2
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !58
  %i.of = getelementptr inbounds nuw i8, ptr %.332584773.i, i64 2
  store i16 %i.oe, ptr %i.of, align 2, !tbaa !58
  %i.og = getelementptr inbounds nuw i8, ptr %.332694772.i, i64 4
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !58
  %i.oi = getelementptr inbounds nuw i8, ptr %.332584773.i, i64 4
  store i16 %i.oh, ptr %i.oi, align 2, !tbaa !58
  %i.oj = getelementptr inbounds nuw i8, ptr %.332694772.i, i64 6
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !58
  %i.ol = getelementptr inbounds nuw i8, ptr %.332584773.i, i64 6
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !58
  %i.om = getelementptr inbounds nuw i8, ptr %.332694772.i, i64 8
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %.332584773.i, i64 %i.ke ; 5 uses
  %i.oo = load i16, ptr %i.om, align 2, !tbaa !58
  store i16 %i.oo, ptr %i.on, align 2, !tbaa !58
  %i.op = getelementptr inbounds nuw i8, ptr %.332694772.i, i64 10
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !58
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  store i16 %i.oq, ptr %i.or, align 2, !tbaa !58
  %i.os = getelementptr inbounds nuw i8, ptr %.332694772.i, i64 12
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !58
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  store i16 %i.ot, ptr %i.ou, align 2, !tbaa !58
  %i.ov = getelementptr inbounds nuw i8, ptr %.332694772.i, i64 14
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !58
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 6
  store i16 %i.ow, ptr %i.ox, align 2, !tbaa !58
  %i.oy = getelementptr inbounds nuw i8, ptr %.332694772.i, i64 16 ; 2 uses
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.ke ; 2 uses
  %i.pa = add i64 %.332484774.i, -8               ; 3 uses
  %i.pb = icmp ugt i64 %i.pa, 3
  br i1 %i.pb, label %.lr.ph4775.i, label %.loopexit3577.i, !llvm.loop !96

.lr.ph4768.i:                                     ; preds = %.preheader3586.i, %.lr.ph4768.i
  %.432494767.i = phi i64 [ %i.pr, %.lr.ph4768.i ], [ %.0, %.preheader3586.i ]
  %.432594766.i = phi ptr [ %i.pq, %.lr.ph4768.i ], [ %i.l, %.preheader3586.i ] ; 6 uses
  %.432704765.i = phi ptr [ %i.pp, %.lr.ph4768.i ], [ %i.m, %.preheader3586.i ] ; 6 uses
  %i.pc = load i16, ptr %.432704765.i, align 2, !tbaa !58
  store i16 %i.pc, ptr %.432594766.i, align 2, !tbaa !58
  %i.pd = getelementptr inbounds nuw i8, ptr %.432704765.i, i64 2
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !58
  %i.pf = getelementptr inbounds nuw i8, ptr %.432594766.i, i64 2
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !58
  %i.pg = getelementptr inbounds nuw i8, ptr %.432704765.i, i64 4
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !58
  %i.pi = getelementptr inbounds nuw i8, ptr %.432594766.i, i64 4
  store i16 %i.ph, ptr %i.pi, align 2, !tbaa !58
  %i.pj = getelementptr inbounds nuw i8, ptr %.432704765.i, i64 6
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !58
  %i.pl = getelementptr inbounds nuw i8, ptr %.432594766.i, i64 6
  store i16 %i.pk, ptr %i.pl, align 2, !tbaa !58
  %i.pm = getelementptr inbounds nuw i8, ptr %.432704765.i, i64 8
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !58
  %i.po = getelementptr inbounds nuw i8, ptr %.432594766.i, i64 8
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !58
  %i.pp = getelementptr inbounds nuw i8, ptr %.432704765.i, i64 10 ; 2 uses
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %.432594766.i, i64 %i.ke ; 2 uses
  %i.pr = add i64 %.432494767.i, -5               ; 3 uses
  %i.ps = icmp ugt i64 %i.pr, 4
  br i1 %i.ps, label %.lr.ph4768.i, label %.loopexit3577.i, !llvm.loop !97

.lr.ph4761.i:                                     ; preds = %.preheader3588.i, %.lr.ph4761.i
  %.532504760.i = phi i64 [ %i.ql, %.lr.ph4761.i ], [ %.0, %.preheader3588.i ]
  %.532604759.i = phi ptr [ %i.qk, %.lr.ph4761.i ], [ %i.l, %.preheader3588.i ] ; 7 uses
  %.532714758.i = phi ptr [ %i.qj, %.lr.ph4761.i ], [ %i.m, %.preheader3588.i ] ; 7 uses
  %i.pt = load i16, ptr %.532714758.i, align 2, !tbaa !58
  store i16 %i.pt, ptr %.532604759.i, align 2, !tbaa !58
  %i.pu = getelementptr inbounds nuw i8, ptr %.532714758.i, i64 2
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !58
  %i.pw = getelementptr inbounds nuw i8, ptr %.532604759.i, i64 2
  store i16 %i.pv, ptr %i.pw, align 2, !tbaa !58
  %i.px = getelementptr inbounds nuw i8, ptr %.532714758.i, i64 4
  %i.py = load i16, ptr %i.px, align 2, !tbaa !58
  %i.pz = getelementptr inbounds nuw i8, ptr %.532604759.i, i64 4
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !58
  %i.qa = getelementptr inbounds nuw i8, ptr %.532714758.i, i64 6
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !58
  %i.qc = getelementptr inbounds nuw i8, ptr %.532604759.i, i64 6
  store i16 %i.qb, ptr %i.qc, align 2, !tbaa !58
  %i.qd = getelementptr inbounds nuw i8, ptr %.532714758.i, i64 8
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !58
  %i.qf = getelementptr inbounds nuw i8, ptr %.532604759.i, i64 8
  store i16 %i.qe, ptr %i.qf, align 2, !tbaa !58
  %i.qg = getelementptr inbounds nuw i8, ptr %.532714758.i, i64 10
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !58
  %i.qi = getelementptr inbounds nuw i8, ptr %.532604759.i, i64 10
  store i16 %i.qh, ptr %i.qi, align 2, !tbaa !58
  %i.qj = getelementptr inbounds nuw i8, ptr %.532714758.i, i64 12 ; 2 uses
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.532604759.i, i64 %i.ke ; 2 uses
  %i.ql = add i64 %.532504760.i, -6               ; 3 uses
  %i.qm = icmp ugt i64 %i.ql, 5
  br i1 %i.qm, label %.lr.ph4761.i, label %.loopexit3577.i, !llvm.loop !98

.lr.ph4754.i:                                     ; preds = %.preheader3590.i, %.lr.ph4754.i
  %.632514753.i = phi i64 [ %i.ri, %.lr.ph4754.i ], [ %.0, %.preheader3590.i ]
  %.632614752.i = phi ptr [ %i.rh, %.lr.ph4754.i ], [ %i.l, %.preheader3590.i ] ; 8 uses
  %.632724751.i = phi ptr [ %i.rg, %.lr.ph4754.i ], [ %i.m, %.preheader3590.i ] ; 8 uses
  %i.qn = load i16, ptr %.632724751.i, align 2, !tbaa !58
  store i16 %i.qn, ptr %.632614752.i, align 2, !tbaa !58
  %i.qo = getelementptr inbounds nuw i8, ptr %.632724751.i, i64 2
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !58
  %i.qq = getelementptr inbounds nuw i8, ptr %.632614752.i, i64 2
  store i16 %i.qp, ptr %i.qq, align 2, !tbaa !58
  %i.qr = getelementptr inbounds nuw i8, ptr %.632724751.i, i64 4
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !58
  %i.qt = getelementptr inbounds nuw i8, ptr %.632614752.i, i64 4
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !58
  %i.qu = getelementptr inbounds nuw i8, ptr %.632724751.i, i64 6
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !58
  %i.qw = getelementptr inbounds nuw i8, ptr %.632614752.i, i64 6
  store i16 %i.qv, ptr %i.qw, align 2, !tbaa !58
  %i.qx = getelementptr inbounds nuw i8, ptr %.632724751.i, i64 8
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !58
  %i.qz = getelementptr inbounds nuw i8, ptr %.632614752.i, i64 8
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !58
  %i.ra = getelementptr inbounds nuw i8, ptr %.632724751.i, i64 10
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !58
  %i.rc = getelementptr inbounds nuw i8, ptr %.632614752.i, i64 10
  store i16 %i.rb, ptr %i.rc, align 2, !tbaa !58
  %i.rd = getelementptr inbounds nuw i8, ptr %.632724751.i, i64 12
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !58
  %i.rf = getelementptr inbounds nuw i8, ptr %.632614752.i, i64 12
  store i16 %i.re, ptr %i.rf, align 2, !tbaa !58
  %i.rg = getelementptr inbounds nuw i8, ptr %.632724751.i, i64 14 ; 2 uses
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %.632614752.i, i64 %i.ke ; 2 uses
  %i.ri = add i64 %.632514753.i, -7               ; 3 uses
  %i.rj = icmp ugt i64 %i.ri, 6
  br i1 %i.rj, label %.lr.ph4754.i, label %.loopexit3577.i, !llvm.loop !99

bb.k:                                             ; preds = %bb.j
  %i.rk = icmp eq i64 %i.t, 8
  %i.rl = icmp ugt i64 %.0, 7
  %or.cond7.i = and i1 %i.rl, %i.rk
  br i1 %or.cond7.i, label %.preheader3576.i, label %.loopexit3577.i

.preheader3576.i:                                 ; preds = %bb.k, %.preheader3576.i
  %.73273.i = phi ptr [ %i.si, %.preheader3576.i ], [ %i.m, %bb.k ] ; 9 uses
  %.73262.i = phi ptr [ %i.sj, %.preheader3576.i ], [ %i.l, %bb.k ] ; 9 uses
  %.73252.i = phi i64 [ %i.sk, %.preheader3576.i ], [ %.0, %bb.k ]
  %i.rm = load i16, ptr %.73273.i, align 2, !tbaa !58
  store i16 %i.rm, ptr %.73262.i, align 2, !tbaa !58
  %i.rn = getelementptr inbounds nuw i8, ptr %.73273.i, i64 2
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !58
  %i.rp = getelementptr inbounds nuw i8, ptr %.73262.i, i64 2
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !58
  %i.rq = getelementptr inbounds nuw i8, ptr %.73273.i, i64 4
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !58
  %i.rs = getelementptr inbounds nuw i8, ptr %.73262.i, i64 4
  store i16 %i.rr, ptr %i.rs, align 2, !tbaa !58
  %i.rt = getelementptr inbounds nuw i8, ptr %.73273.i, i64 6
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !58
  %i.rv = getelementptr inbounds nuw i8, ptr %.73262.i, i64 6
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !58
  %i.rw = getelementptr inbounds nuw i8, ptr %.73273.i, i64 8
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !58
  %i.ry = getelementptr inbounds nuw i8, ptr %.73262.i, i64 8
  store i16 %i.rx, ptr %i.ry, align 2, !tbaa !58
  %i.rz = getelementptr inbounds nuw i8, ptr %.73273.i, i64 10
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !58
  %i.sb = getelementptr inbounds nuw i8, ptr %.73262.i, i64 10
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !58
  %i.sc = getelementptr inbounds nuw i8, ptr %.73273.i, i64 12
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !58
  %i.se = getelementptr inbounds nuw i8, ptr %.73262.i, i64 12
  store i16 %i.sd, ptr %i.se, align 2, !tbaa !58
  %i.sf = getelementptr inbounds nuw i8, ptr %.73273.i, i64 14
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !58
  %i.sh = getelementptr inbounds nuw i8, ptr %.73262.i, i64 14
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !58
  %i.si = getelementptr inbounds nuw i8, ptr %.73273.i, i64 16 ; 2 uses
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %.73262.i, i64 %i.ke ; 2 uses
  %i.sk = add i64 %.73252.i, -8                   ; 3 uses
  %.old6.i = icmp ugt i64 %i.sk, 7
  br i1 %.old6.i, label %.preheader3576.i, label %.loopexit3577.i

.loopexit3577.i:                                  ; preds = %.lr.ph4754.i, %.lr.ph4761.i, %.lr.ph4768.i, %.lr.ph4775.i.prol.loopexit, %.lr.ph4775.i, %.lr.ph4782.i, %.lr.ph4789.i.prol.loopexit, %.lr.ph4789.i, %.preheader3576.i, %bb.k, %.preheader3580.i, %.preheader3582.i, %.preheader3584.i, %.preheader3586.i, %.preheader3588.i, %.preheader3590.i
  %.83274.i = phi ptr [ %i.m, %bb.k ], [ %i.oy, %.lr.ph4775.i ], [ %i.pp, %.lr.ph4768.i ], [ %i.qj, %.lr.ph4761.i ], [ %i.si, %.preheader3576.i ], [ %i.nn, %.lr.ph4789.i ], [ %i.ny, %.lr.ph4782.i ], [ %i.m, %.preheader3580.i ], [ %i.m, %.preheader3582.i ], [ %i.m, %.preheader3584.i ], [ %i.m, %.preheader3586.i ], [ %i.m, %.preheader3588.i ], [ %i.m, %.preheader3590.i ], [ %.lcssa3127.unr, %.lr.ph4789.i.prol.loopexit ], [ %.lcssa3135.unr, %.lr.ph4775.i.prol.loopexit ], [ %i.rg, %.lr.ph4754.i ] ; 7 uses
  %.83263.i = phi ptr [ %i.l, %bb.k ], [ %i.oz, %.lr.ph4775.i ], [ %i.pq, %.lr.ph4768.i ], [ %i.qk, %.lr.ph4761.i ], [ %i.sj, %.preheader3576.i ], [ %i.no, %.lr.ph4789.i ], [ %i.nz, %.lr.ph4782.i ], [ %i.l, %.preheader3580.i ], [ %i.l, %.preheader3582.i ], [ %i.l, %.preheader3584.i ], [ %i.l, %.preheader3586.i ], [ %i.l, %.preheader3588.i ], [ %i.l, %.preheader3590.i ], [ %.lcssa3126.unr, %.lr.ph4789.i.prol.loopexit ], [ %.lcssa3134.unr, %.lr.ph4775.i.prol.loopexit ], [ %i.rh, %.lr.ph4754.i ] ; 7 uses
  %.83253.i = phi i64 [ %.0, %bb.k ], [ %i.pa, %.lr.ph4775.i ], [ %i.pr, %.lr.ph4768.i ], [ %i.ql, %.lr.ph4761.i ], [ %i.sk, %.preheader3576.i ], [ %i.np, %.lr.ph4789.i ], [ %i.oa, %.lr.ph4782.i ], [ %.0, %.preheader3580.i ], [ %.0, %.preheader3582.i ], [ %.0, %.preheader3584.i ], [ %.0, %.preheader3586.i ], [ %.0, %.preheader3588.i ], [ %.0, %.preheader3590.i ], [ %.lcssa3125.unr, %.lr.ph4789.i.prol.loopexit ], [ %.lcssa3133.unr, %.lr.ph4775.i.prol.loopexit ], [ %i.ri, %.lr.ph4754.i ] ; 11 uses
  %.not3422.i = icmp eq i64 %.83253.i, 0
  br i1 %.not3422.i, label %opal_datatype_unpack_predefined_element.exit.thread, label %iter.check2993

iter.check2993:                                   ; preds = %.loopexit3577.i
  %.83274.i2972 = ptrtoaddr ptr %.83263.i to i64
  %.83263.i2971 = ptrtoaddr ptr %.83274.i to i64
  %min.iters.check2975 = icmp ult i64 %.83253.i, 4
  %i.sl = sub i64 %.83263.i2971, %.83274.i2972
  %diff.check2973 = icmp ugt i64 %i.sl, -32
  %or.cond3051 = select i1 %min.iters.check2975, i1 true, i1 %diff.check2973
  br i1 %or.cond3051, label %.preheader3574.i.preheader, label %vector.main.loop.iter.check2976

vector.main.loop.iter.check2976:                  ; preds = %iter.check2993
  %min.iters.check2977 = icmp ult i64 %.83253.i, 16
  br i1 %min.iters.check2977, label %vec.epilog.ph2997, label %vector.ph2978

vector.ph2978:                                    ; preds = %vector.main.loop.iter.check2976
  %i.sm = and i64 %.83253.i, 12
  %n.vec2979 = and i64 %.83253.i, -16             ; 4 uses
  %i.sn = shl i64 %n.vec2979, 1                   ; 2 uses
  %i.so = getelementptr i8, ptr %.83274.i, i64 %i.sn ; 2 uses
  %i.sp = getelementptr i8, ptr %.83263.i, i64 %i.sn ; 2 uses
  %i.sq = and i64 %.83253.i, 15
  br label %vector.body2980

vector.body2980:                                  ; preds = %vector.ph2978, %vector.body2980
  %index2981 = phi i64 [ 0, %vector.ph2978 ], [ %index.next2986, %vector.body2980 ] ; 2 uses
  %i.sr = shl i64 %index2981, 1                   ; 2 uses
  %next.gep2982 = getelementptr i8, ptr %.83274.i, i64 %i.sr ; 2 uses
  %next.gep2983.a = getelementptr i8, ptr %.83263.i, i64 %i.sr ; 2 uses
  %i.ss = getelementptr i8, ptr %next.gep2982, i64 16
  %wide.load2984 = load <8 x i16>, ptr %next.gep2982, align 2, !tbaa !58
  %wide.load2985.a = load <8 x i16>, ptr %i.ss, align 2, !tbaa !58
  %i.st = getelementptr i8, ptr %next.gep2983.a, i64 16
  store <8 x i16> %wide.load2984, ptr %next.gep2983.a, align 2, !tbaa !58
  store <8 x i16> %wide.load2985.a, ptr %i.st, align 2, !tbaa !58
  %index.next2986 = add nuw i64 %index2981, 16    ; 2 uses
  %i.su = icmp eq i64 %index.next2986, %n.vec2979
  br i1 %i.su, label %middle.block2987, label %vector.body2980, !llvm.loop !100

middle.block2987:                                 ; preds = %vector.body2980
  %cmp.n2988 = icmp eq i64 %.83253.i, %n.vec2979
  br i1 %cmp.n2988, label %opal_datatype_unpack_predefined_element.exit.thread, label %vec.epilog.iter.check2995

vec.epilog.iter.check2995:                        ; preds = %middle.block2987
  %min.epilog.iters.check2996 = icmp eq i64 %i.sm, 0
  br i1 %min.epilog.iters.check2996, label %.preheader3574.i.preheader, label %vec.epilog.ph2997, !prof !307

vec.epilog.ph2997:                                ; preds = %vector.main.loop.iter.check2976, %vec.epilog.iter.check2995
  %vec.epilog.resume.val2989 = phi i64 [ %n.vec2979, %vec.epilog.iter.check2995 ], [ 0, %vector.main.loop.iter.check2976 ]
  %n.vec2998 = and i64 %.83253.i, -4              ; 3 uses
  %i.sv = shl i64 %n.vec2998, 1                   ; 2 uses
  %i.sw = getelementptr i8, ptr %.83274.i, i64 %i.sv ; 2 uses
  %i.sx = getelementptr i8, ptr %.83263.i, i64 %i.sv ; 2 uses
  %i.sy = and i64 %.83253.i, 3
  br label %vec.epilog.vector.body2999

vec.epilog.vector.body2999:                       ; preds = %vec.epilog.vector.body2999, %vec.epilog.ph2997
  %index3000 = phi i64 [ %vec.epilog.resume.val2989, %vec.epilog.ph2997 ], [ %index.next3004, %vec.epilog.vector.body2999 ] ; 2 uses
  %i.sz = shl i64 %index3000, 1                   ; 2 uses
  %next.gep3001 = getelementptr i8, ptr %.83274.i, i64 %i.sz
  %next.gep3002 = getelementptr i8, ptr %.83263.i, i64 %i.sz
  %wide.load3003 = load <4 x i16>, ptr %next.gep3001, align 2, !tbaa !58
  store <4 x i16> %wide.load3003, ptr %next.gep3002, align 2, !tbaa !58
  %index.next3004 = add nuw i64 %index3000, 4     ; 2 uses
  %i.ta = icmp eq i64 %index.next3004, %n.vec2998
  br i1 %i.ta, label %vec.epilog.middle.block3005, label %vec.epilog.vector.body2999, !llvm.loop !101

vec.epilog.middle.block3005:                      ; preds = %vec.epilog.vector.body2999
  %cmp.n3006 = icmp eq i64 %.83253.i, %n.vec2998
  br i1 %cmp.n3006, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3574.i.preheader

.preheader3574.i.preheader:                       ; preds = %iter.check2993, %vec.epilog.iter.check2995, %vec.epilog.middle.block3005
  %.93275.i.ph = phi ptr [ %.83274.i, %iter.check2993 ], [ %i.so, %vec.epilog.iter.check2995 ], [ %i.sw, %vec.epilog.middle.block3005 ] ; 2 uses
  %.93264.i.ph = phi ptr [ %.83263.i, %iter.check2993 ], [ %i.sp, %vec.epilog.iter.check2995 ], [ %i.sx, %vec.epilog.middle.block3005 ] ; 2 uses
  %.93254.i.ph = phi i64 [ %.83253.i, %iter.check2993 ], [ %i.sq, %vec.epilog.iter.check2995 ], [ %i.sy, %vec.epilog.middle.block3005 ] ; 4 uses
  %i.tb = add i64 %.93254.i.ph, -1
  %xtraiter3874 = and i64 %.93254.i.ph, 7         ; 2 uses
  %lcmp.mod3875.not = icmp eq i64 %xtraiter3874, 0
  br i1 %lcmp.mod3875.not, label %.preheader3574.i.prol.loopexit, label %.preheader3574.i.prol

.preheader3574.i.prol:                            ; preds = %.preheader3574.i.preheader, %.preheader3574.i.prol
  %.93275.i.prol = phi ptr [ %i.tc, %.preheader3574.i.prol ], [ %.93275.i.ph, %.preheader3574.i.preheader ] ; 2 uses
  %.93264.i.prol = phi ptr [ %i.te, %.preheader3574.i.prol ], [ %.93264.i.ph, %.preheader3574.i.preheader ] ; 2 uses
  %.93254.i.prol = phi i64 [ %i.tf, %.preheader3574.i.prol ], [ %.93254.i.ph, %.preheader3574.i.preheader ]
  %prol.iter3876 = phi i64 [ %prol.iter3876.next, %.preheader3574.i.prol ], [ 0, %.preheader3574.i.preheader ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.93275.i.prol, i64 2 ; 3 uses
  %i.td = load i16, ptr %.93275.i.prol, align 2, !tbaa !58
  %i.te = getelementptr inbounds nuw i8, ptr %.93264.i.prol, i64 2 ; 3 uses
  store i16 %i.td, ptr %.93264.i.prol, align 2, !tbaa !58
  %i.tf = add i64 %.93254.i.prol, -1              ; 2 uses
  %prol.iter3876.next = add i64 %prol.iter3876, 1 ; 2 uses
  %prol.iter3876.cmp.not = icmp eq i64 %prol.iter3876.next, %xtraiter3874
  br i1 %prol.iter3876.cmp.not, label %.preheader3574.i.prol.loopexit, label %.preheader3574.i.prol, !llvm.loop !102

.preheader3574.i.prol.loopexit:                   ; preds = %.preheader3574.i.prol, %.preheader3574.i.preheader
  %.lcssa3117.unr = phi ptr [ poison, %.preheader3574.i.preheader ], [ %i.tc, %.preheader3574.i.prol ]
  %.lcssa3116.unr = phi ptr [ poison, %.preheader3574.i.preheader ], [ %i.te, %.preheader3574.i.prol ]
  %.93275.i.unr = phi ptr [ %.93275.i.ph, %.preheader3574.i.preheader ], [ %i.tc, %.preheader3574.i.prol ]
  %.93264.i.unr = phi ptr [ %.93264.i.ph, %.preheader3574.i.preheader ], [ %i.te, %.preheader3574.i.prol ]
  %.93254.i.unr = phi i64 [ %.93254.i.ph, %.preheader3574.i.preheader ], [ %i.tf, %.preheader3574.i.prol ]
  %i.tg = icmp ult i64 %i.tb, 7
  br i1 %i.tg, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3574.i

.preheader3574.i:                                 ; preds = %.preheader3574.i.prol.loopexit, %.preheader3574.i
  %.93275.i = phi ptr [ %i.uc, %.preheader3574.i ], [ %.93275.i.unr, %.preheader3574.i.prol.loopexit ] ; 9 uses
  %.93264.i = phi ptr [ %i.ue, %.preheader3574.i ], [ %.93264.i.unr, %.preheader3574.i.prol.loopexit ] ; 9 uses
  %.93254.i = phi i64 [ %i.uf, %.preheader3574.i ], [ %.93254.i.unr, %.preheader3574.i.prol.loopexit ]
  %i.th = getelementptr inbounds nuw i8, ptr %.93275.i, i64 2
  %i.ti = load i16, ptr %.93275.i, align 2, !tbaa !58
  %i.tj = getelementptr inbounds nuw i8, ptr %.93264.i, i64 2
  store i16 %i.ti, ptr %.93264.i, align 2, !tbaa !58
  %i.tk = getelementptr inbounds nuw i8, ptr %.93275.i, i64 4
  %i.tl = load i16, ptr %i.th, align 2, !tbaa !58
  %i.tm = getelementptr inbounds nuw i8, ptr %.93264.i, i64 4
  store i16 %i.tl, ptr %i.tj, align 2, !tbaa !58
  %i.tn = getelementptr inbounds nuw i8, ptr %.93275.i, i64 6
  %i.to = load i16, ptr %i.tk, align 2, !tbaa !58
  %i.tp = getelementptr inbounds nuw i8, ptr %.93264.i, i64 6
  store i16 %i.to, ptr %i.tm, align 2, !tbaa !58
  %i.tq = getelementptr inbounds nuw i8, ptr %.93275.i, i64 8
  %i.tr = load i16, ptr %i.tn, align 2, !tbaa !58
  %i.ts = getelementptr inbounds nuw i8, ptr %.93264.i, i64 8
  store i16 %i.tr, ptr %i.tp, align 2, !tbaa !58
  %i.tt = getelementptr inbounds nuw i8, ptr %.93275.i, i64 10
  %i.tu = load i16, ptr %i.tq, align 2, !tbaa !58
  %i.tv = getelementptr inbounds nuw i8, ptr %.93264.i, i64 10
  store i16 %i.tu, ptr %i.ts, align 2, !tbaa !58
  %i.tw = getelementptr inbounds nuw i8, ptr %.93275.i, i64 12
  %i.tx = load i16, ptr %i.tt, align 2, !tbaa !58
  %i.ty = getelementptr inbounds nuw i8, ptr %.93264.i, i64 12
  store i16 %i.tx, ptr %i.tv, align 2, !tbaa !58
  %i.tz = getelementptr inbounds nuw i8, ptr %.93275.i, i64 14
  %i.ua = load i16, ptr %i.tw, align 2, !tbaa !58
  %i.ub = getelementptr inbounds nuw i8, ptr %.93264.i, i64 14
  store i16 %i.ua, ptr %i.ty, align 2, !tbaa !58
  %i.uc = getelementptr inbounds nuw i8, ptr %.93275.i, i64 16 ; 2 uses
  %i.ud = load i16, ptr %i.tz, align 2, !tbaa !58
  %i.ue = getelementptr inbounds nuw i8, ptr %.93264.i, i64 16 ; 2 uses
  store i16 %i.ud, ptr %i.ub, align 2, !tbaa !58
  %i.uf = add i64 %.93254.i, -8                   ; 2 uses
  %.old9.not.i.7 = icmp eq i64 %i.uf, 0
  br i1 %.old9.not.i.7, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3574.i, !llvm.loop !103

bb.l:                                             ; preds = %bb.e
  %i.ug = ptrtoint ptr %i.m to i64
  %i.uh = and i64 %i.ug, 3
  %.not3413.i = icmp eq i64 %i.uh, 0
  %i.ui = ptrtoint ptr %i.l to i64
  %i.uj = and i64 %i.ui, 3
  %.not3414.i = icmp eq i64 %i.uj, 0
  %or.cond3429.i = select i1 %.not3413.i, i1 %.not3414.i, i1 false
  br i1 %or.cond3429.i, label %bb.m, label %opal_datatype_unpack_predefined_element.exit

bb.m:                                             ; preds = %bb.l
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !56 ; 2 uses
  %i.um = and i64 %i.ul, 3
  %.not3415.i = icmp ne i64 %i.um, 0
  %i.un = icmp ugt i64 %.0, %i.t
  %or.cond3430.i = and i1 %i.un, %.not3415.i
  br i1 %or.cond3430.i, label %opal_datatype_unpack_predefined_element.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.uo = lshr i64 %i.ul, 2                       ; 22 uses
  switch i64 %i.t, label %bb.o [
    i64 1, label %.preheader3596.i
    i64 2, label %.preheader3598.i
    i64 3, label %.preheader3600.i
    i64 4, label %.preheader3602.i
    i64 5, label %.preheader3604.i
    i64 6, label %.preheader3606.i
    i64 7, label %.preheader3608.i
  ]

.preheader3608.i:                                 ; preds = %bb.n
  %i.up = icmp ugt i64 %.0, 6
  br i1 %i.up, label %.lr.ph4705.i, label %.loopexit3595.i

.preheader3606.i:                                 ; preds = %bb.n
  %i.uq = icmp ugt i64 %.0, 5
  br i1 %i.uq, label %.lr.ph4712.i, label %.loopexit3595.i

.preheader3604.i:                                 ; preds = %bb.n
  %i.ur = icmp ugt i64 %.0, 4
  br i1 %i.ur, label %.lr.ph4719.i, label %.loopexit3595.i

.preheader3602.i:                                 ; preds = %bb.n
  %i.us = icmp ugt i64 %.0, 3
  br i1 %i.us, label %.lr.ph4726.i.preheader, label %.loopexit3595.i

.lr.ph4726.i.preheader:                           ; preds = %.preheader3602.i
  %i.ut = add i64 %.0, -4                         ; 2 uses
  %i.uu = and i64 %i.ut, 4
  %lcmp.mod3854.not.not = icmp eq i64 %i.uu, 0
  br i1 %lcmp.mod3854.not.not, label %.lr.ph4726.i.prol, label %.lr.ph4726.i.prol.loopexit

.lr.ph4726.i.prol:                                ; preds = %.lr.ph4726.i.preheader
  %i.uv = load i32, ptr %i.m, align 4, !tbaa !34
  store i32 %i.uv, ptr %i.l, align 4, !tbaa !34
  %i.uw = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !34
  %i.uy = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !34
  %i.uz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !34
  %i.vb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.va, ptr %i.vb, align 4, !tbaa !34
end_hunk_1
begin_hunk_2_@unpack_predefined_data:bb.a
  %i.ase = getelementptr inbounds nuw i8, ptr %.231724583.i, i64 2
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !50
  %i.asg = getelementptr inbounds nuw i8, ptr %.231614584.i, i64 2
  store i8 %i.asf, ptr %i.asg, align 1, !tbaa !50
  %i.ash = getelementptr inbounds nuw i8, ptr %.231724583.i, i64 3 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %.231614584.i, i64 %i.aon ; 2 uses
  %i.asj = add i64 %.231514585.i, -3              ; 3 uses
  %i.ask = icmp ugt i64 %i.asj, 2
  br i1 %i.ask, label %.lr.ph4586.i, label %.loopexit3649.i, !llvm.loop !132

.lr.ph4579.i:                                     ; preds = %.lr.ph4579.i.prol.loopexit, %.lr.ph4579.i
  %.331524578.i = phi i64 [ %i.atj, %.lr.ph4579.i ], [ %.331524578.i.unr, %.lr.ph4579.i.prol.loopexit ]
  %.331624577.i = phi ptr [ %i.ati, %.lr.ph4579.i ], [ %.331624577.i.unr, %.lr.ph4579.i.prol.loopexit ] ; 5 uses
  %.331734576.i = phi ptr [ %i.ath, %.lr.ph4579.i ], [ %.331734576.i.unr, %.lr.ph4579.i.prol.loopexit ] ; 9 uses
  %i.asl = load i8, ptr %.331734576.i, align 1, !tbaa !50
  store i8 %i.asl, ptr %.331624577.i, align 1, !tbaa !50
  %i.asm = getelementptr inbounds nuw i8, ptr %.331734576.i, i64 1
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !50
  %i.aso = getelementptr inbounds nuw i8, ptr %.331624577.i, i64 1
  store i8 %i.asn, ptr %i.aso, align 1, !tbaa !50
  %i.asp = getelementptr inbounds nuw i8, ptr %.331734576.i, i64 2
  %i.asq = load i8, ptr %i.asp, align 1, !tbaa !50
  %i.asr = getelementptr inbounds nuw i8, ptr %.331624577.i, i64 2
  store i8 %i.asq, ptr %i.asr, align 1, !tbaa !50
  %i.ass = getelementptr inbounds nuw i8, ptr %.331734576.i, i64 3
  %i.ast = load i8, ptr %i.ass, align 1, !tbaa !50
  %i.asu = getelementptr inbounds nuw i8, ptr %.331624577.i, i64 3
  store i8 %i.ast, ptr %i.asu, align 1, !tbaa !50
  %i.asv = getelementptr inbounds nuw i8, ptr %.331734576.i, i64 4
  %i.asw = getelementptr inbounds nuw i8, ptr %.331624577.i, i64 %i.aon ; 5 uses
  %i.asx = load i8, ptr %i.asv, align 1, !tbaa !50
  store i8 %i.asx, ptr %i.asw, align 1, !tbaa !50
  %i.asy = getelementptr inbounds nuw i8, ptr %.331734576.i, i64 5
  %i.asz = load i8, ptr %i.asy, align 1, !tbaa !50
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asw, i64 1
  store i8 %i.asz, ptr %i.ata, align 1, !tbaa !50
  %i.atb = getelementptr inbounds nuw i8, ptr %.331734576.i, i64 6
  %i.atc = load i8, ptr %i.atb, align 1, !tbaa !50
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asw, i64 2
  store i8 %i.atc, ptr %i.atd, align 1, !tbaa !50
  %i.ate = getelementptr inbounds nuw i8, ptr %.331734576.i, i64 7
  %i.atf = load i8, ptr %i.ate, align 1, !tbaa !50
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asw, i64 3
  store i8 %i.atf, ptr %i.atg, align 1, !tbaa !50
  %i.ath = getelementptr inbounds nuw i8, ptr %.331734576.i, i64 8 ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asw, i64 %i.aon ; 2 uses
  %i.atj = add i64 %.331524578.i, -8              ; 3 uses
  %i.atk = icmp ugt i64 %i.atj, 3
  br i1 %i.atk, label %.lr.ph4579.i, label %.loopexit3649.i, !llvm.loop !133

.lr.ph4572.i:                                     ; preds = %.preheader3658.i, %.lr.ph4572.i
  %.431534571.i = phi i64 [ %i.aua, %.lr.ph4572.i ], [ %.0, %.preheader3658.i ]
  %.431634570.i = phi ptr [ %i.atz, %.lr.ph4572.i ], [ %i.l, %.preheader3658.i ] ; 6 uses
  %.431744569.i = phi ptr [ %i.aty, %.lr.ph4572.i ], [ %i.m, %.preheader3658.i ] ; 6 uses
  %i.atl = load i8, ptr %.431744569.i, align 1, !tbaa !50
  store i8 %i.atl, ptr %.431634570.i, align 1, !tbaa !50
  %i.atm = getelementptr inbounds nuw i8, ptr %.431744569.i, i64 1
  %i.atn = load i8, ptr %i.atm, align 1, !tbaa !50
  %i.ato = getelementptr inbounds nuw i8, ptr %.431634570.i, i64 1
  store i8 %i.atn, ptr %i.ato, align 1, !tbaa !50
  %i.atp = getelementptr inbounds nuw i8, ptr %.431744569.i, i64 2
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !50
  %i.atr = getelementptr inbounds nuw i8, ptr %.431634570.i, i64 2
  store i8 %i.atq, ptr %i.atr, align 1, !tbaa !50
  %i.ats = getelementptr inbounds nuw i8, ptr %.431744569.i, i64 3
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !50
  %i.atu = getelementptr inbounds nuw i8, ptr %.431634570.i, i64 3
  store i8 %i.att, ptr %i.atu, align 1, !tbaa !50
  %i.atv = getelementptr inbounds nuw i8, ptr %.431744569.i, i64 4
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !50
  %i.atx = getelementptr inbounds nuw i8, ptr %.431634570.i, i64 4
  store i8 %i.atw, ptr %i.atx, align 1, !tbaa !50
  %i.aty = getelementptr inbounds nuw i8, ptr %.431744569.i, i64 5 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %.431634570.i, i64 %i.aon ; 2 uses
  %i.aua = add i64 %.431534571.i, -5              ; 3 uses
  %i.aub = icmp ugt i64 %i.aua, 4
  br i1 %i.aub, label %.lr.ph4572.i, label %.loopexit3649.i, !llvm.loop !134

.lr.ph4565.i:                                     ; preds = %.preheader3660.i, %.lr.ph4565.i
  %.531544564.i = phi i64 [ %i.auu, %.lr.ph4565.i ], [ %.0, %.preheader3660.i ]
  %.531644563.i = phi ptr [ %i.aut, %.lr.ph4565.i ], [ %i.l, %.preheader3660.i ] ; 7 uses
  %.531754562.i = phi ptr [ %i.aus, %.lr.ph4565.i ], [ %i.m, %.preheader3660.i ] ; 7 uses
  %i.auc = load i8, ptr %.531754562.i, align 1, !tbaa !50
  store i8 %i.auc, ptr %.531644563.i, align 1, !tbaa !50
  %i.aud = getelementptr inbounds nuw i8, ptr %.531754562.i, i64 1
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !50
  %i.auf = getelementptr inbounds nuw i8, ptr %.531644563.i, i64 1
  store i8 %i.aue, ptr %i.auf, align 1, !tbaa !50
  %i.aug = getelementptr inbounds nuw i8, ptr %.531754562.i, i64 2
  %i.auh = load i8, ptr %i.aug, align 1, !tbaa !50
  %i.aui = getelementptr inbounds nuw i8, ptr %.531644563.i, i64 2
  store i8 %i.auh, ptr %i.aui, align 1, !tbaa !50
  %i.auj = getelementptr inbounds nuw i8, ptr %.531754562.i, i64 3
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !50
  %i.aul = getelementptr inbounds nuw i8, ptr %.531644563.i, i64 3
  store i8 %i.auk, ptr %i.aul, align 1, !tbaa !50
  %i.aum = getelementptr inbounds nuw i8, ptr %.531754562.i, i64 4
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !50
  %i.auo = getelementptr inbounds nuw i8, ptr %.531644563.i, i64 4
  store i8 %i.aun, ptr %i.auo, align 1, !tbaa !50
  %i.aup = getelementptr inbounds nuw i8, ptr %.531754562.i, i64 5
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !50
  %i.aur = getelementptr inbounds nuw i8, ptr %.531644563.i, i64 5
  store i8 %i.auq, ptr %i.aur, align 1, !tbaa !50
  %i.aus = getelementptr inbounds nuw i8, ptr %.531754562.i, i64 6 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.531644563.i, i64 %i.aon ; 2 uses
  %i.auu = add i64 %.531544564.i, -6              ; 3 uses
  %i.auv = icmp ugt i64 %i.auu, 5
  br i1 %i.auv, label %.lr.ph4565.i, label %.loopexit3649.i, !llvm.loop !135

.lr.ph4558.i:                                     ; preds = %.preheader3662.i, %.lr.ph4558.i
  %.631554557.i = phi i64 [ %i.avr, %.lr.ph4558.i ], [ %.0, %.preheader3662.i ]
  %.631654556.i = phi ptr [ %i.avq, %.lr.ph4558.i ], [ %i.l, %.preheader3662.i ] ; 8 uses
  %.631764555.i = phi ptr [ %i.avp, %.lr.ph4558.i ], [ %i.m, %.preheader3662.i ] ; 8 uses
  %i.auw = load i8, ptr %.631764555.i, align 1, !tbaa !50
  store i8 %i.auw, ptr %.631654556.i, align 1, !tbaa !50
  %i.aux = getelementptr inbounds nuw i8, ptr %.631764555.i, i64 1
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !50
  %i.auz = getelementptr inbounds nuw i8, ptr %.631654556.i, i64 1
  store i8 %i.auy, ptr %i.auz, align 1, !tbaa !50
  %i.ava = getelementptr inbounds nuw i8, ptr %.631764555.i, i64 2
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !50
  %i.avc = getelementptr inbounds nuw i8, ptr %.631654556.i, i64 2
  store i8 %i.avb, ptr %i.avc, align 1, !tbaa !50
  %i.avd = getelementptr inbounds nuw i8, ptr %.631764555.i, i64 3
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !50
  %i.avf = getelementptr inbounds nuw i8, ptr %.631654556.i, i64 3
  store i8 %i.ave, ptr %i.avf, align 1, !tbaa !50
  %i.avg = getelementptr inbounds nuw i8, ptr %.631764555.i, i64 4
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !50
  %i.avi = getelementptr inbounds nuw i8, ptr %.631654556.i, i64 4
  store i8 %i.avh, ptr %i.avi, align 1, !tbaa !50
  %i.avj = getelementptr inbounds nuw i8, ptr %.631764555.i, i64 5
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !50
  %i.avl = getelementptr inbounds nuw i8, ptr %.631654556.i, i64 5
  store i8 %i.avk, ptr %i.avl, align 1, !tbaa !50
  %i.avm = getelementptr inbounds nuw i8, ptr %.631764555.i, i64 6
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !50
  %i.avo = getelementptr inbounds nuw i8, ptr %.631654556.i, i64 6
  store i8 %i.avn, ptr %i.avo, align 1, !tbaa !50
  %i.avp = getelementptr inbounds nuw i8, ptr %.631764555.i, i64 7 ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %.631654556.i, i64 %i.aon ; 2 uses
  %i.avr = add i64 %.631554557.i, -7              ; 3 uses
  %i.avs = icmp ugt i64 %i.avr, 6
  br i1 %i.avs, label %.lr.ph4558.i, label %.loopexit3649.i, !llvm.loop !136

bb.u:                                             ; preds = %bb.t
  %i.avt = icmp eq i64 %i.t, 8
  %i.avu = icmp ugt i64 %.0, 7
  %or.cond25.i = and i1 %i.avu, %i.avt
  br i1 %or.cond25.i, label %.preheader3648.i, label %.loopexit3649.i

.preheader3648.i:                                 ; preds = %bb.u, %.preheader3648.i
  %.73177.i = phi ptr [ %i.awr, %.preheader3648.i ], [ %i.m, %bb.u ] ; 9 uses
  %.73166.i = phi ptr [ %i.aws, %.preheader3648.i ], [ %i.l, %bb.u ] ; 9 uses
  %.73156.i = phi i64 [ %i.awt, %.preheader3648.i ], [ %.0, %bb.u ]
  %i.avv = load i8, ptr %.73177.i, align 1, !tbaa !50
  store i8 %i.avv, ptr %.73166.i, align 1, !tbaa !50
  %i.avw = getelementptr inbounds nuw i8, ptr %.73177.i, i64 1
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !50
  %i.avy = getelementptr inbounds nuw i8, ptr %.73166.i, i64 1
  store i8 %i.avx, ptr %i.avy, align 1, !tbaa !50
  %i.avz = getelementptr inbounds nuw i8, ptr %.73177.i, i64 2
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !50
  %i.awb = getelementptr inbounds nuw i8, ptr %.73166.i, i64 2
  store i8 %i.awa, ptr %i.awb, align 1, !tbaa !50
  %i.awc = getelementptr inbounds nuw i8, ptr %.73177.i, i64 3
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !50
  %i.awe = getelementptr inbounds nuw i8, ptr %.73166.i, i64 3
  store i8 %i.awd, ptr %i.awe, align 1, !tbaa !50
  %i.awf = getelementptr inbounds nuw i8, ptr %.73177.i, i64 4
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !50
  %i.awh = getelementptr inbounds nuw i8, ptr %.73166.i, i64 4
  store i8 %i.awg, ptr %i.awh, align 1, !tbaa !50
  %i.awi = getelementptr inbounds nuw i8, ptr %.73177.i, i64 5
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !50
  %i.awk = getelementptr inbounds nuw i8, ptr %.73166.i, i64 5
  store i8 %i.awj, ptr %i.awk, align 1, !tbaa !50
  %i.awl = getelementptr inbounds nuw i8, ptr %.73177.i, i64 6
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !50
  %i.awn = getelementptr inbounds nuw i8, ptr %.73166.i, i64 6
  store i8 %i.awm, ptr %i.awn, align 1, !tbaa !50
  %i.awo = getelementptr inbounds nuw i8, ptr %.73177.i, i64 7
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !50
  %i.awq = getelementptr inbounds nuw i8, ptr %.73166.i, i64 7
  store i8 %i.awp, ptr %i.awq, align 1, !tbaa !50
  %i.awr = getelementptr inbounds nuw i8, ptr %.73177.i, i64 8 ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.73166.i, i64 %i.aon ; 2 uses
  %i.awt = add i64 %.73156.i, -8                  ; 3 uses
  %.old24.i = icmp ugt i64 %i.awt, 7
  br i1 %.old24.i, label %.preheader3648.i, label %.loopexit3649.i

.loopexit3649.i:                                  ; preds = %.lr.ph4558.i, %.lr.ph4565.i, %.lr.ph4572.i, %.lr.ph4579.i.prol.loopexit, %.lr.ph4579.i, %.lr.ph4586.i, %.lr.ph4593.i.prol.loopexit, %.lr.ph4593.i, %.preheader3648.i, %bb.u, %.preheader3652.i, %.preheader3654.i, %.preheader3656.i, %.preheader3658.i, %.preheader3660.i, %.preheader3662.i
  %.83178.i = phi ptr [ %i.m, %bb.u ], [ %i.ath, %.lr.ph4579.i ], [ %i.aty, %.lr.ph4572.i ], [ %i.aus, %.lr.ph4565.i ], [ %i.awr, %.preheader3648.i ], [ %i.arw, %.lr.ph4593.i ], [ %i.ash, %.lr.ph4586.i ], [ %i.m, %.preheader3652.i ], [ %i.m, %.preheader3654.i ], [ %i.m, %.preheader3656.i ], [ %i.m, %.preheader3658.i ], [ %i.m, %.preheader3660.i ], [ %i.m, %.preheader3662.i ], [ %.lcssa3262.unr, %.lr.ph4593.i.prol.loopexit ], [ %.lcssa3270.unr, %.lr.ph4579.i.prol.loopexit ], [ %i.avp, %.lr.ph4558.i ] ; 7 uses
  %.83167.i = phi ptr [ %i.l, %bb.u ], [ %i.ati, %.lr.ph4579.i ], [ %i.atz, %.lr.ph4572.i ], [ %i.aut, %.lr.ph4565.i ], [ %i.aws, %.preheader3648.i ], [ %i.arx, %.lr.ph4593.i ], [ %i.asi, %.lr.ph4586.i ], [ %i.l, %.preheader3652.i ], [ %i.l, %.preheader3654.i ], [ %i.l, %.preheader3656.i ], [ %i.l, %.preheader3658.i ], [ %i.l, %.preheader3660.i ], [ %i.l, %.preheader3662.i ], [ %.lcssa3261.unr, %.lr.ph4593.i.prol.loopexit ], [ %.lcssa3269.unr, %.lr.ph4579.i.prol.loopexit ], [ %i.avq, %.lr.ph4558.i ] ; 7 uses
  %.83157.i = phi i64 [ %.0, %bb.u ], [ %i.atj, %.lr.ph4579.i ], [ %i.aua, %.lr.ph4572.i ], [ %i.auu, %.lr.ph4565.i ], [ %i.awt, %.preheader3648.i ], [ %i.ary, %.lr.ph4593.i ], [ %i.asj, %.lr.ph4586.i ], [ %.0, %.preheader3652.i ], [ %.0, %.preheader3654.i ], [ %.0, %.preheader3656.i ], [ %.0, %.preheader3658.i ], [ %.0, %.preheader3660.i ], [ %.0, %.preheader3662.i ], [ %.lcssa3260.unr, %.lr.ph4593.i.prol.loopexit ], [ %.lcssa3268.unr, %.lr.ph4579.i.prol.loopexit ], [ %i.avr, %.lr.ph4558.i ] ; 11 uses
  %.not3407.i = icmp eq i64 %.83157.i, 0
  br i1 %.not3407.i, label %opal_datatype_unpack_predefined_element.exit.thread, label %iter.check2893

iter.check2893:                                   ; preds = %.loopexit3649.i
  %.83178.i2872 = ptrtoaddr ptr %.83167.i to i64
  %.83167.i2871 = ptrtoaddr ptr %.83178.i to i64
  %min.iters.check2875 = icmp ult i64 %.83157.i, 4
  %i.awu = sub i64 %.83167.i2871, %.83178.i2872
  %diff.check2873 = icmp ugt i64 %i.awu, -32
  %or.cond3054 = select i1 %min.iters.check2875, i1 true, i1 %diff.check2873
  br i1 %or.cond3054, label %.preheader3646.i.preheader, label %vector.main.loop.iter.check2876

vector.main.loop.iter.check2876:                  ; preds = %iter.check2893
  %min.iters.check2877 = icmp ult i64 %.83157.i, 32
  br i1 %min.iters.check2877, label %vec.epilog.ph2897, label %vector.ph2878

vector.ph2878:                                    ; preds = %vector.main.loop.iter.check2876
  %i.awv = and i64 %.83157.i, 28
  %n.vec2879 = and i64 %.83157.i, -32             ; 5 uses
  %i.aww = getelementptr i8, ptr %.83178.i, i64 %n.vec2879 ; 2 uses
  %i.awx = getelementptr i8, ptr %.83167.i, i64 %n.vec2879 ; 2 uses
  %i.awy = and i64 %.83157.i, 31
  br label %vector.body2880

vector.body2880:                                  ; preds = %vector.ph2878, %vector.body2880
  %index2881 = phi i64 [ 0, %vector.ph2878 ], [ %index.next2886, %vector.body2880 ] ; 3 uses
  %next.gep2882 = getelementptr i8, ptr %.83178.i, i64 %index2881 ; 2 uses
  %next.gep2883 = getelementptr i8, ptr %.83167.i, i64 %index2881 ; 2 uses
  %i.awz = getelementptr i8, ptr %next.gep2882, i64 16
  %wide.load2884 = load <16 x i8>, ptr %next.gep2882, align 1, !tbaa !50
  %wide.load2885 = load <16 x i8>, ptr %i.awz, align 1, !tbaa !50
  %i.axa = getelementptr i8, ptr %next.gep2883, i64 16
  store <16 x i8> %wide.load2884, ptr %next.gep2883, align 1, !tbaa !50
  store <16 x i8> %wide.load2885, ptr %i.axa, align 1, !tbaa !50
  %index.next2886 = add nuw i64 %index2881, 32    ; 2 uses
  %i.axb = icmp eq i64 %index.next2886, %n.vec2879
  br i1 %i.axb, label %middle.block2887, label %vector.body2880, !llvm.loop !137

middle.block2887:                                 ; preds = %vector.body2880
  %cmp.n2888 = icmp eq i64 %.83157.i, %n.vec2879
  br i1 %cmp.n2888, label %opal_datatype_unpack_predefined_element.exit.thread, label %vec.epilog.iter.check2895

vec.epilog.iter.check2895:                        ; preds = %middle.block2887
  %min.epilog.iters.check2896 = icmp eq i64 %i.awv, 0
  br i1 %min.epilog.iters.check2896, label %.preheader3646.i.preheader, label %vec.epilog.ph2897, !prof !306

vec.epilog.ph2897:                                ; preds = %vector.main.loop.iter.check2876, %vec.epilog.iter.check2895
  %vec.epilog.resume.val2889 = phi i64 [ %n.vec2879, %vec.epilog.iter.check2895 ], [ 0, %vector.main.loop.iter.check2876 ]
  %n.vec2898 = and i64 %.83157.i, -4              ; 4 uses
  %i.axc = getelementptr i8, ptr %.83178.i, i64 %n.vec2898 ; 2 uses
  %i.axd = getelementptr i8, ptr %.83167.i, i64 %n.vec2898 ; 2 uses
  %i.axe = and i64 %.83157.i, 3
  br label %vec.epilog.vector.body2899

vec.epilog.vector.body2899:                       ; preds = %vec.epilog.vector.body2899, %vec.epilog.ph2897
  %index2900 = phi i64 [ %vec.epilog.resume.val2889, %vec.epilog.ph2897 ], [ %index.next2904, %vec.epilog.vector.body2899 ] ; 3 uses
  %next.gep2901 = getelementptr i8, ptr %.83178.i, i64 %index2900
  %next.gep2902 = getelementptr i8, ptr %.83167.i, i64 %index2900
  %wide.load2903 = load <4 x i8>, ptr %next.gep2901, align 1, !tbaa !50
  store <4 x i8> %wide.load2903, ptr %next.gep2902, align 1, !tbaa !50
  %index.next2904 = add nuw i64 %index2900, 4     ; 2 uses
  %i.axf = icmp eq i64 %index.next2904, %n.vec2898
  br i1 %i.axf, label %vec.epilog.middle.block2905, label %vec.epilog.vector.body2899, !llvm.loop !138

vec.epilog.middle.block2905:                      ; preds = %vec.epilog.vector.body2899
  %cmp.n2906 = icmp eq i64 %.83157.i, %n.vec2898
  br i1 %cmp.n2906, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3646.i.preheader

.preheader3646.i.preheader:                       ; preds = %iter.check2893, %vec.epilog.iter.check2895, %vec.epilog.middle.block2905
  %.93179.i.ph = phi ptr [ %.83178.i, %iter.check2893 ], [ %i.aww, %vec.epilog.iter.check2895 ], [ %i.axc, %vec.epilog.middle.block2905 ] ; 2 uses
  %.93168.i.ph = phi ptr [ %.83167.i, %iter.check2893 ], [ %i.awx, %vec.epilog.iter.check2895 ], [ %i.axd, %vec.epilog.middle.block2905 ] ; 2 uses
  %.93158.i.ph = phi i64 [ %.83157.i, %iter.check2893 ], [ %i.awy, %vec.epilog.iter.check2895 ], [ %i.axe, %vec.epilog.middle.block2905 ] ; 4 uses
  %i.axg = add i64 %.93158.i.ph, -1
  %xtraiter3826 = and i64 %.93158.i.ph, 7         ; 2 uses
  %lcmp.mod3827.not = icmp eq i64 %xtraiter3826, 0
  br i1 %lcmp.mod3827.not, label %.preheader3646.i.prol.loopexit, label %.preheader3646.i.prol

.preheader3646.i.prol:                            ; preds = %.preheader3646.i.preheader, %.preheader3646.i.prol
  %.93179.i.prol = phi ptr [ %i.axh, %.preheader3646.i.prol ], [ %.93179.i.ph, %.preheader3646.i.preheader ] ; 2 uses
  %.93168.i.prol = phi ptr [ %i.axj, %.preheader3646.i.prol ], [ %.93168.i.ph, %.preheader3646.i.preheader ] ; 2 uses
  %.93158.i.prol = phi i64 [ %i.axk, %.preheader3646.i.prol ], [ %.93158.i.ph, %.preheader3646.i.preheader ]
  %prol.iter3828 = phi i64 [ %prol.iter3828.next, %.preheader3646.i.prol ], [ 0, %.preheader3646.i.preheader ]
  %i.axh = getelementptr inbounds nuw i8, ptr %.93179.i.prol, i64 1 ; 3 uses
  %i.axi = load i8, ptr %.93179.i.prol, align 1, !tbaa !50
  %i.axj = getelementptr inbounds nuw i8, ptr %.93168.i.prol, i64 1 ; 3 uses
  store i8 %i.axi, ptr %.93168.i.prol, align 1, !tbaa !50
  %i.axk = add i64 %.93158.i.prol, -1             ; 2 uses
  %prol.iter3828.next = add i64 %prol.iter3828, 1 ; 2 uses
  %prol.iter3828.cmp.not = icmp eq i64 %prol.iter3828.next, %xtraiter3826
  br i1 %prol.iter3828.cmp.not, label %.preheader3646.i.prol.loopexit, label %.preheader3646.i.prol, !llvm.loop !139

.preheader3646.i.prol.loopexit:                   ; preds = %.preheader3646.i.prol, %.preheader3646.i.preheader
  %.lcssa3252.unr = phi ptr [ poison, %.preheader3646.i.preheader ], [ %i.axh, %.preheader3646.i.prol ]
  %.lcssa3251.unr = phi ptr [ poison, %.preheader3646.i.preheader ], [ %i.axj, %.preheader3646.i.prol ]
  %.93179.i.unr = phi ptr [ %.93179.i.ph, %.preheader3646.i.preheader ], [ %i.axh, %.preheader3646.i.prol ]
  %.93168.i.unr = phi ptr [ %.93168.i.ph, %.preheader3646.i.preheader ], [ %i.axj, %.preheader3646.i.prol ]
  %.93158.i.unr = phi i64 [ %.93158.i.ph, %.preheader3646.i.preheader ], [ %i.axk, %.preheader3646.i.prol ]
  %i.axl = icmp ult i64 %i.axg, 7
  br i1 %i.axl, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3646.i

.preheader3646.i:                                 ; preds = %.preheader3646.i.prol.loopexit, %.preheader3646.i
  %.93179.i = phi ptr [ %i.ayh, %.preheader3646.i ], [ %.93179.i.unr, %.preheader3646.i.prol.loopexit ] ; 9 uses
  %.93168.i = phi ptr [ %i.ayj, %.preheader3646.i ], [ %.93168.i.unr, %.preheader3646.i.prol.loopexit ] ; 9 uses
  %.93158.i = phi i64 [ %i.ayk, %.preheader3646.i ], [ %.93158.i.unr, %.preheader3646.i.prol.loopexit ]
  %i.axm = getelementptr inbounds nuw i8, ptr %.93179.i, i64 1
  %i.axn = load i8, ptr %.93179.i, align 1, !tbaa !50
  %i.axo = getelementptr inbounds nuw i8, ptr %.93168.i, i64 1
  store i8 %i.axn, ptr %.93168.i, align 1, !tbaa !50
  %i.axp = getelementptr inbounds nuw i8, ptr %.93179.i, i64 2
  %i.axq = load i8, ptr %i.axm, align 1, !tbaa !50
  %i.axr = getelementptr inbounds nuw i8, ptr %.93168.i, i64 2
  store i8 %i.axq, ptr %i.axo, align 1, !tbaa !50
  %i.axs = getelementptr inbounds nuw i8, ptr %.93179.i, i64 3
  %i.axt = load i8, ptr %i.axp, align 1, !tbaa !50
  %i.axu = getelementptr inbounds nuw i8, ptr %.93168.i, i64 3
  store i8 %i.axt, ptr %i.axr, align 1, !tbaa !50
  %i.axv = getelementptr inbounds nuw i8, ptr %.93179.i, i64 4
  %i.axw = load i8, ptr %i.axs, align 1, !tbaa !50
  %i.axx = getelementptr inbounds nuw i8, ptr %.93168.i, i64 4
  store i8 %i.axw, ptr %i.axu, align 1, !tbaa !50
  %i.axy = getelementptr inbounds nuw i8, ptr %.93179.i, i64 5
  %i.axz = load i8, ptr %i.axv, align 1, !tbaa !50
  %i.aya = getelementptr inbounds nuw i8, ptr %.93168.i, i64 5
  store i8 %i.axz, ptr %i.axx, align 1, !tbaa !50
  %i.ayb = getelementptr inbounds nuw i8, ptr %.93179.i, i64 6
  %i.ayc = load i8, ptr %i.axy, align 1, !tbaa !50
  %i.ayd = getelementptr inbounds nuw i8, ptr %.93168.i, i64 6
  store i8 %i.ayc, ptr %i.aya, align 1, !tbaa !50
  %i.aye = getelementptr inbounds nuw i8, ptr %.93179.i, i64 7
  %i.ayf = load i8, ptr %i.ayb, align 1, !tbaa !50
  %i.ayg = getelementptr inbounds nuw i8, ptr %.93168.i, i64 7
  store i8 %i.ayf, ptr %i.ayd, align 1, !tbaa !50
  %i.ayh = getelementptr inbounds nuw i8, ptr %.93179.i, i64 8 ; 2 uses
  %i.ayi = load i8, ptr %i.aye, align 1, !tbaa !50
  %i.ayj = getelementptr inbounds nuw i8, ptr %.93168.i, i64 8 ; 2 uses
  store i8 %i.ayi, ptr %i.ayg, align 1, !tbaa !50
  %i.ayk = add i64 %.93158.i, -8                  ; 2 uses
  %.old27.not.i.7 = icmp eq i64 %i.ayk, 0
  br i1 %.old27.not.i.7, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3646.i, !llvm.loop !140

bb.v:                                             ; preds = %bb.e
  %i.ayl = ptrtoint ptr %i.m to i64
  %i.aym = and i64 %i.ayl, 1
  %.not3401.i = icmp eq i64 %i.aym, 0
  %i.ayn = ptrtoint ptr %i.l to i64
  %i.ayo = and i64 %i.ayn, 1
  %.not3402.i = icmp eq i64 %i.ayo, 0
  %or.cond3435.i = select i1 %.not3401.i, i1 %.not3402.i, i1 false
  br i1 %or.cond3435.i, label %bb.w, label %opal_datatype_unpack_predefined_element.exit

bb.w:                                             ; preds = %bb.v
  %i.ayp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ayq = load i64, ptr %i.ayp, align 8, !tbaa !56 ; 2 uses
  %.not3403.i = trunc i64 %i.ayq to i1
  %i.ayr = icmp ugt i64 %.0, %i.t
  %or.cond3436.i = and i1 %i.ayr, %.not3403.i
  br i1 %or.cond3436.i, label %opal_datatype_unpack_predefined_element.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ays = lshr i64 %i.ayq, 1                     ; 22 uses
  switch i64 %i.t, label %bb.y [
    i64 1, label %.preheader3668.i
    i64 2, label %.preheader3670.i
    i64 3, label %.preheader3672.i
    i64 4, label %.preheader3674.i
    i64 5, label %.preheader3676.i
    i64 6, label %.preheader3678.i
    i64 7, label %.preheader3680.i
  ]

.preheader3680.i:                                 ; preds = %bb.x
  %i.ayt = icmp ugt i64 %.0, 6
  br i1 %i.ayt, label %.lr.ph4509.i, label %.loopexit3667.i

.preheader3678.i:                                 ; preds = %bb.x
  %i.ayu = icmp ugt i64 %.0, 5
  br i1 %i.ayu, label %.lr.ph4516.i, label %.loopexit3667.i

.preheader3676.i:                                 ; preds = %bb.x
  %i.ayv = icmp ugt i64 %.0, 4
  br i1 %i.ayv, label %.lr.ph4523.i, label %.loopexit3667.i

.preheader3674.i:                                 ; preds = %bb.x
  %i.ayw = icmp ugt i64 %.0, 3
  br i1 %i.ayw, label %.lr.ph4530.i.preheader, label %.loopexit3667.i

.lr.ph4530.i.preheader:                           ; preds = %.preheader3674.i
  %i.ayx = add i64 %.0, -4                        ; 2 uses
  %i.ayy = and i64 %i.ayx, 4
  %lcmp.mod3806.not.not = icmp eq i64 %i.ayy, 0
  br i1 %lcmp.mod3806.not.not, label %.lr.ph4530.i.prol, label %.lr.ph4530.i.prol.loopexit

.lr.ph4530.i.prol:                                ; preds = %.lr.ph4530.i.preheader
  %i.ayz = load i16, ptr %i.m, align 2, !tbaa !58
  store i16 %i.ayz, ptr %i.l, align 2, !tbaa !58
  %i.aza = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.azb = load i16, ptr %i.aza, align 2, !tbaa !58
  %i.azc = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 %i.azb, ptr %i.azc, align 2, !tbaa !58
  %i.azd = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.aze = load i16, ptr %i.azd, align 2, !tbaa !58
  %i.azf = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i16 %i.aze, ptr %i.azf, align 2, !tbaa !58
  %i.azg = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !58
  %i.azi = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  store i16 %i.azh, ptr %i.azi, align 2, !tbaa !58
  %i.azj = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@unpack_predefined_data:bb.a
  %i.bcj = getelementptr inbounds nuw i8, ptr %.231404534.i, i64 4
  %i.bck = load i16, ptr %i.bcj, align 2, !tbaa !58
  %i.bcl = getelementptr inbounds nuw i8, ptr %.231294535.i, i64 4
  store i16 %i.bck, ptr %i.bcl, align 2, !tbaa !58
  %i.bcm = getelementptr inbounds nuw i8, ptr %.231404534.i, i64 6 ; 2 uses
  %i.bcn = getelementptr inbounds nuw [2 x i8], ptr %.231294535.i, i64 %i.ays ; 2 uses
  %i.bco = add i64 %.231194536.i, -3              ; 3 uses
  %i.bcp = icmp ugt i64 %i.bco, 2
  br i1 %i.bcp, label %.lr.ph4537.i, label %.loopexit3667.i, !llvm.loop !145

.lr.ph4530.i:                                     ; preds = %.lr.ph4530.i.prol.loopexit, %.lr.ph4530.i
  %.331204529.i = phi i64 [ %i.bdo, %.lr.ph4530.i ], [ %.331204529.i.unr, %.lr.ph4530.i.prol.loopexit ]
  %.331304528.i = phi ptr [ %i.bdn, %.lr.ph4530.i ], [ %.331304528.i.unr, %.lr.ph4530.i.prol.loopexit ] ; 5 uses
  %.331414527.i = phi ptr [ %i.bdm, %.lr.ph4530.i ], [ %.331414527.i.unr, %.lr.ph4530.i.prol.loopexit ] ; 9 uses
  %i.bcq = load i16, ptr %.331414527.i, align 2, !tbaa !58
  store i16 %i.bcq, ptr %.331304528.i, align 2, !tbaa !58
  %i.bcr = getelementptr inbounds nuw i8, ptr %.331414527.i, i64 2
  %i.bcs = load i16, ptr %i.bcr, align 2, !tbaa !58
  %i.bct = getelementptr inbounds nuw i8, ptr %.331304528.i, i64 2
  store i16 %i.bcs, ptr %i.bct, align 2, !tbaa !58
  %i.bcu = getelementptr inbounds nuw i8, ptr %.331414527.i, i64 4
  %i.bcv = load i16, ptr %i.bcu, align 2, !tbaa !58
  %i.bcw = getelementptr inbounds nuw i8, ptr %.331304528.i, i64 4
  store i16 %i.bcv, ptr %i.bcw, align 2, !tbaa !58
  %i.bcx = getelementptr inbounds nuw i8, ptr %.331414527.i, i64 6
  %i.bcy = load i16, ptr %i.bcx, align 2, !tbaa !58
  %i.bcz = getelementptr inbounds nuw i8, ptr %.331304528.i, i64 6
  store i16 %i.bcy, ptr %i.bcz, align 2, !tbaa !58
  %i.bda = getelementptr inbounds nuw i8, ptr %.331414527.i, i64 8
  %i.bdb = getelementptr inbounds nuw [2 x i8], ptr %.331304528.i, i64 %i.ays ; 5 uses
  %i.bdc = load i16, ptr %i.bda, align 2, !tbaa !58
  store i16 %i.bdc, ptr %i.bdb, align 2, !tbaa !58
  %i.bdd = getelementptr inbounds nuw i8, ptr %.331414527.i, i64 10
  %i.bde = load i16, ptr %i.bdd, align 2, !tbaa !58
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdb, i64 2
  store i16 %i.bde, ptr %i.bdf, align 2, !tbaa !58
  %i.bdg = getelementptr inbounds nuw i8, ptr %.331414527.i, i64 12
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !58
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdb, i64 4
  store i16 %i.bdh, ptr %i.bdi, align 2, !tbaa !58
  %i.bdj = getelementptr inbounds nuw i8, ptr %.331414527.i, i64 14
  %i.bdk = load i16, ptr %i.bdj, align 2, !tbaa !58
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdb, i64 6
  store i16 %i.bdk, ptr %i.bdl, align 2, !tbaa !58
  %i.bdm = getelementptr inbounds nuw i8, ptr %.331414527.i, i64 16 ; 2 uses
  %i.bdn = getelementptr inbounds nuw [2 x i8], ptr %i.bdb, i64 %i.ays ; 2 uses
  %i.bdo = add i64 %.331204529.i, -8              ; 3 uses
  %i.bdp = icmp ugt i64 %i.bdo, 3
  br i1 %i.bdp, label %.lr.ph4530.i, label %.loopexit3667.i, !llvm.loop !146

.lr.ph4523.i:                                     ; preds = %.preheader3676.i, %.lr.ph4523.i
  %.431214522.i = phi i64 [ %i.bef, %.lr.ph4523.i ], [ %.0, %.preheader3676.i ]
  %.431314521.i = phi ptr [ %i.bee, %.lr.ph4523.i ], [ %i.l, %.preheader3676.i ] ; 6 uses
  %.431424520.i = phi ptr [ %i.bed, %.lr.ph4523.i ], [ %i.m, %.preheader3676.i ] ; 6 uses
  %i.bdq = load i16, ptr %.431424520.i, align 2, !tbaa !58
  store i16 %i.bdq, ptr %.431314521.i, align 2, !tbaa !58
  %i.bdr = getelementptr inbounds nuw i8, ptr %.431424520.i, i64 2
  %i.bds = load i16, ptr %i.bdr, align 2, !tbaa !58
  %i.bdt = getelementptr inbounds nuw i8, ptr %.431314521.i, i64 2
  store i16 %i.bds, ptr %i.bdt, align 2, !tbaa !58
  %i.bdu = getelementptr inbounds nuw i8, ptr %.431424520.i, i64 4
  %i.bdv = load i16, ptr %i.bdu, align 2, !tbaa !58
  %i.bdw = getelementptr inbounds nuw i8, ptr %.431314521.i, i64 4
  store i16 %i.bdv, ptr %i.bdw, align 2, !tbaa !58
  %i.bdx = getelementptr inbounds nuw i8, ptr %.431424520.i, i64 6
  %i.bdy = load i16, ptr %i.bdx, align 2, !tbaa !58
  %i.bdz = getelementptr inbounds nuw i8, ptr %.431314521.i, i64 6
  store i16 %i.bdy, ptr %i.bdz, align 2, !tbaa !58
  %i.bea = getelementptr inbounds nuw i8, ptr %.431424520.i, i64 8
  %i.beb = load i16, ptr %i.bea, align 2, !tbaa !58
  %i.bec = getelementptr inbounds nuw i8, ptr %.431314521.i, i64 8
  store i16 %i.beb, ptr %i.bec, align 2, !tbaa !58
  %i.bed = getelementptr inbounds nuw i8, ptr %.431424520.i, i64 10 ; 2 uses
  %i.bee = getelementptr inbounds nuw [2 x i8], ptr %.431314521.i, i64 %i.ays ; 2 uses
  %i.bef = add i64 %.431214522.i, -5              ; 3 uses
  %i.beg = icmp ugt i64 %i.bef, 4
  br i1 %i.beg, label %.lr.ph4523.i, label %.loopexit3667.i, !llvm.loop !147

.lr.ph4516.i:                                     ; preds = %.preheader3678.i, %.lr.ph4516.i
  %.531224515.i = phi i64 [ %i.bez, %.lr.ph4516.i ], [ %.0, %.preheader3678.i ]
  %.531324514.i = phi ptr [ %i.bey, %.lr.ph4516.i ], [ %i.l, %.preheader3678.i ] ; 7 uses
  %.531434513.i = phi ptr [ %i.bex, %.lr.ph4516.i ], [ %i.m, %.preheader3678.i ] ; 7 uses
  %i.beh = load i16, ptr %.531434513.i, align 2, !tbaa !58
  store i16 %i.beh, ptr %.531324514.i, align 2, !tbaa !58
  %i.bei = getelementptr inbounds nuw i8, ptr %.531434513.i, i64 2
  %i.bej = load i16, ptr %i.bei, align 2, !tbaa !58
  %i.bek = getelementptr inbounds nuw i8, ptr %.531324514.i, i64 2
  store i16 %i.bej, ptr %i.bek, align 2, !tbaa !58
  %i.bel = getelementptr inbounds nuw i8, ptr %.531434513.i, i64 4
  %i.bem = load i16, ptr %i.bel, align 2, !tbaa !58
  %i.ben = getelementptr inbounds nuw i8, ptr %.531324514.i, i64 4
  store i16 %i.bem, ptr %i.ben, align 2, !tbaa !58
  %i.beo = getelementptr inbounds nuw i8, ptr %.531434513.i, i64 6
  %i.bep = load i16, ptr %i.beo, align 2, !tbaa !58
  %i.beq = getelementptr inbounds nuw i8, ptr %.531324514.i, i64 6
  store i16 %i.bep, ptr %i.beq, align 2, !tbaa !58
  %i.ber = getelementptr inbounds nuw i8, ptr %.531434513.i, i64 8
  %i.bes = load i16, ptr %i.ber, align 2, !tbaa !58
  %i.bet = getelementptr inbounds nuw i8, ptr %.531324514.i, i64 8
  store i16 %i.bes, ptr %i.bet, align 2, !tbaa !58
  %i.beu = getelementptr inbounds nuw i8, ptr %.531434513.i, i64 10
  %i.bev = load i16, ptr %i.beu, align 2, !tbaa !58
  %i.bew = getelementptr inbounds nuw i8, ptr %.531324514.i, i64 10
  store i16 %i.bev, ptr %i.bew, align 2, !tbaa !58
  %i.bex = getelementptr inbounds nuw i8, ptr %.531434513.i, i64 12 ; 2 uses
  %i.bey = getelementptr inbounds nuw [2 x i8], ptr %.531324514.i, i64 %i.ays ; 2 uses
  %i.bez = add i64 %.531224515.i, -6              ; 3 uses
  %i.bfa = icmp ugt i64 %i.bez, 5
  br i1 %i.bfa, label %.lr.ph4516.i, label %.loopexit3667.i, !llvm.loop !148

.lr.ph4509.i:                                     ; preds = %.preheader3680.i, %.lr.ph4509.i
  %.631234508.i = phi i64 [ %i.bfw, %.lr.ph4509.i ], [ %.0, %.preheader3680.i ]
  %.631334507.i = phi ptr [ %i.bfv, %.lr.ph4509.i ], [ %i.l, %.preheader3680.i ] ; 8 uses
  %.631444506.i = phi ptr [ %i.bfu, %.lr.ph4509.i ], [ %i.m, %.preheader3680.i ] ; 8 uses
  %i.bfb = load i16, ptr %.631444506.i, align 2, !tbaa !58
  store i16 %i.bfb, ptr %.631334507.i, align 2, !tbaa !58
  %i.bfc = getelementptr inbounds nuw i8, ptr %.631444506.i, i64 2
  %i.bfd = load i16, ptr %i.bfc, align 2, !tbaa !58
  %i.bfe = getelementptr inbounds nuw i8, ptr %.631334507.i, i64 2
  store i16 %i.bfd, ptr %i.bfe, align 2, !tbaa !58
  %i.bff = getelementptr inbounds nuw i8, ptr %.631444506.i, i64 4
  %i.bfg = load i16, ptr %i.bff, align 2, !tbaa !58
  %i.bfh = getelementptr inbounds nuw i8, ptr %.631334507.i, i64 4
  store i16 %i.bfg, ptr %i.bfh, align 2, !tbaa !58
  %i.bfi = getelementptr inbounds nuw i8, ptr %.631444506.i, i64 6
  %i.bfj = load i16, ptr %i.bfi, align 2, !tbaa !58
  %i.bfk = getelementptr inbounds nuw i8, ptr %.631334507.i, i64 6
  store i16 %i.bfj, ptr %i.bfk, align 2, !tbaa !58
  %i.bfl = getelementptr inbounds nuw i8, ptr %.631444506.i, i64 8
  %i.bfm = load i16, ptr %i.bfl, align 2, !tbaa !58
  %i.bfn = getelementptr inbounds nuw i8, ptr %.631334507.i, i64 8
  store i16 %i.bfm, ptr %i.bfn, align 2, !tbaa !58
  %i.bfo = getelementptr inbounds nuw i8, ptr %.631444506.i, i64 10
  %i.bfp = load i16, ptr %i.bfo, align 2, !tbaa !58
  %i.bfq = getelementptr inbounds nuw i8, ptr %.631334507.i, i64 10
  store i16 %i.bfp, ptr %i.bfq, align 2, !tbaa !58
  %i.bfr = getelementptr inbounds nuw i8, ptr %.631444506.i, i64 12
  %i.bfs = load i16, ptr %i.bfr, align 2, !tbaa !58
  %i.bft = getelementptr inbounds nuw i8, ptr %.631334507.i, i64 12
  store i16 %i.bfs, ptr %i.bft, align 2, !tbaa !58
  %i.bfu = getelementptr inbounds nuw i8, ptr %.631444506.i, i64 14 ; 2 uses
  %i.bfv = getelementptr inbounds nuw [2 x i8], ptr %.631334507.i, i64 %i.ays ; 2 uses
  %i.bfw = add i64 %.631234508.i, -7              ; 3 uses
  %i.bfx = icmp ugt i64 %i.bfw, 6
  br i1 %i.bfx, label %.lr.ph4509.i, label %.loopexit3667.i, !llvm.loop !149

bb.y:                                             ; preds = %bb.x
  %i.bfy = icmp eq i64 %i.t, 8
  %i.bfz = icmp ugt i64 %.0, 7
  %or.cond31.i = and i1 %i.bfz, %i.bfy
  br i1 %or.cond31.i, label %.preheader3666.i, label %.loopexit3667.i

.preheader3666.i:                                 ; preds = %bb.y, %.preheader3666.i
  %.73145.i = phi ptr [ %i.bgw, %.preheader3666.i ], [ %i.m, %bb.y ] ; 9 uses
  %.73134.i = phi ptr [ %i.bgx, %.preheader3666.i ], [ %i.l, %bb.y ] ; 9 uses
  %.73124.i = phi i64 [ %i.bgy, %.preheader3666.i ], [ %.0, %bb.y ]
  %i.bga = load i16, ptr %.73145.i, align 2, !tbaa !58
  store i16 %i.bga, ptr %.73134.i, align 2, !tbaa !58
  %i.bgb = getelementptr inbounds nuw i8, ptr %.73145.i, i64 2
  %i.bgc = load i16, ptr %i.bgb, align 2, !tbaa !58
  %i.bgd = getelementptr inbounds nuw i8, ptr %.73134.i, i64 2
  store i16 %i.bgc, ptr %i.bgd, align 2, !tbaa !58
  %i.bge = getelementptr inbounds nuw i8, ptr %.73145.i, i64 4
  %i.bgf = load i16, ptr %i.bge, align 2, !tbaa !58
  %i.bgg = getelementptr inbounds nuw i8, ptr %.73134.i, i64 4
  store i16 %i.bgf, ptr %i.bgg, align 2, !tbaa !58
  %i.bgh = getelementptr inbounds nuw i8, ptr %.73145.i, i64 6
  %i.bgi = load i16, ptr %i.bgh, align 2, !tbaa !58
  %i.bgj = getelementptr inbounds nuw i8, ptr %.73134.i, i64 6
  store i16 %i.bgi, ptr %i.bgj, align 2, !tbaa !58
  %i.bgk = getelementptr inbounds nuw i8, ptr %.73145.i, i64 8
  %i.bgl = load i16, ptr %i.bgk, align 2, !tbaa !58
  %i.bgm = getelementptr inbounds nuw i8, ptr %.73134.i, i64 8
  store i16 %i.bgl, ptr %i.bgm, align 2, !tbaa !58
  %i.bgn = getelementptr inbounds nuw i8, ptr %.73145.i, i64 10
  %i.bgo = load i16, ptr %i.bgn, align 2, !tbaa !58
  %i.bgp = getelementptr inbounds nuw i8, ptr %.73134.i, i64 10
  store i16 %i.bgo, ptr %i.bgp, align 2, !tbaa !58
  %i.bgq = getelementptr inbounds nuw i8, ptr %.73145.i, i64 12
  %i.bgr = load i16, ptr %i.bgq, align 2, !tbaa !58
  %i.bgs = getelementptr inbounds nuw i8, ptr %.73134.i, i64 12
  store i16 %i.bgr, ptr %i.bgs, align 2, !tbaa !58
  %i.bgt = getelementptr inbounds nuw i8, ptr %.73145.i, i64 14
  %i.bgu = load i16, ptr %i.bgt, align 2, !tbaa !58
  %i.bgv = getelementptr inbounds nuw i8, ptr %.73134.i, i64 14
  store i16 %i.bgu, ptr %i.bgv, align 2, !tbaa !58
  %i.bgw = getelementptr inbounds nuw i8, ptr %.73145.i, i64 16 ; 2 uses
  %i.bgx = getelementptr inbounds nuw [2 x i8], ptr %.73134.i, i64 %i.ays ; 2 uses
  %i.bgy = add i64 %.73124.i, -8                  ; 3 uses
  %.old30.i = icmp ugt i64 %i.bgy, 7
  br i1 %.old30.i, label %.preheader3666.i, label %.loopexit3667.i

.loopexit3667.i:                                  ; preds = %.lr.ph4509.i, %.lr.ph4516.i, %.lr.ph4523.i, %.lr.ph4530.i.prol.loopexit, %.lr.ph4530.i, %.lr.ph4537.i, %.lr.ph4544.i.prol.loopexit, %.lr.ph4544.i, %.preheader3666.i, %bb.y, %.preheader3670.i, %.preheader3672.i, %.preheader3674.i, %.preheader3676.i, %.preheader3678.i, %.preheader3680.i
  %.83146.i = phi ptr [ %i.m, %bb.y ], [ %i.bdm, %.lr.ph4530.i ], [ %i.bed, %.lr.ph4523.i ], [ %i.bex, %.lr.ph4516.i ], [ %i.bgw, %.preheader3666.i ], [ %i.bcb, %.lr.ph4544.i ], [ %i.bcm, %.lr.ph4537.i ], [ %i.m, %.preheader3670.i ], [ %i.m, %.preheader3672.i ], [ %i.m, %.preheader3674.i ], [ %i.m, %.preheader3676.i ], [ %i.m, %.preheader3678.i ], [ %i.m, %.preheader3680.i ], [ %.lcssa3295.unr, %.lr.ph4544.i.prol.loopexit ], [ %.lcssa3303.unr, %.lr.ph4530.i.prol.loopexit ], [ %i.bfu, %.lr.ph4509.i ] ; 7 uses
  %.83135.i = phi ptr [ %i.l, %bb.y ], [ %i.bdn, %.lr.ph4530.i ], [ %i.bee, %.lr.ph4523.i ], [ %i.bey, %.lr.ph4516.i ], [ %i.bgx, %.preheader3666.i ], [ %i.bcc, %.lr.ph4544.i ], [ %i.bcn, %.lr.ph4537.i ], [ %i.l, %.preheader3670.i ], [ %i.l, %.preheader3672.i ], [ %i.l, %.preheader3674.i ], [ %i.l, %.preheader3676.i ], [ %i.l, %.preheader3678.i ], [ %i.l, %.preheader3680.i ], [ %.lcssa3294.unr, %.lr.ph4544.i.prol.loopexit ], [ %.lcssa3302.unr, %.lr.ph4530.i.prol.loopexit ], [ %i.bfv, %.lr.ph4509.i ] ; 7 uses
  %.83125.i = phi i64 [ %.0, %bb.y ], [ %i.bdo, %.lr.ph4530.i ], [ %i.bef, %.lr.ph4523.i ], [ %i.bez, %.lr.ph4516.i ], [ %i.bgy, %.preheader3666.i ], [ %i.bcd, %.lr.ph4544.i ], [ %i.bco, %.lr.ph4537.i ], [ %.0, %.preheader3670.i ], [ %.0, %.preheader3672.i ], [ %.0, %.preheader3674.i ], [ %.0, %.preheader3676.i ], [ %.0, %.preheader3678.i ], [ %.0, %.preheader3680.i ], [ %.lcssa3293.unr, %.lr.ph4544.i.prol.loopexit ], [ %.lcssa3301.unr, %.lr.ph4530.i.prol.loopexit ], [ %i.bfw, %.lr.ph4509.i ] ; 11 uses
  %.not3405.i = icmp eq i64 %.83125.i, 0
  br i1 %.not3405.i, label %opal_datatype_unpack_predefined_element.exit.thread, label %iter.check2853

iter.check2853:                                   ; preds = %.loopexit3667.i
  %.83146.i2832 = ptrtoaddr ptr %.83135.i to i64
  %.83135.i2831 = ptrtoaddr ptr %.83146.i to i64
  %min.iters.check2835 = icmp ult i64 %.83125.i, 4
  %i.bgz = sub i64 %.83135.i2831, %.83146.i2832
  %diff.check2833 = icmp ugt i64 %i.bgz, -32
  %or.cond3055 = select i1 %min.iters.check2835, i1 true, i1 %diff.check2833
  br i1 %or.cond3055, label %.preheader3664.i.preheader, label %vector.main.loop.iter.check2836

vector.main.loop.iter.check2836:                  ; preds = %iter.check2853
  %min.iters.check2837 = icmp ult i64 %.83125.i, 16
  br i1 %min.iters.check2837, label %vec.epilog.ph2857, label %vector.ph2838

vector.ph2838:                                    ; preds = %vector.main.loop.iter.check2836
  %i.bha = and i64 %.83125.i, 12
  %n.vec2839 = and i64 %.83125.i, -16             ; 4 uses
  %i.bhb = shl i64 %n.vec2839, 1                  ; 2 uses
  %i.bhc = getelementptr i8, ptr %.83146.i, i64 %i.bhb ; 2 uses
  %i.bhd = getelementptr i8, ptr %.83135.i, i64 %i.bhb ; 2 uses
  %i.bhe = and i64 %.83125.i, 15
  br label %vector.body2840

vector.body2840:                                  ; preds = %vector.ph2838, %vector.body2840
  %index2841 = phi i64 [ 0, %vector.ph2838 ], [ %index.next2846, %vector.body2840 ] ; 2 uses
  %i.bhf = shl i64 %index2841, 1                  ; 2 uses
  %next.gep2842 = getelementptr i8, ptr %.83146.i, i64 %i.bhf ; 2 uses
  %next.gep2843 = getelementptr i8, ptr %.83135.i, i64 %i.bhf ; 2 uses
  %i.bhg = getelementptr i8, ptr %next.gep2842, i64 16
  %wide.load2844 = load <8 x i16>, ptr %next.gep2842, align 2, !tbaa !58
  %wide.load2845 = load <8 x i16>, ptr %i.bhg, align 2, !tbaa !58
  %i.bhh = getelementptr i8, ptr %next.gep2843, i64 16
  store <8 x i16> %wide.load2844, ptr %next.gep2843, align 2, !tbaa !58
  store <8 x i16> %wide.load2845, ptr %i.bhh, align 2, !tbaa !58
  %index.next2846 = add nuw i64 %index2841, 16    ; 2 uses
  %i.bhi = icmp eq i64 %index.next2846, %n.vec2839
  br i1 %i.bhi, label %middle.block2847, label %vector.body2840, !llvm.loop !150

middle.block2847:                                 ; preds = %vector.body2840
  %cmp.n2848 = icmp eq i64 %.83125.i, %n.vec2839
  br i1 %cmp.n2848, label %opal_datatype_unpack_predefined_element.exit.thread, label %vec.epilog.iter.check2855

vec.epilog.iter.check2855:                        ; preds = %middle.block2847
  %min.epilog.iters.check2856 = icmp eq i64 %i.bha, 0
  br i1 %min.epilog.iters.check2856, label %.preheader3664.i.preheader, label %vec.epilog.ph2857, !prof !307

vec.epilog.ph2857:                                ; preds = %vector.main.loop.iter.check2836, %vec.epilog.iter.check2855
  %vec.epilog.resume.val2849 = phi i64 [ %n.vec2839, %vec.epilog.iter.check2855 ], [ 0, %vector.main.loop.iter.check2836 ]
  %n.vec2858 = and i64 %.83125.i, -4              ; 3 uses
  %i.bhj = shl i64 %n.vec2858, 1                  ; 2 uses
  %i.bhk = getelementptr i8, ptr %.83146.i, i64 %i.bhj ; 2 uses
  %i.bhl = getelementptr i8, ptr %.83135.i, i64 %i.bhj ; 2 uses
  %i.bhm = and i64 %.83125.i, 3
  br label %vec.epilog.vector.body2859

vec.epilog.vector.body2859:                       ; preds = %vec.epilog.vector.body2859, %vec.epilog.ph2857
  %index2860 = phi i64 [ %vec.epilog.resume.val2849, %vec.epilog.ph2857 ], [ %index.next2864, %vec.epilog.vector.body2859 ] ; 2 uses
  %i.bhn = shl i64 %index2860, 1                  ; 2 uses
  %next.gep2861 = getelementptr i8, ptr %.83146.i, i64 %i.bhn
  %next.gep2862 = getelementptr i8, ptr %.83135.i, i64 %i.bhn
  %wide.load2863 = load <4 x i16>, ptr %next.gep2861, align 2, !tbaa !58
  store <4 x i16> %wide.load2863, ptr %next.gep2862, align 2, !tbaa !58
  %index.next2864 = add nuw i64 %index2860, 4     ; 2 uses
  %i.bho = icmp eq i64 %index.next2864, %n.vec2858
  br i1 %i.bho, label %vec.epilog.middle.block2865, label %vec.epilog.vector.body2859, !llvm.loop !151

vec.epilog.middle.block2865:                      ; preds = %vec.epilog.vector.body2859
  %cmp.n2866 = icmp eq i64 %.83125.i, %n.vec2858
  br i1 %cmp.n2866, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3664.i.preheader

.preheader3664.i.preheader:                       ; preds = %iter.check2853, %vec.epilog.iter.check2855, %vec.epilog.middle.block2865
  %.93147.i.ph = phi ptr [ %.83146.i, %iter.check2853 ], [ %i.bhc, %vec.epilog.iter.check2855 ], [ %i.bhk, %vec.epilog.middle.block2865 ] ; 2 uses
  %.93136.i.ph = phi ptr [ %.83135.i, %iter.check2853 ], [ %i.bhd, %vec.epilog.iter.check2855 ], [ %i.bhl, %vec.epilog.middle.block2865 ] ; 2 uses
  %.93126.i.ph = phi i64 [ %.83125.i, %iter.check2853 ], [ %i.bhe, %vec.epilog.iter.check2855 ], [ %i.bhm, %vec.epilog.middle.block2865 ] ; 4 uses
  %i.bhp = add i64 %.93126.i.ph, -1
  %xtraiter3814 = and i64 %.93126.i.ph, 7         ; 2 uses
  %lcmp.mod3815.not = icmp eq i64 %xtraiter3814, 0
  br i1 %lcmp.mod3815.not, label %.preheader3664.i.prol.loopexit, label %.preheader3664.i.prol

.preheader3664.i.prol:                            ; preds = %.preheader3664.i.preheader, %.preheader3664.i.prol
  %.93147.i.prol = phi ptr [ %i.bhq, %.preheader3664.i.prol ], [ %.93147.i.ph, %.preheader3664.i.preheader ] ; 2 uses
  %.93136.i.prol = phi ptr [ %i.bhs, %.preheader3664.i.prol ], [ %.93136.i.ph, %.preheader3664.i.preheader ] ; 2 uses
  %.93126.i.prol = phi i64 [ %i.bht, %.preheader3664.i.prol ], [ %.93126.i.ph, %.preheader3664.i.preheader ]
  %prol.iter3816 = phi i64 [ %prol.iter3816.next, %.preheader3664.i.prol ], [ 0, %.preheader3664.i.preheader ]
  %i.bhq = getelementptr inbounds nuw i8, ptr %.93147.i.prol, i64 2 ; 3 uses
  %i.bhr = load i16, ptr %.93147.i.prol, align 2, !tbaa !58
  %i.bhs = getelementptr inbounds nuw i8, ptr %.93136.i.prol, i64 2 ; 3 uses
  store i16 %i.bhr, ptr %.93136.i.prol, align 2, !tbaa !58
  %i.bht = add i64 %.93126.i.prol, -1             ; 2 uses
  %prol.iter3816.next = add i64 %prol.iter3816, 1 ; 2 uses
  %prol.iter3816.cmp.not = icmp eq i64 %prol.iter3816.next, %xtraiter3814
  br i1 %prol.iter3816.cmp.not, label %.preheader3664.i.prol.loopexit, label %.preheader3664.i.prol, !llvm.loop !152

.preheader3664.i.prol.loopexit:                   ; preds = %.preheader3664.i.prol, %.preheader3664.i.preheader
  %.lcssa3285.unr = phi ptr [ poison, %.preheader3664.i.preheader ], [ %i.bhq, %.preheader3664.i.prol ]
  %.lcssa3284.unr.a = phi ptr [ poison, %.preheader3664.i.preheader ], [ %i.bhs, %.preheader3664.i.prol ]
  %.93147.i.unr = phi ptr [ %.93147.i.ph, %.preheader3664.i.preheader ], [ %i.bhq, %.preheader3664.i.prol ]
  %.93136.i.unr = phi ptr [ %.93136.i.ph, %.preheader3664.i.preheader ], [ %i.bhs, %.preheader3664.i.prol ]
  %.93126.i.unr = phi i64 [ %.93126.i.ph, %.preheader3664.i.preheader ], [ %i.bht, %.preheader3664.i.prol ]
  %i.bhu = icmp ult i64 %i.bhp, 7
  br i1 %i.bhu, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3664.i

.preheader3664.i:                                 ; preds = %.preheader3664.i.prol.loopexit, %.preheader3664.i
  %.93147.i = phi ptr [ %i.biq, %.preheader3664.i ], [ %.93147.i.unr, %.preheader3664.i.prol.loopexit ] ; 9 uses
  %.93136.i = phi ptr [ %i.bis, %.preheader3664.i ], [ %.93136.i.unr, %.preheader3664.i.prol.loopexit ] ; 9 uses
  %.93126.i = phi i64 [ %i.bit, %.preheader3664.i ], [ %.93126.i.unr, %.preheader3664.i.prol.loopexit ]
  %i.bhv = getelementptr inbounds nuw i8, ptr %.93147.i, i64 2
  %i.bhw = load i16, ptr %.93147.i, align 2, !tbaa !58
  %i.bhx = getelementptr inbounds nuw i8, ptr %.93136.i, i64 2
  store i16 %i.bhw, ptr %.93136.i, align 2, !tbaa !58
  %i.bhy = getelementptr inbounds nuw i8, ptr %.93147.i, i64 4
  %i.bhz = load i16, ptr %i.bhv, align 2, !tbaa !58
  %i.bia = getelementptr inbounds nuw i8, ptr %.93136.i, i64 4
  store i16 %i.bhz, ptr %i.bhx, align 2, !tbaa !58
  %i.bib = getelementptr inbounds nuw i8, ptr %.93147.i, i64 6
  %i.bic = load i16, ptr %i.bhy, align 2, !tbaa !58
  %i.bid = getelementptr inbounds nuw i8, ptr %.93136.i, i64 6
  store i16 %i.bic, ptr %i.bia, align 2, !tbaa !58
  %i.bie = getelementptr inbounds nuw i8, ptr %.93147.i, i64 8
  %i.bif = load i16, ptr %i.bib, align 2, !tbaa !58
  %i.big = getelementptr inbounds nuw i8, ptr %.93136.i, i64 8
  store i16 %i.bif, ptr %i.bid, align 2, !tbaa !58
  %i.bih = getelementptr inbounds nuw i8, ptr %.93147.i, i64 10
  %i.bii = load i16, ptr %i.bie, align 2, !tbaa !58
  %i.bij = getelementptr inbounds nuw i8, ptr %.93136.i, i64 10
  store i16 %i.bii, ptr %i.big, align 2, !tbaa !58
  %i.bik = getelementptr inbounds nuw i8, ptr %.93147.i, i64 12
  %i.bil = load i16, ptr %i.bih, align 2, !tbaa !58
  %i.bim = getelementptr inbounds nuw i8, ptr %.93136.i, i64 12
  store i16 %i.bil, ptr %i.bij, align 2, !tbaa !58
  %i.bin = getelementptr inbounds nuw i8, ptr %.93147.i, i64 14
  %i.bio = load i16, ptr %i.bik, align 2, !tbaa !58
  %i.bip = getelementptr inbounds nuw i8, ptr %.93136.i, i64 14
  store i16 %i.bio, ptr %i.bim, align 2, !tbaa !58
  %i.biq = getelementptr inbounds nuw i8, ptr %.93147.i, i64 16 ; 2 uses
  %i.bir = load i16, ptr %i.bin, align 2, !tbaa !58
  %i.bis = getelementptr inbounds nuw i8, ptr %.93136.i, i64 16 ; 2 uses
  store i16 %i.bir, ptr %i.bip, align 2, !tbaa !58
  %i.bit = add i64 %.93126.i, -8                  ; 2 uses
  %.old33.not.i.7 = icmp eq i64 %i.bit, 0
  br i1 %.old33.not.i.7, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3664.i, !llvm.loop !153

bb.z:                                             ; preds = %bb.e
  %i.biu = ptrtoint ptr %i.m to i64
  %i.biv = and i64 %i.biu, 3
  %.not3396.i = icmp eq i64 %i.biv, 0
  %i.biw = ptrtoint ptr %i.l to i64
  %i.bix = and i64 %i.biw, 3
  %.not3397.i = icmp eq i64 %i.bix, 0
  %or.cond3438.i = select i1 %.not3396.i, i1 %.not3397.i, i1 false
  br i1 %or.cond3438.i, label %bb.aa, label %opal_datatype_unpack_predefined_element.exit

bb.aa:                                            ; preds = %bb.z
  %i.biy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.biz = load i64, ptr %i.biy, align 8, !tbaa !56 ; 2 uses
  %i.bja = and i64 %i.biz, 3
  %.not3398.i = icmp ne i64 %i.bja, 0
  %i.bjb = icmp ugt i64 %.0, %i.t
  %or.cond3439.i = and i1 %i.bjb, %.not3398.i
  br i1 %or.cond3439.i, label %opal_datatype_unpack_predefined_element.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bjc = lshr i64 %i.biz, 2                     ; 22 uses
  switch i64 %i.t, label %bb.ac [
    i64 1, label %.preheader3686.i
    i64 2, label %.preheader3688.i
    i64 3, label %.preheader3690.i
    i64 4, label %.preheader3692.i
    i64 5, label %.preheader3694.i
    i64 6, label %.preheader3696.i
    i64 7, label %.preheader3698.i
  ]

.preheader3698.i:                                 ; preds = %bb.ab
  %i.bjd = icmp ugt i64 %.0, 6
  br i1 %i.bjd, label %.lr.ph4460.i, label %.loopexit3685.i

.preheader3696.i:                                 ; preds = %bb.ab
  %i.bje = icmp ugt i64 %.0, 5
  br i1 %i.bje, label %.lr.ph4467.i, label %.loopexit3685.i

.preheader3694.i:                                 ; preds = %bb.ab
  %i.bjf = icmp ugt i64 %.0, 4
  br i1 %i.bjf, label %.lr.ph4474.i, label %.loopexit3685.i

.preheader3692.i:                                 ; preds = %bb.ab
  %i.bjg = icmp ugt i64 %.0, 3
  br i1 %i.bjg, label %.lr.ph4481.i.preheader, label %.loopexit3685.i

.lr.ph4481.i.preheader:                           ; preds = %.preheader3692.i
  %i.bjh = add i64 %.0, -4                        ; 2 uses
  %i.bji = and i64 %i.bjh, 4
  %lcmp.mod3794.not.not = icmp eq i64 %i.bji, 0
  br i1 %lcmp.mod3794.not.not, label %.lr.ph4481.i.prol, label %.lr.ph4481.i.prol.loopexit

.lr.ph4481.i.prol:                                ; preds = %.lr.ph4481.i.preheader
  %i.bjj = load i32, ptr %i.m, align 4, !tbaa !34
  store i32 %i.bjj, ptr %i.l, align 4, !tbaa !34
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bjl = load i32, ptr %i.bjk, align 4, !tbaa !34
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.bjl, ptr %i.bjm, align 4, !tbaa !34
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !34
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.bjo, ptr %i.bjp, align 4, !tbaa !34
end_hunk_3
begin_hunk_4_@unpack_predefined_data:bb.a
  %i.cgy = getelementptr inbounds nuw i8, ptr %.230444338.i, i64 4
  %i.cgz = load half, ptr %i.cgy, align 2, !tbaa !309
  %i.cha = getelementptr inbounds nuw i8, ptr %.230334339.i, i64 4
  store half %i.cgz, ptr %i.cha, align 2, !tbaa !309
  %i.chb = getelementptr inbounds nuw i8, ptr %.230444338.i, i64 6 ; 2 uses
  %i.chc = getelementptr inbounds nuw [2 x i8], ptr %.230334339.i, i64 %i.cdh ; 2 uses
  %i.chd = add i64 %.230234340.i, -3              ; 3 uses
  %i.che = icmp ugt i64 %i.chd, 2
  br i1 %i.che, label %.lr.ph4341.i, label %.loopexit3739.i, !llvm.loop !182

.lr.ph4334.i:                                     ; preds = %.lr.ph4334.i.prol.loopexit, %.lr.ph4334.i
  %.330244333.i = phi i64 [ %i.cid, %.lr.ph4334.i ], [ %.330244333.i.unr, %.lr.ph4334.i.prol.loopexit ]
  %.330344332.i = phi ptr [ %i.cic, %.lr.ph4334.i ], [ %.330344332.i.unr, %.lr.ph4334.i.prol.loopexit ] ; 5 uses
  %.330454331.i = phi ptr [ %i.cib, %.lr.ph4334.i ], [ %.330454331.i.unr, %.lr.ph4334.i.prol.loopexit ] ; 9 uses
  %i.chf = load half, ptr %.330454331.i, align 2, !tbaa !309
  store half %i.chf, ptr %.330344332.i, align 2, !tbaa !309
  %i.chg = getelementptr inbounds nuw i8, ptr %.330454331.i, i64 2
  %i.chh = load half, ptr %i.chg, align 2, !tbaa !309
  %i.chi = getelementptr inbounds nuw i8, ptr %.330344332.i, i64 2
  store half %i.chh, ptr %i.chi, align 2, !tbaa !309
  %i.chj = getelementptr inbounds nuw i8, ptr %.330454331.i, i64 4
  %i.chk = load half, ptr %i.chj, align 2, !tbaa !309
  %i.chl = getelementptr inbounds nuw i8, ptr %.330344332.i, i64 4
  store half %i.chk, ptr %i.chl, align 2, !tbaa !309
  %i.chm = getelementptr inbounds nuw i8, ptr %.330454331.i, i64 6
  %i.chn = load half, ptr %i.chm, align 2, !tbaa !309
  %i.cho = getelementptr inbounds nuw i8, ptr %.330344332.i, i64 6
  store half %i.chn, ptr %i.cho, align 2, !tbaa !309
  %i.chp = getelementptr inbounds nuw i8, ptr %.330454331.i, i64 8
  %i.chq = getelementptr inbounds nuw [2 x i8], ptr %.330344332.i, i64 %i.cdh ; 5 uses
  %i.chr = load half, ptr %i.chp, align 2, !tbaa !309
  store half %i.chr, ptr %i.chq, align 2, !tbaa !309
  %i.chs = getelementptr inbounds nuw i8, ptr %.330454331.i, i64 10
  %i.cht = load half, ptr %i.chs, align 2, !tbaa !309
  %i.chu = getelementptr inbounds nuw i8, ptr %i.chq, i64 2
  store half %i.cht, ptr %i.chu, align 2, !tbaa !309
  %i.chv = getelementptr inbounds nuw i8, ptr %.330454331.i, i64 12
  %i.chw = load half, ptr %i.chv, align 2, !tbaa !309
  %i.chx = getelementptr inbounds nuw i8, ptr %i.chq, i64 4
  store half %i.chw, ptr %i.chx, align 2, !tbaa !309
  %i.chy = getelementptr inbounds nuw i8, ptr %.330454331.i, i64 14
  %i.chz = load half, ptr %i.chy, align 2, !tbaa !309
  %i.cia = getelementptr inbounds nuw i8, ptr %i.chq, i64 6
  store half %i.chz, ptr %i.cia, align 2, !tbaa !309
  %i.cib = getelementptr inbounds nuw i8, ptr %.330454331.i, i64 16 ; 2 uses
  %i.cic = getelementptr inbounds nuw [2 x i8], ptr %i.chq, i64 %i.cdh ; 2 uses
  %i.cid = add i64 %.330244333.i, -8              ; 3 uses
  %i.cie = icmp ugt i64 %i.cid, 3
  br i1 %i.cie, label %.lr.ph4334.i, label %.loopexit3739.i, !llvm.loop !183

.lr.ph4327.i:                                     ; preds = %.preheader3748.i, %.lr.ph4327.i
  %.430254326.i = phi i64 [ %i.ciu, %.lr.ph4327.i ], [ %.0, %.preheader3748.i ]
  %.430354325.i = phi ptr [ %i.cit, %.lr.ph4327.i ], [ %i.l, %.preheader3748.i ] ; 6 uses
  %.430464324.i = phi ptr [ %i.cis, %.lr.ph4327.i ], [ %i.m, %.preheader3748.i ] ; 6 uses
  %i.cif = load half, ptr %.430464324.i, align 2, !tbaa !309
  store half %i.cif, ptr %.430354325.i, align 2, !tbaa !309
  %i.cig = getelementptr inbounds nuw i8, ptr %.430464324.i, i64 2
  %i.cih = load half, ptr %i.cig, align 2, !tbaa !309
  %i.cii = getelementptr inbounds nuw i8, ptr %.430354325.i, i64 2
  store half %i.cih, ptr %i.cii, align 2, !tbaa !309
  %i.cij = getelementptr inbounds nuw i8, ptr %.430464324.i, i64 4
  %i.cik = load half, ptr %i.cij, align 2, !tbaa !309
  %i.cil = getelementptr inbounds nuw i8, ptr %.430354325.i, i64 4
  store half %i.cik, ptr %i.cil, align 2, !tbaa !309
  %i.cim = getelementptr inbounds nuw i8, ptr %.430464324.i, i64 6
  %i.cin = load half, ptr %i.cim, align 2, !tbaa !309
  %i.cio = getelementptr inbounds nuw i8, ptr %.430354325.i, i64 6
  store half %i.cin, ptr %i.cio, align 2, !tbaa !309
  %i.cip = getelementptr inbounds nuw i8, ptr %.430464324.i, i64 8
  %i.ciq = load half, ptr %i.cip, align 2, !tbaa !309
  %i.cir = getelementptr inbounds nuw i8, ptr %.430354325.i, i64 8
  store half %i.ciq, ptr %i.cir, align 2, !tbaa !309
  %i.cis = getelementptr inbounds nuw i8, ptr %.430464324.i, i64 10 ; 2 uses
  %i.cit = getelementptr inbounds nuw [2 x i8], ptr %.430354325.i, i64 %i.cdh ; 2 uses
  %i.ciu = add i64 %.430254326.i, -5              ; 3 uses
  %i.civ = icmp ugt i64 %i.ciu, 4
  br i1 %i.civ, label %.lr.ph4327.i, label %.loopexit3739.i, !llvm.loop !184

.lr.ph4320.i:                                     ; preds = %.preheader3750.i, %.lr.ph4320.i
  %.530264319.i = phi i64 [ %i.cjo, %.lr.ph4320.i ], [ %.0, %.preheader3750.i ]
  %.530364318.i = phi ptr [ %i.cjn, %.lr.ph4320.i ], [ %i.l, %.preheader3750.i ] ; 7 uses
  %.530474317.i = phi ptr [ %i.cjm, %.lr.ph4320.i ], [ %i.m, %.preheader3750.i ] ; 7 uses
  %i.ciw = load half, ptr %.530474317.i, align 2, !tbaa !309
  store half %i.ciw, ptr %.530364318.i, align 2, !tbaa !309
  %i.cix = getelementptr inbounds nuw i8, ptr %.530474317.i, i64 2
  %i.ciy = load half, ptr %i.cix, align 2, !tbaa !309
  %i.ciz = getelementptr inbounds nuw i8, ptr %.530364318.i, i64 2
  store half %i.ciy, ptr %i.ciz, align 2, !tbaa !309
  %i.cja = getelementptr inbounds nuw i8, ptr %.530474317.i, i64 4
  %i.cjb = load half, ptr %i.cja, align 2, !tbaa !309
  %i.cjc = getelementptr inbounds nuw i8, ptr %.530364318.i, i64 4
  store half %i.cjb, ptr %i.cjc, align 2, !tbaa !309
  %i.cjd = getelementptr inbounds nuw i8, ptr %.530474317.i, i64 6
  %i.cje = load half, ptr %i.cjd, align 2, !tbaa !309
  %i.cjf = getelementptr inbounds nuw i8, ptr %.530364318.i, i64 6
  store half %i.cje, ptr %i.cjf, align 2, !tbaa !309
  %i.cjg = getelementptr inbounds nuw i8, ptr %.530474317.i, i64 8
  %i.cjh = load half, ptr %i.cjg, align 2, !tbaa !309
  %i.cji = getelementptr inbounds nuw i8, ptr %.530364318.i, i64 8
  store half %i.cjh, ptr %i.cji, align 2, !tbaa !309
  %i.cjj = getelementptr inbounds nuw i8, ptr %.530474317.i, i64 10
  %i.cjk = load half, ptr %i.cjj, align 2, !tbaa !309
  %i.cjl = getelementptr inbounds nuw i8, ptr %.530364318.i, i64 10
  store half %i.cjk, ptr %i.cjl, align 2, !tbaa !309
  %i.cjm = getelementptr inbounds nuw i8, ptr %.530474317.i, i64 12 ; 2 uses
  %i.cjn = getelementptr inbounds nuw [2 x i8], ptr %.530364318.i, i64 %i.cdh ; 2 uses
  %i.cjo = add i64 %.530264319.i, -6              ; 3 uses
  %i.cjp = icmp ugt i64 %i.cjo, 5
  br i1 %i.cjp, label %.lr.ph4320.i, label %.loopexit3739.i, !llvm.loop !185

.lr.ph4313.i:                                     ; preds = %.preheader3752.i, %.lr.ph4313.i
  %.630274312.i = phi i64 [ %i.ckl, %.lr.ph4313.i ], [ %.0, %.preheader3752.i ]
  %.630374311.i = phi ptr [ %i.ckk, %.lr.ph4313.i ], [ %i.l, %.preheader3752.i ] ; 8 uses
  %.630484310.i = phi ptr [ %i.ckj, %.lr.ph4313.i ], [ %i.m, %.preheader3752.i ] ; 8 uses
  %i.cjq = load half, ptr %.630484310.i, align 2, !tbaa !309
  store half %i.cjq, ptr %.630374311.i, align 2, !tbaa !309
  %i.cjr = getelementptr inbounds nuw i8, ptr %.630484310.i, i64 2
  %i.cjs = load half, ptr %i.cjr, align 2, !tbaa !309
  %i.cjt = getelementptr inbounds nuw i8, ptr %.630374311.i, i64 2
  store half %i.cjs, ptr %i.cjt, align 2, !tbaa !309
  %i.cju = getelementptr inbounds nuw i8, ptr %.630484310.i, i64 4
  %i.cjv = load half, ptr %i.cju, align 2, !tbaa !309
  %i.cjw = getelementptr inbounds nuw i8, ptr %.630374311.i, i64 4
  store half %i.cjv, ptr %i.cjw, align 2, !tbaa !309
  %i.cjx = getelementptr inbounds nuw i8, ptr %.630484310.i, i64 6
  %i.cjy = load half, ptr %i.cjx, align 2, !tbaa !309
  %i.cjz = getelementptr inbounds nuw i8, ptr %.630374311.i, i64 6
  store half %i.cjy, ptr %i.cjz, align 2, !tbaa !309
  %i.cka = getelementptr inbounds nuw i8, ptr %.630484310.i, i64 8
  %i.ckb = load half, ptr %i.cka, align 2, !tbaa !309
  %i.ckc = getelementptr inbounds nuw i8, ptr %.630374311.i, i64 8
  store half %i.ckb, ptr %i.ckc, align 2, !tbaa !309
  %i.ckd = getelementptr inbounds nuw i8, ptr %.630484310.i, i64 10
  %i.cke = load half, ptr %i.ckd, align 2, !tbaa !309
  %i.ckf = getelementptr inbounds nuw i8, ptr %.630374311.i, i64 10
  store half %i.cke, ptr %i.ckf, align 2, !tbaa !309
  %i.ckg = getelementptr inbounds nuw i8, ptr %.630484310.i, i64 12
  %i.ckh = load half, ptr %i.ckg, align 2, !tbaa !309
  %i.cki = getelementptr inbounds nuw i8, ptr %.630374311.i, i64 12
  store half %i.ckh, ptr %i.cki, align 2, !tbaa !309
  %i.ckj = getelementptr inbounds nuw i8, ptr %.630484310.i, i64 14 ; 2 uses
  %i.ckk = getelementptr inbounds nuw [2 x i8], ptr %.630374311.i, i64 %i.cdh ; 2 uses
  %i.ckl = add i64 %.630274312.i, -7              ; 3 uses
  %i.ckm = icmp ugt i64 %i.ckl, 6
  br i1 %i.ckm, label %.lr.ph4313.i, label %.loopexit3739.i, !llvm.loop !186

bb.ak:                                            ; preds = %bb.aj
  %i.ckn = icmp eq i64 %i.t, 8
  %i.cko = icmp ugt i64 %.0, 7
  %or.cond49.i = and i1 %i.cko, %i.ckn
  br i1 %or.cond49.i, label %.preheader3738.i, label %.loopexit3739.i

.preheader3738.i:                                 ; preds = %bb.ak, %.preheader3738.i
  %.73049.i = phi ptr [ %i.cll, %.preheader3738.i ], [ %i.m, %bb.ak ] ; 9 uses
  %.73038.i = phi ptr [ %i.clm, %.preheader3738.i ], [ %i.l, %bb.ak ] ; 9 uses
  %.73028.i = phi i64 [ %i.cln, %.preheader3738.i ], [ %.0, %bb.ak ]
  %i.ckp = load half, ptr %.73049.i, align 2, !tbaa !309
  store half %i.ckp, ptr %.73038.i, align 2, !tbaa !309
  %i.ckq = getelementptr inbounds nuw i8, ptr %.73049.i, i64 2
  %i.ckr = load half, ptr %i.ckq, align 2, !tbaa !309
  %i.cks = getelementptr inbounds nuw i8, ptr %.73038.i, i64 2
  store half %i.ckr, ptr %i.cks, align 2, !tbaa !309
  %i.ckt = getelementptr inbounds nuw i8, ptr %.73049.i, i64 4
  %i.cku = load half, ptr %i.ckt, align 2, !tbaa !309
  %i.ckv = getelementptr inbounds nuw i8, ptr %.73038.i, i64 4
  store half %i.cku, ptr %i.ckv, align 2, !tbaa !309
  %i.ckw = getelementptr inbounds nuw i8, ptr %.73049.i, i64 6
  %i.ckx = load half, ptr %i.ckw, align 2, !tbaa !309
  %i.cky = getelementptr inbounds nuw i8, ptr %.73038.i, i64 6
  store half %i.ckx, ptr %i.cky, align 2, !tbaa !309
  %i.ckz = getelementptr inbounds nuw i8, ptr %.73049.i, i64 8
  %i.cla = load half, ptr %i.ckz, align 2, !tbaa !309
  %i.clb = getelementptr inbounds nuw i8, ptr %.73038.i, i64 8
  store half %i.cla, ptr %i.clb, align 2, !tbaa !309
  %i.clc = getelementptr inbounds nuw i8, ptr %.73049.i, i64 10
  %i.cld = load half, ptr %i.clc, align 2, !tbaa !309
  %i.cle = getelementptr inbounds nuw i8, ptr %.73038.i, i64 10
  store half %i.cld, ptr %i.cle, align 2, !tbaa !309
  %i.clf = getelementptr inbounds nuw i8, ptr %.73049.i, i64 12
  %i.clg = load half, ptr %i.clf, align 2, !tbaa !309
  %i.clh = getelementptr inbounds nuw i8, ptr %.73038.i, i64 12
  store half %i.clg, ptr %i.clh, align 2, !tbaa !309
  %i.cli = getelementptr inbounds nuw i8, ptr %.73049.i, i64 14
  %i.clj = load half, ptr %i.cli, align 2, !tbaa !309
  %i.clk = getelementptr inbounds nuw i8, ptr %.73038.i, i64 14
  store half %i.clj, ptr %i.clk, align 2, !tbaa !309
  %i.cll = getelementptr inbounds nuw i8, ptr %.73049.i, i64 16 ; 2 uses
  %i.clm = getelementptr inbounds nuw [2 x i8], ptr %.73038.i, i64 %i.cdh ; 2 uses
  %i.cln = add i64 %.73028.i, -8                  ; 3 uses
  %.old48.i = icmp ugt i64 %i.cln, 7
  br i1 %.old48.i, label %.preheader3738.i, label %.loopexit3739.i

.loopexit3739.i:                                  ; preds = %.lr.ph4313.i, %.lr.ph4320.i, %.lr.ph4327.i, %.lr.ph4334.i.prol.loopexit, %.lr.ph4334.i, %.lr.ph4341.i, %.lr.ph4348.i.prol.loopexit, %.lr.ph4348.i, %.preheader3738.i, %bb.ak, %.preheader3742.i, %.preheader3744.i, %.preheader3746.i, %.preheader3748.i, %.preheader3750.i, %.preheader3752.i
  %.83050.i = phi ptr [ %i.m, %bb.ak ], [ %i.cib, %.lr.ph4334.i ], [ %i.cis, %.lr.ph4327.i ], [ %i.cjm, %.lr.ph4320.i ], [ %i.cll, %.preheader3738.i ], [ %i.cgq, %.lr.ph4348.i ], [ %i.chb, %.lr.ph4341.i ], [ %i.m, %.preheader3742.i ], [ %i.m, %.preheader3744.i ], [ %i.m, %.preheader3746.i ], [ %i.m, %.preheader3748.i ], [ %i.m, %.preheader3750.i ], [ %i.m, %.preheader3752.i ], [ %.lcssa3429.unr, %.lr.ph4348.i.prol.loopexit ], [ %.lcssa3437.unr, %.lr.ph4334.i.prol.loopexit ], [ %i.ckj, %.lr.ph4313.i ] ; 7 uses
  %.83039.i = phi ptr [ %i.l, %bb.ak ], [ %i.cic, %.lr.ph4334.i ], [ %i.cit, %.lr.ph4327.i ], [ %i.cjn, %.lr.ph4320.i ], [ %i.clm, %.preheader3738.i ], [ %i.cgr, %.lr.ph4348.i ], [ %i.chc, %.lr.ph4341.i ], [ %i.l, %.preheader3742.i ], [ %i.l, %.preheader3744.i ], [ %i.l, %.preheader3746.i ], [ %i.l, %.preheader3748.i ], [ %i.l, %.preheader3750.i ], [ %i.l, %.preheader3752.i ], [ %.lcssa3428.unr, %.lr.ph4348.i.prol.loopexit ], [ %.lcssa3436.unr, %.lr.ph4334.i.prol.loopexit ], [ %i.ckk, %.lr.ph4313.i ] ; 7 uses
  %.83029.i = phi i64 [ %.0, %bb.ak ], [ %i.cid, %.lr.ph4334.i ], [ %i.ciu, %.lr.ph4327.i ], [ %i.cjo, %.lr.ph4320.i ], [ %i.cln, %.preheader3738.i ], [ %i.cgs, %.lr.ph4348.i ], [ %i.chd, %.lr.ph4341.i ], [ %.0, %.preheader3742.i ], [ %.0, %.preheader3744.i ], [ %.0, %.preheader3746.i ], [ %.0, %.preheader3748.i ], [ %.0, %.preheader3750.i ], [ %.0, %.preheader3752.i ], [ %.lcssa3427.unr, %.lr.ph4348.i.prol.loopexit ], [ %.lcssa3435.unr, %.lr.ph4334.i.prol.loopexit ], [ %i.ckl, %.lr.ph4313.i ] ; 11 uses
  %.not3390.i = icmp eq i64 %.83029.i, 0
  br i1 %.not3390.i, label %opal_datatype_unpack_predefined_element.exit.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit3739.i
  %.83050.i2721 = ptrtoaddr ptr %.83039.i to i64
  %.83039.i2720 = ptrtoaddr ptr %.83050.i to i64
  %min.iters.check2724 = icmp ult i64 %.83029.i, 8
  %i.clo = sub i64 %.83039.i2720, %.83050.i2721
  %diff.check2722 = icmp ugt i64 %i.clo, -32
  %or.cond3058 = select i1 %min.iters.check2724, i1 true, i1 %diff.check2722
  br i1 %or.cond3058, label %.preheader3736.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2725 = icmp ult i64 %.83029.i, 16
  br i1 %min.iters.check2725, label %vec.epilog.ph, label %vector.ph2726

vector.ph2726:                                    ; preds = %vector.main.loop.iter.check
  %i.clp = and i64 %.83029.i, 8
  %n.vec2727 = and i64 %.83029.i, -16             ; 4 uses
  %i.clq = shl i64 %n.vec2727, 1                  ; 2 uses
  %i.clr = getelementptr i8, ptr %.83050.i, i64 %i.clq ; 2 uses
  %i.cls = getelementptr i8, ptr %.83039.i, i64 %i.clq ; 2 uses
  %i.clt = and i64 %.83029.i, 15
  br label %vector.body2728

vector.body2728:                                  ; preds = %vector.ph2726, %vector.body2728
  %index2729 = phi i64 [ 0, %vector.ph2726 ], [ %index.next2734, %vector.body2728 ] ; 2 uses
  %i.clu = shl i64 %index2729, 1                  ; 2 uses
  %next.gep2730 = getelementptr i8, ptr %.83050.i, i64 %i.clu ; 2 uses
  %next.gep2731 = getelementptr i8, ptr %.83039.i, i64 %i.clu ; 2 uses
  %i.clv = getelementptr i8, ptr %next.gep2730, i64 16
  %wide.load2732 = load <8 x half>, ptr %next.gep2730, align 2, !tbaa !309
  %wide.load2733 = load <8 x half>, ptr %i.clv, align 2, !tbaa !309
  %i.clw = getelementptr i8, ptr %next.gep2731, i64 16
  store <8 x half> %wide.load2732, ptr %next.gep2731, align 2, !tbaa !309
  store <8 x half> %wide.load2733, ptr %i.clw, align 2, !tbaa !309
  %index.next2734 = add nuw i64 %index2729, 16    ; 2 uses
  %i.clx = icmp eq i64 %index.next2734, %n.vec2727
  br i1 %i.clx, label %middle.block2735, label %vector.body2728, !llvm.loop !187

middle.block2735:                                 ; preds = %vector.body2728
  %cmp.n2736 = icmp eq i64 %.83029.i, %n.vec2727
  br i1 %cmp.n2736, label %opal_datatype_unpack_predefined_element.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block2735
  %min.epilog.iters.check.not.not = icmp eq i64 %i.clp, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader3736.i.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec2727, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2740 = and i64 %.83029.i, -8              ; 3 uses
  %i.cly = shl i64 %n.vec2740, 1                  ; 2 uses
  %i.clz = getelementptr i8, ptr %.83050.i, i64 %i.cly ; 2 uses
  %i.cma = getelementptr i8, ptr %.83039.i, i64 %i.cly ; 2 uses
  %i.cmb = and i64 %.83029.i, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2741 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2745, %vec.epilog.vector.body ] ; 2 uses
  %i.cmc = shl i64 %index2741, 1                  ; 2 uses
  %next.gep2742 = getelementptr i8, ptr %.83050.i, i64 %i.cmc
  %next.gep2743 = getelementptr i8, ptr %.83039.i, i64 %i.cmc
  %wide.load2744 = load <8 x half>, ptr %next.gep2742, align 2, !tbaa !309
  store <8 x half> %wide.load2744, ptr %next.gep2743, align 2, !tbaa !309
  %index.next2745 = add nuw i64 %index2741, 8     ; 2 uses
  %i.cmd = icmp eq i64 %index.next2745, %n.vec2740
  br i1 %i.cmd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2746 = icmp eq i64 %.83029.i, %n.vec2740
  br i1 %cmp.n2746, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3736.i.preheader

.preheader3736.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.93051.i.ph = phi ptr [ %.83050.i, %iter.check ], [ %i.clr, %vec.epilog.iter.check ], [ %i.clz, %vec.epilog.middle.block ] ; 2 uses
  %.93040.i.ph = phi ptr [ %.83039.i, %iter.check ], [ %i.cls, %vec.epilog.iter.check ], [ %i.cma, %vec.epilog.middle.block ] ; 2 uses
  %.93030.i.ph = phi i64 [ %.83029.i, %iter.check ], [ %i.clt, %vec.epilog.iter.check ], [ %i.cmb, %vec.epilog.middle.block ] ; 4 uses
  %i.cme = add i64 %.93030.i.ph, -1
  %xtraiter3766 = and i64 %.93030.i.ph, 7         ; 2 uses
  %lcmp.mod3767.not = icmp eq i64 %xtraiter3766, 0
  br i1 %lcmp.mod3767.not, label %.preheader3736.i.prol.loopexit, label %.preheader3736.i.prol

.preheader3736.i.prol:                            ; preds = %.preheader3736.i.preheader, %.preheader3736.i.prol
  %.93051.i.prol = phi ptr [ %i.cmf, %.preheader3736.i.prol ], [ %.93051.i.ph, %.preheader3736.i.preheader ] ; 2 uses
  %.93040.i.prol = phi ptr [ %i.cmh, %.preheader3736.i.prol ], [ %.93040.i.ph, %.preheader3736.i.preheader ] ; 2 uses
  %.93030.i.prol = phi i64 [ %i.cmi, %.preheader3736.i.prol ], [ %.93030.i.ph, %.preheader3736.i.preheader ]
  %prol.iter3768 = phi i64 [ %prol.iter3768.next, %.preheader3736.i.prol ], [ 0, %.preheader3736.i.preheader ]
  %i.cmf = getelementptr inbounds nuw i8, ptr %.93051.i.prol, i64 2 ; 3 uses
  %i.cmg = load half, ptr %.93051.i.prol, align 2, !tbaa !309
  %i.cmh = getelementptr inbounds nuw i8, ptr %.93040.i.prol, i64 2 ; 3 uses
  store half %i.cmg, ptr %.93040.i.prol, align 2, !tbaa !309
  %i.cmi = add i64 %.93030.i.prol, -1             ; 2 uses
  %prol.iter3768.next = add i64 %prol.iter3768, 1 ; 2 uses
  %prol.iter3768.cmp.not = icmp eq i64 %prol.iter3768.next, %xtraiter3766
  br i1 %prol.iter3768.cmp.not, label %.preheader3736.i.prol.loopexit, label %.preheader3736.i.prol, !llvm.loop !189

.preheader3736.i.prol.loopexit:                   ; preds = %.preheader3736.i.prol, %.preheader3736.i.preheader
  %.lcssa3419.unr = phi ptr [ poison, %.preheader3736.i.preheader ], [ %i.cmf, %.preheader3736.i.prol ]
  %.lcssa3418.unr = phi ptr [ poison, %.preheader3736.i.preheader ], [ %i.cmh, %.preheader3736.i.prol ]
  %.93051.i.unr = phi ptr [ %.93051.i.ph, %.preheader3736.i.preheader ], [ %i.cmf, %.preheader3736.i.prol ]
  %.93040.i.unr = phi ptr [ %.93040.i.ph, %.preheader3736.i.preheader ], [ %i.cmh, %.preheader3736.i.prol ]
  %.93030.i.unr = phi i64 [ %.93030.i.ph, %.preheader3736.i.preheader ], [ %i.cmi, %.preheader3736.i.prol ]
  %i.cmj = icmp ult i64 %i.cme, 7
  br i1 %i.cmj, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3736.i

.preheader3736.i:                                 ; preds = %.preheader3736.i.prol.loopexit, %.preheader3736.i
  %.93051.i = phi ptr [ %i.cnf, %.preheader3736.i ], [ %.93051.i.unr, %.preheader3736.i.prol.loopexit ] ; 9 uses
  %.93040.i = phi ptr [ %i.cnh, %.preheader3736.i ], [ %.93040.i.unr, %.preheader3736.i.prol.loopexit ] ; 9 uses
  %.93030.i = phi i64 [ %i.cni, %.preheader3736.i ], [ %.93030.i.unr, %.preheader3736.i.prol.loopexit ]
  %i.cmk = getelementptr inbounds nuw i8, ptr %.93051.i, i64 2
  %i.cml = load half, ptr %.93051.i, align 2, !tbaa !309
  %i.cmm = getelementptr inbounds nuw i8, ptr %.93040.i, i64 2
  store half %i.cml, ptr %.93040.i, align 2, !tbaa !309
  %i.cmn = getelementptr inbounds nuw i8, ptr %.93051.i, i64 4
  %i.cmo = load half, ptr %i.cmk, align 2, !tbaa !309
  %i.cmp = getelementptr inbounds nuw i8, ptr %.93040.i, i64 4
  store half %i.cmo, ptr %i.cmm, align 2, !tbaa !309
  %i.cmq = getelementptr inbounds nuw i8, ptr %.93051.i, i64 6
  %i.cmr = load half, ptr %i.cmn, align 2, !tbaa !309
  %i.cms = getelementptr inbounds nuw i8, ptr %.93040.i, i64 6
  store half %i.cmr, ptr %i.cmp, align 2, !tbaa !309
  %i.cmt = getelementptr inbounds nuw i8, ptr %.93051.i, i64 8
  %i.cmu = load half, ptr %i.cmq, align 2, !tbaa !309
  %i.cmv = getelementptr inbounds nuw i8, ptr %.93040.i, i64 8
  store half %i.cmu, ptr %i.cms, align 2, !tbaa !309
  %i.cmw = getelementptr inbounds nuw i8, ptr %.93051.i, i64 10
  %i.cmx = load half, ptr %i.cmt, align 2, !tbaa !309
  %i.cmy = getelementptr inbounds nuw i8, ptr %.93040.i, i64 10
  store half %i.cmx, ptr %i.cmv, align 2, !tbaa !309
  %i.cmz = getelementptr inbounds nuw i8, ptr %.93051.i, i64 12
  %i.cna = load half, ptr %i.cmw, align 2, !tbaa !309
  %i.cnb = getelementptr inbounds nuw i8, ptr %.93040.i, i64 12
  store half %i.cna, ptr %i.cmy, align 2, !tbaa !309
  %i.cnc = getelementptr inbounds nuw i8, ptr %.93051.i, i64 14
  %i.cnd = load half, ptr %i.cmz, align 2, !tbaa !309
  %i.cne = getelementptr inbounds nuw i8, ptr %.93040.i, i64 14
  store half %i.cnd, ptr %i.cnb, align 2, !tbaa !309
  %i.cnf = getelementptr inbounds nuw i8, ptr %.93051.i, i64 16 ; 2 uses
  %i.cng = load half, ptr %i.cnc, align 2, !tbaa !309
  %i.cnh = getelementptr inbounds nuw i8, ptr %.93040.i, i64 16 ; 2 uses
  store half %i.cng, ptr %i.cne, align 2, !tbaa !309
  %i.cni = add i64 %.93030.i, -8                  ; 2 uses
  %.old51.not.i.7 = icmp eq i64 %i.cni, 0
  br i1 %.old51.not.i.7, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3736.i, !llvm.loop !190

bb.al:                                            ; preds = %bb.e
  %i.cnj = ptrtoint ptr %i.m to i64
  %i.cnk = and i64 %i.cnj, 3
  %.not3381.i = icmp eq i64 %i.cnk, 0
  %i.cnl = ptrtoint ptr %i.l to i64
  %i.cnm = and i64 %i.cnl, 3
  %.not3382.i = icmp eq i64 %i.cnm, 0
  %or.cond3447.i = select i1 %.not3381.i, i1 %.not3382.i, i1 false
  br i1 %or.cond3447.i, label %bb.am, label %opal_datatype_unpack_predefined_element.exit

bb.am:                                            ; preds = %bb.al
  %i.cnn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cno = load i64, ptr %i.cnn, align 8, !tbaa !56 ; 2 uses
  %i.cnp = and i64 %i.cno, 3
  %.not3383.i = icmp ne i64 %i.cnp, 0
  %i.cnq = icmp ugt i64 %.0, %i.t
  %or.cond3448.i = and i1 %i.cnq, %.not3383.i
  br i1 %or.cond3448.i, label %opal_datatype_unpack_predefined_element.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cnr = lshr i64 %i.cno, 2                     ; 22 uses
  switch i64 %i.t, label %bb.ao [
    i64 1, label %.preheader3758.i
    i64 2, label %.preheader3760.i
    i64 3, label %.preheader3762.i
    i64 4, label %.preheader3764.i
    i64 5, label %.preheader3766.i
    i64 6, label %.preheader3768.i
    i64 7, label %.preheader3770.i
  ]

.preheader3770.i:                                 ; preds = %bb.an
  %i.cns = icmp ugt i64 %.0, 6
  br i1 %i.cns, label %.lr.ph4264.i, label %.loopexit3757.i

.preheader3768.i:                                 ; preds = %bb.an
  %i.cnt = icmp ugt i64 %.0, 5
  br i1 %i.cnt, label %.lr.ph4271.i, label %.loopexit3757.i

.preheader3766.i:                                 ; preds = %bb.an
  %i.cnu = icmp ugt i64 %.0, 4
  br i1 %i.cnu, label %.lr.ph4278.i, label %.loopexit3757.i

.preheader3764.i:                                 ; preds = %bb.an
  %i.cnv = icmp ugt i64 %.0, 3
  br i1 %i.cnv, label %.lr.ph4285.i.preheader, label %.loopexit3757.i

.lr.ph4285.i.preheader:                           ; preds = %.preheader3764.i
  %i.cnw = add i64 %.0, -4                        ; 2 uses
  %i.cnx = and i64 %i.cnw, 4
  %lcmp.mod3746.not.not = icmp eq i64 %i.cnx, 0
  br i1 %lcmp.mod3746.not.not, label %.lr.ph4285.i.prol, label %.lr.ph4285.i.prol.loopexit

.lr.ph4285.i.prol:                                ; preds = %.lr.ph4285.i.preheader
  %i.cny = load float, ptr %i.m, align 4, !tbaa !312
  store float %i.cny, ptr %i.l, align 4, !tbaa !312
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.coa = load float, ptr %i.cnz, align 4, !tbaa !312
  %i.cob = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store float %i.coa, ptr %i.cob, align 4, !tbaa !312
  %i.coc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cod = load float, ptr %i.coc, align 4, !tbaa !312
  %i.coe = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store float %i.cod, ptr %i.coe, align 4, !tbaa !312
end_hunk_4
begin_hunk_5_@unpack_predefined_data:bb.a
  %i.fjr = getelementptr inbounds nuw i8, ptr %.227884387.i, i64 2
  %i.fjs = load i8, ptr %i.fjr, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fjt = getelementptr inbounds nuw i8, ptr %.227774388.i, i64 2
  store i8 %i.fjs, ptr %i.fjt, align 1, !tbaa !323
  %i.fju = getelementptr inbounds nuw i8, ptr %.227884387.i, i64 3 ; 2 uses
  %i.fjv = getelementptr inbounds nuw i8, ptr %.227774388.i, i64 %i.fga ; 2 uses
  %i.fjw = add i64 %.227674389.i, -3              ; 3 uses
  %i.fjx = icmp ugt i64 %i.fjw, 2
  br i1 %i.fjx, label %.lr.ph4390.i, label %.loopexit3721.i, !llvm.loop !279

.lr.ph4383.i:                                     ; preds = %.lr.ph4383.i.prol.loopexit, %.lr.ph4383.i
  %.327684382.i = phi i64 [ %i.fkw, %.lr.ph4383.i ], [ %.327684382.i.unr, %.lr.ph4383.i.prol.loopexit ]
  %.327784381.i = phi ptr [ %i.fkv, %.lr.ph4383.i ], [ %.327784381.i.unr, %.lr.ph4383.i.prol.loopexit ] ; 5 uses
  %.327894380.i = phi ptr [ %i.fku, %.lr.ph4383.i ], [ %.327894380.i.unr, %.lr.ph4383.i.prol.loopexit ] ; 9 uses
  %i.fjy = load i8, ptr %.327894380.i, align 1, !tbaa !323, !range !324, !noundef !325
  store i8 %i.fjy, ptr %.327784381.i, align 1, !tbaa !323
  %i.fjz = getelementptr inbounds nuw i8, ptr %.327894380.i, i64 1
  %i.fka = load i8, ptr %i.fjz, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fkb = getelementptr inbounds nuw i8, ptr %.327784381.i, i64 1
  store i8 %i.fka, ptr %i.fkb, align 1, !tbaa !323
  %i.fkc = getelementptr inbounds nuw i8, ptr %.327894380.i, i64 2
  %i.fkd = load i8, ptr %i.fkc, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fke = getelementptr inbounds nuw i8, ptr %.327784381.i, i64 2
  store i8 %i.fkd, ptr %i.fke, align 1, !tbaa !323
  %i.fkf = getelementptr inbounds nuw i8, ptr %.327894380.i, i64 3
  %i.fkg = load i8, ptr %i.fkf, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fkh = getelementptr inbounds nuw i8, ptr %.327784381.i, i64 3
  store i8 %i.fkg, ptr %i.fkh, align 1, !tbaa !323
  %i.fki = getelementptr inbounds nuw i8, ptr %.327894380.i, i64 4
  %i.fkj = getelementptr inbounds nuw i8, ptr %.327784381.i, i64 %i.fga ; 5 uses
  %i.fkk = load i8, ptr %i.fki, align 1, !tbaa !323, !range !324, !noundef !325
  store i8 %i.fkk, ptr %i.fkj, align 1, !tbaa !323
  %i.fkl = getelementptr inbounds nuw i8, ptr %.327894380.i, i64 5
  %i.fkm = load i8, ptr %i.fkl, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fkn = getelementptr inbounds nuw i8, ptr %i.fkj, i64 1
  store i8 %i.fkm, ptr %i.fkn, align 1, !tbaa !323
  %i.fko = getelementptr inbounds nuw i8, ptr %.327894380.i, i64 6
  %i.fkp = load i8, ptr %i.fko, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fkq = getelementptr inbounds nuw i8, ptr %i.fkj, i64 2
  store i8 %i.fkp, ptr %i.fkq, align 1, !tbaa !323
  %i.fkr = getelementptr inbounds nuw i8, ptr %.327894380.i, i64 7
  %i.fks = load i8, ptr %i.fkr, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fkt = getelementptr inbounds nuw i8, ptr %i.fkj, i64 3
  store i8 %i.fks, ptr %i.fkt, align 1, !tbaa !323
  %i.fku = getelementptr inbounds nuw i8, ptr %.327894380.i, i64 8 ; 2 uses
  %i.fkv = getelementptr inbounds nuw i8, ptr %i.fkj, i64 %i.fga ; 2 uses
  %i.fkw = add i64 %.327684382.i, -8              ; 3 uses
  %i.fkx = icmp ugt i64 %i.fkw, 3
  br i1 %i.fkx, label %.lr.ph4383.i, label %.loopexit3721.i, !llvm.loop !280

.lr.ph4376.i:                                     ; preds = %.preheader3730.i, %.lr.ph4376.i
  %.427694375.i = phi i64 [ %i.fln, %.lr.ph4376.i ], [ %.0, %.preheader3730.i ]
  %.427794374.i = phi ptr [ %i.flm, %.lr.ph4376.i ], [ %i.l, %.preheader3730.i ] ; 6 uses
  %.427904373.i = phi ptr [ %i.fll, %.lr.ph4376.i ], [ %i.m, %.preheader3730.i ] ; 6 uses
  %i.fky = load i8, ptr %.427904373.i, align 1, !tbaa !323, !range !324, !noundef !325
  store i8 %i.fky, ptr %.427794374.i, align 1, !tbaa !323
  %i.fkz = getelementptr inbounds nuw i8, ptr %.427904373.i, i64 1
  %i.fla = load i8, ptr %i.fkz, align 1, !tbaa !323, !range !324, !noundef !325
  %i.flb = getelementptr inbounds nuw i8, ptr %.427794374.i, i64 1
  store i8 %i.fla, ptr %i.flb, align 1, !tbaa !323
  %i.flc = getelementptr inbounds nuw i8, ptr %.427904373.i, i64 2
  %i.fld = load i8, ptr %i.flc, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fle = getelementptr inbounds nuw i8, ptr %.427794374.i, i64 2
  store i8 %i.fld, ptr %i.fle, align 1, !tbaa !323
  %i.flf = getelementptr inbounds nuw i8, ptr %.427904373.i, i64 3
  %i.flg = load i8, ptr %i.flf, align 1, !tbaa !323, !range !324, !noundef !325
  %i.flh = getelementptr inbounds nuw i8, ptr %.427794374.i, i64 3
  store i8 %i.flg, ptr %i.flh, align 1, !tbaa !323
  %i.fli = getelementptr inbounds nuw i8, ptr %.427904373.i, i64 4
  %i.flj = load i8, ptr %i.fli, align 1, !tbaa !323, !range !324, !noundef !325
  %i.flk = getelementptr inbounds nuw i8, ptr %.427794374.i, i64 4
  store i8 %i.flj, ptr %i.flk, align 1, !tbaa !323
  %i.fll = getelementptr inbounds nuw i8, ptr %.427904373.i, i64 5 ; 2 uses
  %i.flm = getelementptr inbounds nuw i8, ptr %.427794374.i, i64 %i.fga ; 2 uses
  %i.fln = add i64 %.427694375.i, -5              ; 3 uses
  %i.flo = icmp ugt i64 %i.fln, 4
  br i1 %i.flo, label %.lr.ph4376.i, label %.loopexit3721.i, !llvm.loop !281

.lr.ph4369.i:                                     ; preds = %.preheader3732.i, %.lr.ph4369.i
  %.527704368.i = phi i64 [ %i.fmh, %.lr.ph4369.i ], [ %.0, %.preheader3732.i ]
  %.527804367.i = phi ptr [ %i.fmg, %.lr.ph4369.i ], [ %i.l, %.preheader3732.i ] ; 7 uses
  %.527914366.i = phi ptr [ %i.fmf, %.lr.ph4369.i ], [ %i.m, %.preheader3732.i ] ; 7 uses
  %i.flp = load i8, ptr %.527914366.i, align 1, !tbaa !323, !range !324, !noundef !325
  store i8 %i.flp, ptr %.527804367.i, align 1, !tbaa !323
  %i.flq = getelementptr inbounds nuw i8, ptr %.527914366.i, i64 1
  %i.flr = load i8, ptr %i.flq, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fls = getelementptr inbounds nuw i8, ptr %.527804367.i, i64 1
  store i8 %i.flr, ptr %i.fls, align 1, !tbaa !323
  %i.flt = getelementptr inbounds nuw i8, ptr %.527914366.i, i64 2
  %i.flu = load i8, ptr %i.flt, align 1, !tbaa !323, !range !324, !noundef !325
  %i.flv = getelementptr inbounds nuw i8, ptr %.527804367.i, i64 2
  store i8 %i.flu, ptr %i.flv, align 1, !tbaa !323
  %i.flw = getelementptr inbounds nuw i8, ptr %.527914366.i, i64 3
  %i.flx = load i8, ptr %i.flw, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fly = getelementptr inbounds nuw i8, ptr %.527804367.i, i64 3
  store i8 %i.flx, ptr %i.fly, align 1, !tbaa !323
  %i.flz = getelementptr inbounds nuw i8, ptr %.527914366.i, i64 4
  %i.fma = load i8, ptr %i.flz, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fmb = getelementptr inbounds nuw i8, ptr %.527804367.i, i64 4
  store i8 %i.fma, ptr %i.fmb, align 1, !tbaa !323
  %i.fmc = getelementptr inbounds nuw i8, ptr %.527914366.i, i64 5
  %i.fmd = load i8, ptr %i.fmc, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fme = getelementptr inbounds nuw i8, ptr %.527804367.i, i64 5
  store i8 %i.fmd, ptr %i.fme, align 1, !tbaa !323
  %i.fmf = getelementptr inbounds nuw i8, ptr %.527914366.i, i64 6 ; 2 uses
  %i.fmg = getelementptr inbounds nuw i8, ptr %.527804367.i, i64 %i.fga ; 2 uses
  %i.fmh = add i64 %.527704368.i, -6              ; 3 uses
  %i.fmi = icmp ugt i64 %i.fmh, 5
  br i1 %i.fmi, label %.lr.ph4369.i, label %.loopexit3721.i, !llvm.loop !282

.lr.ph4362.i:                                     ; preds = %.preheader3734.i, %.lr.ph4362.i
  %.627714361.i = phi i64 [ %i.fne, %.lr.ph4362.i ], [ %.0, %.preheader3734.i ]
  %.627814360.i = phi ptr [ %i.fnd, %.lr.ph4362.i ], [ %i.l, %.preheader3734.i ] ; 8 uses
  %.627924359.i = phi ptr [ %i.fnc, %.lr.ph4362.i ], [ %i.m, %.preheader3734.i ] ; 8 uses
  %i.fmj = load i8, ptr %.627924359.i, align 1, !tbaa !323, !range !324, !noundef !325
  store i8 %i.fmj, ptr %.627814360.i, align 1, !tbaa !323
  %i.fmk = getelementptr inbounds nuw i8, ptr %.627924359.i, i64 1
  %i.fml = load i8, ptr %i.fmk, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fmm = getelementptr inbounds nuw i8, ptr %.627814360.i, i64 1
  store i8 %i.fml, ptr %i.fmm, align 1, !tbaa !323
  %i.fmn = getelementptr inbounds nuw i8, ptr %.627924359.i, i64 2
  %i.fmo = load i8, ptr %i.fmn, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fmp = getelementptr inbounds nuw i8, ptr %.627814360.i, i64 2
  store i8 %i.fmo, ptr %i.fmp, align 1, !tbaa !323
  %i.fmq = getelementptr inbounds nuw i8, ptr %.627924359.i, i64 3
  %i.fmr = load i8, ptr %i.fmq, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fms = getelementptr inbounds nuw i8, ptr %.627814360.i, i64 3
  store i8 %i.fmr, ptr %i.fms, align 1, !tbaa !323
  %i.fmt = getelementptr inbounds nuw i8, ptr %.627924359.i, i64 4
  %i.fmu = load i8, ptr %i.fmt, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fmv = getelementptr inbounds nuw i8, ptr %.627814360.i, i64 4
  store i8 %i.fmu, ptr %i.fmv, align 1, !tbaa !323
  %i.fmw = getelementptr inbounds nuw i8, ptr %.627924359.i, i64 5
  %i.fmx = load i8, ptr %i.fmw, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fmy = getelementptr inbounds nuw i8, ptr %.627814360.i, i64 5
  store i8 %i.fmx, ptr %i.fmy, align 1, !tbaa !323
  %i.fmz = getelementptr inbounds nuw i8, ptr %.627924359.i, i64 6
  %i.fna = load i8, ptr %i.fmz, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fnb = getelementptr inbounds nuw i8, ptr %.627814360.i, i64 6
  store i8 %i.fna, ptr %i.fnb, align 1, !tbaa !323
  %i.fnc = getelementptr inbounds nuw i8, ptr %.627924359.i, i64 7 ; 2 uses
  %i.fnd = getelementptr inbounds nuw i8, ptr %.627814360.i, i64 %i.fga ; 2 uses
  %i.fne = add i64 %.627714361.i, -7              ; 3 uses
  %i.fnf = icmp ugt i64 %i.fne, 6
  br i1 %i.fnf, label %.lr.ph4362.i, label %.loopexit3721.i, !llvm.loop !283

bb.bo:                                            ; preds = %bb.bn
  %i.fng = icmp eq i64 %i.t, 8
  %i.fnh = icmp ugt i64 %.0, 7
  %or.cond97.i = and i1 %i.fnh, %i.fng
  br i1 %or.cond97.i, label %.preheader3720.i, label %.loopexit3721.i

.preheader3720.i:                                 ; preds = %bb.bo, %.preheader3720.i
  %.72793.i = phi ptr [ %i.foe, %.preheader3720.i ], [ %i.m, %bb.bo ] ; 9 uses
  %.72782.i = phi ptr [ %i.fof, %.preheader3720.i ], [ %i.l, %bb.bo ] ; 9 uses
  %.72772.i = phi i64 [ %i.fog, %.preheader3720.i ], [ %.0, %bb.bo ]
  %i.fni = load i8, ptr %.72793.i, align 1, !tbaa !323, !range !324, !noundef !325
  store i8 %i.fni, ptr %.72782.i, align 1, !tbaa !323
  %i.fnj = getelementptr inbounds nuw i8, ptr %.72793.i, i64 1
  %i.fnk = load i8, ptr %i.fnj, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fnl = getelementptr inbounds nuw i8, ptr %.72782.i, i64 1
  store i8 %i.fnk, ptr %i.fnl, align 1, !tbaa !323
  %i.fnm = getelementptr inbounds nuw i8, ptr %.72793.i, i64 2
  %i.fnn = load i8, ptr %i.fnm, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fno = getelementptr inbounds nuw i8, ptr %.72782.i, i64 2
  store i8 %i.fnn, ptr %i.fno, align 1, !tbaa !323
  %i.fnp = getelementptr inbounds nuw i8, ptr %.72793.i, i64 3
  %i.fnq = load i8, ptr %i.fnp, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fnr = getelementptr inbounds nuw i8, ptr %.72782.i, i64 3
  store i8 %i.fnq, ptr %i.fnr, align 1, !tbaa !323
  %i.fns = getelementptr inbounds nuw i8, ptr %.72793.i, i64 4
  %i.fnt = load i8, ptr %i.fns, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fnu = getelementptr inbounds nuw i8, ptr %.72782.i, i64 4
  store i8 %i.fnt, ptr %i.fnu, align 1, !tbaa !323
  %i.fnv = getelementptr inbounds nuw i8, ptr %.72793.i, i64 5
  %i.fnw = load i8, ptr %i.fnv, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fnx = getelementptr inbounds nuw i8, ptr %.72782.i, i64 5
  store i8 %i.fnw, ptr %i.fnx, align 1, !tbaa !323
  %i.fny = getelementptr inbounds nuw i8, ptr %.72793.i, i64 6
  %i.fnz = load i8, ptr %i.fny, align 1, !tbaa !323, !range !324, !noundef !325
  %i.foa = getelementptr inbounds nuw i8, ptr %.72782.i, i64 6
  store i8 %i.fnz, ptr %i.foa, align 1, !tbaa !323
  %i.fob = getelementptr inbounds nuw i8, ptr %.72793.i, i64 7
  %i.foc = load i8, ptr %i.fob, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fod = getelementptr inbounds nuw i8, ptr %.72782.i, i64 7
  store i8 %i.foc, ptr %i.fod, align 1, !tbaa !323
  %i.foe = getelementptr inbounds nuw i8, ptr %.72793.i, i64 8 ; 2 uses
  %i.fof = getelementptr inbounds nuw i8, ptr %.72782.i, i64 %i.fga ; 2 uses
  %i.fog = add i64 %.72772.i, -8                  ; 3 uses
  %.old96.i = icmp ugt i64 %i.fog, 7
  br i1 %.old96.i, label %.preheader3720.i, label %.loopexit3721.i

.loopexit3721.i:                                  ; preds = %.lr.ph4362.i, %.lr.ph4369.i, %.lr.ph4376.i, %.lr.ph4383.i.prol.loopexit, %.lr.ph4383.i, %.lr.ph4390.i, %.lr.ph4397.i.prol.loopexit, %.lr.ph4397.i, %.preheader3720.i, %bb.bo, %.preheader3724.i, %.preheader3726.i, %.preheader3728.i, %.preheader3730.i, %.preheader3732.i, %.preheader3734.i
  %.82794.i = phi ptr [ %i.m, %bb.bo ], [ %i.fku, %.lr.ph4383.i ], [ %i.fll, %.lr.ph4376.i ], [ %i.fmf, %.lr.ph4369.i ], [ %i.foe, %.preheader3720.i ], [ %i.fjj, %.lr.ph4397.i ], [ %i.fju, %.lr.ph4390.i ], [ %i.m, %.preheader3724.i ], [ %i.m, %.preheader3726.i ], [ %i.m, %.preheader3728.i ], [ %i.m, %.preheader3730.i ], [ %i.m, %.preheader3732.i ], [ %i.m, %.preheader3734.i ], [ %.lcssa3396.unr, %.lr.ph4397.i.prol.loopexit ], [ %.lcssa3404.unr, %.lr.ph4383.i.prol.loopexit ], [ %i.fnc, %.lr.ph4362.i ] ; 7 uses
  %.82783.i = phi ptr [ %i.l, %bb.bo ], [ %i.fkv, %.lr.ph4383.i ], [ %i.flm, %.lr.ph4376.i ], [ %i.fmg, %.lr.ph4369.i ], [ %i.fof, %.preheader3720.i ], [ %i.fjk, %.lr.ph4397.i ], [ %i.fjv, %.lr.ph4390.i ], [ %i.l, %.preheader3724.i ], [ %i.l, %.preheader3726.i ], [ %i.l, %.preheader3728.i ], [ %i.l, %.preheader3730.i ], [ %i.l, %.preheader3732.i ], [ %i.l, %.preheader3734.i ], [ %.lcssa3395.unr, %.lr.ph4397.i.prol.loopexit ], [ %.lcssa3403.unr, %.lr.ph4383.i.prol.loopexit ], [ %i.fnd, %.lr.ph4362.i ] ; 7 uses
  %.82773.i = phi i64 [ %.0, %bb.bo ], [ %i.fkw, %.lr.ph4383.i ], [ %i.fln, %.lr.ph4376.i ], [ %i.fmh, %.lr.ph4369.i ], [ %i.fog, %.preheader3720.i ], [ %i.fjl, %.lr.ph4397.i ], [ %i.fjw, %.lr.ph4390.i ], [ %.0, %.preheader3724.i ], [ %.0, %.preheader3726.i ], [ %.0, %.preheader3728.i ], [ %.0, %.preheader3730.i ], [ %.0, %.preheader3732.i ], [ %.0, %.preheader3734.i ], [ %.lcssa3394.unr, %.lr.ph4397.i.prol.loopexit ], [ %.lcssa3402.unr, %.lr.ph4383.i.prol.loopexit ], [ %i.fne, %.lr.ph4362.i ] ; 11 uses
  %.not3350.i = icmp eq i64 %.82773.i, 0
  br i1 %.not3350.i, label %opal_datatype_unpack_predefined_element.exit.thread, label %iter.check2773

iter.check2773:                                   ; preds = %.loopexit3721.i
  %.82794.i2752 = ptrtoaddr ptr %.82783.i to i64
  %.82783.i2751 = ptrtoaddr ptr %.82794.i to i64
  %min.iters.check2755 = icmp ult i64 %.82773.i, 4
  %i.foh = sub i64 %.82783.i2751, %.82794.i2752
  %diff.check2753 = icmp ugt i64 %i.foh, -32
  %or.cond3062 = select i1 %min.iters.check2755, i1 true, i1 %diff.check2753
  br i1 %or.cond3062, label %.preheader3718.i.preheader, label %vector.main.loop.iter.check2756

vector.main.loop.iter.check2756:                  ; preds = %iter.check2773
  %min.iters.check2757 = icmp ult i64 %.82773.i, 32
  br i1 %min.iters.check2757, label %vec.epilog.ph2777, label %vector.ph2758

vector.ph2758:                                    ; preds = %vector.main.loop.iter.check2756
  %i.foi = and i64 %.82773.i, 28
  %n.vec2759 = and i64 %.82773.i, -32             ; 5 uses
  %i.foj = getelementptr i8, ptr %.82794.i, i64 %n.vec2759 ; 2 uses
  %i.fok = getelementptr i8, ptr %.82783.i, i64 %n.vec2759 ; 2 uses
  %i.fol = and i64 %.82773.i, 31
  br label %vector.body2760

vector.body2760:                                  ; preds = %vector.ph2758, %vector.body2760
  %index2761 = phi i64 [ 0, %vector.ph2758 ], [ %index.next2766, %vector.body2760 ] ; 3 uses
  %next.gep2762 = getelementptr i8, ptr %.82794.i, i64 %index2761 ; 2 uses
  %next.gep2763 = getelementptr i8, ptr %.82783.i, i64 %index2761 ; 2 uses
  %i.fom = getelementptr i8, ptr %next.gep2762, i64 16
  %wide.load2764 = load <16 x i8>, ptr %next.gep2762, align 1, !tbaa !323
  %wide.load2765 = load <16 x i8>, ptr %i.fom, align 1, !tbaa !323
  %i.fon = getelementptr i8, ptr %next.gep2763, i64 16
  store <16 x i8> %wide.load2764, ptr %next.gep2763, align 1, !tbaa !323
  store <16 x i8> %wide.load2765, ptr %i.fon, align 1, !tbaa !323
  %index.next2766 = add nuw i64 %index2761, 32    ; 2 uses
  %i.foo = icmp eq i64 %index.next2766, %n.vec2759
  br i1 %i.foo, label %middle.block2767, label %vector.body2760, !llvm.loop !284

middle.block2767:                                 ; preds = %vector.body2760
  %cmp.n2768 = icmp eq i64 %.82773.i, %n.vec2759
  br i1 %cmp.n2768, label %opal_datatype_unpack_predefined_element.exit.thread, label %vec.epilog.iter.check2775

vec.epilog.iter.check2775:                        ; preds = %middle.block2767
  %min.epilog.iters.check2776 = icmp eq i64 %i.foi, 0
  br i1 %min.epilog.iters.check2776, label %.preheader3718.i.preheader, label %vec.epilog.ph2777, !prof !306

vec.epilog.ph2777:                                ; preds = %vector.main.loop.iter.check2756, %vec.epilog.iter.check2775
  %vec.epilog.resume.val2769 = phi i64 [ %n.vec2759, %vec.epilog.iter.check2775 ], [ 0, %vector.main.loop.iter.check2756 ]
  %n.vec2778 = and i64 %.82773.i, -4              ; 4 uses
  %i.fop = getelementptr i8, ptr %.82794.i, i64 %n.vec2778 ; 2 uses
  %i.foq = getelementptr i8, ptr %.82783.i, i64 %n.vec2778 ; 2 uses
  %i.for = and i64 %.82773.i, 3
  br label %vec.epilog.vector.body2779

vec.epilog.vector.body2779:                       ; preds = %vec.epilog.vector.body2779, %vec.epilog.ph2777
  %index2780 = phi i64 [ %vec.epilog.resume.val2769, %vec.epilog.ph2777 ], [ %index.next2784, %vec.epilog.vector.body2779 ] ; 3 uses
  %next.gep2781 = getelementptr i8, ptr %.82794.i, i64 %index2780
  %next.gep2782 = getelementptr i8, ptr %.82783.i, i64 %index2780
  %wide.load2783 = load <4 x i8>, ptr %next.gep2781, align 1, !tbaa !323
  store <4 x i8> %wide.load2783, ptr %next.gep2782, align 1, !tbaa !323
  %index.next2784 = add nuw i64 %index2780, 4     ; 2 uses
  %i.fos = icmp eq i64 %index.next2784, %n.vec2778
  br i1 %i.fos, label %vec.epilog.middle.block2785, label %vec.epilog.vector.body2779, !llvm.loop !285

vec.epilog.middle.block2785:                      ; preds = %vec.epilog.vector.body2779
  %cmp.n2786 = icmp eq i64 %.82773.i, %n.vec2778
  br i1 %cmp.n2786, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3718.i.preheader

.preheader3718.i.preheader:                       ; preds = %iter.check2773, %vec.epilog.iter.check2775, %vec.epilog.middle.block2785
  %.92795.i.ph = phi ptr [ %.82794.i, %iter.check2773 ], [ %i.foj, %vec.epilog.iter.check2775 ], [ %i.fop, %vec.epilog.middle.block2785 ] ; 2 uses
  %.92784.i.ph = phi ptr [ %.82783.i, %iter.check2773 ], [ %i.fok, %vec.epilog.iter.check2775 ], [ %i.foq, %vec.epilog.middle.block2785 ] ; 2 uses
  %.92774.i.ph = phi i64 [ %.82773.i, %iter.check2773 ], [ %i.fol, %vec.epilog.iter.check2775 ], [ %i.for, %vec.epilog.middle.block2785 ] ; 4 uses
  %i.fot = add i64 %.92774.i.ph, -1
  %xtraiter3778 = and i64 %.92774.i.ph, 7         ; 2 uses
  %lcmp.mod3779.not = icmp eq i64 %xtraiter3778, 0
  br i1 %lcmp.mod3779.not, label %.preheader3718.i.prol.loopexit, label %.preheader3718.i.prol

.preheader3718.i.prol:                            ; preds = %.preheader3718.i.preheader, %.preheader3718.i.prol
  %.92795.i.prol = phi ptr [ %i.fou, %.preheader3718.i.prol ], [ %.92795.i.ph, %.preheader3718.i.preheader ] ; 2 uses
  %.92784.i.prol = phi ptr [ %i.fow, %.preheader3718.i.prol ], [ %.92784.i.ph, %.preheader3718.i.preheader ] ; 2 uses
  %.92774.i.prol = phi i64 [ %i.fox, %.preheader3718.i.prol ], [ %.92774.i.ph, %.preheader3718.i.preheader ]
  %prol.iter3780 = phi i64 [ %prol.iter3780.next, %.preheader3718.i.prol ], [ 0, %.preheader3718.i.preheader ]
  %i.fou = getelementptr inbounds nuw i8, ptr %.92795.i.prol, i64 1 ; 3 uses
  %i.fov = load i8, ptr %.92795.i.prol, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fow = getelementptr inbounds nuw i8, ptr %.92784.i.prol, i64 1 ; 3 uses
  store i8 %i.fov, ptr %.92784.i.prol, align 1, !tbaa !323
  %i.fox = add i64 %.92774.i.prol, -1             ; 2 uses
  %prol.iter3780.next = add i64 %prol.iter3780, 1 ; 2 uses
  %prol.iter3780.cmp.not = icmp eq i64 %prol.iter3780.next, %xtraiter3778
  br i1 %prol.iter3780.cmp.not, label %.preheader3718.i.prol.loopexit, label %.preheader3718.i.prol, !llvm.loop !286

.preheader3718.i.prol.loopexit:                   ; preds = %.preheader3718.i.prol, %.preheader3718.i.preheader
  %.lcssa3386.unr = phi ptr [ poison, %.preheader3718.i.preheader ], [ %i.fou, %.preheader3718.i.prol ]
  %.lcssa3385.unr = phi ptr [ poison, %.preheader3718.i.preheader ], [ %i.fow, %.preheader3718.i.prol ]
  %.92795.i.unr = phi ptr [ %.92795.i.ph, %.preheader3718.i.preheader ], [ %i.fou, %.preheader3718.i.prol ]
  %.92784.i.unr = phi ptr [ %.92784.i.ph, %.preheader3718.i.preheader ], [ %i.fow, %.preheader3718.i.prol ]
  %.92774.i.unr = phi i64 [ %.92774.i.ph, %.preheader3718.i.preheader ], [ %i.fox, %.preheader3718.i.prol ]
  %i.foy = icmp ult i64 %i.fot, 7
  br i1 %i.foy, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3718.i

.preheader3718.i:                                 ; preds = %.preheader3718.i.prol.loopexit, %.preheader3718.i
  %.92795.i = phi ptr [ %i.fpu, %.preheader3718.i ], [ %.92795.i.unr, %.preheader3718.i.prol.loopexit ] ; 9 uses
  %.92784.i = phi ptr [ %i.fpw, %.preheader3718.i ], [ %.92784.i.unr, %.preheader3718.i.prol.loopexit ] ; 9 uses
  %.92774.i = phi i64 [ %i.fpx, %.preheader3718.i ], [ %.92774.i.unr, %.preheader3718.i.prol.loopexit ]
  %i.foz = getelementptr inbounds nuw i8, ptr %.92795.i, i64 1
  %i.fpa = load i8, ptr %.92795.i, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fpb = getelementptr inbounds nuw i8, ptr %.92784.i, i64 1
  store i8 %i.fpa, ptr %.92784.i, align 1, !tbaa !323
  %i.fpc = getelementptr inbounds nuw i8, ptr %.92795.i, i64 2
  %i.fpd = load i8, ptr %i.foz, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fpe = getelementptr inbounds nuw i8, ptr %.92784.i, i64 2
  store i8 %i.fpd, ptr %i.fpb, align 1, !tbaa !323
  %i.fpf = getelementptr inbounds nuw i8, ptr %.92795.i, i64 3
  %i.fpg = load i8, ptr %i.fpc, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fph = getelementptr inbounds nuw i8, ptr %.92784.i, i64 3
  store i8 %i.fpg, ptr %i.fpe, align 1, !tbaa !323
  %i.fpi = getelementptr inbounds nuw i8, ptr %.92795.i, i64 4
  %i.fpj = load i8, ptr %i.fpf, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fpk = getelementptr inbounds nuw i8, ptr %.92784.i, i64 4
  store i8 %i.fpj, ptr %i.fph, align 1, !tbaa !323
  %i.fpl = getelementptr inbounds nuw i8, ptr %.92795.i, i64 5
  %i.fpm = load i8, ptr %i.fpi, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fpn = getelementptr inbounds nuw i8, ptr %.92784.i, i64 5
  store i8 %i.fpm, ptr %i.fpk, align 1, !tbaa !323
  %i.fpo = getelementptr inbounds nuw i8, ptr %.92795.i, i64 6
  %i.fpp = load i8, ptr %i.fpl, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fpq = getelementptr inbounds nuw i8, ptr %.92784.i, i64 6
  store i8 %i.fpp, ptr %i.fpn, align 1, !tbaa !323
  %i.fpr = getelementptr inbounds nuw i8, ptr %.92795.i, i64 7
  %i.fps = load i8, ptr %i.fpo, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fpt = getelementptr inbounds nuw i8, ptr %.92784.i, i64 7
  store i8 %i.fps, ptr %i.fpq, align 1, !tbaa !323
  %i.fpu = getelementptr inbounds nuw i8, ptr %.92795.i, i64 8 ; 2 uses
  %i.fpv = load i8, ptr %i.fpr, align 1, !tbaa !323, !range !324, !noundef !325
  %i.fpw = getelementptr inbounds nuw i8, ptr %.92784.i, i64 8 ; 2 uses
  store i8 %i.fpv, ptr %i.fpt, align 1, !tbaa !323
  %i.fpx = add i64 %.92774.i, -8                  ; 2 uses
  %.old99.not.i.7 = icmp eq i64 %i.fpx, 0
  br i1 %.old99.not.i.7, label %opal_datatype_unpack_predefined_element.exit.thread, label %.preheader3718.i, !llvm.loop !287

bb.bp:                                            ; preds = %bb.e
  %i.fpy = ptrtoint ptr %i.m to i64
  %i.fpz = and i64 %i.fpy, 3
  %.not.i = icmp eq i64 %i.fpz, 0
  %i.fqa = ptrtoint ptr %i.l to i64
  %i.fqb = and i64 %i.fqa, 3
  %.not3345.i = icmp eq i64 %i.fqb, 0
  %or.cond3468.i = select i1 %.not.i, i1 %.not3345.i, i1 false
  br i1 %or.cond3468.i, label %bb.bq, label %opal_datatype_unpack_predefined_element.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fqc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fqd = load i64, ptr %i.fqc, align 8, !tbaa !56 ; 2 uses
  %i.fqe = and i64 %i.fqd, 3
  %.not3346.i = icmp ne i64 %i.fqe, 0
  %i.fqf = icmp ugt i64 %.0, %i.t
  %or.cond3469.i = and i1 %i.fqf, %.not3346.i
  br i1 %or.cond3469.i, label %opal_datatype_unpack_predefined_element.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fqg = lshr i64 %i.fqd, 2                     ; 22 uses
  switch i64 %i.t, label %bb.bs [
    i64 1, label %.preheader3632.i
    i64 2, label %.preheader3634.i
    i64 3, label %.preheader3636.i
    i64 4, label %.preheader3638.i
    i64 5, label %.preheader3640.i
    i64 6, label %.preheader3642.i
    i64 7, label %.preheader3644.i
  ]

.preheader3644.i:                                 ; preds = %bb.br
  %i.fqh = icmp ugt i64 %.0, 6
  br i1 %i.fqh, label %.lr.ph4607.i, label %.loopexit3631.i

.preheader3642.i:                                 ; preds = %bb.br
  %i.fqi = icmp ugt i64 %.0, 5
  br i1 %i.fqi, label %.lr.ph4614.i, label %.loopexit3631.i

.preheader3640.i:                                 ; preds = %bb.br
  %i.fqj = icmp ugt i64 %.0, 4
  br i1 %i.fqj, label %.lr.ph4621.i, label %.loopexit3631.i

.preheader3638.i:                                 ; preds = %bb.br
  %i.fqk = icmp ugt i64 %.0, 3
  br i1 %i.fqk, label %.lr.ph4628.i.preheader, label %.loopexit3631.i

.lr.ph4628.i.preheader:                           ; preds = %.preheader3638.i
  %i.fql = add i64 %.0, -4                        ; 2 uses
  %i.fqm = and i64 %i.fql, 4
  %lcmp.mod3830.not.not = icmp eq i64 %i.fqm, 0
  br i1 %lcmp.mod3830.not.not, label %.lr.ph4628.i.prol, label %.lr.ph4628.i.prol.loopexit

.lr.ph4628.i.prol:                                ; preds = %.lr.ph4628.i.preheader
  %i.fqn = load i32, ptr %i.m, align 4, !tbaa !34
  store i32 %i.fqn, ptr %i.l, align 4, !tbaa !34
  %i.fqo = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.fqp = load i32, ptr %i.fqo, align 4, !tbaa !34
  %i.fqq = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.fqp, ptr %i.fqq, align 4, !tbaa !34
  %i.fqr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fqs = load i32, ptr %i.fqr, align 4, !tbaa !34
  %i.fqt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.fqs, ptr %i.fqt, align 4, !tbaa !34
  %i.fqu = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.fqv = load i32, ptr %i.fqu, align 4, !tbaa !34
  %i.fqw = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %i.fqv, ptr %i.fqw, align 4, !tbaa !34
end_hunk_5
