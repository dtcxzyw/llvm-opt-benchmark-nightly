Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb888?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb888:bb.a
  %i.ccz = load i8, ptr %i.ccy, align 1, !tbaa !11 ; 2 uses
  %i.cda = zext i8 %i.ccz to i32
  %i.cdb = add nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.cda
  %i.cdc = tail call i32 @llvm.umin.i32(i32 %i.cdb, i32 255)
  br label %bb.fq

bb.fn:                                            ; preds = %bb.fl
  %i.cdd = load i8, ptr %i.ccl, align 1, !tbaa !11 ; 2 uses
  %i.cde = zext i8 %i.cdd to i32
  %i.cdf = sub nsw i32 %i.cde, %.sroa.5.0.insert.ext.i170
  %spec.select5662.i.i182 = tail call i32 @llvm.smax.i32(i32 %i.cdf, i32 0)
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.ccl, i64 1
  %i.cdh = load i8, ptr %i.cdg, align 1, !tbaa !11 ; 2 uses
  %i.cdi = zext i8 %i.cdh to i32
  %i.cdj = sub nsw i32 %i.cdi, %.sroa.5.0.insert.ext.i170
  %i.cdk = tail call i32 @llvm.smax.i32(i32 %i.cdj, i32 0)
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.ccl, i64 2
  %i.cdm = load i8, ptr %i.cdl, align 1, !tbaa !11 ; 2 uses
  %i.cdn = zext i8 %i.cdm to i32
  %i.cdo = sub nsw i32 %i.cdn, %.sroa.5.0.insert.ext.i170
  %i.cdp = tail call i32 @llvm.smax.i32(i32 %i.cdo, i32 0)
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fl
  %i.cdq = load i8, ptr %i.ccl, align 1, !tbaa !11 ; 2 uses
  %i.cdr = zext i8 %i.cdq to i32
  %i.cds = mul nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.cdr
  %i.cdt = lshr i32 %i.cds, 8
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.ccl, i64 1
  %i.cdv = load i8, ptr %i.cdu, align 1, !tbaa !11 ; 2 uses
  %i.cdw = zext i8 %i.cdv to i32
  %i.cdx = mul nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.cdw
  %i.cdy = lshr i32 %i.cdx, 8
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.ccl, i64 2
  %i.cea = load i8, ptr %i.cdz, align 1, !tbaa !11 ; 2 uses
  %i.ceb = zext i8 %i.cea to i32
  %i.cec = mul nuw nsw i32 %.sroa.5.0.insert.ext.i170, %i.ceb
  %i.ced = lshr i32 %i.cec, 8
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fl
  %i.cee = load i8, ptr %i.ccl, align 1, !tbaa !11 ; 2 uses
  %i.cef = zext i8 %i.cee to i32
  %i.ceg = sub nsw i32 %i.cef, %.sroa.5.0.insert.ext.i170
  %i.ceh = tail call i32 @llvm.abs.i32(i32 %i.ceg, i1 true)
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ccl, i64 1
  %i.cej = load i8, ptr %i.cei, align 1, !tbaa !11 ; 2 uses
  %i.cek = zext i8 %i.cej to i32
  %i.cel = sub nsw i32 %i.cek, %.sroa.5.0.insert.ext.i170
  %i.cem = tail call i32 @llvm.abs.i32(i32 %i.cel, i1 true)
  %i.cen = getelementptr inbounds nuw i8, ptr %i.ccl, i64 2
  %i.ceo = load i8, ptr %i.cen, align 1, !tbaa !11 ; 2 uses
  %i.cep = zext i8 %i.ceo to i32
  %i.ceq = sub nsw i32 %i.cep, %.sroa.5.0.insert.ext.i170
  %i.cer = tail call i32 @llvm.abs.i32(i32 %i.ceq, i1 true)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn, %bb.fm
  %i.ces = phi i8 [ %i.ccz, %bb.fm ], [ %i.cdm, %bb.fn ], [ %i.cea, %bb.fo ], [ %i.ceo, %bb.fp ]
  %i.cet = phi i8 [ %i.ccu, %bb.fm ], [ %i.cdh, %bb.fn ], [ %i.cdv, %bb.fo ], [ %i.cej, %bb.fp ]
  %i.ceu = phi i8 [ %i.ccq, %bb.fm ], [ %i.cdd, %bb.fn ], [ %i.cdq, %bb.fo ], [ %i.cee, %bb.fp ]
  %.sroa.0.0.in.i.i171 = phi i32 [ %spec.select63.i.i183, %bb.fm ], [ %spec.select5662.i.i182, %bb.fn ], [ %i.cdt, %bb.fo ], [ %i.ceh, %bb.fp ] ; 2 uses
  %.sroa.9.0.in.i.i172 = phi i32 [ %i.ccx, %bb.fm ], [ %i.cdk, %bb.fn ], [ %i.cdy, %bb.fo ], [ %i.cem, %bb.fp ] ; 2 uses
  %.sroa.15.0.in.i.i173 = phi i32 [ %i.cdc, %bb.fm ], [ %i.cdp, %bb.fn ], [ %i.ced, %bb.fo ], [ %i.cer, %bb.fp ] ; 2 uses
  %.sroa.15.0.i.i174 = trunc nuw i32 %.sroa.15.0.in.i.i173 to i8
  %.sroa.9.0.i.i175 = trunc nuw i32 %.sroa.9.0.in.i.i172 to i8
  %.sroa.0.0.i.i176 = trunc nuw i32 %.sroa.0.0.in.i.i171 to i8
  %i.cev = icmp eq i8 %.sroa.8.0.i168, 0
  br i1 %i.cev, label %blend_non_normal_pixel.exit.i177, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.cew = icmp ugt i8 %.sroa.8.0.i168, -4
  br i1 %i.cew, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  store i8 %.sroa.0.0.i.i176, ptr %i.ccl, align 1, !tbaa !11
  %i.cex = getelementptr inbounds nuw i8, ptr %i.ccl, i64 1
  store i8 %.sroa.9.0.i.i175, ptr %i.cex, align 1, !tbaa !11
  %i.cey = getelementptr inbounds nuw i8, ptr %i.ccl, i64 2
  store i8 %.sroa.15.0.i.i174, ptr %i.cey, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i177

bb.ft:                                            ; preds = %bb.fr
  %i.cez = xor i32 %.sroa.8.0.insert.ext.i169, 255 ; 3 uses
  %i.cfa = mul nuw nsw i32 %.sroa.0.0.in.i.i171, %.sroa.8.0.insert.ext.i169
  %i.cfb = zext i8 %i.ceu to i32
  %i.cfc = mul nuw nsw i32 %i.cez, %i.cfb
  %i.cfd = add nuw nsw i32 %i.cfc, %i.cfa
  %i.cfe = lshr i32 %i.cfd, 8
  %i.cff = trunc nuw i32 %i.cfe to i8
  store i8 %i.cff, ptr %i.ccl, align 1, !tbaa !11
  %i.cfg = mul nuw nsw i32 %.sroa.9.0.in.i.i172, %.sroa.8.0.insert.ext.i169
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.ccl, i64 1
  %i.cfi = zext i8 %i.cet to i32
  %i.cfj = mul nuw nsw i32 %i.cez, %i.cfi
  %i.cfk = add nuw nsw i32 %i.cfg, %i.cfj
  %i.cfl = lshr i32 %i.cfk, 8
  %i.cfm = trunc nuw i32 %i.cfl to i8
  store i8 %i.cfm, ptr %i.cfh, align 1, !tbaa !11
  %i.cfn = mul nuw nsw i32 %.sroa.15.0.in.i.i173, %.sroa.8.0.insert.ext.i169
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.ccl, i64 2
  %i.cfp = zext i8 %i.ces to i32
  %i.cfq = mul nuw nsw i32 %i.cez, %i.cfp
  %i.cfr = add nuw nsw i32 %i.cfn, %i.cfq
  %i.cfs = lshr i32 %i.cfr, 8
  %i.cft = trunc nuw i32 %i.cfs to i8
  store i8 %i.cft, ptr %i.cfo, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i177

blend_non_normal_pixel.exit.i177:                 ; preds = %bb.ft, %bb.fs, %bb.fq, %bb.fl
  %i.cfu = add i32 %.4152184.i, %1
  %indvars.iv.next.i178 = add nuw nsw i64 %indvars.iv.i167, 1 ; 2 uses
  %exitcond.not.i179 = icmp eq i64 %indvars.iv.next.i178, %wide.trip.count.i165
  br i1 %exitcond.not.i179, label %._crit_edge.i180, label %bb.fj, !llvm.loop !125

._crit_edge.i180:                                 ; preds = %blend_non_normal_pixel.exit.i177
  %i.cfv = getelementptr inbounds i8, ptr %.2155187.i, i64 %i.bsk
  %.3156.i = select i1 %i.cbw, ptr null, ptr %i.cfv
  %i.cfw = getelementptr inbounds nuw i8, ptr %.4189.i, i64 %i.bsl
  %i.cfx = getelementptr inbounds nuw i8, ptr %.4161186.i, i64 %i.bsm
  %i.cfy = add nuw nsw i32 %.4142188.i, 1         ; 2 uses
  %exitcond224.not.i181 = icmp eq i32 %i.cfy, %i.brq
  br i1 %exitcond224.not.i181, label %rgb565_image_blend.exit, label %.preheader181.i166, !llvm.loop !126

rgb565_image_blend.exit.sink.split:               ; preds = %bb.a, %bb.y
  %.sink419 = phi i32 [ 4, %bb.y ], [ 3, %bb.a ]
  %i.cfz = trunc i32 %1 to i8
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext %i.cfz, i32 noundef %.sink419)
  br label %rgb565_image_blend.exit

rgb565_image_blend.exit:                          ; preds = %._crit_edge.i180, %._crit_edge192.i, %._crit_edge199.i, %._crit_edge206.i, %._crit_edge213.i, %._crit_edge.i117, %._crit_edge191.i, %._crit_edge198.i, %._crit_edge205.i, %._crit_edge211.i, %._crit_edge.i89, %._crit_edge189.i, %._crit_edge196.i, %._crit_edge203.i, %._crit_edge210.i, %._crit_edge.i56, %._crit_edge235.i, %._crit_edge242.i, %._crit_edge249.i, %._crit_edge255.i, %._crit_edge.i31, %._crit_edge188.i, %._crit_edge195.i, %._crit_edge202.i, %._crit_edge208.i, %._crit_edge.i, %._crit_edge226.i, %._crit_edge233.i, %._crit_edge240.i, %._crit_edge247.i, %rgb565_image_blend.exit.sink.split, %.preheader178.lr.ph.i188, %bb.fe, %.preheader175.lr.ph.i196, %.preheader176.i, %.preheader172.lr.ph.i206, %.preheader173.i205, %.preheader.lr.ph.i212, %.preheader171.i211, %.preheader181.lr.ph.i, %.preheader182.i, %.preheader177.lr.ph.i128, %bb.ef, %.preheader174.lr.ph.i137, %.preheader175.i136, %.preheader171.lr.ph.i146, %.preheader172.i145, %.preheader.lr.ph.i156, %.preheader170.i155, %.preheader180.lr.ph.i, %.preheader181.i, %.preheader175.lr.ph.i, %bb.da, %.preheader172.lr.ph.i, %.preheader173.i, %.preheader169.lr.ph.i, %.preheader170.i, %.preheader.lr.ph.i100, %.preheader168.i99, %.preheader178.lr.ph.i, %.preheader179.i, %.preheader221.lr.ph.i, %bb.by, %.preheader218.lr.ph.i, %.preheader219.i, %.preheader215.lr.ph.i66, %.preheader216.i65, %.preheader.lr.ph.i70, %.preheader214.i, %.preheader224.lr.ph.i, %.preheader225.i, %.preheader174.lr.ph.i, %bb.ap, %.preheader171.lr.ph.i, %.preheader172.i, %.preheader168.lr.ph.i, %.preheader169.i, %.preheader.lr.ph.i37, %.preheader167.i, %.preheader177.lr.ph.i, %.preheader178.i, %.preheader209.lr.ph.i, %.preheader210.i, %.preheader212.lr.ph.i, %.preheader213.i, %.preheader206.lr.ph.i, %.preheader207.i, %.preheader.lr.ph.i, %.preheader205.i, %.preheader215.lr.ph.i, %.preheader216.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i32 noundef range(i32 3, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = mul i32 %i.b, %i.c                       ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !18    ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !24   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
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
  %.1223.us = phi i32 [ %i.bb, %._crit_edge220.us ], [ 0, %.preheader206.us.preheader ]
  %.1177222.us = phi ptr [ %i.ba, %._crit_edge220.us ], [ %i.m, %.preheader206.us.preheader ] ; 2 uses
  %.1183221.us = phi ptr [ %i.az, %._crit_edge220.us ], [ %i.i, %.preheader206.us.preheader ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader206.us, %bb.d
  %indvars.iv296 = phi i64 [ 0, %.preheader206.us ], [ %indvars.iv.next297.a, %bb.d ] ; 2 uses
  %.0161219.us = phi i32 [ 0, %.preheader206.us ], [ %i.ay, %bb.d ] ; 2 uses
  %i.ao = sext i32 %.0161219.us to i64
  %i.ap = getelementptr inbounds i8, ptr %.1177222.us, i64 %i.ao ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %.1183221.us, i64 %indvars.iv296 ; 3 uses
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !11
  %i.as = getelementptr i8, ptr %i.ap, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !11
  %i.av = getelementptr i8, ptr %i.ap, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !11
  %indvars.iv.next297.a = add nuw nsw i64 %indvars.iv296, %i.am ; 2 uses
  %i.ay = add i32 %.0161219.us, %2
  %3 = icmp samesign ult i64 %indvars.iv.next297.a, %i.an
  br i1 %3, label %bb.d, label %._crit_edge220.us, !llvm.loop !140

._crit_edge220.us:                                ; preds = %bb.d
  %i.az = getelementptr inbounds i8, ptr %.1183221.us, i64 %i.ak ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.1177222.us, i64 %i.al ; 2 uses
  %i.bb = add nuw nsw i32 %.1223.us, 1            ; 2 uses
  %exitcond299.not = icmp eq i32 %i.bb, %i.f
  br i1 %exitcond299.not, label %.loopexit205, label %.preheader206.us, !llvm.loop !141

.preheader204:                                    ; preds = %bb.c
  br i1 %i.ai, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader204
  %i.bc = sext i32 %i.d to i64
  %i.bd = sext i32 %i.k to i64
  %i.be = sext i32 %i.o to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0160228 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.e ]
  %.0176227 = phi ptr [ %i.m, %.lr.ph ], [ %i.bh, %bb.e ] ; 2 uses
  %.0182226 = phi ptr [ %i.i, %.lr.ph ], [ %i.bg, %bb.e ] ; 2 uses
  %i.bf = tail call ptr @lv_memcpy(ptr noundef %.0182226, ptr noundef %.0176227, i64 noundef %i.bc) #5 ; 0 uses
  %i.bg = getelementptr inbounds i8, ptr %.0182226, i64 %i.bd
  %i.bh = getelementptr inbounds i8, ptr %.0176227, i64 %i.be
  %i.bi = add nuw nsw i32 %.0160228, 1            ; 2 uses
  %exitcond300.not = icmp eq i32 %i.bi, %i.f
  br i1 %exitcond300.not, label %.loopexit, label %bb.e, !llvm.loop !142

.loopexit205:                                     ; preds = %._crit_edge220.us, %bb.b
  %.2184 = phi ptr [ %i.i, %bb.b ], [ %i.az, %._crit_edge220.us ] ; 2 uses
  %.2178 = phi ptr [ %i.m, %bb.b ], [ %i.ba, %._crit_edge220.us ] ; 2 uses
  %i.bj = icmp ult i8 %i.h, -3                    ; 2 uses
  %or.cond5 = select i1 %i.ae, i1 %i.bj, i1 false
  %i.bk = icmp sgt i32 %i.f, 0                    ; 3 uses
  %or.cond268 = select i1 %or.cond5, i1 %i.bk, i1 false
  br i1 %or.cond268, label %.preheader201.lr.ph, label %.loopexit203

.preheader201.lr.ph:                              ; preds = %.loopexit205
  %i.bl = icmp slt i32 %i.d, 1
  %i.bm = zext i8 %i.h to i32                     ; 3 uses
  %i.bn = xor i8 %i.h, -1
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = sext i32 %i.k to i64
  %i.bq = sext i32 %i.o to i64
  %i.br = icmp eq i8 %i.h, 0
  %or.cond365 = select i1 %i.bl, i1 true, i1 %i.br
  br i1 %or.cond365, label %.loopexit, label %.preheader201.us.preheader

.preheader201.us.preheader:                       ; preds = %.preheader201.lr.ph
  %i.bs = zext i8 %1 to i64
  %i.bt = zext nneg i32 %i.d to i64
  br label %lv_color_24_24_mix.exit.us.ph.lver.orig

lv_color_24_24_mix.exit.us.ph.lver.orig:          ; preds = %._crit_edge234.us, %.preheader201.us.preheader
  %.2237.us = phi i32 [ %i.dg, %._crit_edge234.us ], [ 0, %.preheader201.us.preheader ]
  %.3179236.us = phi ptr [ %i.df, %._crit_edge234.us ], [ %.2178, %.preheader201.us.preheader ] ; 2 uses
  %.3185235.us = phi ptr [ %i.de, %._crit_edge234.us ], [ %.2184, %.preheader201.us.preheader ] ; 2 uses
  br label %lv_color_24_24_mix.exit.us.lver.orig

lv_color_24_24_mix.exit.us.lver.orig:             ; preds = %lv_color_24_24_mix.exit.us.lver.orig, %lv_color_24_24_mix.exit.us.ph.lver.orig
  %indvars.iv303.lver.orig = phi i64 [ 0, %lv_color_24_24_mix.exit.us.ph.lver.orig ], [ %indvars.iv.next304.lver.orig, %lv_color_24_24_mix.exit.us.lver.orig ] ; 2 uses
  %.1162232.us.lver.orig = phi i32 [ 0, %lv_color_24_24_mix.exit.us.ph.lver.orig ], [ %i.dc, %lv_color_24_24_mix.exit.us.lver.orig ] ; 2 uses
  %i.bu = sext i32 %.1162232.us.lver.orig to i64
  %i.bv = getelementptr inbounds i8, ptr %.3179236.us, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.3185235.us, i64 %indvars.iv303.lver.orig ; 4 uses
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul nuw nsw i32 %i.by, %i.bm
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.cb, %i.bo
  %i.cd = add nuw nsw i32 %i.cc, %i.bz
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.bw, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = zext i8 %i.ch to i32
  %i.cj = mul nuw nsw i32 %i.ci, %i.bm
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.cm, %i.bo
  %i.co = add nuw nsw i32 %i.cn, %i.cj
  %i.cp = lshr i32 %i.co, 8
  %i.cq = trunc i32 %i.cp to i8
  store i8 %i.cq, ptr %i.ck, align 1, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !11
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.ct, %i.bm
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 2 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cx = zext i8 %i.cw to i32
  %i.cy = mul nuw nsw i32 %i.cx, %i.bo
  %i.cz = add nuw nsw i32 %i.cy, %i.cu
  %i.da = lshr i32 %i.cz, 8
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %i.cv, align 1, !tbaa !11
  %indvars.iv.next304.lver.orig = add nuw nsw i64 %indvars.iv303.lver.orig, %i.bs ; 2 uses
  %i.dc = add i32 %.1162232.us.lver.orig, %2
  %i.dd = icmp samesign ult i64 %indvars.iv.next304.lver.orig, %i.bt
  br i1 %i.dd, label %lv_color_24_24_mix.exit.us.lver.orig, label %._crit_edge234.us, !llvm.loop !143

._crit_edge234.us:                                ; preds = %lv_color_24_24_mix.exit.us.lver.orig
  %i.de = getelementptr inbounds i8, ptr %.3185235.us, i64 %i.bp ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.3179236.us, i64 %i.bq ; 2 uses
  %i.dg = add nuw nsw i32 %.2237.us, 1            ; 2 uses
  %exitcond306.not = icmp eq i32 %i.dg, %i.f
  br i1 %exitcond306.not, label %.loopexit203, label %lv_color_24_24_mix.exit.us.ph.lver.orig, !llvm.loop !144

.loopexit203:                                     ; preds = %._crit_edge234.us, %.loopexit205
  %.4186 = phi ptr [ %.2184, %.loopexit205 ], [ %i.de, %._crit_edge234.us ] ; 3 uses
  %.4180 = phi ptr [ %.2178, %.loopexit205 ], [ %i.df, %._crit_edge234.us ] ; 3 uses
  %i.dh = icmp ne ptr %i.q, null
  %or.cond8 = select i1 %i.dh, i1 %i.ag, i1 false
  %or.cond269 = select i1 %or.cond8, i1 %i.bk, i1 false
  br i1 %or.cond269, label %.preheader198.lr.ph, label %.loopexit200

.preheader198.lr.ph:                              ; preds = %.loopexit203
  %i.di = icmp sgt i32 %i.d, 0
  %i.dj = sext i32 %i.k to i64                    ; 2 uses
  %i.dk = sext i32 %i.o to i64                    ; 2 uses
  %i.dl = sext i32 %i.s to i64                    ; 2 uses
  br i1 %i.di, label %.preheader198.us.preheader, label %.preheader198.preheader

.preheader198.preheader:                          ; preds = %.preheader198.lr.ph
  %i.dm = zext nneg i32 %i.f to i64               ; 3 uses
  %i.dn = mul nsw i64 %i.dm, %i.dj
  %scevgep309 = getelementptr i8, ptr %.4186, i64 %i.dn
  %i.do = mul nsw i64 %i.dm, %i.dk
  %scevgep310 = getelementptr i8, ptr %.4180, i64 %i.do
  %i.dp = mul nsw i64 %i.dm, %i.dl
  %scevgep311 = getelementptr i8, ptr %i.q, i64 %i.dp
  br label %.loopexit200

.preheader198.us.preheader:                       ; preds = %.preheader198.lr.ph
  %i.dq = zext i8 %1 to i64
  %i.dr = zext nneg i32 %i.d to i64
  br label %.preheader198.us

.preheader198.us:                                 ; preds = %.preheader198.us.preheader, %._crit_edge248.us
  %.3252.us = phi i32 [ %i.ft, %._crit_edge248.us ], [ 0, %.preheader198.us.preheader ]
  %.0171251.us = phi ptr [ %i.fs, %._crit_edge248.us ], [ %i.q, %.preheader198.us.preheader ] ; 2 uses
  %.5181250.us = phi ptr [ %i.fr, %._crit_edge248.us ], [ %.4180, %.preheader198.us.preheader ] ; 2 uses
  %.5187249.us = phi ptr [ %i.fq, %._crit_edge248.us ], [ %.4186, %.preheader198.us.preheader ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader198.us, %lv_color_24_24_mix.exit195.us
  %indvars.iv314 = phi i64 [ 0, %.preheader198.us ], [ %indvars.iv.next315, %lv_color_24_24_mix.exit195.us ] ; 2 uses
  %indvars.iv312 = phi i64 [ 0, %.preheader198.us ], [ %indvars.iv.next313, %lv_color_24_24_mix.exit195.us ] ; 2 uses
  %.2163245.us = phi i32 [ 0, %.preheader198.us ], [ %i.fo, %lv_color_24_24_mix.exit195.us ] ; 2 uses
  %i.ds = sext i32 %.2163245.us to i64
  %i.dt = getelementptr inbounds i8, ptr %.5181250.us, i64 %i.ds ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.5187249.us, i64 %indvars.iv314 ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0171251.us, i64 %indvars.iv312
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !11  ; 4 uses
  %i.dx = zext i8 %i.dw to i32                    ; 3 uses
  %i.dy = icmp eq i8 %i.dw, 0
  br i1 %i.dy, label %lv_color_24_24_mix.exit195.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dz = icmp ugt i8 %i.dw, -4
  br i1 %i.dz, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ea = xor i8 %i.dw, -1
  %i.eb = load i8, ptr %i.dt, align 1, !tbaa !11
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.ec, %i.dx
  %i.ee = load i8, ptr %i.du, align 1, !tbaa !11
  %i.ef = zext i8 %i.ee to i32
  %i.eg = zext i8 %i.ea to i32                    ; 3 uses
  %i.eh = mul nuw nsw i32 %i.ef, %i.eg
  %i.ei = add nuw nsw i32 %i.eh, %i.ed
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %i.du, align 1, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = zext i8 %i.em to i32
  %i.eo = mul nuw nsw i32 %i.en, %i.dx
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !11
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, %i.eg
  %i.et = add nuw nsw i32 %i.es, %i.eo
  %i.eu = lshr i32 %i.et, 8
  %i.ev = trunc i32 %i.eu to i8
  store i8 %i.ev, ptr %i.ep, align 1, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !11
  %i.ey = zext i8 %i.ex to i32
  %i.ez = mul nuw nsw i32 %i.ey, %i.dx
  %i.fa = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fc = zext i8 %i.fb to i32
  %i.fd = mul nuw nsw i32 %i.fc, %i.eg
  %i.fe = add nuw nsw i32 %i.fd, %i.ez
  %i.ff = lshr i32 %i.fe, 8
  %i.fg = trunc i32 %i.ff to i8
  store i8 %i.fg, ptr %i.fa, align 1, !tbaa !11
end_hunk_0
