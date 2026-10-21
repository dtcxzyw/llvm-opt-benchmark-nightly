Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined:bb.a
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w ; 2 uses
  %i.y = icmp sgt i32 %i.q, 7
  br i1 %i.y, label %.lr.ph296.preheader, label %.preheader269

.lr.ph296.preheader:                              ; preds = %bb.c
  %.pre434 = load i32, ptr %6, align 4, !tbaa !81
  %i.z = trunc nsw i64 %indvars.iv to i32         ; 3 uses
  br label %.lr.ph296

.preheader269:                                    ; preds = %._crit_edge291, %bb.c
  %i.aa = phi i32 [ %i.p, %bb.c ], [ %i.ds, %._crit_edge291 ] ; 2 uses
  %i.ab = phi i32 [ %i.q, %bb.c ], [ %i.dt, %._crit_edge291 ] ; 2 uses
  %i.ac = phi i32 [ %i.q, %bb.c ], [ %i.du, %._crit_edge291 ] ; 3 uses
  %.0241.lcssa = phi i32 [ 0, %bb.c ], [ %i.dw, %._crit_edge291 ] ; 3 uses
  %.0232.lcssa = phi ptr [ %i.x, %bb.c ], [ %.3.lcssa, %._crit_edge291 ] ; 2 uses
  %i.ad = or disjoint i32 %.0241.lcssa, 3
  %i.ae = icmp slt i32 %i.ad, %i.ac
  br i1 %i.ae, label %.lr.ph327.preheader, label %.preheader268

.lr.ph327.preheader:                              ; preds = %.preheader269
  %.pre435 = load i32, ptr %6, align 4, !tbaa !81
  %i.af = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  br label %.lr.ph327

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %._crit_edge291
  %i.ag = phi i32 [ %i.ds, %._crit_edge291 ], [ %i.p, %.lr.ph296.preheader ]
  %i.ah = phi i32 [ %i.dt, %._crit_edge291 ], [ %i.q, %.lr.ph296.preheader ]
  %i.ai = phi i32 [ %i.du, %._crit_edge291 ], [ %i.q, %.lr.ph296.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.dv, %._crit_edge291 ], [ %.pre434, %.lr.ph296.preheader ] ; 2 uses
  %.0232294 = phi ptr [ %.3.lcssa, %._crit_edge291 ], [ %i.x, %.lr.ph296.preheader ] ; 2 uses
  %.0241293 = phi i32 [ %i.dw, %._crit_edge291 ], [ 0, %.lr.ph296.preheader ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !37
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
  %i.ar = load <8 x float>, ptr %.0251273, align 1, !tbaa !114 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0251273, i64 32
  %i.at = load <8 x float>, ptr %i.as, align 1, !tbaa !114 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0251273, i64 64
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !114 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0251273, i64 96
  %i.ax = load <8 x float>, ptr %i.aw, align 1, !tbaa !114 ; 2 uses
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
  store <4 x double> %i.bi, ptr %.1233274, align 1, !tbaa !114
  %i.bo = getelementptr inbounds nuw i8, ptr %.1233274, i64 32
  store <4 x double> %i.bj, ptr %i.bo, align 1, !tbaa !114
  %i.bp = getelementptr inbounds nuw i8, ptr %.1233274, i64 64
  store <4 x double> %i.bm, ptr %i.bp, align 1, !tbaa !114
  %i.bq = getelementptr inbounds nuw i8, ptr %.1233274, i64 96
  store <4 x double> %i.bn, ptr %i.bq, align 1, !tbaa !114
  %i.br = load i32, ptr %4, align 4, !tbaa !81    ; 5 uses
  %i.bs = load i32, ptr %2, align 4, !tbaa !81
  %i.bt = shl i32 %i.br, 3
  %i.bu = mul i32 %i.bt, %i.bs
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %.0251273, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1233274, i64 128 ; 2 uses
  %i.by = add nuw nsw i32 %.0254272, 8            ; 3 uses
  %i.bz = or disjoint i32 %i.by, 7
  %i.ca = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1848

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre438.a = mul nsw i32 %i.br, %i.z
  %.pre439.a = add nsw i32 %.pre438.a, %.0241293  ; 2 uses
  %.pre441.a = shl nsw i32 %.pre439.a, 3
  %.pre443 = sext i32 %.pre441.a to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph296
  %.pre-phi444.a = phi i64 [ %.pre443, %._crit_edge.loopexit ], [ %i.ao, %.lr.ph296 ]
  %.pre-phi440 = phi i32 [ %.pre439.a, %._crit_edge.loopexit ], [ %i.am, %.lr.ph296 ] ; 2 uses
  %i.cc = phi i32 [ %i.br, %._crit_edge.loopexit ], [ %i.ag, %.lr.ph296 ]
  %i.cd = phi i32 [ %i.br, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph296 ]
  %i.ce = phi i32 [ %i.br, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph296 ]
  %i.cf = phi i32 [ %i.ca, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph296 ] ; 2 uses
  %.0254.lcssa = phi i32 [ %i.by, %._crit_edge.loopexit ], [ 0, %.lr.ph296 ] ; 3 uses
  %.0251.lcssa = phi ptr [ %i.bw, %._crit_edge.loopexit ], [ %i.ap, %.lr.ph296 ]
  %.1233.lcssa = phi ptr [ %i.bx, %._crit_edge.loopexit ], [ %.0232294, %.lr.ph296 ] ; 2 uses
  %i.cg = sub nsw i64 0, %.pre-phi444.a
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
  %i.cn = load <8 x float>, ptr %.1252278, align 1, !tbaa !114
  store <8 x float> %i.cn, ptr %.2234279, align 1, !tbaa !114
  %i.co = load i32, ptr %4, align 4, !tbaa !81    ; 5 uses
  %i.cp = load i32, ptr %2, align 4, !tbaa !81
  %i.cq = shl i32 %i.co, 1
  %i.cr = mul i32 %i.cq, %i.cp
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %.1252278, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2234279, i64 32 ; 2 uses
  %i.cv = add nuw nsw i32 %.1255277, 2            ; 3 uses
  %i.cw = or disjoint i32 %i.cv, 1
  %i.cx = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph281, label %._crit_edge282.loopexit, !llvm.loop !1849

._crit_edge282.loopexit:                          ; preds = %.lr.ph281
  %.pre445 = mul nsw i32 %i.co, %i.z
  %.pre447 = add nsw i32 %.pre445, %.0241293      ; 2 uses
  %.pre449 = shl nsw i32 %.pre447, 1
  %.pre451 = sext i32 %.pre449 to i64
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %._crit_edge
  %.pre-phi452.a = phi i64 [ %.pre451, %._crit_edge282.loopexit ], [ %i.cj, %._crit_edge ]
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
  %i.de = sub nsw i64 0, %.pre-phi452.a
  %i.df = getelementptr inbounds [2 x i8], ptr %.1252.lcssa, i64 %i.de
  %i.dg = sext i32 %.pre-phi448 to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.dg
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.3288 = phi ptr [ %i.do, %.lr.ph290 ], [ %.2234.lcssa, %.lr.ph290.preheader ] ; 2 uses
  %.2253287 = phi ptr [ %i.dn, %.lr.ph290 ], [ %i.dh, %.lr.ph290.preheader ] ; 2 uses
  %.2256286 = phi i32 [ %i.dp, %.lr.ph290 ], [ %.1255.lcssa, %.lr.ph290.preheader ]
  %i.di = load <2 x i64>, ptr %.2253287, align 1, !tbaa !114
  store <2 x i64> %i.di, ptr %.3288, align 16, !tbaa !114
  %i.dj = load i32, ptr %4, align 4, !tbaa !81    ; 4 uses
  %i.dk = load i32, ptr %2, align 4, !tbaa !81
  %i.dl = mul nsw i32 %i.dk, %i.dj
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [2 x i8], ptr %.2253287, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.3288, i64 16 ; 2 uses
  %i.dp = add nuw nsw i32 %.2256286, 1            ; 2 uses
  %i.dq = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph290, label %._crit_edge291, !llvm.loop !1850

._crit_edge291:                                   ; preds = %.lr.ph290, %._crit_edge282
  %i.ds = phi i32 [ %i.cz, %._crit_edge282 ], [ %i.dj, %.lr.ph290 ] ; 2 uses
  %i.dt = phi i32 [ %i.da, %._crit_edge282 ], [ %i.dj, %.lr.ph290 ] ; 2 uses
  %i.du = phi i32 [ %i.db, %._crit_edge282 ], [ %i.dj, %.lr.ph290 ] ; 3 uses
  %i.dv = phi i32 [ %i.dc, %._crit_edge282 ], [ %i.dq, %.lr.ph290 ]
  %.3.lcssa = phi ptr [ %.2234.lcssa, %._crit_edge282 ], [ %i.do, %.lr.ph290 ] ; 2 uses
  %i.dw = add nuw nsw i32 %.0241293, 8            ; 3 uses
  %i.dx = or disjoint i32 %i.dw, 7
  %i.dy = icmp slt i32 %i.dx, %i.du
  br i1 %i.dy, label %.lr.ph296, label %.preheader269, !llvm.loop !1851

.preheader268:                                    ; preds = %._crit_edge323, %.preheader269
  %i.dz = phi i32 [ %i.aa, %.preheader269 ], [ %i.gu, %._crit_edge323 ] ; 2 uses
  %i.ea = phi i32 [ %i.ab, %.preheader269 ], [ %i.gv, %._crit_edge323 ] ; 2 uses
  %i.eb = phi i32 [ %i.ac, %.preheader269 ], [ %i.gw, %._crit_edge323 ] ; 2 uses
  %.1242.lcssa = phi i32 [ %.0241.lcssa, %.preheader269 ], [ %i.iy, %._crit_edge323 ] ; 3 uses
  %.4.lcssa = phi ptr [ %.0232.lcssa, %.preheader269 ], [ %.7.lcssa, %._crit_edge323 ] ; 2 uses
  %i.ec = or disjoint i32 %.1242.lcssa, 1
  %i.ed = icmp slt i32 %i.ec, %i.eb
  br i1 %i.ed, label %.lr.ph358.preheader, label %.preheader

.lr.ph358.preheader:                              ; preds = %.preheader268
  %.pre436 = load i32, ptr %6, align 4, !tbaa !81
  %i.ee = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br label %.lr.ph358

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %._crit_edge323
  %i.ef = phi i32 [ %i.gu, %._crit_edge323 ], [ %i.aa, %.lr.ph327.preheader ]
  %i.eg = phi i32 [ %i.gv, %._crit_edge323 ], [ %i.ab, %.lr.ph327.preheader ]
  %i.eh = phi i32 [ %i.gw, %._crit_edge323 ], [ %i.ac, %.lr.ph327.preheader ] ; 2 uses
  %i.ei = phi i32 [ %i.gx, %._crit_edge323 ], [ %.pre435, %.lr.ph327.preheader ] ; 2 uses
  %.4326 = phi ptr [ %.7.lcssa, %._crit_edge323 ], [ %.0232.lcssa, %.lr.ph327.preheader ] ; 2 uses
  %.1242325 = phi i32 [ %i.iy, %._crit_edge323 ], [ %.0241.lcssa, %.lr.ph327.preheader ] ; 4 uses
  %i.ej = load ptr, ptr %5, align 8, !tbaa !37
  %i.ek = mul nsw i32 %i.eh, %i.af
  %i.el = add nsw i32 %i.ek, %.1242325            ; 2 uses
  %i.em = shl nsw i32 %i.el, 3
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.en ; 2 uses
  %i.ep = icmp sgt i32 %i.ei, 7
  br i1 %i.ep, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %.lr.ph327, %.lr.ph303
  %.5301 = phi ptr [ %i.fs, %.lr.ph303 ], [ %.4326, %.lr.ph327 ] ; 5 uses
  %.0245300 = phi i32 [ %i.ft, %.lr.ph303 ], [ 0, %.lr.ph327 ]
  %.0248299 = phi ptr [ %i.fr, %.lr.ph303 ], [ %i.eo, %.lr.ph327 ] ; 5 uses
  %i.eq = load <4 x i32>, ptr %.0248299, align 16, !tbaa !114 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0248299, i64 16
  %i.es = load <4 x i32>, ptr %i.er, align 16, !tbaa !114 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0248299, i64 32
  %i.eu = load <4 x i32>, ptr %i.et, align 16, !tbaa !114 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0248299, i64 48
  %i.ew = load <4 x i32>, ptr %i.ev, align 16, !tbaa !114 ; 2 uses
  %i.ex = shufflevector <4 x i32> %i.eq, <4 x i32> %i.es, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ey = bitcast <4 x i32> %i.ex to <2 x i64>    ; 2 uses
  %i.ez = shufflevector <4 x i32> %i.eq, <4 x i32> %i.es, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.fa = bitcast <4 x i32> %i.ez to <2 x i64>    ; 2 uses
  %i.fb = shufflevector <4 x i32> %i.eu, <4 x i32> %i.ew, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.fc = bitcast <4 x i32> %i.fb to <2 x i64>    ; 2 uses
  %i.fd = shufflevector <4 x i32> %i.eu, <4 x i32> %i.ew, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.fe = bitcast <4 x i32> %i.fd to <2 x i64>    ; 2 uses
  %i.ff = shufflevector <2 x i64> %i.ey, <2 x i64> %i.fc, <2 x i32> <i32 0, i32 2>
  %i.fg = shufflevector <2 x i64> %i.ey, <2 x i64> %i.fc, <2 x i32> <i32 1, i32 3>
  %i.fh = shufflevector <2 x i64> %i.fa, <2 x i64> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x i64> %i.fa, <2 x i64> %i.fe, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.ff, ptr %.5301, align 1, !tbaa !114
  %i.fj = getelementptr inbounds nuw i8, ptr %.5301, i64 16
  store <2 x i64> %i.fg, ptr %i.fj, align 1, !tbaa !114
  %i.fk = getelementptr inbounds nuw i8, ptr %.5301, i64 32
  store <2 x i64> %i.fh, ptr %i.fk, align 1, !tbaa !114
  %i.fl = getelementptr inbounds nuw i8, ptr %.5301, i64 48
  store <2 x i64> %i.fi, ptr %i.fl, align 1, !tbaa !114
  %i.fm = load i32, ptr %4, align 4, !tbaa !81    ; 5 uses
  %i.fn = load i32, ptr %2, align 4, !tbaa !81
  %i.fo = shl i32 %i.fm, 3
  %i.fp = mul i32 %i.fo, %i.fn
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [2 x i8], ptr %.0248299, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.5301, i64 64 ; 2 uses
  %i.ft = add nuw nsw i32 %.0245300, 8            ; 3 uses
  %i.fu = or disjoint i32 %i.ft, 7
  %i.fv = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %.lr.ph303, label %._crit_edge304.loopexit, !llvm.loop !1852

._crit_edge304.loopexit:                          ; preds = %.lr.ph303
  %.pre453 = mul nsw i32 %i.fm, %i.af
  %.pre455 = add nsw i32 %.pre453, %.1242325      ; 2 uses
  %.pre457 = shl nsw i32 %.pre455, 3
  %.pre459 = sext i32 %.pre457 to i64
  br label %._crit_edge304

._crit_edge304:                                   ; preds = %._crit_edge304.loopexit, %.lr.ph327
  %.pre-phi460.a = phi i64 [ %.pre459, %._crit_edge304.loopexit ], [ %i.en, %.lr.ph327 ]
  %.pre-phi456 = phi i32 [ %.pre455, %._crit_edge304.loopexit ], [ %i.el, %.lr.ph327 ]
  %i.fx = phi i32 [ %i.fm, %._crit_edge304.loopexit ], [ %i.ef, %.lr.ph327 ]
  %i.fy = phi i32 [ %i.fm, %._crit_edge304.loopexit ], [ %i.eg, %.lr.ph327 ]
  %i.fz = phi i32 [ %i.fm, %._crit_edge304.loopexit ], [ %i.eh, %.lr.ph327 ]
  %i.ga = phi i32 [ %i.fv, %._crit_edge304.loopexit ], [ %i.ei, %.lr.ph327 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.fr, %._crit_edge304.loopexit ], [ %i.eo, %.lr.ph327 ]
  %.0245.lcssa = phi i32 [ %i.ft, %._crit_edge304.loopexit ], [ 0, %.lr.ph327 ] ; 3 uses
  %.5.lcssa = phi ptr [ %i.fs, %._crit_edge304.loopexit ], [ %.4326, %.lr.ph327 ] ; 2 uses
  %i.gb = sub nsw i64 0, %.pre-phi460.a
  %i.gc = getelementptr inbounds [2 x i8], ptr %.0248.lcssa, i64 %i.gb
  %i.gd = shl nsw i32 %.pre-phi456, 1
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.ge ; 2 uses
  %i.gg = or disjoint i32 %.0245.lcssa, 1
  %i.gh = icmp slt i32 %i.gg, %i.ga
  br i1 %i.gh, label %.lr.ph312, label %._crit_edge313

.lr.ph312:                                        ; preds = %._crit_edge304, %.lr.ph312
  %.6310 = phi ptr [ %i.gp, %.lr.ph312 ], [ %.5.lcssa, %._crit_edge304 ] ; 2 uses
  %.1246309 = phi i32 [ %i.gq, %.lr.ph312 ], [ %.0245.lcssa, %._crit_edge304 ]
  %.1249308 = phi ptr [ %i.go, %.lr.ph312 ], [ %i.gf, %._crit_edge304 ] ; 2 uses
  %i.gi = load <2 x i64>, ptr %.1249308, align 1, !tbaa !114
  store <2 x i64> %i.gi, ptr %.6310, align 1, !tbaa !114
  %i.gj = load i32, ptr %4, align 4, !tbaa !81    ; 4 uses
  %i.gk = load i32, ptr %2, align 4, !tbaa !81
  %i.gl = shl i32 %i.gj, 1
  %i.gm = mul i32 %i.gl, %i.gk
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [2 x i8], ptr %.1249308, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.6310, i64 16 ; 2 uses
  %i.gq = add nuw nsw i32 %.1246309, 2            ; 3 uses
  %i.gr = or disjoint i32 %i.gq, 1
  %i.gs = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.gt = icmp slt i32 %i.gr, %i.gs
  br i1 %i.gt, label %.lr.ph312, label %._crit_edge313, !llvm.loop !1853

._crit_edge313:                                   ; preds = %.lr.ph312, %._crit_edge304
  %i.gu = phi i32 [ %i.fx, %._crit_edge304 ], [ %i.gj, %.lr.ph312 ] ; 2 uses
  %i.gv = phi i32 [ %i.fy, %._crit_edge304 ], [ %i.gj, %.lr.ph312 ] ; 2 uses
  %i.gw = phi i32 [ %i.fz, %._crit_edge304 ], [ %i.gj, %.lr.ph312 ] ; 5 uses
  %i.gx = phi i32 [ %i.ga, %._crit_edge304 ], [ %i.gs, %.lr.ph312 ] ; 5 uses
  %.1249.lcssa = phi ptr [ %i.gf, %._crit_edge304 ], [ %i.go, %.lr.ph312 ]
  %.1246.lcssa = phi i32 [ %.0245.lcssa, %._crit_edge304 ], [ %i.gq, %.lr.ph312 ] ; 5 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge304 ], [ %i.gp, %.lr.ph312 ] ; 7 uses
  %i.gy = icmp slt i32 %.1246.lcssa, %i.gx
  br i1 %i.gy, label %.lr.ph322, label %._crit_edge323

.lr.ph322:                                        ; preds = %._crit_edge313
  %i.gz = mul nsw i32 %i.gw, %i.af
  %i.ha = add nsw i32 %i.gz, %.1242325            ; 2 uses
  %i.hb = shl nsw i32 %i.ha, 1
  %i.hc = sext i32 %i.hb to i64
  %i.hd = sub nsw i64 0, %i.hc
  %i.he = getelementptr inbounds [2 x i8], ptr %.1249.lcssa, i64 %i.hd
  %i.hf = sext i32 %i.ha to i64
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hf ; 6 uses
  %i.hh = load i32, ptr %2, align 4, !tbaa !81
  %i.hi = mul nsw i32 %i.hh, %i.gw
  %i.hj = sext i32 %i.hi to i64                   ; 3 uses
  %i.hk = sub i32 %i.gx, %.1246.lcssa
  %.neg = add i32 %.1246.lcssa, 1
  %xtraiter = and i32 %i.hk, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph322
  %i.hl = load i16, ptr %i.hg, align 2, !tbaa !116
  store i16 %i.hl, ptr %.6.lcssa, align 2, !tbaa !116
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !116
  %i.ho = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 2
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !116
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !116
  %i.hr = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 4
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !116
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 6
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !116
  %i.hu = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 6
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !116
  %i.hv = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.hj
  %i.hw = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 8 ; 2 uses
  %i.hx = add nuw nsw i32 %.1246.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph322
  %.lcssa644.unr = phi ptr [ poison, %.lr.ph322 ], [ %i.hw, %.prol.loopexit.unr-lcssa ]
  %.7320.unr = phi ptr [ %.6.lcssa, %.lr.ph322 ], [ %i.hw, %.prol.loopexit.unr-lcssa ]
  %.2247319.unr = phi i32 [ %.1246.lcssa, %.lr.ph322 ], [ %i.hx, %.prol.loopexit.unr-lcssa ]
  %.2250318.unr = phi ptr [ %i.hg, %.lr.ph322 ], [ %i.hv, %.prol.loopexit.unr-lcssa ]
  %i.hy = icmp eq i32 %i.gx, %.neg
  br i1 %i.hy, label %._crit_edge323, label %.lr.ph322.new

.lr.ph322.new:                                    ; preds = %.prol.loopexit, %.lr.ph322.new
  %.7320 = phi ptr [ %i.iw, %.lr.ph322.new ], [ %.7320.unr, %.prol.loopexit ] ; 9 uses
  %.2247319 = phi i32 [ %i.ix, %.lr.ph322.new ], [ %.2247319.unr, %.prol.loopexit ]
  %.2250318 = phi ptr [ %i.iv, %.lr.ph322.new ], [ %.2250318.unr, %.prol.loopexit ] ; 5 uses
  %i.hz = load i16, ptr %.2250318, align 2, !tbaa !116
  store i16 %i.hz, ptr %.7320, align 2, !tbaa !116
  %i.ia = getelementptr inbounds nuw i8, ptr %.2250318, i64 2
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !116
  %i.ic = getelementptr inbounds nuw i8, ptr %.7320, i64 2
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !116
  %i.id = getelementptr inbounds nuw i8, ptr %.2250318, i64 4
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !116
  %i.if = getelementptr inbounds nuw i8, ptr %.7320, i64 4
  store i16 %i.ie, ptr %i.if, align 2, !tbaa !116
  %i.ig = getelementptr inbounds nuw i8, ptr %.2250318, i64 6
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !116
  %i.ii = getelementptr inbounds nuw i8, ptr %.7320, i64 6
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !116
  %i.ij = getelementptr inbounds [2 x i8], ptr %.2250318, i64 %i.hj ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.7320, i64 8
  %i.il = load i16, ptr %i.ij, align 2, !tbaa !116
  store i16 %i.il, ptr %i.ik, align 2, !tbaa !116
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.in = load i16, ptr %i.im, align 2, !tbaa !116
  %i.io = getelementptr inbounds nuw i8, ptr %.7320, i64 10
  store i16 %i.in, ptr %i.io, align 2, !tbaa !116
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !116
  %i.ir = getelementptr inbounds nuw i8, ptr %.7320, i64 12
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !116
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  %i.it = load i16, ptr %i.is, align 2, !tbaa !116
  %i.iu = getelementptr inbounds nuw i8, ptr %.7320, i64 14
  store i16 %i.it, ptr %i.iu, align 2, !tbaa !116
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.ij, i64 %i.hj
  %i.iw = getelementptr inbounds nuw i8, ptr %.7320, i64 16 ; 2 uses
  %i.ix = add nuw nsw i32 %.2247319, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ix, %i.gx
  br i1 %exitcond.not.1, label %._crit_edge323, label %.lr.ph322.new, !llvm.loop !1854

._crit_edge323:                                   ; preds = %.prol.loopexit, %.lr.ph322.new, %._crit_edge313
  %.7.lcssa = phi ptr [ %.6.lcssa, %._crit_edge313 ], [ %.lcssa644.unr, %.prol.loopexit ], [ %i.iw, %.lr.ph322.new ] ; 2 uses
  %i.iy = add nuw nsw i32 %.1242325, 4            ; 3 uses
  %i.iz = or disjoint i32 %i.iy, 3
  %i.ja = icmp slt i32 %i.iz, %i.gw
  br i1 %i.ja, label %.lr.ph327, label %.preheader268, !llvm.loop !1855

.preheader:                                       ; preds = %._crit_edge354, %.preheader268
  %i.jb = phi i32 [ %i.dz, %.preheader268 ], [ %i.kg, %._crit_edge354 ] ; 2 uses
  %i.jc = phi i32 [ %i.ea, %.preheader268 ], [ %i.kh, %._crit_edge354 ] ; 3 uses
  %.2243.lcssa = phi i32 [ %.1242.lcssa, %.preheader268 ], [ %i.nb, %._crit_edge354 ] ; 2 uses
  %.8.lcssa = phi ptr [ %.4.lcssa, %.preheader268 ], [ %.11.lcssa, %._crit_edge354 ]
  %i.jd = icmp slt i32 %.2243.lcssa, %i.jc
  br i1 %i.jd, label %.lr.ph389.preheader, label %._crit_edge390

.lr.ph389.preheader:                              ; preds = %.preheader
  %.pre437.a = load i32, ptr %6, align 4, !tbaa !81
  %i.je = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br label %.lr.ph389

.lr.ph358:                                        ; preds = %.lr.ph358.preheader, %._crit_edge354
  %i.jf = phi i32 [ %i.kg, %._crit_edge354 ], [ %i.dz, %.lr.ph358.preheader ]
  %i.jg = phi i32 [ %i.kh, %._crit_edge354 ], [ %i.ea, %.lr.ph358.preheader ]
  %i.jh = phi i32 [ %i.ki, %._crit_edge354 ], [ %i.eb, %.lr.ph358.preheader ] ; 2 uses
  %i.ji = phi i32 [ %i.kj, %._crit_edge354 ], [ %.pre436, %.lr.ph358.preheader ] ; 2 uses
  %.8357 = phi ptr [ %.11.lcssa, %._crit_edge354 ], [ %.4.lcssa, %.lr.ph358.preheader ] ; 2 uses
  %.2243356 = phi i32 [ %i.nb, %._crit_edge354 ], [ %.1242.lcssa, %.lr.ph358.preheader ] ; 3 uses
  %7 = load ptr, ptr %5, align 8, !tbaa !37
  %i.jj = mul nsw i32 %i.jh, %i.ee
  %i.jk = add nsw i32 %i.jj, %.2243356            ; 2 uses
  %i.jl = shl nsw i32 %i.jk, 3
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds [2 x i8], ptr %7, i64 %i.jm ; 2 uses
  %i.jo = icmp sgt i32 %i.ji, 7
  br i1 %i.jo, label %.lr.ph334, label %._crit_edge335

.lr.ph334:                                        ; preds = %.lr.ph358, %.lr.ph334
  %.9332 = phi ptr [ %i.kb, %.lr.ph334 ], [ %.8357, %.lr.ph358 ] ; 3 uses
  %.0235331 = phi i32 [ %i.kc, %.lr.ph334 ], [ 0, %.lr.ph358 ]
  %.0238330 = phi ptr [ %i.ka, %.lr.ph334 ], [ %i.jn, %.lr.ph358 ] ; 3 uses
  %i.jp = load <4 x i32>, ptr %.0238330, align 16, !tbaa !114 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0238330, i64 16
  %i.jr = load <4 x i32>, ptr %i.jq, align 16, !tbaa !114 ; 2 uses
  %i.js = shufflevector <4 x i32> %i.jp, <4 x i32> %i.jr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.jt = shufflevector <4 x i32> %i.jp, <4 x i32> %i.jr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.js, ptr %.9332, align 1, !tbaa !114
  %i.ju = getelementptr inbounds nuw i8, ptr %.9332, i64 16
  store <4 x i32> %i.jt, ptr %i.ju, align 1, !tbaa !114
  %i.jv = load i32, ptr %4, align 4, !tbaa !81    ; 5 uses
  %i.jw = load i32, ptr %2, align 4, !tbaa !81
  %i.jx = shl i32 %i.jv, 3
  %i.jy = mul i32 %i.jx, %i.jw
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [2 x i8], ptr %.0238330, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.9332, i64 32 ; 2 uses
  %i.kc = add nuw nsw i32 %.0235331, 8            ; 3 uses
  %i.kd = or disjoint i32 %i.kc, 7
  %i.ke = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.kf = icmp slt i32 %i.kd, %i.ke
  br i1 %i.kf, label %.lr.ph334, label %._crit_edge335.loopexit, !llvm.loop !1856

._crit_edge335.loopexit:                          ; preds = %.lr.ph334
  %.pre461 = mul nsw i32 %i.jv, %i.ee
  %.pre463 = add nsw i32 %.pre461, %.2243356      ; 2 uses
  %.pre465 = shl nsw i32 %.pre463, 3
  %.pre467 = sext i32 %.pre465 to i64
  br label %._crit_edge335

._crit_edge335:                                   ; preds = %._crit_edge335.loopexit, %.lr.ph358
  %.pre-phi468.a = phi i64 [ %.pre467, %._crit_edge335.loopexit ], [ %i.jm, %.lr.ph358 ]
  %.pre-phi464 = phi i32 [ %.pre463, %._crit_edge335.loopexit ], [ %i.jk, %.lr.ph358 ] ; 2 uses
  %i.kg = phi i32 [ %i.jv, %._crit_edge335.loopexit ], [ %i.jf, %.lr.ph358 ] ; 2 uses
  %i.kh = phi i32 [ %i.jv, %._crit_edge335.loopexit ], [ %i.jg, %.lr.ph358 ] ; 2 uses
  %i.ki = phi i32 [ %i.jv, %._crit_edge335.loopexit ], [ %i.jh, %.lr.ph358 ] ; 4 uses
  %i.kj = phi i32 [ %i.ke, %._crit_edge335.loopexit ], [ %i.ji, %.lr.ph358 ] ; 7 uses
  %.0238.lcssa = phi ptr [ %i.ka, %._crit_edge335.loopexit ], [ %i.jn, %.lr.ph358 ]
  %.0235.lcssa = phi i32 [ %i.kc, %._crit_edge335.loopexit ], [ 0, %.lr.ph358 ] ; 3 uses
  %.9.lcssa = phi ptr [ %i.kb, %._crit_edge335.loopexit ], [ %.8357, %.lr.ph358 ] ; 2 uses
  %i.kk = sub nsw i64 0, %.pre-phi468.a
  %i.kl = getelementptr inbounds [2 x i8], ptr %.0238.lcssa, i64 %i.kk
  %i.km = shl nsw i32 %.pre-phi464, 1
  %i.kn = sext i32 %i.km to i64                   ; 2 uses
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.kl, i64 %i.kn ; 2 uses
  %i.kp = or disjoint i32 %.0235.lcssa, 1
  %i.kq = icmp slt i32 %i.kp, %i.kj
  br i1 %i.kq, label %.lr.ph344, label %._crit_edge345

.lr.ph344:                                        ; preds = %._crit_edge335
  %i.kr = load i32, ptr %2, align 4, !tbaa !81
  %i.ks = shl i32 %i.ki, 1
  %i.kt = mul i32 %i.ks, %i.kr
  %i.ku = sext i32 %i.kt to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph344, %bb.d
  %.10342 = phi ptr [ %.9.lcssa, %.lr.ph344 ], [ %i.lg, %bb.d ] ; 5 uses
  %.1236341 = phi i32 [ %.0235.lcssa, %.lr.ph344 ], [ %i.lh, %bb.d ]
  %.1239340 = phi ptr [ %i.ko, %.lr.ph344 ], [ %i.lf, %bb.d ] ; 5 uses
  %i.kv = load i16, ptr %.1239340, align 2, !tbaa !116
  store i16 %i.kv, ptr %.10342, align 2, !tbaa !116
  %i.kw = getelementptr inbounds nuw i8, ptr %.1239340, i64 2
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !116
  %i.ky = getelementptr inbounds nuw i8, ptr %.10342, i64 2
  store i16 %i.kx, ptr %i.ky, align 2, !tbaa !116
  %i.kz = getelementptr inbounds nuw i8, ptr %.1239340, i64 4
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !116
  %i.lb = getelementptr inbounds nuw i8, ptr %.10342, i64 4
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !116
  %i.lc = getelementptr inbounds nuw i8, ptr %.1239340, i64 6
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !116
  %i.le = getelementptr inbounds nuw i8, ptr %.10342, i64 6
  store i16 %i.ld, ptr %i.le, align 2, !tbaa !116
  %i.lf = getelementptr inbounds [2 x i8], ptr %.1239340, i64 %i.ku ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.10342, i64 8 ; 2 uses
  %i.lh = add nuw nsw i32 %.1236341, 2            ; 3 uses
  %i.li = or disjoint i32 %i.lh, 1
  %i.lj = icmp slt i32 %i.li, %i.kj
  br i1 %i.lj, label %bb.d, label %._crit_edge345, !llvm.loop !1857

._crit_edge345:                                   ; preds = %bb.d, %._crit_edge335
  %.1239.lcssa = phi ptr [ %i.ko, %._crit_edge335 ], [ %i.lf, %bb.d ]
  %.1236.lcssa = phi i32 [ %.0235.lcssa, %._crit_edge335 ], [ %i.lh, %bb.d ] ; 5 uses
  %.10.lcssa = phi ptr [ %.9.lcssa, %._crit_edge335 ], [ %i.lg, %bb.d ] ; 3 uses
  %i.lk = icmp slt i32 %.1236.lcssa, %i.kj
  br i1 %i.lk, label %.lr.ph353, label %._crit_edge354

.lr.ph353:                                        ; preds = %._crit_edge345
  %i.ll = sub nsw i64 0, %i.kn
  %i.lm = getelementptr inbounds [2 x i8], ptr %.1239.lcssa, i64 %i.ll
  %i.ln = sext i32 %.pre-phi464 to i64
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.lm, i64 %i.ln ; 2 uses
  %i.lp = load i32, ptr %2, align 4, !tbaa !81
  %i.lq = mul nsw i32 %i.lp, %i.ki
  %i.lr = sext i32 %i.lq to i64                   ; 5 uses
  %i.ls = sub i32 %i.kj, %.1236.lcssa
  %xtraiter673 = and i32 %i.ls, 3                 ; 2 uses
  %lcmp.mod674.not = icmp eq i32 %xtraiter673, 0
  br i1 %lcmp.mod674.not, label %.prol.loopexit672, label %.prol.preheader671

.prol.preheader671:                               ; preds = %.lr.ph353, %.prol.preheader671
  %.11351.prol = phi ptr [ %i.ly, %.prol.preheader671 ], [ %.10.lcssa, %.lr.ph353 ] ; 3 uses
  %.2237350.prol = phi i32 [ %i.lz, %.prol.preheader671 ], [ %.1236.lcssa, %.lr.ph353 ]
  %.2240349.prol = phi ptr [ %i.lx, %.prol.preheader671 ], [ %i.lo, %.lr.ph353 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader671 ], [ 0, %.lr.ph353 ]
  %i.lt = load i16, ptr %.2240349.prol, align 2, !tbaa !116
  store i16 %i.lt, ptr %.11351.prol, align 2, !tbaa !116
  %i.lu = getelementptr inbounds nuw i8, ptr %.2240349.prol, i64 2
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !116
  %i.lw = getelementptr inbounds nuw i8, ptr %.11351.prol, i64 2
  store i16 %i.lv, ptr %i.lw, align 2, !tbaa !116
  %i.lx = getelementptr inbounds [2 x i8], ptr %.2240349.prol, i64 %i.lr ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.11351.prol, i64 4 ; 3 uses
  %i.lz = add nuw nsw i32 %.2237350.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter673
  br i1 %prol.iter.cmp.not, label %.prol.loopexit672, label %.prol.preheader671, !llvm.loop !1858

.prol.loopexit672:                                ; preds = %.prol.preheader671, %.lr.ph353
  %.lcssa657.unr = phi ptr [ poison, %.lr.ph353 ], [ %i.ly, %.prol.preheader671 ]
  %.11351.unr = phi ptr [ %.10.lcssa, %.lr.ph353 ], [ %i.ly, %.prol.preheader671 ]
  %.2237350.unr = phi i32 [ %.1236.lcssa, %.lr.ph353 ], [ %i.lz, %.prol.preheader671 ]
  %.2240349.unr = phi ptr [ %i.lo, %.lr.ph353 ], [ %i.lx, %.prol.preheader671 ]
  %i.ma = sub i32 %.1236.lcssa, %i.kj
  %i.mb = icmp ugt i32 %i.ma, -4
  br i1 %i.mb, label %._crit_edge354, label %.lr.ph353.new

.lr.ph353.new:                                    ; preds = %.prol.loopexit672, %.lr.ph353.new
  %.11351 = phi ptr [ %i.mz, %.lr.ph353.new ], [ %.11351.unr, %.prol.loopexit672 ] ; 9 uses
  %.2237350 = phi i32 [ %i.na, %.lr.ph353.new ], [ %.2237350.unr, %.prol.loopexit672 ]
  %.2240349 = phi ptr [ %i.my, %.lr.ph353.new ], [ %.2240349.unr, %.prol.loopexit672 ] ; 3 uses
  %i.mc = load i16, ptr %.2240349, align 2, !tbaa !116
  store i16 %i.mc, ptr %.11351, align 2, !tbaa !116
  %i.md = getelementptr inbounds nuw i8, ptr %.2240349, i64 2
  %i.me = load i16, ptr %i.md, align 2, !tbaa !116
  %i.mf = getelementptr inbounds nuw i8, ptr %.11351, i64 2
  store i16 %i.me, ptr %i.mf, align 2, !tbaa !116
  %i.mg = getelementptr inbounds [2 x i8], ptr %.2240349, i64 %i.lr ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.11351, i64 4
  %i.mi = load i16, ptr %i.mg, align 2, !tbaa !116
  store i16 %i.mi, ptr %i.mh, align 2, !tbaa !116
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !116
  %i.ml = getelementptr inbounds nuw i8, ptr %.11351, i64 6
  store i16 %i.mk, ptr %i.ml, align 2, !tbaa !116
  %i.mm = getelementptr inbounds [2 x i8], ptr %i.mg, i64 %i.lr ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.11351, i64 8
  %i.mo = load i16, ptr %i.mm, align 2, !tbaa !116
  store i16 %i.mo, ptr %i.mn, align 2, !tbaa !116
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 2
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !116
  %i.mr = getelementptr inbounds nuw i8, ptr %.11351, i64 10
  store i16 %i.mq, ptr %i.mr, align 2, !tbaa !116
  %i.ms = getelementptr inbounds [2 x i8], ptr %i.mm, i64 %i.lr ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.11351, i64 12
  %i.mu = load i16, ptr %i.ms, align 2, !tbaa !116
  store i16 %i.mu, ptr %i.mt, align 2, !tbaa !116
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !116
  %i.mx = getelementptr inbounds nuw i8, ptr %.11351, i64 14
  store i16 %i.mw, ptr %i.mx, align 2, !tbaa !116
  %i.my = getelementptr inbounds [2 x i8], ptr %i.ms, i64 %i.lr
  %i.mz = getelementptr inbounds nuw i8, ptr %.11351, i64 16 ; 2 uses
  %i.na = add nuw nsw i32 %.2237350, 4            ; 2 uses
  %exitcond430.not.3 = icmp eq i32 %i.na, %i.kj
  br i1 %exitcond430.not.3, label %._crit_edge354, label %.lr.ph353.new, !llvm.loop !1859

._crit_edge354:                                   ; preds = %.prol.loopexit672, %.lr.ph353.new, %._crit_edge345
  %.11.lcssa = phi ptr [ %.10.lcssa, %._crit_edge345 ], [ %.lcssa657.unr, %.prol.loopexit672 ], [ %i.mz, %.lr.ph353.new ] ; 2 uses
  %i.nb = add nuw nsw i32 %.2243356, 2            ; 3 uses
  %i.nc = or disjoint i32 %i.nb, 1
  %i.nd = icmp slt i32 %i.nc, %i.ki
  br i1 %i.nd, label %.lr.ph358, label %.preheader, !llvm.loop !1860

.lr.ph389:                                        ; preds = %.lr.ph389.preheader, %._crit_edge385
  %i.ne = phi i32 [ %i.nz, %._crit_edge385 ], [ %i.jb, %.lr.ph389.preheader ]
  %i.nf = phi i32 [ %i.ob, %._crit_edge385 ], [ %.pre437.a, %.lr.ph389.preheader ] ; 2 uses
  %i.ng = phi i32 [ %i.nz, %._crit_edge385 ], [ %i.jc, %.lr.ph389.preheader ] ; 2 uses
  %.12388 = phi ptr [ %.15.lcssa, %._crit_edge385 ], [ %.8.lcssa, %.lr.ph389.preheader ] ; 2 uses
  %.3244387 = phi i32 [ %i.qk, %._crit_edge385 ], [ %.2243.lcssa, %.lr.ph389.preheader ] ; 3 uses
  %8 = load ptr, ptr %5, align 8, !tbaa !37
  %i.nh = mul nsw i32 %i.ng, %i.je
  %i.ni = add nsw i32 %i.nh, %.3244387            ; 2 uses
  %i.nj = shl nsw i32 %i.ni, 3
  %i.nk = sext i32 %i.nj to i64                   ; 2 uses
  %i.nl = getelementptr inbounds [2 x i8], ptr %8, i64 %i.nk ; 2 uses
  %i.nm = icmp sgt i32 %i.nf, 7
  br i1 %i.nm, label %.lr.ph365, label %._crit_edge366

.lr.ph365:                                        ; preds = %.lr.ph389, %.lr.ph365
  %.0228363 = phi i32 [ %i.nv, %.lr.ph365 ], [ 0, %.lr.ph389 ]
  %.0229362 = phi ptr [ %i.nt, %.lr.ph365 ], [ %i.nl, %.lr.ph389 ] ; 2 uses
  %.13361 = phi ptr [ %i.nu, %.lr.ph365 ], [ %.12388, %.lr.ph389 ] ; 2 uses
  %i.nn = load <2 x i64>, ptr %.0229362, align 16, !tbaa !114
  store <2 x i64> %i.nn, ptr %.13361, align 1, !tbaa !114
  %i.no = load i32, ptr %4, align 4, !tbaa !81    ; 4 uses
  %i.np = load i32, ptr %2, align 4, !tbaa !81
  %i.nq = shl i32 %i.no, 3
  %i.nr = mul i32 %i.nq, %i.np
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [2 x i8], ptr %.0229362, i64 %i.ns ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.13361, i64 16 ; 2 uses
  %i.nv = add nuw nsw i32 %.0228363, 8            ; 3 uses
  %i.nw = or disjoint i32 %i.nv, 7
  %i.nx = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.ny = icmp slt i32 %i.nw, %i.nx
  br i1 %i.ny, label %.lr.ph365, label %._crit_edge366.loopexit, !llvm.loop !1861

._crit_edge366.loopexit:                          ; preds = %.lr.ph365
  %.pre469 = mul nsw i32 %i.no, %i.je
  %.pre471 = add nsw i32 %.pre469, %.3244387      ; 2 uses
  %.pre473 = shl nsw i32 %.pre471, 3
  %.pre475 = sext i32 %.pre473 to i64
  br label %._crit_edge366

._crit_edge366:                                   ; preds = %._crit_edge366.loopexit, %.lr.ph389
  %.pre-phi476.a = phi i64 [ %.pre475, %._crit_edge366.loopexit ], [ %i.nk, %.lr.ph389 ]
  %.pre-phi472 = phi i32 [ %.pre471, %._crit_edge366.loopexit ], [ %i.ni, %.lr.ph389 ] ; 2 uses
  %i.nz = phi i32 [ %i.no, %._crit_edge366.loopexit ], [ %i.ne, %.lr.ph389 ] ; 5 uses
  %i.oa = phi i32 [ %i.no, %._crit_edge366.loopexit ], [ %i.ng, %.lr.ph389 ] ; 2 uses
  %i.ob = phi i32 [ %i.nx, %._crit_edge366.loopexit ], [ %i.nf, %.lr.ph389 ] ; 7 uses
  %.13.lcssa = phi ptr [ %i.nu, %._crit_edge366.loopexit ], [ %.12388, %.lr.ph389 ] ; 2 uses
  %.0229.lcssa = phi ptr [ %i.nt, %._crit_edge366.loopexit ], [ %i.nl, %.lr.ph389 ]
  %.0228.lcssa = phi i32 [ %i.nv, %._crit_edge366.loopexit ], [ 0, %.lr.ph389 ] ; 3 uses
  %i.oc = sub nsw i64 0, %.pre-phi476.a
  %i.od = getelementptr inbounds [2 x i8], ptr %.0229.lcssa, i64 %i.oc
  %i.oe = shl nsw i32 %.pre-phi472, 1
  %i.of = sext i32 %i.oe to i64                   ; 2 uses
  %i.og = getelementptr inbounds [2 x i8], ptr %i.od, i64 %i.of ; 2 uses
  %i.oh = or disjoint i32 %.0228.lcssa, 1
  %i.oi = icmp slt i32 %i.oh, %i.ob
  br i1 %i.oi, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %._crit_edge366
  %i.oj = load i32, ptr %2, align 4, !tbaa !81
  %i.ok = shl i32 %i.oa, 1
  %i.ol = mul i32 %i.ok, %i.oj
  %i.om = sext i32 %i.ol to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph375, %bb.e
  %.1373 = phi i32 [ %.0228.lcssa, %.lr.ph375 ], [ %i.ot, %bb.e ]
  %.1230372 = phi ptr [ %i.og, %.lr.ph375 ], [ %i.or, %bb.e ] ; 3 uses
  %.14371 = phi ptr [ %.13.lcssa, %.lr.ph375 ], [ %i.os, %bb.e ] ; 3 uses
  %i.on = load i16, ptr %.1230372, align 2, !tbaa !116
  store i16 %i.on, ptr %.14371, align 2, !tbaa !116
  %i.oo = getelementptr inbounds nuw i8, ptr %.1230372, i64 2
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !116
  %i.oq = getelementptr inbounds nuw i8, ptr %.14371, i64 2
  store i16 %i.op, ptr %i.oq, align 2, !tbaa !116
  %i.or = getelementptr inbounds [2 x i8], ptr %.1230372, i64 %i.om ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.14371, i64 4 ; 2 uses
  %i.ot = add nuw nsw i32 %.1373, 2               ; 3 uses
  %i.ou = or disjoint i32 %i.ot, 1
  %i.ov = icmp slt i32 %i.ou, %i.ob
  br i1 %i.ov, label %bb.e, label %._crit_edge376, !llvm.loop !1862

._crit_edge376:                                   ; preds = %bb.e, %._crit_edge366
  %.14.lcssa = phi ptr [ %.13.lcssa, %._crit_edge366 ], [ %i.os, %bb.e ] ; 3 uses
  %.1230.lcssa = phi ptr [ %i.og, %._crit_edge366 ], [ %i.or, %bb.e ]
  %.1.lcssa = phi i32 [ %.0228.lcssa, %._crit_edge366 ], [ %i.ot, %bb.e ] ; 5 uses
  %i.ow = icmp slt i32 %.1.lcssa, %i.ob
  br i1 %i.ow, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %._crit_edge376
  %i.ox = sub nsw i64 0, %i.of
  %i.oy = getelementptr inbounds [2 x i8], ptr %.1230.lcssa, i64 %i.ox
  %i.oz = sext i32 %.pre-phi472 to i64
  %i.pa = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.oz ; 2 uses
  %i.pb = load i32, ptr %2, align 4, !tbaa !81
  %i.pc = mul nsw i32 %i.pb, %i.oa
  %i.pd = sext i32 %i.pc to i64                   ; 9 uses
  %i.pe = sub i32 %i.ob, %.1.lcssa
  %xtraiter677 = and i32 %i.pe, 7                 ; 2 uses
  %lcmp.mod678.not = icmp eq i32 %xtraiter677, 0
  br i1 %lcmp.mod678.not, label %.prol.loopexit676, label %.prol.preheader675

.prol.preheader675:                               ; preds = %.lr.ph384, %.prol.preheader675
  %.2382.prol = phi i32 [ %i.pi, %.prol.preheader675 ], [ %.1.lcssa, %.lr.ph384 ]
  %.2231381.prol = phi ptr [ %i.pg, %.prol.preheader675 ], [ %i.pa, %.lr.ph384 ] ; 2 uses
  %.15380.prol = phi ptr [ %i.ph, %.prol.preheader675 ], [ %.14.lcssa, %.lr.ph384 ] ; 2 uses
  %prol.iter679 = phi i32 [ %prol.iter679.next, %.prol.preheader675 ], [ 0, %.lr.ph384 ]
  %i.pf = load i16, ptr %.2231381.prol, align 2, !tbaa !116
  store i16 %i.pf, ptr %.15380.prol, align 2, !tbaa !116
  %i.pg = getelementptr inbounds [2 x i8], ptr %.2231381.prol, i64 %i.pd ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.15380.prol, i64 2 ; 3 uses
  %i.pi = add nuw nsw i32 %.2382.prol, 1          ; 2 uses
  %prol.iter679.next = add i32 %prol.iter679, 1   ; 2 uses
  %prol.iter679.cmp.not = icmp eq i32 %prol.iter679.next, %xtraiter677
  br i1 %prol.iter679.cmp.not, label %.prol.loopexit676, label %.prol.preheader675, !llvm.loop !1863

.prol.loopexit676:                                ; preds = %.prol.preheader675, %.lr.ph384
  %.lcssa669.unr = phi ptr [ poison, %.lr.ph384 ], [ %i.ph, %.prol.preheader675 ]
  %.2382.unr = phi i32 [ %.1.lcssa, %.lr.ph384 ], [ %i.pi, %.prol.preheader675 ]
  %.2231381.unr = phi ptr [ %i.pa, %.lr.ph384 ], [ %i.pg, %.prol.preheader675 ]
  %.15380.unr = phi ptr [ %.14.lcssa, %.lr.ph384 ], [ %i.ph, %.prol.preheader675 ]
  %i.pj = sub i32 %.1.lcssa, %i.ob
  %i.pk = icmp ugt i32 %i.pj, -8
  br i1 %i.pk, label %._crit_edge385, label %.lr.ph384.new

.lr.ph384.new:                                    ; preds = %.prol.loopexit676, %.lr.ph384.new
  %.2382 = phi i32 [ %i.qj, %.lr.ph384.new ], [ %.2382.unr, %.prol.loopexit676 ]
  %.2231381 = phi ptr [ %i.qh, %.lr.ph384.new ], [ %.2231381.unr, %.prol.loopexit676 ] ; 2 uses
  %.15380 = phi ptr [ %i.qi, %.lr.ph384.new ], [ %.15380.unr, %.prol.loopexit676 ] ; 9 uses
  %i.pl = load i16, ptr %.2231381, align 2, !tbaa !116
  store i16 %i.pl, ptr %.15380, align 2, !tbaa !116
  %i.pm = getelementptr inbounds [2 x i8], ptr %.2231381, i64 %i.pd ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.15380, i64 2
  %i.po = load i16, ptr %i.pm, align 2, !tbaa !116
  store i16 %i.po, ptr %i.pn, align 2, !tbaa !116
  %i.pp = getelementptr inbounds [2 x i8], ptr %i.pm, i64 %i.pd ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.15380, i64 4
  %i.pr = load i16, ptr %i.pp, align 2, !tbaa !116
  store i16 %i.pr, ptr %i.pq, align 2, !tbaa !116
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.pp, i64 %i.pd ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.15380, i64 6
  %i.pu = load i16, ptr %i.ps, align 2, !tbaa !116
  store i16 %i.pu, ptr %i.pt, align 2, !tbaa !116
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.ps, i64 %i.pd ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.15380, i64 8
  %i.px = load i16, ptr %i.pv, align 2, !tbaa !116
  store i16 %i.px, ptr %i.pw, align 2, !tbaa !116
  %i.py = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.pd ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.15380, i64 10
  %i.qa = load i16, ptr %i.py, align 2, !tbaa !116
  store i16 %i.qa, ptr %i.pz, align 2, !tbaa !116
  %i.qb = getelementptr inbounds [2 x i8], ptr %i.py, i64 %i.pd ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.15380, i64 12
  %i.qd = load i16, ptr %i.qb, align 2, !tbaa !116
  store i16 %i.qd, ptr %i.qc, align 2, !tbaa !116
  %i.qe = getelementptr inbounds [2 x i8], ptr %i.qb, i64 %i.pd ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.15380, i64 14
  %i.qg = load i16, ptr %i.qe, align 2, !tbaa !116
  store i16 %i.qg, ptr %i.qf, align 2, !tbaa !116
  %i.qh = getelementptr inbounds [2 x i8], ptr %i.qe, i64 %i.pd
  %i.qi = getelementptr inbounds nuw i8, ptr %.15380, i64 16 ; 2 uses
  %i.qj = add nuw nsw i32 %.2382, 8               ; 2 uses
  %exitcond431.not.7 = icmp eq i32 %i.qj, %i.ob
  br i1 %exitcond431.not.7, label %._crit_edge385, label %.lr.ph384.new, !llvm.loop !1864

._crit_edge385:                                   ; preds = %.prol.loopexit676, %.lr.ph384.new, %._crit_edge376
  %.15.lcssa = phi ptr [ %.14.lcssa, %._crit_edge376 ], [ %.lcssa669.unr, %.prol.loopexit676 ], [ %i.qi, %.lr.ph384.new ]
  %i.qk = add nuw nsw i32 %.3244387, 1            ; 2 uses
  %i.ql = icmp slt i32 %i.qk, %i.nz
  br i1 %i.ql, label %.lr.ph389, label %._crit_edge390, !llvm.loop !1865

._crit_edge390:                                   ; preds = %._crit_edge385, %.preheader
  %i.qm = phi i32 [ %i.jb, %.preheader ], [ %i.nz, %._crit_edge385 ]
  %i.qn = phi i32 [ %i.jc, %.preheader ], [ %i.nz, %._crit_edge385 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond433.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond433.not, label %._crit_edge395, label %bb.c

._crit_edge395:                                   ; preds = %._crit_edge390, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge395, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #20

declare noundef i32 @_ZN4ncnn33conv3x3s1_winograd23_int8_avxvnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn30conv3x3s1_winograd23_int8_avx2ERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn29conv3x3s1_winograd23_int8_xopERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 1, -2147483648) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %i.a, align 4, !tbaa !81
  store i32 %3, ptr %i.b, align 4, !tbaa !81
  store i32 %4, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !89   ; 2 uses
  store i32 %i.m, ptr %i.d, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !90
  store i32 %i.o, ptr %i.e, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !80   ; 2 uses
  store i32 %i.q, ptr %i.f, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  %i.t = sext i32 %i.q to i64
  %i.u = mul i64 %i.s, %i.t
  store i64 %i.u, ptr %i.g, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.v = add nsw i32 %i.m, -1
  %i.w = sdiv i32 %i.v, 2
  store i32 %i.w, ptr %i.h, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  store i32 0, ptr %i.j, align 4, !tbaa !81
  %i.x = sdiv i32 %5, 8
  store i32 %i.x, ptr %i.i, align 4, !tbaa !81
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.g, ptr nonnull %1)
end_hunk_0
