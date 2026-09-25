Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_argb8888?download=true
inline.NumInlined: 160
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_argb8888:bb.a
  %i.cme = getelementptr inbounds nuw i8, ptr %i.clz, i64 2
  %i.cmf = load i8, ptr %i.cme, align 1, !tbaa !32
  %i.cmg = zext i8 %i.cmf to i32
  %i.cmh = add nuw nsw i32 %.sroa.5.0.insert.ext.i295, %i.cmg
  %spec.select.i.i338 = call i32 @llvm.umin.i32(i32 %i.cmh, i32 255)
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.clz, i64 1
  %i.cmj = load i8, ptr %i.cmi, align 1, !tbaa !33
  %i.cmk = zext i8 %i.cmj to i32
  %i.cml = add nuw nsw i32 %.sroa.5.0.insert.ext.i295, %i.cmk
  %i.cmm = call i32 @llvm.umin.i32(i32 %i.cml, i32 255)
  %i.cmn = load i8, ptr %i.clz, align 1, !tbaa !34
  %i.cmo = zext i8 %i.cmn to i32
  %i.cmp = add nuw nsw i32 %.sroa.5.0.insert.ext.i295, %i.cmo
  %i.cmq = call i32 @llvm.umin.i32(i32 %i.cmp, i32 255)
  br label %bb.lp

bb.lm:                                            ; preds = %bb.lk
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.clz, i64 2
  %i.cms = load i8, ptr %i.cmr, align 1, !tbaa !32
  %i.cmt = zext i8 %i.cms to i32
  %i.cmu = sub nsw i32 %i.cmt, %.sroa.5.0.insert.ext.i295
  %spec.select60.i.i337 = call i32 @llvm.smax.i32(i32 %i.cmu, i32 0)
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.clz, i64 1
  %i.cmw = load i8, ptr %i.cmv, align 1, !tbaa !33
  %i.cmx = zext i8 %i.cmw to i32
  %i.cmy = sub nsw i32 %i.cmx, %.sroa.5.0.insert.ext.i295
  %i.cmz = call i32 @llvm.smax.i32(i32 %i.cmy, i32 0)
  %i.cna = load i8, ptr %i.clz, align 1, !tbaa !34
  %i.cnb = zext i8 %i.cna to i32
  %i.cnc = sub nsw i32 %i.cnb, %.sroa.5.0.insert.ext.i295
  %i.cnd = call i32 @llvm.smax.i32(i32 %i.cnc, i32 0)
  br label %bb.lp

bb.ln:                                            ; preds = %bb.lk
  %i.cne = getelementptr inbounds nuw i8, ptr %i.clz, i64 2
  %i.cnf = load i8, ptr %i.cne, align 1, !tbaa !32
  %i.cng = zext i8 %i.cnf to i32
  %i.cnh = mul nuw nsw i32 %.sroa.5.0.insert.ext.i295, %i.cng
  %i.cni = lshr i32 %i.cnh, 8
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.clz, i64 1
  %i.cnk = load i8, ptr %i.cnj, align 1, !tbaa !33
  %i.cnl = zext i8 %i.cnk to i32
  %i.cnm = mul nuw nsw i32 %.sroa.5.0.insert.ext.i295, %i.cnl
  %i.cnn = lshr i32 %i.cnm, 8
  %i.cno = load i8, ptr %i.clz, align 1, !tbaa !34
  %i.cnp = zext i8 %i.cno to i32
  %i.cnq = mul nuw nsw i32 %.sroa.5.0.insert.ext.i295, %i.cnp
  %i.cnr = lshr i32 %i.cnq, 8
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lk
  %i.cns = getelementptr inbounds nuw i8, ptr %i.clz, i64 2
  %i.cnt = load i8, ptr %i.cns, align 1, !tbaa !32
  %i.cnu = zext i8 %i.cnt to i32
  %i.cnv = sub nsw i32 %i.cnu, %.sroa.5.0.insert.ext.i295
  %i.cnw = call i32 @llvm.abs.i32(i32 %i.cnv, i1 true)
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.clz, i64 1
  %i.cny = load i8, ptr %i.cnx, align 1, !tbaa !33
  %i.cnz = zext i8 %i.cny to i32
  %i.coa = sub nsw i32 %i.cnz, %.sroa.5.0.insert.ext.i295
  %i.cob = call i32 @llvm.abs.i32(i32 %i.coa, i1 true)
  %i.coc = load i8, ptr %i.clz, align 1, !tbaa !34
  %i.cod = zext i8 %i.coc to i32
  %i.coe = sub nsw i32 %i.cod, %.sroa.5.0.insert.ext.i295
  %i.cof = call i32 @llvm.abs.i32(i32 %i.coe, i1 true)
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln, %bb.lm, %bb.ll
  %.sroa.11.0.i.i296 = phi i32 [ %spec.select.i.i338, %bb.ll ], [ %spec.select60.i.i337, %bb.lm ], [ %i.cni, %bb.ln ], [ %i.cnw, %bb.lo ]
  %.sroa.7.0.i.i297 = phi i32 [ %i.cmm, %bb.ll ], [ %i.cmz, %bb.lm ], [ %i.cnn, %bb.ln ], [ %i.cob, %bb.lo ]
  %.sroa.01.0.i.i298 = phi i32 [ %i.cmq, %bb.ll ], [ %i.cnd, %bb.lm ], [ %i.cnr, %bb.ln ], [ %i.cof, %bb.lo ]
  %.sroa.11.0.insert.ext.i.i299 = shl nuw nsw i32 %.sroa.11.0.i.i296, 16
  %.sroa.11.0.insert.shift.i.i300 = and i32 %.sroa.11.0.insert.ext.i.i299, 16711680
  %.sroa.11.0.insert.insert.i.i301 = or disjoint i32 %.sroa.11.0.insert.shift.i.i300, %.sroa.8.0.insert.shift.i
  %.sroa.7.0.insert.ext.i.i302 = shl nuw nsw i32 %.sroa.7.0.i.i297, 8
  %.sroa.7.0.insert.shift.i.i303 = and i32 %.sroa.7.0.insert.ext.i.i302, 65280
  %.sroa.7.0.insert.insert.i.i304 = add nuw nsw i32 %.sroa.11.0.insert.insert.i.i301, %.sroa.01.0.i.i298 ; 4 uses
  %.sroa.01.0.insert.insert.i.i305 = or disjoint i32 %.sroa.7.0.insert.insert.i.i304, %.sroa.7.0.insert.shift.i.i303 ; 5 uses
  %i.cog = load i32, ptr %i.clz, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i.i306 = trunc i32 %.sroa.01.0.insert.insert.i.i305 to i24
  %.sroa.654.0.extract.shift.i.i307 = lshr i32 %.sroa.7.0.insert.insert.i.i304, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i.i308 = lshr i32 %i.cog, 24 ; 4 uses
  %i.coh = icmp ugt i32 %.sroa.7.0.insert.insert.i.i304, -50331649
  %i.coi = icmp ult i32 %i.cog, 50331648
  %or.cond.i.i309 = select i1 %i.coh, i1 true, i1 %i.coi
  br i1 %or.cond.i.i309, label %lv_color_32_32_mix.exit.i321, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %.sroa.018.0.extract.trunc.i.i310 = trunc i32 %i.cog to i24
  %i.coj = icmp ult i32 %.sroa.7.0.insert.insert.i.i304, 50331648
  br i1 %i.coj, label %lv_color_32_32_mix.exit.i321, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.cok = icmp eq i32 %.sroa.6.0.extract.shift.i.i308, 255
  br i1 %i.cok, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.col = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i305, i32 %i.cog) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i.i335 = trunc i32 %i.col to i24
  %.sroa.5.0.extract.shift.i.i336 = lshr i32 %i.col, 24
  br label %lv_color_32_32_mix.exit.i321

bb.lt:                                            ; preds = %bb.lr
  %i.com = load i8, ptr %i.clg, align 1, !tbaa !18
  %i.con = zext i8 %i.com to i32
  %.not.i.i311 = icmp eq i32 %.sroa.6.0.extract.shift.i.i308, %i.con
  %i.coo = load i8, ptr %i.clh, align 1
  %i.cop = zext i8 %i.coo to i32
  %.not77.i.i312 = icmp eq i32 %.sroa.654.0.extract.shift.i.i307, %i.cop
  %or.cond175.i = select i1 %.not.i.i311, i1 %.not77.i.i312, i1 false
  br i1 %or.cond175.i, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.coq = xor i32 %.sroa.654.0.extract.shift.i.i307, 255
  %i.cor = xor i32 %.sroa.6.0.extract.shift.i.i308, 255
  %i.cos = mul nuw nsw i32 %i.coq, %i.cor
  %i.cot = lshr i32 %i.cos, 8
  %i.cou = trunc nuw i32 %i.cot to i8
  %i.cov = xor i8 %i.cou, -1                      ; 2 uses
  store i8 %i.cov, ptr %i.clb, align 4, !tbaa !13
  %i.cow = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i.i307 to i16
  %.lhs.trunc.i.i313 = mul nuw i16 %i.cow, 255
  %.rhs.trunc.i.i314 = zext i8 %i.cov to i16
  %i.cox = udiv i16 %.lhs.trunc.i.i313, %.rhs.trunc.i.i314
  %i.coy = trunc i16 %i.cox to i8
  store i8 %i.coy, ptr %i.clc, align 1, !tbaa !14
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %i.coz = load i32, ptr %i.ckz, align 4
  %i.cpa = call zeroext i1 @lv_color32_eq(i32 %i.cog, i32 %i.coz) #7
  br i1 %i.cpa, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.cpb = load i32, ptr %1, align 4
  %i.cpc = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i305, i32 %i.cpb) #7
  br i1 %i.cpc, label %._crit_edge.i.i332, label %bb.lx

._crit_edge.i.i332:                               ; preds = %bb.lw
  %.sroa.074.0.copyload.pre.i.i333 = load i24, ptr %i.cla, align 4
  %.sroa.5.0.copyload.pre.i.i334 = load i8, ptr %i.cli, align 1, !tbaa !19
  br label %bb.ly

bb.lx:                                            ; preds = %bb.lw, %bb.lv
  store i32 %.sroa.01.0.insert.insert.i.i305, ptr %1, align 4
  store i32 %i.cog, ptr %i.ckz, align 4
  %i.cpd = load i8, ptr %i.clc, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i.i315 = zext i8 %i.cpd to i32
  %.sroa.654.0.insert.shift64.i.i316 = shl nuw i32 %.sroa.654.0.insert.ext63.i.i315, 24
  %.sroa.045.0.insert.ext51.i.i317 = and i32 %.sroa.01.0.insert.insert.i.i305, 16777215
  %.sroa.045.0.insert.insert53.i.i318 = or disjoint i32 %.sroa.654.0.insert.shift64.i.i316, %.sroa.045.0.insert.ext51.i.i317
  %i.cpe = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i.i318, i32 %i.cog) #7 ; 2 uses
  store i32 %i.cpe, ptr %i.cla, align 4
  %i.cpf = load i8, ptr %i.clb, align 4, !tbaa !13 ; 2 uses
  store i8 %i.cpf, ptr %i.cli, align 1, !tbaa !20
  %i.cpg = trunc i32 %i.cpe to i24
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %._crit_edge.i.i332
  %.sroa.5.0.copyload.i.i319 = phi i8 [ %.sroa.5.0.copyload.pre.i.i334, %._crit_edge.i.i332 ], [ %i.cpf, %bb.lx ]
  %.sroa.074.0.copyload.i.i320 = phi i24 [ %.sroa.074.0.copyload.pre.i.i333, %._crit_edge.i.i332 ], [ %i.cpg, %bb.lx ]
  %i.cph = zext i8 %.sroa.5.0.copyload.i.i319 to i32
  br label %lv_color_32_32_mix.exit.i321

lv_color_32_32_mix.exit.i321:                     ; preds = %bb.ly, %bb.ls, %bb.lq, %bb.lp
  %.sroa.074.0.i.i322 = phi i24 [ %.sroa.074.0.copyload.i.i320, %bb.ly ], [ %.sroa.045.0.extract.trunc.i.i306, %bb.lp ], [ %.sroa.074.0.extract.trunc.i.i335, %bb.ls ], [ %.sroa.018.0.extract.trunc.i.i310, %bb.lq ]
  %.sroa.5.0.i.i323 = phi i32 [ %i.cph, %bb.ly ], [ %.sroa.654.0.extract.shift.i.i307, %bb.lp ], [ %.sroa.5.0.extract.shift.i.i336, %bb.ls ], [ %.sroa.6.0.extract.shift.i.i308, %bb.lq ]
  %.sroa.5.0.insert.shift.i.i324 = shl nuw i32 %.sroa.5.0.i.i323, 24
  %.sroa.074.0.insert.ext.i.i325 = zext i24 %.sroa.074.0.i.i322 to i32
  %.sroa.074.0.insert.insert.i.i326 = or disjoint i32 %.sroa.5.0.insert.shift.i.i324, %.sroa.074.0.insert.ext.i.i325
  store i32 %.sroa.074.0.insert.insert.i.i326, ptr %i.clz, align 1
  br label %blend_non_normal_pixel.exit.i327

blend_non_normal_pixel.exit.i327:                 ; preds = %lv_color_32_32_mix.exit.i321, %bb.lk
  %indvars.iv.next.i328 = add nuw nsw i64 %indvars.iv.i294, 1 ; 2 uses
  %exitcond.not.i329 = icmp eq i64 %indvars.iv.next.i328, %wide.trip.count.i293
  br i1 %exitcond.not.i329, label %._crit_edge.i330, label %bb.li, !llvm.loop !147

._crit_edge.i330:                                 ; preds = %blend_non_normal_pixel.exit.i327
  %i.cpi = getelementptr inbounds i8, ptr %.2153190.i, i64 %i.clj
  %.3154.i = select i1 %i.clm, ptr null, ptr %i.cpi
  %i.cpj = getelementptr inbounds nuw i8, ptr %.4192.i, i64 %i.clk
  %i.cpk = getelementptr inbounds nuw i8, ptr %.4159189.i, i64 %i.cll
  %i.cpl = add nuw nsw i32 %.4140191.i, 1         ; 2 uses
  %exitcond229.not.i331 = icmp eq i32 %i.cpl, %i.cda
  br i1 %exitcond229.not.i331, label %._crit_edge193.split.i, label %.preheader186.i, !llvm.loop !148

._crit_edge193.split.i:                           ; preds = %._crit_edge.i330, %.preheader186.lr.ph.i, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %l8_image_blend.exit

l8_image_blend.exit:                              ; preds = %._crit_edge196.i, %._crit_edge203.i, %._crit_edge210.i, %._crit_edge217.i, %._crit_edge198.i, %._crit_edge205.i, %._crit_edge212.i, %._crit_edge218.i, %._crit_edge192.i, %._crit_edge199.i, %._crit_edge206.i, %._crit_edge213.i, %._crit_edge193.split.i, %.preheader183.lr.ph.i, %bb.lc, %.preheader180.lr.ph.i, %.preheader181.i, %.preheader177.lr.ph.i, %.preheader178.i356, %.preheader.lr.ph.i366, %.preheader176.i365, %._crit_edge195.split.i, %.preheader185.lr.ph.i, %bb.jw, %.preheader182.lr.ph.i280, %.preheader183.i, %.preheader179.lr.ph.i283, %.preheader180.i, %.preheader.lr.ph.i289, %.preheader178.i, %._crit_edge189.split.i, %.preheader179.lr.ph.i, %bb.ij, %.preheader176.lr.ph.i, %.preheader177.i, %.preheader173.lr.ph.i, %.preheader174.i, %.preheader.lr.ph.i226, %.preheader172.i, %bb.a, %argb8888_image_blend.exit, %argb8888_premultiplied_image_blend.exit, %bb.cu, %bb.ct, %rgb565_swapped_image_blend.exit, %rgb565_image_blend.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_color_mix_alpha_cache_t, align 4 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24
  %.fr434 = freeze i8 %i.f                        ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.r, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.s, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  store i8 -1, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 9 uses
  store i8 -1, ptr %i.u, align 1, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %.preheader355

.preheader355:                                    ; preds = %bb.a
  %i.y = icmp sgt i32 %i.d, 0
  br i1 %i.y, label %.preheader354.lr.ph, label %.loopexit

.preheader354.lr.ph:                              ; preds = %.preheader355
  %i.z = icmp sgt i32 %i.b, 0
  %i.aa = zext i8 %.fr434 to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.ae = sext i32 %i.q to i64
  %i.af = zext i32 %i.i to i64
  %i.ag = zext i32 %i.m to i64
  br i1 %i.z, label %.preheader354.preheader, label %.loopexit

.preheader354.preheader:                          ; preds = %.preheader354.lr.ph
  %i.ah = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader354

bb.b:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %i.o, null                  ; 2 uses
  %i.aj = zext i8 %.fr434 to i32                  ; 5 uses
  %i.ak = icmp ugt i8 %.fr434, -4                 ; 2 uses
  %or.cond = and i1 %i.ai, %i.ak
  br i1 %or.cond, label %bb.c, label %.loopexit350

bb.c:                                             ; preds = %bb.b
  %i.al = icmp eq i8 %1, 4
  %i.am = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %i.al, label %bb.d, label %.preheader352

.preheader352:                                    ; preds = %bb.c
  br i1 %i.am, label %.preheader351.lr.ph, label %.loopexit

.preheader351.lr.ph:                              ; preds = %.preheader352
  %i.an = icmp sgt i32 %i.b, 0
  %i.ao = zext i32 %i.i to i64
  %i.ap = zext i32 %i.m to i64
  br i1 %i.an, label %.preheader351.us.preheader, label %.loopexit

.preheader351.us.preheader:                       ; preds = %.preheader351.lr.ph
  %wide.trip.count472 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count472, 1
  %i.aq = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count472, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod587 = trunc i32 %i.b to i1
  br label %.preheader351.us

.preheader351.us:                                 ; preds = %.preheader351.us.preheader, %._crit_edge365.us
  %.1368.us = phi i32 [ %i.bz, %._crit_edge365.us ], [ 0, %.preheader351.us.preheader ]
  %.1229367.us = phi ptr [ %i.by, %._crit_edge365.us ], [ %i.k, %.preheader351.us.preheader ] ; 4 uses
  %.1235366.us = phi ptr [ %i.bx, %._crit_edge365.us ], [ %i.g, %.preheader351.us.preheader ] ; 4 uses
  br i1 %i.aq, label %.epil.preheader, label %.preheader351.us.new

.preheader351.us.new:                             ; preds = %.preheader351.us, %.preheader351.us.new
  %indvars.iv467 = phi i64 [ %indvars.iv.next468.1, %.preheader351.us.new ], [ 0, %.preheader351.us ] ; 3 uses
  %indvars.iv465 = phi i64 [ %indvars.iv.next466.1, %.preheader351.us.new ], [ 0, %.preheader351.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader351.us.new ], [ 0, %.preheader351.us ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.1229367.us, i64 %indvars.iv465 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.1235366.us, i64 %indvars.iv467 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.at, ptr %i.av, align 1, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !33
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !19
  store i8 %i.az, ptr %i.au, align 1, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  store i8 -1, ptr %i.ba, align 1, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.1229367.us, i64 %indvars.iv465 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.1235366.us, i64 %indvars.iv467 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !33
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !19
  store i8 %i.bl, ptr %i.bg, align 1, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 7
  store i8 -1, ptr %i.bm, align 1, !tbaa !35
  %indvars.iv.next468.1 = add nuw nsw i64 %indvars.iv467, 2 ; 2 uses
  %indvars.iv.next466.1 = add nuw nsw i64 %indvars.iv465, 6 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge365.us.unr-lcssa, label %.preheader351.us.new, !llvm.loop !163

._crit_edge365.us.unr-lcssa:                      ; preds = %.preheader351.us.new
  br i1 %lcmp.mod.not, label %._crit_edge365.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge365.us.unr-lcssa, %.preheader351.us
  %indvars.iv467.epil.init = phi i64 [ 0, %.preheader351.us ], [ %indvars.iv.next468.1, %._crit_edge365.us.unr-lcssa ]
  %indvars.iv465.epil.init = phi i64 [ 0, %.preheader351.us ], [ %indvars.iv.next466.1, %._crit_edge365.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod587)
  %i.bn = getelementptr inbounds nuw i8, ptr %.1229367.us, i64 %indvars.iv465.epil.init ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !19
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.1235366.us, i64 %indvars.iv467.epil.init ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !33
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !19
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !34
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  store i8 -1, ptr %i.bw, align 1, !tbaa !35
  br label %._crit_edge365.us

._crit_edge365.us:                                ; preds = %._crit_edge365.us.unr-lcssa, %.epil.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %.1235366.us, i64 %i.ao ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1229367.us, i64 %i.ap ; 2 uses
  %i.bz = add nuw nsw i32 %.1368.us, 1            ; 2 uses
  %exitcond474.not = icmp eq i32 %i.bz, %i.d
  br i1 %exitcond474.not, label %.loopexit350, label %.preheader351.us, !llvm.loop !164

bb.d:                                             ; preds = %bb.c
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ca = shl nsw i32 %i.b, 2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = zext i32 %i.i to i64
  %i.cd = zext i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0373 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.e ]
  %.0228372 = phi ptr [ %i.k, %.lr.ph ], [ %i.cg, %bb.e ] ; 2 uses
  %.0234371 = phi ptr [ %i.g, %.lr.ph ], [ %i.cf, %bb.e ] ; 2 uses
  %i.ce = call ptr @lv_memcpy(ptr noundef %.0234371, ptr noundef %.0228372, i64 noundef %i.cb) #7 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0234371, i64 %i.cc
  %i.cg = getelementptr inbounds nuw i8, ptr %.0228372, i64 %i.cd
  %i.ch = add nuw nsw i32 %.0373, 1               ; 2 uses
  %exitcond475.not = icmp eq i32 %i.ch, %i.d
  br i1 %exitcond475.not, label %.loopexit, label %bb.e, !llvm.loop !165

.loopexit350:                                     ; preds = %._crit_edge365.us, %bb.b
  %.2236 = phi ptr [ %i.g, %bb.b ], [ %i.bx, %._crit_edge365.us ] ; 3 uses
  %.2230 = phi ptr [ %i.k, %bb.b ], [ %i.by, %._crit_edge365.us ] ; 3 uses
  %i.ci = icmp ult i8 %.fr434, -3                 ; 2 uses
  %or.cond5 = and i1 %i.ai, %i.ci
  %i.cj = icmp sgt i32 %i.d, 0                    ; 3 uses
  %or.cond431 = select i1 %or.cond5, i1 %i.cj, i1 false
  br i1 %or.cond431, label %.preheader347.lr.ph, label %.loopexit349

.preheader347.lr.ph:                              ; preds = %.loopexit350
  %i.ck = icmp sgt i32 %i.b, 0
  %.sroa.14.0.insert.shift = shl nuw i32 %i.aj, 24
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cn = xor i32 %i.aj, 255
  %i.co = zext i8 %.fr434 to i16
  %.lhs.trunc.i = mul nuw i16 %i.co, 255
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.cq = zext i32 %i.i to i64                    ; 2 uses
  %i.cr = zext i32 %i.m to i64                    ; 2 uses
  br i1 %i.ck, label %.preheader347.lr.ph.split.us, label %.loopexit

.preheader347.lr.ph.split.us:                     ; preds = %.preheader347.lr.ph
  %i.cs = icmp ult i8 %.fr434, 3
  %i.ct = zext nneg i8 %1 to i64                  ; 2 uses
  %wide.trip.count495 = zext nneg i32 %i.b to i64 ; 2 uses
  br i1 %i.cs, label %.preheader347.us.us, label %.preheader347.us

.preheader347.us.us:                              ; preds = %.preheader347.lr.ph.split.us, %._crit_edge380.split.us.us.us
  %.2385.us.us = phi i32 [ %i.df, %._crit_edge380.split.us.us.us ], [ 0, %.preheader347.lr.ph.split.us ]
  %.3231383.us.us = phi ptr [ %i.de, %._crit_edge380.split.us.us.us ], [ %.2230, %.preheader347.lr.ph.split.us ] ; 2 uses
  %.3237381.us.us = phi ptr [ %i.dd, %._crit_edge380.split.us.us.us ], [ %.2236, %.preheader347.lr.ph.split.us ] ; 2 uses
  br label %lv_color_32_32_mix.exit.us.us.us

lv_color_32_32_mix.exit.us.us.us:                 ; preds = %lv_color_32_32_mix.exit.us.us.us, %.preheader347.us.us
  %indvars.iv490 = phi i64 [ %indvars.iv.next491, %lv_color_32_32_mix.exit.us.us.us ], [ 0, %.preheader347.us.us ] ; 2 uses
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %lv_color_32_32_mix.exit.us.us.us ], [ 0, %.preheader347.us.us ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.3231383.us.us, i64 %indvars.iv488 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !19
  %i.cx = load i16, ptr %i.cu, align 1
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.3237381.us.us, i64 %indvars.iv490 ; 2 uses
  %.sroa.11.0.insert.ext.us.us.us = zext i8 %i.cw to i32
  %.sroa.11.0.insert.shift.us.us.us = shl nuw nsw i32 %.sroa.11.0.insert.ext.us.us.us, 16
  %i.da = or disjoint i32 %.sroa.11.0.insert.shift.us.us.us, %i.cy
  %i.db = load i32, ptr %i.cz, align 1            ; 3 uses
  %.sroa.6.0.extract.shift.i.us.us.us = lshr i32 %i.db, 24
  %i.dc = icmp ult i32 %i.db, 50331648            ; 2 uses
  %spec.select.v = select i1 %i.dc, i32 %i.da, i32 %i.db
  %spec.select430 = select i1 %i.dc, i32 %i.aj, i32 %.sroa.6.0.extract.shift.i.us.us.us
  %.sroa.5.0.insert.shift.i.us.us.us = shl nuw i32 %spec.select430, 24
  %.sroa.074.0.insert.ext.i.us.us.us = and i32 %spec.select.v, 16777215
  %.sroa.074.0.insert.insert.i.us.us.us = or disjoint i32 %.sroa.5.0.insert.shift.i.us.us.us, %.sroa.074.0.insert.ext.i.us.us.us
  store i32 %.sroa.074.0.insert.insert.i.us.us.us, ptr %i.cz, align 1
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, %i.ct
  %exitcond496.not = icmp eq i64 %indvars.iv.next491, %wide.trip.count495
  br i1 %exitcond496.not, label %._crit_edge380.split.us.us.us, label %lv_color_32_32_mix.exit.us.us.us, !llvm.loop !166

._crit_edge380.split.us.us.us:                    ; preds = %lv_color_32_32_mix.exit.us.us.us
  %i.dd = getelementptr inbounds nuw i8, ptr %.3237381.us.us, i64 %i.cq ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.3231383.us.us, i64 %i.cr ; 2 uses
  %i.df = add nuw nsw i32 %.2385.us.us, 1         ; 2 uses
  %exitcond497.not = icmp eq i32 %i.df, %i.d
  br i1 %exitcond497.not, label %.loopexit349, label %.preheader347.us.us, !llvm.loop !167

.preheader347.us:                                 ; preds = %.preheader347.lr.ph.split.us, %._crit_edge380.split.us403
  %.2385.us = phi i32 [ %i.em, %._crit_edge380.split.us403 ], [ 0, %.preheader347.lr.ph.split.us ]
  %.3231383.us = phi ptr [ %i.el, %._crit_edge380.split.us403 ], [ %.2230, %.preheader347.lr.ph.split.us ] ; 2 uses
  %.3237381.us = phi ptr [ %i.ek, %._crit_edge380.split.us403 ], [ %.2236, %.preheader347.lr.ph.split.us ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %lv_color_32_32_mix.exit.us397, %.preheader347.us
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %lv_color_32_32_mix.exit.us397 ], [ 0, %.preheader347.us ] ; 2 uses
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %lv_color_32_32_mix.exit.us397 ], [ 0, %.preheader347.us ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.3231383.us, i64 %indvars.iv478 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !19
  %i.dj = load i16, ptr %i.dg, align 1
  %i.dk = zext i16 %i.dj to i32
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.3237381.us, i64 %indvars.iv480 ; 2 uses
  %.sroa.11.0.insert.ext.us391 = zext i8 %i.di to i32
  %.sroa.11.0.insert.shift.us392 = shl nuw nsw i32 %.sroa.11.0.insert.ext.us391, 16
  %i.dm = or disjoint i32 %.sroa.11.0.insert.shift.us392, %i.dk ; 3 uses
  %.sroa.071.0.insert.insert.us394 = or disjoint i32 %i.dm, %.sroa.14.0.insert.shift ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 1            ; 6 uses
  %.sroa.045.0.extract.trunc.i.us395 = trunc nuw i32 %i.dm to i24
  %.sroa.6.0.extract.shift.i.us396 = lshr i32 %i.dn, 24 ; 3 uses
  %i.do = icmp ult i32 %i.dn, 50331648
  br i1 %i.do, label %lv_color_32_32_mix.exit.us397, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dp = icmp eq i32 %.sroa.6.0.extract.shift.i.us396, 255
  br i1 %i.dp, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dq = load i8, ptr %i.cl, align 1, !tbaa !18
  %i.dr = zext i8 %i.dq to i32
  %.not.i.us = icmp eq i32 %.sroa.6.0.extract.shift.i.us396, %i.dr
  %i.ds = load i8, ptr %i.cm, align 1
  %.not77.i.us = icmp eq i8 %.fr434, %i.ds
  %or.cond333.us = select i1 %.not.i.us, i1 %.not77.i.us, i1 false
  br i1 %or.cond333.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = xor i32 %.sroa.6.0.extract.shift.i.us396, 255
  %i.du = mul nuw nsw i32 %i.dt, %i.cn
  %i.dv = lshr i32 %i.du, 8
  %i.dw = trunc nuw i32 %i.dv to i8
  %i.dx = xor i8 %i.dw, -1                        ; 2 uses
  store i8 %i.dx, ptr %i.t, align 4, !tbaa !13
  %.rhs.trunc.i.us = zext i8 %i.dx to i16
  %i.dy = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i.us
  %i.dz = trunc i16 %i.dy to i8
  store i8 %i.dz, ptr %i.u, align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ea = load i32, ptr %i.r, align 4
  %i.eb = call zeroext i1 @lv_color32_eq(i32 %i.dn, i32 %i.ea) #7
  br i1 %i.eb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ec = load i32, ptr %2, align 4
  %i.ed = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert.us394, i32 %i.ec) #7
  br i1 %i.ed, label %._crit_edge.i.us, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %.sroa.071.0.insert.insert.us394, ptr %2, align 4
  store i32 %i.dn, ptr %i.r, align 4
  %i.ee = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i.us = zext i8 %i.ee to i32
  %.sroa.654.0.insert.shift64.i.us = shl nuw i32 %.sroa.654.0.insert.ext63.i.us, 24
  %.sroa.045.0.insert.insert53.i.us = or disjoint i32 %.sroa.654.0.insert.shift64.i.us, %i.dm
  %i.ef = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i.us, i32 %i.dn) #7 ; 2 uses
  store i32 %i.ef, ptr %i.s, align 4
  %i.eg = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.eg, ptr %i.cp, align 1, !tbaa !20
  %i.eh = trunc i32 %i.ef to i24
  br label %bb.m

._crit_edge.i.us:                                 ; preds = %bb.k
  %.sroa.074.0.copyload.pre.i.us = load i24, ptr %i.s, align 4
  %.sroa.5.0.copyload.pre.i.us = load i8, ptr %i.cp, align 1, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.us, %bb.l
  %.sroa.5.0.copyload.i.us = phi i8 [ %.sroa.5.0.copyload.pre.i.us, %._crit_edge.i.us ], [ %i.eg, %bb.l ]
  %.sroa.074.0.copyload.i.us = phi i24 [ %.sroa.074.0.copyload.pre.i.us, %._crit_edge.i.us ], [ %i.eh, %bb.l ]
  %i.ei = zext i8 %.sroa.5.0.copyload.i.us to i32
  br label %lv_color_32_32_mix.exit.us397

bb.n:                                             ; preds = %bb.g
  %i.ej = call i32 @lv_color_mix32(i32 %.sroa.071.0.insert.insert.us394, i32 %i.dn) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i.us = trunc i32 %i.ej to i24
  %.sroa.5.0.extract.shift.i.us = lshr i32 %i.ej, 24
  br label %lv_color_32_32_mix.exit.us397

lv_color_32_32_mix.exit.us397:                    ; preds = %bb.n, %bb.m, %bb.f
  %.sroa.074.0.i.us398 = phi i24 [ %.sroa.074.0.copyload.i.us, %bb.m ], [ %.sroa.045.0.extract.trunc.i.us395, %bb.f ], [ %.sroa.074.0.extract.trunc.i.us, %bb.n ]
  %.sroa.5.0.i.us399 = phi i32 [ %i.ei, %bb.m ], [ %i.aj, %bb.f ], [ %.sroa.5.0.extract.shift.i.us, %bb.n ]
  %.sroa.5.0.insert.shift.i.us400 = shl nuw i32 %.sroa.5.0.i.us399, 24
  %.sroa.074.0.insert.ext.i.us401 = zext i24 %.sroa.074.0.i.us398 to i32
  %.sroa.074.0.insert.insert.i.us402 = or disjoint i32 %.sroa.5.0.insert.shift.i.us400, %.sroa.074.0.insert.ext.i.us401
  store i32 %.sroa.074.0.insert.insert.i.us402, ptr %i.dl, align 1
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, %i.ct
  %exitcond486.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count495
  br i1 %exitcond486.not, label %._crit_edge380.split.us403, label %bb.f, !llvm.loop !166

._crit_edge380.split.us403:                       ; preds = %lv_color_32_32_mix.exit.us397
  %i.ek = getelementptr inbounds nuw i8, ptr %.3237381.us, i64 %i.cq ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.3231383.us, i64 %i.cr ; 2 uses
  %i.em = add nuw nsw i32 %.2385.us, 1            ; 2 uses
  %exitcond487.not = icmp eq i32 %i.em, %i.d
  br i1 %exitcond487.not, label %.loopexit349, label %.preheader347.us, !llvm.loop !167

.loopexit349:                                     ; preds = %._crit_edge380.split.us403, %._crit_edge380.split.us.us.us, %.loopexit350
  %.4238 = phi ptr [ %.2236, %.loopexit350 ], [ %i.dd, %._crit_edge380.split.us.us.us ], [ %i.ek, %._crit_edge380.split.us403 ] ; 3 uses
  %.4232 = phi ptr [ %.2230, %.loopexit350 ], [ %i.de, %._crit_edge380.split.us.us.us ], [ %i.el, %._crit_edge380.split.us403 ] ; 3 uses
  %i.en = icmp ne ptr %i.o, null
  %or.cond8 = and i1 %i.en, %i.ak
  %or.cond432 = select i1 %or.cond8, i1 %i.cj, i1 false
  br i1 %or.cond432, label %.preheader344.lr.ph, label %.loopexit346

.preheader344.lr.ph:                              ; preds = %.loopexit349
  %i.eo = icmp sgt i32 %i.b, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.es = zext i32 %i.i to i64                    ; 2 uses
  %i.et = zext i32 %i.m to i64                    ; 2 uses
  %i.eu = sext i32 %i.q to i64                    ; 2 uses
  br i1 %i.eo, label %.preheader344.us.preheader, label %.preheader344.preheader

.preheader344.preheader:                          ; preds = %.preheader344.lr.ph
  %i.ev = zext nneg i32 %i.d to i64               ; 3 uses
  %i.ew = mul nuw nsw i64 %i.ev, %i.es
  %scevgep498 = getelementptr i8, ptr %.4238, i64 %i.ew
  %i.ex = mul nuw nsw i64 %i.ev, %i.et
  %scevgep499 = getelementptr i8, ptr %.4232, i64 %i.ex
  %i.ey = mul nsw i64 %i.ev, %i.eu
  %scevgep500 = getelementptr i8, ptr %i.o, i64 %i.ey
  br label %.loopexit346

.preheader344.us.preheader:                       ; preds = %.preheader344.lr.ph
  %i.ez = zext nneg i8 %1 to i64
  %wide.trip.count508 = zext nneg i32 %i.b to i64
  br label %.preheader344.us

.preheader344.us:                                 ; preds = %.preheader344.us.preheader, %._crit_edge411.us
  %.3415.us = phi i32 [ %i.gm, %._crit_edge411.us ], [ 0, %.preheader344.us.preheader ]
  %.0223414.us = phi ptr [ %i.gl, %._crit_edge411.us ], [ %i.o, %.preheader344.us.preheader ] ; 2 uses
  %.5233413.us = phi ptr [ %i.gk, %._crit_edge411.us ], [ %.4232, %.preheader344.us.preheader ] ; 2 uses
  %.5239412.us = phi ptr [ %i.gj, %._crit_edge411.us ], [ %.4238, %.preheader344.us.preheader ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader344.us, %lv_color_32_32_mix.exit274.us
  %indvars.iv503 = phi i64 [ 0, %.preheader344.us ], [ %indvars.iv.next504, %lv_color_32_32_mix.exit274.us ] ; 3 uses
  %indvars.iv501 = phi i64 [ 0, %.preheader344.us ], [ %indvars.iv.next502, %lv_color_32_32_mix.exit274.us ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0223414.us, i64 %indvars.iv503
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !19  ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.5233413.us, i64 %indvars.iv501 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !19
  %i.ff = load i16, ptr %i.fc, align 1
  %i.fg = zext i16 %i.ff to i32
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.5239412.us, i64 %indvars.iv503 ; 2 uses
  %.sroa.14.0.insert.ext101.us = zext i8 %i.fb to i32 ; 3 uses
  %.sroa.14.0.insert.shift102.us = shl nuw i32 %.sroa.14.0.insert.ext101.us, 24
  %.sroa.11.0.insert.ext91.us = zext i8 %i.fe to i32
  %.sroa.11.0.insert.shift92.us = shl nuw nsw i32 %.sroa.11.0.insert.ext91.us, 16
  %.sroa.11.0.insert.insert94.us = or disjoint i32 %.sroa.11.0.insert.shift92.us, %.sroa.14.0.insert.shift102.us
  %.sroa.071.0.insert.insert75.us = or disjoint i32 %.sroa.11.0.insert.insert94.us, %i.fg ; 5 uses
  %i.fi = load i32, ptr %i.fh, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i247.us = trunc i32 %.sroa.071.0.insert.insert75.us to i24
  %.sroa.6.0.extract.shift.i249.us = lshr i32 %i.fi, 24 ; 4 uses
  %i.fj = icmp ugt i8 %i.fb, -4
  %i.fk = icmp ult i32 %i.fi, 50331648
  %or.cond.i250.us = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond.i250.us, label %lv_color_32_32_mix.exit274.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.018.0.extract.trunc.i251.us = trunc i32 %i.fi to i24
  %i.fl = icmp ult i8 %i.fb, 3
  br i1 %i.fl, label %lv_color_32_32_mix.exit274.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = icmp eq i32 %.sroa.6.0.extract.shift.i249.us, 255
  br i1 %i.fm, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fn = load i8, ptr %i.ep, align 1, !tbaa !18
  %i.fo = zext i8 %i.fn to i32
  %.not.i252.us = icmp eq i32 %.sroa.6.0.extract.shift.i249.us, %i.fo
  %i.fp = load i8, ptr %i.eq, align 1
  %.not77.i271.us = icmp eq i8 %i.fb, %i.fp
  %or.cond336.us = select i1 %.not.i252.us, i1 %.not77.i271.us, i1 false
  br i1 %or.cond336.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = xor i32 %.sroa.14.0.insert.ext101.us, 255
  %i.fr = xor i32 %.sroa.6.0.extract.shift.i249.us, 255
  %i.fs = mul nuw nsw i32 %i.fr, %i.fq
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = trunc nuw i32 %i.ft to i8
  %i.fv = xor i8 %i.fu, -1                        ; 2 uses
  store i8 %i.fv, ptr %i.t, align 4, !tbaa !13
  %i.fw = zext i8 %i.fb to i16
  %.lhs.trunc.i253.us = mul nuw i16 %i.fw, 255
  %.rhs.trunc.i254.us = zext i8 %i.fv to i16
  %i.fx = udiv i16 %.lhs.trunc.i253.us, %.rhs.trunc.i254.us
  %i.fy = trunc i16 %i.fx to i8
  store i8 %i.fy, ptr %i.u, align 1, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fz = load i32, ptr %i.r, align 4
  %i.ga = call zeroext i1 @lv_color32_eq(i32 %i.fi, i32 %i.fz) #7
  br i1 %i.ga, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gb = load i32, ptr %2, align 4
  %i.gc = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert75.us, i32 %i.gb) #7
  br i1 %i.gc, label %._crit_edge.i266.us, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 %.sroa.071.0.insert.insert75.us, ptr %2, align 4
  store i32 %i.fi, ptr %i.r, align 4
  %i.gd = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i255.us = zext i8 %i.gd to i32
  %.sroa.654.0.insert.shift64.i256.us = shl nuw i32 %.sroa.654.0.insert.ext63.i255.us, 24
  %.sroa.045.0.insert.ext51.i257.us = and i32 %.sroa.071.0.insert.insert75.us, 16777215
  %.sroa.045.0.insert.insert53.i258.us = or disjoint i32 %.sroa.654.0.insert.shift64.i256.us, %.sroa.045.0.insert.ext51.i257.us
  %i.ge = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i258.us, i32 %i.fi) #7 ; 2 uses
  store i32 %i.ge, ptr %i.s, align 4
  %i.gf = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.gf, ptr %i.er, align 1, !tbaa !20
  %i.gg = trunc i32 %i.ge to i24
  br label %bb.w

._crit_edge.i266.us:                              ; preds = %bb.u
  %.sroa.074.0.copyload.pre.i268.us = load i24, ptr %i.s, align 4
  %.sroa.5.0.copyload.pre.i270.us = load i8, ptr %i.er, align 1, !tbaa !19
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i266.us, %bb.v
  %.sroa.5.0.copyload.i259.us = phi i8 [ %.sroa.5.0.copyload.pre.i270.us, %._crit_edge.i266.us ], [ %i.gf, %bb.v ]
  %.sroa.074.0.copyload.i260.us = phi i24 [ %.sroa.074.0.copyload.pre.i268.us, %._crit_edge.i266.us ], [ %i.gg, %bb.v ]
  %i.gh = zext i8 %.sroa.5.0.copyload.i259.us to i32
  br label %lv_color_32_32_mix.exit274.us

bb.x:                                             ; preds = %bb.q
  %i.gi = call i32 @lv_color_mix32(i32 %.sroa.071.0.insert.insert75.us, i32 %i.fi) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i272.us = trunc i32 %i.gi to i24
  %.sroa.5.0.extract.shift.i273.us = lshr i32 %i.gi, 24
  br label %lv_color_32_32_mix.exit274.us

lv_color_32_32_mix.exit274.us:                    ; preds = %bb.x, %bb.w, %bb.p, %bb.o
  %.sroa.074.0.i261.us = phi i24 [ %.sroa.074.0.copyload.i260.us, %bb.w ], [ %.sroa.045.0.extract.trunc.i247.us, %bb.o ], [ %.sroa.074.0.extract.trunc.i272.us, %bb.x ], [ %.sroa.018.0.extract.trunc.i251.us, %bb.p ]
  %.sroa.5.0.i262.us = phi i32 [ %i.gh, %bb.w ], [ %.sroa.14.0.insert.ext101.us, %bb.o ], [ %.sroa.5.0.extract.shift.i273.us, %bb.x ], [ %.sroa.6.0.extract.shift.i249.us, %bb.p ]
  %.sroa.5.0.insert.shift.i263.us = shl nuw i32 %.sroa.5.0.i262.us, 24
  %.sroa.074.0.insert.ext.i264.us = zext i24 %.sroa.074.0.i261.us to i32
  %.sroa.074.0.insert.insert.i265.us = or disjoint i32 %.sroa.5.0.insert.shift.i263.us, %.sroa.074.0.insert.ext.i264.us
  store i32 %.sroa.074.0.insert.insert.i265.us, ptr %i.fh, align 1
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, %i.ez
  %exitcond509.not = icmp eq i64 %indvars.iv.next504, %wide.trip.count508
  br i1 %exitcond509.not, label %._crit_edge411.us, label %bb.o, !llvm.loop !168

._crit_edge411.us:                                ; preds = %lv_color_32_32_mix.exit274.us
  %i.gj = getelementptr inbounds nuw i8, ptr %.5239412.us, i64 %i.es ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.5233413.us, i64 %i.et ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.0223414.us, i64 %i.eu ; 2 uses
  %i.gm = add nuw nsw i32 %.3415.us, 1            ; 2 uses
  %exitcond510.not = icmp eq i32 %i.gm, %i.d
  br i1 %exitcond510.not, label %.loopexit346, label %.preheader344.us, !llvm.loop !169

.loopexit346:                                     ; preds = %._crit_edge411.us, %.preheader344.preheader, %.loopexit349
  %.6240 = phi ptr [ %.4238, %.loopexit349 ], [ %scevgep498, %.preheader344.preheader ], [ %i.gj, %._crit_edge411.us ]
  %.6 = phi ptr [ %.4232, %.loopexit349 ], [ %scevgep499, %.preheader344.preheader ], [ %i.gk, %._crit_edge411.us ]
  %.1224 = phi ptr [ %i.o, %.loopexit349 ], [ %scevgep500, %.preheader344.preheader ], [ %i.gl, %._crit_edge411.us ] ; 2 uses
  %i.gn = icmp ne ptr %.1224, null
  %or.cond11 = and i1 %i.gn, %i.ci
  %or.cond433 = select i1 %or.cond11, i1 %i.cj, i1 false
  br i1 %or.cond433, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.loopexit346
  %i.go = icmp sgt i32 %i.b, 0
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.gs = zext i32 %i.i to i64
  %i.gt = zext i32 %i.m to i64
  %i.gu = sext i32 %i.q to i64
  br i1 %i.go, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.gv = zext nneg i8 %1 to i64
  %wide.trip.count518 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge425
  %.4429 = phi i32 [ %i.in, %._crit_edge425 ], [ 0, %.preheader.preheader ]
  %.2225428 = phi ptr [ %i.im, %._crit_edge425 ], [ %.1224, %.preheader.preheader ] ; 2 uses
  %.7427 = phi ptr [ %i.il, %._crit_edge425 ], [ %.6, %.preheader.preheader ] ; 2 uses
  %.7241426 = phi ptr [ %i.ik, %._crit_edge425 ], [ %.6240, %.preheader.preheader ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %lv_color_32_32_mix.exit302
  %indvars.iv513 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next514, %lv_color_32_32_mix.exit302 ] ; 3 uses
  %indvars.iv511 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next512, %lv_color_32_32_mix.exit302 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.2225428, i64 %indvars.iv513
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !19
  %i.gy = zext i8 %i.gx to i32
  %i.gz = mul nuw nsw i32 %i.gy, %i.aj            ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.7427, i64 %indvars.iv511 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !19
  %i.hd = load i16, ptr %i.ha, align 1
  %i.he = zext i16 %i.hd to i32
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.7241426, i64 %indvars.iv513 ; 2 uses
  %.sroa.11.0.insert.ext96 = zext i8 %i.hc to i32
  %i.hg = and i32 %i.gz, 65280
  %i.hh = or disjoint i32 %i.hg, %.sroa.11.0.insert.ext96
  %.sroa.11.0.insert.insert99 = shl nuw i32 %i.hh, 16
  %.sroa.071.0.insert.insert79 = or disjoint i32 %.sroa.11.0.insert.insert99, %i.he ; 5 uses
  %i.hi = load i32, ptr %i.hf, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i275 = trunc i32 %.sroa.071.0.insert.insert79 to i24
  %.sroa.654.0.extract.shift.i276 = lshr i32 %i.gz, 8 ; 4 uses
  %.sroa.6.0.extract.shift.i277 = lshr i32 %i.hi, 24 ; 4 uses
  %i.hj = icmp samesign ugt i32 %i.gz, 64767
  %i.hk = icmp ult i32 %i.hi, 50331648
  %or.cond.i278 = select i1 %i.hj, i1 true, i1 %i.hk
  br i1 %or.cond.i278, label %lv_color_32_32_mix.exit302, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.018.0.extract.trunc.i279 = trunc i32 %i.hi to i24
  %i.hl = icmp samesign ult i32 %i.gz, 768
  br i1 %i.hl, label %lv_color_32_32_mix.exit302, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hm = icmp eq i32 %.sroa.6.0.extract.shift.i277, 255
  br i1 %i.hm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hn = call i32 @lv_color_mix32(i32 %.sroa.071.0.insert.insert79, i32 %i.hi) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i300 = trunc i32 %i.hn to i24
  %.sroa.5.0.extract.shift.i301 = lshr i32 %i.hn, 24
  br label %lv_color_32_32_mix.exit302

bb.ac:                                            ; preds = %bb.aa
  %i.ho = load i8, ptr %i.gp, align 1, !tbaa !18
  %i.hp = zext i8 %i.ho to i32
  %.not.i280 = icmp eq i32 %.sroa.6.0.extract.shift.i277, %i.hp
  %i.hq = load i8, ptr %i.gq, align 1
  %i.hr = zext i8 %i.hq to i32
  %.not77.i299 = icmp eq i32 %.sroa.654.0.extract.shift.i276, %i.hr
  %or.cond339 = select i1 %.not.i280, i1 %.not77.i299, i1 false
  br i1 %or.cond339, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hs = xor i32 %.sroa.654.0.extract.shift.i276, 255
  %i.ht = xor i32 %.sroa.6.0.extract.shift.i277, 255
  %i.hu = mul nuw nsw i32 %i.ht, %i.hs
  %i.hv = lshr i32 %i.hu, 8
  %i.hw = trunc nuw i32 %i.hv to i8
  %i.hx = xor i8 %i.hw, -1                        ; 2 uses
  store i8 %i.hx, ptr %i.t, align 4, !tbaa !13
  %i.hy = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i276 to i16
  %.lhs.trunc.i281 = mul nuw i16 %i.hy, 255
  %.rhs.trunc.i282 = zext i8 %i.hx to i16
  %i.hz = udiv i16 %.lhs.trunc.i281, %.rhs.trunc.i282
  %i.ia = trunc i16 %i.hz to i8
  store i8 %i.ia, ptr %i.u, align 1, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ib = load i32, ptr %i.r, align 4
  %i.ic = call zeroext i1 @lv_color32_eq(i32 %i.hi, i32 %i.ib) #7
  br i1 %i.ic, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.id = load i32, ptr %2, align 4
  %i.ie = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert79, i32 %i.id) #7
  br i1 %i.ie, label %._crit_edge.i294, label %bb.ag

._crit_edge.i294:                                 ; preds = %bb.af
  %.sroa.074.0.copyload.pre.i296 = load i24, ptr %i.s, align 4
  %.sroa.5.0.copyload.pre.i298 = load i8, ptr %i.gr, align 1, !tbaa !19
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 %.sroa.071.0.insert.insert79, ptr %2, align 4
  store i32 %i.hi, ptr %i.r, align 4
  %i.if = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i283 = zext i8 %i.if to i32
  %.sroa.654.0.insert.shift64.i284 = shl nuw i32 %.sroa.654.0.insert.ext63.i283, 24
  %.sroa.045.0.insert.ext51.i285 = and i32 %.sroa.071.0.insert.insert79, 16777215
  %.sroa.045.0.insert.insert53.i286 = or disjoint i32 %.sroa.654.0.insert.shift64.i284, %.sroa.045.0.insert.ext51.i285
  %i.ig = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i286, i32 %i.hi) #7 ; 2 uses
  store i32 %i.ig, ptr %i.s, align 4
  %i.ih = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.ih, ptr %i.gr, align 1, !tbaa !20
  %i.ii = trunc i32 %i.ig to i24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i294
  %.sroa.5.0.copyload.i287 = phi i8 [ %.sroa.5.0.copyload.pre.i298, %._crit_edge.i294 ], [ %i.ih, %bb.ag ]
  %.sroa.074.0.copyload.i288 = phi i24 [ %.sroa.074.0.copyload.pre.i296, %._crit_edge.i294 ], [ %i.ii, %bb.ag ]
  %i.ij = zext i8 %.sroa.5.0.copyload.i287 to i32
  br label %lv_color_32_32_mix.exit302

lv_color_32_32_mix.exit302:                       ; preds = %bb.y, %bb.z, %bb.ab, %bb.ah
  %.sroa.074.0.i289 = phi i24 [ %.sroa.074.0.copyload.i288, %bb.ah ], [ %.sroa.045.0.extract.trunc.i275, %bb.y ], [ %.sroa.074.0.extract.trunc.i300, %bb.ab ], [ %.sroa.018.0.extract.trunc.i279, %bb.z ]
  %.sroa.5.0.i290 = phi i32 [ %i.ij, %bb.ah ], [ %.sroa.654.0.extract.shift.i276, %bb.y ], [ %.sroa.5.0.extract.shift.i301, %bb.ab ], [ %.sroa.6.0.extract.shift.i277, %bb.z ]
  %.sroa.5.0.insert.shift.i291 = shl nuw i32 %.sroa.5.0.i290, 24
  %.sroa.074.0.insert.ext.i292 = zext i24 %.sroa.074.0.i289 to i32
  %.sroa.074.0.insert.insert.i293 = or disjoint i32 %.sroa.5.0.insert.shift.i291, %.sroa.074.0.insert.ext.i292
  store i32 %.sroa.074.0.insert.insert.i293, ptr %i.hf, align 1
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, %i.gv
  %exitcond519.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count518
  br i1 %exitcond519.not, label %._crit_edge425, label %bb.y, !llvm.loop !170

._crit_edge425:                                   ; preds = %lv_color_32_32_mix.exit302
  %i.ik = getelementptr inbounds nuw i8, ptr %.7241426, i64 %i.gs
  %i.il = getelementptr inbounds nuw i8, ptr %.7427, i64 %i.gt
  %i.im = getelementptr inbounds i8, ptr %.2225428, i64 %i.gu
  %i.in = add nuw nsw i32 %.4429, 1               ; 2 uses
  %exitcond520.not = icmp eq i32 %i.in, %i.d
  br i1 %exitcond520.not, label %.loopexit, label %.preheader, !llvm.loop !171

.preheader354:                                    ; preds = %.preheader354.preheader, %._crit_edge
  %.5362 = phi i32 [ %i.mk, %._crit_edge ], [ 0, %.preheader354.preheader ]
  %.3226361 = phi ptr [ %.4227, %._crit_edge ], [ %i.o, %.preheader354.preheader ] ; 3 uses
  %.8360 = phi ptr [ %i.mj, %._crit_edge ], [ %i.k, %.preheader354.preheader ] ; 2 uses
  %.8242359 = phi ptr [ %i.mi, %._crit_edge ], [ %i.g, %.preheader354.preheader ] ; 2 uses
  %i.io = icmp eq ptr %.3226361, null             ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader354, %blend_non_normal_pixel.exit
  %indvars.iv458 = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next459, %blend_non_normal_pixel.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.8360, i64 %indvars.iv ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !19
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !19
  %i.iu = load i8, ptr %i.ip, align 1, !tbaa !19
  br i1 %i.io, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iv = getelementptr inbounds nuw i8, ptr %.3226361, i64 %indvars.iv458
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !19
  %i.ix = zext i8 %i.iw to i16
  %i.iy = mul nuw i16 %i.ix, %i.aa
  %i.iz = lshr i16 %i.iy, 8
  %i.ja = trunc nuw i16 %i.iz to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.6.0 = phi i8 [ %i.ja, %bb.aj ], [ %.fr434, %bb.ai ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.8242359, i64 %indvars.iv458 ; 14 uses
  %i.jc = load i32, ptr %i.v, align 4, !tbaa !31
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.ir to i32    ; 4 uses
  %.sroa.4.0.insert.ext = zext i8 %i.it to i32    ; 4 uses
  %.sroa.0.0.insert.ext = zext i8 %i.iu to i32    ; 4 uses
  switch i32 %i.jc, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !32
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nuw nsw i32 %i.jf, %.sroa.5.0.insert.ext
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.jg, i32 255)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !33
  %i.jj = zext i8 %i.ji to i32
  %i.jk = add nuw nsw i32 %i.jj, %.sroa.4.0.insert.ext
  %i.jl = call i32 @llvm.umin.i32(i32 %i.jk, i32 255)
  %i.jm = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.jn = zext i8 %i.jm to i32
  %i.jo = add nuw nsw i32 %i.jn, %.sroa.0.0.insert.ext
  %i.jp = call i32 @llvm.umin.i32(i32 %i.jo, i32 255)
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !32
  %i.js = zext i8 %i.jr to i32
  %i.jt = sub nsw i32 %i.js, %.sroa.5.0.insert.ext
  %spec.select60.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !33
  %i.jw = zext i8 %i.jv to i32
  %i.jx = sub nsw i32 %i.jw, %.sroa.4.0.insert.ext
  %i.jy = call i32 @llvm.smax.i32(i32 %i.jx, i32 0)
  %i.jz = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.ka = zext i8 %i.jz to i32
  %i.kb = sub nsw i32 %i.ka, %.sroa.0.0.insert.ext
  %i.kc = call i32 @llvm.smax.i32(i32 %i.kb, i32 0)
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !32
  %i.kf = zext i8 %i.ke to i32
  %i.kg = mul nuw nsw i32 %i.kf, %.sroa.5.0.insert.ext
  %i.kh = lshr i32 %i.kg, 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !33
  %i.kk = zext i8 %i.kj to i32
  %i.kl = mul nuw nsw i32 %i.kk, %.sroa.4.0.insert.ext
  %i.km = lshr i32 %i.kl, 8
  %i.kn = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.ko = zext i8 %i.kn to i32
  %i.kp = mul nuw nsw i32 %i.ko, %.sroa.0.0.insert.ext
  %i.kq = lshr i32 %i.kp, 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !32
  %i.kt = zext i8 %i.ks to i32
  %i.ku = sub nsw i32 %i.kt, %.sroa.5.0.insert.ext
  %i.kv = call i32 @llvm.abs.i32(i32 %i.ku, i1 true)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !33
  %i.ky = zext i8 %i.kx to i32
  %i.kz = sub nsw i32 %i.ky, %.sroa.4.0.insert.ext
  %i.la = call i32 @llvm.abs.i32(i32 %i.kz, i1 true)
  %i.lb = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.lc = zext i8 %i.lb to i32
  %i.ld = sub nsw i32 %i.lc, %.sroa.0.0.insert.ext
  %i.le = call i32 @llvm.abs.i32(i32 %i.ld, i1 true)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %.sroa.11.0.i = phi i32 [ %spec.select.i, %bb.al ], [ %spec.select60.i, %bb.am ], [ %i.kh, %bb.an ], [ %i.kv, %bb.ao ]
  %.sroa.7.0.i = phi i32 [ %i.jl, %bb.al ], [ %i.jy, %bb.am ], [ %i.km, %bb.an ], [ %i.la, %bb.ao ]
  %.sroa.01.0.i = phi i32 [ %i.jp, %bb.al ], [ %i.kc, %bb.am ], [ %i.kq, %bb.an ], [ %i.le, %bb.ao ]
  %.sroa.11.0.insert.ext.i = shl nuw nsw i32 %.sroa.11.0.i, 16
  %.sroa.11.0.insert.shift.i = and i32 %.sroa.11.0.insert.ext.i, 16711680
  %.sroa.11.0.insert.insert.i = or disjoint i32 %.sroa.11.0.insert.shift.i, %.sroa.6.0.insert.shift
  %.sroa.7.0.insert.ext.i = shl nuw nsw i32 %.sroa.7.0.i, 8
  %.sroa.7.0.insert.shift.i = and i32 %.sroa.7.0.insert.ext.i, 65280
  %.sroa.7.0.insert.insert.i = add nuw nsw i32 %.sroa.11.0.insert.insert.i, %.sroa.01.0.i ; 4 uses
  %.sroa.01.0.insert.insert.i = or disjoint i32 %.sroa.7.0.insert.insert.i, %.sroa.7.0.insert.shift.i ; 5 uses
  %i.lf = load i32, ptr %i.jb, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i303 = trunc i32 %.sroa.01.0.insert.insert.i to i24
  %.sroa.654.0.extract.shift.i304 = lshr i32 %.sroa.7.0.insert.insert.i, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i305 = lshr i32 %i.lf, 24 ; 4 uses
  %i.lg = icmp ugt i32 %.sroa.7.0.insert.insert.i, -50331649
  %i.lh = icmp ult i32 %i.lf, 50331648
  %or.cond.i306 = select i1 %i.lg, i1 true, i1 %i.lh
  br i1 %or.cond.i306, label %lv_color_32_32_mix.exit330, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.018.0.extract.trunc.i307 = trunc i32 %i.lf to i24
  %i.li = icmp ult i32 %.sroa.7.0.insert.insert.i, 50331648
  br i1 %i.li, label %lv_color_32_32_mix.exit330, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lj = icmp eq i32 %.sroa.6.0.extract.shift.i305, 255
  br i1 %i.lj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lk = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i, i32 %i.lf) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i328 = trunc i32 %i.lk to i24
  %.sroa.5.0.extract.shift.i329 = lshr i32 %i.lk, 24
  br label %lv_color_32_32_mix.exit330

bb.at:                                            ; preds = %bb.ar
  %i.ll = load i8, ptr %i.ab, align 1, !tbaa !18
  %i.lm = zext i8 %i.ll to i32
  %.not.i308 = icmp eq i32 %.sroa.6.0.extract.shift.i305, %i.lm
  %i.ln = load i8, ptr %i.ac, align 1
  %i.lo = zext i8 %i.ln to i32
  %.not77.i327 = icmp eq i32 %.sroa.654.0.extract.shift.i304, %i.lo
  %or.cond342 = select i1 %.not.i308, i1 %.not77.i327, i1 false
  br i1 %or.cond342, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lp = xor i32 %.sroa.654.0.extract.shift.i304, 255
  %i.lq = xor i32 %.sroa.6.0.extract.shift.i305, 255
  %i.lr = mul nuw nsw i32 %i.lp, %i.lq
  %i.ls = lshr i32 %i.lr, 8
  %i.lt = trunc nuw i32 %i.ls to i8
  %i.lu = xor i8 %i.lt, -1                        ; 2 uses
  store i8 %i.lu, ptr %i.t, align 4, !tbaa !13
  %i.lv = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i304 to i16
  %.lhs.trunc.i309 = mul nuw i16 %i.lv, 255
  %.rhs.trunc.i310 = zext i8 %i.lu to i16
  %i.lw = udiv i16 %.lhs.trunc.i309, %.rhs.trunc.i310
  %i.lx = trunc i16 %i.lw to i8
  store i8 %i.lx, ptr %i.u, align 1, !tbaa !14
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ly = load i32, ptr %i.r, align 4
  %i.lz = call zeroext i1 @lv_color32_eq(i32 %i.lf, i32 %i.ly) #7
  br i1 %i.lz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ma = load i32, ptr %2, align 4
  %i.mb = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i, i32 %i.ma) #7
  br i1 %i.mb, label %._crit_edge.i322, label %bb.ax

._crit_edge.i322:                                 ; preds = %bb.aw
  %.sroa.074.0.copyload.pre.i324 = load i24, ptr %i.s, align 4
  %.sroa.5.0.copyload.pre.i326 = load i8, ptr %i.ad, align 1, !tbaa !19
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %.sroa.01.0.insert.insert.i, ptr %2, align 4
  store i32 %i.lf, ptr %i.r, align 4
  %i.mc = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i311 = zext i8 %i.mc to i32
  %.sroa.654.0.insert.shift64.i312 = shl nuw i32 %.sroa.654.0.insert.ext63.i311, 24
  %.sroa.045.0.insert.ext51.i313 = and i32 %.sroa.01.0.insert.insert.i, 16777215
  %.sroa.045.0.insert.insert53.i314 = or disjoint i32 %.sroa.654.0.insert.shift64.i312, %.sroa.045.0.insert.ext51.i313
  %i.md = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i314, i32 %i.lf) #7 ; 2 uses
  store i32 %i.md, ptr %i.s, align 4
  %i.me = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.me, ptr %i.ad, align 1, !tbaa !20
  %i.mf = trunc i32 %i.md to i24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i322
  %.sroa.5.0.copyload.i315 = phi i8 [ %.sroa.5.0.copyload.pre.i326, %._crit_edge.i322 ], [ %i.me, %bb.ax ]
  %.sroa.074.0.copyload.i316 = phi i24 [ %.sroa.074.0.copyload.pre.i324, %._crit_edge.i322 ], [ %i.mf, %bb.ax ]
  %i.mg = zext i8 %.sroa.5.0.copyload.i315 to i32
  br label %lv_color_32_32_mix.exit330

lv_color_32_32_mix.exit330:                       ; preds = %bb.ap, %bb.aq, %bb.as, %bb.ay
  %.sroa.074.0.i317 = phi i24 [ %.sroa.074.0.copyload.i316, %bb.ay ], [ %.sroa.045.0.extract.trunc.i303, %bb.ap ], [ %.sroa.074.0.extract.trunc.i328, %bb.as ], [ %.sroa.018.0.extract.trunc.i307, %bb.aq ]
  %.sroa.5.0.i318 = phi i32 [ %i.mg, %bb.ay ], [ %.sroa.654.0.extract.shift.i304, %bb.ap ], [ %.sroa.5.0.extract.shift.i329, %bb.as ], [ %.sroa.6.0.extract.shift.i305, %bb.aq ]
  %.sroa.5.0.insert.shift.i319 = shl nuw i32 %.sroa.5.0.i318, 24
  %.sroa.074.0.insert.ext.i320 = zext i24 %.sroa.074.0.i317 to i32
  %.sroa.074.0.insert.insert.i321 = or disjoint i32 %.sroa.5.0.insert.shift.i319, %.sroa.074.0.insert.ext.i320
  store i32 %.sroa.074.0.insert.insert.i321, ptr %i.jb, align 1
  br label %blend_non_normal_pixel.exit

blend_non_normal_pixel.exit:                      ; preds = %bb.ak, %lv_color_32_32_mix.exit330
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ah
  %exitcond.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ai, !llvm.loop !172

._crit_edge:                                      ; preds = %blend_non_normal_pixel.exit
  %i.mh = getelementptr inbounds i8, ptr %.3226361, i64 %i.ae
  %.4227 = select i1 %i.io, ptr null, ptr %i.mh
  %i.mi = getelementptr inbounds nuw i8, ptr %.8242359, i64 %i.af
  %i.mj = getelementptr inbounds nuw i8, ptr %.8360, i64 %i.ag
  %i.mk = add nuw nsw i32 %.5362, 1               ; 2 uses
  %exitcond463.not = icmp eq i32 %i.mk, %i.d
  br i1 %exitcond463.not, label %.loopexit, label %.preheader354, !llvm.loop !173

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge425, %bb.e, %.preheader352, %bb.d, %.preheader351.lr.ph, %.preheader347.lr.ph, %.preheader355, %.preheader354.lr.ph, %.preheader.lr.ph, %.loopexit346
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_color_mix32(i32, i32) local_unnamed_addr #2

declare zeroext i1 @lv_color32_eq(i32, i32) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!11 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!12 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !4, i64 12, !4, i64 13}
!13 = !{!12, !4, i64 12}
!14 = !{!12, !4, i64 13}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!12, !4, i64 7}
!19 = !{!4, !4, i64 0}
!20 = !{!12, !4, i64 11}
!21 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!22 = !{!21, !5, i64 8}
!23 = !{!21, !5, i64 12}
!24 = !{!21, !4, i64 56}
!25 = !{!21, !8, i64 0}
!26 = !{!21, !5, i64 16}
!27 = !{!21, !8, i64 40}
!28 = !{!21, !5, i64 48}
!29 = !{!21, !9, i64 24}
!30 = !{!21, !5, i64 32}
!31 = !{!21, !5, i64 60}
!32 = !{!11, !4, i64 2}
!33 = !{!11, !4, i64 1}
!34 = !{!11, !4, i64 0}
!35 = !{!11, !4, i64 3}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15, !17, !16}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !62}
!42 = distinct !{!42, !15, !17, !16}
!43 = distinct !{!43, !15, !16, !17}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15, !17, !16}
!46 = distinct !{!46, !15, !16, !17}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!53 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !52, i64 36, !4, i64 39, !10, i64 40}
!54 = !{!53, !5, i64 8}
!55 = !{!53, !5, i64 12}
!56 = !{!53, !4, i64 39}
!57 = !{!53, !9, i64 24}
!58 = !{!53, !5, i64 32}
!59 = !{!53, !5, i64 16}
!60 = !{!53, !8, i64 0}
!61 = !{!5, !5, i64 0}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !15, !17, !16}
!67 = distinct !{!67, !15, !17}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !15, !17, !16}
!73 = distinct !{!73, !15, !17}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !15, !17, !16}
!85 = distinct !{!85, !15, !17}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !15, !17, !16}
!91 = distinct !{!91, !15, !17}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15}
!104 = distinct !{!104, !15}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = distinct !{!107, !15}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = distinct !{!132, !15}
!133 = distinct !{!133, !15}
!134 = distinct !{!134, !15}
!135 = distinct !{!135, !15}
!136 = distinct !{!136, !15}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
!139 = distinct !{!139, !15}
!140 = distinct !{!140, !15}
!141 = distinct !{!141, !15}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15}
!144 = distinct !{!144, !15}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = !{!21, !5, i64 52}
!150 = !{!64}
!151 = !{!65}
!152 = !{!70}
!153 = !{!71}
!154 = !{!"short", !4, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{!82}
!157 = !{!83}
!158 = !{!88}
!159 = !{!89}
!160 = !{!"", !4, i64 0, !4, i64 1}
!161 = !{!160, !4, i64 0}
!162 = !{!160, !4, i64 1}
!163 = distinct !{!163, !15}
!164 = distinct !{!164, !15}
!165 = distinct !{!165, !15}
!166 = distinct !{!166, !15}
!167 = distinct !{!167, !15}
!168 = distinct !{!168, !15}
!169 = distinct !{!169, !15}
!170 = distinct !{!170, !15}
!171 = distinct !{!171, !15}
!172 = distinct !{!172, !15}
!173 = distinct !{!173, !15}
end_hunk_0
