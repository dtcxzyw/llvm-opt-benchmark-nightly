Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb565?download=true
inline.NumInlined: 114
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb565:bb.a
  %i.cku = zext i8 %narrow.i101 to i16            ; 3 uses
  %i.ckv = shl nuw i16 %i.cku, 8
  %i.ckw = and i16 %i.ckv, -2048
  %i.ckx = shl nuw nsw i16 %i.cku, 3
  %i.cky = and i16 %i.ckx, 2016
  %i.ckz = lshr i16 %i.cku, 3
  %i.cla = or disjoint i16 %i.cky, %i.ckz
  %i.clb = or disjoint i16 %i.cla, %i.ckw         ; 3 uses
  %i.clc = icmp ugt i16 %i.ckt, %i.clb
  br i1 %i.clc, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.cld = sub nuw i16 %i.ckt, %i.clb
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %.neg.i = sub nuw i16 %i.clb, %i.ckt
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fc, %bb.fb, %bb.fa
  %i.cle = phi i16 [ %i.ckt, %bb.fe ], [ %i.cjo, %bb.fb ], [ %i.cjy, %bb.fc ], [ %i.ckt, %bb.ff ], [ %i.ciz, %bb.fa ]
  %.0191.i = phi i16 [ %i.cld, %bb.fe ], [ %spec.select231.i, %bb.fb ], [ %i.ckr, %bb.fc ], [ %.neg.i, %bb.ff ], [ %spec.select.i107, %bb.fa ] ; 2 uses
  %i.clf = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i100
  br i1 %or.cond14.i, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %or.cond17.i, label %.sink.split.i102, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.clg = getelementptr inbounds nuw i8, ptr %.2210249.i, i64 %indvars.iv.i100
  %i.clh = load i8, ptr %i.clg, align 1, !tbaa !17 ; 2 uses
  br i1 %i.bwq, label %.sink.split.i102, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.cli = zext i8 %i.clh to i16
  %i.clj = mul nuw i16 %i.cli, %i.bwp
  %i.clk = lshr i16 %i.clj, 8
  %i.cll = trunc nuw i16 %i.clk to i8
  br label %.sink.split.i102

.sink.split.i102:                                 ; preds = %bb.fj, %bb.fi, %bb.fh
  %.sink374.i = phi i8 [ %i.bvy, %bb.fh ], [ %i.cll, %bb.fj ], [ %i.clh, %bb.fi ]
  %i.clm = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0191.i, i16 noundef zeroext %i.cle, i8 noundef zeroext %.sink374.i) #4
  br label %bb.fk

bb.fk:                                            ; preds = %.sink.split.i102, %bb.fg
  %.sink.i103 = phi i16 [ %.0191.i, %bb.fg ], [ %i.clm, %.sink.split.i102 ]
  store i16 %.sink.i103, ptr %i.clf, align 2, !tbaa !12
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i100, 1 ; 2 uses
  %i.cln = add nuw nsw i32 %.4202247.i, 4
  %exitcond.not.i105 = icmp eq i64 %indvars.iv.next.i104, %wide.trip.count.i99
  br i1 %exitcond.not.i105, label %._crit_edge.i106, label %bb.ez, !llvm.loop !146

._crit_edge.i106:                                 ; preds = %bb.fk
  %i.clo = getelementptr inbounds nuw i8, ptr %.4251.i, i64 %i.bws
  %i.clp = getelementptr inbounds nuw i8, ptr %.4216248.i, i64 %i.bwt
  %i.clq = getelementptr inbounds i8, ptr %.2210249.i, i64 %i.bwu
  %.3211.i = select i1 %i.cim, ptr null, ptr %i.clq
  %i.clr = add nuw nsw i32 %.4197250.i, 1         ; 2 uses
  %exitcond307.not.i = icmp eq i32 %i.clr, %i.bvw
  br i1 %exitcond307.not.i, label %rgb565_image_blend.exit, label %.preheader242.i, !llvm.loop !147

rgb565_image_blend.exit.sink.split:               ; preds = %bb.a, %bb.ar
  %.sink = phi i8 [ 4, %bb.ar ], [ 3, %bb.a ]
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext %.sink)
  br label %rgb565_image_blend.exit

rgb565_image_blend.exit:                          ; preds = %._crit_edge.i106, %bb.ez, %._crit_edge254.i, %._crit_edge261.i, %._crit_edge268.split.split.i, %._crit_edge294.i, %._crit_edge.i80, %bb.ee, %._crit_edge349.i, %._crit_edge356.i, %._crit_edge363.i, %._crit_edge369.i97, %._crit_edge.i63, %bb.dh, %._crit_edge327.i, %._crit_edge334.i, %._crit_edge341.split.split.i, %._crit_edge366.i, %._crit_edge.i45, %bb.cm, %._crit_edge420.i, %._crit_edge427.i, %._crit_edge434.i, %._crit_edge440.i, %._crit_edge.i31, %bb.bg, %._crit_edge362.i, %._crit_edge369.i, %._crit_edge376.i, %._crit_edge382.i, %._crit_edge.i15, %bb.af, %._crit_edge298.i, %._crit_edge304.i, %._crit_edge310.i, %bb.z, %._crit_edge.i, %bb.k, %._crit_edge311.i, %._crit_edge317.i, %._crit_edge323.i, %bb.e, %rgb565_image_blend.exit.sink.split, %.preheader239.lr.ph.i, %bb.ew, %.preheader236.lr.ph.i, %.preheader237.i, %.preheader233.lr.ph.i, %.preheader234.i, %.preheader.lr.ph.i112, %.preheader232.i, %.preheader242.lr.ph.i, %.preheader244.i, %.preheader332.lr.ph.i, %bb.eb, %.preheader329.lr.ph.i, %.preheader330.i, %.preheader326.lr.ph.i, %.preheader327.i, %.preheader.lr.ph.i91, %.preheader325.i, %.preheader335.lr.ph.i, %.preheader337.i, %.preheader310.lr.ph.i, %bb.de, %.preheader307.lr.ph.i, %.preheader308.i, %.preheader304.lr.ph.i, %.preheader305.i, %.preheader.lr.ph.i71, %.preheader303.i, %.preheader313.lr.ph.i, %.preheader315.i, %.preheader403.lr.ph.i, %bb.ch, %.preheader400.lr.ph.i, %.preheader401.i, %.preheader397.lr.ph.i, %.preheader398.i, %.preheader.lr.ph.i53, %.preheader396.i, %.preheader406.lr.ph.i, %.preheader408.i, %.preheader345.lr.ph.i, %bb.bd, %.preheader342.lr.ph.i, %.preheader343.i, %.preheader339.lr.ph.i, %.preheader340.i, %.preheader.lr.ph.i36, %.preheader338.i, %.preheader348.lr.ph.i, %.preheader350.i, %.preheader281.lr.ph.i, %.preheader282.i, %.preheader284.lr.ph.i, %.preheader285.i, %.preheader.lr.ph.i21, %.preheader279.i, %bb.y, %.preheader287.lr.ph.i, %.preheader289.i, %.preheader293.lr.ph.i, %.preheader294.i, %.preheader296.lr.ph.i, %.preheader297.i, %.preheader.lr.ph.i, %.preheader291.i, %bb.d, %.preheader299.lr.ph.i, %.preheader301.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !21    ; 9 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %.preheader326

.preheader326:                                    ; preds = %bb.a
  %.not307331 = icmp sgt i32 %i.d, 0
  br i1 %.not307331, label %.preheader324.lr.ph, label %.critedge

.preheader324.lr.ph:                              ; preds = %.preheader326
  %.not306328 = icmp sgt i32 %i.b, 0
  %i.u = icmp ugt i8 %i.f, -4
  %i.v = zext i8 %i.f to i16
  %i.w = zext i32 %i.i to i64
  %i.x = sext i32 %i.m to i64
  %i.y = sext i32 %i.q to i64
  br i1 %.not306328, label %.preheader324.preheader, label %.critedge

.preheader324.preheader:                          ; preds = %.preheader324.lr.ph
  %i.z = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader324

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp eq ptr %i.o, null                  ; 2 uses
  %i.ab = zext i8 %i.f to i16                     ; 4 uses
  %i.ac = icmp ugt i8 %i.f, -4                    ; 2 uses
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %.preheader319, label %bb.d

.preheader319:                                    ; preds = %bb.b
  %i.ad = icmp sgt i32 %i.d, 0
  br i1 %i.ad, label %.preheader318.lr.ph, label %.critedge

.preheader318.lr.ph:                              ; preds = %.preheader319
  %i.ae = icmp sgt i32 %i.b, 0
  %i.af = zext i32 %i.i to i64
  %i.ag = sext i32 %i.m to i64
  br i1 %i.ae, label %.preheader318.us.preheader, label %.critedge

.preheader318.us.preheader:                       ; preds = %.preheader318.lr.ph
  %i.ah = zext nneg i8 %1 to i64
  %wide.trip.count468 = zext nneg i32 %i.b to i64
  br label %.preheader318.us

.preheader318.us:                                 ; preds = %.preheader318.us.preheader, %._crit_edge374.us
  %.0260377.us = phi i32 [ %i.aw, %._crit_edge374.us ], [ 0, %.preheader318.us.preheader ]
  %.0277376.us = phi ptr [ %i.av, %._crit_edge374.us ], [ %i.k, %.preheader318.us.preheader ] ; 2 uses
  %.0283375.us = phi ptr [ %i.au, %._crit_edge374.us ], [ %i.g, %.preheader318.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader318.us, %bb.c
  %indvars.iv463 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next464, %bb.c ] ; 2 uses
  %indvars.iv461 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next462, %bb.c ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %indvars.iv461 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load <2 x i8>, ptr %i.aj, align 1, !tbaa !17
  %i.al = and <2 x i8> %i.ak, <i8 -4, i8 -8>
  %i.am = zext <2 x i8> %i.al to <2 x i16>
  %i.an = shl nuw <2 x i16> %i.am, <i16 3, i16 8> ; 2 uses
  %shift = shufflevector <2 x i16> %i.an, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %i.an, %shift
  %i.ao = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.aq = lshr i8 %i.ap, 3
  %i.ar = zext nneg i8 %i.aq to i16
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.0283375.us, i64 %indvars.iv463
  store i16 %i.as, ptr %i.at, align 2, !tbaa !12
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, %i.ah
  %exitcond469.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count468
  br i1 %exitcond469.not, label %._crit_edge374.us, label %bb.c, !llvm.loop !168

._crit_edge374.us:                                ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.0283375.us, i64 %i.af ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.0277376.us, i64 %i.ag ; 2 uses
  %i.aw = add nuw nsw i32 %.0260377.us, 1         ; 2 uses
  %exitcond470.not = icmp eq i32 %i.aw, %i.d
  br i1 %exitcond470.not, label %.loopexit320, label %.preheader318.us, !llvm.loop !169

bb.d:                                             ; preds = %bb.b
  %i.ax = icmp ult i8 %i.f, -3
  %or.cond6 = select i1 %i.aa, i1 %i.ax, i1 false
  %i.ay = icmp sgt i32 %i.d, 0
  %or.cond402 = select i1 %or.cond6, i1 %i.ay, i1 false
  br i1 %or.cond402, label %.preheader321.lr.ph, label %.loopexit320

.preheader321.lr.ph:                              ; preds = %bb.d
  %i.az = icmp slt i32 %i.b, 1
  %i.ba = xor i8 %i.f, -1
  %i.bb = zext i8 %i.ba to i16                    ; 3 uses
  %i.bc = zext i32 %i.i to i64
  %i.bd = sext i32 %i.m to i64
  %cond525 = icmp eq i8 %i.f, 0
  %or.cond526 = select i1 %i.az, i1 true, i1 %cond525
  br i1 %or.cond526, label %.critedge, label %.preheader321.us.preheader

.preheader321.us.preheader:                       ; preds = %.preheader321.lr.ph
  %i.be = zext nneg i8 %1 to i64
  %wide.trip.count456 = zext nneg i32 %i.b to i64
  br label %.preheader321.us

.preheader321.us:                                 ; preds = %.preheader321.us.preheader, %._crit_edge338.split.split.us355
  %.1261350.us = phi i32 [ %i.cp, %._crit_edge338.split.split.us355 ], [ 0, %.preheader321.us.preheader ]
  %.1278347.us = phi ptr [ %i.co, %._crit_edge338.split.split.us355 ], [ %i.k, %.preheader321.us.preheader ] ; 2 uses
  %.1284344.us = phi ptr [ %i.cn, %._crit_edge338.split.split.us355 ], [ %i.g, %.preheader321.us.preheader ] ; 2 uses
  br label %lv_color_24_16_mix.exit.us352

lv_color_24_16_mix.exit.us352:                    ; preds = %.preheader321.us, %lv_color_24_16_mix.exit.us352
  %indvars.iv451 = phi i64 [ 0, %.preheader321.us ], [ %indvars.iv.next452, %lv_color_24_16_mix.exit.us352 ] ; 2 uses
  %indvars.iv449 = phi i64 [ 0, %.preheader321.us ], [ %indvars.iv.next450, %lv_color_24_16_mix.exit.us352 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %indvars.iv449 ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.1284344.us, i64 %indvars.iv451 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !12 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17
  %i.bk = lshr i8 %i.bj, 3
  %i.bl = zext nneg i8 %i.bk to i16
  %i.bm = mul nuw nsw i16 %i.bl, %i.ab
  %i.bn = lshr i16 %i.bh, 11
  %i.bo = mul nuw nsw i16 %i.bn, %i.bb
  %i.bp = add nuw nsw i16 %i.bm, %i.bo
  %i.bq = shl i16 %i.bp, 3
  %i.br = and i16 %i.bq, -2048
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = lshr i8 %i.bt, 2
  %i.bv = zext nneg i8 %i.bu to i16
  %i.bw = mul nuw nsw i16 %i.bv, %i.ab
  %i.bx = lshr i16 %i.bh, 5
  %i.by = and i16 %i.bx, 63
  %i.bz = mul nuw nsw i16 %i.by, %i.bb
  %i.ca = add nuw nsw i16 %i.bw, %i.bz
  %i.cb = lshr i16 %i.ca, 3
  %i.cc = and i16 %i.cb, 2016
  %i.cd = or disjoint i16 %i.cc, %i.br
  %i.ce = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.cf = lshr i8 %i.ce, 3
  %i.cg = zext nneg i8 %i.cf to i16
  %i.ch = mul nuw nsw i16 %i.cg, %i.ab
  %i.ci = and i16 %i.bh, 31
  %i.cj = mul nuw nsw i16 %i.ci, %i.bb
  %i.ck = add nuw nsw i16 %i.ch, %i.cj
  %i.cl = lshr i16 %i.ck, 8
  %i.cm = add i16 %i.cd, %i.cl
  store i16 %i.cm, ptr %i.bg, align 2, !tbaa !12
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, %i.be
  %exitcond457.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge338.split.split.us355, label %lv_color_24_16_mix.exit.us352, !llvm.loop !170

._crit_edge338.split.split.us355:                 ; preds = %lv_color_24_16_mix.exit.us352
  %i.cn = getelementptr inbounds nuw i8, ptr %.1284344.us, i64 %i.bc ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.1278347.us, i64 %i.bd ; 2 uses
  %i.cp = add nuw nsw i32 %.1261350.us, 1         ; 2 uses
  %exitcond458.not = icmp eq i32 %i.cp, %i.d
  br i1 %exitcond458.not, label %.loopexit320, label %.preheader321.us, !llvm.loop !171

.loopexit320:                                     ; preds = %._crit_edge338.split.split.us355, %._crit_edge374.us, %bb.d
  %.2285 = phi ptr [ %i.g, %bb.d ], [ %i.au, %._crit_edge374.us ], [ %i.cn, %._crit_edge338.split.split.us355 ] ; 2 uses
  %.2279 = phi ptr [ %i.k, %bb.d ], [ %i.av, %._crit_edge374.us ], [ %i.co, %._crit_edge338.split.split.us355 ] ; 2 uses
  %i.cq = icmp ne ptr %i.o, null
  %or.cond9 = select i1 %i.cq, i1 %i.ac, i1 false
  %i.cr = icmp sgt i32 %i.d, 0                    ; 2 uses
  %or.cond403 = select i1 %or.cond9, i1 %i.cr, i1 false
  br i1 %or.cond403, label %.preheader316.lr.ph, label %.loopexit

.preheader316.lr.ph:                              ; preds = %.loopexit320
  %i.cs = icmp sgt i32 %i.b, 0
  %i.ct = zext i32 %i.i to i64
  %i.cu = sext i32 %i.m to i64
  %i.cv = sext i32 %i.q to i64
  br i1 %i.cs, label %.preheader316.us.preheader, label %.critedge

.preheader316.us.preheader:                       ; preds = %.preheader316.lr.ph
  %i.cw = zext nneg i8 %1 to i64
  %wide.trip.count481 = zext nneg i32 %i.b to i64
  br label %.preheader316.us

.preheader316.us:                                 ; preds = %.preheader316.us.preheader, %._crit_edge384.us
  %.2388.us = phi i32 [ %i.ex, %._crit_edge384.us ], [ 0, %.preheader316.us.preheader ]
  %.0272387.us = phi ptr [ %i.ew, %._crit_edge384.us ], [ %i.o, %.preheader316.us.preheader ] ; 2 uses
  %.3280386.us = phi ptr [ %i.ev, %._crit_edge384.us ], [ %.2279, %.preheader316.us.preheader ] ; 2 uses
  %.3286385.us = phi ptr [ %i.eu, %._crit_edge384.us ], [ %.2285, %.preheader316.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader316.us, %lv_color_24_16_mix.exit309.us
  %indvars.iv476 = phi i64 [ 0, %.preheader316.us ], [ %indvars.iv.next477, %lv_color_24_16_mix.exit309.us ] ; 3 uses
  %indvars.iv474 = phi i64 [ 0, %.preheader316.us ], [ %indvars.iv.next475, %lv_color_24_16_mix.exit309.us ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.3280386.us, i64 %indvars.iv474 ; 5 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.3286385.us, i64 %indvars.iv476 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !12 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0272387.us, i64 %indvars.iv476
  %i.db = load i8, ptr %i.da, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.db, label %bb.g [
    i8 0, label %lv_color_24_16_mix.exit309.us
    i8 -1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.dd = load <2 x i8>, ptr %i.dc, align 1, !tbaa !17
  %i.de = and <2 x i8> %i.dd, <i8 -4, i8 -8>
  %i.df = zext <2 x i8> %i.de to <2 x i16>
  %i.dg = shl nuw <2 x i16> %i.df, <i16 3, i16 8> ; 2 uses
  %shift540 = shufflevector <2 x i16> %i.dg, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop541 = or disjoint <2 x i16> %i.dg, %shift540
  %i.dh = extractelement <2 x i16> %foldExtExtBinop541, i64 0
  %i.di = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.dj = lshr i8 %i.di, 3
  %i.dk = zext nneg i8 %i.dj to i16
  %i.dl = or disjoint i16 %i.dh, %i.dk
  br label %lv_color_24_16_mix.exit309.us

bb.g:                                             ; preds = %bb.e
  %i.dm = zext i8 %i.db to i16                    ; 3 uses
  %i.dn = xor i8 %i.db, -1
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !17
  %i.dq = lshr i8 %i.dp, 3
  %i.dr = zext nneg i8 %i.dq to i16
  %i.ds = mul nuw nsw i16 %i.dr, %i.dm
  %i.dt = lshr i16 %i.cz, 11
  %i.du = zext i8 %i.dn to i16                    ; 3 uses
  %i.dv = mul nuw nsw i16 %i.dt, %i.du
  %i.dw = add nuw nsw i16 %i.ds, %i.dv
  %i.dx = shl i16 %i.dw, 3
  %i.dy = and i16 %i.dx, -2048
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !17
  %i.eb = lshr i8 %i.ea, 2
  %i.ec = zext nneg i8 %i.eb to i16
  %i.ed = mul nuw nsw i16 %i.ec, %i.dm
  %i.ee = lshr i16 %i.cz, 5
  %i.ef = and i16 %i.ee, 63
  %i.eg = mul nuw nsw i16 %i.ef, %i.du
  %i.eh = add nuw nsw i16 %i.ed, %i.eg
  %i.ei = lshr i16 %i.eh, 3
  %i.ej = and i16 %i.ei, 2016
  %i.ek = or disjoint i16 %i.ej, %i.dy
  %i.el = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.em = lshr i8 %i.el, 3
  %i.en = zext nneg i8 %i.em to i16
  %i.eo = mul nuw nsw i16 %i.en, %i.dm
  %i.ep = and i16 %i.cz, 31
  %i.eq = mul nuw nsw i16 %i.ep, %i.du
  %i.er = add nuw nsw i16 %i.eo, %i.eq
  %i.es = lshr i16 %i.er, 8
  %i.et = add i16 %i.ek, %i.es
  br label %lv_color_24_16_mix.exit309.us

lv_color_24_16_mix.exit309.us:                    ; preds = %bb.g, %bb.f, %bb.e
  %.0.i308.us = phi i16 [ %i.et, %bb.g ], [ %i.dl, %bb.f ], [ %i.cz, %bb.e ]
  store i16 %.0.i308.us, ptr %i.cy, align 2, !tbaa !12
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, %i.cw
  %exitcond482.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count481
  br i1 %exitcond482.not, label %._crit_edge384.us, label %bb.e, !llvm.loop !172

._crit_edge384.us:                                ; preds = %lv_color_24_16_mix.exit309.us
  %i.eu = getelementptr inbounds nuw i8, ptr %.3286385.us, i64 %i.ct ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.3280386.us, i64 %i.cu ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.0272387.us, i64 %i.cv ; 2 uses
  %i.ex = add nuw nsw i32 %.2388.us, 1            ; 2 uses
  %exitcond483.not = icmp eq i32 %i.ex, %i.d
  br i1 %exitcond483.not, label %.loopexit, label %.preheader316.us, !llvm.loop !173

.loopexit:                                        ; preds = %._crit_edge384.us, %.loopexit320
  %.4287 = phi ptr [ %.2285, %.loopexit320 ], [ %i.eu, %._crit_edge384.us ]
  %.4281 = phi ptr [ %.2279, %.loopexit320 ], [ %i.ev, %._crit_edge384.us ]
  %.1273 = phi ptr [ %i.o, %.loopexit320 ], [ %i.ew, %._crit_edge384.us ] ; 2 uses
  %i.ey = icmp ne ptr %.1273, null
  %i.ez = icmp ult i8 %i.f, -3
  %or.cond12 = select i1 %i.ey, i1 %i.ez, i1 false
  %or.cond404 = select i1 %or.cond12, i1 %i.cr, i1 false
  br i1 %or.cond404, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.fa = icmp sgt i32 %i.b, 0
  %i.fb = zext i32 %i.i to i64
  %i.fc = sext i32 %i.m to i64
  %i.fd = sext i32 %i.q to i64
  br i1 %i.fa, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.fe = zext nneg i8 %1 to i64
  %wide.trip.count491 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge397
  %.3401 = phi i32 [ %i.gw, %._crit_edge397 ], [ 0, %.preheader.preheader ]
  %.2274400 = phi ptr [ %i.gv, %._crit_edge397 ], [ %.1273, %.preheader.preheader ] ; 2 uses
  %.5282399 = phi ptr [ %i.gu, %._crit_edge397 ], [ %.4281, %.preheader.preheader ] ; 2 uses
  %.5288398 = phi ptr [ %i.gt, %._crit_edge397 ], [ %.4287, %.preheader.preheader ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %lv_color_24_16_mix.exit311
  %indvars.iv486 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next487, %lv_color_24_16_mix.exit311 ] ; 3 uses
  %indvars.iv484 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next485, %lv_color_24_16_mix.exit311 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.5288398, i64 %indvars.iv486 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !12 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.2274400, i64 %indvars.iv486
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !17
  %i.fj = zext i8 %i.fi to i16
  %i.fk = mul nuw i16 %i.fj, %i.ab
  %i.fl = lshr i16 %i.fk, 8                       ; 5 uses
  %cond = icmp eq i16 %i.fl, 0
  br i1 %cond, label %lv_color_24_16_mix.exit311, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fm = getelementptr inbounds nuw i8, ptr %.5282399, i64 %indvars.iv484 ; 3 uses
end_hunk_0
