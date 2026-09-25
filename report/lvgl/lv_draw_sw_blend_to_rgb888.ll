Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb888?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb888:bb.a
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
  %.1223.us = phi i32 [ %i.bc, %._crit_edge220.us ], [ 0, %.preheader206.us.preheader ]
  %.1177222.us = phi ptr [ %i.bb, %._crit_edge220.us ], [ %i.m, %.preheader206.us.preheader ] ; 2 uses
  %.1183221.us = phi ptr [ %i.ba, %._crit_edge220.us ], [ %i.i, %.preheader206.us.preheader ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader206.us, %bb.d
  %indvars.iv296 = phi i64 [ 0, %.preheader206.us ], [ %indvars.iv.next297, %bb.d ] ; 2 uses
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
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.bz = zext i8 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, %i.bn
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.cc = zext i8 %i.cb to i32
  %i.cd = mul nuw nsw i32 %i.cc, %i.bp
  %i.ce = add nuw nsw i32 %i.cd, %i.ca
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %i.bx, align 1, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !11
  %i.cj = zext i8 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.cj, %i.bn
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !11
  %i.cn = zext i8 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.cn, %i.bp
  %i.cp = add nuw nsw i32 %i.co, %i.ck
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = trunc i32 %i.cq to i8
  store i8 %i.cr, ptr %i.cl, align 1, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cu, %i.bn
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.cy = zext i8 %i.cx to i32
  %i.cz = mul nuw nsw i32 %i.cy, %i.bp
  %i.da = add nuw nsw i32 %i.cz, %i.cv
  %i.db = lshr i32 %i.da, 8
  %i.dc = trunc i32 %i.db to i8
  store i8 %i.dc, ptr %i.cw, align 1, !tbaa !11
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
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !11  ; 4 uses
  %i.dy = zext i8 %i.dx to i32                    ; 3 uses
  %i.dz = icmp eq i8 %i.dx, 0
  br i1 %i.dz, label %lv_color_24_24_mix.exit195.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ea = icmp ugt i8 %i.dx, -4
  br i1 %i.ea, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eb = xor i8 %i.dx, -1
  %i.ec = load i8, ptr %i.du, align 1, !tbaa !11
  %i.ed = zext i8 %i.ec to i32
  %i.ee = mul nuw nsw i32 %i.ed, %i.dy
  %i.ef = load i8, ptr %i.dv, align 1, !tbaa !11
  %i.eg = zext i8 %i.ef to i32
  %i.eh = zext i8 %i.eb to i32                    ; 3 uses
  %i.ei = mul nuw nsw i32 %i.eg, %i.eh
  %i.ej = add nuw nsw i32 %i.ei, %i.ee
  %i.ek = lshr i32 %i.ej, 8
  %i.el = trunc i32 %i.ek to i8
  store i8 %i.el, ptr %i.dv, align 1, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = zext i8 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.eo, %i.dy
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, %i.eh
  %i.eu = add nuw nsw i32 %i.et, %i.ep
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.eq, align 1, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.ez, %i.dy
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fd = zext i8 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.fd, %i.eh
  %i.ff = add nuw nsw i32 %i.fe, %i.fa
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = trunc i32 %i.fg to i8
  store i8 %i.fh, ptr %i.fb, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit195.us

bb.i:                                             ; preds = %bb.g
  %i.fi = load i8, ptr %i.du, align 1, !tbaa !11
  store i8 %i.fi, ptr %i.dv, align 1, !tbaa !11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !11
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
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11
  %i.gh = zext i8 %i.gg to i16
  %i.gi = mul nuw i16 %i.gh, %i.af                ; 2 uses
  %i.gj = lshr i16 %i.gi, 8                       ; 5 uses
  %i.gk = icmp eq i16 %i.gj, 0
  br i1 %i.gk, label %lv_color_24_24_mix.exit196, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gl = icmp ugt i16 %i.gi, -769
  br i1 %i.gl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gm = load i8, ptr %i.gd, align 1, !tbaa !11
  store i8 %i.gm, ptr %i.ge, align 1, !tbaa !11
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !11
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !11
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit196

bb.m:                                             ; preds = %bb.k
  %i.gt = xor i16 %i.gj, 255                      ; 3 uses
  %i.gu = load i8, ptr %i.gd, align 1, !tbaa !11
  %i.gv = zext i8 %i.gu to i16
  %i.gw = mul nuw i16 %i.gj, %i.gv
  %i.gx = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gy = zext i8 %i.gx to i16
  %i.gz = mul nuw i16 %i.gt, %i.gy
  %i.ha = add i16 %i.gz, %i.gw
  %i.hb = lshr i16 %i.ha, 8
  %i.hc = trunc nuw i16 %i.hb to i8
  store i8 %i.hc, ptr %i.ge, align 1, !tbaa !11
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !11
  %i.hf = zext i8 %i.he to i16
  %i.hg = mul nuw i16 %i.gj, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@rgb888_image_blend:bb.a
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
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !11
  %i.ik = getelementptr i8, ptr %i.ih, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !11
  %i.im = load i8, ptr %i.ih, align 1, !tbaa !11
  br i1 %i.if, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.in = getelementptr inbounds nuw i8, ptr %.3174216, i64 %indvars.iv
  %i.io = load i8, ptr %i.in, align 1, !tbaa !11
  %i.ip = zext i8 %i.io to i16
  %i.iq = mul nuw i16 %i.ip, %i.y
  %i.ir = lshr i16 %i.iq, 8
  %i.is = trunc nuw i16 %i.ir to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.6.0 = phi i8 [ %i.is, %bb.o ], [ %i.h, %bb.n ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.8190214, i64 %indvars.iv ; 18 uses
  %i.iu = load i32, ptr %i.t, align 4, !tbaa !25
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
  %i.iv = load i8, ptr %i.it, align 1, !tbaa !11  ; 2 uses
  %i.iw = zext i8 %i.iv to i32
  %i.ix = add nuw nsw i32 %i.iw, %.sroa.0.0.insert.ext
  %spec.select63.i = tail call i32 @llvm.umin.i32(i32 %i.ix, i32 255)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !11  ; 2 uses
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nuw nsw i32 %i.ja, %.sroa.4.0.insert.ext
  %i.jc = tail call i32 @llvm.umin.i32(i32 %i.jb, i32 255)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !11  ; 2 uses
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nuw nsw i32 %i.jf, %.sroa.5.0.insert.ext
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 255)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ji = load i8, ptr %i.it, align 1, !tbaa !11  ; 2 uses
  %i.jj = zext i8 %i.ji to i32
  %i.jk = sub nsw i32 %i.jj, %.sroa.0.0.insert.ext
  %spec.select5662.i = tail call i32 @llvm.smax.i32(i32 %i.jk, i32 0)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !11  ; 2 uses
  %i.jn = zext i8 %i.jm to i32
  %i.jo = sub nsw i32 %i.jn, %.sroa.4.0.insert.ext
  %i.jp = tail call i32 @llvm.smax.i32(i32 %i.jo, i32 0)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !11  ; 2 uses
  %i.js = zext i8 %i.jr to i32
  %i.jt = sub nsw i32 %i.js, %.sroa.5.0.insert.ext
  %i.ju = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.jv = load i8, ptr %i.it, align 1, !tbaa !11  ; 2 uses
  %i.jw = zext i8 %i.jv to i32
  %i.jx = mul nuw nsw i32 %i.jw, %.sroa.0.0.insert.ext
  %i.jy = lshr i32 %i.jx, 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !11  ; 2 uses
  %i.kb = zext i8 %i.ka to i32
  %i.kc = mul nuw nsw i32 %i.kb, %.sroa.4.0.insert.ext
  %i.kd = lshr i32 %i.kc, 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !11  ; 2 uses
  %i.kg = zext i8 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.kg, %.sroa.5.0.insert.ext
  %i.ki = lshr i32 %i.kh, 8
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.kj = load i8, ptr %i.it, align 1, !tbaa !11  ; 2 uses
  %i.kk = zext i8 %i.kj to i32
  %i.kl = sub nsw i32 %i.kk, %.sroa.0.0.insert.ext
  %i.km = tail call i32 @llvm.abs.i32(i32 %i.kl, i1 true)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !11  ; 2 uses
  %i.kp = zext i8 %i.ko to i32
  %i.kq = sub nsw i32 %i.kp, %.sroa.4.0.insert.ext
  %i.kr = tail call i32 @llvm.abs.i32(i32 %i.kq, i1 true)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !11  ; 2 uses
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
  store i8 %.sroa.0.0.i, ptr %i.it, align 1, !tbaa !11
  %i.lc = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  store i8 %.sroa.9.0.i, ptr %i.lc, align 1, !tbaa !11
  %i.ld = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  store i8 %.sroa.15.0.i, ptr %i.ld, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit

bb.x:                                             ; preds = %bb.v
  %i.le = xor i32 %.sroa.6.0.insert.ext, 255      ; 3 uses
  %i.lf = mul nuw nsw i32 %.sroa.0.0.in.i, %.sroa.6.0.insert.ext
  %i.lg = zext i8 %i.kz to i32
  %i.lh = mul nuw nsw i32 %i.le, %i.lg
  %i.li = add nuw nsw i32 %i.lh, %i.lf
  %i.lj = lshr i32 %i.li, 8
  %i.lk = trunc nuw i32 %i.lj to i8
  store i8 %i.lk, ptr %i.it, align 1, !tbaa !11
  %i.ll = mul nuw nsw i32 %.sroa.9.0.in.i, %.sroa.6.0.insert.ext
  %i.lm = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ln = zext i8 %i.ky to i32
  %i.lo = mul nuw nsw i32 %i.le, %i.ln
  %i.lp = add nuw nsw i32 %i.ll, %i.lo
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = trunc nuw i32 %i.lq to i8
  store i8 %i.lr, ptr %i.lm, align 1, !tbaa !11
  %i.ls = mul nuw nsw i32 %.sroa.15.0.in.i, %.sroa.6.0.insert.ext
  %i.lt = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.lu = zext i8 %i.kx to i32
  %i.lv = mul nuw nsw i32 %i.le, %i.lu
  %i.lw = add nuw nsw i32 %i.ls, %i.lv
  %i.lx = lshr i32 %i.lw, 8
  %i.ly = trunc nuw i32 %i.lx to i8
  store i8 %i.ly, ptr %i.lt, align 1, !tbaa !11
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
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!16 = !{!15, !5, i64 8}
!17 = !{!15, !5, i64 12}
!18 = !{!15, !4, i64 56}
!19 = !{!15, !8, i64 0}
!20 = !{!15, !5, i64 16}
!21 = !{!15, !8, i64 40}
!22 = !{!15, !5, i64 48}
!23 = !{!15, !9, i64 24}
!24 = !{!15, !5, i64 32}
!25 = !{!15, !5, i64 60}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !53}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12, !13, !14}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12, !14, !13}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!41 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !40, i64 36, !4, i64 39, !10, i64 40}
!42 = !{!41, !5, i64 8}
!43 = !{!41, !5, i64 12}
!44 = !{!41, !4, i64 39}
!45 = !{!41, !9, i64 24}
!46 = !{!41, !5, i64 32}
!47 = !{!41, !5, i64 16}
!48 = !{!41, !8, i64 0}
!49 = !{!41, !4, i64 36}
!50 = !{!41, !4, i64 37}
!51 = !{!41, !4, i64 38}
!52 = !{!5, !5, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !12, !13, !14}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !"LVerDomain"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !12, !13, !14}
!92 = distinct !{!92, !12, !13, !14}
!93 = distinct !{!93, !12, !13}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !12, !13, !14}
!117 = distinct !{!117, !12, !13}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = distinct !{!123, !12}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
!126 = distinct !{!126, !12}
!127 = !{!15, !5, i64 52}
!128 = !{!55}
!129 = !{!56}
!130 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!131 = !{!130, !4, i64 3}
!132 = !{!89}
!133 = !{!90}
!134 = !{!"branch_weights", i32 4, i32 28}
!135 = !{!"", !4, i64 0, !4, i64 1}
!136 = !{!135, !4, i64 0}
!137 = !{!135, !4, i64 1}
!138 = !{!114}
!139 = !{!115}
!140 = distinct !{!140, !12}
!141 = distinct !{!141, !12}
!142 = distinct !{!142, !12}
!143 = distinct !{!143, !12}
!144 = distinct !{!144, !12}
!145 = distinct !{!145, !12}
!146 = distinct !{!146, !12}
!147 = distinct !{!147, !12}
!148 = distinct !{!148, !12}
!149 = distinct !{!149, !12}
!150 = distinct !{!150, !12}
end_hunk_1
