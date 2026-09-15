Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
  %i.cr = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.cs = fmul fast <4 x float> %i.co, %i.cq
  %i.ct = fmul fast <4 x float> %i.cp, %i.cr
  %i.cu = fmul fast <4 x float> %i.cm, %i.bv
  %i.cv = fmul fast <4 x float> %i.cn, %i.cb
  %i.cw = bitcast <4 x float> %i.cs to <4 x i32>
  %i.cx = xor <4 x i32> %i.cw, <i32 -2147483648, i32 0, i32 -2147483648, i32 0>
  %i.cy = bitcast <4 x i32> %i.cx to <4 x float>
  %i.cz = bitcast <4 x float> %i.ct to <4 x i32>
  %i.da = xor <4 x i32> %i.cz, <i32 -2147483648, i32 0, i32 -2147483648, i32 0>
  %i.db = bitcast <4 x i32> %i.da to <4 x float>
  %i.dc = fadd fast <4 x float> %i.cu, %i.cy
  %i.dd = fadd fast <4 x float> %i.cv, %i.db
  %i.de = bitcast <4 x float> %i.dc to <8 x i16>
  %i.df = bitcast <4 x float> %i.dd to <8 x i16>
  %i.dg = shufflevector <8 x i16> %i.de, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dh = shufflevector <8 x i16> %i.df, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.di = bitcast <8 x i16> %i.dg to <4 x float>
  %i.dj = bitcast <8 x i16> %i.dh to <4 x float>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.dk, ptr %.0180253, align 1, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %.0169257, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0180253, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0171256, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0174255, i64 8 ; 2 uses
  %i.dp = add nuw nsw i32 %.0177254, 4            ; 3 uses
  %i.dq = or disjoint i32 %i.dp, 3
  %i.dr = load i32, ptr %9, align 4, !tbaa !21
  %i.ds = sdiv i32 %i.dr, 2                       ; 2 uses
  %i.dt = icmp slt i32 %i.dq, %i.ds
  br i1 %i.dt, label %.lr.ph, label %.preheader251, !llvm.loop !87

.preheader249:                                    ; preds = %.lr.ph267, %.preheader251
  %.1181.lcssa = phi ptr [ %.0180.lcssa, %.preheader251 ], [ %i.go, %.lr.ph267 ] ; 8 uses
  %.1178.lcssa = phi i32 [ %.0177.lcssa, %.preheader251 ], [ %i.gr, %.lr.ph267 ] ; 6 uses
  %.1175.lcssa = phi ptr [ %.0174.lcssa, %.preheader251 ], [ %i.gq, %.lr.ph267 ] ; 6 uses
  %.1172.lcssa = phi ptr [ %.0171.lcssa, %.preheader251 ], [ %i.gp, %.lr.ph267 ] ; 6 uses
  %.1170.lcssa = phi ptr [ %.0169.lcssa, %.preheader251 ], [ %i.gn, %.lr.ph267 ] ; 6 uses
  %.lcssa = phi i32 [ %.pre-phi, %.preheader251 ], [ %i.gu, %.lr.ph267 ] ; 4 uses
  %i.du = icmp slt i32 %.1178.lcssa, %.lcssa
  br i1 %i.du, label %.lr.ph279.preheader, label %.loopexit

.lr.ph279.preheader:                              ; preds = %.preheader249
  %i.dv = xor i32 %.1178.lcssa, -1
  %i.dw = add i32 %.lcssa, %i.dv                  ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check439 = icmp ult i32 %i.dw, 3
  br i1 %min.iters.check439, label %.lr.ph279.preheader460, label %vector.memcheck422

vector.memcheck422:                               ; preds = %.lr.ph279.preheader
  %scevgep = getelementptr i8, ptr %.1181.lcssa, i64 4
  %i.dz = xor i32 %.1178.lcssa, -1
  %i.ea = add i32 %.lcssa, %i.dz
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 2                ; 2 uses
  %scevgep423 = getelementptr i8, ptr %scevgep, i64 %i.ec ; 3 uses
  %scevgep424 = getelementptr i8, ptr %.1170.lcssa, i64 4
  %scevgep425 = getelementptr i8, ptr %scevgep424, i64 %i.ec
  %scevgep426 = getelementptr i8, ptr %.1172.lcssa, i64 2
  %i.ed = shl nuw nsw i64 %i.eb, 1                ; 2 uses
  %scevgep427 = getelementptr i8, ptr %scevgep426, i64 %i.ed
  %scevgep428 = getelementptr i8, ptr %.1175.lcssa, i64 2
  %scevgep429 = getelementptr i8, ptr %scevgep428, i64 %i.ed
  %bound0 = icmp ult ptr %.1181.lcssa, %scevgep425
  %bound1 = icmp ult ptr %.1170.lcssa, %scevgep423
  %found.conflict = and i1 %bound0, %bound1
  %bound0430 = icmp ult ptr %.1181.lcssa, %scevgep427
  %bound1431 = icmp ult ptr %.1172.lcssa, %scevgep423
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %found.conflict, %found.conflict432
  %bound0434 = icmp ult ptr %.1181.lcssa, %scevgep429
  %bound1435 = icmp ult ptr %.1175.lcssa, %scevgep423
  %found.conflict436 = and i1 %bound0434, %bound1435
  %conflict.rdx437 = or i1 %conflict.rdx433, %found.conflict436
  br i1 %conflict.rdx437, label %.lr.ph279.preheader460, label %vector.ph440

vector.ph440:                                     ; preds = %vector.memcheck422
  %n.vec441 = and i64 %i.dy, 8589934588           ; 5 uses
  %i.ee = shl nuw nsw i64 %n.vec441, 2            ; 2 uses
  %i.ef = getelementptr i8, ptr %.1170.lcssa, i64 %i.ee
  %i.eg = shl nuw nsw i64 %n.vec441, 1            ; 2 uses
  %i.eh = getelementptr i8, ptr %.1172.lcssa, i64 %i.eg
  %i.ei = getelementptr i8, ptr %.1175.lcssa, i64 %i.eg
  %i.ej = trunc i64 %n.vec441 to i32
  %i.ek = add i32 %.1178.lcssa, %i.ej
  %i.el = getelementptr i8, ptr %.1181.lcssa, i64 %i.ee
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph440
  %index443 = phi i64 [ 0, %vector.ph440 ], [ %index.next451, %vector.body442 ] ; 3 uses
  %i.em = shl i64 %index443, 2                    ; 2 uses
  %next.gep444 = getelementptr i8, ptr %.1170.lcssa, i64 %i.em
  %i.en = shl i64 %index443, 1                    ; 2 uses
  %next.gep445 = getelementptr i8, ptr %.1172.lcssa, i64 %i.en
  %next.gep446 = getelementptr i8, ptr %.1175.lcssa, i64 %i.en
  %next.gep447 = getelementptr i8, ptr %.1181.lcssa, i64 %i.em
  %wide.vec = load <8 x i16>, ptr %next.gep444, align 2, !tbaa !103, !alias.scope !104
  %i.eo = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.ep = bitcast <8 x i16> %i.eo to <4 x i32>
  %i.eq = bitcast <8 x i16> %i.eo to <4 x i32>
  %i.er = and <4 x i32> %i.eq, splat (i32 -65536)
  %i.es = shl <4 x i32> %i.ep, splat (i32 16)
  %i.et = bitcast <4 x i32> %i.es to <4 x float>  ; 2 uses
  %i.eu = bitcast <4 x i32> %i.er to <4 x float>  ; 2 uses
  %wide.load449 = load <4 x i16>, ptr %next.gep445, align 2, !tbaa !103, !alias.scope !105
  %i.ev = zext <4 x i16> %wide.load449 to <4 x i32>
  %i.ew = shl nuw <4 x i32> %i.ev, splat (i32 16)
  %i.ex = bitcast <4 x i32> %i.ew to <4 x float>  ; 2 uses
  %wide.load450 = load <4 x i16>, ptr %next.gep446, align 2, !tbaa !103, !alias.scope !106
  %i.ey = zext <4 x i16> %wide.load450 to <4 x i32>
  %i.ez = shl nuw <4 x i32> %i.ey, splat (i32 16)
  %i.fa = bitcast <4 x i32> %i.ez to <4 x float>  ; 2 uses
  %i.fb = fmul fast <4 x float> %i.ex, %i.et
  %i.fc = fmul fast <4 x float> %i.fa, %i.eu
  %i.fd = fsub fast <4 x float> %i.fb, %i.fc
  %i.fe = fmul fast <4 x float> %i.fa, %i.et
  %i.ff = fmul fast <4 x float> %i.ex, %i.eu
  %i.fg = fadd fast <4 x float> %i.fe, %i.ff
  %i.fh = shufflevector <4 x float> %i.fd, <4 x float> %i.fg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fi = bitcast <8 x float> %i.fh to <8 x i32>
  %i.fj = lshr <8 x i32> %i.fi, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.fj to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep447, align 2, !tbaa !103, !alias.scope !107, !noalias !108
  %index.next451 = add nuw i64 %index443, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next451, %n.vec441
  br i1 %i.fk, label %middle.block452, label %vector.body442, !llvm.loop !93

middle.block452:                                  ; preds = %vector.body442
  %cmp.n453 = icmp eq i64 %i.dy, %n.vec441
  br i1 %cmp.n453, label %.loopexit, label %.lr.ph279.preheader460

.lr.ph279.preheader460:                           ; preds = %vector.memcheck422, %.lr.ph279.preheader, %middle.block452
  %.2278.ph = phi ptr [ %.1170.lcssa, %vector.memcheck422 ], [ %.1170.lcssa, %.lr.ph279.preheader ], [ %i.ef, %middle.block452 ]
  %.2173277.ph = phi ptr [ %.1172.lcssa, %vector.memcheck422 ], [ %.1172.lcssa, %.lr.ph279.preheader ], [ %i.eh, %middle.block452 ]
  %.2176276.ph = phi ptr [ %.1175.lcssa, %vector.memcheck422 ], [ %.1175.lcssa, %.lr.ph279.preheader ], [ %i.ei, %middle.block452 ]
  %.2179275.ph = phi i32 [ %.1178.lcssa, %vector.memcheck422 ], [ %.1178.lcssa, %.lr.ph279.preheader ], [ %i.ek, %middle.block452 ]
  %.2182274.ph = phi ptr [ %.1181.lcssa, %vector.memcheck422 ], [ %.1181.lcssa, %.lr.ph279.preheader ], [ %i.el, %middle.block452 ]
  br label %.lr.ph279

.lr.ph267:                                        ; preds = %.preheader251, %.lr.ph267
  %.1170266 = phi ptr [ %i.gn, %.lr.ph267 ], [ %.0169.lcssa, %.preheader251 ] ; 2 uses
  %.1172265 = phi ptr [ %i.gp, %.lr.ph267 ], [ %.0171.lcssa, %.preheader251 ] ; 2 uses
  %.1175264 = phi ptr [ %i.gq, %.lr.ph267 ], [ %.0174.lcssa, %.preheader251 ] ; 2 uses
  %.1178263 = phi i32 [ %i.gr, %.lr.ph267 ], [ %.0177.lcssa, %.preheader251 ]
  %.1181262 = phi ptr [ %i.go, %.lr.ph267 ], [ %.0180.lcssa, %.preheader251 ] ; 2 uses
  %i.fl = load i64, ptr %.1170266, align 1, !tbaa !42
  %i.fm = insertelement <2 x i64> poison, i64 %i.fl, i64 0
  %i.fn = bitcast <2 x i64> %i.fm to <8 x i16>
  %i.fo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fp = bitcast <8 x i16> %i.fo to <4 x float>  ; 2 uses
  %i.fq = load <2 x i16>, ptr %.1172265, align 2, !tbaa !103
  %i.fr = zext <2 x i16> %i.fq to <2 x i32>
  %i.fs = shl nuw <2 x i32> %i.fr, splat (i32 16)
  %i.ft = bitcast <2 x i32> %i.fs to <2 x float>
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fv = load <2 x i16>, ptr %.1175264, align 2, !tbaa !103
  %i.fw = zext <2 x i16> %i.fv to <2 x i32>
  %i.fx = shl nuw <2 x i32> %i.fw, splat (i32 16)
  %i.fy = bitcast <2 x i32> %i.fx to <2 x float>
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ga = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.gb = fmul fast <4 x float> %i.fz, %i.ga
  %i.gc = fmul fast <4 x float> %i.fu, %i.fp
  %i.gd = bitcast <4 x float> %i.gb to <4 x i32>
  %i.ge = xor <4 x i32> %i.gd, <i32 -2147483648, i32 0, i32 -2147483648, i32 0>
  %i.gf = bitcast <4 x i32> %i.ge to <4 x float>
  %i.gg = fadd fast <4 x float> %i.gc, %i.gf
  %i.gh = bitcast <4 x float> %i.gg to <8 x i16>
  %i.gi = shufflevector <8 x i16> %i.gh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.gj = bitcast <8 x i16> %i.gi to <4 x float>
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gl = bitcast <4 x float> %i.gk to <2 x i64>
  %i.gm = extractelement <2 x i64> %i.gl, i64 0
  store i64 %i.gm, ptr %.1181262, align 1, !tbaa !42
  %i.gn = getelementptr inbounds nuw i8, ptr %.1170266, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.1181262, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.1172265, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1175264, i64 4 ; 2 uses
  %i.gr = add nuw nsw i32 %.1178263, 2            ; 3 uses
  %i.gs = or disjoint i32 %i.gr, 1
  %i.gt = load i32, ptr %9, align 4, !tbaa !21
  %i.gu = sdiv i32 %i.gt, 2                       ; 2 uses
  %i.gv = icmp slt i32 %i.gs, %i.gu
  br i1 %i.gv, label %.lr.ph267, label %.preheader249, !llvm.loop !94

.lr.ph279:                                        ; preds = %.lr.ph279.preheader460, %.lr.ph279
  %.2278 = phi ptr [ %i.hq, %.lr.ph279 ], [ %.2278.ph, %.lr.ph279.preheader460 ] ; 2 uses
  %.2173277 = phi ptr [ %i.gw, %.lr.ph279 ], [ %.2173277.ph, %.lr.ph279.preheader460 ] ; 2 uses
  %.2176276 = phi ptr [ %i.gy, %.lr.ph279 ], [ %.2176276.ph, %.lr.ph279.preheader460 ] ; 2 uses
  %.2179275 = phi i32 [ %i.hs, %.lr.ph279 ], [ %.2179275.ph, %.lr.ph279.preheader460 ]
  %.2182274 = phi ptr [ %i.hr, %.lr.ph279 ], [ %.2182274.ph, %.lr.ph279.preheader460 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.2173277, i64 2
  %i.gx = load i16, ptr %.2173277, align 2, !tbaa !103
  %i.gy = getelementptr inbounds nuw i8, ptr %.2176276, i64 2
  %i.gz = load i16, ptr %.2176276, align 2, !tbaa !103
  %i.ha = load <2 x i16>, ptr %.2278, align 2, !tbaa !103
  %i.hb = zext <2 x i16> %i.ha to <2 x i32>
  %i.hc = shl nuw <2 x i32> %i.hb, splat (i32 16) ; 2 uses
  %i.hd = bitcast <2 x i32> %i.hc to <2 x float>
  %10 = insertelement <2 x i16> poison, i16 %i.gx, i64 0
  %11 = insertelement <2 x i16> %10, i16 %i.gz, i64 1
  %12 = zext <2 x i16> %11 to <2 x i32>
  %13 = shl nuw <2 x i32> %12, splat (i32 16)
  %i.he = bitcast <2 x i32> %13 to <2 x float>    ; 2 uses
  %14 = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = bitcast <2 x i32> %i.hc to <2 x float>
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hh = fmul fast <2 x float> %14, %i.hg        ; 2 uses
  %i.hi = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul fast <2 x float> %i.hi, %i.hd      ; 2 uses
  %i.hk = fsub fast <2 x float> %i.hj, %i.hh
  %i.hl = fadd fast <2 x float> %i.hj, %i.hh
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <2 x i32> <i32 0, i32 3>
  %i.hn = bitcast <2 x float> %i.hm to <2 x i32>
  %i.ho = lshr <2 x i32> %i.hn, splat (i32 16)
  %i.hp = trunc nuw <2 x i32> %i.ho to <2 x i16>
  store <2 x i16> %i.hp, ptr %.2182274, align 2, !tbaa !103
  %i.hq = getelementptr inbounds nuw i8, ptr %.2278, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %.2182274, i64 4
  %i.hs = add nuw nsw i32 %.2179275, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hs, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph279, !llvm.loop !95

bb.e:                                             ; preds = %bb.c
  %i.ht = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.hu = sdiv i32 %i.ht, 2                       ; 2 uses
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.hv ; 2 uses
  %i.hx = load ptr, ptr %7, align 8, !tbaa !25
  %i.hy = load i32, ptr %i.r, align 4, !tbaa !20
  %i.hz = sext i32 %i.hy to i64
  %i.ia = mul nsw i64 %indvars.iv, %i.hz
  %i.ib = load i64, ptr %i.s, align 8, !tbaa !19
  %i.ic = mul i64 %i.ia, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ic ; 2 uses
  %i.ie = load ptr, ptr %8, align 8, !tbaa !25
  %i.if = load i32, ptr %i.t, align 4, !tbaa !20
  %i.ig = sext i32 %i.if to i64
  %i.ih = mul nsw i64 %indvars.iv, %i.ig
  %i.ii = load i64, ptr %i.u, align 8, !tbaa !19
  %i.ij = mul i64 %i.ih, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ij ; 2 uses
  %i.il = mul i64 %i.as, %indvars.iv
  %i.im = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.il ; 3 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %i.im, i64 %i.hv ; 2 uses
  %i.io = icmp sgt i32 %i.ht, 7
  br i1 %i.io, label %.lr.ph287, label %.preheader

.preheader:                                       ; preds = %.lr.ph287, %bb.e
  %.0166.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.ly, %.lr.ph287 ] ; 5 uses
  %.0164.lcssa = phi ptr [ %i.hw, %bb.e ], [ %i.lz, %.lr.ph287 ] ; 5 uses
  %.0162.lcssa = phi ptr [ %i.id, %bb.e ], [ %i.ma, %.lr.ph287 ] ; 5 uses
  %.0160.lcssa = phi ptr [ %i.ik, %bb.e ], [ %i.mb, %.lr.ph287 ] ; 5 uses
  %.0158.lcssa = phi ptr [ %i.im, %bb.e ], [ %i.mc, %.lr.ph287 ] ; 5 uses
  %.0156.lcssa = phi ptr [ %i.in, %bb.e ], [ %i.md, %.lr.ph287 ] ; 5 uses
  %.0155.lcssa = phi i32 [ 0, %bb.e ], [ %i.me, %.lr.ph287 ] ; 5 uses
  %.lcssa252 = phi i32 [ %i.hu, %bb.e ], [ %i.mh, %.lr.ph287 ] ; 3 uses
  %.0156.lcssa387 = ptrtoaddr ptr %.0156.lcssa to i64 ; 5 uses
  %.0158.lcssa388 = ptrtoaddr ptr %.0158.lcssa to i64 ; 5 uses
  %.0164.lcssa389 = ptrtoaddr ptr %.0164.lcssa to i64 ; 2 uses
  %.0166.lcssa391 = ptrtoaddr ptr %.0166.lcssa to i64 ; 2 uses
  %.0162.lcssa394 = ptrtoaddr ptr %.0162.lcssa to i64 ; 2 uses
  %.0160.lcssa397 = ptrtoaddr ptr %.0160.lcssa to i64 ; 2 uses
  %i.ip = icmp slt i32 %.0155.lcssa, %.lcssa252
  br i1 %i.ip, label %.lr.ph303.preheader, label %.loopexit

.lr.ph303.preheader:                              ; preds = %.preheader
  %i.iq = xor i32 %.0155.lcssa, -1
  %i.ir = add i32 %.lcssa252, %i.iq               ; 2 uses
  %i.is = zext i32 %i.ir to i64
  %i.it = add nuw nsw i64 %i.is, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ir, 7
  br i1 %min.iters.check, label %.lr.ph303.preheader459, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph303.preheader
  %i.iu = sub i64 %.0158.lcssa388, %.0156.lcssa387
  %diff.check = icmp ugt i64 %i.iu, -16
  %i.iv = sub i64 %.0164.lcssa389, %.0158.lcssa388
  %diff.check390 = icmp ugt i64 %i.iv, -16
  %conflict.rdx = or i1 %diff.check, %diff.check390
  %i.iw = sub i64 %.0166.lcssa391, %.0158.lcssa388
  %diff.check392 = icmp ugt i64 %i.iw, -16
  %conflict.rdx393 = or i1 %conflict.rdx, %diff.check392
  %i.ix = sub i64 %.0162.lcssa394, %.0158.lcssa388
  %diff.check395 = icmp ugt i64 %i.ix, -16
  %conflict.rdx396 = or i1 %conflict.rdx393, %diff.check395
  %i.iy = sub i64 %.0160.lcssa397, %.0158.lcssa388
  %diff.check398 = icmp ugt i64 %i.iy, -16
  %conflict.rdx399 = or i1 %conflict.rdx396, %diff.check398
  %i.iz = sub i64 %.0164.lcssa389, %.0156.lcssa387
  %diff.check400 = icmp ugt i64 %i.iz, -16
  %conflict.rdx401 = or i1 %conflict.rdx399, %diff.check400
  %i.ja = sub i64 %.0166.lcssa391, %.0156.lcssa387
  %diff.check402 = icmp ugt i64 %i.ja, -16
  %conflict.rdx403 = or i1 %conflict.rdx401, %diff.check402
  %i.jb = sub i64 %.0162.lcssa394, %.0156.lcssa387
  %diff.check404 = icmp ugt i64 %i.jb, -16
  %conflict.rdx405 = or i1 %conflict.rdx403, %diff.check404
  %i.jc = sub i64 %.0160.lcssa397, %.0156.lcssa387
  %diff.check406 = icmp ugt i64 %i.jc, -16
  %conflict.rdx407 = or i1 %conflict.rdx405, %diff.check406
  br i1 %conflict.rdx407, label %.lr.ph303.preheader459, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, 8589934584              ; 4 uses
  %i.jd = trunc i64 %n.vec to i32
  %i.je = add i32 %.0155.lcssa, %i.jd
  %i.jf = shl nuw nsw i64 %n.vec, 1               ; 6 uses
  %i.jg = getelementptr i8, ptr %.0156.lcssa, i64 %i.jf
  %i.jh = getelementptr i8, ptr %.0158.lcssa, i64 %i.jf
  %i.ji = getelementptr i8, ptr %.0160.lcssa, i64 %i.jf
  %i.jj = getelementptr i8, ptr %.0162.lcssa, i64 %i.jf
  %i.jk = getelementptr i8, ptr %.0164.lcssa, i64 %i.jf
  %i.jl = getelementptr i8, ptr %.0166.lcssa, i64 %i.jf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jm = shl i64 %index, 1                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.0156.lcssa, i64 %i.jm
  %next.gep408 = getelementptr i8, ptr %.0158.lcssa, i64 %i.jm
  %next.gep409 = getelementptr i8, ptr %.0160.lcssa, i64 %i.jm
  %next.gep410 = getelementptr i8, ptr %.0162.lcssa, i64 %i.jm
  %next.gep411 = getelementptr i8, ptr %.0164.lcssa, i64 %i.jm
  %next.gep412 = getelementptr i8, ptr %.0166.lcssa, i64 %i.jm
  %wide.load = load <8 x i16>, ptr %next.gep412, align 2, !tbaa !103
  %i.jn = zext <8 x i16> %wide.load to <8 x i32>
  %i.jo = shl nuw <8 x i32> %i.jn, splat (i32 16)
  %i.jp = bitcast <8 x i32> %i.jo to <8 x float>  ; 2 uses
  %wide.load413 = load <8 x i16>, ptr %next.gep411, align 2, !tbaa !103
  %i.jq = zext <8 x i16> %wide.load413 to <8 x i32>
  %i.jr = shl nuw <8 x i32> %i.jq, splat (i32 16)
  %i.js = bitcast <8 x i32> %i.jr to <8 x float>  ; 2 uses
  %wide.load414 = load <8 x i16>, ptr %next.gep410, align 2, !tbaa !103
  %i.jt = zext <8 x i16> %wide.load414 to <8 x i32>
  %i.ju = shl nuw <8 x i32> %i.jt, splat (i32 16)
  %i.jv = bitcast <8 x i32> %i.ju to <8 x float>  ; 2 uses
  %wide.load415 = load <8 x i16>, ptr %next.gep409, align 2, !tbaa !103
  %i.jw = zext <8 x i16> %wide.load415 to <8 x i32>
  %i.jx = shl nuw <8 x i32> %i.jw, splat (i32 16)
  %i.jy = bitcast <8 x i32> %i.jx to <8 x float>  ; 2 uses
  %i.jz = fmul fast <8 x float> %i.jv, %i.jp
  %i.ka = fmul fast <8 x float> %i.jy, %i.js
  %i.kb = fsub fast <8 x float> %i.jz, %i.ka
  %i.kc = bitcast <8 x float> %i.kb to <8 x i32>
  %i.kd = lshr <8 x i32> %i.kc, splat (i32 16)
  %i.ke = trunc nuw <8 x i32> %i.kd to <8 x i16>
  store <8 x i16> %i.ke, ptr %next.gep408, align 2, !tbaa !103
  %i.kf = fmul fast <8 x float> %i.jy, %i.jp
  %i.kg = fmul fast <8 x float> %i.jv, %i.js
  %i.kh = fadd fast <8 x float> %i.kf, %i.kg
  %i.ki = bitcast <8 x float> %i.kh to <8 x i32>
  %i.kj = lshr <8 x i32> %i.ki, splat (i32 16)
  %i.kk = trunc nuw <8 x i32> %i.kj to <8 x i16>
  store <8 x i16> %i.kk, ptr %next.gep, align 2, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph303.preheader459

.lr.ph303.preheader459:                           ; preds = %vector.memcheck, %.lr.ph303.preheader, %middle.block
  %.1302.ph = phi i32 [ %.0155.lcssa, %vector.memcheck ], [ %.0155.lcssa, %.lr.ph303.preheader ], [ %i.je, %middle.block ]
  %.1157301.ph = phi ptr [ %.0156.lcssa, %vector.memcheck ], [ %.0156.lcssa, %.lr.ph303.preheader ], [ %i.jg, %middle.block ]
  %.1159300.ph = phi ptr [ %.0158.lcssa, %vector.memcheck ], [ %.0158.lcssa, %.lr.ph303.preheader ], [ %i.jh, %middle.block ]
  %.1161299.ph = phi ptr [ %.0160.lcssa, %vector.memcheck ], [ %.0160.lcssa, %.lr.ph303.preheader ], [ %i.ji, %middle.block ]
  %.1163298.ph = phi ptr [ %.0162.lcssa, %vector.memcheck ], [ %.0162.lcssa, %.lr.ph303.preheader ], [ %i.jj, %middle.block ]
  %.1165297.ph = phi ptr [ %.0164.lcssa, %vector.memcheck ], [ %.0164.lcssa, %.lr.ph303.preheader ], [ %i.jk, %middle.block ]
  %.1167296.ph = phi ptr [ %.0166.lcssa, %vector.memcheck ], [ %.0166.lcssa, %.lr.ph303.preheader ], [ %i.jl, %middle.block ]
  br label %.lr.ph303

.lr.ph287:                                        ; preds = %bb.e, %.lr.ph287
  %.0155286 = phi i32 [ %i.me, %.lr.ph287 ], [ 0, %bb.e ]
  %.0156285 = phi ptr [ %i.md, %.lr.ph287 ], [ %i.in, %bb.e ] ; 2 uses
  %.0158284 = phi ptr [ %i.mc, %.lr.ph287 ], [ %i.im, %bb.e ] ; 2 uses
  %.0160283 = phi ptr [ %i.mb, %.lr.ph287 ], [ %i.ik, %bb.e ] ; 2 uses
  %.0162282 = phi ptr [ %i.ma, %.lr.ph287 ], [ %i.id, %bb.e ] ; 2 uses
  %.0164281 = phi ptr [ %i.lz, %.lr.ph287 ], [ %i.hw, %bb.e ] ; 2 uses
  %.0166280 = phi ptr [ %i.ly, %.lr.ph287 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.km = load i64, ptr %.0166280, align 1, !tbaa !42
  %i.kn = insertelement <2 x i64> poison, i64 %i.km, i64 0
  %i.ko = bitcast <2 x i64> %i.kn to <8 x i16>
  %i.kp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ko, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kq = bitcast <8 x i16> %i.kp to <4 x float>  ; 2 uses
  %i.kr = load i64, ptr %.0164281, align 1, !tbaa !42
  %i.ks = insertelement <2 x i64> poison, i64 %i.kr, i64 0
  %i.kt = bitcast <2 x i64> %i.ks to <8 x i16>
  %i.ku = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kv = bitcast <8 x i16> %i.ku to <4 x float>  ; 2 uses
  %i.kw = load i64, ptr %.0162282, align 1, !tbaa !42
  %i.kx = insertelement <2 x i64> poison, i64 %i.kw, i64 0
  %i.ky = bitcast <2 x i64> %i.kx to <8 x i16>
  %i.kz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ky, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.la = bitcast <8 x i16> %i.kz to <4 x float>  ; 2 uses
  %i.lb = load i64, ptr %.0160283, align 1, !tbaa !42
  %i.lc = insertelement <2 x i64> poison, i64 %i.lb, i64 0
  %i.ld = bitcast <2 x i64> %i.lc to <8 x i16>
  %i.le = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ld, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lf = bitcast <8 x i16> %i.le to <4 x float>  ; 2 uses
  %i.lg = fmul fast <4 x float> %i.la, %i.kq
  %i.lh = fmul fast <4 x float> %i.lf, %i.kv
  %i.li = fsub fast <4 x float> %i.lg, %i.lh
  %i.lj = fmul fast <4 x float> %i.la, %i.kv
  %i.lk = fmul fast <4 x float> %i.lf, %i.kq
  %i.ll = fadd fast <4 x float> %i.lk, %i.lj
  %i.lm = bitcast <4 x float> %i.li to <8 x i16>
  %i.ln = shufflevector <8 x i16> %i.lm, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
end_hunk_0
