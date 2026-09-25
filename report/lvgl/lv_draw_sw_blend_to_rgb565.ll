Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb565?download=true
inline.NumInlined: 114
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb565:bb.a
  %i.chu = lshr i16 %i.chm, 2
  %i.chv = mul nuw nsw i16 %i.chu, %i.chc
  %i.chw = lshr i16 %i.cgx, 5
  %i.chx = and i16 %i.chw, 63
  %i.chy = mul nuw nsw i16 %i.chl, %i.chx
  %i.chz = add nuw nsw i16 %i.chv, %i.chy
  %i.cia = lshr i16 %i.chz, 3
  %i.cib = and i16 %i.cia, 2016
  %i.cic = and i16 %i.cgx, 31
  %i.cid = mul nuw nsw i16 %i.chl, %i.cic
  %i.cie = add nuw nsw i16 %i.cho, %i.cid
  %i.cif = lshr i16 %i.cie, 8
  %i.cig = or disjoint i16 %i.cib, %i.cif
  %i.cih = or disjoint i16 %i.cig, %i.cht
  br label %lv_color_8_16_mix.exit230.i

lv_color_8_16_mix.exit230.i:                      ; preds = %bb.ey, %bb.ex
  %.0.i229.i = phi i16 [ %i.cih, %bb.ey ], [ %i.cgx, %bb.ex ]
  store i16 %.0.i229.i, ptr %i.cgw, align 2, !tbaa !12
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 1 ; 2 uses
  %exitcond314.not.i = icmp eq i64 %indvars.iv.next309.i, %wide.trip.count313.i
  br i1 %exitcond314.not.i, label %._crit_edge254.i, label %bb.ex, !llvm.loop !144

._crit_edge254.i:                                 ; preds = %lv_color_8_16_mix.exit230.i
  %i.cii = getelementptr inbounds nuw i8, ptr %.3258.i, i64 %i.cgt
  %i.cij = getelementptr inbounds nuw i8, ptr %.3215255.i, i64 %i.cgu
  %i.cik = getelementptr inbounds i8, ptr %.1209256.i, i64 %i.cgv
  %i.cil = add nuw nsw i32 %.3196257.i, 1         ; 2 uses
  %exitcond315.not.i = icmp eq i32 %i.cil, %i.bvw
  br i1 %exitcond315.not.i, label %rgb565_image_blend.exit, label %.preheader239.i, !llvm.loop !145

.preheader242.i:                                  ; preds = %._crit_edge.i106, %.preheader242.preheader.i
  %.4251.i = phi ptr [ %i.clo, %._crit_edge.i106 ], [ %i.bvz, %.preheader242.preheader.i ] ; 6 uses
  %.4197250.i = phi i32 [ %i.clr, %._crit_edge.i106 ], [ 0, %.preheader242.preheader.i ]
  %.2210249.i = phi ptr [ %.3211.i, %._crit_edge.i106 ], [ %i.bwh, %.preheader242.preheader.i ] ; 3 uses
  %.4216248.i = phi ptr [ %i.clp, %._crit_edge.i106 ], [ %i.bwd, %.preheader242.preheader.i ] ; 2 uses
  %i.cim = icmp eq ptr %.2210249.i, null          ; 3 uses
  %or.cond14.i = select i1 %i.cim, i1 %i.bwq, i1 false
  %or.cond17.i = select i1 %i.cim, i1 %i.bwr, i1 false
  br label %bb.ez

bb.ez:                                            ; preds = %bb.fk, %.preheader242.i
  %indvars.iv.i100 = phi i64 [ 0, %.preheader242.i ], [ %indvars.iv.next.i104, %bb.fk ] ; 7 uses
  %.4202247.i = phi i32 [ 0, %.preheader242.i ], [ %i.cln, %bb.fk ] ; 3 uses
  %i.cin = lshr i32 %.4202247.i, 3
  %i.cio = zext nneg i32 %i.cin to i64
  %i.cip = getelementptr inbounds nuw i8, ptr %.4216248.i, i64 %i.cio
  %i.ciq = load i8, ptr %i.cip, align 1, !tbaa !17
  %i.cir = zext i8 %i.ciq to i32
  %i.cis = and i32 %.4202247.i, 4
  %i.cit = xor i32 %i.cis, 7
  %i.ciu = lshr i32 %i.cir, %i.cit
  %i.civ = trunc nuw nsw i32 %i.ciu to i8
  %i.ciw = and i8 %i.civ, 1
  %narrow.i101 = sub nsw i8 0, %i.ciw             ; 4 uses
  %i.cix = load i32, ptr %i.bwk, align 4, !tbaa !28
  switch i32 %i.cix, label %rgb565_image_blend.exit [
    i32 1, label %bb.fa
    i32 2, label %bb.fb
    i32 3, label %bb.fc
    i32 4, label %bb.fd
  ]

bb.fa:                                            ; preds = %bb.ez
  %i.ciy = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i100
  %i.ciz = load i16, ptr %i.ciy, align 2, !tbaa !12 ; 3 uses
  %i.cja = zext i16 %i.ciz to i32
  %i.cjb = zext i8 %narrow.i101 to i16            ; 3 uses
  %i.cjc = shl nuw i16 %i.cjb, 8
  %i.cjd = and i16 %i.cjc, -2048
  %i.cje = shl nuw nsw i16 %i.cjb, 3
  %i.cjf = and i16 %i.cje, 2016
  %i.cjg = lshr i16 %i.cjb, 3
  %i.cjh = or disjoint i16 %i.cjf, %i.cjg
  %i.cji = or disjoint i16 %i.cjh, %i.cjd         ; 2 uses
  %i.cjj = zext i16 %i.cji to i32
  %i.cjk = add nuw nsw i32 %i.cja, %i.cjj
  %i.cjl = icmp samesign ult i32 %i.cjk, 65535
  %i.cjm = add i16 %i.ciz, %i.cji
  %spec.select.i107 = select i1 %i.cjl, i16 %i.cjm, i16 -1
  br label %bb.fg

bb.fb:                                            ; preds = %bb.ez
  %i.cjn = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i100
  %i.cjo = load i16, ptr %i.cjn, align 2, !tbaa !12 ; 2 uses
  %i.cjp = zext i8 %narrow.i101 to i16            ; 3 uses
  %i.cjq = shl nuw i16 %i.cjp, 8
  %i.cjr = and i16 %i.cjq, -2048
  %i.cjs = shl nuw nsw i16 %i.cjp, 3
  %i.cjt = and i16 %i.cjs, 2016
  %i.cju = lshr i16 %i.cjp, 3
  %i.cjv = or disjoint i16 %i.cjt, %i.cju
  %i.cjw = or disjoint i16 %i.cjv, %i.cjr
  %spec.select231.i = tail call i16 @llvm.usub.sat.i16(i16 %i.cjo, i16 %i.cjw)
  br label %bb.fg

bb.fc:                                            ; preds = %bb.ez
  %i.cjx = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i100
  %i.cjy = load i16, ptr %i.cjx, align 2, !tbaa !12 ; 4 uses
  %i.cjz = lshr i16 %i.cjy, 11
  %i.cka = zext i8 %narrow.i101 to i16            ; 2 uses
  %i.ckb = shl nuw nsw i16 %i.cka, 3
  %i.ckc = and i16 %i.ckb, 2016
  %i.ckd = lshr i16 %i.cka, 3                     ; 2 uses
  %i.cke = or disjoint i16 %i.ckc, %i.ckd         ; 2 uses
  %i.ckf = shl i16 %i.cke, 8
  %i.ckg = and i16 %i.ckf, -2048
  %i.ckh = mul i16 %i.cjz, %i.ckg
  %i.cki = lshr i16 %i.cjy, 5
  %i.ckj = and i16 %i.cki, 63
  %i.ckk = lshr i16 %i.cke, 2
  %i.ckl = and i16 %i.ckk, 63
  %narrow221.i = mul nuw nsw i16 %i.ckj, %i.ckl
  %i.ckm = lshr i16 %narrow221.i, 1
  %i.ckn = and i16 %i.ckm, 2016
  %i.cko = or disjoint i16 %i.ckn, %i.ckh
  %i.ckp = and i16 %i.cjy, 31
  %narrow222.i = mul nuw nsw i16 %i.ckp, %i.ckd
  %i.ckq = lshr i16 %narrow222.i, 5
  %i.ckr = or disjoint i16 %i.cko, %i.ckq
  br label %bb.fg

bb.fd:                                            ; preds = %bb.ez
  %i.cks = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i100
  %i.ckt = load i16, ptr %i.cks, align 2, !tbaa !12 ; 5 uses
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !21    ; 9 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !22     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25   ; 7 uses
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
  %i.ab = zext i8 %i.f to i16                     ; 5 uses
  %i.ac = icmp ugt i8 %i.f, -4                    ; 2 uses
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %.preheader319, label %bb.d

.preheader319:                                    ; preds = %bb.b
  %i.ad = icmp sgt i32 %i.d, 0
  br i1 %i.ad, label %.preheader318.lr.ph, label %.critedge

.preheader318.lr.ph:                              ; preds = %.preheader319
  %i.ae = icmp sgt i32 %i.b, 0
  %i.af = zext i32 %i.i to i64                    ; 2 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  br i1 %i.ae, label %.preheader318.us.preheader, label %.critedge

.preheader318.us.preheader:                       ; preds = %.preheader318.lr.ph
  %i.ah = zext nneg i8 %1 to i64                  ; 11 uses
  %wide.trip.count468 = zext nneg i32 %i.b to i64 ; 5 uses
  %2 = add nsw i32 %i.d, -1
  %3 = zext i32 %2 to i64                         ; 2 uses
  %4 = mul nuw i64 %i.af, %3
  %5 = shl nuw nsw i64 %wide.trip.count468, 1
  %6 = getelementptr i8, ptr %i.g, i64 %4
  %scevgep542 = getelementptr i8, ptr %6, i64 %5
  %7 = add nsw i64 %wide.trip.count468, -1
  %8 = mul nsw i64 %7, %i.ah
  %9 = mul nsw i64 %i.ag, %3
  %10 = getelementptr i8, ptr %i.k, i64 %8
  %11 = getelementptr i8, ptr %10, i64 %9
  %scevgep543 = getelementptr i8, ptr %11, i64 3
  %min.iters.check549 = icmp ult i32 %i.b, 8
  %bound0544 = icmp ult ptr %i.g, %scevgep543
  %bound1545 = icmp ult ptr %i.k, %scevgep542
  %found.conflict546 = and i1 %bound0544, %bound1545
  %stride.check547 = icmp slt i32 %i.m, 0
  %12 = or i1 %found.conflict546, %stride.check547
  %n.vec551 = and i64 %wide.trip.count468, 2147483640 ; 4 uses
  %13 = mul nuw nsw i64 %n.vec551, %i.ah
  %cmp.n556 = icmp eq i64 %n.vec551, %wide.trip.count468
  br label %.preheader318.us

.preheader318.us:                                 ; preds = %.preheader318.us.preheader, %._crit_edge374.us
  %.0260377.us = phi i32 [ %i.aw, %._crit_edge374.us ], [ 0, %.preheader318.us.preheader ]
  %.0277376.us = phi ptr [ %i.av, %._crit_edge374.us ], [ %i.k, %.preheader318.us.preheader ] ; 10 uses
  %.0283375.us = phi ptr [ %i.au, %._crit_edge374.us ], [ %i.g, %.preheader318.us.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check549, i1 true, i1 %12
  br i1 %brmerge, label %scalar.ph548.preheader, label %vector.ph550

vector.ph550:                                     ; preds = %.preheader318.us
  %invariant.gep578 = getelementptr i8, ptr %.0277376.us, i64 %i.ah
  br label %vector.body552

vector.body552:                                   ; preds = %vector.body552, %vector.ph550
  %index553 = phi i64 [ 0, %vector.ph550 ], [ %index.next554, %vector.body552 ] ; 9 uses
  %14 = mul i64 %index553, %i.ah                  ; 2 uses
  %15 = or disjoint i64 %index553, 2
  %16 = mul i64 %15, %i.ah
  %17 = or disjoint i64 %index553, 3
  %18 = mul i64 %17, %i.ah
  %19 = or disjoint i64 %index553, 4
  %20 = mul i64 %19, %i.ah
  %21 = or disjoint i64 %index553, 5
  %22 = mul i64 %21, %i.ah
  %23 = or disjoint i64 %index553, 6
  %24 = mul i64 %23, %i.ah
  %25 = or disjoint i64 %index553, 7
  %26 = mul i64 %25, %i.ah
  %27 = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %14 ; 3 uses
  %gep579 = getelementptr i8, ptr %invariant.gep578, i64 %14 ; 3 uses
  %28 = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %16 ; 3 uses
  %29 = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %18 ; 3 uses
  %30 = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %20 ; 3 uses
  %31 = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %22 ; 3 uses
  %32 = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %24 ; 3 uses
  %33 = getelementptr inbounds nuw i8, ptr %.0277376.us, i64 %26 ; 3 uses
  %34 = getelementptr inbounds nuw i8, ptr %27, i64 2
  %35 = getelementptr inbounds nuw i8, ptr %gep579, i64 2
  %36 = getelementptr inbounds nuw i8, ptr %28, i64 2
  %37 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %38 = getelementptr inbounds nuw i8, ptr %30, i64 2
  %39 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 2
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 2
  %42 = load i8, ptr %34, align 1, !tbaa !17, !alias.scope !186
  %43 = load i8, ptr %35, align 1, !tbaa !17, !alias.scope !186
  %44 = load i8, ptr %36, align 1, !tbaa !17, !alias.scope !186
  %45 = load i8, ptr %37, align 1, !tbaa !17, !alias.scope !186
  %46 = load i8, ptr %38, align 1, !tbaa !17, !alias.scope !186
  %47 = load i8, ptr %39, align 1, !tbaa !17, !alias.scope !186
  %48 = load i8, ptr %40, align 1, !tbaa !17, !alias.scope !186
  %49 = load i8, ptr %41, align 1, !tbaa !17, !alias.scope !186
  %50 = insertelement <8 x i8> poison, i8 %42, i64 0
  %51 = insertelement <8 x i8> %50, i8 %43, i64 1
  %52 = insertelement <8 x i8> %51, i8 %44, i64 2
  %53 = insertelement <8 x i8> %52, i8 %45, i64 3
  %54 = insertelement <8 x i8> %53, i8 %46, i64 4
  %55 = insertelement <8 x i8> %54, i8 %47, i64 5
  %56 = insertelement <8 x i8> %55, i8 %48, i64 6
  %57 = insertelement <8 x i8> %56, i8 %49, i64 7
  %58 = and <8 x i8> %57, splat (i8 -8)
  %59 = zext <8 x i8> %58 to <8 x i16>
  %60 = shl nuw <8 x i16> %59, splat (i16 8)
  %61 = getelementptr inbounds nuw i8, ptr %27, i64 1
  %62 = getelementptr inbounds nuw i8, ptr %gep579, i64 1
  %63 = getelementptr inbounds nuw i8, ptr %28, i64 1
  %64 = getelementptr inbounds nuw i8, ptr %29, i64 1
  %65 = getelementptr inbounds nuw i8, ptr %30, i64 1
  %66 = getelementptr inbounds nuw i8, ptr %31, i64 1
  %67 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %68 = getelementptr inbounds nuw i8, ptr %33, i64 1
  %69 = load i8, ptr %61, align 1, !tbaa !17, !alias.scope !186
  %70 = load i8, ptr %62, align 1, !tbaa !17, !alias.scope !186
  %71 = load i8, ptr %63, align 1, !tbaa !17, !alias.scope !186
  %72 = load i8, ptr %64, align 1, !tbaa !17, !alias.scope !186
  %73 = load i8, ptr %65, align 1, !tbaa !17, !alias.scope !186
  %74 = load i8, ptr %66, align 1, !tbaa !17, !alias.scope !186
  %75 = load i8, ptr %67, align 1, !tbaa !17, !alias.scope !186
  %76 = load i8, ptr %68, align 1, !tbaa !17, !alias.scope !186
  %77 = insertelement <8 x i8> poison, i8 %69, i64 0
  %78 = insertelement <8 x i8> %77, i8 %70, i64 1
  %79 = insertelement <8 x i8> %78, i8 %71, i64 2
  %80 = insertelement <8 x i8> %79, i8 %72, i64 3
  %81 = insertelement <8 x i8> %80, i8 %73, i64 4
  %82 = insertelement <8 x i8> %81, i8 %74, i64 5
  %83 = insertelement <8 x i8> %82, i8 %75, i64 6
  %84 = insertelement <8 x i8> %83, i8 %76, i64 7
  %85 = and <8 x i8> %84, splat (i8 -4)
  %86 = zext <8 x i8> %85 to <8 x i16>
  %87 = shl nuw nsw <8 x i16> %86, splat (i16 3)
  %88 = or disjoint <8 x i16> %87, %60
  %89 = load i8, ptr %27, align 1, !tbaa !17, !alias.scope !186
  %90 = load i8, ptr %gep579, align 1, !tbaa !17, !alias.scope !186
  %91 = load i8, ptr %28, align 1, !tbaa !17, !alias.scope !186
  %92 = load i8, ptr %29, align 1, !tbaa !17, !alias.scope !186
  %93 = load i8, ptr %30, align 1, !tbaa !17, !alias.scope !186
  %94 = load i8, ptr %31, align 1, !tbaa !17, !alias.scope !186
  %95 = load i8, ptr %32, align 1, !tbaa !17, !alias.scope !186
  %96 = load i8, ptr %33, align 1, !tbaa !17, !alias.scope !186
  %97 = insertelement <8 x i8> poison, i8 %89, i64 0
  %98 = insertelement <8 x i8> %97, i8 %90, i64 1
  %99 = insertelement <8 x i8> %98, i8 %91, i64 2
  %100 = insertelement <8 x i8> %99, i8 %92, i64 3
  %101 = insertelement <8 x i8> %100, i8 %93, i64 4
  %102 = insertelement <8 x i8> %101, i8 %94, i64 5
  %103 = insertelement <8 x i8> %102, i8 %95, i64 6
  %104 = insertelement <8 x i8> %103, i8 %96, i64 7
  %105 = lshr <8 x i8> %104, splat (i8 3)
  %106 = zext nneg <8 x i8> %105 to <8 x i16>
  %107 = or disjoint <8 x i16> %88, %106
  %108 = getelementptr inbounds nuw [2 x i8], ptr %.0283375.us, i64 %index553
  store <8 x i16> %107, ptr %108, align 2, !tbaa !12, !alias.scope !187, !noalias !186
  %index.next554 = add nuw i64 %index553, 8       ; 2 uses
  %109 = icmp eq i64 %index.next554, %n.vec551
  br i1 %109, label %middle.block555, label %vector.body552, !llvm.loop !171

middle.block555:                                  ; preds = %vector.body552
  br i1 %cmp.n556, label %._crit_edge374.us, label %scalar.ph548.preheader

scalar.ph548.preheader:                           ; preds = %.preheader318.us, %middle.block555
  %indvars.iv463.ph = phi i64 [ %n.vec551, %middle.block555 ], [ 0, %.preheader318.us ]
  %indvars.iv461.ph = phi i64 [ %13, %middle.block555 ], [ 0, %.preheader318.us ]
  br label %bb.c

bb.c:                                             ; preds = %scalar.ph548.preheader, %bb.c
  %indvars.iv463 = phi i64 [ %indvars.iv.next464, %bb.c ], [ %indvars.iv463.ph, %scalar.ph548.preheader ] ; 2 uses
  %indvars.iv461 = phi i64 [ %indvars.iv.next462, %bb.c ], [ %indvars.iv461.ph, %scalar.ph548.preheader ] ; 2 uses
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
  br i1 %exitcond469.not, label %._crit_edge374.us, label %bb.c, !llvm.loop !172

._crit_edge374.us:                                ; preds = %bb.c, %middle.block555
  %i.au = getelementptr inbounds nuw i8, ptr %.0283375.us, i64 %i.af ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.0277376.us, i64 %i.ag ; 2 uses
  %i.aw = add nuw nsw i32 %.0260377.us, 1         ; 2 uses
  %exitcond470.not = icmp eq i32 %i.aw, %i.d
  br i1 %exitcond470.not, label %.loopexit320, label %.preheader318.us, !llvm.loop !173

bb.d:                                             ; preds = %bb.b
  %i.ax = icmp ult i8 %i.f, -3
  %or.cond6 = select i1 %i.aa, i1 %i.ax, i1 false
  %i.ay = icmp sgt i32 %i.d, 0
  %or.cond402 = select i1 %or.cond6, i1 %i.ay, i1 false
  br i1 %or.cond402, label %.preheader321.lr.ph, label %.loopexit320

.preheader321.lr.ph:                              ; preds = %bb.d
  %i.az = icmp slt i32 %i.b, 1
  %i.ba = xor i8 %i.f, -1
  %i.bb = zext i8 %i.ba to i16                    ; 4 uses
  %i.bc = zext i32 %i.i to i64                    ; 2 uses
  %i.bd = sext i32 %i.m to i64                    ; 2 uses
  %cond525 = icmp eq i8 %i.f, 0
  %or.cond526 = select i1 %i.az, i1 true, i1 %cond525
  br i1 %or.cond526, label %.critedge, label %.preheader321.us.preheader

.preheader321.us.preheader:                       ; preds = %.preheader321.lr.ph
  %i.be = zext nneg i8 %1 to i64                  ; 11 uses
  %wide.trip.count456 = zext nneg i32 %i.b to i64 ; 5 uses
  %110 = add nsw i32 %i.d, -1
  %111 = zext i32 %110 to i64                     ; 2 uses
  %112 = mul nuw i64 %i.bc, %111
  %113 = shl nuw nsw i64 %wide.trip.count456, 1
  %114 = getelementptr i8, ptr %i.g, i64 %112
  %scevgep = getelementptr i8, ptr %114, i64 %113
  %115 = add nsw i64 %wide.trip.count456, -1
  %116 = mul nsw i64 %115, %i.be
  %117 = mul nsw i64 %i.bd, %111
  %118 = getelementptr i8, ptr %i.k, i64 %116
  %119 = getelementptr i8, ptr %118, i64 %117
  %scevgep537 = getelementptr i8, ptr %119, i64 3
  %min.iters.check = icmp ult i32 %i.b, 8
  %bound0 = icmp ult ptr %i.g, %scevgep537
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.m, 0
  %120 = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count456, 2147483640 ; 4 uses
  %121 = mul nuw nsw i64 %n.vec, %i.be
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ab, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert538 = insertelement <8 x i16> poison, i16 %i.bb, i64 0
  %broadcast.splat539 = shufflevector <8 x i16> %broadcast.splatinsert538, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count456
  br label %.preheader321.us

.preheader321.us:                                 ; preds = %.preheader321.us.preheader, %._crit_edge338.split.split.us356
  %.1261350.us = phi i32 [ %i.cp, %._crit_edge338.split.split.us356 ], [ 0, %.preheader321.us.preheader ]
  %.1278347.us = phi ptr [ %i.co, %._crit_edge338.split.split.us356 ], [ %i.k, %.preheader321.us.preheader ] ; 10 uses
  %.1284344.us = phi ptr [ %i.cn, %._crit_edge338.split.split.us356 ], [ %i.g, %.preheader321.us.preheader ] ; 3 uses
  %brmerge580 = select i1 %min.iters.check, i1 true, i1 %120
  br i1 %brmerge580, label %lv_color_24_16_mix.exit.us353.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader321.us
  %invariant.gep = getelementptr i8, ptr %.1278347.us, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %122 = mul i64 %index, %i.be                    ; 2 uses
  %123 = or disjoint i64 %index, 2
  %124 = mul i64 %123, %i.be
  %125 = or disjoint i64 %index, 3
  %126 = mul i64 %125, %i.be
  %127 = or disjoint i64 %index, 4
  %128 = mul i64 %127, %i.be
  %129 = or disjoint i64 %index, 5
  %130 = mul i64 %129, %i.be
  %131 = or disjoint i64 %index, 6
  %132 = mul i64 %131, %i.be
  %133 = or disjoint i64 %index, 7
  %134 = mul i64 %133, %i.be
  %135 = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %122 ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %122 ; 3 uses
  %136 = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %124 ; 3 uses
  %137 = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %126 ; 3 uses
  %138 = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %128 ; 3 uses
  %139 = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %130 ; 3 uses
  %140 = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %132 ; 3 uses
  %141 = getelementptr inbounds nuw i8, ptr %.1278347.us, i64 %134 ; 3 uses
  %142 = getelementptr inbounds nuw [2 x i8], ptr %.1284344.us, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %142, align 2, !tbaa !12, !alias.scope !188, !noalias !189 ; 3 uses
  %143 = getelementptr inbounds nuw i8, ptr %135, i64 2
  %144 = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %145 = getelementptr inbounds nuw i8, ptr %136, i64 2
  %146 = getelementptr inbounds nuw i8, ptr %137, i64 2
  %147 = getelementptr inbounds nuw i8, ptr %138, i64 2
  %148 = getelementptr inbounds nuw i8, ptr %139, i64 2
  %149 = getelementptr inbounds nuw i8, ptr %140, i64 2
  %150 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %151 = load i8, ptr %143, align 1, !tbaa !17, !alias.scope !189
  %152 = load i8, ptr %144, align 1, !tbaa !17, !alias.scope !189
  %153 = load i8, ptr %145, align 1, !tbaa !17, !alias.scope !189
  %154 = load i8, ptr %146, align 1, !tbaa !17, !alias.scope !189
  %155 = load i8, ptr %147, align 1, !tbaa !17, !alias.scope !189
  %156 = load i8, ptr %148, align 1, !tbaa !17, !alias.scope !189
  %157 = load i8, ptr %149, align 1, !tbaa !17, !alias.scope !189
  %158 = load i8, ptr %150, align 1, !tbaa !17, !alias.scope !189
  %159 = insertelement <8 x i8> poison, i8 %151, i64 0
  %160 = insertelement <8 x i8> %159, i8 %152, i64 1
  %161 = insertelement <8 x i8> %160, i8 %153, i64 2
  %162 = insertelement <8 x i8> %161, i8 %154, i64 3
  %163 = insertelement <8 x i8> %162, i8 %155, i64 4
  %164 = insertelement <8 x i8> %163, i8 %156, i64 5
  %165 = insertelement <8 x i8> %164, i8 %157, i64 6
  %166 = insertelement <8 x i8> %165, i8 %158, i64 7
  %167 = lshr <8 x i8> %166, splat (i8 3)
  %168 = zext nneg <8 x i8> %167 to <8 x i16>
  %169 = mul nuw nsw <8 x i16> %broadcast.splat, %168
  %170 = lshr <8 x i16> %wide.load, splat (i16 11)
  %171 = mul nuw nsw <8 x i16> %170, %broadcast.splat539
  %172 = add nuw nsw <8 x i16> %169, %171
  %173 = shl <8 x i16> %172, splat (i16 3)
  %174 = and <8 x i16> %173, splat (i16 -2048)
  %175 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %176 = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %177 = getelementptr inbounds nuw i8, ptr %136, i64 1
  %178 = getelementptr inbounds nuw i8, ptr %137, i64 1
  %179 = getelementptr inbounds nuw i8, ptr %138, i64 1
  %180 = getelementptr inbounds nuw i8, ptr %139, i64 1
  %181 = getelementptr inbounds nuw i8, ptr %140, i64 1
  %182 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %183 = load i8, ptr %175, align 1, !tbaa !17, !alias.scope !189
  %184 = load i8, ptr %176, align 1, !tbaa !17, !alias.scope !189
  %185 = load i8, ptr %177, align 1, !tbaa !17, !alias.scope !189
  %186 = load i8, ptr %178, align 1, !tbaa !17, !alias.scope !189
  %187 = load i8, ptr %179, align 1, !tbaa !17, !alias.scope !189
  %188 = load i8, ptr %180, align 1, !tbaa !17, !alias.scope !189
  %189 = load i8, ptr %181, align 1, !tbaa !17, !alias.scope !189
  %190 = load i8, ptr %182, align 1, !tbaa !17, !alias.scope !189
  %191 = insertelement <8 x i8> poison, i8 %183, i64 0
  %192 = insertelement <8 x i8> %191, i8 %184, i64 1
  %193 = insertelement <8 x i8> %192, i8 %185, i64 2
  %194 = insertelement <8 x i8> %193, i8 %186, i64 3
  %195 = insertelement <8 x i8> %194, i8 %187, i64 4
  %196 = insertelement <8 x i8> %195, i8 %188, i64 5
  %197 = insertelement <8 x i8> %196, i8 %189, i64 6
  %198 = insertelement <8 x i8> %197, i8 %190, i64 7
  %199 = lshr <8 x i8> %198, splat (i8 2)
  %200 = zext nneg <8 x i8> %199 to <8 x i16>
  %201 = mul nuw nsw <8 x i16> %broadcast.splat, %200
  %202 = lshr <8 x i16> %wide.load, splat (i16 5)
  %203 = and <8 x i16> %202, splat (i16 63)
  %204 = mul nuw nsw <8 x i16> %203, %broadcast.splat539
  %205 = add nuw nsw <8 x i16> %201, %204
  %206 = lshr <8 x i16> %205, splat (i16 3)
  %207 = and <8 x i16> %206, splat (i16 2016)
  %208 = or disjoint <8 x i16> %207, %174
  %209 = load i8, ptr %135, align 1, !tbaa !17, !alias.scope !189
  %210 = load i8, ptr %gep, align 1, !tbaa !17, !alias.scope !189
  %211 = load i8, ptr %136, align 1, !tbaa !17, !alias.scope !189
  %212 = load i8, ptr %137, align 1, !tbaa !17, !alias.scope !189
  %213 = load i8, ptr %138, align 1, !tbaa !17, !alias.scope !189
  %214 = load i8, ptr %139, align 1, !tbaa !17, !alias.scope !189
  %215 = load i8, ptr %140, align 1, !tbaa !17, !alias.scope !189
  %216 = load i8, ptr %141, align 1, !tbaa !17, !alias.scope !189
  %217 = insertelement <8 x i8> poison, i8 %209, i64 0
  %218 = insertelement <8 x i8> %217, i8 %210, i64 1
  %219 = insertelement <8 x i8> %218, i8 %211, i64 2
  %220 = insertelement <8 x i8> %219, i8 %212, i64 3
  %221 = insertelement <8 x i8> %220, i8 %213, i64 4
  %222 = insertelement <8 x i8> %221, i8 %214, i64 5
  %223 = insertelement <8 x i8> %222, i8 %215, i64 6
  %224 = insertelement <8 x i8> %223, i8 %216, i64 7
  %225 = lshr <8 x i8> %224, splat (i8 3)
  %226 = zext nneg <8 x i8> %225 to <8 x i16>
  %227 = mul nuw nsw <8 x i16> %broadcast.splat, %226
  %228 = and <8 x i16> %wide.load, splat (i16 31)
  %229 = mul nuw nsw <8 x i16> %228, %broadcast.splat539
  %230 = add nuw nsw <8 x i16> %227, %229
  %231 = lshr <8 x i16> %230, splat (i16 8)
  %232 = add <8 x i16> %208, %231
  store <8 x i16> %232, ptr %142, align 2, !tbaa !12, !alias.scope !188, !noalias !189
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %233 = icmp eq i64 %index.next, %n.vec
  br i1 %233, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge338.split.split.us356, label %lv_color_24_16_mix.exit.us353.preheader

lv_color_24_16_mix.exit.us353.preheader:          ; preds = %.preheader321.us, %middle.block
  %indvars.iv451.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader321.us ]
  %indvars.iv449.ph = phi i64 [ %121, %middle.block ], [ 0, %.preheader321.us ]
  br label %lv_color_24_16_mix.exit.us353

lv_color_24_16_mix.exit.us353:                    ; preds = %lv_color_24_16_mix.exit.us353.preheader, %lv_color_24_16_mix.exit.us353
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %lv_color_24_16_mix.exit.us353 ], [ %indvars.iv451.ph, %lv_color_24_16_mix.exit.us353.preheader ] ; 2 uses
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %lv_color_24_16_mix.exit.us353 ], [ %indvars.iv449.ph, %lv_color_24_16_mix.exit.us353.preheader ] ; 2 uses
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
  br i1 %exitcond457.not, label %._crit_edge338.split.split.us356, label %lv_color_24_16_mix.exit.us353, !llvm.loop !178

._crit_edge338.split.split.us356:                 ; preds = %lv_color_24_16_mix.exit.us353, %middle.block
  %i.cn = getelementptr inbounds nuw i8, ptr %.1284344.us, i64 %i.bc ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.1278347.us, i64 %i.bd ; 2 uses
  %i.cp = add nuw nsw i32 %.1261350.us, 1         ; 2 uses
  %exitcond458.not = icmp eq i32 %i.cp, %i.d
  br i1 %exitcond458.not, label %.loopexit320, label %.preheader321.us, !llvm.loop !179

.loopexit320:                                     ; preds = %._crit_edge338.split.split.us356, %._crit_edge374.us, %bb.d
  %.2285 = phi ptr [ %i.g, %bb.d ], [ %i.au, %._crit_edge374.us ], [ %i.cn, %._crit_edge338.split.split.us356 ] ; 2 uses
  %.2279 = phi ptr [ %i.k, %bb.d ], [ %i.av, %._crit_edge374.us ], [ %i.co, %._crit_edge338.split.split.us356 ] ; 2 uses
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
  br i1 %exitcond482.not, label %._crit_edge384.us, label %bb.e, !llvm.loop !180

._crit_edge384.us:                                ; preds = %lv_color_24_16_mix.exit309.us
  %i.eu = getelementptr inbounds nuw i8, ptr %.3286385.us, i64 %i.ct ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.3280386.us, i64 %i.cu ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.0272387.us, i64 %i.cv ; 2 uses
  %i.ex = add nuw nsw i32 %.2388.us, 1            ; 2 uses
  %exitcond483.not = icmp eq i32 %i.ex, %i.d
  br i1 %exitcond483.not, label %.loopexit, label %.preheader316.us, !llvm.loop !181

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
  %i.fn = xor i16 %i.fl, 255                      ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !17
  %i.fq = lshr i8 %i.fp, 3
  %i.fr = zext nneg i8 %i.fq to i16
  %i.fs = mul nuw nsw i16 %i.fl, %i.fr
  %i.ft = lshr i16 %i.fg, 11
  %i.fu = mul nuw nsw i16 %i.fn, %i.ft
  %i.fv = add nuw nsw i16 %i.fs, %i.fu
  %i.fw = shl nuw i16 %i.fv, 3
  %i.fx = and i16 %i.fw, -2048
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !17
  %i.ga = lshr i8 %i.fz, 2
  %i.gb = zext nneg i8 %i.ga to i16
  %i.gc = mul nuw nsw i16 %i.fl, %i.gb
  %i.gd = lshr i16 %i.fg, 5
  %i.ge = and i16 %i.gd, 63
  %i.gf = mul nuw nsw i16 %i.fn, %i.ge
  %i.gg = add nuw nsw i16 %i.gc, %i.gf
  %i.gh = lshr i16 %i.gg, 3
  %i.gi = and i16 %i.gh, 2016
  %i.gj = or disjoint i16 %i.gi, %i.fx
  %i.gk = load i8, ptr %i.fm, align 1, !tbaa !17
  %i.gl = lshr i8 %i.gk, 3
  %i.gm = zext nneg i8 %i.gl to i16
  %i.gn = mul nuw nsw i16 %i.fl, %i.gm
  %i.go = and i16 %i.fg, 31
  %i.gp = mul nuw nsw i16 %i.fn, %i.go
  %i.gq = add nuw nsw i16 %i.gn, %i.gp
  %i.gr = lshr i16 %i.gq, 8
  %i.gs = or disjoint i16 %i.gj, %i.gr
  br label %lv_color_24_16_mix.exit311

lv_color_24_16_mix.exit311:                       ; preds = %bb.h, %bb.i
  %.0.i310 = phi i16 [ %i.gs, %bb.i ], [ %i.fg, %bb.h ]
  store i16 %.0.i310, ptr %i.ff, align 2, !tbaa !12
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, %i.fe
  %exitcond492.not = icmp eq i64 %indvars.iv.next487, %wide.trip.count491
  br i1 %exitcond492.not, label %._crit_edge397, label %bb.h, !llvm.loop !182

._crit_edge397:                                   ; preds = %lv_color_24_16_mix.exit311
  %i.gt = getelementptr inbounds nuw i8, ptr %.5288398, i64 %i.fb
  %i.gu = getelementptr inbounds i8, ptr %.5282399, i64 %i.fc
  %i.gv = getelementptr inbounds i8, ptr %.2274400, i64 %i.fd
  %i.gw = add nuw nsw i32 %.3401, 1               ; 2 uses
  %exitcond493.not = icmp eq i32 %i.gw, %i.d
  br i1 %exitcond493.not, label %.critedge, label %.preheader, !llvm.loop !183

.preheader324:                                    ; preds = %.preheader324.preheader, %._crit_edge
  %.4335 = phi i32 [ %i.lr, %._crit_edge ], [ 0, %.preheader324.preheader ]
  %.3275334 = phi ptr [ %.4276, %._crit_edge ], [ %i.o, %.preheader324.preheader ] ; 3 uses
  %.6333 = phi ptr [ %i.lp, %._crit_edge ], [ %i.k, %.preheader324.preheader ] ; 5 uses
  %.6289332 = phi ptr [ %i.lo, %._crit_edge ], [ %i.g, %.preheader324.preheader ] ; 6 uses
  %i.gx = icmp eq ptr %.3275334, null             ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader324, %bb.r
  %indvars.iv430 = phi i64 [ 0, %.preheader324 ], [ %indvars.iv.next431, %bb.r ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.preheader324 ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %i.gy = load i32, ptr %i.r, align 4, !tbaa !28
  switch i32 %i.gy, label %.critedge [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  %i.ha = load i16, ptr %i.gz, align 2            ; 4 uses
  %i.hb = lshr i16 %i.ha, 11
  %i.hc = getelementptr inbounds nuw i8, ptr %.6333, i64 %indvars.iv ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !17
  %i.hf = lshr i8 %i.he, 3
  %i.hg = zext nneg i8 %i.hf to i16
  %i.hh = add nuw nsw i16 %i.hb, %i.hg
  %i.hi = tail call i16 @llvm.umin.i16(i16 %i.hh, i16 31)
  %spec.select = shl nuw i16 %i.hi, 11
  %i.hj = lshr i16 %i.ha, 5
  %i.hk = and i16 %i.hj, 63
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !17
  %i.hn = lshr i8 %i.hm, 2
  %i.ho = zext nneg i8 %i.hn to i16
  %i.hp = add nuw nsw i16 %i.hk, %i.ho
  %i.hq = tail call i16 @llvm.umin.i16(i16 %i.hp, i16 63)
  %i.hr = shl nuw nsw i16 %i.hq, 5
  %i.hs = or disjoint i16 %i.hr, %spec.select
  %i.ht = and i16 %i.ha, 31
  %i.hu = load i8, ptr %i.hc, align 1, !tbaa !17
  %i.hv = lshr i8 %i.hu, 3
  %i.hw = zext nneg i8 %i.hv to i16
  %i.hx = add nuw nsw i16 %i.ht, %i.hw
  %i.hy = tail call i16 @llvm.umin.i16(i16 %i.hx, i16 31)
  %i.hz = or disjoint i16 %i.hs, %i.hy
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  %i.ib = load i16, ptr %i.ia, align 2            ; 4 uses
  %i.ic = lshr i16 %i.ib, 11
  %i.id = getelementptr inbounds nuw i8, ptr %.6333, i64 %indvars.iv ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !17
  %i.ig = lshr i8 %i.if, 3
  %i.ih = zext nneg i8 %i.ig to i16
  %i.ii = sub nsw i16 %i.ic, %i.ih
  %i.ij = tail call i16 @llvm.smax.i16(i16 %i.ii, i16 0)
  %i.ik = shl nuw i16 %i.ij, 11
  %i.il = lshr i16 %i.ib, 5
  %i.im = and i16 %i.il, 63
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !17
  %i.ip = lshr i8 %i.io, 2
  %i.iq = zext nneg i8 %i.ip to i16
  %i.ir = sub nsw i16 %i.im, %i.iq
  %i.is = tail call i16 @llvm.smax.i16(i16 %i.ir, i16 0)
  %i.it = shl nuw nsw i16 %i.is, 5
  %i.iu = add nuw i16 %i.it, %i.ik
  %i.iv = and i16 %i.ib, 31
  %i.iw = load i8, ptr %i.id, align 1, !tbaa !17
  %i.ix = lshr i8 %i.iw, 3
  %i.iy = zext nneg i8 %i.ix to i16
  %i.iz = sub nsw i16 %i.iv, %i.iy
  %i.ja = tail call i16 @llvm.smax.i16(i16 %i.iz, i16 0)
  %i.jb = add nuw i16 %i.iu, %i.ja
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  %i.jd = load i16, ptr %i.jc, align 2            ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.6333, i64 %indvars.iv ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !17
  %i.jh = lshr i8 %i.jg, 3
  %i.ji = zext nneg i8 %i.jh to i16
  %i.jj = lshr i16 %i.jd, 5                       ; 2 uses
  %i.jk = and i16 %i.jj, 1984
  %i.jl = mul nuw i16 %i.jk, %i.ji
  %i.jm = and i16 %i.jl, -2048
  %i.jn = and i16 %i.jj, 63
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !17
  %i.jq = lshr i8 %i.jp, 2
  %i.jr = zext nneg i8 %i.jq to i16
  %i.js = mul nuw nsw i16 %i.jn, %i.jr
  %i.jt = lshr i16 %i.js, 1
  %i.ju = and i16 %i.jt, 2016
  %i.jv = or disjoint i16 %i.ju, %i.jm
  %i.jw = and i16 %i.jd, 31
  %i.jx = load i8, ptr %i.je, align 1, !tbaa !17
  %i.jy = lshr i8 %i.jx, 3
  %i.jz = zext nneg i8 %i.jy to i16
  %i.ka = mul nuw nsw i16 %i.jw, %i.jz
  %i.kb = lshr i16 %i.ka, 5
  %i.kc = or disjoint i16 %i.jv, %i.kb
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  %i.ke = load i16, ptr %i.kd, align 2            ; 4 uses
  %i.kf = lshr i16 %i.ke, 11
  %i.kg = getelementptr inbounds nuw i8, ptr %.6333, i64 %indvars.iv ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !17
  %i.kj = lshr i8 %i.ki, 3
  %i.kk = zext nneg i8 %i.kj to i16
  %i.kl = sub nsw i16 %i.kf, %i.kk
  %i.km = tail call i16 @llvm.abs.i16(i16 %i.kl, i1 true)
  %i.kn = shl nuw i16 %i.km, 11
  %i.ko = lshr i16 %i.ke, 5
  %i.kp = and i16 %i.ko, 63
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !17
  %i.ks = lshr i8 %i.kr, 2
  %i.kt = zext nneg i8 %i.ks to i16
  %i.ku = sub nsw i16 %i.kp, %i.kt
  %i.kv = tail call i16 @llvm.abs.i16(i16 %i.ku, i1 true)
  %i.kw = shl nuw nsw i16 %i.kv, 5
  %i.kx = add nuw i16 %i.kw, %i.kn
  %i.ky = and i16 %i.ke, 31
  %i.kz = load i8, ptr %i.kg, align 1, !tbaa !17
  %i.la = lshr i8 %i.kz, 3
  %i.lb = zext nneg i8 %i.la to i16
  %i.lc = sub nsw i16 %i.ky, %i.lb
  %i.ld = tail call i16 @llvm.abs.i16(i16 %i.lc, i1 true)
  %i.le = add nuw i16 %i.kx, %i.ld
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.lf = phi i16 [ %i.ha, %bb.k ], [ %i.ib, %bb.l ], [ %i.jd, %bb.m ], [ %i.ke, %bb.n ]
  %.0259 = phi i16 [ %i.hz, %bb.k ], [ %i.jb, %bb.l ], [ %i.kc, %bb.m ], [ %i.le, %bb.n ]
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.6289332, i64 %indvars.iv430
  br i1 %i.gx, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lh = getelementptr inbounds nuw i8, ptr %.3275334, i64 %indvars.iv430
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !17  ; 2 uses
  br i1 %i.u, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lj = zext i8 %i.li to i16
  %i.lk = mul nuw i16 %i.lj, %i.v
  %i.ll = lshr i16 %i.lk, 8
  %i.lm = trunc nuw i16 %i.ll to i8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.q
  %.sink527 = phi i8 [ %i.f, %bb.o ], [ %i.lm, %bb.q ], [ %i.li, %bb.p ]
  %i.ln = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0259, i16 noundef zeroext %i.lf, i8 noundef zeroext %.sink527) #4
  store i16 %i.ln, ptr %i.lg, align 2, !tbaa !12
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.z
  %exitcond.not = icmp eq i64 %indvars.iv.next431, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !184

._crit_edge:                                      ; preds = %bb.r
  %i.lo = getelementptr inbounds nuw i8, ptr %.6289332, i64 %i.w
  %i.lp = getelementptr inbounds i8, ptr %.6333, i64 %i.x
  %i.lq = getelementptr inbounds i8, ptr %.3275334, i64 %i.y
  %.4276 = select i1 %i.gx, ptr null, ptr %i.lq
  %i.lr = add nuw nsw i32 %.4335, 1               ; 2 uses
  %exitcond435.not = icmp eq i32 %i.lr, %i.d
  br i1 %exitcond435.not, label %.critedge, label %.preheader324, !llvm.loop !185

.critedge:                                        ; preds = %._crit_edge, %bb.j, %._crit_edge397, %.preheader316.lr.ph, %.preheader321.lr.ph, %.preheader318.lr.ph, %.preheader319, %.preheader326, %.preheader324.lr.ph, %.preheader.lr.ph, %.loopexit
  ret void
}

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lv_draw_sw_rgb565_swap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!"short", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 12}
!17 = !{!4, !4, i64 0}
!18 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!19 = !{!18, !5, i64 8}
!20 = !{!18, !5, i64 12}
!21 = !{!18, !4, i64 56}
!22 = !{!18, !8, i64 0}
!23 = !{!18, !5, i64 16}
!24 = !{!18, !8, i64 40}
!25 = !{!18, !5, i64 48}
!26 = !{!18, !9, i64 24}
!27 = !{!18, !5, i64 32}
!28 = !{!18, !5, i64 60}
!29 = distinct !{!29, !13, !14, !15}
!30 = distinct !{!30, !13, !14, !15}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13, !15, !14}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!43 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !42, i64 36, !4, i64 39, !10, i64 40}
!44 = !{!43, !5, i64 8}
!45 = !{!43, !5, i64 12}
!46 = !{!43, !4, i64 39}
!47 = !{!43, !9, i64 24}
!48 = !{!43, !5, i64 32}
!49 = !{!43, !8, i64 0}
!50 = !{!43, !5, i64 16}
!51 = !{!5, !5, i64 0}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !13, !14, !15}
!94 = distinct !{!94, !13, !14, !15}
!95 = distinct !{!95, !13, !14}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !13, !14, !15}
!101 = distinct !{!101, !13, !14}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !103}
!107 = distinct !{!107, !13, !14, !15}
!108 = distinct !{!108, !13, !14}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13, !14, !15}
!115 = distinct !{!115, !13, !15, !14}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !"LVerDomain"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !13, !14, !15}
!129 = distinct !{!129, !13, !14}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !"LVerDomain"}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !13, !14, !15}
!135 = distinct !{!135, !13, !14}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !"LVerDomain"}
!138 = distinct !{!138, !137}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !137}
!141 = distinct !{!141, !13, !14, !15}
!142 = distinct !{!142, !13, !14}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = !{!18, !5, i64 52}
!149 = !{!91}
!150 = !{!92}
!151 = !{!98}
!152 = !{!99}
!153 = !{!104}
!154 = !{!105}
!155 = !{!104, !106}
!156 = !{!106}
!157 = !{!"", !4, i64 0, !4, i64 1}
!158 = !{!157, !4, i64 0}
!159 = !{!157, !4, i64 1}
!160 = !{!126}
!161 = !{!127}
!162 = !{!132}
!163 = !{!133}
!164 = !{!138}
!165 = !{!139}
!166 = !{!140, !138}
!167 = !{!140}
!168 = distinct !{!168, !"LVerDomain"}
!169 = distinct !{!169, !168}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !13, !14, !15}
!172 = distinct !{!172, !13, !14}
!173 = distinct !{!173, !13}
!174 = distinct !{!174, !"LVerDomain"}
!175 = distinct !{!175, !174}
!176 = distinct !{!176, !174}
!177 = distinct !{!177, !13, !14, !15}
!178 = distinct !{!178, !13, !14}
!179 = distinct !{!179, !13}
!180 = distinct !{!180, !13}
!181 = distinct !{!181, !13}
!182 = distinct !{!182, !13}
!183 = distinct !{!183, !13}
!184 = distinct !{!184, !13}
!185 = distinct !{!185, !13}
!186 = !{!169}
!187 = !{!170}
!188 = !{!175}
!189 = !{!176}
end_hunk_0
