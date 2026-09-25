Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb565_swapped?download=true
inline.NumInlined: 232
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb565_swapped:bb.a

lv_color_8_16_mix.exit230.i:                      ; preds = %bb.fa, %bb.ez
  %.0.i229.i = phi i16 [ %i.cmg, %bb.fa ], [ %i.cku, %bb.ez ]
  store i16 %.0.i229.i, ptr %i.ckt, align 2, !tbaa !12
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 1 ; 2 uses
  %exitcond314.not.i = icmp eq i64 %indvars.iv.next309.i, %wide.trip.count313.i
  br i1 %exitcond314.not.i, label %._crit_edge254.i, label %bb.ez, !llvm.loop !143

._crit_edge254.i:                                 ; preds = %lv_color_8_16_mix.exit230.i
  %i.cmh = getelementptr inbounds nuw i8, ptr %.3258.i, i64 %i.ckq
  %i.cmi = getelementptr inbounds nuw i8, ptr %.3215255.i, i64 %i.ckr
  %i.cmj = getelementptr inbounds i8, ptr %.1209256.i, i64 %i.cks
  %i.cmk = add nuw nsw i32 %.3196257.i, 1         ; 2 uses
  %exitcond315.not.i = icmp eq i32 %i.cmk, %i.bzi
  br i1 %exitcond315.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader239.i, !llvm.loop !144

.preheader242.i:                                  ; preds = %._crit_edge.i118, %.preheader242.preheader.i
  %.4251.i = phi ptr [ %i.cpz, %._crit_edge.i118 ], [ %i.bzl, %.preheader242.preheader.i ] ; 7 uses
  %.4197250.i = phi i32 [ %i.cqc, %._crit_edge.i118 ], [ 0, %.preheader242.preheader.i ]
  %.2210249.i = phi ptr [ %.3211.i, %._crit_edge.i118 ], [ %i.bzt, %.preheader242.preheader.i ] ; 3 uses
  %.4216248.i = phi ptr [ %i.cqa, %._crit_edge.i118 ], [ %i.bzp, %.preheader242.preheader.i ] ; 2 uses
  %i.cml = icmp eq ptr %.2210249.i, null          ; 3 uses
  %or.cond14.i = select i1 %i.cml, i1 %i.cac, i1 false
  %or.cond17.i = select i1 %i.cml, i1 %i.cad, i1 false
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fp, %.preheader242.i
  %indvars.iv.i114 = phi i64 [ 0, %.preheader242.i ], [ %indvars.iv.next.i116, %bb.fp ] ; 8 uses
  %.4202247.i = phi i32 [ 0, %.preheader242.i ], [ %i.cpy, %bb.fp ] ; 3 uses
  %i.cmm = lshr i32 %.4202247.i, 3
  %i.cmn = zext nneg i32 %i.cmm to i64
  %i.cmo = getelementptr inbounds nuw i8, ptr %.4216248.i, i64 %i.cmn
  %i.cmp = load i8, ptr %i.cmo, align 1, !tbaa !17
  %i.cmq = zext i8 %i.cmp to i32
  %i.cmr = and i32 %.4202247.i, 4
  %i.cms = xor i32 %i.cmr, 7
  %i.cmt = lshr i32 %i.cmq, %i.cms
  %i.cmu = trunc nuw nsw i32 %i.cmt to i8
  %i.cmv = and i8 %i.cmu, 1
  %narrow.i115 = sub nsw i8 0, %i.cmv             ; 4 uses
  %i.cmw = load i32, ptr %i.bzw, align 4, !tbaa !28
  switch i32 %i.cmw, label %rgb565_swapped_image_blend.exit [
    i32 1, label %bb.fc
    i32 2, label %bb.fd
    i32 3, label %bb.fe
    i32 4, label %bb.ff
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.cmx = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i114
  %i.cmy = load i16, ptr %i.cmx, align 2, !tbaa !12 ; 2 uses
  %i.cmz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cmy) ; 2 uses
  %i.cna = zext i16 %i.cmz to i32
  %i.cnb = zext i8 %narrow.i115 to i16            ; 3 uses
  %i.cnc = shl nuw i16 %i.cnb, 8
  %i.cnd = and i16 %i.cnc, -2048
  %i.cne = shl nuw nsw i16 %i.cnb, 3
  %i.cnf = and i16 %i.cne, 2016
  %i.cng = lshr i16 %i.cnb, 3
  %i.cnh = or disjoint i16 %i.cnf, %i.cng
  %i.cni = or disjoint i16 %i.cnh, %i.cnd         ; 2 uses
  %i.cnj = zext i16 %i.cni to i32
  %i.cnk = add nuw nsw i32 %i.cna, %i.cnj
  %i.cnl = icmp samesign ult i32 %i.cnk, 65535
  %i.cnm = add i16 %i.cmz, %i.cni
  %spec.select.i119 = select i1 %i.cnl, i16 %i.cnm, i16 -1
  br label %bb.fi

bb.fd:                                            ; preds = %bb.fb
  %i.cnn = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i114
  %i.cno = load i16, ptr %i.cnn, align 2, !tbaa !12 ; 2 uses
  %i.cnp = tail call noundef i16 @llvm.bswap.i16(i16 %i.cno)
  %i.cnq = zext i8 %narrow.i115 to i16            ; 3 uses
  %i.cnr = shl nuw i16 %i.cnq, 8
  %i.cns = and i16 %i.cnr, -2048
  %i.cnt = shl nuw nsw i16 %i.cnq, 3
  %i.cnu = and i16 %i.cnt, 2016
  %i.cnv = lshr i16 %i.cnq, 3
  %i.cnw = or disjoint i16 %i.cnu, %i.cnv
  %i.cnx = or disjoint i16 %i.cnw, %i.cns
  %spec.select231.i = tail call i16 @llvm.usub.sat.i16(i16 %i.cnp, i16 %i.cnx)
  br label %bb.fi

bb.fe:                                            ; preds = %bb.fb
  %i.cny = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i114
  %i.cnz = load i16, ptr %i.cny, align 2, !tbaa !12 ; 2 uses
  %i.coa = tail call noundef i16 @llvm.bswap.i16(i16 %i.cnz) ; 3 uses
  %i.cob = lshr i16 %i.coa, 11
  %i.coc = zext i8 %narrow.i115 to i16            ; 2 uses
  %i.cod = shl nuw nsw i16 %i.coc, 3
  %i.coe = and i16 %i.cod, 2016
  %i.cof = lshr i16 %i.coc, 3                     ; 2 uses
  %i.cog = or disjoint i16 %i.coe, %i.cof         ; 2 uses
  %i.coh = shl i16 %i.cog, 8
  %i.coi = and i16 %i.coh, -2048
  %i.coj = mul i16 %i.cob, %i.coi
  %i.cok = lshr i16 %i.coa, 5
  %i.col = and i16 %i.cok, 63
  %i.com = lshr i16 %i.cog, 2
  %i.con = and i16 %i.com, 63
  %narrow221.i = mul nuw nsw i16 %i.col, %i.con
  %i.coo = lshr i16 %narrow221.i, 1
  %i.cop = and i16 %i.coo, 2016
  %i.coq = or disjoint i16 %i.cop, %i.coj
  %i.cor = and i16 %i.coa, 31
  %narrow222.i = mul nuw nsw i16 %i.cor, %i.cof
  %i.cos = lshr i16 %narrow222.i, 5
  %i.cot = or disjoint i16 %i.coq, %i.cos
  br label %bb.fi

bb.ff:                                            ; preds = %bb.fb
  %i.cou = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i114
  %i.cov = load i16, ptr %i.cou, align 2, !tbaa !12 ; 3 uses
  %i.cow = tail call noundef i16 @llvm.bswap.i16(i16 %i.cov) ; 3 uses
  %i.cox = zext i8 %narrow.i115 to i16            ; 3 uses
  %i.coy = shl nuw i16 %i.cox, 8
  %i.coz = and i16 %i.coy, -2048
  %i.cpa = shl nuw nsw i16 %i.cox, 3
  %i.cpb = and i16 %i.cpa, 2016
  %i.cpc = lshr i16 %i.cox, 3
  %i.cpd = or disjoint i16 %i.cpb, %i.cpc
  %i.cpe = or disjoint i16 %i.cpd, %i.coz         ; 3 uses
  %i.cpf = icmp ugt i16 %i.cow, %i.cpe
  br i1 %i.cpf, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.cpg = sub nuw i16 %i.cow, %i.cpe
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %.neg.i = sub nuw i16 %i.cpe, %i.cow
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.fe, %bb.fd, %bb.fc
  %i.cph = phi i16 [ %i.cov, %bb.fg ], [ %i.cno, %bb.fd ], [ %i.cnz, %bb.fe ], [ %i.cov, %bb.fh ], [ %i.cmy, %bb.fc ]
  %.0191.i = phi i16 [ %i.cpg, %bb.fg ], [ %spec.select231.i, %bb.fd ], [ %i.cot, %bb.fe ], [ %.neg.i, %bb.fh ], [ %spec.select.i119, %bb.fc ] ; 4 uses
  br i1 %or.cond14.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.cpi = tail call noundef i16 @llvm.bswap.i16(i16 %.0191.i)
  %i.cpj = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i114
  store i16 %i.cpi, ptr %i.cpj, align 2, !tbaa !12
  br label %bb.fp

bb.fk:                                            ; preds = %bb.fi
  %i.cpk = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i114 ; 3 uses
  %i.cpl = tail call noundef i16 @llvm.bswap.i16(i16 %i.cph) ; 3 uses
  br i1 %or.cond17.i, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.cpm = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0191.i, i16 noundef zeroext %i.cpl, i8 noundef zeroext %i.bzk) #5
  %i.cpn = tail call noundef i16 @llvm.bswap.i16(i16 %i.cpm)
  store i16 %i.cpn, ptr %i.cpk, align 2, !tbaa !12
  br label %bb.fp

bb.fm:                                            ; preds = %bb.fk
  %i.cpo = getelementptr inbounds nuw i8, ptr %.2210249.i, i64 %indvars.iv.i114
  %i.cpp = load i8, ptr %i.cpo, align 1, !tbaa !17 ; 2 uses
  br i1 %i.cac, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.cpq = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0191.i, i16 noundef zeroext %i.cpl, i8 noundef zeroext %i.cpp) #5
  %i.cpr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cpq)
  store i16 %i.cpr, ptr %i.cpk, align 2, !tbaa !12
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.cps = zext i8 %i.cpp to i16
  %i.cpt = mul nuw i16 %i.cps, %i.cab
  %i.cpu = lshr i16 %i.cpt, 8
  %i.cpv = trunc nuw i16 %i.cpu to i8
  %i.cpw = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0191.i, i16 noundef zeroext %i.cpl, i8 noundef zeroext %i.cpv) #5
  %i.cpx = tail call noundef i16 @llvm.bswap.i16(i16 %i.cpw)
  store i16 %i.cpx, ptr %i.cpk, align 2, !tbaa !12
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fl, %bb.fj
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %i.cpy = add nuw nsw i32 %.4202247.i, 4
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i113
  br i1 %exitcond.not.i117, label %._crit_edge.i118, label %bb.fb, !llvm.loop !145

._crit_edge.i118:                                 ; preds = %bb.fp
  %i.cpz = getelementptr inbounds nuw i8, ptr %.4251.i, i64 %i.cae
  %i.cqa = getelementptr inbounds nuw i8, ptr %.4216248.i, i64 %i.caf
  %i.cqb = getelementptr inbounds i8, ptr %.2210249.i, i64 %i.cag
  %.3211.i = select i1 %i.cml, ptr null, ptr %i.cqb
  %i.cqc = add nuw nsw i32 %.4197250.i, 1         ; 2 uses
  %exitcond307.not.i = icmp eq i32 %i.cqc, %i.bzi
  br i1 %exitcond307.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader242.i, !llvm.loop !146

rgb565_swapped_image_blend.exit:                  ; preds = %._crit_edge.i118, %bb.fb, %._crit_edge254.i, %._crit_edge261.i, %._crit_edge268.split.split.i, %._crit_edge294.i, %.lr.ph348.split.i, %._crit_edge.us.i93, %bb.du, %._crit_edge.i101, %._crit_edge357.i, %._crit_edge364.i, %._crit_edge370.i111, %.lr.ph326.split.i, %._crit_edge.us.i69, %bb.db, %._crit_edge.i74, %._crit_edge335.i76, %._crit_edge342.split.split.i, %._crit_edge367.i, %.lr.ph419.split.i, %._crit_edge.us.i48, %bb.bv, %._crit_edge.i54, %._crit_edge428.i, %._crit_edge435.i, %._crit_edge441.i, %.lr.ph361.split.i, %._crit_edge.us.i, %bb.av, %._crit_edge.i34, %._crit_edge370.i, %._crit_edge377.i, %._crit_edge383.i, %._crit_edge.i16, %bb.ag, %._crit_edge329.i, %._crit_edge335.i, %._crit_edge341.i, %bb.aa, %._crit_edge.i, %._crit_edge292.i, %._crit_edge298.i, %._crit_edge304.i, %bb.e, %.preheader239.lr.ph.i, %bb.ey, %.preheader236.lr.ph.i, %.preheader237.i, %.preheader233.lr.ph.i, %.preheader234.i, %.preheader.lr.ph.i126, %.preheader232.i, %.preheader242.lr.ph.i, %.preheader244.i, %.preheader334.lr.ph.i, %bb.ep, %.preheader331.lr.ph.i, %.preheader332.i, %.preheader328.lr.ph.i, %.preheader329.i, %.preheader.lr.ph.i105, %.preheader327.i, %.preheader338.i, %.preheader312.lr.ph.i, %bb.dq, %.preheader309.lr.ph.i, %.preheader310.i, %.preheader306.lr.ph.i, %.preheader307.i, %.preheader.lr.ph.i79, %.preheader305.i, %.preheader316.i, %.preheader405.lr.ph.i, %bb.cv, %.preheader402.lr.ph.i, %.preheader403.i, %.preheader399.lr.ph.i, %.preheader400.i, %.preheader.lr.ph.i57, %.preheader398.i, %.preheader409.i, %.preheader347.lr.ph.i, %bb.br, %.preheader344.lr.ph.i, %.preheader345.i, %.preheader341.lr.ph.i, %.preheader342.i, %.preheader.lr.ph.i35, %.preheader340.i, %.preheader351.i, %.preheader311.lr.ph.i, %.preheader312.i, %.preheader314.lr.ph.i, %.preheader315.i, %.preheader.lr.ph.i22, %.preheader309.i, %bb.z, %.preheader317.lr.ph.i, %.preheader319.i, %bb.w, %.preheader276.lr.ph.i, %.preheader277.i, %.preheader279.lr.ph.i, %.preheader280.i, %.preheader.lr.ph.i, %.preheader274.i, %bb.d, %.preheader282.lr.ph.i, %.preheader283.i, %bb.a, %bb.at, %bb.as
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.fr = freeze i32 %i.b                          ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !21    ; 9 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
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
  br i1 %i.t, label %bb.k, label %.preheader327

.preheader327:                                    ; preds = %bb.a
  %.not309332 = icmp sgt i32 %i.d, 0
  br i1 %.not309332, label %.lr.ph337, label %.critedge

.lr.ph337:                                        ; preds = %.preheader327
  %.not308329 = icmp sgt i32 %.fr, 0
  %i.u = icmp ugt i8 %i.f, -4
  %i.v = zext i8 %i.f to i16
  %i.w = zext i32 %i.i to i64                     ; 2 uses
  %i.x = sext i32 %i.m to i64
  %i.y = sext i32 %i.q to i64
  br i1 %.not308329, label %.lr.ph.us.preheader, label %.lr.ph337.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph337
  %i.z = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.4336.us = phi i32 [ %i.ev, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.3277335.us = phi ptr [ %.4278.us, %._crit_edge.us ], [ %i.o, %.lr.ph.us.preheader ] ; 3 uses
  %.6334.us = phi ptr [ %i.et, %._crit_edge.us ], [ %i.k, %.lr.ph.us.preheader ] ; 5 uses
  %.6291333.us = phi ptr [ %i.es, %._crit_edge.us ], [ %i.g, %.lr.ph.us.preheader ] ; 7 uses
  tail call void @lv_draw_sw_rgb565_swap(ptr noundef %.6291333.us, i32 noundef %.fr) #5
  %i.aa = icmp eq ptr %.3277335.us, null          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.j
  %indvars.iv435 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next436, %bb.j ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.ab = load i32, ptr %i.r, align 4, !tbaa !28
  switch i32 %i.ab, label %.critedge [
    i32 1, label %bb.f
    i32 2, label %bb.e
    i32 3, label %bb.d
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.ad = load i16, ptr %i.ac, align 2            ; 4 uses
  %i.ae = lshr i16 %i.ad, 11
  %i.af = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = lshr i8 %i.ah, 3
  %i.aj = zext nneg i8 %i.ai to i16
  %i.ak = sub nsw i16 %i.ae, %i.aj
  %i.al = tail call i16 @llvm.abs.i16(i16 %i.ak, i1 true)
  %i.am = shl nuw i16 %i.al, 11
  %i.an = lshr i16 %i.ad, 5
  %i.ao = and i16 %i.an, 63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = lshr i8 %i.aq, 2
  %i.as = zext nneg i8 %i.ar to i16
  %i.at = sub nsw i16 %i.ao, %i.as
  %i.au = tail call i16 @llvm.abs.i16(i16 %i.at, i1 true)
  %i.av = shl nuw nsw i16 %i.au, 5
  %i.aw = add nuw i16 %i.av, %i.am
  %i.ax = and i16 %i.ad, 31
  %i.ay = load i8, ptr %i.af, align 1, !tbaa !17
  %i.az = lshr i8 %i.ay, 3
  %i.ba = zext nneg i8 %i.az to i16
  %i.bb = sub nsw i16 %i.ax, %i.ba
  %i.bc = tail call i16 @llvm.abs.i16(i16 %i.bb, i1 true)
  %i.bd = add nuw i16 %i.aw, %i.bc
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.bf = load i16, ptr %i.be, align 2            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bj = lshr i8 %i.bi, 3
  %i.bk = zext nneg i8 %i.bj to i16
  %i.bl = lshr i16 %i.bf, 5                       ; 2 uses
  %i.bm = and i16 %i.bl, 1984
  %i.bn = mul nuw i16 %i.bm, %i.bk
  %i.bo = and i16 %i.bn, -2048
  %i.bp = and i16 %i.bl, 63
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = lshr i8 %i.br, 2
  %i.bt = zext nneg i8 %i.bs to i16
  %i.bu = mul nuw nsw i16 %i.bp, %i.bt
  %i.bv = lshr i16 %i.bu, 1
  %i.bw = and i16 %i.bv, 2016
  %i.bx = or disjoint i16 %i.bw, %i.bo
  %i.by = and i16 %i.bf, 31
  %i.bz = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.ca = lshr i8 %i.bz, 3
  %i.cb = zext nneg i8 %i.ca to i16
  %i.cc = mul nuw nsw i16 %i.by, %i.cb
  %i.cd = lshr i16 %i.cc, 5
  %i.ce = or disjoint i16 %i.bx, %i.cd
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.cg = load i16, ptr %i.cf, align 2            ; 4 uses
  %i.ch = lshr i16 %i.cg, 11
  %i.ci = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = lshr i8 %i.ck, 3
  %i.cm = zext nneg i8 %i.cl to i16
  %i.cn = sub nsw i16 %i.ch, %i.cm
  %i.co = tail call i16 @llvm.smax.i16(i16 %i.cn, i16 0)
  %i.cp = shl nuw i16 %i.co, 11
  %i.cq = lshr i16 %i.cg, 5
  %i.cr = and i16 %i.cq, 63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17
  %i.cu = lshr i8 %i.ct, 2
  %i.cv = zext nneg i8 %i.cu to i16
  %i.cw = sub nsw i16 %i.cr, %i.cv
  %i.cx = tail call i16 @llvm.smax.i16(i16 %i.cw, i16 0)
  %i.cy = shl nuw nsw i16 %i.cx, 5
  %i.cz = add nuw i16 %i.cy, %i.cp
  %i.da = and i16 %i.cg, 31
  %i.db = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.dc = lshr i8 %i.db, 3
  %i.dd = zext nneg i8 %i.dc to i16
  %i.de = sub nsw i16 %i.da, %i.dd
  %i.df = tail call i16 @llvm.smax.i16(i16 %i.de, i16 0)
  %i.dg = add nuw i16 %i.cz, %i.df
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.di = load i16, ptr %i.dh, align 2            ; 4 uses
  %i.dj = lshr i16 %i.di, 11
  %i.dk = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !17
  %i.dn = lshr i8 %i.dm, 3
  %i.do = zext nneg i8 %i.dn to i16
  %i.dp = add nuw nsw i16 %i.dj, %i.do
  %i.dq = tail call i16 @llvm.umin.i16(i16 %i.dp, i16 31)
  %spec.select.us = shl nuw i16 %i.dq, 11
  %i.dr = lshr i16 %i.di, 5
  %i.ds = and i16 %i.dr, 63
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !17
  %i.dv = lshr i8 %i.du, 2
  %i.dw = zext nneg i8 %i.dv to i16
  %i.dx = add nuw nsw i16 %i.ds, %i.dw
  %i.dy = tail call i16 @llvm.umin.i16(i16 %i.dx, i16 63)
  %i.dz = shl nuw nsw i16 %i.dy, 5
  %i.ea = or disjoint i16 %i.dz, %spec.select.us
  %i.eb = and i16 %i.di, 31
  %i.ec = load i8, ptr %i.dk, align 1, !tbaa !17
  %i.ed = lshr i8 %i.ec, 3
  %i.ee = zext nneg i8 %i.ed to i16
  %i.ef = add nuw nsw i16 %i.eb, %i.ee
  %i.eg = tail call i16 @llvm.umin.i16(i16 %i.ef, i16 31)
  %i.eh = or disjoint i16 %i.ea, %i.eg
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ei = phi i16 [ %i.di, %bb.f ], [ %i.cg, %bb.e ], [ %i.bf, %bb.d ], [ %i.ad, %bb.c ]
  %.0261.us = phi i16 [ %i.eh, %bb.f ], [ %i.dg, %bb.e ], [ %i.ce, %bb.d ], [ %i.bd, %bb.c ]
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  br i1 %i.aa, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ek = getelementptr inbounds nuw i8, ptr %.3277335.us, i64 %indvars.iv435
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !17  ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = zext i8 %i.el to i16
  %i.en = mul nuw i16 %i.em, %i.v
  %i.eo = lshr i16 %i.en, 8
  %i.ep = trunc nuw i16 %i.eo to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink = phi i8 [ %i.el, %bb.h ], [ %i.ep, %bb.i ], [ %i.f, %bb.g ]
  %i.eq = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0261.us, i16 noundef zeroext %i.ei, i8 noundef zeroext %.sink) #5
  %i.er = tail call noundef i16 @llvm.bswap.i16(i16 %i.eq)
  store i16 %i.er, ptr %i.ej, align 2, !tbaa !12
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.z
  %exitcond440.not = icmp eq i64 %indvars.iv.next436, %wide.trip.count
  br i1 %exitcond440.not, label %._crit_edge.us, label %bb.b, !llvm.loop !167

._crit_edge.us:                                   ; preds = %bb.j
  %i.es = getelementptr inbounds nuw i8, ptr %.6291333.us, i64 %i.w
  %i.et = getelementptr inbounds i8, ptr %.6334.us, i64 %i.x
  %i.eu = getelementptr inbounds i8, ptr %.3277335.us, i64 %i.y
  %.4278.us = select i1 %i.aa, ptr null, ptr %i.eu
  %i.ev = add nuw nsw i32 %.4336.us, 1            ; 2 uses
  %exitcond441.not = icmp eq i32 %i.ev, %i.d
  br i1 %exitcond441.not, label %.critedge, label %.lr.ph.us, !llvm.loop !168

bb.k:                                             ; preds = %bb.a
  %i.ew = icmp eq ptr %i.o, null                  ; 2 uses
  %i.ex = zext i8 %i.f to i16                     ; 4 uses
  %i.ey = icmp ugt i8 %i.f, -4                    ; 2 uses
  %or.cond = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond, label %.preheader321, label %bb.m

.preheader321:                                    ; preds = %bb.k
  %i.ez = icmp sgt i32 %i.d, 0
  br i1 %i.ez, label %.preheader320.lr.ph, label %.critedge

.preheader320.lr.ph:                              ; preds = %.preheader321
  %i.fa = icmp sgt i32 %.fr, 0
  %i.fb = zext i32 %i.i to i64
  %i.fc = sext i32 %i.m to i64
  br i1 %i.fa, label %.preheader320.us.preheader, label %.critedge

.preheader320.us.preheader:                       ; preds = %.preheader320.lr.ph
  %i.fd = zext nneg i8 %1 to i64
  %wide.trip.count474 = zext nneg i32 %.fr to i64
  br label %.preheader320.us

.preheader320.us:                                 ; preds = %.preheader320.us.preheader, %._crit_edge.us383
  %.0262379.us = phi i32 [ %i.ft, %._crit_edge.us383 ], [ 0, %.preheader320.us.preheader ]
  %.0279378.us = phi ptr [ %i.fs, %._crit_edge.us383 ], [ %i.k, %.preheader320.us.preheader ] ; 2 uses
  %.0285377.us = phi ptr [ %i.fr, %._crit_edge.us383 ], [ %i.g, %.preheader320.us.preheader ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader320.us, %bb.l
  %indvars.iv469 = phi i64 [ 0, %.preheader320.us ], [ %indvars.iv.next470, %bb.l ] ; 2 uses
  %indvars.iv467 = phi i64 [ 0, %.preheader320.us ], [ %indvars.iv.next468, %bb.l ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0279378.us, i64 %indvars.iv467 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fg = load <2 x i8>, ptr %i.ff, align 1, !tbaa !17
  %i.fh = and <2 x i8> %i.fg, <i8 -4, i8 -8>
  %i.fi = zext <2 x i8> %i.fh to <2 x i16>
  %i.fj = shl nuw <2 x i16> %i.fi, <i16 3, i16 8> ; 2 uses
  %shift = shufflevector <2 x i16> %i.fj, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %i.fj, %shift
  %i.fk = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.fl = load i8, ptr %i.fe, align 1, !tbaa !17
  %i.fm = lshr i8 %i.fl, 3
  %i.fn = zext nneg i8 %i.fm to i16
  %i.fo = or disjoint i16 %i.fk, %i.fn
  %i.fp = tail call noundef i16 @llvm.bswap.i16(i16 %i.fo)
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.0285377.us, i64 %indvars.iv469
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !12
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, %i.fd
  %exitcond475.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count474
  br i1 %exitcond475.not, label %._crit_edge.us383, label %bb.l, !llvm.loop !169

._crit_edge.us383:                                ; preds = %bb.l
  %i.fr = getelementptr inbounds nuw i8, ptr %.0285377.us, i64 %i.fb ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.0279378.us, i64 %i.fc ; 2 uses
  %i.ft = add nuw nsw i32 %.0262379.us, 1         ; 2 uses
  %exitcond476.not = icmp eq i32 %i.ft, %i.d
  br i1 %exitcond476.not, label %.loopexit322, label %.preheader320.us, !llvm.loop !170

bb.m:                                             ; preds = %bb.k
  %i.fu = icmp ult i8 %i.f, -3
  %or.cond6 = select i1 %i.ew, i1 %i.fu, i1 false
  %i.fv = icmp sgt i32 %i.d, 0
  %or.cond406 = select i1 %or.cond6, i1 %i.fv, i1 false
  br i1 %or.cond406, label %.preheader323.lr.ph, label %.loopexit322

.preheader323.lr.ph:                              ; preds = %bb.m
  %i.fw = icmp slt i32 %.fr, 1
  %i.fx = xor i8 %i.f, -1
  %i.fy = zext i8 %i.fx to i16                    ; 3 uses
  %i.fz = zext i32 %i.i to i64
  %i.ga = sext i32 %i.m to i64
  %cond527 = icmp eq i8 %i.f, 0
  %or.cond528 = select i1 %i.fw, i1 true, i1 %cond527
  br i1 %or.cond528, label %.critedge, label %.preheader323.us.preheader

.preheader323.us.preheader:                       ; preds = %.preheader323.lr.ph
  %i.gb = zext nneg i8 %1 to i64
  %wide.trip.count462 = zext nneg i32 %.fr to i64
  br label %.preheader323.us

.preheader323.us:                                 ; preds = %.preheader323.us.preheader, %._crit_edge.split.split.us358
  %.1263351.us = phi i32 [ %i.ho, %._crit_edge.split.split.us358 ], [ 0, %.preheader323.us.preheader ]
  %.1280348.us = phi ptr [ %i.hn, %._crit_edge.split.split.us358 ], [ %i.k, %.preheader323.us.preheader ] ; 2 uses
  %.1286345.us = phi ptr [ %i.hm, %._crit_edge.split.split.us358 ], [ %i.g, %.preheader323.us.preheader ] ; 2 uses
  br label %lv_color_24_16_mix.exit.us355

lv_color_24_16_mix.exit.us355:                    ; preds = %lv_color_24_16_mix.exit.us355, %.preheader323.us
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %lv_color_24_16_mix.exit.us355 ], [ 0, %.preheader323.us ] ; 2 uses
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %lv_color_24_16_mix.exit.us355 ], [ 0, %.preheader323.us ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.1280348.us, i64 %indvars.iv455 ; 3 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.1286345.us, i64 %indvars.iv457 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !12
  %i.gf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ge) ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !17
  %i.gi = lshr i8 %i.gh, 3
  %i.gj = zext nneg i8 %i.gi to i16
  %i.gk = mul nuw nsw i16 %i.gj, %i.ex
  %i.gl = lshr i16 %i.gf, 11
  %i.gm = mul nuw nsw i16 %i.gl, %i.fy
  %i.gn = add nuw nsw i16 %i.gk, %i.gm
  %i.go = shl i16 %i.gn, 3
  %i.gp = and i16 %i.go, -2048
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !17
  %i.gs = lshr i8 %i.gr, 2
  %i.gt = zext nneg i8 %i.gs to i16
  %i.gu = mul nuw nsw i16 %i.gt, %i.ex
  %i.gv = lshr i16 %i.gf, 5
  %i.gw = and i16 %i.gv, 63
  %i.gx = mul nuw nsw i16 %i.gw, %i.fy
  %i.gy = add nuw nsw i16 %i.gu, %i.gx
  %i.gz = lshr i16 %i.gy, 3
  %i.ha = and i16 %i.gz, 2016
  %i.hb = or disjoint i16 %i.ha, %i.gp
  %i.hc = load i8, ptr %i.gc, align 1, !tbaa !17
  %i.hd = lshr i8 %i.hc, 3
  %i.he = zext nneg i8 %i.hd to i16
  %i.hf = mul nuw nsw i16 %i.he, %i.ex
  %i.hg = and i16 %i.gf, 31
  %i.hh = mul nuw nsw i16 %i.hg, %i.fy
  %i.hi = add nuw nsw i16 %i.hf, %i.hh
  %i.hj = lshr i16 %i.hi, 8
  %i.hk = add i16 %i.hb, %i.hj
  %i.hl = tail call noundef i16 @llvm.bswap.i16(i16 %i.hk)
  store i16 %i.hl, ptr %i.gd, align 2, !tbaa !12
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, %i.gb
  %exitcond463.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count462
  br i1 %exitcond463.not, label %._crit_edge.split.split.us358, label %lv_color_24_16_mix.exit.us355, !llvm.loop !171

._crit_edge.split.split.us358:                    ; preds = %lv_color_24_16_mix.exit.us355
  %i.hm = getelementptr inbounds nuw i8, ptr %.1286345.us, i64 %i.fz ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %.1280348.us, i64 %i.ga ; 2 uses
  %i.ho = add nuw nsw i32 %.1263351.us, 1         ; 2 uses
  %exitcond464.not = icmp eq i32 %i.ho, %i.d
  br i1 %exitcond464.not, label %.loopexit322, label %.preheader323.us, !llvm.loop !172

.loopexit322:                                     ; preds = %._crit_edge.split.split.us358, %._crit_edge.us383, %bb.m
  %.2287 = phi ptr [ %i.g, %bb.m ], [ %i.fr, %._crit_edge.us383 ], [ %i.hm, %._crit_edge.split.split.us358 ] ; 2 uses
  %.2281 = phi ptr [ %i.k, %bb.m ], [ %i.fs, %._crit_edge.us383 ], [ %i.hn, %._crit_edge.split.split.us358 ] ; 2 uses
  %i.hp = icmp ne ptr %i.o, null
  %or.cond9 = select i1 %i.hp, i1 %i.ey, i1 false
  %i.hq = icmp sgt i32 %i.d, 0                    ; 2 uses
  %or.cond407 = select i1 %or.cond9, i1 %i.hq, i1 false
  br i1 %or.cond407, label %.preheader318.lr.ph, label %.loopexit

.preheader318.lr.ph:                              ; preds = %.loopexit322
  %i.hr = icmp sgt i32 %.fr, 0
  %i.hs = zext i32 %i.i to i64
  %i.ht = sext i32 %i.m to i64
  %i.hu = sext i32 %i.q to i64
  br i1 %i.hr, label %.preheader318.us.preheader, label %.critedge

.preheader318.us.preheader:                       ; preds = %.preheader318.lr.ph
  %i.hv = zext nneg i8 %1 to i64
  %wide.trip.count487 = zext nneg i32 %.fr to i64
  br label %.preheader318.us

.preheader318.us:                                 ; preds = %.preheader318.us.preheader, %._crit_edge.us396
  %.2391.us = phi i32 [ %i.jy, %._crit_edge.us396 ], [ 0, %.preheader318.us.preheader ]
  %.0274390.us = phi ptr [ %i.jx, %._crit_edge.us396 ], [ %i.o, %.preheader318.us.preheader ] ; 2 uses
  %.3282389.us = phi ptr [ %i.jw, %._crit_edge.us396 ], [ %.2281, %.preheader318.us.preheader ] ; 2 uses
  %.3288388.us = phi ptr [ %i.jv, %._crit_edge.us396 ], [ %.2287, %.preheader318.us.preheader ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader318.us, %lv_color_24_16_mix.exit311.us
  %indvars.iv482 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next483, %lv_color_24_16_mix.exit311.us ] ; 3 uses
  %indvars.iv480 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next481, %lv_color_24_16_mix.exit311.us ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.3282389.us, i64 %indvars.iv480 ; 5 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %.3288388.us, i64 %indvars.iv482 ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !12
  %i.hz = tail call noundef i16 @llvm.bswap.i16(i16 %i.hy) ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0274390.us, i64 %indvars.iv482
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.ib, label %bb.p [
    i8 0, label %lv_color_24_16_mix.exit311.us
    i8 -1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.id = load <2 x i8>, ptr %i.ic, align 1, !tbaa !17
  %i.ie = and <2 x i8> %i.id, <i8 -4, i8 -8>
  %i.if = zext <2 x i8> %i.ie to <2 x i16>
  %i.ig = shl nuw <2 x i16> %i.if, <i16 3, i16 8> ; 2 uses
  %shift543 = shufflevector <2 x i16> %i.ig, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop544 = or disjoint <2 x i16> %i.ig, %shift543
  %i.ih = extractelement <2 x i16> %foldExtExtBinop544, i64 0
  %i.ii = load i8, ptr %i.hw, align 1, !tbaa !17
  %i.ij = lshr i8 %i.ii, 3
  %i.ik = zext nneg i8 %i.ij to i16
  %i.il = or disjoint i16 %i.ih, %i.ik
  br label %lv_color_24_16_mix.exit311.us

bb.p:                                             ; preds = %bb.n
  %i.im = zext i8 %i.ib to i16                    ; 3 uses
  %i.in = xor i8 %i.ib, -1
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !17
  %i.iq = lshr i8 %i.ip, 3
  %i.ir = zext nneg i8 %i.iq to i16
  %i.is = mul nuw nsw i16 %i.ir, %i.im
  %i.it = lshr i16 %i.hz, 11
  %i.iu = zext i8 %i.in to i16                    ; 3 uses
  %i.iv = mul nuw nsw i16 %i.it, %i.iu
  %i.iw = add nuw nsw i16 %i.is, %i.iv
  %i.ix = shl i16 %i.iw, 3
  %i.iy = and i16 %i.ix, -2048
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !17
  %i.jb = lshr i8 %i.ja, 2
  %i.jc = zext nneg i8 %i.jb to i16
  %i.jd = mul nuw nsw i16 %i.jc, %i.im
  %i.je = lshr i16 %i.hz, 5
  %i.jf = and i16 %i.je, 63
  %i.jg = mul nuw nsw i16 %i.jf, %i.iu
  %i.jh = add nuw nsw i16 %i.jd, %i.jg
  %i.ji = lshr i16 %i.jh, 3
  %i.jj = and i16 %i.ji, 2016
  %i.jk = or disjoint i16 %i.jj, %i.iy
  %i.jl = load i8, ptr %i.hw, align 1, !tbaa !17
  %i.jm = lshr i8 %i.jl, 3
  %i.jn = zext nneg i8 %i.jm to i16
  %i.jo = mul nuw nsw i16 %i.jn, %i.im
  %i.jp = and i16 %i.hz, 31
  %i.jq = mul nuw nsw i16 %i.jp, %i.iu
  %i.jr = add nuw nsw i16 %i.jo, %i.jq
  %i.js = lshr i16 %i.jr, 8
  %i.jt = add i16 %i.jk, %i.js
  br label %lv_color_24_16_mix.exit311.us

lv_color_24_16_mix.exit311.us:                    ; preds = %bb.p, %bb.o, %bb.n
  %.0.i310.us = phi i16 [ %i.jt, %bb.p ], [ %i.il, %bb.o ], [ %i.hz, %bb.n ]
  %i.ju = tail call noundef i16 @llvm.bswap.i16(i16 %.0.i310.us)
  store i16 %i.ju, ptr %i.hx, align 2, !tbaa !12
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, %i.hv
  %exitcond488.not = icmp eq i64 %indvars.iv.next483, %wide.trip.count487
  br i1 %exitcond488.not, label %._crit_edge.us396, label %bb.n, !llvm.loop !173

._crit_edge.us396:                                ; preds = %lv_color_24_16_mix.exit311.us
  %i.jv = getelementptr inbounds nuw i8, ptr %.3288388.us, i64 %i.hs ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %.3282389.us, i64 %i.ht ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %.0274390.us, i64 %i.hu ; 2 uses
  %i.jy = add nuw nsw i32 %.2391.us, 1            ; 2 uses
  %exitcond489.not = icmp eq i32 %i.jy, %i.d
  br i1 %exitcond489.not, label %.loopexit, label %.preheader318.us, !llvm.loop !174

.loopexit:                                        ; preds = %._crit_edge.us396, %.loopexit322
  %.4289 = phi ptr [ %.2287, %.loopexit322 ], [ %i.jv, %._crit_edge.us396 ]
  %.4283 = phi ptr [ %.2281, %.loopexit322 ], [ %i.jw, %._crit_edge.us396 ]
  %.1275 = phi ptr [ %i.o, %.loopexit322 ], [ %i.jx, %._crit_edge.us396 ] ; 2 uses
  %i.jz = icmp ne ptr %.1275, null
  %i.ka = icmp ult i8 %i.f, -3
  %or.cond12 = select i1 %i.jz, i1 %i.ka, i1 false
  %or.cond408 = select i1 %or.cond12, i1 %i.hq, i1 false
  br i1 %or.cond408, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.kb = icmp sgt i32 %.fr, 0
  %i.kc = zext i32 %i.i to i64
  %i.kd = sext i32 %i.m to i64
  %i.ke = sext i32 %i.q to i64
  br i1 %i.kb, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kf = zext nneg i8 %1 to i64
  %wide.trip.count497 = zext nneg i32 %.fr to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.3405 = phi i32 [ %i.lz, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.2276404 = phi ptr [ %i.ly, %._crit_edge ], [ %.1275, %.preheader.preheader ] ; 2 uses
  %.5284403 = phi ptr [ %i.lx, %._crit_edge ], [ %.4283, %.preheader.preheader ] ; 2 uses
  %.5290402 = phi ptr [ %i.lw, %._crit_edge ], [ %.4289, %.preheader.preheader ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %lv_color_24_16_mix.exit313
  %indvars.iv492 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next493, %lv_color_24_16_mix.exit313 ] ; 3 uses
  %indvars.iv490 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next491, %lv_color_24_16_mix.exit313 ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.5290402, i64 %indvars.iv492 ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !12 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.2276404, i64 %indvars.iv492
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !17
  %i.kk = zext i8 %i.kj to i16
  %i.kl = mul nuw i16 %i.kk, %i.ex
  %i.km = lshr i16 %i.kl, 8                       ; 5 uses
  %cond = icmp eq i16 %i.km, 0
  br i1 %cond, label %lv_color_24_16_mix.exit313, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kn = tail call noundef i16 @llvm.bswap.i16(i16 %i.kh) ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.5284403, i64 %indvars.iv490 ; 3 uses
  %i.kp = xor i16 %i.km, 255                      ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !17
  %i.ks = lshr i8 %i.kr, 3
  %i.kt = zext nneg i8 %i.ks to i16
  %i.ku = mul nuw nsw i16 %i.km, %i.kt
  %i.kv = lshr i16 %i.kn, 11
  %i.kw = mul nuw nsw i16 %i.kp, %i.kv
  %i.kx = add nuw nsw i16 %i.ku, %i.kw
  %i.ky = shl nuw i16 %i.kx, 3
  %i.kz = and i16 %i.ky, -2048
  %i.la = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !17
  %i.lc = lshr i8 %i.lb, 2
  %i.ld = zext nneg i8 %i.lc to i16
  %i.le = mul nuw nsw i16 %i.km, %i.ld
  %i.lf = lshr i16 %i.kn, 5
  %i.lg = and i16 %i.lf, 63
  %i.lh = mul nuw nsw i16 %i.kp, %i.lg
  %i.li = add nuw nsw i16 %i.le, %i.lh
  %i.lj = lshr i16 %i.li, 3
  %i.lk = and i16 %i.lj, 2016
  %i.ll = or disjoint i16 %i.lk, %i.kz
  %i.lm = load i8, ptr %i.ko, align 1, !tbaa !17
  %i.ln = lshr i8 %i.lm, 3
  %i.lo = zext nneg i8 %i.ln to i16
  %i.lp = mul nuw nsw i16 %i.km, %i.lo
  %i.lq = and i16 %i.kn, 31
  %i.lr = mul nuw nsw i16 %i.kp, %i.lq
  %i.ls = add nuw nsw i16 %i.lp, %i.lr
  %i.lt = lshr i16 %i.ls, 8
  %i.lu = or disjoint i16 %i.ll, %i.lt
  %i.lv = tail call i16 @llvm.bswap.i16(i16 %i.lu)
  br label %lv_color_24_16_mix.exit313

lv_color_24_16_mix.exit313:                       ; preds = %bb.q, %bb.r
  %.0.i312 = phi i16 [ %i.lv, %bb.r ], [ %i.kh, %bb.q ]
  store i16 %.0.i312, ptr %i.kg, align 2, !tbaa !12
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, %i.kf
  %exitcond498.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count497
  br i1 %exitcond498.not, label %._crit_edge, label %bb.q, !llvm.loop !175

._crit_edge:                                      ; preds = %lv_color_24_16_mix.exit313
  %i.lw = getelementptr inbounds nuw i8, ptr %.5290402, i64 %i.kc
  %i.lx = getelementptr inbounds i8, ptr %.5284403, i64 %i.kd
  %i.ly = getelementptr inbounds i8, ptr %.2276404, i64 %i.ke
  %i.lz = add nuw nsw i32 %.3405, 1               ; 2 uses
  %exitcond499.not = icmp eq i32 %i.lz, %i.d
  br i1 %exitcond499.not, label %.critedge, label %.preheader, !llvm.loop !176

.lr.ph337.split:                                  ; preds = %.lr.ph337, %.lr.ph337.split
  %.4336 = phi i32 [ %i.mb, %.lr.ph337.split ], [ 0, %.lr.ph337 ]
  %.6291333 = phi ptr [ %i.ma, %.lr.ph337.split ], [ %i.g, %.lr.ph337 ] ; 2 uses
  tail call void @lv_draw_sw_rgb565_swap(ptr noundef %.6291333, i32 noundef %.fr) #5
  %i.ma = getelementptr inbounds nuw i8, ptr %.6291333, i64 %i.w
  %i.mb = add nuw nsw i32 %.4336, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.mb, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph337.split, !llvm.loop !168

.critedge:                                        ; preds = %.lr.ph337.split, %._crit_edge.us, %bb.b, %._crit_edge, %.preheader318.lr.ph, %.preheader323.lr.ph, %.preheader320.lr.ph, %.preheader321, %.preheader327, %.preheader.lr.ph, %.loopexit
  ret void
}

declare void @lv_draw_sw_rgb565_swap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!41 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!42 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !41, i64 36, !4, i64 39, !10, i64 40}
!43 = !{!42, !5, i64 8}
!44 = !{!42, !5, i64 12}
!45 = !{!42, !4, i64 39}
!46 = !{!42, !9, i64 24}
!47 = !{!42, !5, i64 32}
!48 = !{!42, !8, i64 0}
!49 = !{!42, !5, i64 16}
!50 = !{!5, !5, i64 0}
!51 = distinct !{!51, !13}
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
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !13, !14, !15}
!95 = distinct !{!95, !13, !14, !15}
!96 = distinct !{!96, !13, !14}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !13, !14, !15}
!102 = distinct !{!102, !13, !14}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !104}
!108 = distinct !{!108, !13, !14, !15}
!109 = distinct !{!109, !13, !14}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13, !14, !15}
!116 = distinct !{!116, !13, !15, !14}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !13, !14, !15}
!128 = distinct !{!128, !13, !14}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !"LVerDomain"}
!131 = distinct !{!131, !130}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !13, !14, !15}
!134 = distinct !{!134, !13, !14}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !"LVerDomain"}
!137 = distinct !{!137, !136}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !136}
!140 = distinct !{!140, !13, !14, !15}
!141 = distinct !{!141, !13, !14}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = !{!18, !5, i64 52}
!148 = !{!92}
!149 = !{!93}
!150 = !{!99}
!151 = !{!100}
!152 = !{!105}
!153 = !{!106}
!154 = !{!105, !107}
!155 = !{!107}
!156 = !{!"", !4, i64 0, !4, i64 1}
!157 = !{!156, !4, i64 0}
!158 = !{!156, !4, i64 1}
!159 = !{!125}
!160 = !{!126}
!161 = !{!131}
!162 = !{!132}
!163 = !{!137}
!164 = !{!138}
!165 = !{!139, !137}
!166 = !{!139}
!167 = distinct !{!167, !13}
!168 = distinct !{!168, !13}
!169 = distinct !{!169, !13}
!170 = distinct !{!170, !13}
!171 = distinct !{!171, !13}
!172 = distinct !{!172, !13}
!173 = distinct !{!173, !13}
!174 = distinct !{!174, !13}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
end_hunk_0
