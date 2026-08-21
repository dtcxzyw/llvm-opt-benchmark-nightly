Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/huffman_utils?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BuildHuffmanTable:bb.a
  %i.do = load i16, ptr %4, align 2, !tbaa !19
  %.sroa.441.0.insert.ext = zext i16 %i.do to i32
  %.sroa.441.0.insert.shift = shl nuw i32 %.sroa.441.0.insert.ext, 16 ; 2 uses
  %i.dp = sext i32 %i.c to i64                    ; 4 uses
  %i.dq = tail call i64 @llvm.smax.i64(i64 %i.dp, i64 1) ; 2 uses
  %min.iters.check = icmp slt i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.y
  %n.vec = and i64 %i.dq, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.441.0.insert.shift, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dr = sub nsw i64 %i.dp, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ds ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.du = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %broadcast.splat, ptr %i.dt, align 2
  store <4 x i32> %broadcast.splat, ptr %i.du, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %.critedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.y, %middle.block
  %indvars.iv339.ph = phi i64 [ %i.dp, %bb.y ], [ %i.dr, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %scalar.ph ], [ %indvars.iv339.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, -1 ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next340
  store i32 %.sroa.441.0.insert.shift, ptr %i.dw, align 2
  %i.dx = icmp sgt i64 %indvars.iv339, 1
  br i1 %i.dx, label %scalar.ph, label %.critedge, !llvm.loop !24

bb.z:                                             ; preds = %._crit_edge223
  %i.dy = add nsw i32 %i.c, -1                    ; 2 uses
  %.not228 = icmp slt i32 %1, 1
  br i1 %.not228, label %.lr.ph280, label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.z
  %i.dz = icmp eq ptr %0, null
  %i.ea = add nuw i32 %1, 1
  %wide.trip.count333 = zext i32 %i.ea to i64     ; 2 uses
  br i1 %i.dz, label %.lr.ph238.split.us, label %.lr.ph238.split

.lr.ph238.split.us:                               ; preds = %.lr.ph238, %bb.aa
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %bb.aa ], [ 1, %.lr.ph238 ] ; 2 uses
  %.0131236.us = phi i32 [ %i.ee, %bb.aa ], [ 1, %.lr.ph238 ]
  %.0133235.us = phi i32 [ %i.eg, %bb.aa ], [ 1, %.lr.ph238 ]
  %i.eb = shl nuw i32 %.0131236.us, 1             ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv330
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = sub nsw i32 %i.eb, %i.ed                ; 3 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph238.split.us
  %i.eg = add nsw i32 %i.eb, %.0133235.us         ; 2 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %.preheader204, label %.lr.ph238.split.us, !llvm.loop !25

.preheader204:                                    ; preds = %.loopexit, %bb.aa
  %.2149.lcssa = phi i32 [ 0, %bb.aa ], [ %.3150.lcssa, %.loopexit ]
  %.0135.lcssa = phi i32 [ 0, %bb.aa ], [ %.1136.lcssa, %.loopexit ]
  %.0133.lcssa = phi i32 [ %i.eg, %bb.aa ], [ %i.el, %.loopexit ] ; 2 uses
  %.0131.lcssa = phi i32 [ %i.ee, %bb.aa ], [ %i.eo, %.loopexit ]
  %i.eh = icmp slt i32 %1, 15
  br i1 %i.eh, label %.lr.ph280, label %._crit_edge281

.lr.ph280:                                        ; preds = %bb.z, %.preheader204
  %.0131.lcssa382 = phi i32 [ %.0131.lcssa, %.preheader204 ], [ 1, %bb.z ]
  %.0133.lcssa381 = phi i32 [ %.0133.lcssa, %.preheader204 ], [ 1, %bb.z ]
  %.0135.lcssa380 = phi i32 [ %.0135.lcssa, %.preheader204 ], [ 0, %bb.z ]
  %.2149.lcssa379 = phi i32 [ %.2149.lcssa, %.preheader204 ], [ 0, %bb.z ]
  %.not167 = icmp eq ptr %0, null                 ; 4 uses
  %i.ei = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ej = sext i32 %1 to i64
  br label %bb.ad

.lr.ph238.split:                                  ; preds = %.lr.ph238, %.loopexit
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %.loopexit ], [ 1, %.lr.ph238 ] ; 4 uses
  %.0131236 = phi i32 [ %i.eo, %.loopexit ], [ 1, %.lr.ph238 ]
  %.0133235 = phi i32 [ %i.el, %.loopexit ], [ 1, %.lr.ph238 ]
  %.0135234 = phi i32 [ %.1136.lcssa, %.loopexit ], [ 0, %.lr.ph238 ] ; 2 uses
  %.0142232 = phi i32 [ %i.fn, %.loopexit ], [ 2, %.lr.ph238 ] ; 2 uses
  %.2149229 = phi i32 [ %.3150.lcssa, %.loopexit ], [ 0, %.lr.ph238 ] ; 2 uses
  %i.ek = shl nuw i32 %.0131236, 1                ; 2 uses
  %i.el = add nsw i32 %i.ek, %.0133235            ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv325 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 3 uses
  %i.eo = sub nsw i32 %i.ek, %i.en                ; 3 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %.critedge, label %.preheader206

.preheader206:                                    ; preds = %.lr.ph238.split
  %i.eq = icmp sgt i32 %i.en, 0
  br i1 %i.eq, label %.lr.ph226, label %.loopexit

.lr.ph226:                                        ; preds = %.preheader206
  %i.er = trunc nuw nsw i64 %indvars.iv325 to i32
  %.sroa.03.0.insert.ext = and i32 %i.er, 255
  %i.es = trunc i64 %indvars.iv325 to i32
  %i.et = add i32 %i.es, -1
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = sext i32 %.2149229 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph226, %GetNextKey.exit
  %indvars.iv322 = phi i64 [ %i.ev, %.lr.ph226 ], [ %indvars.iv.next323, %GetNextKey.exit ] ; 2 uses
  %.1136225 = phi i32 [ %.0135234, %.lr.ph226 ], [ %i.fj, %GetNextKey.exit ] ; 3 uses
  %i.ew = phi i32 [ %i.en, %.lr.ph226 ], [ %i.fk, %GetNextKey.exit ] ; 2 uses
  %i.ex = getelementptr inbounds [2 x i8], ptr %4, i64 %indvars.iv322
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !19
  %i.ez = zext i32 %.1136225 to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ez
  %.sroa.45.0.insert.ext = zext i16 %i.ey to i32
  %.sroa.45.0.insert.shift = shl nuw i32 %.sroa.45.0.insert.ext, 16
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.45.0.insert.shift, %.sroa.03.0.insert.ext
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.0.i172 = phi i32 [ %i.c, %bb.ab ], [ %i.fb, %bb.ac ]
  %i.fb = sub nsw i32 %.0.i172, %.0142232         ; 3 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fc
  store i32 %.sroa.03.0.insert.insert, ptr %i.fd, align 2
  %i.fe = icmp sgt i32 %i.fb, 0
  br i1 %i.fe, label %bb.ac, label %ReplicateValue.exit173, !llvm.loop !26

ReplicateValue.exit173:                           ; preds = %bb.ac, %ReplicateValue.exit173
  %.0.i174 = phi i32 [ %i.fg, %ReplicateValue.exit173 ], [ %i.eu, %bb.ac ] ; 4 uses
  %i.ff = and i32 %.0.i174, %.1136225
  %.not.i = icmp eq i32 %i.ff, 0
  %i.fg = lshr i32 %.0.i174, 1
  br i1 %.not.i, label %GetNextKey.exit, label %ReplicateValue.exit173, !llvm.loop !27

GetNextKey.exit:                                  ; preds = %ReplicateValue.exit173
  %indvars.iv.next323 = add nsw i64 %indvars.iv322, 1 ; 2 uses
  %i.fh = add i32 %.0.i174, -1
  %i.fi = and i32 %i.fh, %.1136225
  %i.fj = add i32 %i.fi, %.0.i174                 ; 2 uses
  %i.fk = add nsw i32 %i.ew, -1
  %i.fl = icmp sgt i32 %i.ew, 1
  br i1 %i.fl, label %bb.ab, label %..loopexit_crit_edge, !llvm.loop !28

..loopexit_crit_edge:                             ; preds = %GetNextKey.exit
  %i.fm = trunc nsw i64 %indvars.iv.next323 to i32
  store i32 0, ptr %i.em, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader206
  %.3150.lcssa = phi i32 [ %i.fm, %..loopexit_crit_edge ], [ %.2149229, %.preheader206 ] ; 2 uses
  %.1136.lcssa = phi i32 [ %i.fj, %..loopexit_crit_edge ], [ %.0135234, %.preheader206 ] ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %i.fn = shl i32 %.0142232, 1
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count333
  br i1 %exitcond329.not, label %.preheader204, label %.lr.ph238.split, !llvm.loop !25

bb.ad:                                            ; preds = %.lr.ph280, %._crit_edge253
  %indvars.iv335 = phi i64 [ %i.ej, %.lr.ph280 ], [ %indvars.iv.next336, %._crit_edge253 ] ; 3 uses
  %.0120277 = phi ptr [ %0, %.lr.ph280 ], [ %.1121.lcssa, %._crit_edge253 ] ; 3 uses
  %.0124276 = phi i32 [ %i.c, %.lr.ph280 ], [ %.1125.lcssa, %._crit_edge253 ] ; 3 uses
  %.0128275 = phi i32 [ %i.c, %.lr.ph280 ], [ %.1129.lcssa, %._crit_edge253 ] ; 3 uses
  %.1132274 = phi i32 [ %.0131.lcssa382, %.lr.ph280 ], [ %i.fs, %._crit_edge253 ]
  %.1134273 = phi i32 [ %.0133.lcssa381, %.lr.ph280 ], [ %i.fp, %._crit_edge253 ]
  %.3138272 = phi i32 [ %.0135.lcssa380, %.lr.ph280 ], [ %.4.lcssa, %._crit_edge253 ] ; 3 uses
  %.0139271 = phi i32 [ -1, %.lr.ph280 ], [ %.1140.lcssa, %._crit_edge253 ] ; 3 uses
  %.1143269 = phi i32 [ 2, %.lr.ph280 ], [ %i.iu, %._crit_edge253 ] ; 3 uses
  %.5267 = phi i32 [ %.2149.lcssa379, %.lr.ph280 ], [ %.6.lcssa, %._crit_edge253 ] ; 3 uses
  %indvars.iv.next336 = add nsw i64 %indvars.iv335, 1 ; 5 uses
  %i.fo = shl nuw i32 %.1132274, 1                ; 2 uses
  %i.fp = add nsw i32 %i.fo, %.1134273            ; 2 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next336 ; 5 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3  ; 2 uses
  %i.fs = sub nsw i32 %i.fo, %i.fr                ; 2 uses
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.fu = icmp sgt i32 %i.fr, 0
  br i1 %i.fu, label %.lr.ph252, label %._crit_edge253

.lr.ph252:                                        ; preds = %.preheader
  %i.fv = icmp eq i64 %indvars.iv335, 14
  %i.fw = trunc i64 %indvars.iv.next336 to i32
  %i.fx = sub i32 %i.fw, %1                       ; 2 uses
  %i.fy = shl nuw i32 1, %i.fx                    ; 4 uses
  %.sroa.0.0.insert.ext = and i32 %i.fx, 255      ; 2 uses
  %i.fz = trunc nsw i64 %indvars.iv335 to i32
  %i.ga = shl nuw nsw i32 1, %i.fz                ; 2 uses
  br i1 %i.fv, label %.lr.ph252.split.us, label %.lr.ph252.split

.lr.ph252.split.us:                               ; preds = %.lr.ph252, %GetNextKey.exit179.us
  %.1121251.us = phi ptr [ %.3123188.us, %GetNextKey.exit179.us ], [ %.0120277, %.lr.ph252 ] ; 4 uses
  %.1125250.us = phi i32 [ %.2126187.us, %GetNextKey.exit179.us ], [ %.0124276, %.lr.ph252 ] ; 3 uses
  %.1129249.us = phi i32 [ %.2130186.us, %GetNextKey.exit179.us ], [ %.0128275, %.lr.ph252 ] ; 3 uses
  %.4248.us = phi i32 [ %i.hc, %GetNextKey.exit179.us ], [ %.3138272, %.lr.ph252 ] ; 4 uses
  %.1140247.us = phi i32 [ %.2141185.us, %GetNextKey.exit179.us ], [ %.0139271, %.lr.ph252 ] ; 3 uses
  %.6246.us = phi i32 [ %.7.us, %GetNextKey.exit179.us ], [ %.5267, %.lr.ph252 ] ; 4 uses
  %i.gb = and i32 %.4248.us, %i.dy                ; 4 uses
  %.not166.us = icmp eq i32 %i.gb, %.1140247.us
  br i1 %.not166.us, label %bb.ae, label %NextTableBitSize.exit.us

NextTableBitSize.exit.us:                         ; preds = %.lr.ph252.split.us
  %i.gc = add nsw i32 %i.fy, %.1125250.us         ; 2 uses
  br i1 %.not167, label %ReplicateValue.exit176.us, label %.thread189.us

.thread189.us:                                    ; preds = %NextTableBitSize.exit.us
  %i.gd = sext i32 %.1129249.us to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %.1121251.us, i64 %i.gd ; 2 uses
  %i.gf = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gf ; 2 uses
  store i8 15, ptr %i.gg, align 2, !tbaa !29
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gh, %i.ei
  %i.gj = lshr exact i64 %i.gi, 2
  %i.gk = sub nsw i64 %i.gj, %i.gf
  %i.gl = trunc i64 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !31
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph252.split.us
  br i1 %.not167, label %ReplicateValue.exit176.us, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread189.us
  %.3123198.us = phi ptr [ %i.ge, %.thread189.us ], [ %.1121251.us, %bb.ae ] ; 2 uses
  %.2126197.us = phi i32 [ %i.gc, %.thread189.us ], [ %.1125250.us, %bb.ae ]
  %.2130196.us = phi i32 [ %i.fy, %.thread189.us ], [ %.1129249.us, %bb.ae ] ; 2 uses
  %.2141195.us = phi i32 [ %i.gb, %.thread189.us ], [ %.1140247.us, %bb.ae ]
  %i.gn = sext i32 %.6246.us to i64
  %i.go = getelementptr inbounds [2 x i8], ptr %4, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !19
  %i.gq = lshr i32 %.4248.us, %1
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.3123198.us, i64 %i.gr
  %.sroa.42.0.insert.ext.us = zext i16 %i.gp to i32
  %.sroa.42.0.insert.shift.us = shl nuw i32 %.sroa.42.0.insert.ext.us, 16
  %.sroa.0.0.insert.insert.us = or disjoint i32 %.sroa.42.0.insert.shift.us, %.sroa.0.0.insert.ext
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.0.i175.us = phi i32 [ %.2130196.us, %bb.af ], [ %i.gt, %bb.ag ]
  %i.gt = sub nsw i32 %.0.i175.us, %.1143269      ; 3 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gu
  store i32 %.sroa.0.0.insert.insert.us, ptr %i.gv, align 2
  %i.gw = icmp sgt i32 %i.gt, 0
  br i1 %i.gw, label %bb.ag, label %ReplicateValue.exit176.us.loopexit, !llvm.loop !26

ReplicateValue.exit176.us.loopexit:               ; preds = %bb.ag
  %i.gx = add nsw i32 %.6246.us, 1
  br label %ReplicateValue.exit176.us

ReplicateValue.exit176.us:                        ; preds = %ReplicateValue.exit176.us.loopexit, %bb.ae, %NextTableBitSize.exit.us
  %.3123188.us = phi ptr [ %.1121251.us, %NextTableBitSize.exit.us ], [ %.1121251.us, %bb.ae ], [ %.3123198.us, %ReplicateValue.exit176.us.loopexit ] ; 2 uses
  %.2126187.us = phi i32 [ %i.gc, %NextTableBitSize.exit.us ], [ %.1125250.us, %bb.ae ], [ %.2126197.us, %ReplicateValue.exit176.us.loopexit ] ; 2 uses
  %.2130186.us = phi i32 [ %i.fy, %NextTableBitSize.exit.us ], [ %.1129249.us, %bb.ae ], [ %.2130196.us, %ReplicateValue.exit176.us.loopexit ] ; 2 uses
  %.2141185.us = phi i32 [ %i.gb, %NextTableBitSize.exit.us ], [ %.1140247.us, %bb.ae ], [ %.2141195.us, %ReplicateValue.exit176.us.loopexit ] ; 2 uses
  %.7.us = phi i32 [ %.6246.us, %NextTableBitSize.exit.us ], [ %.6246.us, %bb.ae ], [ %i.gx, %ReplicateValue.exit176.us.loopexit ] ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %ReplicateValue.exit176.us
  %.0.i177.us = phi i32 [ %i.ga, %ReplicateValue.exit176.us ], [ %i.gz, %bb.ah ] ; 4 uses
  %i.gy = and i32 %.0.i177.us, %.4248.us
  %.not.i178.us = icmp eq i32 %i.gy, 0
  %i.gz = lshr i32 %.0.i177.us, 1
  br i1 %.not.i178.us, label %GetNextKey.exit179.us, label %bb.ah, !llvm.loop !27

GetNextKey.exit179.us:                            ; preds = %bb.ah
  %i.ha = add nsw i32 %.0.i177.us, -1
  %i.hb = and i32 %i.ha, %.4248.us
  %i.hc = add i32 %i.hb, %.0.i177.us              ; 2 uses
  %i.hd = load i32, ptr %i.fq, align 4, !tbaa !3  ; 2 uses
  %i.he = add nsw i32 %i.hd, -1
  store i32 %i.he, ptr %i.fq, align 4, !tbaa !3
  %i.hf = icmp sgt i32 %i.hd, 1
  br i1 %i.hf, label %.lr.ph252.split.us, label %._crit_edge253, !llvm.loop !32

.lr.ph252.split:                                  ; preds = %.lr.ph252, %GetNextKey.exit179
  %.1121251 = phi ptr [ %.3123188, %GetNextKey.exit179 ], [ %.0120277, %.lr.ph252 ] ; 4 uses
  %.1125250 = phi i32 [ %.2126187, %GetNextKey.exit179 ], [ %.0124276, %.lr.ph252 ] ; 3 uses
  %.1129249 = phi i32 [ %.2130186, %GetNextKey.exit179 ], [ %.0128275, %.lr.ph252 ] ; 3 uses
  %.4248 = phi i32 [ %i.iq, %GetNextKey.exit179 ], [ %.3138272, %.lr.ph252 ] ; 4 uses
  %.1140247 = phi i32 [ %.2141185, %GetNextKey.exit179 ], [ %.0139271, %.lr.ph252 ] ; 3 uses
  %.6246 = phi i32 [ %.7, %GetNextKey.exit179 ], [ %.5267, %.lr.ph252 ] ; 4 uses
  %i.hg = and i32 %.4248, %i.dy                   ; 4 uses
  %.not166 = icmp eq i32 %i.hg, %.1140247
  br i1 %.not166, label %bb.aj, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph252.split
  %i.hh = sext i32 %.1129249 to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1121251, i64 %i.hh ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next336, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ai ] ; 3 uses
  %.013.i = phi i32 [ %i.fy, %.lr.ph.preheader.i ], [ %i.hn, %bb.ai ]
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hl = sub nsw i32 %.013.i, %i.hk              ; 2 uses
  %i.hm = icmp slt i32 %i.hl, 1
  br i1 %i.hm, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hn = shl nuw i32 %i.hl, 1
  %i.ho = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.ho, 15
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.hp = trunc nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.ai, %._crit_edge.loopexit.split.loop.exit.i
  %.010.lcssa.ph.i = phi i32 [ %i.hp, %._crit_edge.loopexit.split.loop.exit.i ], [ 15, %bb.ai ] ; 2 uses
  %.pre.i = sub nsw i32 %.010.lcssa.ph.i, %1
  %i.hq = shl nuw i32 1, %.pre.i                  ; 3 uses
  %i.hr = add nsw i32 %i.hq, %.1125250            ; 2 uses
  br i1 %.not167, label %ReplicateValue.exit176, label %.thread189

.thread189:                                       ; preds = %._crit_edge.loopexit.i
  %i.hs = trunc i32 %.010.lcssa.ph.i to i8
  %i.ht = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ht ; 2 uses
  store i8 %i.hs, ptr %i.hu, align 2, !tbaa !29
  %i.hv = ptrtoint ptr %i.hi to i64
  %i.hw = sub i64 %i.hv, %i.ei
  %i.hx = lshr exact i64 %i.hw, 2
  %i.hy = sub nsw i64 %i.hx, %i.ht
  %i.hz = trunc i64 %i.hy to i16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 2
  store i16 %i.hz, ptr %i.ia, align 2, !tbaa !31
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph252.split
  br i1 %.not167, label %ReplicateValue.exit176, label %bb.ak

bb.ak:                                            ; preds = %.thread189, %bb.aj
  %.3123198 = phi ptr [ %i.hi, %.thread189 ], [ %.1121251, %bb.aj ] ; 2 uses
  %.2126197 = phi i32 [ %i.hr, %.thread189 ], [ %.1125250, %bb.aj ]
  %.2130196 = phi i32 [ %i.hq, %.thread189 ], [ %.1129249, %bb.aj ] ; 2 uses
  %.2141195 = phi i32 [ %i.hg, %.thread189 ], [ %.1140247, %bb.aj ]
  %i.ib = sext i32 %.6246 to i64
  %i.ic = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !19
  %i.ie = lshr i32 %.4248, %1
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.3123198, i64 %i.if
  %.sroa.42.0.insert.ext = zext i16 %i.id to i32
  %.sroa.42.0.insert.shift = shl nuw i32 %.sroa.42.0.insert.ext, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.42.0.insert.shift, %.sroa.0.0.insert.ext
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.0.i175 = phi i32 [ %.2130196, %bb.ak ], [ %i.ih, %bb.al ]
  %i.ih = sub nsw i32 %.0.i175, %.1143269         ; 3 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ii
  store i32 %.sroa.0.0.insert.insert, ptr %i.ij, align 2
  %i.ik = icmp sgt i32 %i.ih, 0
  br i1 %i.ik, label %bb.al, label %ReplicateValue.exit176.loopexit, !llvm.loop !26

ReplicateValue.exit176.loopexit:                  ; preds = %bb.al
  %i.il = add nsw i32 %.6246, 1
  br label %ReplicateValue.exit176

ReplicateValue.exit176:                           ; preds = %ReplicateValue.exit176.loopexit, %._crit_edge.loopexit.i, %bb.aj
  %.3123188 = phi ptr [ %.1121251, %._crit_edge.loopexit.i ], [ %.1121251, %bb.aj ], [ %.3123198, %ReplicateValue.exit176.loopexit ] ; 2 uses
  %.2126187 = phi i32 [ %i.hr, %._crit_edge.loopexit.i ], [ %.1125250, %bb.aj ], [ %.2126197, %ReplicateValue.exit176.loopexit ] ; 2 uses
  %.2130186 = phi i32 [ %i.hq, %._crit_edge.loopexit.i ], [ %.1129249, %bb.aj ], [ %.2130196, %ReplicateValue.exit176.loopexit ] ; 2 uses
  %.2141185 = phi i32 [ %i.hg, %._crit_edge.loopexit.i ], [ %.1140247, %bb.aj ], [ %.2141195, %ReplicateValue.exit176.loopexit ] ; 2 uses
  %.7 = phi i32 [ %.6246, %._crit_edge.loopexit.i ], [ %.6246, %bb.aj ], [ %i.il, %ReplicateValue.exit176.loopexit ] ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %ReplicateValue.exit176
  %.0.i177 = phi i32 [ %i.ga, %ReplicateValue.exit176 ], [ %i.in, %bb.am ] ; 4 uses
  %i.im = and i32 %.0.i177, %.4248
  %.not.i178 = icmp eq i32 %i.im, 0
  %i.in = lshr i32 %.0.i177, 1
  br i1 %.not.i178, label %GetNextKey.exit179, label %bb.am, !llvm.loop !27

GetNextKey.exit179:                               ; preds = %bb.am
  %i.io = add nsw i32 %.0.i177, -1
  %i.ip = and i32 %i.io, %.4248
  %i.iq = add i32 %i.ip, %.0.i177                 ; 2 uses
  %i.ir = load i32, ptr %i.fq, align 4, !tbaa !3  ; 2 uses
  %i.is = add nsw i32 %i.ir, -1
  store i32 %i.is, ptr %i.fq, align 4, !tbaa !3
  %i.it = icmp sgt i32 %i.ir, 1
  br i1 %i.it, label %.lr.ph252.split, label %._crit_edge253, !llvm.loop !32

._crit_edge253:                                   ; preds = %GetNextKey.exit179, %GetNextKey.exit179.us, %.preheader
  %.6.lcssa = phi i32 [ %.5267, %.preheader ], [ %.7.us, %GetNextKey.exit179.us ], [ %.7, %GetNextKey.exit179 ]
  %.1140.lcssa = phi i32 [ %.0139271, %.preheader ], [ %.2141185.us, %GetNextKey.exit179.us ], [ %.2141185, %GetNextKey.exit179 ]
  %.4.lcssa = phi i32 [ %.3138272, %.preheader ], [ %i.hc, %GetNextKey.exit179.us ], [ %i.iq, %GetNextKey.exit179 ]
  %.1129.lcssa = phi i32 [ %.0128275, %.preheader ], [ %.2130186.us, %GetNextKey.exit179.us ], [ %.2130186, %GetNextKey.exit179 ]
  %.1125.lcssa = phi i32 [ %.0124276, %.preheader ], [ %.2126187.us, %GetNextKey.exit179.us ], [ %.2126187, %GetNextKey.exit179 ] ; 2 uses
  %.1121.lcssa = phi ptr [ %.0120277, %.preheader ], [ %.3123188.us, %GetNextKey.exit179.us ], [ %.3123188, %GetNextKey.exit179 ]
  %i.iu = shl i32 %.1143269, 1
  %exitcond338.not = icmp eq i64 %indvars.iv.next336, 15
  br i1 %exitcond338.not, label %._crit_edge281.loopexit, label %bb.ad, !llvm.loop !34

._crit_edge281.loopexit:                          ; preds = %._crit_edge253
  %.pre342 = load i32, ptr %i.cu, align 4, !tbaa !3
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %.preheader204
  %i.iv = phi i32 [ %i.dm, %.preheader204 ], [ %.pre342, %._crit_edge281.loopexit ]
  %.1134.lcssa = phi i32 [ %.0133.lcssa, %.preheader204 ], [ %i.fp, %._crit_edge281.loopexit ]
  %.0124.lcssa = phi i32 [ %i.c, %.preheader204 ], [ %.1125.lcssa, %._crit_edge281.loopexit ]
  %i.iw = shl nsw i32 %i.iv, 1
  %i.ix = add nsw i32 %i.iw, -1
  %.not165 = icmp eq i32 %.1134.lcssa, %i.ix
  %cond.fr = freeze i1 %.not165
  %spec.select = select i1 %cond.fr, i32 %.0124.lcssa, i32 0
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.t, %.lr.ph238.split, %.lr.ph238.split.us, %bb.ad, %scalar.ph, %middle.block, %bb.c, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %._crit_edge281, %bb.x, %._crit_edge
  %.3 = phi i32 [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %._crit_edge ], [ 0, %.lr.ph238.split.us ], [ 0, %bb.t ], [ %i.c, %bb.x ], [ %i.c, %middle.block ], [ %spec.select, %._crit_edge281 ], [ %i.c, %scalar.ph ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.lr.ph238.split ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LHuffmanTablesAllocate(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.c = sext i32 %0 to i64
  %i.d = tail call ptr @WebPSafeMalloc(i64 noundef %i.c, i64 noundef 4) #7 ; 3 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !13
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %0, ptr %i.g, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LHuffmanTablesDeallocate(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @WebPSafeFree(ptr noundef %i.d) #7
  store ptr null, ptr %0, align 8, !tbaa !13
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.014 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = load ptr, ptr %.014, align 8, !tbaa !13
  tail call void @WebPSafeFree(ptr noundef %i.g) #7
  tail call void @WebPSafeFree(ptr noundef nonnull %.014) #7
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 32}
!8 = !{!"HuffmanTables", !9, i64 0, !11, i64 32}
!9 = !{!"HuffmanTablesSegment", !10, i64 0, !10, i64 8, !11, i64 16, !4, i64 24}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS20HuffmanTablesSegment", !10, i64 0}
!12 = !{!9, !10, i64 8}
!13 = !{!9, !10, i64 0}
!14 = !{!9, !4, i64 24}
!15 = !{!9, !11, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = distinct !{!21, !17, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !17, !23, !22}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = !{!30, !5, i64 0}
!30 = !{!"", !5, i64 0, !20, i64 2}
!31 = !{!30, !20, i64 2}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
end_hunk_0
