Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb888?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb888:bb.a
  br label %lv_color_8_24_mix.exit169.i

lv_color_8_24_mix.exit169.i:                      ; preds = %bb.ej, %bb.ei, %bb.eg
  %i.bni = add i32 %.3147189.i, %1
  %indvars.iv.next223.i133 = add nuw nsw i64 %indvars.iv222.i132, 1 ; 2 uses
  %exitcond226.not.i134 = icmp eq i64 %indvars.iv.next223.i133, %wide.trip.count225.i130
  br i1 %exitcond226.not.i134, label %._crit_edge191.i, label %bb.eg, !llvm.loop !120

._crit_edge191.i:                                 ; preds = %lv_color_8_24_mix.exit169.i
  %i.bnj = getelementptr inbounds i8, ptr %.3161192.i, i64 %i.blr
  %i.bnk = getelementptr inbounds nuw i8, ptr %.3156193.i, i64 %i.bls
  %i.bnl = getelementptr inbounds i8, ptr %.1150194.i, i64 %i.blt
  %i.bnm = add nuw nsw i32 %.3195.i, 1            ; 2 uses
  %exitcond227.not.i135 = icmp eq i32 %i.bnm, %i.bff
  br i1 %exitcond227.not.i135, label %rgb565_image_blend.exit, label %.preheader177.i131, !llvm.loop !121

.preheader180.i:                                  ; preds = %._crit_edge.i117, %.preheader180.preheader.i
  %.4188.i = phi i32 [ %i.brm, %._crit_edge.i117 ], [ 0, %.preheader180.preheader.i ]
  %.2151187.i = phi ptr [ %.3152.i118, %._crit_edge.i117 ], [ %i.bfq, %.preheader180.preheader.i ] ; 3 uses
  %.4157186.i = phi ptr [ %i.brl, %._crit_edge.i117 ], [ %i.bfm, %.preheader180.preheader.i ] ; 2 uses
  %.4162185.i = phi ptr [ %i.brk, %._crit_edge.i117 ], [ %i.bfi, %.preheader180.preheader.i ] ; 2 uses
  %i.bnn = icmp eq ptr %.2151187.i, null          ; 2 uses
  br label %bb.ek

bb.ek:                                            ; preds = %blend_non_normal_pixel.exit.i114, %.preheader180.i
  %indvars.iv.i104 = phi i64 [ 0, %.preheader180.i ], [ %indvars.iv.next.i115, %blend_non_normal_pixel.exit.i114 ] ; 2 uses
  %.4148183.i = phi i32 [ 0, %.preheader180.i ], [ %i.bri, %blend_non_normal_pixel.exit.i114 ] ; 3 uses
  %i.bno = getelementptr inbounds nuw [2 x i8], ptr %.4157186.i, i64 %indvars.iv.i104 ; 2 uses
  %i.bnp = load i8, ptr %i.bno, align 1, !tbaa !111
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bno, i64 1
  %i.bnr = load i8, ptr %i.bnq, align 1, !tbaa !113
  %i.bns = zext i8 %i.bnr to i32                  ; 2 uses
  br i1 %i.bnn, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.bnt = mul nuw nsw i32 %i.bns, %i.bfy
  %i.bnu = lshr i32 %i.bnt, 8
  %.pre.i122 = sext i32 %.4148183.i to i64
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.bnv = sext i32 %.4148183.i to i64            ; 2 uses
  %i.bnw = getelementptr inbounds i8, ptr %.2151187.i, i64 %i.bnv
  %i.bnx = load i8, ptr %i.bnw, align 1, !tbaa !21
  %i.bny = zext i8 %i.bnx to i32
  %i.bnz = mul nuw nsw i32 %i.bns, %i.bfy
  %i.boa = mul nuw nsw i32 %i.bnz, %i.bny
  %i.bob = lshr i32 %i.boa, 16
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pre-phi.i105 = phi i64 [ %i.bnv, %bb.em ], [ %.pre.i122, %bb.el ]
  %.sroa.6.0.i106 = phi i32 [ %i.bob, %bb.em ], [ %i.bnu, %bb.el ] ; 6 uses
  %i.boc = getelementptr inbounds i8, ptr %.4162185.i, i64 %.pre-phi.i105 ; 18 uses
  %i.bod = load i32, ptr %i.bft, align 4, !tbaa !54
  %.sroa.5.0.insert.ext.i107 = zext i8 %i.bnp to i32 ; 12 uses
  switch i32 %i.bod, label %blend_non_normal_pixel.exit.i114 [
    i32 1, label %bb.eo
    i32 2, label %bb.ep
    i32 3, label %bb.eq
    i32 4, label %bb.er
  ]

bb.eo:                                            ; preds = %bb.en
  %i.boe = load i8, ptr %i.boc, align 1, !tbaa !21 ; 2 uses
  %i.bof = zext i8 %i.boe to i32
  %i.bog = add nuw nsw i32 %i.bof, %.sroa.5.0.insert.ext.i107
  %spec.select63.i.i121 = tail call i32 @llvm.umin.i32(i32 %i.bog, i32 255)
  %i.boh = getelementptr inbounds nuw i8, ptr %i.boc, i64 1
  %i.boi = load i8, ptr %i.boh, align 1, !tbaa !21 ; 2 uses
  %i.boj = zext i8 %i.boi to i32
  %i.bok = add nuw nsw i32 %i.boj, %.sroa.5.0.insert.ext.i107
  %i.bol = tail call i32 @llvm.umin.i32(i32 %i.bok, i32 255)
  %i.bom = getelementptr inbounds nuw i8, ptr %i.boc, i64 2
  %i.bon = load i8, ptr %i.bom, align 1, !tbaa !21 ; 2 uses
  %i.boo = zext i8 %i.bon to i32
  %i.bop = add nuw nsw i32 %i.boo, %.sroa.5.0.insert.ext.i107
  %i.boq = tail call i32 @llvm.umin.i32(i32 %i.bop, i32 255)
  br label %bb.es

bb.ep:                                            ; preds = %bb.en
  %i.bor = load i8, ptr %i.boc, align 1, !tbaa !21 ; 2 uses
  %i.bos = zext i8 %i.bor to i32
  %i.bot = sub nsw i32 %i.bos, %.sroa.5.0.insert.ext.i107
  %spec.select5662.i.i120 = tail call i32 @llvm.smax.i32(i32 %i.bot, i32 0)
  %i.bou = getelementptr inbounds nuw i8, ptr %i.boc, i64 1
  %i.bov = load i8, ptr %i.bou, align 1, !tbaa !21 ; 2 uses
  %i.bow = zext i8 %i.bov to i32
  %i.box = sub nsw i32 %i.bow, %.sroa.5.0.insert.ext.i107
  %i.boy = tail call i32 @llvm.smax.i32(i32 %i.box, i32 0)
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boc, i64 2
  %i.bpa = load i8, ptr %i.boz, align 1, !tbaa !21 ; 2 uses
  %i.bpb = zext i8 %i.bpa to i32
  %i.bpc = sub nsw i32 %i.bpb, %.sroa.5.0.insert.ext.i107
  %i.bpd = tail call i32 @llvm.smax.i32(i32 %i.bpc, i32 0)
  br label %bb.es

bb.eq:                                            ; preds = %bb.en
  %i.bpe = load i8, ptr %i.boc, align 1, !tbaa !21 ; 2 uses
  %i.bpf = zext i8 %i.bpe to i32
  %i.bpg = mul nuw nsw i32 %i.bpf, %.sroa.5.0.insert.ext.i107
  %i.bph = lshr i32 %i.bpg, 8
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.boc, i64 1
  %i.bpj = load i8, ptr %i.bpi, align 1, !tbaa !21 ; 2 uses
  %i.bpk = zext i8 %i.bpj to i32
  %i.bpl = mul nuw nsw i32 %i.bpk, %.sroa.5.0.insert.ext.i107
  %i.bpm = lshr i32 %i.bpl, 8
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.boc, i64 2
  %i.bpo = load i8, ptr %i.bpn, align 1, !tbaa !21 ; 2 uses
  %i.bpp = zext i8 %i.bpo to i32
  %i.bpq = mul nuw nsw i32 %i.bpp, %.sroa.5.0.insert.ext.i107
  %i.bpr = lshr i32 %i.bpq, 8
  br label %bb.es

bb.er:                                            ; preds = %bb.en
  %i.bps = load i8, ptr %i.boc, align 1, !tbaa !21 ; 2 uses
  %i.bpt = zext i8 %i.bps to i32
  %i.bpu = sub nsw i32 %i.bpt, %.sroa.5.0.insert.ext.i107
  %i.bpv = tail call i32 @llvm.abs.i32(i32 %i.bpu, i1 true)
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.boc, i64 1
  %i.bpx = load i8, ptr %i.bpw, align 1, !tbaa !21 ; 2 uses
  %i.bpy = zext i8 %i.bpx to i32
  %i.bpz = sub nsw i32 %i.bpy, %.sroa.5.0.insert.ext.i107
  %i.bqa = tail call i32 @llvm.abs.i32(i32 %i.bpz, i1 true)
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.boc, i64 2
  %i.bqc = load i8, ptr %i.bqb, align 1, !tbaa !21 ; 2 uses
  %i.bqd = zext i8 %i.bqc to i32
  %i.bqe = sub nsw i32 %i.bqd, %.sroa.5.0.insert.ext.i107
  %i.bqf = tail call i32 @llvm.abs.i32(i32 %i.bqe, i1 true)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep, %bb.eo
  %i.bqg = phi i8 [ %i.bon, %bb.eo ], [ %i.bpa, %bb.ep ], [ %i.bpo, %bb.eq ], [ %i.bqc, %bb.er ]
  %i.bqh = phi i8 [ %i.boi, %bb.eo ], [ %i.bov, %bb.ep ], [ %i.bpj, %bb.eq ], [ %i.bpx, %bb.er ]
  %i.bqi = phi i8 [ %i.boe, %bb.eo ], [ %i.bor, %bb.ep ], [ %i.bpe, %bb.eq ], [ %i.bps, %bb.er ]
  %.sroa.0.0.in.i.i108 = phi i32 [ %spec.select63.i.i121, %bb.eo ], [ %spec.select5662.i.i120, %bb.ep ], [ %i.bph, %bb.eq ], [ %i.bpv, %bb.er ] ; 2 uses
  %.sroa.9.0.in.i.i109 = phi i32 [ %i.bol, %bb.eo ], [ %i.boy, %bb.ep ], [ %i.bpm, %bb.eq ], [ %i.bqa, %bb.er ] ; 2 uses
  %.sroa.15.0.in.i.i110 = phi i32 [ %i.boq, %bb.eo ], [ %i.bpd, %bb.ep ], [ %i.bpr, %bb.eq ], [ %i.bqf, %bb.er ] ; 2 uses
  %.sroa.15.0.i.i111 = trunc nuw i32 %.sroa.15.0.in.i.i110 to i8
  %.sroa.9.0.i.i112 = trunc nuw i32 %.sroa.9.0.in.i.i109 to i8
  %.sroa.0.0.i.i113 = trunc nuw i32 %.sroa.0.0.in.i.i108 to i8
  %i.bqj = icmp eq i32 %.sroa.6.0.i106, 0
  br i1 %i.bqj, label %blend_non_normal_pixel.exit.i114, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bqk = icmp samesign ugt i32 %.sroa.6.0.i106, 252
  br i1 %i.bqk, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  store i8 %.sroa.0.0.i.i113, ptr %i.boc, align 1, !tbaa !21
  %i.bql = getelementptr inbounds nuw i8, ptr %i.boc, i64 1
  store i8 %.sroa.9.0.i.i112, ptr %i.bql, align 1, !tbaa !21
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.boc, i64 2
  store i8 %.sroa.15.0.i.i111, ptr %i.bqm, align 1, !tbaa !21
  br label %blend_non_normal_pixel.exit.i114

bb.ev:                                            ; preds = %bb.et
  %i.bqn = xor i32 %.sroa.6.0.i106, 255           ; 3 uses
  %i.bqo = mul nuw nsw i32 %.sroa.0.0.in.i.i108, %.sroa.6.0.i106
  %i.bqp = zext i8 %i.bqi to i32
  %i.bqq = mul nuw nsw i32 %i.bqn, %i.bqp
  %i.bqr = add nuw nsw i32 %i.bqq, %i.bqo
  %i.bqs = lshr i32 %i.bqr, 8
  %i.bqt = trunc nuw i32 %i.bqs to i8
  store i8 %i.bqt, ptr %i.boc, align 1, !tbaa !21
  %i.bqu = mul nuw nsw i32 %.sroa.9.0.in.i.i109, %.sroa.6.0.i106
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.boc, i64 1
  %i.bqw = zext i8 %i.bqh to i32
  %i.bqx = mul nuw nsw i32 %i.bqn, %i.bqw
  %i.bqy = add nuw nsw i32 %i.bqu, %i.bqx
  %i.bqz = lshr i32 %i.bqy, 8
  %i.bra = trunc nuw i32 %i.bqz to i8
  store i8 %i.bra, ptr %i.bqv, align 1, !tbaa !21
  %i.brb = mul nuw nsw i32 %.sroa.15.0.in.i.i110, %.sroa.6.0.i106
  %i.brc = getelementptr inbounds nuw i8, ptr %i.boc, i64 2
  %i.brd = zext i8 %i.bqg to i32
  %i.bre = mul nuw nsw i32 %i.bqn, %i.brd
  %i.brf = add nuw nsw i32 %i.brb, %i.bre
  %i.brg = lshr i32 %i.brf, 8
  %i.brh = trunc nuw i32 %i.brg to i8
  store i8 %i.brh, ptr %i.brc, align 1, !tbaa !21
  br label %blend_non_normal_pixel.exit.i114

blend_non_normal_pixel.exit.i114:                 ; preds = %bb.ev, %bb.eu, %bb.es, %bb.en
  %i.bri = add i32 %.4148183.i, %1
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i115, %wide.trip.count.i103
  br i1 %exitcond.not.i116, label %._crit_edge.i117, label %bb.ek, !llvm.loop !122

._crit_edge.i117:                                 ; preds = %blend_non_normal_pixel.exit.i114
  %i.brj = getelementptr inbounds i8, ptr %.2151187.i, i64 %i.bfz
  %.3152.i118 = select i1 %i.bnn, ptr null, ptr %i.brj
  %i.brk = getelementptr inbounds i8, ptr %.4162185.i, i64 %i.bga
  %i.brl = getelementptr inbounds nuw i8, ptr %.4157186.i, i64 %i.bgb
  %i.brm = add nuw nsw i32 %.4188.i, 1            ; 2 uses
  %exitcond221.not.i119 = icmp eq i32 %i.brm, %i.bff
  br i1 %exitcond221.not.i119, label %rgb565_image_blend.exit, label %.preheader180.i, !llvm.loop !123

bb.ew:                                            ; preds = %bb.a
  %i.brn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bro = load i32, ptr %i.brn, align 8, !tbaa !45 ; 15 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.brq = load i32, ptr %i.brp, align 4, !tbaa !46 ; 11 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.brs = load i8, ptr %i.brr, align 8, !tbaa !47 ; 8 uses
  %i.brt = load ptr, ptr %0, align 8, !tbaa !48   ; 8 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.brv = load i32, ptr %i.bru, align 8, !tbaa !49 ; 5 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.brx = load ptr, ptr %i.brw, align 8, !tbaa !50 ; 7 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.brz = load i32, ptr %i.bry, align 8, !tbaa !51 ; 5 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bsb = load ptr, ptr %i.bsa, align 8, !tbaa !52 ; 5 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bsd = load i32, ptr %i.bsc, align 8, !tbaa !53 ; 3 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bsf = load i32, ptr %i.bse, align 4, !tbaa !54
  %i.bsg = icmp eq i32 %i.bsf, 0
  br i1 %i.bsg, label %bb.ex, label %.preheader182.i

.preheader182.i:                                  ; preds = %bb.ew
  %i.bsh = icmp sgt i32 %i.brq, 0
  br i1 %i.bsh, label %.preheader181.lr.ph.i, label %rgb565_image_blend.exit

.preheader181.lr.ph.i:                            ; preds = %.preheader182.i
  %i.bsi = icmp sgt i32 %i.bro, 0
  %i.bsj = zext i8 %i.brs to i16
  %i.bsk = sext i32 %i.bsd to i64
  %i.bsl = zext i32 %i.brv to i64
  %i.bsm = zext i32 %i.brz to i64
  br i1 %i.bsi, label %.preheader181.preheader.i, label %rgb565_image_blend.exit

.preheader181.preheader.i:                        ; preds = %.preheader181.lr.ph.i
  %wide.trip.count.i165 = zext nneg i32 %i.bro to i64
  br label %.preheader181.i166

bb.ex:                                            ; preds = %bb.ew
  %i.bsn = icmp eq ptr %i.bsb, null               ; 2 uses
  %i.bso = zext i8 %i.brs to i16
  %i.bsp = icmp ugt i8 %i.brs, -4                 ; 2 uses
  %or.cond.i184 = select i1 %i.bsn, i1 %i.bsp, i1 false
  br i1 %or.cond.i184, label %.preheader171.i211, label %bb.ez

.preheader171.i211:                               ; preds = %bb.ex
  %i.bsq = icmp sgt i32 %i.brq, 0
  br i1 %i.bsq, label %.preheader.lr.ph.i212, label %rgb565_image_blend.exit

.preheader.lr.ph.i212:                            ; preds = %.preheader171.i211
  %i.bsr = icmp sgt i32 %i.bro, 0
  %i.bss = zext i32 %i.brv to i64                 ; 2 uses
  %i.bst = zext i32 %i.brz to i64                 ; 2 uses
  br i1 %i.bsr, label %.preheader.i213.preheader, label %rgb565_image_blend.exit

.preheader.i213.preheader:                        ; preds = %.preheader.lr.ph.i212
  %2 = add nsw i32 %i.brq, -1
  %3 = zext i32 %2 to i64                         ; 2 uses
  %4 = mul nuw i64 %i.bss, %3
  %5 = add nsw i32 %i.bro, -1
  %6 = zext i32 %5 to i64                         ; 2 uses
  %7 = getelementptr i8, ptr %i.brt, i64 %4
  %8 = getelementptr i8, ptr %7, i64 %6
  %scevgep = getelementptr i8, ptr %8, i64 3
  %9 = lshr i64 %6, 3
  %10 = mul nuw i64 %i.bst, %3
  %11 = getelementptr i8, ptr %i.brx, i64 %9
  %12 = getelementptr i8, ptr %11, i64 %10
  %scevgep449 = getelementptr i8, ptr %12, i64 1
  %min.iters.check = icmp ugt i32 %i.bro, 7
  %ident.check.not = icmp eq i32 %1, 1
  %or.cond523 = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %i.brt, %scevgep449
  %bound1 = icmp ult ptr %i.brx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i32 %i.bro, 2147483640             ; 3 uses
  %cmp.n = icmp eq i32 %i.bro, %n.vec
  br label %.preheader.i213

.preheader.i213:                                  ; preds = %.preheader.i213.preheader, %._crit_edge213.i
  %.0216.i = phi ptr [ %i.btk, %._crit_edge213.i ], [ %i.brt, %.preheader.i213.preheader ] ; 3 uses
  %.0138215.i = phi i32 [ %i.btm, %._crit_edge213.i ], [ 0, %.preheader.i213.preheader ]
  %.0157214.i = phi ptr [ %i.btl, %._crit_edge213.i ], [ %i.brx, %.preheader.i213.preheader ] ; 3 uses
  %or.cond523.not = xor i1 %or.cond523, true
  %brmerge557 = select i1 %or.cond523.not, i1 true, i1 %found.conflict
  br i1 %brmerge557, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i213, %vector.body
  %index = phi i32 [ %index.next, %vector.body ], [ 0, %.preheader.i213 ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.preheader.i213 ] ; 2 uses
  %13 = lshr exact i32 %index, 3
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %.0157214.i, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !21, !alias.scope !124
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %16, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %17 = trunc <8 x i32> %vec.ind to <8 x i8>
  %18 = and <8 x i8> %17, splat (i8 7)
  %19 = xor <8 x i8> %18, splat (i8 7)
  %20 = lshr <8 x i8> %broadcast.splat, %19
  %21 = and <8 x i8> %20, splat (i8 1)
  %22 = sub nsw <8 x i8> zeroinitializer, %21     ; 3 uses
  %23 = sext i32 %index to i64
  %24 = getelementptr i8, ptr %.0216.i, i64 %23   ; 3 uses
  %25 = getelementptr i8, ptr %24, i64 2
  store <8 x i8> %22, ptr %25, align 1, !tbaa !21, !alias.scope !127, !noalias !124
  %26 = getelementptr i8, ptr %24, i64 1
  store <8 x i8> %22, ptr %26, align 1, !tbaa !21, !alias.scope !127, !noalias !124
  store <8 x i8> %22, ptr %24, align 1, !tbaa !21, !alias.scope !127, !noalias !124
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i32> %vec.ind, splat (i32 8)
  %27 = icmp eq i32 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge213.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i213, %middle.block
  %.0148211.i.ph = phi i32 [ %n.vec, %middle.block ], [ 0, %.preheader.i213 ] ; 2 uses
  br label %bb.ey

bb.ey:                                            ; preds = %scalar.ph.preheader, %bb.ey
  %.0143212.i = phi i32 [ %i.btj, %bb.ey ], [ %.0148211.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0148211.i = phi i32 [ %i.bti, %bb.ey ], [ %.0148211.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bsu = lshr i32 %.0143212.i, 3
  %i.bsv = zext nneg i32 %i.bsu to i64
  %i.bsw = getelementptr inbounds nuw i8, ptr %.0157214.i, i64 %i.bsv
  %i.bsx = load i8, ptr %i.bsw, align 1, !tbaa !21
  %i.bsy = zext i8 %i.bsx to i32
  %i.bsz = and i32 %.0143212.i, 7
  %i.bta = xor i32 %i.bsz, 7
  %i.btb = lshr i32 %i.bsy, %i.bta
  %i.btc = trunc nuw i32 %i.btb to i8
  %i.btd = and i8 %i.btc, 1
  %narrow168.i = sub nsw i8 0, %i.btd             ; 3 uses
  %i.bte = sext i32 %.0148211.i to i64
  %i.btf = getelementptr i8, ptr %.0216.i, i64 %i.bte ; 3 uses
  %i.btg = getelementptr i8, ptr %i.btf, i64 2
  store i8 %narrow168.i, ptr %i.btg, align 1, !tbaa !21
  %i.bth = getelementptr i8, ptr %i.btf, i64 1
  store i8 %narrow168.i, ptr %i.bth, align 1, !tbaa !21
  store i8 %narrow168.i, ptr %i.btf, align 1, !tbaa !21
  %i.bti = add i32 %.0148211.i, %1
  %i.btj = add nuw nsw i32 %.0143212.i, 1         ; 2 uses
  %exitcond239.not.i214 = icmp eq i32 %i.btj, %i.bro
  br i1 %exitcond239.not.i214, label %._crit_edge213.i, label %bb.ey, !llvm.loop !130

._crit_edge213.i:                                 ; preds = %bb.ey, %middle.block
  %i.btk = getelementptr inbounds nuw i8, ptr %.0216.i, i64 %i.bss
  %i.btl = getelementptr inbounds nuw i8, ptr %.0157214.i, i64 %i.bst
  %i.btm = add nuw nsw i32 %.0138215.i, 1         ; 2 uses
  %exitcond240.not.i = icmp eq i32 %i.btm, %i.brq
  br i1 %exitcond240.not.i, label %rgb565_image_blend.exit, label %.preheader.i213, !llvm.loop !131

bb.ez:                                            ; preds = %bb.ex
  %i.btn = icmp ult i8 %i.brs, -3                 ; 2 uses
  %or.cond5.i185 = select i1 %i.bsn, i1 %i.btn, i1 false
  br i1 %or.cond5.i185, label %.preheader173.i205, label %bb.fa

.preheader173.i205:                               ; preds = %bb.ez
  %i.bto = icmp sgt i32 %i.brq, 0
  br i1 %i.bto, label %.preheader172.lr.ph.i206, label %rgb565_image_blend.exit

.preheader172.lr.ph.i206:                         ; preds = %.preheader173.i205
  %i.btp = icmp slt i32 %i.bro, 1
  %i.btq = zext i8 %i.brs to i32                  ; 2 uses
  %i.btr = icmp eq i8 %i.brs, 0
  %i.bts = xor i8 %i.brs, -1
  %i.btt = zext i8 %i.bts to i32                  ; 6 uses
  %i.btu = zext i32 %i.brv to i64                 ; 2 uses
  %i.btv = zext i32 %i.brz to i64
  %brmerge.i207 = select i1 %i.btp, i1 true, i1 %i.btr
  br i1 %brmerge.i207, label %rgb565_image_blend.exit, label %lv_color_8_24_mix.exit.i209.lver.check.preheader

lv_color_8_24_mix.exit.i209.lver.check.preheader: ; preds = %.preheader172.lr.ph.i206
  %ident.check513.not = icmp eq i32 %1, 1
  br label %.preheader172.i208

.preheader172.i208:                               ; preds = %lv_color_8_24_mix.exit.i209.lver.check.preheader, %._crit_edge206.i
  %indvar515 = phi i64 [ %indvar.next516, %._crit_edge206.i ], [ 0, %lv_color_8_24_mix.exit.i209.lver.check.preheader ] ; 2 uses
  %.1209.i = phi ptr [ %i.bvf, %._crit_edge206.i ], [ %i.brt, %lv_color_8_24_mix.exit.i209.lver.check.preheader ] ; 3 uses
  %.1139208.i = phi i32 [ %i.bvh, %._crit_edge206.i ], [ 0, %lv_color_8_24_mix.exit.i209.lver.check.preheader ]
  %.1158207.i = phi ptr [ %i.bvg, %._crit_edge206.i ], [ %i.brx, %lv_color_8_24_mix.exit.i209.lver.check.preheader ] ; 3 uses
  br i1 %ident.check513.not, label %lv_color_8_24_mix.exit.i209.ph, label %lv_color_8_24_mix.exit.i209.a

lv_color_8_24_mix.exit.i209.a:                    ; preds = %.preheader172.i208, %lv_color_8_24_mix.exit.i209.a
  %.1144205.i.a = phi i32 [ %i.bve, %lv_color_8_24_mix.exit.i209.a ], [ 0, %.preheader172.i208 ] ; 3 uses
  %.1149204.i.a = phi i32 [ %i.bvd, %lv_color_8_24_mix.exit.i209.a ], [ 0, %.preheader172.i208 ] ; 2 uses
  %i.btw = lshr i32 %.1144205.i.a, 3
  %i.btx = zext nneg i32 %i.btw to i64
  %i.bty = getelementptr inbounds nuw i8, ptr %.1158207.i, i64 %i.btx
  %i.btz = load i8, ptr %i.bty, align 1, !tbaa !21
  %i.bua = zext i8 %i.btz to i32
  %i.bub = and i32 %.1144205.i.a, 7
  %i.buc = sext i32 %.1149204.i.a to i64
  %i.bud = getelementptr inbounds i8, ptr %.1209.i, i64 %i.buc ; 4 uses
  %i.bue = lshr exact i32 128, %i.bub
  %i.buf = and i32 %i.bue, %i.bua
  %i.bug = icmp eq i32 %i.buf, 0
  %i.buh = select i1 %i.bug, i32 0, i32 255
  %i.bui = mul nuw nsw i32 %i.buh, %i.btq         ; 3 uses
  %i.buj = load i8, ptr %i.bud, align 1, !tbaa !21
  %i.buk = zext i8 %i.buj to i32
  %i.bul = mul nuw nsw i32 %i.buk, %i.btt
  %i.bum = add nuw nsw i32 %i.bui, %i.bul
  %i.bun = lshr i32 %i.bum, 8
  %i.buo = trunc i32 %i.bun to i8
  store i8 %i.buo, ptr %i.bud, align 1, !tbaa !21
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bud, i64 1 ; 2 uses
  %i.buq = load i8, ptr %i.bup, align 1, !tbaa !21
  %i.bur = zext i8 %i.buq to i32
  %i.bus = mul nuw nsw i32 %i.bur, %i.btt
  %i.but = add nuw nsw i32 %i.bus, %i.bui
  %i.buu = lshr i32 %i.but, 8
  %i.buv = trunc i32 %i.buu to i8
  store i8 %i.buv, ptr %i.bup, align 1, !tbaa !21
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bud, i64 2 ; 2 uses
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !21
  %i.buy = zext i8 %i.bux to i32
  %i.buz = mul nuw nsw i32 %i.buy, %i.btt
  %i.bva = add nuw nsw i32 %i.buz, %i.bui
  %i.bvb = lshr i32 %i.bva, 8
  %i.bvc = trunc i32 %i.bvb to i8
  store i8 %i.bvc, ptr %i.buw, align 1, !tbaa !21
  %i.bvd = add i32 %.1149204.i.a, %1
  %i.bve = add nuw nsw i32 %.1144205.i.a, 1       ; 2 uses
  %exitcond237.not.i.a = icmp eq i32 %i.bve, %i.bro
  br i1 %exitcond237.not.i.a, label %._crit_edge206.i, label %lv_color_8_24_mix.exit.i209.a, !llvm.loop !132

lv_color_8_24_mix.exit.i209.ph:                   ; preds = %.preheader172.i208
  %28 = mul i64 %indvar515, %i.btu
  %29 = getelementptr i8, ptr %i.brt, i64 %28
  %scevgep517 = getelementptr i8, ptr %29, i64 1
  %load_initial518 = load i8, ptr %scevgep517, align 1
  br label %lv_color_8_24_mix.exit.i209

lv_color_8_24_mix.exit.i209:                      ; preds = %lv_color_8_24_mix.exit.i209, %lv_color_8_24_mix.exit.i209.ph
  %store_forwarded519 = phi i8 [ %load_initial518, %lv_color_8_24_mix.exit.i209.ph ], [ %61, %lv_color_8_24_mix.exit.i209 ]
  %.1144205.i = phi i32 [ 0, %lv_color_8_24_mix.exit.i209.ph ], [ %63, %lv_color_8_24_mix.exit.i209 ] ; 3 uses
  %.1149204.i = phi i32 [ 0, %lv_color_8_24_mix.exit.i209.ph ], [ %62, %lv_color_8_24_mix.exit.i209 ] ; 2 uses
  %30 = lshr i32 %.1144205.i, 3
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw i8, ptr %.1158207.i, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !21
  %34 = zext i8 %33 to i32
  %35 = and i32 %.1144205.i, 7
  %36 = sext i32 %.1149204.i to i64
  %37 = getelementptr inbounds i8, ptr %.1209.i, i64 %36 ; 4 uses
  %38 = lshr exact i32 128, %35
  %39 = and i32 %38, %34
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 255
  %42 = mul nuw nsw i32 %41, %i.btq               ; 3 uses
  %43 = load i8, ptr %37, align 1, !tbaa !21
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, %i.btt
  %46 = add nuw nsw i32 %42, %45
  %47 = lshr i32 %46, 8
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %37, align 1, !tbaa !21
  %49 = getelementptr inbounds nuw i8, ptr %37, i64 1
  %50 = zext i8 %store_forwarded519 to i32
  %51 = mul nuw nsw i32 %50, %i.btt
  %52 = add nuw nsw i32 %51, %42
  %53 = lshr i32 %52, 8
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %49, align 1, !tbaa !21
  %55 = getelementptr inbounds nuw i8, ptr %37, i64 2 ; 2 uses
  %56 = load i8, ptr %55, align 1, !tbaa !21
  %57 = zext i8 %56 to i32
  %58 = mul nuw nsw i32 %57, %i.btt
  %59 = add nuw nsw i32 %58, %42
  %60 = lshr i32 %59, 8
  %61 = trunc i32 %60 to i8                       ; 2 uses
  store i8 %61, ptr %55, align 1, !tbaa !21
  %62 = add i32 %.1149204.i, %1
  %63 = add nuw nsw i32 %.1144205.i, 1            ; 2 uses
  %exitcond237.not.i = icmp eq i32 %63, %i.bro
  br i1 %exitcond237.not.i, label %._crit_edge206.i, label %lv_color_8_24_mix.exit.i209, !llvm.loop !132

._crit_edge206.i:                                 ; preds = %lv_color_8_24_mix.exit.i209.a, %lv_color_8_24_mix.exit.i209
  %i.bvf = getelementptr inbounds nuw i8, ptr %.1209.i, i64 %i.btu
  %i.bvg = getelementptr inbounds nuw i8, ptr %.1158207.i, i64 %i.btv
  %i.bvh = add nuw nsw i32 %.1139208.i, 1         ; 2 uses
  %exitcond238.not.i210 = icmp eq i32 %i.bvh, %i.brq
  %indvar.next516 = add i64 %indvar515, 1
  br i1 %exitcond238.not.i210, label %rgb565_image_blend.exit, label %.preheader172.i208, !llvm.loop !133

bb.fa:                                            ; preds = %bb.ez
  %i.bvi = icmp ne ptr %i.bsb, null               ; 2 uses
  %or.cond8.i186 = select i1 %i.bvi, i1 %i.bsp, i1 false
  br i1 %or.cond8.i186, label %.preheader176.i, label %bb.ff

.preheader176.i:                                  ; preds = %bb.fa
  %i.bvj = icmp sgt i32 %i.brq, 0
  br i1 %i.bvj, label %.preheader175.lr.ph.i196, label %rgb565_image_blend.exit

.preheader175.lr.ph.i196:                         ; preds = %.preheader176.i
  %i.bvk = icmp sgt i32 %i.bro, 0
  %i.bvl = zext i32 %i.brv to i64
  %i.bvm = zext i32 %i.brz to i64
  %i.bvn = sext i32 %i.bsd to i64
  br i1 %i.bvk, label %.preheader175.preheader.i197, label %rgb565_image_blend.exit

.preheader175.preheader.i197:                     ; preds = %.preheader175.lr.ph.i196
  %wide.trip.count234.i198 = zext nneg i32 %i.bro to i64
  br label %.preheader175.i199

.preheader175.i199:                               ; preds = %._crit_edge199.i, %.preheader175.preheader.i197
  %.2203.i = phi ptr [ %i.bxf, %._crit_edge199.i ], [ %i.brt, %.preheader175.preheader.i197 ] ; 2 uses
  %.2140202.i = phi i32 [ %i.bxi, %._crit_edge199.i ], [ 0, %.preheader175.preheader.i197 ]
  %.0153201.i = phi ptr [ %i.bxh, %._crit_edge199.i ], [ %i.bsb, %.preheader175.preheader.i197 ] ; 2 uses
  %.2159200.i = phi ptr [ %i.bxg, %._crit_edge199.i ], [ %i.brx, %.preheader175.preheader.i197 ] ; 2 uses
  br label %bb.fb

bb.fb:                                            ; preds = %lv_color_8_24_mix.exit169.i201, %.preheader175.i199
  %indvars.iv231.i200 = phi i64 [ 0, %.preheader175.i199 ], [ %indvars.iv.next232.i202, %lv_color_8_24_mix.exit169.i201 ] ; 4 uses
  %.2150197.i = phi i32 [ 0, %.preheader175.i199 ], [ %i.bxe, %lv_color_8_24_mix.exit169.i201 ] ; 2 uses
  %i.bvo = trunc i64 %indvars.iv231.i200 to i8
  %i.bvp = lshr i64 %indvars.iv231.i200, 3
  %i.bvq = and i64 %i.bvp, 536870911
  %i.bvr = getelementptr inbounds nuw i8, ptr %.2159200.i, i64 %i.bvq
  %i.bvs = load i8, ptr %i.bvr, align 1, !tbaa !21
  %i.bvt = and i8 %i.bvo, 7
  %i.bvu = xor i8 %i.bvt, 7
  %i.bvv = lshr i8 %i.bvs, %i.bvu
  %i.bvw = and i8 %i.bvv, 1
  %narrow166.i = sub nsw i8 0, %i.bvw             ; 4 uses
  %i.bvx = sext i32 %.2150197.i to i64
  %i.bvy = getelementptr inbounds i8, ptr %.2203.i, i64 %i.bvx ; 7 uses
  %i.bvz = getelementptr inbounds nuw i8, ptr %.0153201.i, i64 %indvars.iv231.i200
  %i.bwa = load i8, ptr %i.bvz, align 1, !tbaa !21 ; 4 uses
  %i.bwb = zext i8 %i.bwa to i32
  %i.bwc = icmp eq i8 %i.bwa, 0
  br i1 %i.bwc, label %lv_color_8_24_mix.exit169.i201, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bwd = icmp ugt i8 %i.bwa, -4
  br i1 %i.bwd, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i8 %narrow166.i, ptr %i.bvy, align 1, !tbaa !21
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvy, i64 1
  store i8 %narrow166.i, ptr %i.bwe, align 1, !tbaa !21
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bvy, i64 2
  store i8 %narrow166.i, ptr %i.bwf, align 1, !tbaa !21
  br label %lv_color_8_24_mix.exit169.i201

bb.fe:                                            ; preds = %bb.fc
  %i.bwg = xor i8 %i.bwa, -1
  %i.bwh = zext i8 %narrow166.i to i32
  %i.bwi = mul nuw nsw i32 %i.bwh, %i.bwb         ; 3 uses
  %i.bwj = load i8, ptr %i.bvy, align 1, !tbaa !21
  %i.bwk = zext i8 %i.bwj to i32
  %i.bwl = zext i8 %i.bwg to i32                  ; 3 uses
  %i.bwm = mul nuw nsw i32 %i.bwk, %i.bwl
  %i.bwn = add nuw nsw i32 %i.bwm, %i.bwi
  %i.bwo = lshr i32 %i.bwn, 8
  %i.bwp = trunc i32 %i.bwo to i8
  store i8 %i.bwp, ptr %i.bvy, align 1, !tbaa !21
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bvy, i64 1 ; 2 uses
  %i.bwr = load i8, ptr %i.bwq, align 1, !tbaa !21
  %i.bws = zext i8 %i.bwr to i32
  %i.bwt = mul nuw nsw i32 %i.bws, %i.bwl
  %i.bwu = add nuw nsw i32 %i.bwt, %i.bwi
  %i.bwv = lshr i32 %i.bwu, 8
  %i.bww = trunc i32 %i.bwv to i8
  store i8 %i.bww, ptr %i.bwq, align 1, !tbaa !21
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bvy, i64 2 ; 2 uses
  %i.bwy = load i8, ptr %i.bwx, align 1, !tbaa !21
  %i.bwz = zext i8 %i.bwy to i32
  %i.bxa = mul nuw nsw i32 %i.bwz, %i.bwl
  %i.bxb = add nuw nsw i32 %i.bxa, %i.bwi
  %i.bxc = lshr i32 %i.bxb, 8
  %i.bxd = trunc i32 %i.bxc to i8
  store i8 %i.bxd, ptr %i.bwx, align 1, !tbaa !21
  br label %lv_color_8_24_mix.exit169.i201

lv_color_8_24_mix.exit169.i201:                   ; preds = %bb.fe, %bb.fd, %bb.fb
  %i.bxe = add i32 %.2150197.i, %1
  %indvars.iv.next232.i202 = add nuw nsw i64 %indvars.iv231.i200, 1 ; 2 uses
  %exitcond235.not.i203 = icmp eq i64 %indvars.iv.next232.i202, %wide.trip.count234.i198
  br i1 %exitcond235.not.i203, label %._crit_edge199.i, label %bb.fb, !llvm.loop !134

._crit_edge199.i:                                 ; preds = %lv_color_8_24_mix.exit169.i201
  %i.bxf = getelementptr inbounds nuw i8, ptr %.2203.i, i64 %i.bvl
  %i.bxg = getelementptr inbounds nuw i8, ptr %.2159200.i, i64 %i.bvm
  %i.bxh = getelementptr inbounds i8, ptr %.0153201.i, i64 %i.bvn
  %i.bxi = add nuw nsw i32 %.2140202.i, 1         ; 2 uses
  %exitcond236.not.i204 = icmp eq i32 %i.bxi, %i.brq
  br i1 %exitcond236.not.i204, label %rgb565_image_blend.exit, label %.preheader175.i199, !llvm.loop !135

bb.ff:                                            ; preds = %bb.fa
  %or.cond11.i187 = select i1 %i.bvi, i1 %i.btn, i1 false
  %i.bxj = icmp sgt i32 %i.brq, 0
  %or.cond218.i = select i1 %or.cond11.i187, i1 %i.bxj, i1 false
  br i1 %or.cond218.i, label %.preheader178.lr.ph.i188, label %rgb565_image_blend.exit

.preheader178.lr.ph.i188:                         ; preds = %bb.ff
  %i.bxk = icmp sgt i32 %i.bro, 0
  %i.bxl = zext i32 %i.brv to i64
  %i.bxm = zext i32 %i.brz to i64
  %i.bxn = sext i32 %i.bsd to i64
  br i1 %i.bxk, label %.preheader178.preheader.i189, label %rgb565_image_blend.exit

.preheader178.preheader.i189:                     ; preds = %.preheader178.lr.ph.i188
  %wide.trip.count228.i190 = zext nneg i32 %i.bro to i64
  br label %.preheader178.i191

.preheader178.i191:                               ; preds = %._crit_edge192.i, %.preheader178.preheader.i189
  %.3196.i = phi ptr [ %i.bzi, %._crit_edge192.i ], [ %i.brt, %.preheader178.preheader.i189 ] ; 2 uses
  %.3141195.i = phi i32 [ %i.bzl, %._crit_edge192.i ], [ 0, %.preheader178.preheader.i189 ]
  %.1154194.i = phi ptr [ %i.bzk, %._crit_edge192.i ], [ %i.bsb, %.preheader178.preheader.i189 ] ; 2 uses
  %.3160193.i = phi ptr [ %i.bzj, %._crit_edge192.i ], [ %i.brx, %.preheader178.preheader.i189 ] ; 2 uses
  br label %bb.fg

bb.fg:                                            ; preds = %lv_color_8_24_mix.exit170.i, %.preheader178.i191
  %indvars.iv225.i192 = phi i64 [ 0, %.preheader178.i191 ], [ %indvars.iv.next226.i193, %lv_color_8_24_mix.exit170.i ] ; 4 uses
  %.3151190.i = phi i32 [ 0, %.preheader178.i191 ], [ %i.bzh, %lv_color_8_24_mix.exit170.i ] ; 2 uses
  %i.bxo = trunc i64 %indvars.iv225.i192 to i8
  %i.bxp = lshr i64 %indvars.iv225.i192, 3
  %i.bxq = and i64 %i.bxp, 536870911
  %i.bxr = getelementptr inbounds nuw i8, ptr %.3160193.i, i64 %i.bxq
  %i.bxs = load i8, ptr %i.bxr, align 1, !tbaa !21
  %i.bxt = and i8 %i.bxo, 7
  %i.bxu = xor i8 %i.bxt, 7
  %i.bxv = lshr i8 %i.bxs, %i.bxu
  %i.bxw = and i8 %i.bxv, 1
  %narrow165.i = sub nsw i8 0, %i.bxw             ; 4 uses
  %i.bxx = sext i32 %.3151190.i to i64
  %i.bxy = getelementptr inbounds i8, ptr %.3196.i, i64 %i.bxx ; 7 uses
  %i.bxz = getelementptr inbounds nuw i8, ptr %.1154194.i, i64 %indvars.iv225.i192
  %i.bya = load i8, ptr %i.bxz, align 1, !tbaa !21
  %i.byb = zext i8 %i.bya to i16
  %i.byc = mul nuw i16 %i.byb, %i.bso             ; 2 uses
  %i.byd = lshr i16 %i.byc, 8                     ; 3 uses
  %i.bye = zext nneg i16 %i.byd to i32
  %i.byf = icmp eq i16 %i.byd, 0
  br i1 %i.byf, label %lv_color_8_24_mix.exit170.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.byg = icmp ugt i16 %i.byc, -769
  br i1 %i.byg, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i8 %narrow165.i, ptr %i.bxy, align 1, !tbaa !21
  %i.byh = getelementptr inbounds nuw i8, ptr %i.bxy, i64 1
  store i8 %narrow165.i, ptr %i.byh, align 1, !tbaa !21
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bxy, i64 2
  store i8 %narrow165.i, ptr %i.byi, align 1, !tbaa !21
  br label %lv_color_8_24_mix.exit170.i

bb.fj:                                            ; preds = %bb.fh
  %i.byj = xor i16 %i.byd, 255
  %i.byk = zext nneg i16 %i.byj to i32            ; 3 uses
  %i.byl = zext i8 %narrow165.i to i32
  %i.bym = mul nuw nsw i32 %i.bye, %i.byl         ; 3 uses
  %i.byn = load i8, ptr %i.bxy, align 1, !tbaa !21
  %i.byo = zext i8 %i.byn to i32
  %i.byp = mul nuw nsw i32 %i.byo, %i.byk
  %i.byq = add nuw nsw i32 %i.byp, %i.bym
  %i.byr = lshr i32 %i.byq, 8
  %i.bys = trunc i32 %i.byr to i8
  store i8 %i.bys, ptr %i.bxy, align 1, !tbaa !21
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bxy, i64 1 ; 2 uses
  %i.byu = load i8, ptr %i.byt, align 1, !tbaa !21
  %i.byv = zext i8 %i.byu to i32
  %i.byw = mul nuw nsw i32 %i.byv, %i.byk
  %i.byx = add nuw nsw i32 %i.byw, %i.bym
  %i.byy = lshr i32 %i.byx, 8
  %i.byz = trunc i32 %i.byy to i8
  store i8 %i.byz, ptr %i.byt, align 1, !tbaa !21
  %i.bza = getelementptr inbounds nuw i8, ptr %i.bxy, i64 2 ; 2 uses
  %i.bzb = load i8, ptr %i.bza, align 1, !tbaa !21
  %i.bzc = zext i8 %i.bzb to i32
  %i.bzd = mul nuw nsw i32 %i.bzc, %i.byk
  %i.bze = add nuw nsw i32 %i.bzd, %i.bym
  %i.bzf = lshr i32 %i.bze, 8
  %i.bzg = trunc i32 %i.bzf to i8
  store i8 %i.bzg, ptr %i.bza, align 1, !tbaa !21
  br label %lv_color_8_24_mix.exit170.i

lv_color_8_24_mix.exit170.i:                      ; preds = %bb.fj, %bb.fi, %bb.fg
  %i.bzh = add i32 %.3151190.i, %1
  %indvars.iv.next226.i193 = add nuw nsw i64 %indvars.iv225.i192, 1 ; 2 uses
  %exitcond229.not.i194 = icmp eq i64 %indvars.iv.next226.i193, %wide.trip.count228.i190
  br i1 %exitcond229.not.i194, label %._crit_edge192.i, label %bb.fg, !llvm.loop !136

._crit_edge192.i:                                 ; preds = %lv_color_8_24_mix.exit170.i
  %i.bzi = getelementptr inbounds nuw i8, ptr %.3196.i, i64 %i.bxl
  %i.bzj = getelementptr inbounds nuw i8, ptr %.3160193.i, i64 %i.bxm
  %i.bzk = getelementptr inbounds i8, ptr %.1154194.i, i64 %i.bxn
  %i.bzl = add nuw nsw i32 %.3141195.i, 1         ; 2 uses
  %exitcond230.not.i195 = icmp eq i32 %i.bzl, %i.brq
  br i1 %exitcond230.not.i195, label %rgb565_image_blend.exit, label %.preheader178.i191, !llvm.loop !137

.preheader181.i166:                               ; preds = %._crit_edge.i180, %.preheader181.preheader.i
  %.4189.i = phi ptr [ %i.cdm, %._crit_edge.i180 ], [ %i.brt, %.preheader181.preheader.i ] ; 2 uses
  %.4142188.i = phi i32 [ %i.cdo, %._crit_edge.i180 ], [ 0, %.preheader181.preheader.i ]
  %.2155187.i = phi ptr [ %.3156.i, %._crit_edge.i180 ], [ %i.bsb, %.preheader181.preheader.i ] ; 3 uses
  %.4161186.i = phi ptr [ %i.cdn, %._crit_edge.i180 ], [ %i.brx, %.preheader181.preheader.i ] ; 2 uses
  %i.bzm = icmp eq ptr %.2155187.i, null          ; 2 uses
  br label %bb.fk

bb.fk:                                            ; preds = %blend_non_normal_pixel.exit.i177, %.preheader181.i166
  %indvars.iv.i167 = phi i64 [ 0, %.preheader181.i166 ], [ %indvars.iv.next.i178, %blend_non_normal_pixel.exit.i177 ] ; 4 uses
  %.4152184.i = phi i32 [ 0, %.preheader181.i166 ], [ %i.cdk, %blend_non_normal_pixel.exit.i177 ] ; 2 uses
  %i.bzn = trunc nuw nsw i64 %indvars.iv.i167 to i32
  %i.bzo = lshr i64 %indvars.iv.i167, 3
  %i.bzp = and i64 %i.bzo, 536870911
  %i.bzq = getelementptr inbounds nuw i8, ptr %.4161186.i, i64 %i.bzp
  %i.bzr = load i8, ptr %i.bzq, align 1, !tbaa !21
  %i.bzs = zext i8 %i.bzr to i32
  %i.bzt = and i32 %i.bzn, 7
  br i1 %i.bzm, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bzu = getelementptr inbounds nuw i8, ptr %.2155187.i, i64 %indvars.iv.i167
  %i.bzv = load i8, ptr %i.bzu, align 1, !tbaa !21
  %i.bzw = zext i8 %i.bzv to i16
  %i.bzx = mul nuw i16 %i.bzw, %i.bsj
  %i.bzy = lshr i16 %i.bzx, 8
  %i.bzz = trunc nuw i16 %i.bzy to i8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.8.0.i168 = phi i8 [ %i.bzz, %bb.fl ], [ %i.brs, %bb.fk ] ; 3 uses
  %i.caa = sext i32 %.4152184.i to i64
  %i.cab = getelementptr inbounds i8, ptr %.4189.i, i64 %i.caa ; 18 uses
  %i.cac = load i32, ptr %i.bse, align 4, !tbaa !54
  %.sroa.8.0.insert.ext.i169 = zext i8 %.sroa.8.0.i168 to i32 ; 4 uses
  %i.cad = lshr exact i32 128, %i.bzt
  %i.cae = and i32 %i.cad, %i.bzs
  %i.caf = icmp eq i32 %i.cae, 0
  %.sroa.5.0.insert.ext.i170 = select i1 %i.caf, i32 0, i32 255 ; 12 uses
  switch i32 %i.cac, label %blend_non_normal_pixel.exit.i177 [
    i32 1, label %bb.fn
    i32 2, label %bb.fo
    i32 3, label %bb.fp
    i32 4, label %bb.fq
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.cag = load i8, ptr %i.cab, align 1, !tbaa !21 ; 2 uses
  %i.cah = zext i8 %i.cag to i32
  %i.cai = add nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.cah
  %spec.select63.i.i183 = tail call i32 @llvm.umin.i32(i32 %i.cai, i32 255)
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cab, i64 1
  %i.cak = load i8, ptr %i.caj, align 1, !tbaa !21 ; 2 uses
  %i.cal = zext i8 %i.cak to i32
  %i.cam = add nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.cal
  %i.can = tail call i32 @llvm.umin.i32(i32 %i.cam, i32 255)
  %i.cao = getelementptr inbounds nuw i8, ptr %i.cab, i64 2
  %i.cap = load i8, ptr %i.cao, align 1, !tbaa !21 ; 2 uses
  %i.caq = zext i8 %i.cap to i32
  %i.car = add nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.caq
  %i.cas = tail call i32 @llvm.umin.i32(i32 %i.car, i32 255)
  br label %bb.fr

bb.fo:                                            ; preds = %bb.fm
  %i.cat = load i8, ptr %i.cab, align 1, !tbaa !21 ; 2 uses
  %i.cau = zext i8 %i.cat to i32
  %i.cav = sub nsw i32 %i.cau, %.sroa.5.0.insert.ext.i170
  %spec.select5662.i.i182 = tail call i32 @llvm.smax.i32(i32 %i.cav, i32 0)
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cab, i64 1
  %i.cax = load i8, ptr %i.caw, align 1, !tbaa !21 ; 2 uses
  %i.cay = zext i8 %i.cax to i32
  %i.caz = sub nsw i32 %i.cay, %.sroa.5.0.insert.ext.i170
  %i.cba = tail call i32 @llvm.smax.i32(i32 %i.caz, i32 0)
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cab, i64 2
  %i.cbc = load i8, ptr %i.cbb, align 1, !tbaa !21 ; 2 uses
  %i.cbd = zext i8 %i.cbc to i32
  %i.cbe = sub nsw i32 %i.cbd, %.sroa.5.0.insert.ext.i170
  %i.cbf = tail call i32 @llvm.smax.i32(i32 %i.cbe, i32 0)
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fm
  %i.cbg = load i8, ptr %i.cab, align 1, !tbaa !21 ; 2 uses
  %i.cbh = zext i8 %i.cbg to i32
  %i.cbi = mul nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.cbh
  %i.cbj = lshr i32 %i.cbi, 8
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cab, i64 1
  %i.cbl = load i8, ptr %i.cbk, align 1, !tbaa !21 ; 2 uses
  %i.cbm = zext i8 %i.cbl to i32
  %i.cbn = mul nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.cbm
  %i.cbo = lshr i32 %i.cbn, 8
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cab, i64 2
  %i.cbq = load i8, ptr %i.cbp, align 1, !tbaa !21 ; 2 uses
  %i.cbr = zext i8 %i.cbq to i32
  %i.cbs = mul nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.cbr
  %i.cbt = lshr i32 %i.cbs, 8
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fm
  %i.cbu = load i8, ptr %i.cab, align 1, !tbaa !21 ; 2 uses
  %i.cbv = zext i8 %i.cbu to i32
  %i.cbw = sub nsw i32 %i.cbv, %.sroa.5.0.insert.ext.i170
  %i.cbx = tail call i32 @llvm.abs.i32(i32 %i.cbw, i1 true)
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cab, i64 1
  %i.cbz = load i8, ptr %i.cby, align 1, !tbaa !21 ; 2 uses
  %i.cca = zext i8 %i.cbz to i32
  %i.ccb = sub nsw i32 %i.cca, %.sroa.5.0.insert.ext.i170
  %i.ccc = tail call i32 @llvm.abs.i32(i32 %i.ccb, i1 true)
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.cab, i64 2
  %i.cce = load i8, ptr %i.ccd, align 1, !tbaa !21 ; 2 uses
  %i.ccf = zext i8 %i.cce to i32
  %i.ccg = sub nsw i32 %i.ccf, %.sroa.5.0.insert.ext.i170
  %i.cch = tail call i32 @llvm.abs.i32(i32 %i.ccg, i1 true)
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.fn
  %i.cci = phi i8 [ %i.cap, %bb.fn ], [ %i.cbc, %bb.fo ], [ %i.cbq, %bb.fp ], [ %i.cce, %bb.fq ]
  %i.ccj = phi i8 [ %i.cak, %bb.fn ], [ %i.cax, %bb.fo ], [ %i.cbl, %bb.fp ], [ %i.cbz, %bb.fq ]
  %i.cck = phi i8 [ %i.cag, %bb.fn ], [ %i.cat, %bb.fo ], [ %i.cbg, %bb.fp ], [ %i.cbu, %bb.fq ]
  %.sroa.0.0.in.i.i171 = phi i32 [ %spec.select63.i.i183, %bb.fn ], [ %spec.select5662.i.i182, %bb.fo ], [ %i.cbj, %bb.fp ], [ %i.cbx, %bb.fq ] ; 2 uses
  %.sroa.9.0.in.i.i172 = phi i32 [ %i.can, %bb.fn ], [ %i.cba, %bb.fo ], [ %i.cbo, %bb.fp ], [ %i.ccc, %bb.fq ] ; 2 uses
  %.sroa.15.0.in.i.i173 = phi i32 [ %i.cas, %bb.fn ], [ %i.cbf, %bb.fo ], [ %i.cbt, %bb.fp ], [ %i.cch, %bb.fq ] ; 2 uses
  %.sroa.15.0.i.i174 = trunc nuw i32 %.sroa.15.0.in.i.i173 to i8
  %.sroa.9.0.i.i175 = trunc nuw i32 %.sroa.9.0.in.i.i172 to i8
  %.sroa.0.0.i.i176 = trunc nuw i32 %.sroa.0.0.in.i.i171 to i8
  %i.ccl = icmp eq i8 %.sroa.8.0.i168, 0
  br i1 %i.ccl, label %blend_non_normal_pixel.exit.i177, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ccm = icmp ugt i8 %.sroa.8.0.i168, -4
  br i1 %i.ccm, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  store i8 %.sroa.0.0.i.i176, ptr %i.cab, align 1, !tbaa !21
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.cab, i64 1
  store i8 %.sroa.9.0.i.i175, ptr %i.ccn, align 1, !tbaa !21
  %i.cco = getelementptr inbounds nuw i8, ptr %i.cab, i64 2
  store i8 %.sroa.15.0.i.i174, ptr %i.cco, align 1, !tbaa !21
  br label %blend_non_normal_pixel.exit.i177

bb.fu:                                            ; preds = %bb.fs
  %i.ccp = xor i32 %.sroa.8.0.insert.ext.i169, 255 ; 3 uses
  %i.ccq = mul nuw nsw i32 %.sroa.0.0.in.i.i171, %.sroa.8.0.insert.ext.i169
  %i.ccr = zext i8 %i.cck to i32
  %i.ccs = mul nuw nsw i32 %i.ccp, %i.ccr
  %i.cct = add nuw nsw i32 %i.ccs, %i.ccq
  %i.ccu = lshr i32 %i.cct, 8
  %i.ccv = trunc nuw i32 %i.ccu to i8
  store i8 %i.ccv, ptr %i.cab, align 1, !tbaa !21
  %i.ccw = mul nuw nsw i32 %.sroa.9.0.in.i.i172, %.sroa.8.0.insert.ext.i169
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cab, i64 1
  %i.ccy = zext i8 %i.ccj to i32
  %i.ccz = mul nuw nsw i32 %i.ccp, %i.ccy
  %i.cda = add nuw nsw i32 %i.ccw, %i.ccz
  %i.cdb = lshr i32 %i.cda, 8
  %i.cdc = trunc nuw i32 %i.cdb to i8
  store i8 %i.cdc, ptr %i.ccx, align 1, !tbaa !21
  %i.cdd = mul nuw nsw i32 %.sroa.15.0.in.i.i173, %.sroa.8.0.insert.ext.i169
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cab, i64 2
  %i.cdf = zext i8 %i.cci to i32
  %i.cdg = mul nuw nsw i32 %i.ccp, %i.cdf
  %i.cdh = add nuw nsw i32 %i.cdd, %i.cdg
  %i.cdi = lshr i32 %i.cdh, 8
  %i.cdj = trunc nuw i32 %i.cdi to i8
  store i8 %i.cdj, ptr %i.cde, align 1, !tbaa !21
  br label %blend_non_normal_pixel.exit.i177

blend_non_normal_pixel.exit.i177:                 ; preds = %bb.fu, %bb.ft, %bb.fr, %bb.fm
  %i.cdk = add i32 %.4152184.i, %1
  %indvars.iv.next.i178 = add nuw nsw i64 %indvars.iv.i167, 1 ; 2 uses
  %exitcond.not.i179 = icmp eq i64 %indvars.iv.next.i178, %wide.trip.count.i165
  br i1 %exitcond.not.i179, label %._crit_edge.i180, label %bb.fk, !llvm.loop !138

._crit_edge.i180:                                 ; preds = %blend_non_normal_pixel.exit.i177
  %i.cdl = getelementptr inbounds i8, ptr %.2155187.i, i64 %i.bsk
  %.3156.i = select i1 %i.bzm, ptr null, ptr %i.cdl
  %i.cdm = getelementptr inbounds nuw i8, ptr %.4189.i, i64 %i.bsl
  %i.cdn = getelementptr inbounds nuw i8, ptr %.4161186.i, i64 %i.bsm
  %i.cdo = add nuw nsw i32 %.4142188.i, 1         ; 2 uses
  %exitcond224.not.i181 = icmp eq i32 %i.cdo, %i.brq
  br i1 %exitcond224.not.i181, label %rgb565_image_blend.exit, label %.preheader181.i166, !llvm.loop !139

rgb565_image_blend.exit.sink.split:               ; preds = %bb.a, %bb.y
  %.sink419 = phi i32 [ 4, %bb.y ], [ 3, %bb.a ]
  %i.cdp = trunc i32 %1 to i8
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext %i.cdp, i32 noundef %.sink419)
  br label %rgb565_image_blend.exit

rgb565_image_blend.exit:                          ; preds = %._crit_edge.i180, %._crit_edge192.i, %._crit_edge199.i, %._crit_edge206.i, %._crit_edge213.i, %._crit_edge.i117, %._crit_edge191.i, %._crit_edge198.i, %._crit_edge205.i, %._crit_edge211.i, %._crit_edge.i89, %._crit_edge189.i, %._crit_edge196.i, %._crit_edge203.i, %._crit_edge210.i, %._crit_edge.i56, %._crit_edge235.i, %._crit_edge242.i, %._crit_edge249.i, %._crit_edge255.i, %._crit_edge.i31, %._crit_edge188.i, %._crit_edge195.i, %._crit_edge202.i, %._crit_edge208.i, %._crit_edge.i, %._crit_edge226.i, %._crit_edge233.i, %._crit_edge240.i, %._crit_edge247.i, %rgb565_image_blend.exit.sink.split, %.preheader178.lr.ph.i188, %bb.ff, %.preheader175.lr.ph.i196, %.preheader176.i, %.preheader172.lr.ph.i206, %.preheader173.i205, %.preheader.lr.ph.i212, %.preheader171.i211, %.preheader181.lr.ph.i, %.preheader182.i, %.preheader177.lr.ph.i128, %bb.ef, %.preheader174.lr.ph.i137, %.preheader175.i136, %.preheader171.lr.ph.i146, %.preheader172.i145, %.preheader.lr.ph.i156, %.preheader170.i155, %.preheader180.lr.ph.i, %.preheader181.i, %.preheader175.lr.ph.i, %bb.da, %.preheader172.lr.ph.i, %.preheader173.i, %.preheader169.lr.ph.i, %.preheader170.i, %.preheader.lr.ph.i100, %.preheader168.i99, %.preheader178.lr.ph.i, %.preheader179.i, %.preheader221.lr.ph.i, %bb.by, %.preheader218.lr.ph.i, %.preheader219.i, %.preheader215.lr.ph.i66, %.preheader216.i65, %.preheader.lr.ph.i70, %.preheader214.i, %.preheader224.lr.ph.i, %.preheader225.i, %.preheader174.lr.ph.i, %bb.ap, %.preheader171.lr.ph.i, %.preheader172.i, %.preheader168.lr.ph.i, %.preheader169.i, %.preheader.lr.ph.i37, %.preheader167.i, %.preheader177.lr.ph.i, %.preheader178.i, %.preheader209.lr.ph.i, %.preheader210.i, %.preheader212.lr.ph.i, %.preheader213.i, %.preheader206.lr.ph.i, %.preheader207.i, %.preheader.lr.ph.i, %.preheader205.i, %.preheader215.lr.ph.i, %.preheader216.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i32 noundef range(i32 3, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = mul i32 %i.b, %i.c                       ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !47    ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !48     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !53   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !54
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %.preheader210

.preheader210:                                    ; preds = %bb.a
  %i.w = icmp sgt i32 %i.f, 0
  br i1 %i.w, label %.preheader209.lr.ph, label %.loopexit

.preheader209.lr.ph:                              ; preds = %.preheader210
  %i.x = icmp sgt i32 %i.d, 0
  %i.y = zext i8 %i.h to i16
  %i.z = sext i32 %i.s to i64
  %i.aa = sext i32 %i.k to i64
  %i.ab = sext i32 %i.o to i64
  br i1 %i.x, label %.preheader209.preheader, label %.loopexit

.preheader209.preheader:                          ; preds = %.preheader209.lr.ph
  %i.ac = zext i8 %1 to i64
  %i.ad = zext nneg i32 %i.d to i64
  br label %.preheader209

bb.b:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %i.q, null                  ; 2 uses
  %i.af = zext i8 %i.h to i16
  %i.ag = icmp ugt i8 %i.h, -4                    ; 2 uses
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.c, label %.loopexit205

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp eq i32 %2, %i.c
  %i.ai = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %i.ah, label %.preheader204, label %.preheader207

.preheader207:                                    ; preds = %bb.c
  br i1 %i.ai, label %.preheader206.lr.ph, label %.loopexit

.preheader206.lr.ph:                              ; preds = %.preheader207
  %i.aj = icmp sgt i32 %i.d, 0
  %i.ak = sext i32 %i.k to i64
  %i.al = sext i32 %i.o to i64
  br i1 %i.aj, label %.preheader206.us.preheader, label %.loopexit

.preheader206.us.preheader:                       ; preds = %.preheader206.lr.ph
  %i.am = zext i8 %1 to i64
  %i.an = zext nneg i32 %i.d to i64
  br label %.preheader206.us

.preheader206.us:                                 ; preds = %.preheader206.us.preheader, %._crit_edge220.us
  %.1223.us = phi i32 [ %i.bc, %._crit_edge220.us ], [ 0, %.preheader206.us.preheader ]
  %.1177222.us = phi ptr [ %i.bb, %._crit_edge220.us ], [ %i.m, %.preheader206.us.preheader ] ; 2 uses
  %.1183221.us = phi ptr [ %i.ba, %._crit_edge220.us ], [ %i.i, %.preheader206.us.preheader ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader206.us, %bb.d
  %indvars.iv296 = phi i64 [ 0, %.preheader206.us ], [ %indvars.iv.next297, %bb.d ] ; 2 uses
  %.0161219.us = phi i32 [ 0, %.preheader206.us ], [ %i.ay, %bb.d ] ; 2 uses
  %i.ao = sext i32 %.0161219.us to i64
  %i.ap = getelementptr inbounds i8, ptr %.1177222.us, i64 %i.ao ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.1183221.us, i64 %indvars.iv296 ; 3 uses
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !21
  %i.as = getelementptr i8, ptr %i.ap, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !21
  %i.av = getelementptr i8, ptr %i.ap, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !21
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, %i.am ; 2 uses
  %i.ay = add i32 %.0161219.us, %2
  %i.az = icmp samesign ult i64 %indvars.iv.next297, %i.an
  br i1 %i.az, label %bb.d, label %._crit_edge220.us, !llvm.loop !140

._crit_edge220.us:                                ; preds = %bb.d
  %i.ba = getelementptr inbounds i8, ptr %.1183221.us, i64 %i.ak ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.1177222.us, i64 %i.al ; 2 uses
  %i.bc = add nuw nsw i32 %.1223.us, 1            ; 2 uses
  %exitcond299.not = icmp eq i32 %i.bc, %i.f
  br i1 %exitcond299.not, label %.loopexit205, label %.preheader206.us, !llvm.loop !141

.preheader204:                                    ; preds = %bb.c
  br i1 %i.ai, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader204
  %i.bd = sext i32 %i.d to i64
  %i.be = sext i32 %i.k to i64
  %i.bf = sext i32 %i.o to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0160228 = phi i32 [ 0, %.lr.ph ], [ %i.bj, %bb.e ]
  %.0176227 = phi ptr [ %i.m, %.lr.ph ], [ %i.bi, %bb.e ] ; 2 uses
  %.0182226 = phi ptr [ %i.i, %.lr.ph ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bg = tail call ptr @lv_memcpy(ptr noundef %.0182226, ptr noundef %.0176227, i64 noundef %i.bd) #5 ; 0 uses
  %i.bh = getelementptr inbounds i8, ptr %.0182226, i64 %i.be
  %i.bi = getelementptr inbounds i8, ptr %.0176227, i64 %i.bf
  %i.bj = add nuw nsw i32 %.0160228, 1            ; 2 uses
  %exitcond300.not = icmp eq i32 %i.bj, %i.f
  br i1 %exitcond300.not, label %.loopexit, label %bb.e, !llvm.loop !142

.loopexit205:                                     ; preds = %._crit_edge220.us, %bb.b
  %.2184 = phi ptr [ %i.i, %bb.b ], [ %i.ba, %._crit_edge220.us ] ; 2 uses
  %.2178 = phi ptr [ %i.m, %bb.b ], [ %i.bb, %._crit_edge220.us ] ; 2 uses
  %i.bk = icmp ult i8 %i.h, -3                    ; 2 uses
  %or.cond5 = select i1 %i.ae, i1 %i.bk, i1 false
  %i.bl = icmp sgt i32 %i.f, 0                    ; 3 uses
  %or.cond268 = select i1 %or.cond5, i1 %i.bl, i1 false
  br i1 %or.cond268, label %.preheader201.lr.ph, label %.loopexit203

.preheader201.lr.ph:                              ; preds = %.loopexit205
  %i.bm = icmp slt i32 %i.d, 1
  %i.bn = zext i8 %i.h to i32                     ; 3 uses
  %i.bo = xor i8 %i.h, -1
  %i.bp = zext i8 %i.bo to i32                    ; 3 uses
  %i.bq = sext i32 %i.k to i64
  %i.br = sext i32 %i.o to i64
  %i.bs = icmp eq i8 %i.h, 0
  %or.cond365 = select i1 %i.bm, i1 true, i1 %i.bs
  br i1 %or.cond365, label %.loopexit, label %.preheader201.us.preheader

.preheader201.us.preheader:                       ; preds = %.preheader201.lr.ph
  %i.bt = zext i8 %1 to i64
  %i.bu = zext nneg i32 %i.d to i64
  br label %lv_color_24_24_mix.exit.us.ph.lver.orig

lv_color_24_24_mix.exit.us.ph.lver.orig:          ; preds = %._crit_edge234.us, %.preheader201.us.preheader
  %.2237.us = phi i32 [ %i.dh, %._crit_edge234.us ], [ 0, %.preheader201.us.preheader ]
  %.3179236.us = phi ptr [ %i.dg, %._crit_edge234.us ], [ %.2178, %.preheader201.us.preheader ] ; 2 uses
  %.3185235.us = phi ptr [ %i.df, %._crit_edge234.us ], [ %.2184, %.preheader201.us.preheader ] ; 2 uses
  br label %lv_color_24_24_mix.exit.us.lver.orig

lv_color_24_24_mix.exit.us.lver.orig:             ; preds = %lv_color_24_24_mix.exit.us.lver.orig, %lv_color_24_24_mix.exit.us.ph.lver.orig
  %indvars.iv303.lver.orig = phi i64 [ 0, %lv_color_24_24_mix.exit.us.ph.lver.orig ], [ %indvars.iv.next304.lver.orig, %lv_color_24_24_mix.exit.us.lver.orig ] ; 2 uses
  %.1162232.us.lver.orig = phi i32 [ 0, %lv_color_24_24_mix.exit.us.ph.lver.orig ], [ %i.dd, %lv_color_24_24_mix.exit.us.lver.orig ] ; 2 uses
  %i.bv = sext i32 %.1162232.us.lver.orig to i64
  %i.bw = getelementptr inbounds i8, ptr %.3179236.us, i64 %i.bv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.3185235.us, i64 %indvars.iv303.lver.orig ; 4 uses
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !21
  %i.bz = zext i8 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, %i.bn
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.cc = zext i8 %i.cb to i32
  %i.cd = mul nuw nsw i32 %i.cc, %i.bp
  %i.ce = add nuw nsw i32 %i.cd, %i.ca
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %i.bx, align 1, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !21
  %i.cj = zext i8 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.cj, %i.bn
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %i.cn = zext i8 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.cn, %i.bp
  %i.cp = add nuw nsw i32 %i.co, %i.ck
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = trunc i32 %i.cq to i8
  store i8 %i.cr, ptr %i.cl, align 1, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !21
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cu, %i.bn
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %i.cy = zext i8 %i.cx to i32
  %i.cz = mul nuw nsw i32 %i.cy, %i.bp
  %i.da = add nuw nsw i32 %i.cz, %i.cv
  %i.db = lshr i32 %i.da, 8
  %i.dc = trunc i32 %i.db to i8
  store i8 %i.dc, ptr %i.cw, align 1, !tbaa !21
  %indvars.iv.next304.lver.orig = add nuw nsw i64 %indvars.iv303.lver.orig, %i.bt ; 2 uses
  %i.dd = add i32 %.1162232.us.lver.orig, %2
  %i.de = icmp samesign ult i64 %indvars.iv.next304.lver.orig, %i.bu
  br i1 %i.de, label %lv_color_24_24_mix.exit.us.lver.orig, label %._crit_edge234.us, !llvm.loop !143

._crit_edge234.us:                                ; preds = %lv_color_24_24_mix.exit.us.lver.orig
  %i.df = getelementptr inbounds i8, ptr %.3185235.us, i64 %i.bq ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.3179236.us, i64 %i.br ; 2 uses
  %i.dh = add nuw nsw i32 %.2237.us, 1            ; 2 uses
  %exitcond306.not = icmp eq i32 %i.dh, %i.f
  br i1 %exitcond306.not, label %.loopexit203, label %lv_color_24_24_mix.exit.us.ph.lver.orig, !llvm.loop !144

.loopexit203:                                     ; preds = %._crit_edge234.us, %.loopexit205
  %.4186 = phi ptr [ %.2184, %.loopexit205 ], [ %i.df, %._crit_edge234.us ] ; 3 uses
  %.4180 = phi ptr [ %.2178, %.loopexit205 ], [ %i.dg, %._crit_edge234.us ] ; 3 uses
  %i.di = icmp ne ptr %i.q, null
  %or.cond8 = select i1 %i.di, i1 %i.ag, i1 false
  %or.cond269 = select i1 %or.cond8, i1 %i.bl, i1 false
  br i1 %or.cond269, label %.preheader198.lr.ph, label %.loopexit200

.preheader198.lr.ph:                              ; preds = %.loopexit203
  %i.dj = icmp sgt i32 %i.d, 0
  %i.dk = sext i32 %i.k to i64                    ; 2 uses
  %i.dl = sext i32 %i.o to i64                    ; 2 uses
  %i.dm = sext i32 %i.s to i64                    ; 2 uses
  br i1 %i.dj, label %.preheader198.us.preheader, label %.preheader198.preheader

.preheader198.preheader:                          ; preds = %.preheader198.lr.ph
  %i.dn = zext nneg i32 %i.f to i64               ; 3 uses
  %i.do = mul nsw i64 %i.dn, %i.dk
  %scevgep309 = getelementptr i8, ptr %.4186, i64 %i.do
  %i.dp = mul nsw i64 %i.dn, %i.dl
  %scevgep310 = getelementptr i8, ptr %.4180, i64 %i.dp
  %i.dq = mul nsw i64 %i.dn, %i.dm
  %scevgep311 = getelementptr i8, ptr %i.q, i64 %i.dq
  br label %.loopexit200

.preheader198.us.preheader:                       ; preds = %.preheader198.lr.ph
  %i.dr = zext i8 %1 to i64
  %i.ds = zext nneg i32 %i.d to i64
  br label %.preheader198.us

.preheader198.us:                                 ; preds = %.preheader198.us.preheader, %._crit_edge248.us
  %.3252.us = phi i32 [ %i.fu, %._crit_edge248.us ], [ 0, %.preheader198.us.preheader ]
  %.0171251.us = phi ptr [ %i.ft, %._crit_edge248.us ], [ %i.q, %.preheader198.us.preheader ] ; 2 uses
  %.5181250.us = phi ptr [ %i.fs, %._crit_edge248.us ], [ %.4180, %.preheader198.us.preheader ] ; 2 uses
  %.5187249.us = phi ptr [ %i.fr, %._crit_edge248.us ], [ %.4186, %.preheader198.us.preheader ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader198.us, %lv_color_24_24_mix.exit195.us
  %indvars.iv314 = phi i64 [ 0, %.preheader198.us ], [ %indvars.iv.next315, %lv_color_24_24_mix.exit195.us ] ; 2 uses
  %indvars.iv312 = phi i64 [ 0, %.preheader198.us ], [ %indvars.iv.next313, %lv_color_24_24_mix.exit195.us ] ; 2 uses
  %.2163245.us = phi i32 [ 0, %.preheader198.us ], [ %i.fp, %lv_color_24_24_mix.exit195.us ] ; 2 uses
  %i.dt = sext i32 %.2163245.us to i64
  %i.du = getelementptr inbounds i8, ptr %.5181250.us, i64 %i.dt ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.5187249.us, i64 %indvars.iv314 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0171251.us, i64 %indvars.iv312
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !21  ; 4 uses
  %i.dy = zext i8 %i.dx to i32                    ; 3 uses
  %i.dz = icmp eq i8 %i.dx, 0
  br i1 %i.dz, label %lv_color_24_24_mix.exit195.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ea = icmp ugt i8 %i.dx, -4
  br i1 %i.ea, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eb = xor i8 %i.dx, -1
  %i.ec = load i8, ptr %i.du, align 1, !tbaa !21
  %i.ed = zext i8 %i.ec to i32
  %i.ee = mul nuw nsw i32 %i.ed, %i.dy
  %i.ef = load i8, ptr %i.dv, align 1, !tbaa !21
  %i.eg = zext i8 %i.ef to i32
  %i.eh = zext i8 %i.eb to i32                    ; 3 uses
  %i.ei = mul nuw nsw i32 %i.eg, %i.eh
  %i.ej = add nuw nsw i32 %i.ei, %i.ee
  %i.ek = lshr i32 %i.ej, 8
  %i.el = trunc i32 %i.ek to i8
  store i8 %i.el, ptr %i.dv, align 1, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !21
  %i.eo = zext i8 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.eo, %i.dy
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !21
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, %i.eh
  %i.eu = add nuw nsw i32 %i.et, %i.ep
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.eq, align 1, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !21
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.ez, %i.dy
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !21
  %i.fd = zext i8 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.fd, %i.eh
  %i.ff = add nuw nsw i32 %i.fe, %i.fa
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = trunc i32 %i.fg to i8
  store i8 %i.fh, ptr %i.fb, align 1, !tbaa !21
  br label %lv_color_24_24_mix.exit195.us

bb.i:                                             ; preds = %bb.g
  %i.fi = load i8, ptr %i.du, align 1, !tbaa !21
  store i8 %i.fi, ptr %i.dv, align 1, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !21
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !21
  br label %lv_color_24_24_mix.exit195.us

lv_color_24_24_mix.exit195.us:                    ; preds = %bb.i, %bb.h, %bb.f
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, %i.dr ; 2 uses
  %i.fp = add i32 %.2163245.us, %2
  %i.fq = icmp samesign ult i64 %indvars.iv.next315, %i.ds
  br i1 %i.fq, label %bb.f, label %._crit_edge248.us, !llvm.loop !145

._crit_edge248.us:                                ; preds = %lv_color_24_24_mix.exit195.us
  %i.fr = getelementptr inbounds i8, ptr %.5187249.us, i64 %i.dk ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.5181250.us, i64 %i.dl ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.0171251.us, i64 %i.dm ; 2 uses
  %i.fu = add nuw nsw i32 %.3252.us, 1            ; 2 uses
  %exitcond319.not = icmp eq i32 %i.fu, %i.f
  br i1 %exitcond319.not, label %.loopexit200, label %.preheader198.us, !llvm.loop !146

.loopexit200:                                     ; preds = %._crit_edge248.us, %.preheader198.preheader, %.loopexit203
  %.6188 = phi ptr [ %.4186, %.loopexit203 ], [ %scevgep309, %.preheader198.preheader ], [ %i.fr, %._crit_edge248.us ]
  %.6 = phi ptr [ %.4180, %.loopexit203 ], [ %scevgep310, %.preheader198.preheader ], [ %i.fs, %._crit_edge248.us ]
  %.1172 = phi ptr [ %i.q, %.loopexit203 ], [ %scevgep311, %.preheader198.preheader ], [ %i.ft, %._crit_edge248.us ] ; 2 uses
  %i.fv = icmp ne ptr %.1172, null
  %or.cond11 = select i1 %i.fv, i1 %i.bk, i1 false
  %or.cond270 = select i1 %or.cond11, i1 %i.bl, i1 false
  br i1 %or.cond270, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.loopexit200
  %i.fw = icmp sgt i32 %i.d, 0
  %i.fx = sext i32 %i.k to i64
  %i.fy = sext i32 %i.o to i64
  %i.fz = sext i32 %i.s to i64
  br i1 %i.fw, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ga = zext i8 %1 to i64
  %i.gb = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge263
  %.4267 = phi i32 [ %i.ie, %._crit_edge263 ], [ 0, %.preheader.preheader ]
  %.2173266 = phi ptr [ %i.id, %._crit_edge263 ], [ %.1172, %.preheader.preheader ] ; 2 uses
  %.7265 = phi ptr [ %i.ic, %._crit_edge263 ], [ %.6, %.preheader.preheader ] ; 2 uses
  %.7189264 = phi ptr [ %i.ib, %._crit_edge263 ], [ %.6188, %.preheader.preheader ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %lv_color_24_24_mix.exit196
  %indvars.iv322 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next323, %lv_color_24_24_mix.exit196 ] ; 2 uses
  %indvars.iv320 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next321, %lv_color_24_24_mix.exit196 ] ; 2 uses
  %.3164260 = phi i32 [ 0, %.preheader ], [ %i.hz, %lv_color_24_24_mix.exit196 ] ; 2 uses
  %i.gc = sext i32 %.3164260 to i64
  %i.gd = getelementptr inbounds i8, ptr %.7265, i64 %i.gc ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.7189264, i64 %indvars.iv322 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.2173266, i64 %indvars.iv320
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !21
  %i.gh = zext i8 %i.gg to i16
  %i.gi = mul nuw i16 %i.gh, %i.af                ; 2 uses
  %i.gj = lshr i16 %i.gi, 8                       ; 5 uses
  %i.gk = icmp eq i16 %i.gj, 0
  br i1 %i.gk, label %lv_color_24_24_mix.exit196, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gl = icmp ugt i16 %i.gi, -769
  br i1 %i.gl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gm = load i8, ptr %i.gd, align 1, !tbaa !21
  store i8 %i.gm, ptr %i.ge, align 1, !tbaa !21
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !21
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !21
  br label %lv_color_24_24_mix.exit196

bb.m:                                             ; preds = %bb.k
  %i.gt = xor i16 %i.gj, 255                      ; 3 uses
  %i.gu = load i8, ptr %i.gd, align 1, !tbaa !21
  %i.gv = zext i8 %i.gu to i16
  %i.gw = mul nuw i16 %i.gj, %i.gv
  %i.gx = load i8, ptr %i.ge, align 1, !tbaa !21
  %i.gy = zext i8 %i.gx to i16
  %i.gz = mul nuw i16 %i.gt, %i.gy
  %i.ha = add i16 %i.gz, %i.gw
  %i.hb = lshr i16 %i.ha, 8
  %i.hc = trunc nuw i16 %i.hb to i8
  store i8 %i.hc, ptr %i.ge, align 1, !tbaa !21
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !21
  %i.hf = zext i8 %i.he to i16
  %i.hg = mul nuw i16 %i.gj, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !21
  %i.hj = zext i8 %i.hi to i16
  %i.hk = mul nuw i16 %i.gt, %i.hj
  %i.hl = add i16 %i.hk, %i.hg
  %i.hm = lshr i16 %i.hl, 8
  %i.hn = trunc nuw i16 %i.hm to i8
  store i8 %i.hn, ptr %i.hh, align 1, !tbaa !21
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !21
  %i.hq = zext i8 %i.hp to i16
  %i.hr = mul nuw i16 %i.gj, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !21
  %i.hu = zext i8 %i.ht to i16
  %i.hv = mul nuw i16 %i.gt, %i.hu
  %i.hw = add i16 %i.hv, %i.hr
  %i.hx = lshr i16 %i.hw, 8
  %i.hy = trunc nuw i16 %i.hx to i8
  store i8 %i.hy, ptr %i.hs, align 1, !tbaa !21
  br label %lv_color_24_24_mix.exit196

lv_color_24_24_mix.exit196:                       ; preds = %bb.j, %bb.l, %bb.m
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, %i.ga ; 2 uses
  %i.hz = add i32 %.3164260, %2
  %i.ia = icmp samesign ult i64 %indvars.iv.next323, %i.gb
  br i1 %i.ia, label %bb.j, label %._crit_edge263, !llvm.loop !147

._crit_edge263:                                   ; preds = %lv_color_24_24_mix.exit196
  %i.ib = getelementptr inbounds i8, ptr %.7189264, i64 %i.fx
  %i.ic = getelementptr inbounds i8, ptr %.7265, i64 %i.fy
  %i.id = getelementptr inbounds i8, ptr %.2173266, i64 %i.fz
  %i.ie = add nuw nsw i32 %.4267, 1               ; 2 uses
  %exitcond327.not = icmp eq i32 %i.ie, %i.f
  br i1 %exitcond327.not, label %.loopexit, label %.preheader, !llvm.loop !148

.preheader209:                                    ; preds = %.preheader209.preheader, %._crit_edge
  %.5217 = phi i32 [ %i.me, %._crit_edge ], [ 0, %.preheader209.preheader ]
  %.3174216 = phi ptr [ %.4175, %._crit_edge ], [ %i.q, %.preheader209.preheader ] ; 3 uses
  %.8215 = phi ptr [ %i.md, %._crit_edge ], [ %i.m, %.preheader209.preheader ] ; 2 uses
  %.8190214 = phi ptr [ %i.mc, %._crit_edge ], [ %i.i, %.preheader209.preheader ] ; 2 uses
  %i.if = icmp eq ptr %.3174216, null             ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader209, %blend_non_normal_pixel.exit
  %indvars.iv = phi i64 [ 0, %.preheader209 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 3 uses
  %.4165213 = phi i32 [ 0, %.preheader209 ], [ %i.lz, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.ig = sext i32 %.4165213 to i64
  %i.ih = getelementptr i8, ptr %.8215, i64 %i.ig ; 3 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 2
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !21
  %i.ik = getelementptr i8, ptr %i.ih, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !21
  %i.im = load i8, ptr %i.ih, align 1, !tbaa !21
  br i1 %i.if, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.in = getelementptr inbounds nuw i8, ptr %.3174216, i64 %indvars.iv
  %i.io = load i8, ptr %i.in, align 1, !tbaa !21
  %i.ip = zext i8 %i.io to i16
  %i.iq = mul nuw i16 %i.ip, %i.y
  %i.ir = lshr i16 %i.iq, 8
  %i.is = trunc nuw i16 %i.ir to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.6.0 = phi i8 [ %i.is, %bb.o ], [ %i.h, %bb.n ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.8190214, i64 %indvars.iv ; 18 uses
  %i.iu = load i32, ptr %i.t, align 4, !tbaa !54
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32 ; 4 uses
  %.sroa.5.0.insert.ext = zext i8 %i.ij to i32    ; 4 uses
  %.sroa.4.0.insert.ext = zext i8 %i.il to i32    ; 4 uses
  %.sroa.0.0.insert.ext = zext i8 %i.im to i32    ; 4 uses
  switch i32 %i.iu, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.iv = load i8, ptr %i.it, align 1, !tbaa !21  ; 2 uses
  %i.iw = zext i8 %i.iv to i32
  %i.ix = add nuw nsw i32 %i.iw, %.sroa.0.0.insert.ext
  %spec.select63.i = tail call i32 @llvm.umin.i32(i32 %i.ix, i32 255)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !21  ; 2 uses
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nuw nsw i32 %i.ja, %.sroa.4.0.insert.ext
  %i.jc = tail call i32 @llvm.umin.i32(i32 %i.jb, i32 255)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !21  ; 2 uses
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nuw nsw i32 %i.jf, %.sroa.5.0.insert.ext
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 255)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ji = load i8, ptr %i.it, align 1, !tbaa !21  ; 2 uses
  %i.jj = zext i8 %i.ji to i32
  %i.jk = sub nsw i32 %i.jj, %.sroa.0.0.insert.ext
  %spec.select5662.i = tail call i32 @llvm.smax.i32(i32 %i.jk, i32 0)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !21  ; 2 uses
  %i.jn = zext i8 %i.jm to i32
  %i.jo = sub nsw i32 %i.jn, %.sroa.4.0.insert.ext
  %i.jp = tail call i32 @llvm.smax.i32(i32 %i.jo, i32 0)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !21  ; 2 uses
  %i.js = zext i8 %i.jr to i32
  %i.jt = sub nsw i32 %i.js, %.sroa.5.0.insert.ext
  %i.ju = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.jv = load i8, ptr %i.it, align 1, !tbaa !21  ; 2 uses
  %i.jw = zext i8 %i.jv to i32
  %i.jx = mul nuw nsw i32 %i.jw, %.sroa.0.0.insert.ext
  %i.jy = lshr i32 %i.jx, 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !21  ; 2 uses
  %i.kb = zext i8 %i.ka to i32
  %i.kc = mul nuw nsw i32 %i.kb, %.sroa.4.0.insert.ext
  %i.kd = lshr i32 %i.kc, 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !21  ; 2 uses
  %i.kg = zext i8 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.kg, %.sroa.5.0.insert.ext
  %i.ki = lshr i32 %i.kh, 8
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.kj = load i8, ptr %i.it, align 1, !tbaa !21  ; 2 uses
  %i.kk = zext i8 %i.kj to i32
  %i.kl = sub nsw i32 %i.kk, %.sroa.0.0.insert.ext
  %i.km = tail call i32 @llvm.abs.i32(i32 %i.kl, i1 true)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !21  ; 2 uses
  %i.kp = zext i8 %i.ko to i32
  %i.kq = sub nsw i32 %i.kp, %.sroa.4.0.insert.ext
  %i.kr = tail call i32 @llvm.abs.i32(i32 %i.kq, i1 true)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !21  ; 2 uses
  %i.ku = zext i8 %i.kt to i32
  %i.kv = sub nsw i32 %i.ku, %.sroa.5.0.insert.ext
  %i.kw = tail call i32 @llvm.abs.i32(i32 %i.kv, i1 true)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.kx = phi i8 [ %i.je, %bb.q ], [ %i.jr, %bb.r ], [ %i.kf, %bb.s ], [ %i.kt, %bb.t ]
  %i.ky = phi i8 [ %i.iz, %bb.q ], [ %i.jm, %bb.r ], [ %i.ka, %bb.s ], [ %i.ko, %bb.t ]
  %i.kz = phi i8 [ %i.iv, %bb.q ], [ %i.ji, %bb.r ], [ %i.jv, %bb.s ], [ %i.kj, %bb.t ]
  %.sroa.0.0.in.i = phi i32 [ %spec.select63.i, %bb.q ], [ %spec.select5662.i, %bb.r ], [ %i.jy, %bb.s ], [ %i.km, %bb.t ] ; 2 uses
  %.sroa.9.0.in.i = phi i32 [ %i.jc, %bb.q ], [ %i.jp, %bb.r ], [ %i.kd, %bb.s ], [ %i.kr, %bb.t ] ; 2 uses
  %.sroa.15.0.in.i = phi i32 [ %i.jh, %bb.q ], [ %i.ju, %bb.r ], [ %i.ki, %bb.s ], [ %i.kw, %bb.t ] ; 2 uses
  %.sroa.15.0.i = trunc nuw i32 %.sroa.15.0.in.i to i8
  %.sroa.9.0.i = trunc nuw i32 %.sroa.9.0.in.i to i8
  %.sroa.0.0.i = trunc nuw i32 %.sroa.0.0.in.i to i8
  %i.la = icmp eq i8 %.sroa.6.0, 0
  br i1 %i.la, label %blend_non_normal_pixel.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lb = icmp ugt i8 %.sroa.6.0, -4
  br i1 %i.lb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 %.sroa.0.0.i, ptr %i.it, align 1, !tbaa !21
  %i.lc = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  store i8 %.sroa.9.0.i, ptr %i.lc, align 1, !tbaa !21
  %i.ld = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  store i8 %.sroa.15.0.i, ptr %i.ld, align 1, !tbaa !21
  br label %blend_non_normal_pixel.exit

bb.x:                                             ; preds = %bb.v
  %i.le = xor i32 %.sroa.6.0.insert.ext, 255      ; 3 uses
  %i.lf = mul nuw nsw i32 %.sroa.0.0.in.i, %.sroa.6.0.insert.ext
  %i.lg = zext i8 %i.kz to i32
  %i.lh = mul nuw nsw i32 %i.le, %i.lg
  %i.li = add nuw nsw i32 %i.lh, %i.lf
  %i.lj = lshr i32 %i.li, 8
  %i.lk = trunc nuw i32 %i.lj to i8
  store i8 %i.lk, ptr %i.it, align 1, !tbaa !21
  %i.ll = mul nuw nsw i32 %.sroa.9.0.in.i, %.sroa.6.0.insert.ext
  %i.lm = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ln = zext i8 %i.ky to i32
  %i.lo = mul nuw nsw i32 %i.le, %i.ln
  %i.lp = add nuw nsw i32 %i.ll, %i.lo
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = trunc nuw i32 %i.lq to i8
  store i8 %i.lr, ptr %i.lm, align 1, !tbaa !21
  %i.ls = mul nuw nsw i32 %.sroa.15.0.in.i, %.sroa.6.0.insert.ext
  %i.lt = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.lu = zext i8 %i.kx to i32
  %i.lv = mul nuw nsw i32 %i.le, %i.lu
  %i.lw = add nuw nsw i32 %i.ls, %i.lv
  %i.lx = lshr i32 %i.lw, 8
  %i.ly = trunc nuw i32 %i.lx to i8
  store i8 %i.ly, ptr %i.lt, align 1, !tbaa !21
  br label %blend_non_normal_pixel.exit

blend_non_normal_pixel.exit:                      ; preds = %bb.p, %bb.u, %bb.w, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ac ; 2 uses
  %i.lz = add i32 %.4165213, %2
  %i.ma = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.ma, label %bb.n, label %._crit_edge, !llvm.loop !149

._crit_edge:                                      ; preds = %blend_non_normal_pixel.exit
  %i.mb = getelementptr inbounds i8, ptr %.3174216, i64 %i.z
  %.4175 = select i1 %i.if, ptr null, ptr %i.mb
  %i.mc = getelementptr inbounds i8, ptr %.8190214, i64 %i.aa
  %i.md = getelementptr inbounds i8, ptr %.8215, i64 %i.ab
  %i.me = add nuw nsw i32 %.5217, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.me, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.preheader209, !llvm.loop !150

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge263, %bb.e, %.preheader207, %.preheader204, %.preheader206.lr.ph, %.preheader201.lr.ph, %.preheader210, %.preheader209.lr.ph, %.preheader.lr.ph, %.loopexit200
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"_lv_draw_sw_blend_fill_dsc_t", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !5, i64 32, !12, i64 36, !6, i64 39, !13, i64 40}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!14 = !{!9, !5, i64 12}
!15 = !{!9, !6, i64 39}
!16 = !{!9, !11, i64 24}
!17 = !{!9, !5, i64 32}
!18 = !{!9, !5, i64 16}
!19 = !{!9, !10, i64 0}
!20 = !{!9, !6, i64 36}
!21 = !{!6, !6, i64 0}
!22 = !{!9, !6, i64 37}
!23 = !{!9, !6, i64 38}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!5, !5, i64 0}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !25}
!32 = distinct !{!32, !25, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25, !34, !33}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !25}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = !{!44, !5, i64 52}
!44 = !{!"_lv_draw_sw_blend_image_dsc_t", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !5, i64 32, !10, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 60, !13, i64 64, !13, i64 80}
!45 = !{!44, !5, i64 8}
!46 = !{!44, !5, i64 12}
!47 = !{!44, !6, i64 56}
!48 = !{!44, !10, i64 0}
!49 = !{!44, !5, i64 16}
!50 = !{!44, !10, i64 40}
!51 = !{!44, !5, i64 48}
!52 = !{!44, !11, i64 24}
!53 = !{!44, !5, i64 32}
!54 = !{!44, !5, i64 60}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !25, !33, !34}
!61 = distinct !{!61, !25, !33}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = !{!72, !6, i64 3}
!72 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!73 = distinct !{!73, !25}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25}
!80 = distinct !{!80, !25}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !25}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !25}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = distinct !{!88, !25}
!89 = distinct !{!89, !25}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !25}
!92 = distinct !{!92, !25}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !25, !33, !34}
!99 = !{!"branch_weights", i32 4, i32 28}
!100 = distinct !{!100, !25, !33, !34}
!101 = distinct !{!101, !25, !33}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = !{!112, !6, i64 0}
!112 = !{!"", !6, i64 0, !6, i64 1}
!113 = !{!112, !6, i64 1}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = distinct !{!123, !25}
!124 = !{!125}
!125 = distinct !{!125, !126}
!126 = distinct !{!126, !"LVerDomain"}
!127 = !{!128}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !25, !33, !34}
!130 = distinct !{!130, !25, !33}
!131 = distinct !{!131, !25}
!132 = distinct !{!132, !25}
!133 = distinct !{!133, !25}
!134 = distinct !{!134, !25}
!135 = distinct !{!135, !25}
!136 = distinct !{!136, !25}
!137 = distinct !{!137, !25}
!138 = distinct !{!138, !25}
!139 = distinct !{!139, !25}
!140 = distinct !{!140, !25}
!141 = distinct !{!141, !25}
!142 = distinct !{!142, !25}
!143 = distinct !{!143, !25}
!144 = distinct !{!144, !25}
!145 = distinct !{!145, !25}
!146 = distinct !{!146, !25}
!147 = distinct !{!147, !25}
!148 = distinct !{!148, !25}
!149 = distinct !{!149, !25}
!150 = distinct !{!150, !25}
end_hunk_0
