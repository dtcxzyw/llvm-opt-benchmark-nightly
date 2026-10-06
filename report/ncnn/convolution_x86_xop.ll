Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_xop?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined:bb.a
  %i.af = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  br label %.lr.ph327

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %._crit_edge291
  %i.ag = phi i32 [ %i.ds, %._crit_edge291 ], [ %i.p, %.lr.ph296.preheader ]
  %i.ah = phi i32 [ %i.dt, %._crit_edge291 ], [ %i.q, %.lr.ph296.preheader ]
  %i.ai = phi i32 [ %i.du, %._crit_edge291 ], [ %i.q, %.lr.ph296.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.dv, %._crit_edge291 ], [ %.pre434, %.lr.ph296.preheader ] ; 2 uses
  %.0232294 = phi ptr [ %.3.lcssa, %._crit_edge291 ], [ %i.x, %.lr.ph296.preheader ] ; 2 uses
  %.0241293 = phi i32 [ %i.dw, %._crit_edge291 ], [ 0, %.lr.ph296.preheader ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !28
  %i.al = mul nsw i32 %i.ai, %i.z
  %i.am = add nsw i32 %i.al, %.0241293            ; 2 uses
  %i.an = shl nsw i32 %i.am, 3
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.aj, 7
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph296, %.lr.ph
  %.1233274 = phi ptr [ %i.bx, %.lr.ph ], [ %.0232294, %.lr.ph296 ] ; 5 uses
  %.0251273 = phi ptr [ %i.bw, %.lr.ph ], [ %i.ap, %.lr.ph296 ] ; 5 uses
  %.0254272 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.lr.ph296 ]
  %i.ar = load <8 x float>, ptr %.0251273, align 1, !tbaa !30 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0251273, i64 32
  %i.at = load <8 x float>, ptr %i.as, align 1, !tbaa !30 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0251273, i64 64
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !30 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0251273, i64 96
  %i.ax = load <8 x float>, ptr %i.aw, align 1, !tbaa !30 ; 2 uses
  %i.ay = shufflevector <8 x float> %i.ar, <8 x float> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.az = shufflevector <8 x float> %i.ar, <8 x float> %i.av, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ba = shufflevector <8 x float> %i.at, <8 x float> %i.ax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bb = shufflevector <8 x float> %i.at, <8 x float> %i.ax, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bc = shufflevector <8 x float> %i.ay, <8 x float> %i.az, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bd = shufflevector <8 x float> %i.ay, <8 x float> %i.az, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.be = shufflevector <8 x float> %i.ba, <8 x float> %i.bb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bf = shufflevector <8 x float> %i.ba, <8 x float> %i.bb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bg = bitcast <8 x float> %i.bc to <4 x double> ; 2 uses
  %i.bh = bitcast <8 x float> %i.be to <4 x double> ; 2 uses
  %i.bi = shufflevector <4 x double> %i.bg, <4 x double> %i.bh, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bj = shufflevector <4 x double> %i.bg, <4 x double> %i.bh, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bk = bitcast <8 x float> %i.bd to <4 x double> ; 2 uses
  %i.bl = bitcast <8 x float> %i.bf to <4 x double> ; 2 uses
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bn = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.bi, ptr %.1233274, align 1, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %.1233274, i64 32
  store <4 x double> %i.bj, ptr %i.bo, align 1, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %.1233274, i64 64
  store <4 x double> %i.bm, ptr %i.bp, align 1, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.1233274, i64 96
  store <4 x double> %i.bn, ptr %i.bq, align 1, !tbaa !30
  %i.br = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.bs = load i32, ptr %2, align 4, !tbaa !10
  %i.bt = shl i32 %i.br, 3
  %i.bu = mul i32 %i.bt, %i.bs
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %.0251273, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1233274, i64 128 ; 2 uses
  %i.by = add nuw nsw i32 %.0254272, 8            ; 3 uses
  %i.bz = or disjoint i32 %i.by, 7
  %i.ca = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !346

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre438 = mul nsw i32 %i.br, %i.z
  %.pre439 = add nsw i32 %.pre438, %.0241293      ; 2 uses
  %.pre441 = shl nsw i32 %.pre439, 3
  %.pre443 = sext i32 %.pre441 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph296
  %.pre-phi444 = phi i64 [ %.pre443, %._crit_edge.loopexit ], [ %i.ao, %.lr.ph296 ]
  %.pre-phi440 = phi i32 [ %.pre439, %._crit_edge.loopexit ], [ %i.am, %.lr.ph296 ] ; 2 uses
  %i.cc = phi i32 [ %i.br, %._crit_edge.loopexit ], [ %i.ag, %.lr.ph296 ]
  %i.cd = phi i32 [ %i.br, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph296 ]
  %i.ce = phi i32 [ %i.br, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph296 ]
  %i.cf = phi i32 [ %i.ca, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph296 ] ; 2 uses
  %.0254.lcssa = phi i32 [ %i.by, %._crit_edge.loopexit ], [ 0, %.lr.ph296 ] ; 3 uses
  %.0251.lcssa = phi ptr [ %i.bw, %._crit_edge.loopexit ], [ %i.ap, %.lr.ph296 ]
  %.1233.lcssa = phi ptr [ %i.bx, %._crit_edge.loopexit ], [ %.0232294, %.lr.ph296 ] ; 2 uses
  %i.cg = sub nsw i64 0, %.pre-phi444
  %i.ch = getelementptr inbounds [2 x i8], ptr %.0251.lcssa, i64 %i.cg
  %i.ci = shl nsw i32 %.pre-phi440, 1
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.cj ; 2 uses
  %i.cl = or disjoint i32 %.0254.lcssa, 1
  %i.cm = icmp slt i32 %i.cl, %i.cf
  br i1 %i.cm, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %._crit_edge, %.lr.ph281
  %.2234279 = phi ptr [ %i.cu, %.lr.ph281 ], [ %.1233.lcssa, %._crit_edge ] ; 2 uses
  %.1252278 = phi ptr [ %i.ct, %.lr.ph281 ], [ %i.ck, %._crit_edge ] ; 2 uses
  %.1255277 = phi i32 [ %i.cv, %.lr.ph281 ], [ %.0254.lcssa, %._crit_edge ]
  %i.cn = load <8 x float>, ptr %.1252278, align 1, !tbaa !30
  store <8 x float> %i.cn, ptr %.2234279, align 1, !tbaa !30
  %i.co = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.cp = load i32, ptr %2, align 4, !tbaa !10
  %i.cq = shl i32 %i.co, 1
  %i.cr = mul i32 %i.cq, %i.cp
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %.1252278, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2234279, i64 32 ; 2 uses
  %i.cv = add nuw nsw i32 %.1255277, 2            ; 3 uses
  %i.cw = or disjoint i32 %i.cv, 1
  %i.cx = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph281, label %._crit_edge282.loopexit, !llvm.loop !347

._crit_edge282.loopexit:                          ; preds = %.lr.ph281
  %.pre445 = mul nsw i32 %i.co, %i.z
  %.pre447 = add nsw i32 %.pre445, %.0241293      ; 2 uses
  %.pre449 = shl nsw i32 %.pre447, 1
  %.pre451 = sext i32 %.pre449 to i64
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %._crit_edge
  %.pre-phi452 = phi i64 [ %.pre451, %._crit_edge282.loopexit ], [ %i.cj, %._crit_edge ]
  %.pre-phi448 = phi i32 [ %.pre447, %._crit_edge282.loopexit ], [ %.pre-phi440, %._crit_edge ]
  %i.cz = phi i32 [ %i.co, %._crit_edge282.loopexit ], [ %i.cc, %._crit_edge ]
  %i.da = phi i32 [ %i.co, %._crit_edge282.loopexit ], [ %i.cd, %._crit_edge ]
  %i.db = phi i32 [ %i.co, %._crit_edge282.loopexit ], [ %i.ce, %._crit_edge ]
  %i.dc = phi i32 [ %i.cx, %._crit_edge282.loopexit ], [ %i.cf, %._crit_edge ] ; 2 uses
  %.1255.lcssa = phi i32 [ %i.cv, %._crit_edge282.loopexit ], [ %.0254.lcssa, %._crit_edge ] ; 2 uses
  %.1252.lcssa = phi ptr [ %i.ct, %._crit_edge282.loopexit ], [ %i.ck, %._crit_edge ]
  %.2234.lcssa = phi ptr [ %i.cu, %._crit_edge282.loopexit ], [ %.1233.lcssa, %._crit_edge ] ; 2 uses
  %i.dd = icmp slt i32 %.1255.lcssa, %i.dc
  br i1 %i.dd, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %._crit_edge282
  %i.de = sub nsw i64 0, %.pre-phi452
  %i.df = getelementptr inbounds [2 x i8], ptr %.1252.lcssa, i64 %i.de
  %i.dg = sext i32 %.pre-phi448 to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.dg
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.3288 = phi ptr [ %i.do, %.lr.ph290 ], [ %.2234.lcssa, %.lr.ph290.preheader ] ; 2 uses
  %.2253287 = phi ptr [ %i.dn, %.lr.ph290 ], [ %i.dh, %.lr.ph290.preheader ] ; 2 uses
  %.2256286 = phi i32 [ %i.dp, %.lr.ph290 ], [ %.1255.lcssa, %.lr.ph290.preheader ]
  %i.di = load <2 x i64>, ptr %.2253287, align 1, !tbaa !30
  store <2 x i64> %i.di, ptr %.3288, align 16, !tbaa !30
  %i.dj = load i32, ptr %4, align 4, !tbaa !10    ; 4 uses
  %i.dk = load i32, ptr %2, align 4, !tbaa !10
  %i.dl = mul nsw i32 %i.dk, %i.dj
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [2 x i8], ptr %.2253287, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.3288, i64 16 ; 2 uses
  %i.dp = add nuw nsw i32 %.2256286, 1            ; 2 uses
  %i.dq = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph290, label %._crit_edge291, !llvm.loop !348

._crit_edge291:                                   ; preds = %.lr.ph290, %._crit_edge282
  %i.ds = phi i32 [ %i.cz, %._crit_edge282 ], [ %i.dj, %.lr.ph290 ] ; 2 uses
  %i.dt = phi i32 [ %i.da, %._crit_edge282 ], [ %i.dj, %.lr.ph290 ] ; 2 uses
  %i.du = phi i32 [ %i.db, %._crit_edge282 ], [ %i.dj, %.lr.ph290 ] ; 3 uses
  %i.dv = phi i32 [ %i.dc, %._crit_edge282 ], [ %i.dq, %.lr.ph290 ]
  %.3.lcssa = phi ptr [ %.2234.lcssa, %._crit_edge282 ], [ %i.do, %.lr.ph290 ] ; 2 uses
  %i.dw = add nuw nsw i32 %.0241293, 8            ; 3 uses
  %i.dx = or disjoint i32 %i.dw, 7
  %i.dy = icmp slt i32 %i.dx, %i.du
  br i1 %i.dy, label %.lr.ph296, label %.preheader269, !llvm.loop !349

.preheader268:                                    ; preds = %._crit_edge323, %.preheader269
  %i.dz = phi i32 [ %i.aa, %.preheader269 ], [ %i.go, %._crit_edge323 ] ; 2 uses
  %i.ea = phi i32 [ %i.ab, %.preheader269 ], [ %i.gp, %._crit_edge323 ] ; 2 uses
  %i.eb = phi i32 [ %i.ac, %.preheader269 ], [ %i.gq, %._crit_edge323 ] ; 2 uses
  %.1242.lcssa = phi i32 [ %.0241.lcssa, %.preheader269 ], [ %i.is, %._crit_edge323 ] ; 3 uses
  %.4.lcssa = phi ptr [ %.0232.lcssa, %.preheader269 ], [ %.7.lcssa, %._crit_edge323 ] ; 2 uses
  %i.ec = or disjoint i32 %.1242.lcssa, 1
  %i.ed = icmp slt i32 %i.ec, %i.eb
  br i1 %i.ed, label %.lr.ph358.preheader, label %.preheader

.lr.ph358.preheader:                              ; preds = %.preheader268
  %.pre436 = load i32, ptr %6, align 4, !tbaa !10
  %i.ee = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br label %.lr.ph358

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %._crit_edge323
  %i.ef = phi i32 [ %i.go, %._crit_edge323 ], [ %i.aa, %.lr.ph327.preheader ]
  %i.eg = phi i32 [ %i.gp, %._crit_edge323 ], [ %i.ab, %.lr.ph327.preheader ]
  %i.eh = phi i32 [ %i.gq, %._crit_edge323 ], [ %i.ac, %.lr.ph327.preheader ] ; 2 uses
  %i.ei = phi i32 [ %i.gr, %._crit_edge323 ], [ %.pre435, %.lr.ph327.preheader ] ; 2 uses
  %.4326 = phi ptr [ %.7.lcssa, %._crit_edge323 ], [ %.0232.lcssa, %.lr.ph327.preheader ] ; 2 uses
  %.1242325 = phi i32 [ %i.is, %._crit_edge323 ], [ %.0241.lcssa, %.lr.ph327.preheader ] ; 4 uses
  %i.ej = load ptr, ptr %5, align 8, !tbaa !28
  %i.ek = mul nsw i32 %i.eh, %i.af
  %i.el = add nsw i32 %i.ek, %.1242325            ; 2 uses
  %i.em = shl nsw i32 %i.el, 3
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.en ; 2 uses
  %i.ep = icmp sgt i32 %i.ei, 7
  br i1 %i.ep, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %.lr.ph327, %.lr.ph303
  %.5301 = phi ptr [ %i.fm, %.lr.ph303 ], [ %.4326, %.lr.ph327 ] ; 5 uses
  %.0245300 = phi i32 [ %i.fn, %.lr.ph303 ], [ 0, %.lr.ph327 ]
  %.0248299 = phi ptr [ %i.fl, %.lr.ph303 ], [ %i.eo, %.lr.ph327 ] ; 3 uses
  %7 = load <8 x i32>, ptr %.0248299, align 16, !tbaa !30 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0248299, i64 32
  %8 = load <8 x i32>, ptr %i.eq, align 16, !tbaa !30 ; 2 uses
  %i.er = shufflevector <8 x i32> %7, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.es = bitcast <4 x i32> %i.er to <2 x i64>    ; 2 uses
  %i.et = shufflevector <8 x i32> %7, <8 x i32> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.eu = bitcast <4 x i32> %i.et to <2 x i64>    ; 2 uses
  %i.ev = shufflevector <8 x i32> %8, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ew = bitcast <4 x i32> %i.ev to <2 x i64>    ; 2 uses
  %i.ex = shufflevector <8 x i32> %8, <8 x i32> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ey = bitcast <4 x i32> %i.ex to <2 x i64>    ; 2 uses
  %i.ez = shufflevector <2 x i64> %i.es, <2 x i64> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x i64> %i.es, <2 x i64> %i.ew, <2 x i32> <i32 1, i32 3>
  %i.fb = shufflevector <2 x i64> %i.eu, <2 x i64> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fc = shufflevector <2 x i64> %i.eu, <2 x i64> %i.ey, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.ez, ptr %.5301, align 1, !tbaa !30
  %i.fd = getelementptr inbounds nuw i8, ptr %.5301, i64 16
  store <2 x i64> %i.fa, ptr %i.fd, align 1, !tbaa !30
  %i.fe = getelementptr inbounds nuw i8, ptr %.5301, i64 32
  store <2 x i64> %i.fb, ptr %i.fe, align 1, !tbaa !30
  %i.ff = getelementptr inbounds nuw i8, ptr %.5301, i64 48
  store <2 x i64> %i.fc, ptr %i.ff, align 1, !tbaa !30
  %i.fg = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.fh = load i32, ptr %2, align 4, !tbaa !10
  %i.fi = shl i32 %i.fg, 3
  %i.fj = mul i32 %i.fi, %i.fh
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [2 x i8], ptr %.0248299, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.5301, i64 64 ; 2 uses
  %i.fn = add nuw nsw i32 %.0245300, 8            ; 3 uses
  %i.fo = or disjoint i32 %i.fn, 7
  %i.fp = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.fq = icmp slt i32 %i.fo, %i.fp
  br i1 %i.fq, label %.lr.ph303, label %._crit_edge304.loopexit, !llvm.loop !350

._crit_edge304.loopexit:                          ; preds = %.lr.ph303
  %.pre453 = mul nsw i32 %i.fg, %i.af
  %.pre455 = add nsw i32 %.pre453, %.1242325      ; 2 uses
  %.pre457 = shl nsw i32 %.pre455, 3
  %.pre459 = sext i32 %.pre457 to i64
  br label %._crit_edge304

._crit_edge304:                                   ; preds = %._crit_edge304.loopexit, %.lr.ph327
  %.pre-phi460 = phi i64 [ %.pre459, %._crit_edge304.loopexit ], [ %i.en, %.lr.ph327 ]
  %.pre-phi456 = phi i32 [ %.pre455, %._crit_edge304.loopexit ], [ %i.el, %.lr.ph327 ]
  %i.fr = phi i32 [ %i.fg, %._crit_edge304.loopexit ], [ %i.ef, %.lr.ph327 ]
  %i.fs = phi i32 [ %i.fg, %._crit_edge304.loopexit ], [ %i.eg, %.lr.ph327 ]
  %i.ft = phi i32 [ %i.fg, %._crit_edge304.loopexit ], [ %i.eh, %.lr.ph327 ]
  %i.fu = phi i32 [ %i.fp, %._crit_edge304.loopexit ], [ %i.ei, %.lr.ph327 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.fl, %._crit_edge304.loopexit ], [ %i.eo, %.lr.ph327 ]
  %.0245.lcssa = phi i32 [ %i.fn, %._crit_edge304.loopexit ], [ 0, %.lr.ph327 ] ; 3 uses
  %.5.lcssa = phi ptr [ %i.fm, %._crit_edge304.loopexit ], [ %.4326, %.lr.ph327 ] ; 2 uses
  %i.fv = sub nsw i64 0, %.pre-phi460
  %i.fw = getelementptr inbounds [2 x i8], ptr %.0248.lcssa, i64 %i.fv
  %i.fx = shl nsw i32 %.pre-phi456, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.fw, i64 %i.fy ; 2 uses
  %i.ga = or disjoint i32 %.0245.lcssa, 1
  %i.gb = icmp slt i32 %i.ga, %i.fu
  br i1 %i.gb, label %.lr.ph312, label %._crit_edge313

.lr.ph312:                                        ; preds = %._crit_edge304, %.lr.ph312
  %.6310 = phi ptr [ %i.gj, %.lr.ph312 ], [ %.5.lcssa, %._crit_edge304 ] ; 2 uses
  %.1246309 = phi i32 [ %i.gk, %.lr.ph312 ], [ %.0245.lcssa, %._crit_edge304 ]
  %.1249308 = phi ptr [ %i.gi, %.lr.ph312 ], [ %i.fz, %._crit_edge304 ] ; 2 uses
  %i.gc = load <2 x i64>, ptr %.1249308, align 1, !tbaa !30
  store <2 x i64> %i.gc, ptr %.6310, align 1, !tbaa !30
  %i.gd = load i32, ptr %4, align 4, !tbaa !10    ; 4 uses
  %i.ge = load i32, ptr %2, align 4, !tbaa !10
  %i.gf = shl i32 %i.gd, 1
  %i.gg = mul i32 %i.gf, %i.ge
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [2 x i8], ptr %.1249308, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.6310, i64 16 ; 2 uses
  %i.gk = add nuw nsw i32 %.1246309, 2            ; 3 uses
  %i.gl = or disjoint i32 %i.gk, 1
  %i.gm = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.gn = icmp slt i32 %i.gl, %i.gm
  br i1 %i.gn, label %.lr.ph312, label %._crit_edge313, !llvm.loop !351

._crit_edge313:                                   ; preds = %.lr.ph312, %._crit_edge304
  %i.go = phi i32 [ %i.fr, %._crit_edge304 ], [ %i.gd, %.lr.ph312 ] ; 2 uses
  %i.gp = phi i32 [ %i.fs, %._crit_edge304 ], [ %i.gd, %.lr.ph312 ] ; 2 uses
  %i.gq = phi i32 [ %i.ft, %._crit_edge304 ], [ %i.gd, %.lr.ph312 ] ; 5 uses
  %i.gr = phi i32 [ %i.fu, %._crit_edge304 ], [ %i.gm, %.lr.ph312 ] ; 5 uses
  %.1249.lcssa = phi ptr [ %i.fz, %._crit_edge304 ], [ %i.gi, %.lr.ph312 ]
  %.1246.lcssa = phi i32 [ %.0245.lcssa, %._crit_edge304 ], [ %i.gk, %.lr.ph312 ] ; 5 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge304 ], [ %i.gj, %.lr.ph312 ] ; 7 uses
  %i.gs = icmp slt i32 %.1246.lcssa, %i.gr
  br i1 %i.gs, label %.lr.ph322, label %._crit_edge323

.lr.ph322:                                        ; preds = %._crit_edge313
  %i.gt = mul nsw i32 %i.gq, %i.af
  %i.gu = add nsw i32 %i.gt, %.1242325            ; 2 uses
  %i.gv = shl nsw i32 %i.gu, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds [2 x i8], ptr %.1249.lcssa, i64 %i.gx
  %i.gz = sext i32 %i.gu to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.gz ; 6 uses
  %i.hb = load i32, ptr %2, align 4, !tbaa !10
  %i.hc = mul nsw i32 %i.hb, %i.gq
  %i.hd = sext i32 %i.hc to i64                   ; 3 uses
  %i.he = sub i32 %i.gr, %.1246.lcssa
  %.neg = add i32 %.1246.lcssa, 1
  %xtraiter = and i32 %i.he, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph322
  %i.hf = load i16, ptr %i.ha, align 2, !tbaa !42
  store i16 %i.hf, ptr %.6.lcssa, align 2, !tbaa !42
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !42
  %i.hi = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 2
  store i16 %i.hh, ptr %i.hi, align 2, !tbaa !42
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !42
  %i.hl = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 4
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !42
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 6
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !42
  %i.ho = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 6
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !42
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.ha, i64 %i.hd
  %i.hq = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 8 ; 2 uses
  %i.hr = add nuw nsw i32 %.1246.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph322
  %.lcssa644.unr = phi ptr [ poison, %.lr.ph322 ], [ %i.hq, %.prol.loopexit.unr-lcssa ]
  %.7320.unr = phi ptr [ %.6.lcssa, %.lr.ph322 ], [ %i.hq, %.prol.loopexit.unr-lcssa ]
  %.2247319.unr = phi i32 [ %.1246.lcssa, %.lr.ph322 ], [ %i.hr, %.prol.loopexit.unr-lcssa ]
  %.2250318.unr = phi ptr [ %i.ha, %.lr.ph322 ], [ %i.hp, %.prol.loopexit.unr-lcssa ]
  %i.hs = icmp eq i32 %i.gr, %.neg
  br i1 %i.hs, label %._crit_edge323, label %.lr.ph322.new

.lr.ph322.new:                                    ; preds = %.prol.loopexit, %.lr.ph322.new
  %.7320 = phi ptr [ %i.iq, %.lr.ph322.new ], [ %.7320.unr, %.prol.loopexit ] ; 9 uses
  %.2247319 = phi i32 [ %i.ir, %.lr.ph322.new ], [ %.2247319.unr, %.prol.loopexit ]
  %.2250318 = phi ptr [ %i.ip, %.lr.ph322.new ], [ %.2250318.unr, %.prol.loopexit ] ; 5 uses
  %i.ht = load i16, ptr %.2250318, align 2, !tbaa !42
  store i16 %i.ht, ptr %.7320, align 2, !tbaa !42
  %i.hu = getelementptr inbounds nuw i8, ptr %.2250318, i64 2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !42
  %i.hw = getelementptr inbounds nuw i8, ptr %.7320, i64 2
  store i16 %i.hv, ptr %i.hw, align 2, !tbaa !42
  %i.hx = getelementptr inbounds nuw i8, ptr %.2250318, i64 4
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !42
  %i.hz = getelementptr inbounds nuw i8, ptr %.7320, i64 4
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !42
  %i.ia = getelementptr inbounds nuw i8, ptr %.2250318, i64 6
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !42
  %i.ic = getelementptr inbounds nuw i8, ptr %.7320, i64 6
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !42
  %i.id = getelementptr inbounds [2 x i8], ptr %.2250318, i64 %i.hd ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.7320, i64 8
  %i.if = load i16, ptr %i.id, align 2, !tbaa !42
  store i16 %i.if, ptr %i.ie, align 2, !tbaa !42
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !42
  %i.ii = getelementptr inbounds nuw i8, ptr %.7320, i64 10
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !42
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !42
  %i.il = getelementptr inbounds nuw i8, ptr %.7320, i64 12
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !42
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 6
  %i.in = load i16, ptr %i.im, align 2, !tbaa !42
  %i.io = getelementptr inbounds nuw i8, ptr %.7320, i64 14
  store i16 %i.in, ptr %i.io, align 2, !tbaa !42
  %i.ip = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.hd
  %i.iq = getelementptr inbounds nuw i8, ptr %.7320, i64 16 ; 2 uses
  %i.ir = add nuw nsw i32 %.2247319, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ir, %i.gr
  br i1 %exitcond.not.1, label %._crit_edge323, label %.lr.ph322.new, !llvm.loop !352

._crit_edge323:                                   ; preds = %.prol.loopexit, %.lr.ph322.new, %._crit_edge313
  %.7.lcssa = phi ptr [ %.6.lcssa, %._crit_edge313 ], [ %.lcssa644.unr, %.prol.loopexit ], [ %i.iq, %.lr.ph322.new ] ; 2 uses
  %i.is = add nuw nsw i32 %.1242325, 4            ; 3 uses
  %i.it = or disjoint i32 %i.is, 3
  %i.iu = icmp slt i32 %i.it, %i.gq
  br i1 %i.iu, label %.lr.ph327, label %.preheader268, !llvm.loop !353

.preheader:                                       ; preds = %._crit_edge354, %.preheader268
  %i.iv = phi i32 [ %i.dz, %.preheader268 ], [ %i.jy, %._crit_edge354 ] ; 2 uses
  %i.iw = phi i32 [ %i.ea, %.preheader268 ], [ %i.jz, %._crit_edge354 ] ; 3 uses
  %.2243.lcssa = phi i32 [ %.1242.lcssa, %.preheader268 ], [ %i.mt, %._crit_edge354 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.4.lcssa, %.preheader268 ], [ %.11.lcssa, %._crit_edge354 ]
  %i.ix = icmp slt i32 %.2243.lcssa, %i.iw
  br i1 %i.ix, label %.lr.ph389.preheader, label %._crit_edge390

.lr.ph389.preheader:                              ; preds = %.preheader
  %.pre437 = load i32, ptr %6, align 4, !tbaa !10
  %i.iy = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br label %.lr.ph389

.lr.ph358:                                        ; preds = %.lr.ph358.preheader, %._crit_edge354
  %i.iz = phi i32 [ %i.jy, %._crit_edge354 ], [ %i.dz, %.lr.ph358.preheader ]
  %i.ja = phi i32 [ %i.jz, %._crit_edge354 ], [ %i.ea, %.lr.ph358.preheader ]
  %i.jb = phi i32 [ %i.ka, %._crit_edge354 ], [ %i.eb, %.lr.ph358.preheader ] ; 2 uses
  %i.jc = phi i32 [ %i.kb, %._crit_edge354 ], [ %.pre436, %.lr.ph358.preheader ] ; 2 uses
  %.8357 = phi ptr [ %.11.lcssa, %._crit_edge354 ], [ %.4.lcssa, %.lr.ph358.preheader ] ; 2 uses
  %.2243356 = phi i32 [ %i.mt, %._crit_edge354 ], [ %.1242.lcssa, %.lr.ph358.preheader ] ; 3 uses
  %i.jd = load ptr, ptr %5, align 8, !tbaa !28
  %i.je = mul nsw i32 %i.jb, %i.ee
  %i.jf = add nsw i32 %i.je, %.2243356            ; 2 uses
  %i.jg = shl nsw i32 %i.jf, 3
  %i.jh = sext i32 %i.jg to i64                   ; 2 uses
  %i.ji = getelementptr inbounds [2 x i8], ptr %i.jd, i64 %i.jh ; 2 uses
  %i.jj = icmp sgt i32 %i.jc, 7
  br i1 %i.jj, label %.lr.ph334, label %._crit_edge335

.lr.ph334:                                        ; preds = %.lr.ph358, %.lr.ph334
  %.9332 = phi ptr [ %i.jt, %.lr.ph334 ], [ %.8357, %.lr.ph358 ] ; 3 uses
  %.0235331 = phi i32 [ %i.ju, %.lr.ph334 ], [ 0, %.lr.ph358 ]
  %.0238330 = phi ptr [ %i.js, %.lr.ph334 ], [ %i.ji, %.lr.ph358 ] ; 2 uses
  %9 = load <8 x i32>, ptr %.0238330, align 16, !tbaa !30 ; 2 uses
  %i.jk = shufflevector <8 x i32> %9, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.jl = shufflevector <8 x i32> %9, <8 x i32> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.jk, ptr %.9332, align 1, !tbaa !30
  %i.jm = getelementptr inbounds nuw i8, ptr %.9332, i64 16
  store <4 x i32> %i.jl, ptr %i.jm, align 1, !tbaa !30
  %i.jn = load i32, ptr %4, align 4, !tbaa !10    ; 5 uses
  %i.jo = load i32, ptr %2, align 4, !tbaa !10
  %i.jp = shl i32 %i.jn, 3
  %i.jq = mul i32 %i.jp, %i.jo
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [2 x i8], ptr %.0238330, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.9332, i64 32 ; 2 uses
  %i.ju = add nuw nsw i32 %.0235331, 8            ; 3 uses
  %i.jv = or disjoint i32 %i.ju, 7
  %i.jw = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.jx = icmp slt i32 %i.jv, %i.jw
  br i1 %i.jx, label %.lr.ph334, label %._crit_edge335.loopexit, !llvm.loop !354

._crit_edge335.loopexit:                          ; preds = %.lr.ph334
  %.pre461 = mul nsw i32 %i.jn, %i.ee
  %.pre463 = add nsw i32 %.pre461, %.2243356      ; 2 uses
  %.pre465 = shl nsw i32 %.pre463, 3
  %.pre467 = sext i32 %.pre465 to i64
  br label %._crit_edge335

._crit_edge335:                                   ; preds = %._crit_edge335.loopexit, %.lr.ph358
  %.pre-phi468 = phi i64 [ %.pre467, %._crit_edge335.loopexit ], [ %i.jh, %.lr.ph358 ]
  %.pre-phi464 = phi i32 [ %.pre463, %._crit_edge335.loopexit ], [ %i.jf, %.lr.ph358 ] ; 2 uses
  %i.jy = phi i32 [ %i.jn, %._crit_edge335.loopexit ], [ %i.iz, %.lr.ph358 ] ; 2 uses
  %i.jz = phi i32 [ %i.jn, %._crit_edge335.loopexit ], [ %i.ja, %.lr.ph358 ] ; 2 uses
  %i.ka = phi i32 [ %i.jn, %._crit_edge335.loopexit ], [ %i.jb, %.lr.ph358 ] ; 4 uses
  %i.kb = phi i32 [ %i.jw, %._crit_edge335.loopexit ], [ %i.jc, %.lr.ph358 ] ; 7 uses
  %.0238.lcssa = phi ptr [ %i.js, %._crit_edge335.loopexit ], [ %i.ji, %.lr.ph358 ]
  %.0235.lcssa = phi i32 [ %i.ju, %._crit_edge335.loopexit ], [ 0, %.lr.ph358 ] ; 3 uses
  %.9.lcssa = phi ptr [ %i.jt, %._crit_edge335.loopexit ], [ %.8357, %.lr.ph358 ] ; 2 uses
  %i.kc = sub nsw i64 0, %.pre-phi468
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0238.lcssa, i64 %i.kc
  %i.ke = shl nsw i32 %.pre-phi464, 1
  %i.kf = sext i32 %i.ke to i64                   ; 2 uses
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.kd, i64 %i.kf ; 2 uses
  %i.kh = or disjoint i32 %.0235.lcssa, 1
  %i.ki = icmp slt i32 %i.kh, %i.kb
  br i1 %i.ki, label %.lr.ph344, label %._crit_edge345

.lr.ph344:                                        ; preds = %._crit_edge335
  %i.kj = load i32, ptr %2, align 4, !tbaa !10
  %i.kk = shl i32 %i.ka, 1
  %i.kl = mul i32 %i.kk, %i.kj
  %i.km = sext i32 %i.kl to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph344, %bb.d
  %.10342 = phi ptr [ %.9.lcssa, %.lr.ph344 ], [ %i.ky, %bb.d ] ; 5 uses
  %.1236341 = phi i32 [ %.0235.lcssa, %.lr.ph344 ], [ %i.kz, %bb.d ]
  %.1239340 = phi ptr [ %i.kg, %.lr.ph344 ], [ %i.kx, %bb.d ] ; 5 uses
  %i.kn = load i16, ptr %.1239340, align 2, !tbaa !42
  store i16 %i.kn, ptr %.10342, align 2, !tbaa !42
  %i.ko = getelementptr inbounds nuw i8, ptr %.1239340, i64 2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !42
  %i.kq = getelementptr inbounds nuw i8, ptr %.10342, i64 2
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !42
  %i.kr = getelementptr inbounds nuw i8, ptr %.1239340, i64 4
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !42
  %i.kt = getelementptr inbounds nuw i8, ptr %.10342, i64 4
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !42
  %i.ku = getelementptr inbounds nuw i8, ptr %.1239340, i64 6
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !42
  %i.kw = getelementptr inbounds nuw i8, ptr %.10342, i64 6
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !42
  %i.kx = getelementptr inbounds [2 x i8], ptr %.1239340, i64 %i.km ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.10342, i64 8 ; 2 uses
  %i.kz = add nuw nsw i32 %.1236341, 2            ; 3 uses
  %i.la = or disjoint i32 %i.kz, 1
  %i.lb = icmp slt i32 %i.la, %i.kb
  br i1 %i.lb, label %bb.d, label %._crit_edge345, !llvm.loop !355

._crit_edge345:                                   ; preds = %bb.d, %._crit_edge335
  %.1239.lcssa = phi ptr [ %i.kg, %._crit_edge335 ], [ %i.kx, %bb.d ]
  %.1236.lcssa = phi i32 [ %.0235.lcssa, %._crit_edge335 ], [ %i.kz, %bb.d ] ; 5 uses
  %.10.lcssa = phi ptr [ %.9.lcssa, %._crit_edge335 ], [ %i.ky, %bb.d ] ; 3 uses
  %i.lc = icmp slt i32 %.1236.lcssa, %i.kb
  br i1 %i.lc, label %.lr.ph353, label %._crit_edge354

.lr.ph353:                                        ; preds = %._crit_edge345
  %i.ld = sub nsw i64 0, %i.kf
  %i.le = getelementptr inbounds [2 x i8], ptr %.1239.lcssa, i64 %i.ld
  %i.lf = sext i32 %.pre-phi464 to i64
  %i.lg = getelementptr inbounds [2 x i8], ptr %i.le, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr %2, align 4, !tbaa !10
  %i.li = mul nsw i32 %i.lh, %i.ka
  %i.lj = sext i32 %i.li to i64                   ; 5 uses
  %i.lk = sub i32 %i.kb, %.1236.lcssa
  %xtraiter673 = and i32 %i.lk, 3                 ; 2 uses
  %lcmp.mod674.not = icmp eq i32 %xtraiter673, 0
  br i1 %lcmp.mod674.not, label %.prol.loopexit672, label %.prol.preheader671

.prol.preheader671:                               ; preds = %.lr.ph353, %.prol.preheader671
  %.11351.prol = phi ptr [ %i.lq, %.prol.preheader671 ], [ %.10.lcssa, %.lr.ph353 ] ; 3 uses
  %.2237350.prol = phi i32 [ %i.lr, %.prol.preheader671 ], [ %.1236.lcssa, %.lr.ph353 ]
  %.2240349.prol = phi ptr [ %i.lp, %.prol.preheader671 ], [ %i.lg, %.lr.ph353 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader671 ], [ 0, %.lr.ph353 ]
  %i.ll = load i16, ptr %.2240349.prol, align 2, !tbaa !42
  store i16 %i.ll, ptr %.11351.prol, align 2, !tbaa !42
  %i.lm = getelementptr inbounds nuw i8, ptr %.2240349.prol, i64 2
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !42
  %i.lo = getelementptr inbounds nuw i8, ptr %.11351.prol, i64 2
  store i16 %i.ln, ptr %i.lo, align 2, !tbaa !42
  %i.lp = getelementptr inbounds [2 x i8], ptr %.2240349.prol, i64 %i.lj ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.11351.prol, i64 4 ; 3 uses
  %i.lr = add nuw nsw i32 %.2237350.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter673
  br i1 %prol.iter.cmp.not, label %.prol.loopexit672, label %.prol.preheader671, !llvm.loop !356

.prol.loopexit672:                                ; preds = %.prol.preheader671, %.lr.ph353
  %.lcssa657.unr = phi ptr [ poison, %.lr.ph353 ], [ %i.lq, %.prol.preheader671 ]
  %.11351.unr = phi ptr [ %.10.lcssa, %.lr.ph353 ], [ %i.lq, %.prol.preheader671 ]
  %.2237350.unr = phi i32 [ %.1236.lcssa, %.lr.ph353 ], [ %i.lr, %.prol.preheader671 ]
  %.2240349.unr = phi ptr [ %i.lg, %.lr.ph353 ], [ %i.lp, %.prol.preheader671 ]
  %i.ls = sub i32 %.1236.lcssa, %i.kb
  %i.lt = icmp ugt i32 %i.ls, -4
  br i1 %i.lt, label %._crit_edge354, label %.lr.ph353.new

.lr.ph353.new:                                    ; preds = %.prol.loopexit672, %.lr.ph353.new
  %.11351 = phi ptr [ %i.mr, %.lr.ph353.new ], [ %.11351.unr, %.prol.loopexit672 ] ; 9 uses
  %.2237350 = phi i32 [ %i.ms, %.lr.ph353.new ], [ %.2237350.unr, %.prol.loopexit672 ]
  %.2240349 = phi ptr [ %i.mq, %.lr.ph353.new ], [ %.2240349.unr, %.prol.loopexit672 ] ; 3 uses
  %i.lu = load i16, ptr %.2240349, align 2, !tbaa !42
  store i16 %i.lu, ptr %.11351, align 2, !tbaa !42
  %i.lv = getelementptr inbounds nuw i8, ptr %.2240349, i64 2
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !42
  %i.lx = getelementptr inbounds nuw i8, ptr %.11351, i64 2
  store i16 %i.lw, ptr %i.lx, align 2, !tbaa !42
  %i.ly = getelementptr inbounds [2 x i8], ptr %.2240349, i64 %i.lj ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.11351, i64 4
  %i.ma = load i16, ptr %i.ly, align 2, !tbaa !42
  store i16 %i.ma, ptr %i.lz, align 2, !tbaa !42
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !42
  %i.md = getelementptr inbounds nuw i8, ptr %.11351, i64 6
  store i16 %i.mc, ptr %i.md, align 2, !tbaa !42
  %i.me = getelementptr inbounds [2 x i8], ptr %i.ly, i64 %i.lj ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.11351, i64 8
  %i.mg = load i16, ptr %i.me, align 2, !tbaa !42
  store i16 %i.mg, ptr %i.mf, align 2, !tbaa !42
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !42
  %i.mj = getelementptr inbounds nuw i8, ptr %.11351, i64 10
  store i16 %i.mi, ptr %i.mj, align 2, !tbaa !42
  %i.mk = getelementptr inbounds [2 x i8], ptr %i.me, i64 %i.lj ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.11351, i64 12
  %i.mm = load i16, ptr %i.mk, align 2, !tbaa !42
  store i16 %i.mm, ptr %i.ml, align 2, !tbaa !42
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !42
  %i.mp = getelementptr inbounds nuw i8, ptr %.11351, i64 14
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !42
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.mk, i64 %i.lj
  %i.mr = getelementptr inbounds nuw i8, ptr %.11351, i64 16 ; 2 uses
  %i.ms = add nuw nsw i32 %.2237350, 4            ; 2 uses
  %exitcond430.not.3 = icmp eq i32 %i.ms, %i.kb
  br i1 %exitcond430.not.3, label %._crit_edge354, label %.lr.ph353.new, !llvm.loop !357

._crit_edge354:                                   ; preds = %.prol.loopexit672, %.lr.ph353.new, %._crit_edge345
  %.11.lcssa = phi ptr [ %.10.lcssa, %._crit_edge345 ], [ %.lcssa657.unr, %.prol.loopexit672 ], [ %i.mr, %.lr.ph353.new ] ; 2 uses
  %i.mt = add nuw nsw i32 %.2243356, 2            ; 3 uses
  %i.mu = or disjoint i32 %i.mt, 1
  %i.mv = icmp slt i32 %i.mu, %i.ka
  br i1 %i.mv, label %.lr.ph358, label %.preheader, !llvm.loop !358

.lr.ph389:                                        ; preds = %.lr.ph389.preheader, %._crit_edge385
  %i.mw = phi i32 [ %i.ns, %._crit_edge385 ], [ %i.iv, %.lr.ph389.preheader ]
  %i.mx = phi i32 [ %i.nu, %._crit_edge385 ], [ %.pre437, %.lr.ph389.preheader ] ; 2 uses
  %i.my = phi i32 [ %i.ns, %._crit_edge385 ], [ %i.iw, %.lr.ph389.preheader ] ; 2 uses
  %.12388 = phi ptr [ %.15.lcssa, %._crit_edge385 ], [ %.8.lcssa, %.lr.ph389.preheader ] ; 2 uses
  %.3244387 = phi i32 [ %i.qd, %._crit_edge385 ], [ %.2243.lcssa, %.lr.ph389.preheader ] ; 3 uses
  %i.mz = load ptr, ptr %5, align 8, !tbaa !28
  %i.na = mul nsw i32 %i.my, %i.iy
  %i.nb = add nsw i32 %i.na, %.3244387            ; 2 uses
  %i.nc = shl nsw i32 %i.nb, 3
  %i.nd = sext i32 %i.nc to i64                   ; 2 uses
  %i.ne = getelementptr inbounds [2 x i8], ptr %i.mz, i64 %i.nd ; 2 uses
  %i.nf = icmp sgt i32 %i.mx, 7
  br i1 %i.nf, label %.lr.ph365, label %._crit_edge366

.lr.ph365:                                        ; preds = %.lr.ph389, %.lr.ph365
  %.0228363 = phi i32 [ %i.no, %.lr.ph365 ], [ 0, %.lr.ph389 ]
  %.0229362 = phi ptr [ %i.nm, %.lr.ph365 ], [ %i.ne, %.lr.ph389 ] ; 2 uses
  %.13361 = phi ptr [ %i.nn, %.lr.ph365 ], [ %.12388, %.lr.ph389 ] ; 2 uses
  %i.ng = load <2 x i64>, ptr %.0229362, align 16, !tbaa !30
  store <2 x i64> %i.ng, ptr %.13361, align 1, !tbaa !30
  %i.nh = load i32, ptr %4, align 4, !tbaa !10    ; 4 uses
  %i.ni = load i32, ptr %2, align 4, !tbaa !10
  %i.nj = shl i32 %i.nh, 3
  %i.nk = mul i32 %i.nj, %i.ni
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [2 x i8], ptr %.0229362, i64 %i.nl ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.13361, i64 16 ; 2 uses
  %i.no = add nuw nsw i32 %.0228363, 8            ; 3 uses
  %i.np = or disjoint i32 %i.no, 7
  %i.nq = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.nr = icmp slt i32 %i.np, %i.nq
end_hunk_0
