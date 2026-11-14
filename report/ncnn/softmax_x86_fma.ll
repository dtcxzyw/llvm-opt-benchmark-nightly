Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_fma?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4ncnnL17softmax_bf16s_sseEPtii:bb.a
  %i.cb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235, <4 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.177237, i64 8 ; 2 uses
  %i.cd = add nuw nsw i32 %.180236, 4             ; 3 uses
  %i.ce = or disjoint i32 %i.cd, 3
  %i.cf = icmp slt i32 %i.ce, %i.a
  br i1 %i.cf, label %.lr.ph238, label %.preheader228, !llvm.loop !8

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %.lr.ph245
  %.278244 = phi ptr [ %i.cg, %.lr.ph245 ], [ %.278244.ph, %.lr.ph245.preheader ] ; 2 uses
  %.281243 = phi i32 [ %i.cl, %.lr.ph245 ], [ %.281243.ph, %.lr.ph245.preheader ]
  %.0213242 = phi float [ %.sroa.speculated133, %.lr.ph245 ], [ %.0213242.ph, %.lr.ph245.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.278244, i64 2
  %i.ch = load i16, ptr %.278244, align 2, !tbaa !74
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw i32 %i.ci, 16
  %i.ck = bitcast i32 %i.cj to float
  %.sroa.speculated133 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242, float %i.ck) ; 2 uses
  %i.cl = add nuw nsw i32 %.281243, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph245, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph245, %middle.block, %vec.epilog.middle.block, %.preheader228
  %.0213.lcssa = phi float [ f0xFF7FFFFF, %.preheader228 ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %.sroa.speculated133, %.lr.ph245 ] ; 4 uses
  %i.cm = icmp eq i32 %2, 4                       ; 2 uses
  br i1 %i.cm, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge
  %i.cn = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa, <4 x float> nofpclass(nan inf) %i.cn)
  %i.cq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cp, <4 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.cs = icmp eq i32 %2, 1
  br i1 %i.cs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ct = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cu = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> nofpclass(nan inf) %i.cu) ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cy)
  %i.da = extractelement <4 x float> %i.cz, i64 0 ; 2 uses
  %i.db = fcmp fast olt float %.0213.lcssa, %i.da
  %.sroa.speculated129 = select i1 %i.db, float %i.da, float %.0213.lcssa ; 2 uses
  %i.dc = shufflevector <4 x float> %.0210.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.df = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.de)
  %i.dg = extractelement <4 x float> %i.df, i64 0 ; 2 uses
  %i.dh = fcmp fast olt float %.sroa.speculated129, %i.dg
  %.sroa.speculated = select i1 %i.dh, float %i.dg, float %.sroa.speculated129 ; 2 uses
  %i.di = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 2 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.dl = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.thread ]
  %.1214 = phi nsz float [ %.sroa.speculated, %bb.c ], [ %.0213.lcssa, %bb.b ], [ %.0213.lcssa, %.thread ] ; 3 uses
  %.2212 = phi nsz <4 x float> [ %i.dj, %bb.c ], [ %.0210.lcssa, %bb.b ], [ %i.cq, %.thread ]
  %.2209 = phi nsz <8 x float> [ %i.dk, %bb.c ], [ %.0207.lcssa, %bb.b ], [ %i.cr, %.thread ]
  br i1 %i.b, label %.lr.ph251, label %.preheader227

.preheader227.loopexit:                           ; preds = %.lr.ph251
  %i.dm = and i32 %i.a, 2147483640
  br label %.preheader227

.preheader227:                                    ; preds = %.preheader227.loopexit, %bb.d
  %.0215.lcssa = phi <8 x float> [ zeroinitializer, %bb.d ], [ %i.ey, %.preheader227.loopexit ] ; 5 uses
  %.085.lcssa = phi ptr [ %0, %bb.d ], [ %i.ez, %.preheader227.loopexit ] ; 2 uses
  %.082.lcssa = phi i32 [ 0, %bb.d ], [ %i.dm, %.preheader227.loopexit ] ; 3 uses
  %i.dn = or disjoint i32 %.082.lcssa, 3
  %i.do = icmp slt i32 %i.dn, %i.a
  br i1 %i.do, label %.lr.ph258, label %.preheader226

.lr.ph251:                                        ; preds = %bb.d, %.lr.ph251
  %.082249 = phi i32 [ %i.fa, %.lr.ph251 ], [ 0, %bb.d ]
  %.085248 = phi ptr [ %i.ez, %.lr.ph251 ], [ %0, %bb.d ] ; 3 uses
  %.0215247 = phi <8 x float> [ %i.ey, %.lr.ph251 ], [ zeroinitializer, %bb.d ]
  %i.dp = load <8 x i16>, ptr %.085248, align 1, !tbaa !61 ; 2 uses
  %i.dq = shufflevector <8 x i16> %i.dp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dr = shufflevector <8 x i16> %i.dp, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ds = shufflevector <8 x i16> %i.dq, <8 x i16> %i.dr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dt = bitcast <16 x i16> %i.ds to <8 x float>
  %i.du = fsub fast <8 x float> %i.dt, %.2209
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.du, <8 x float> splat (float f0x42B0C0A5))
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dw, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dy = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dx, i32 1) ; 2 uses
  %i.dz = fcmp fast ogt <8 x float> %i.dy, %i.dx
  %i.ea = select <8 x i1> %i.dz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.eb = fsub fast <8 x float> %i.dy, %i.ea      ; 2 uses
  %i.ec = fneg fast <8 x float> %i.eb             ; 2 uses
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ec, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.dw)
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ec, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ed) ; 8 uses
  %i.ef = fmul fast <8 x float> %i.ee, %i.ee
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eg, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float f0x3C088908))
  %i.ei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eh, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float f0x3D2AA9C1))
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ei, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float f0x3E2AAAAA))
  %i.ek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ej, <8 x float> nofpclass(nan inf) %i.ee, <8 x float> splat (float 5.000000e-01))
  %i.el = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.ee)
  %i.em = fadd fast <8 x float> %i.el, splat (float 1.000000e+00)
  %i.en = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb)
  %i.eo = shl <8 x i32> %i.en, splat (i32 23)
  %i.ep = add <8 x i32> %i.eo, splat (i32 1065353216)
  %i.eq = bitcast <8 x i32> %i.ep to <8 x float>
  %i.er = fmul fast <8 x float> %i.em, %i.eq      ; 2 uses
  %i.es = bitcast <8 x float> %i.er to <8 x i32>  ; 2 uses
  %i.et = shufflevector <8 x i32> %i.es, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eu = shufflevector <8 x i32> %i.es, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ev = lshr <4 x i32> %i.et, splat (i32 16)
  %i.ew = lshr <4 x i32> %i.eu, splat (i32 16)
  %i.ex = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ev, <4 x i32> %i.ew)
  store <8 x i16> %i.ex, ptr %.085248, align 1, !tbaa !61
  %i.ey = fadd fast <8 x float> %i.er, %.0215247  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.085248, i64 16 ; 2 uses
  %i.fa = add nuw nsw i32 %.082249, 8             ; 2 uses
  %i.fb = or disjoint i32 %i.fa, 7
  %i.fc = icmp slt i32 %i.fb, %i.a
  br i1 %i.fc, label %.lr.ph251, label %.preheader227.loopexit, !llvm.loop !9

.preheader226:                                    ; preds = %.lr.ph258, %.preheader227
  %.0218.lcssa = phi <4 x float> [ zeroinitializer, %.preheader227 ], [ %i.je, %.lr.ph258 ] ; 3 uses
  %.186.lcssa = phi ptr [ %.085.lcssa, %.preheader227 ], [ %i.jf, %.lr.ph258 ] ; 5 uses
  %.183.lcssa = phi i32 [ %.082.lcssa, %.preheader227 ], [ %i.jg, %.lr.ph258 ] ; 5 uses
  %i.fd = icmp slt i32 %.183.lcssa, %i.a
  br i1 %i.fd, label %iter.check372, label %._crit_edge266

iter.check372:                                    ; preds = %.preheader226
  %i.fe = xor i32 %.183.lcssa, -1
  %i.ff = add i32 %i.a, %i.fe                     ; 3 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 5 uses
  %min.iters.check349 = icmp ult i32 %i.ff, 3
  br i1 %min.iters.check349, label %.lr.ph265.preheader, label %vector.main.loop.iter.check350

vector.main.loop.iter.check350:                   ; preds = %iter.check372
  %min.iters.check351 = icmp ult i32 %i.ff, 15
  br i1 %min.iters.check351, label %vec.epilog.ph376, label %vector.ph352

vector.ph352:                                     ; preds = %vector.main.loop.iter.check350
  %i.fi = and i64 %i.fh, 12
  %n.vec353 = and i64 %i.fh, 8589934576           ; 5 uses
  %i.fj = trunc i64 %n.vec353 to i32
  %i.fk = add i32 %.183.lcssa, %i.fj
  %i.fl = shl nuw nsw i64 %n.vec353, 1
  %i.fm = getelementptr i8, ptr %.186.lcssa, i64 %i.fl
  %broadcast.splatinsert354 = insertelement <4 x float> poison, float %.1214, i64 0
  %broadcast.splat355 = shufflevector <4 x float> %broadcast.splatinsert354, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph352, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph352 ], [ %index.next367, %vector.body356 ] ; 2 uses
  %vec.phi358 = phi <4 x float> [ zeroinitializer, %vector.ph352 ], [ %i.gx, %vector.body356 ]
  %vec.phi359 = phi <4 x float> [ zeroinitializer, %vector.ph352 ], [ %i.gy, %vector.body356 ]
  %vec.phi360 = phi <4 x float> [ zeroinitializer, %vector.ph352 ], [ %i.gz, %vector.body356 ]
  %vec.phi361 = phi <4 x float> [ zeroinitializer, %vector.ph352 ], [ %i.ha, %vector.body356 ]
  %i.fn = shl i64 %index357, 1
  %next.gep362 = getelementptr i8, ptr %.186.lcssa, i64 %i.fn ; 5 uses
  %i.fo = getelementptr i8, ptr %next.gep362, i64 8 ; 2 uses
  %i.fp = getelementptr i8, ptr %next.gep362, i64 16 ; 2 uses
  %i.fq = getelementptr i8, ptr %next.gep362, i64 24 ; 2 uses
  %wide.load363 = load <4 x i16>, ptr %next.gep362, align 2, !tbaa !74
  %wide.load364 = load <4 x i16>, ptr %i.fo, align 2, !tbaa !74
  %wide.load365 = load <4 x i16>, ptr %i.fp, align 2, !tbaa !74
  %wide.load366 = load <4 x i16>, ptr %i.fq, align 2, !tbaa !74
  %i.fr = zext <4 x i16> %wide.load363 to <4 x i32>
  %i.fs = zext <4 x i16> %wide.load364 to <4 x i32>
  %i.ft = zext <4 x i16> %wide.load365 to <4 x i32>
  %i.fu = zext <4 x i16> %wide.load366 to <4 x i32>
  %i.fv = shl nuw <4 x i32> %i.fr, splat (i32 16)
  %i.fw = shl nuw <4 x i32> %i.fs, splat (i32 16)
  %i.fx = shl nuw <4 x i32> %i.ft, splat (i32 16)
  %i.fy = shl nuw <4 x i32> %i.fu, splat (i32 16)
  %i.fz = bitcast <4 x i32> %i.fv to <4 x float>
  %i.ga = bitcast <4 x i32> %i.fw to <4 x float>
  %i.gb = bitcast <4 x i32> %i.fx to <4 x float>
  %i.gc = bitcast <4 x i32> %i.fy to <4 x float>
  %i.gd = fsub fast <4 x float> %i.fz, %broadcast.splat355
  %i.ge = fsub fast <4 x float> %i.ga, %broadcast.splat355
  %i.gf = fsub fast <4 x float> %i.gb, %broadcast.splat355
  %i.gg = fsub fast <4 x float> %i.gc, %broadcast.splat355
  %i.gh = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gd) ; 2 uses
  %i.gi = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.ge) ; 2 uses
  %i.gj = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gf) ; 2 uses
  %i.gk = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gg) ; 2 uses
  %i.gl = bitcast <4 x float> %i.gh to <4 x i32>
  %i.gm = bitcast <4 x float> %i.gi to <4 x i32>
  %i.gn = bitcast <4 x float> %i.gj to <4 x i32>
  %i.go = bitcast <4 x float> %i.gk to <4 x i32>
  %i.gp = lshr <4 x i32> %i.gl, splat (i32 16)
  %i.gq = lshr <4 x i32> %i.gm, splat (i32 16)
  %i.gr = lshr <4 x i32> %i.gn, splat (i32 16)
  %i.gs = lshr <4 x i32> %i.go, splat (i32 16)
  %i.gt = trunc nuw nsw <4 x i32> %i.gp to <4 x i16>
  %i.gu = trunc nuw nsw <4 x i32> %i.gq to <4 x i16>
  %i.gv = trunc nuw nsw <4 x i32> %i.gr to <4 x i16>
  %i.gw = trunc nuw nsw <4 x i32> %i.gs to <4 x i16>
  store <4 x i16> %i.gt, ptr %next.gep362, align 2, !tbaa !74
  store <4 x i16> %i.gu, ptr %i.fo, align 2, !tbaa !74
  store <4 x i16> %i.gv, ptr %i.fp, align 2, !tbaa !74
  store <4 x i16> %i.gw, ptr %i.fq, align 2, !tbaa !74
  %i.gx = fadd fast <4 x float> %i.gh, %vec.phi358 ; 2 uses
  %i.gy = fadd fast <4 x float> %i.gi, %vec.phi359 ; 2 uses
  %i.gz = fadd fast <4 x float> %i.gj, %vec.phi360 ; 2 uses
  %i.ha = fadd fast <4 x float> %i.gk, %vec.phi361 ; 2 uses
  %index.next367 = add nuw i64 %index357, 16      ; 2 uses
  %i.hb = icmp eq i64 %index.next367, %n.vec353
  br i1 %i.hb, label %middle.block368, label %vector.body356, !llvm.loop !227

middle.block368:                                  ; preds = %vector.body356
  %bin.rdx = fadd fast <4 x float> %i.gy, %i.gx
  %bin.rdx369 = fadd fast <4 x float> %i.gz, %bin.rdx
  %bin.rdx370 = fadd fast <4 x float> %i.ha, %bin.rdx369
  %i.hc = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx370) ; 3 uses
  %cmp.n371 = icmp eq i64 %i.fh, %n.vec353
  br i1 %cmp.n371, label %._crit_edge266, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block368
  %min.epilog.iters.check375 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check375, label %.lr.ph265.preheader, label %vec.epilog.ph376, !prof !75

vec.epilog.ph376:                                 ; preds = %vector.main.loop.iter.check350, %vec.epilog.iter.check373
  %vec.epilog.resume.val377 = phi i64 [ %n.vec353, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check350 ]
  %bc.merge.rdx378 = phi float [ %i.hc, %vec.epilog.iter.check373 ], [ 0.000000e+00, %vector.main.loop.iter.check350 ]
  %n.vec379 = and i64 %i.fh, 8589934588           ; 4 uses
  %i.hd = trunc i64 %n.vec379 to i32
  %i.he = add i32 %.183.lcssa, %i.hd
  %i.hf = shl nuw nsw i64 %n.vec379, 1
  %i.hg = getelementptr i8, ptr %.186.lcssa, i64 %i.hf
  %i.hh = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx378, i64 0
  %broadcast.splatinsert380 = insertelement <4 x float> poison, float %.1214, i64 0
  %broadcast.splat381 = shufflevector <4 x float> %broadcast.splatinsert380, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph376
  %index383 = phi i64 [ %vec.epilog.resume.val377, %vec.epilog.ph376 ], [ %index.next387, %vec.epilog.vector.body382 ] ; 2 uses
  %vec.phi384 = phi <4 x float> [ %i.hh, %vec.epilog.ph376 ], [ %i.hr, %vec.epilog.vector.body382 ]
  %i.hi = shl i64 %index383, 1
  %next.gep385 = getelementptr i8, ptr %.186.lcssa, i64 %i.hi ; 2 uses
  %wide.load386 = load <4 x i16>, ptr %next.gep385, align 2, !tbaa !74
  %i.hj = zext <4 x i16> %wide.load386 to <4 x i32>
  %i.hk = shl nuw <4 x i32> %i.hj, splat (i32 16)
  %i.hl = bitcast <4 x i32> %i.hk to <4 x float>
  %i.hm = fsub fast <4 x float> %i.hl, %broadcast.splat381
  %i.hn = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hm) ; 2 uses
  %i.ho = bitcast <4 x float> %i.hn to <4 x i32>
  %i.hp = lshr <4 x i32> %i.ho, splat (i32 16)
  %i.hq = trunc nuw nsw <4 x i32> %i.hp to <4 x i16>
  store <4 x i16> %i.hq, ptr %next.gep385, align 2, !tbaa !74
  %i.hr = fadd fast <4 x float> %i.hn, %vec.phi384 ; 2 uses
  %index.next387 = add nuw i64 %index383, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next387, %n.vec379
  br i1 %i.hs, label %vec.epilog.middle.block388, label %vec.epilog.vector.body382, !llvm.loop !228

vec.epilog.middle.block388:                       ; preds = %vec.epilog.vector.body382
  %i.ht = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hr) ; 2 uses
  %cmp.n389 = icmp eq i64 %i.fh, %n.vec379
  br i1 %cmp.n389, label %._crit_edge266, label %.lr.ph265.preheader

.lr.ph265.preheader:                              ; preds = %iter.check372, %vec.epilog.iter.check373, %vec.epilog.middle.block388
  %.284264.ph = phi i32 [ %.183.lcssa, %iter.check372 ], [ %i.fk, %vec.epilog.iter.check373 ], [ %i.he, %vec.epilog.middle.block388 ]
  %.287263.ph = phi ptr [ %.186.lcssa, %iter.check372 ], [ %i.fm, %vec.epilog.iter.check373 ], [ %i.hg, %vec.epilog.middle.block388 ]
  %.088262.ph = phi float [ 0.000000e+00, %iter.check372 ], [ %i.hc, %vec.epilog.iter.check373 ], [ %i.ht, %vec.epilog.middle.block388 ]
  br label %.lr.ph265

.lr.ph258:                                        ; preds = %.preheader227, %.lr.ph258
  %.183257 = phi i32 [ %i.jg, %.lr.ph258 ], [ %.082.lcssa, %.preheader227 ]
  %.186256 = phi ptr [ %i.jf, %.lr.ph258 ], [ %.085.lcssa, %.preheader227 ] ; 3 uses
  %.0218255 = phi <4 x float> [ %i.je, %.lr.ph258 ], [ zeroinitializer, %.preheader227 ]
  %i.hu = load i64, ptr %.186256, align 1, !tbaa !61
  %i.hv = insertelement <2 x i64> poison, i64 %i.hu, i64 0
  %i.hw = bitcast <2 x i64> %i.hv to <8 x i16>
  %i.hx = shufflevector <8 x i16> %i.hw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.hy = bitcast <8 x i16> %i.hx to <4 x float>
  %i.hz = fsub fast <4 x float> %i.hy, %.2212
  %i.ia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hz, <4 x float> splat (float f0x42B0C0A5))
  %i.ib = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ia, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ic = fmul fast <4 x float> %i.ib, splat (float f0x3FB8AA3B)
  %i.id = fadd fast <4 x float> %i.ic, splat (float 5.000000e-01) ; 2 uses
  %i.ie = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.id)
  %i.if = sitofp fast <4 x i32> %i.ie to <4 x float> ; 2 uses
  %i.ig = fcmp fast olt <4 x float> %i.id, %i.if
  %i.ih = select <4 x i1> %i.ig, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ii = fsub fast <4 x float> %i.if, %i.ih      ; 2 uses
  %i.ij = fneg fast <4 x float> %i.ii             ; 2 uses
  %i.ik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ij, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ib)
  %i.il = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ij, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ik) ; 8 uses
  %i.im = fmul fast <4 x float> %i.il, %i.il
  %i.in = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.il, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.io = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.in, <4 x float> nofpclass(nan inf) %i.il, <4 x float> splat (float f0x3C088908))
  %i.ip = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.io, <4 x float> nofpclass(nan inf) %i.il, <4 x float> splat (float f0x3D2AA9C1))
  %i.iq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ip, <4 x float> nofpclass(nan inf) %i.il, <4 x float> splat (float f0x3E2AAAAA))
  %i.ir = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iq, <4 x float> nofpclass(nan inf) %i.il, <4 x float> splat (float 5.000000e-01))
  %i.is = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ir, <4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.il)
  %i.it = fadd fast <4 x float> %i.is, splat (float 1.000000e+00)
  %i.iu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ii)
  %i.iv = shl <4 x i32> %i.iu, splat (i32 23)
  %i.iw = add <4 x i32> %i.iv, splat (i32 1065353216)
  %i.ix = bitcast <4 x i32> %i.iw to <4 x float>
  %i.iy = fmul fast <4 x float> %i.it, %i.ix      ; 2 uses
  %i.iz = bitcast <4 x float> %i.iy to <4 x i32>
  %i.ja = lshr <4 x i32> %i.iz, splat (i32 16)
  %i.jb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ja, <4 x i32> poison)
  %i.jc = bitcast <8 x i16> %i.jb to <2 x i64>
  %i.jd = extractelement <2 x i64> %i.jc, i64 0
  store i64 %i.jd, ptr %.186256, align 1, !tbaa !61
  %i.je = fadd fast <4 x float> %i.iy, %.0218255  ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.186256, i64 8 ; 2 uses
  %i.jg = add nuw nsw i32 %.183257, 4             ; 3 uses
  %i.jh = or disjoint i32 %i.jg, 3
  %i.ji = icmp slt i32 %i.jh, %i.a
  br i1 %i.ji, label %.lr.ph258, label %.preheader226, !llvm.loop !10

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %.lr.ph265
  %.284264 = phi i32 [ %i.ju, %.lr.ph265 ], [ %.284264.ph, %.lr.ph265.preheader ]
  %.287263 = phi ptr [ %i.jt, %.lr.ph265 ], [ %.287263.ph, %.lr.ph265.preheader ] ; 3 uses
  %.088262 = phi float [ %i.js, %.lr.ph265 ], [ %.088262.ph, %.lr.ph265.preheader ]
  %i.jj = load i16, ptr %.287263, align 2, !tbaa !74
  %i.jk = zext i16 %i.jj to i32
  %i.jl = shl nuw i32 %i.jk, 16
  %i.jm = bitcast i32 %i.jl to float
  %i.jn = fsub fast float %i.jm, %.1214
  %i.jo = tail call fast float @llvm.exp.f32(float %i.jn) ; 2 uses
  %i.jp = bitcast float %i.jo to i32
  %i.jq = lshr i32 %i.jp, 16
  %i.jr = trunc nuw nsw i32 %i.jq to i16
  store i16 %i.jr, ptr %.287263, align 2, !tbaa !74
  %i.js = fadd fast float %i.jo, %.088262         ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.287263, i64 2
  %i.ju = add nuw nsw i32 %.284264, 1             ; 2 uses
  %exitcond299.not = icmp eq i32 %i.ju, %i.a
  br i1 %exitcond299.not, label %._crit_edge266, label %.lr.ph265, !llvm.loop !229

._crit_edge266:                                   ; preds = %.lr.ph265, %middle.block368, %vec.epilog.middle.block388, %.preheader226
  %.088.lcssa = phi float [ 0.000000e+00, %.preheader226 ], [ %i.ht, %vec.epilog.middle.block388 ], [ %i.hc, %middle.block368 ], [ %i.js, %.lr.ph265 ] ; 2 uses
  %i.jv = icmp eq i32 %2, 8
  br i1 %i.jv, label %.thread223, label %bb.e

.thread223:                                       ; preds = %._crit_edge266
  %i.jw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa) ; 2 uses
  %i.jx = fneg fast <8 x float> %.0215.lcssa
  %i.jy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.jx, <8 x float> nofpclass(nan inf) %i.jw, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.jz = fmul fast <8 x float> %i.jy, %i.jw
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge266
  br i1 %i.cm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ka = shufflevector <8 x float> %.0215.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kb = shufflevector <8 x float> %.0215.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kc = fadd fast <4 x float> %i.kb, %i.ka
  %i.kd = fadd fast <4 x float> %i.kc, %.0218.lcssa ; 2 uses
  %i.ke = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.kd) ; 2 uses
  %i.kf = fneg fast <4 x float> %i.kd
  %i.kg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.kf, <4 x float> nofpclass(nan inf) %i.ke, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.kh = fmul fast <4 x float> %i.kg, %i.ke      ; 2 uses
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.g

bb.g:                                             ; preds = %.thread223, %bb.f, %bb.e
  %.1219 = phi nsz <4 x float> [ %i.kh, %bb.f ], [ %.0218.lcssa, %bb.e ], [ %.0218.lcssa, %.thread223 ] ; 3 uses
  %.2217 = phi nsz <8 x float> [ %i.ki, %bb.f ], [ %.0215.lcssa, %bb.e ], [ %i.jz, %.thread223 ] ; 3 uses
  br i1 %i.dl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.kj = shufflevector <8 x float> %.2217, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kk = shufflevector <8 x float> %.2217, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kl = fadd fast <4 x float> %i.kj, %i.kk      ; 2 uses
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> %.1219, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.kn = shufflevector <4 x float> %i.kl, <4 x float> %.1219, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ko = fadd fast <4 x float> %i.km, %i.kn
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %.088.lcssa, <4 x float> %i.ko)
  %i.kp = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.kq = insertelement <4 x float> poison, float %i.kp, i64 0 ; 2 uses
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ks = shufflevector <4 x float> %i.kq, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2220 = phi nsz <4 x float> [ %i.kr, %bb.h ], [ %.1219, %bb.g ]
  %.3 = phi nsz <8 x float> [ %i.ks, %bb.h ], [ %.2217, %bb.g ]
  %.189 = phi nsz float [ %i.kp, %bb.h ], [ %.088.lcssa, %bb.g ] ; 3 uses
  br i1 %i.b, label %.lr.ph271, label %.preheader225

.preheader225.loopexit:                           ; preds = %.lr.ph271
  %i.kt = and i32 %i.a, 2147483640
  br label %.preheader225

.preheader225:                                    ; preds = %.preheader225.loopexit, %bb.i
  %.073.lcssa = phi ptr [ %0, %bb.i ], [ %i.li, %.preheader225.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.i ], [ %i.kt, %.preheader225.loopexit ] ; 3 uses
  %i.ku = or disjoint i32 %.0.lcssa, 3
  %i.kv = icmp slt i32 %i.ku, %i.a
  br i1 %i.kv, label %.lr.ph276, label %.preheader

.lr.ph271:                                        ; preds = %bb.i, %.lr.ph271
  %.0269 = phi i32 [ %i.lj, %.lr.ph271 ], [ 0, %bb.i ]
  %.073268 = phi ptr [ %i.li, %.lr.ph271 ], [ %0, %bb.i ] ; 3 uses
  %i.kw = load <8 x i16>, ptr %.073268, align 1, !tbaa !61 ; 2 uses
  %i.kx = shufflevector <8 x i16> %i.kw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ky = shufflevector <8 x i16> %i.kw, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.kz = shufflevector <8 x i16> %i.kx, <8 x i16> %i.ky, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.la = bitcast <16 x i16> %i.kz to <8 x float>
  %i.lb = fmul fast <8 x float> %.3, %i.la
  %i.lc = bitcast <8 x float> %i.lb to <8 x i32>  ; 2 uses
  %i.ld = shufflevector <8 x i32> %i.lc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.le = shufflevector <8 x i32> %i.lc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lf = lshr <4 x i32> %i.ld, splat (i32 16)
  %i.lg = lshr <4 x i32> %i.le, splat (i32 16)
  %i.lh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lf, <4 x i32> %i.lg)
  store <8 x i16> %i.lh, ptr %.073268, align 1, !tbaa !61
  %i.li = getelementptr inbounds nuw i8, ptr %.073268, i64 16 ; 2 uses
  %i.lj = add nuw nsw i32 %.0269, 8               ; 2 uses
  %i.lk = or disjoint i32 %i.lj, 7
  %i.ll = icmp slt i32 %i.lk, %i.a
  br i1 %i.ll, label %.lr.ph271, label %.preheader225.loopexit, !llvm.loop !11

.preheader:                                       ; preds = %.lr.ph276, %.preheader225
  %.174.lcssa = phi ptr [ %.073.lcssa, %.preheader225 ], [ %i.nd, %.lr.ph276 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader225 ], [ %i.ne, %.lr.ph276 ] ; 5 uses
  %i.lm = icmp slt i32 %.1.lcssa, %i.a
  br i1 %i.lm, label %iter.check407, label %._crit_edge282

iter.check407:                                    ; preds = %.preheader
  %i.ln = xor i32 %.1.lcssa, -1
  %i.lo = add i32 %i.a, %i.ln                     ; 3 uses
  %i.lp = zext i32 %i.lo to i64
  %i.lq = add nuw nsw i64 %i.lp, 1                ; 5 uses
  %min.iters.check393 = icmp ult i32 %i.lo, 3
  br i1 %min.iters.check393, label %.lr.ph281.preheader, label %vector.main.loop.iter.check394

vector.main.loop.iter.check394:                   ; preds = %iter.check407
  %min.iters.check395 = icmp ult i32 %i.lo, 15
  br i1 %min.iters.check395, label %vec.epilog.ph411, label %vector.ph396

vector.ph396:                                     ; preds = %vector.main.loop.iter.check394
  %i.lr = and i64 %i.lq, 12
  %n.vec397 = and i64 %i.lq, 8589934576           ; 5 uses
  %i.ls = trunc i64 %n.vec397 to i32
  %i.lt = add i32 %.1.lcssa, %i.ls
  %i.lu = shl nuw nsw i64 %n.vec397, 1
  %i.lv = getelementptr i8, ptr %.174.lcssa, i64 %i.lu
  %broadcast.splatinsert398 = insertelement <16 x float> poison, float %.189, i64 0
  %broadcast.splat399 = shufflevector <16 x float> %broadcast.splatinsert398, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body400

vector.body400:                                   ; preds = %vector.ph396, %vector.body400
  %index401 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body400 ] ; 2 uses
  %i.lw = shl i64 %index401, 1
  %next.gep402 = getelementptr i8, ptr %.174.lcssa, i64 %i.lw ; 2 uses
  %wide.load403 = load <16 x i16>, ptr %next.gep402, align 2, !tbaa !74
  %i.lx = zext <16 x i16> %wide.load403 to <16 x i32>
  %i.ly = shl nuw <16 x i32> %i.lx, splat (i32 16)
  %i.lz = bitcast <16 x i32> %i.ly to <16 x float>
  %i.ma = fmul fast <16 x float> %broadcast.splat399, %i.lz
  %i.mb = bitcast <16 x float> %i.ma to <16 x i32>
  %i.mc = lshr <16 x i32> %i.mb, splat (i32 16)
  %i.md = trunc nuw <16 x i32> %i.mc to <16 x i16>
  store <16 x i16> %i.md, ptr %next.gep402, align 2, !tbaa !74
  %index.next404 = add nuw i64 %index401, 16      ; 2 uses
  %i.me = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.me, label %middle.block405, label %vector.body400, !llvm.loop !230

middle.block405:                                  ; preds = %vector.body400
  %cmp.n406 = icmp eq i64 %i.lq, %n.vec397
  br i1 %cmp.n406, label %._crit_edge282, label %vec.epilog.iter.check408

vec.epilog.iter.check408:                         ; preds = %middle.block405
  %min.epilog.iters.check410 = icmp eq i64 %i.lr, 0
  br i1 %min.epilog.iters.check410, label %.lr.ph281.preheader, label %vec.epilog.ph411, !prof !75

vec.epilog.ph411:                                 ; preds = %vector.main.loop.iter.check394, %vec.epilog.iter.check408
  %vec.epilog.resume.val412 = phi i64 [ %n.vec397, %vec.epilog.iter.check408 ], [ 0, %vector.main.loop.iter.check394 ]
  %n.vec413 = and i64 %i.lq, 8589934588           ; 4 uses
  %i.mf = trunc i64 %n.vec413 to i32
  %i.mg = add i32 %.1.lcssa, %i.mf
  %i.mh = shl nuw nsw i64 %n.vec413, 1
  %i.mi = getelementptr i8, ptr %.174.lcssa, i64 %i.mh
  %broadcast.splatinsert414 = insertelement <4 x float> poison, float %.189, i64 0
  %broadcast.splat415 = shufflevector <4 x float> %broadcast.splatinsert414, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body416

vec.epilog.vector.body416:                        ; preds = %vec.epilog.vector.body416, %vec.epilog.ph411
  %index417 = phi i64 [ %vec.epilog.resume.val412, %vec.epilog.ph411 ], [ %index.next420, %vec.epilog.vector.body416 ] ; 2 uses
  %i.mj = shl i64 %index417, 1
  %next.gep418 = getelementptr i8, ptr %.174.lcssa, i64 %i.mj ; 2 uses
  %wide.load419 = load <4 x i16>, ptr %next.gep418, align 2, !tbaa !74
  %i.mk = zext <4 x i16> %wide.load419 to <4 x i32>
  %i.ml = shl nuw <4 x i32> %i.mk, splat (i32 16)
  %i.mm = bitcast <4 x i32> %i.ml to <4 x float>
  %i.mn = fmul fast <4 x float> %broadcast.splat415, %i.mm
  %i.mo = bitcast <4 x float> %i.mn to <4 x i32>
  %i.mp = lshr <4 x i32> %i.mo, splat (i32 16)
  %i.mq = trunc nuw <4 x i32> %i.mp to <4 x i16>
  store <4 x i16> %i.mq, ptr %next.gep418, align 2, !tbaa !74
  %index.next420 = add nuw i64 %index417, 4       ; 2 uses
  %i.mr = icmp eq i64 %index.next420, %n.vec413
  br i1 %i.mr, label %vec.epilog.middle.block421, label %vec.epilog.vector.body416, !llvm.loop !231

vec.epilog.middle.block421:                       ; preds = %vec.epilog.vector.body416
  %cmp.n422 = icmp eq i64 %i.lq, %n.vec413
  br i1 %cmp.n422, label %._crit_edge282, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %iter.check407, %vec.epilog.iter.check408, %vec.epilog.middle.block421
  %.2280.ph = phi i32 [ %.1.lcssa, %iter.check407 ], [ %i.lt, %vec.epilog.iter.check408 ], [ %i.mg, %vec.epilog.middle.block421 ]
  %.275279.ph = phi ptr [ %.174.lcssa, %iter.check407 ], [ %i.lv, %vec.epilog.iter.check408 ], [ %i.mi, %vec.epilog.middle.block421 ]
  br label %.lr.ph281

.lr.ph276:                                        ; preds = %.preheader225, %.lr.ph276
  %.1275 = phi i32 [ %i.ne, %.lr.ph276 ], [ %.0.lcssa, %.preheader225 ]
  %.174274 = phi ptr [ %i.nd, %.lr.ph276 ], [ %.073.lcssa, %.preheader225 ] ; 3 uses
  %i.ms = load i64, ptr %.174274, align 1, !tbaa !61
  %i.mt = insertelement <2 x i64> poison, i64 %i.ms, i64 0
  %i.mu = bitcast <2 x i64> %i.mt to <8 x i16>
  %i.mv = shufflevector <8 x i16> %i.mu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.mw = bitcast <8 x i16> %i.mv to <4 x float>
  %i.mx = fmul fast <4 x float> %.2220, %i.mw
  %i.my = bitcast <4 x float> %i.mx to <4 x i32>
  %i.mz = lshr <4 x i32> %i.my, splat (i32 16)
  %i.na = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mz, <4 x i32> poison)
  %i.nb = bitcast <8 x i16> %i.na to <2 x i64>
  %i.nc = extractelement <2 x i64> %i.nb, i64 0
  store i64 %i.nc, ptr %.174274, align 1, !tbaa !61
  %i.nd = getelementptr inbounds nuw i8, ptr %.174274, i64 8 ; 2 uses
  %i.ne = add nuw nsw i32 %.1275, 4               ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  %i.sf = zext <4 x i16> %wide.load286 to <4 x i32>
  %i.sg = shl nuw <4 x i32> %i.sf, splat (i32 16)
  %i.sh = bitcast <4 x i32> %i.sg to <4 x float>  ; 2 uses
  %wide.load287 = load <4 x float>, ptr %next.gep285, align 4, !tbaa !65 ; 2 uses
  %i.si = fcmp fast olt <4 x float> %wide.load287, %i.sh
  %i.sj = select <4 x i1> %i.si, <4 x float> %i.sh, <4 x float> %wide.load287
  store <4 x float> %i.sj, ptr %next.gep285, align 4, !tbaa !65
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.sk = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.sk, label %vec.epilog.middle.block289, label %vec.epilog.vector.body282, !llvm.loop !264

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body282
  %cmp.n290 = icmp eq i64 %i.qm, %n.vec281
  br i1 %cmp.n290, label %._crit_edge.i86, label %.lr.ph280.i.preheader

.lr.ph280.i.preheader:                            ; preds = %iter.check275, %vec.epilog.iter.check276, %vec.epilog.middle.block289
  %.2279.i.ph = phi ptr [ %.1.lcssa.i85, %iter.check275 ], [ %i.qp, %vec.epilog.iter.check276 ], [ %i.ry, %vec.epilog.middle.block289 ]
  %.2155278.i.ph = phi ptr [ %.1154.lcssa.i, %iter.check275 ], [ %i.qr, %vec.epilog.iter.check276 ], [ %i.sa, %vec.epilog.middle.block289 ]
  %.2158277.i.ph = phi i32 [ %.1157.lcssa.i, %iter.check275 ], [ %i.qt, %vec.epilog.iter.check276 ], [ %i.sc, %vec.epilog.middle.block289 ]
  br label %.lr.ph280.i

.lr.ph273.i:                                      ; preds = %.preheader264.i, %.lr.ph273.i
  %.1272.i = phi ptr [ %i.ss, %.lr.ph273.i ], [ %.0136.lcssa.i, %.preheader264.i ] ; 2 uses
  %.1154271.i = phi ptr [ %i.st, %.lr.ph273.i ], [ %.0153.lcssa.i, %.preheader264.i ] ; 3 uses
  %.1157270.i = phi i32 [ %i.su, %.lr.ph273.i ], [ %.0156.lcssa.i, %.preheader264.i ]
  %i.sl = load i64, ptr %.1272.i, align 1, !tbaa !61
  %i.sm = insertelement <2 x i64> poison, i64 %i.sl, i64 0
  %i.sn = bitcast <2 x i64> %i.sm to <8 x i16>
  %i.so = shufflevector <8 x i16> %i.sn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.sp = bitcast <8 x i16> %i.so to <4 x float>
  %i.sq = load <4 x float>, ptr %.1154271.i, align 1, !tbaa !61
  %i.sr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sq, <4 x float> nofpclass(nan inf) %i.sp)
  store <4 x float> %i.sr, ptr %.1154271.i, align 1, !tbaa !61
  %i.ss = getelementptr inbounds nuw i8, ptr %.1272.i, i64 8 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.1154271.i, i64 16 ; 2 uses
  %i.su = add nuw nsw i32 %.1157270.i, 4          ; 3 uses
  %i.sv = or disjoint i32 %i.su, 3
  %i.sw = icmp slt i32 %i.sv, %4
  br i1 %i.sw, label %.lr.ph273.i, label %.preheader263.i, !llvm.loop !265

.lr.ph280.i:                                      ; preds = %.lr.ph280.i.preheader, %.lr.ph280.i
  %.2279.i = phi ptr [ %i.td, %.lr.ph280.i ], [ %.2279.i.ph, %.lr.ph280.i.preheader ] ; 2 uses
  %.2155278.i = phi ptr [ %i.te, %.lr.ph280.i ], [ %.2155278.i.ph, %.lr.ph280.i.preheader ] ; 3 uses
  %.2158277.i = phi i32 [ %i.tf, %.lr.ph280.i ], [ %.2158277.i.ph, %.lr.ph280.i.preheader ]
  %i.sx = load i16, ptr %.2279.i, align 2, !tbaa !74
  %i.sy = zext i16 %i.sx to i32
  %i.sz = shl nuw i32 %i.sy, 16
  %i.ta = bitcast i32 %i.sz to float              ; 2 uses
  %i.tb = load float, ptr %.2155278.i, align 4, !tbaa !65 ; 2 uses
  %i.tc = fcmp fast olt float %i.tb, %i.ta
  %.sroa.speculated.i90 = select i1 %i.tc, float %i.ta, float %i.tb
  store float %.sroa.speculated.i90, ptr %.2155278.i, align 4, !tbaa !65
  %i.td = getelementptr inbounds nuw i8, ptr %.2279.i, i64 2
  %i.te = getelementptr inbounds nuw i8, ptr %.2155278.i, i64 4
  %i.tf = add nuw nsw i32 %.2158277.i, 1          ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.tf, %4
  br i1 %exitcond.not.i91, label %._crit_edge.i86, label %.lr.ph280.i, !llvm.loop !266

._crit_edge.i86:                                  ; preds = %.lr.ph280.i, %middle.block273, %vec.epilog.middle.block289, %.preheader263.i
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond371.not.i, label %.preheader262.i, label %bb.i, !llvm.loop !267

.preheader259.i:                                  ; preds = %._crit_edge308.i, %bb.h
  br i1 %i.a, label %.lr.ph313.i.preheader, label %.preheader258.i

.lr.ph313.i.preheader:                            ; preds = %.preheader259.i
  %i.tg = add nsw i32 %4, -8                      ; 2 uses
  %i.th = lshr i32 %i.tg, 3                       ; 2 uses
  %i.ti = add nuw nsw i32 %i.th, 1                ; 2 uses
  %i.tj = icmp eq i32 %i.th, 0
  br i1 %i.tj, label %.lr.ph313.i.epil.preheader, label %.lr.ph313.i.preheader.new

.lr.ph313.i.preheader.new:                        ; preds = %.lr.ph313.i.preheader
  %unroll_iter423 = and i32 %i.ti, 1073741822
  br label %.lr.ph313.i

.preheader262.i:                                  ; preds = %._crit_edge.i86, %._crit_edge308.i
  %indvars.iv373.i = phi i64 [ %indvars.iv.next374.i, %._crit_edge308.i ], [ 0, %._crit_edge.i86 ] ; 2 uses
  %i.tk = mul i64 %indvars.iv373.i, %3
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.tk ; 2 uses
  br i1 %i.a, label %.lr.ph289.i, label %.preheader261.i

.preheader261.i:                                  ; preds = %.lr.ph289.i, %.preheader262.i
  %.0169.lcssa.i = phi ptr [ %6, %.preheader262.i ], [ %i.vc, %.lr.ph289.i ] ; 2 uses
  %.0166.lcssa.i = phi i32 [ 0, %.preheader262.i ], [ %i.ox, %.lr.ph289.i ] ; 3 uses
  %.0163.lcssa.i = phi ptr [ %5, %.preheader262.i ], [ %i.vb, %.lr.ph289.i ] ; 2 uses
  %.0160.lcssa.i = phi ptr [ %i.tl, %.preheader262.i ], [ %i.va, %.lr.ph289.i ] ; 2 uses
  %i.tm = or disjoint i32 %.0166.lcssa.i, 3
  %i.tn = icmp slt i32 %i.tm, %4
  br i1 %i.tn, label %.lr.ph298.i, label %.preheader260.i

.lr.ph289.i:                                      ; preds = %.preheader262.i, %.lr.ph289.i
  %.0160287.i = phi ptr [ %i.va, %.lr.ph289.i ], [ %i.tl, %.preheader262.i ] ; 3 uses
  %.0163286.i = phi ptr [ %i.vb, %.lr.ph289.i ], [ %5, %.preheader262.i ] ; 2 uses
  %.0166285.i = phi i32 [ %i.vd, %.lr.ph289.i ], [ 0, %.preheader262.i ]
  %.0169284.i = phi ptr [ %i.vc, %.lr.ph289.i ], [ %6, %.preheader262.i ] ; 3 uses
  %i.to = load <8 x i16>, ptr %.0160287.i, align 1, !tbaa !61 ; 2 uses
  %i.tp = shufflevector <8 x i16> %i.to, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.tq = shufflevector <8 x i16> %i.to, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.tr = shufflevector <8 x i16> %i.tp, <8 x i16> %i.tq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ts = bitcast <16 x i16> %i.tr to <8 x float>
  %i.tt = load <8 x float>, ptr %.0163286.i, align 1, !tbaa !61
  %i.tu = load <8 x float>, ptr %.0169284.i, align 1, !tbaa !61
  %i.tv = fsub fast <8 x float> %i.ts, %i.tt
  %i.tw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tv, <8 x float> splat (float f0x42B0C0A5))
  %i.tx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.tw, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ty = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tx, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.tz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ty, i32 1) ; 2 uses
  %i.ua = fcmp fast ogt <8 x float> %i.tz, %i.ty
  %i.ub = select <8 x i1> %i.ua, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.uc = fsub fast <8 x float> %i.tz, %i.ub      ; 2 uses
  %i.ud = fneg fast <8 x float> %i.uc             ; 2 uses
  %i.ue = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ud, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.tx)
  %i.uf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ud, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ue) ; 8 uses
  %i.ug = fmul fast <8 x float> %i.uf, %i.uf
  %i.uh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uf, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ui = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uh, <8 x float> nofpclass(nan inf) %i.uf, <8 x float> splat (float f0x3C088908))
  %i.uj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ui, <8 x float> nofpclass(nan inf) %i.uf, <8 x float> splat (float f0x3D2AA9C1))
  %i.uk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uj, <8 x float> nofpclass(nan inf) %i.uf, <8 x float> splat (float f0x3E2AAAAA))
  %i.ul = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uk, <8 x float> nofpclass(nan inf) %i.uf, <8 x float> splat (float 5.000000e-01))
  %i.um = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ul, <8 x float> nofpclass(nan inf) %i.ug, <8 x float> nofpclass(nan inf) %i.uf)
  %i.un = fadd fast <8 x float> %i.um, splat (float 1.000000e+00)
  %i.uo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uc)
  %i.up = shl <8 x i32> %i.uo, splat (i32 23)
  %i.uq = add <8 x i32> %i.up, splat (i32 1065353216)
  %i.ur = bitcast <8 x i32> %i.uq to <8 x float>
  %i.us = fmul fast <8 x float> %i.un, %i.ur      ; 2 uses
  %i.ut = bitcast <8 x float> %i.us to <8 x i32>  ; 2 uses
  %i.uu = shufflevector <8 x i32> %i.ut, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uv = shufflevector <8 x i32> %i.ut, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.uw = lshr <4 x i32> %i.uu, splat (i32 16)
  %i.ux = lshr <4 x i32> %i.uv, splat (i32 16)
  %i.uy = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.uw, <4 x i32> %i.ux)
  store <8 x i16> %i.uy, ptr %.0160287.i, align 1, !tbaa !61
  %i.uz = fadd fast <8 x float> %i.us, %i.tu
  store <8 x float> %i.uz, ptr %.0169284.i, align 1, !tbaa !61
  %i.va = getelementptr inbounds nuw i8, ptr %.0160287.i, i64 16 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0163286.i, i64 32 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.0169284.i, i64 32 ; 2 uses
  %i.vd = add nuw nsw i32 %.0166285.i, 8          ; 2 uses
  %i.ve = or disjoint i32 %i.vd, 7
  %i.vf = icmp slt i32 %i.ve, %4
  br i1 %i.vf, label %.lr.ph289.i, label %.preheader261.i, !llvm.loop !268

.preheader260.i:                                  ; preds = %.lr.ph298.i, %.preheader261.i
  %.1170.lcssa.i = phi ptr [ %.0169.lcssa.i, %.preheader261.i ], [ %i.yr, %.lr.ph298.i ] ; 6 uses
  %.1167.lcssa.i = phi i32 [ %.0166.lcssa.i, %.preheader261.i ], [ %i.ys, %.lr.ph298.i ] ; 6 uses
  %.1164.lcssa.i = phi ptr [ %.0163.lcssa.i, %.preheader261.i ], [ %i.yq, %.lr.ph298.i ] ; 6 uses
  %.1161.lcssa.i = phi ptr [ %.0160.lcssa.i, %.preheader261.i ], [ %i.yp, %.lr.ph298.i ] ; 4 uses
  %i.vg = icmp slt i32 %.1167.lcssa.i, %4
  br i1 %i.vg, label %.lr.ph307.i.preheader, label %._crit_edge308.i

.lr.ph307.i.preheader:                            ; preds = %.preheader260.i
  %i.vh = xor i32 %.1167.lcssa.i, -1
  %i.vi = add i32 %4, %i.vh                       ; 2 uses
  %i.vj = zext i32 %i.vi to i64
  %i.vk = add nuw nsw i64 %i.vj, 1                ; 2 uses
  %min.iters.check298 = icmp ult i32 %i.vi, 7
  br i1 %min.iters.check298, label %.lr.ph307.i.preheader390, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph307.i.preheader
  %i.vl = sub i32 %i.oy, %.1167.lcssa.i
  %i.vm = zext i32 %i.vl to i64
  %i.vn = shl nuw nsw i64 %i.vm, 2
  %i.vo = add nuw nsw i64 %i.vn, 4                ; 2 uses
  %i.vp = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.vo
  %i.vq = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.vo
  %bound0 = icmp ult ptr %.1170.lcssa.i, %i.vq
  %bound1 = icmp ult ptr %.1164.lcssa.i, %i.vp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph307.i.preheader390, label %vector.ph299

vector.ph299:                                     ; preds = %vector.memcheck
  %n.vec300 = and i64 %i.vk, 8589934584           ; 5 uses
  %i.vr = shl nuw nsw i64 %n.vec300, 1
  %i.vs = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.vr
  %i.vt = shl nuw nsw i64 %n.vec300, 2            ; 2 uses
  %i.vu = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.vt
  %i.vv = trunc i64 %n.vec300 to i32
  %i.vw = add i32 %.1167.lcssa.i, %i.vv
  %i.vx = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.vt
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next309, %vector.body301 ] ; 3 uses
  %i.vy = shl i64 %index302, 1
  %next.gep303 = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.vy ; 2 uses
  %i.vz = shl i64 %index302, 2                    ; 2 uses
  %next.gep304 = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.vz
  %next.gep305 = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.vz ; 2 uses
  %wide.load306 = load <8 x i16>, ptr %next.gep303, align 2, !tbaa !74
  %i.wa = zext <8 x i16> %wide.load306 to <8 x i32>
  %i.wb = shl nuw <8 x i32> %i.wa, splat (i32 16)
  %i.wc = bitcast <8 x i32> %i.wb to <8 x float>
  %wide.load307 = load <8 x float>, ptr %next.gep304, align 4, !tbaa !65, !alias.scope !285
  %i.wd = fsub fast <8 x float> %i.wc, %wide.load307
  %i.we = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.wd) ; 2 uses
  %i.wf = bitcast <8 x float> %i.we to <8 x i32>
  %i.wg = lshr <8 x i32> %i.wf, splat (i32 16)
  %i.wh = trunc nuw nsw <8 x i32> %i.wg to <8 x i16>
  store <8 x i16> %i.wh, ptr %next.gep303, align 2, !tbaa !74
  %wide.load308 = load <8 x float>, ptr %next.gep305, align 4, !tbaa !65, !alias.scope !286, !noalias !285
  %i.wi = fadd fast <8 x float> %i.we, %wide.load308
  store <8 x float> %i.wi, ptr %next.gep305, align 4, !tbaa !65, !alias.scope !286, !noalias !285
  %index.next309 = add nuw i64 %index302, 8       ; 2 uses
  %i.wj = icmp eq i64 %index.next309, %n.vec300
  br i1 %i.wj, label %middle.block310, label %vector.body301, !llvm.loop !272

middle.block310:                                  ; preds = %vector.body301
  %cmp.n311 = icmp eq i64 %i.vk, %n.vec300
  br i1 %cmp.n311, label %._crit_edge308.i, label %.lr.ph307.i.preheader390

.lr.ph307.i.preheader390:                         ; preds = %vector.memcheck, %.lr.ph307.i.preheader, %middle.block310
  %.2162306.i.ph = phi ptr [ %.1161.lcssa.i, %vector.memcheck ], [ %.1161.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vs, %middle.block310 ] ; 4 uses
  %.2165305.i.ph = phi ptr [ %.1164.lcssa.i, %vector.memcheck ], [ %.1164.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vu, %middle.block310 ] ; 3 uses
  %.2168304.i.ph = phi i32 [ %.1167.lcssa.i, %vector.memcheck ], [ %.1167.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vw, %middle.block310 ] ; 4 uses
  %.2171303.i.ph = phi ptr [ %.1170.lcssa.i, %vector.memcheck ], [ %.1170.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vx, %middle.block310 ] ; 4 uses
  %i.wk = sub i32 %4, %.2168304.i.ph
  %.neg = add i32 %.2168304.i.ph, 1
  %xtraiter416 = and i32 %i.wk, 1
  %lcmp.mod417.not = icmp eq i32 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.lr.ph307.i.prol.loopexit, label %.lr.ph307.i.prol

.lr.ph307.i.prol:                                 ; preds = %.lr.ph307.i.preheader390
  %i.wl = load i16, ptr %.2162306.i.ph, align 2, !tbaa !74
  %i.wm = zext i16 %i.wl to i32
  %i.wn = shl nuw i32 %i.wm, 16
  %i.wo = bitcast i32 %i.wn to float
  %i.wp = load float, ptr %.2165305.i.ph, align 4, !tbaa !65
  %i.wq = fsub fast float %i.wo, %i.wp
  %i.wr = tail call fast float @llvm.exp.f32(float %i.wq) ; 2 uses
  %i.ws = bitcast float %i.wr to i32
  %i.wt = lshr i32 %i.ws, 16
  %i.wu = trunc nuw nsw i32 %i.wt to i16
  store i16 %i.wu, ptr %.2162306.i.ph, align 2, !tbaa !74
  %i.wv = load float, ptr %.2171303.i.ph, align 4, !tbaa !65
  %i.ww = fadd fast float %i.wr, %i.wv
  store float %i.ww, ptr %.2171303.i.ph, align 4, !tbaa !65
  %i.wx = getelementptr inbounds nuw i8, ptr %.2162306.i.ph, i64 2
  %i.wy = getelementptr inbounds nuw i8, ptr %.2165305.i.ph, i64 4
  %i.wz = getelementptr inbounds nuw i8, ptr %.2171303.i.ph, i64 4
  %i.xa = add nuw nsw i32 %.2168304.i.ph, 1
  br label %.lr.ph307.i.prol.loopexit

.lr.ph307.i.prol.loopexit:                        ; preds = %.lr.ph307.i.prol, %.lr.ph307.i.preheader390
  %.2162306.i.unr = phi ptr [ %.2162306.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wx, %.lr.ph307.i.prol ]
  %.2165305.i.unr = phi ptr [ %.2165305.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wy, %.lr.ph307.i.prol ]
  %.2168304.i.unr = phi i32 [ %.2168304.i.ph, %.lr.ph307.i.preheader390 ], [ %i.xa, %.lr.ph307.i.prol ]
  %.2171303.i.unr = phi ptr [ %.2171303.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wz, %.lr.ph307.i.prol ]
  %i.xb = icmp eq i32 %4, %.neg
  br i1 %i.xb, label %._crit_edge308.i, label %.lr.ph307.i

.lr.ph298.i:                                      ; preds = %.preheader261.i, %.lr.ph298.i
  %.1161297.i = phi ptr [ %i.yp, %.lr.ph298.i ], [ %.0160.lcssa.i, %.preheader261.i ] ; 3 uses
  %.1164296.i = phi ptr [ %i.yq, %.lr.ph298.i ], [ %.0163.lcssa.i, %.preheader261.i ] ; 2 uses
  %.1167295.i = phi i32 [ %i.ys, %.lr.ph298.i ], [ %.0166.lcssa.i, %.preheader261.i ]
  %.1170294.i = phi ptr [ %i.yr, %.lr.ph298.i ], [ %.0169.lcssa.i, %.preheader261.i ] ; 3 uses
  %i.xc = load i64, ptr %.1161297.i, align 1, !tbaa !61
  %i.xd = insertelement <2 x i64> poison, i64 %i.xc, i64 0
  %i.xe = bitcast <2 x i64> %i.xd to <8 x i16>
  %i.xf = shufflevector <8 x i16> %i.xe, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.xg = bitcast <8 x i16> %i.xf to <4 x float>
  %i.xh = load <4 x float>, ptr %.1164296.i, align 1, !tbaa !61
  %i.xi = load <4 x float>, ptr %.1170294.i, align 1, !tbaa !61
  %i.xj = fsub fast <4 x float> %i.xg, %i.xh
  %i.xk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xj, <4 x float> splat (float f0x42B0C0A5))
  %i.xl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xm = fmul fast <4 x float> %i.xl, splat (float f0x3FB8AA3B)
  %i.xn = fadd fast <4 x float> %i.xm, splat (float 5.000000e-01) ; 2 uses
  %i.xo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xn)
  %i.xp = sitofp fast <4 x i32> %i.xo to <4 x float> ; 2 uses
  %i.xq = fcmp fast olt <4 x float> %i.xn, %i.xp
  %i.xr = select <4 x i1> %i.xq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xs = fsub fast <4 x float> %i.xp, %i.xr      ; 2 uses
  %i.xt = fneg fast <4 x float> %i.xs             ; 2 uses
  %i.xu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.xt, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.xl)
  %i.xv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.xt, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.xu) ; 8 uses
  %i.xw = fmul fast <4 x float> %i.xv, %i.xv
  %i.xx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xv, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.xy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> nofpclass(nan inf) %i.xv, <4 x float> splat (float f0x3C088908))
  %i.xz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xy, <4 x float> nofpclass(nan inf) %i.xv, <4 x float> splat (float f0x3D2AA9C1))
  %i.ya = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xz, <4 x float> nofpclass(nan inf) %i.xv, <4 x float> splat (float f0x3E2AAAAA))
  %i.yb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ya, <4 x float> nofpclass(nan inf) %i.xv, <4 x float> splat (float 5.000000e-01))
  %i.yc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yb, <4 x float> nofpclass(nan inf) %i.xw, <4 x float> nofpclass(nan inf) %i.xv)
  %i.yd = fadd fast <4 x float> %i.yc, splat (float 1.000000e+00)
  %i.ye = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xs)
  %i.yf = shl <4 x i32> %i.ye, splat (i32 23)
  %i.yg = add <4 x i32> %i.yf, splat (i32 1065353216)
  %i.yh = bitcast <4 x i32> %i.yg to <4 x float>
  %i.yi = fmul fast <4 x float> %i.yd, %i.yh      ; 2 uses
  %i.yj = bitcast <4 x float> %i.yi to <4 x i32>
  %i.yk = lshr <4 x i32> %i.yj, splat (i32 16)
  %i.yl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.yk, <4 x i32> poison)
  %i.ym = bitcast <8 x i16> %i.yl to <2 x i64>
  %i.yn = extractelement <2 x i64> %i.ym, i64 0
  store i64 %i.yn, ptr %.1161297.i, align 1, !tbaa !61
  %i.yo = fadd fast <4 x float> %i.yi, %i.xi
  store <4 x float> %i.yo, ptr %.1170294.i, align 1, !tbaa !61
  %i.yp = getelementptr inbounds nuw i8, ptr %.1161297.i, i64 8 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.1164296.i, i64 16 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.1170294.i, i64 16 ; 2 uses
  %i.ys = add nuw nsw i32 %.1167295.i, 4          ; 3 uses
  %i.yt = or disjoint i32 %i.ys, 3
  %i.yu = icmp slt i32 %i.yt, %4
  br i1 %i.yu, label %.lr.ph298.i, label %.preheader260.i, !llvm.loop !273

.lr.ph307.i:                                      ; preds = %.lr.ph307.i.prol.loopexit, %.lr.ph307.i
  %.2162306.i = phi ptr [ %i.zw, %.lr.ph307.i ], [ %.2162306.i.unr, %.lr.ph307.i.prol.loopexit ] ; 4 uses
  %.2165305.i = phi ptr [ %i.zx, %.lr.ph307.i ], [ %.2165305.i.unr, %.lr.ph307.i.prol.loopexit ] ; 3 uses
  %.2168304.i = phi i32 [ %i.zz, %.lr.ph307.i ], [ %.2168304.i.unr, %.lr.ph307.i.prol.loopexit ]
  %.2171303.i = phi ptr [ %i.zy, %.lr.ph307.i ], [ %.2171303.i.unr, %.lr.ph307.i.prol.loopexit ] ; 4 uses
  %i.yv = load i16, ptr %.2162306.i, align 2, !tbaa !74
  %i.yw = zext i16 %i.yv to i32
  %i.yx = shl nuw i32 %i.yw, 16
  %i.yy = bitcast i32 %i.yx to float
  %i.yz = load float, ptr %.2165305.i, align 4, !tbaa !65
  %i.za = fsub fast float %i.yy, %i.yz
  %i.zb = tail call fast float @llvm.exp.f32(float %i.za) ; 2 uses
  %i.zc = bitcast float %i.zb to i32
  %i.zd = lshr i32 %i.zc, 16
  %i.ze = trunc nuw nsw i32 %i.zd to i16
  store i16 %i.ze, ptr %.2162306.i, align 2, !tbaa !74
  %i.zf = load float, ptr %.2171303.i, align 4, !tbaa !65
  %i.zg = fadd fast float %i.zb, %i.zf
  store float %i.zg, ptr %.2171303.i, align 4, !tbaa !65
  %i.zh = getelementptr inbounds nuw i8, ptr %.2162306.i, i64 2 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.2165305.i, i64 4
  %i.zj = getelementptr inbounds nuw i8, ptr %.2171303.i, i64 4 ; 2 uses
  %i.zk = load i16, ptr %i.zh, align 2, !tbaa !74
  %i.zl = zext i16 %i.zk to i32
  %i.zm = shl nuw i32 %i.zl, 16
  %i.zn = bitcast i32 %i.zm to float
  %i.zo = load float, ptr %i.zi, align 4, !tbaa !65
  %i.zp = fsub fast float %i.zn, %i.zo
  %i.zq = tail call fast float @llvm.exp.f32(float %i.zp) ; 2 uses
  %i.zr = bitcast float %i.zq to i32
  %i.zs = lshr i32 %i.zr, 16
  %i.zt = trunc nuw nsw i32 %i.zs to i16
  store i16 %i.zt, ptr %i.zh, align 2, !tbaa !74
  %i.zu = load float, ptr %i.zj, align 4, !tbaa !65
  %i.zv = fadd fast float %i.zq, %i.zu
  store float %i.zv, ptr %i.zj, align 4, !tbaa !65
  %i.zw = getelementptr inbounds nuw i8, ptr %.2162306.i, i64 4
  %i.zx = getelementptr inbounds nuw i8, ptr %.2165305.i, i64 8
  %i.zy = getelementptr inbounds nuw i8, ptr %.2171303.i, i64 8
  %i.zz = add nuw nsw i32 %.2168304.i, 2          ; 2 uses
  %exitcond372.not.i.1 = icmp eq i32 %i.zz, %4
  br i1 %exitcond372.not.i.1, label %._crit_edge308.i, label %.lr.ph307.i, !llvm.loop !274

._crit_edge308.i:                                 ; preds = %.lr.ph307.i.prol.loopexit, %.lr.ph307.i, %middle.block310, %.preheader260.i
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i, 1 ; 2 uses
  %exitcond377.not.i = icmp eq i64 %indvars.iv.next374.i, %wide.trip.count.i83
  br i1 %exitcond377.not.i, label %.preheader259.i, label %.preheader262.i, !llvm.loop !275

.preheader258.loopexit.i.unr-lcssa:               ; preds = %.lr.ph313.i
  %i.aaa = and i32 %i.tg, 8
  %lcmp.mod420.not.not = icmp eq i32 %i.aaa, 0
  br i1 %lcmp.mod420.not.not, label %.lr.ph313.i.epil.preheader, label %.preheader258.loopexit.i

.lr.ph313.i.epil.preheader:                       ; preds = %.preheader258.loopexit.i.unr-lcssa, %.lr.ph313.i.preheader
  %.0150311.i.epil.init = phi ptr [ %6, %.lr.ph313.i.preheader ], [ %i.aav, %.preheader258.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod422 = trunc i32 %i.ti to i1
  tail call void @llvm.assume(i1 %lcmp.mod422)
  %i.aab = load <8 x float>, ptr %.0150311.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.aac = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.aab) ; 2 uses
  %i.aad = fneg fast <8 x float> %i.aab
  %i.aae = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aad, <8 x float> nofpclass(nan inf) %i.aac, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.aaf = fmul fast <8 x float> %i.aae, %i.aac
  store <8 x float> %i.aaf, ptr %.0150311.i.epil.init, align 1, !tbaa !61
  %i.aag = getelementptr inbounds nuw i8, ptr %.0150311.i.epil.init, i64 32
  br label %.preheader258.loopexit.i

.preheader258.loopexit.i:                         ; preds = %.preheader258.loopexit.i.unr-lcssa, %.lr.ph313.i.epil.preheader
  %.lcssa389 = phi ptr [ %i.aav, %.preheader258.loopexit.i.unr-lcssa ], [ %i.aag, %.lr.ph313.i.epil.preheader ]
  %i.aah = and i32 %4, 2147483640
  br label %.preheader258.i

.preheader258.i:                                  ; preds = %.preheader258.loopexit.i, %.preheader259.i
  %.0150.lcssa.i = phi ptr [ %6, %.preheader259.i ], [ %.lcssa389, %.preheader258.loopexit.i ] ; 2 uses
  %.0147.lcssa.i = phi i32 [ 0, %.preheader259.i ], [ %i.aah, %.preheader258.loopexit.i ] ; 3 uses
  %i.aai = or disjoint i32 %.0147.lcssa.i, 3
  %i.aaj = icmp slt i32 %i.aai, %4
  br i1 %i.aaj, label %.lr.ph318.i, label %.preheader257.i

.lr.ph313.i:                                      ; preds = %.lr.ph313.i, %.lr.ph313.i.preheader.new
  %.0150311.i = phi ptr [ %6, %.lr.ph313.i.preheader.new ], [ %i.aav, %.lr.ph313.i ] ; 4 uses
  %niter424 = phi i32 [ 0, %.lr.ph313.i.preheader.new ], [ %niter424.next.1, %.lr.ph313.i ]
  %i.aak = load <8 x float>, ptr %.0150311.i, align 1, !tbaa !61 ; 2 uses
  %i.aal = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.aak) ; 2 uses
  %i.aam = fneg fast <8 x float> %i.aak
  %i.aan = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aam, <8 x float> nofpclass(nan inf) %i.aal, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.aao = fmul fast <8 x float> %i.aan, %i.aal
  store <8 x float> %i.aao, ptr %.0150311.i, align 1, !tbaa !61
  %i.aap = getelementptr inbounds nuw i8, ptr %.0150311.i, i64 32 ; 2 uses
  %i.aaq = load <8 x float>, ptr %i.aap, align 1, !tbaa !61 ; 2 uses
  %i.aar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.aaq) ; 2 uses
  %i.aas = fneg fast <8 x float> %i.aaq
  %i.aat = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aas, <8 x float> nofpclass(nan inf) %i.aar, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.aau = fmul fast <8 x float> %i.aat, %i.aar
  store <8 x float> %i.aau, ptr %i.aap, align 1, !tbaa !61
  %i.aav = getelementptr inbounds nuw i8, ptr %.0150311.i, i64 64 ; 3 uses
  %niter424.next.1 = add i32 %niter424, 2         ; 2 uses
  %niter424.ncmp.1.not = icmp eq i32 %niter424.next.1, %unroll_iter423
  br i1 %niter424.ncmp.1.not, label %.preheader258.loopexit.i.unr-lcssa, label %.lr.ph313.i, !llvm.loop !276

.preheader257.i:                                  ; preds = %.lr.ph318.i, %.preheader258.i
  %.1151.lcssa.i = phi ptr [ %.0150.lcssa.i, %.preheader258.i ], [ %i.abn, %.lr.ph318.i ] ; 3 uses
  %.1148.lcssa.i = phi i32 [ %.0147.lcssa.i, %.preheader258.i ], [ %i.abo, %.lr.ph318.i ] ; 4 uses
  %i.aaw = icmp slt i32 %.1148.lcssa.i, %4
  br i1 %i.aaw, label %.lr.ph323.i.preheader, label %.preheader256.i

.lr.ph323.i.preheader:                            ; preds = %.preheader257.i
  %i.aax = xor i32 %.1148.lcssa.i, -1
  %i.aay = add i32 %4, %i.aax                     ; 2 uses
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = add nuw nsw i64 %i.aaz, 1              ; 2 uses
  %min.iters.check317 = icmp ult i32 %i.aay, 7
  br i1 %min.iters.check317, label %.lr.ph323.i.preheader386, label %vector.ph318

vector.ph318:                                     ; preds = %.lr.ph323.i.preheader
  %n.vec319 = and i64 %i.aba, 8589934584          ; 4 uses
  %i.abb = trunc i64 %n.vec319 to i32
  %i.abc = add i32 %.1148.lcssa.i, %i.abb
  %i.abd = shl nuw nsw i64 %n.vec319, 2
  %i.abe = getelementptr i8, ptr %.1151.lcssa.i, i64 %i.abd
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next324, %vector.body320 ] ; 2 uses
  %i.abf = shl i64 %index321, 2
  %next.gep322 = getelementptr i8, ptr %.1151.lcssa.i, i64 %i.abf ; 2 uses
  %wide.load323 = load <8 x float>, ptr %next.gep322, align 4, !tbaa !65
  %i.abg = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load323
  store <8 x float> %i.abg, ptr %next.gep322, align 4, !tbaa !65
  %index.next324 = add nuw i64 %index321, 8       ; 2 uses
  %i.abh = icmp eq i64 %index.next324, %n.vec319
  br i1 %i.abh, label %middle.block325, label %vector.body320, !llvm.loop !277

middle.block325:                                  ; preds = %vector.body320
  %cmp.n326 = icmp eq i64 %i.aba, %n.vec319
  br i1 %cmp.n326, label %.preheader256.i, label %.lr.ph323.i.preheader386

.lr.ph323.i.preheader386:                         ; preds = %.lr.ph323.i.preheader, %middle.block325
  %.2149322.i.ph = phi i32 [ %.1148.lcssa.i, %.lr.ph323.i.preheader ], [ %i.abc, %middle.block325 ]
  %.2152321.i.ph = phi ptr [ %.1151.lcssa.i, %.lr.ph323.i.preheader ], [ %i.abe, %middle.block325 ]
  br label %.lr.ph323.i

.lr.ph318.i:                                      ; preds = %.preheader258.i, %.lr.ph318.i
  %.1148317.i = phi i32 [ %i.abo, %.lr.ph318.i ], [ %.0147.lcssa.i, %.preheader258.i ]
  %.1151316.i = phi ptr [ %i.abn, %.lr.ph318.i ], [ %.0150.lcssa.i, %.preheader258.i ] ; 3 uses
  %i.abi = load <4 x float>, ptr %.1151316.i, align 1, !tbaa !61 ; 2 uses
  %i.abj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.abi) ; 2 uses
  %i.abk = fneg fast <4 x float> %i.abi
  %i.abl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.abk, <4 x float> nofpclass(nan inf) %i.abj, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.abm = fmul fast <4 x float> %i.abl, %i.abj
  store <4 x float> %i.abm, ptr %.1151316.i, align 1, !tbaa !61
  %i.abn = getelementptr inbounds nuw i8, ptr %.1151316.i, i64 16 ; 2 uses
  %i.abo = add nuw nsw i32 %.1148317.i, 4         ; 3 uses
  %i.abp = or disjoint i32 %i.abo, 3
  %i.abq = icmp slt i32 %i.abp, %4
  br i1 %i.abq, label %.lr.ph318.i, label %.preheader257.i, !llvm.loop !278

.preheader256.i:                                  ; preds = %.lr.ph323.i, %middle.block325, %.preheader257.i
  br i1 %i.ow, label %.lr.ph345.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph345.i:                                      ; preds = %.preheader256.i
  %i.abr = and i32 %4, -8
  %wide.trip.count383.i = zext nneg i32 %1 to i64
  br label %bb.j

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader386, %.lr.ph323.i
  %.2149322.i = phi i32 [ %i.abv, %.lr.ph323.i ], [ %.2149322.i.ph, %.lr.ph323.i.preheader386 ]
  %.2152321.i = phi ptr [ %i.abu, %.lr.ph323.i ], [ %.2152321.i.ph, %.lr.ph323.i.preheader386 ] ; 3 uses
  %i.abs = load float, ptr %.2152321.i, align 4, !tbaa !65
  %i.abt = fdiv fast float 1.000000e+00, %i.abs
  store float %i.abt, ptr %.2152321.i, align 4, !tbaa !65
  %i.abu = getelementptr inbounds nuw i8, ptr %.2152321.i, i64 4
  %i.abv = add nuw nsw i32 %.2149322.i, 1         ; 2 uses
  %exitcond378.not.i = icmp eq i32 %i.abv, %4
  br i1 %exitcond378.not.i, label %.preheader256.i, label %.lr.ph323.i, !llvm.loop !279

bb.j:                                             ; preds = %._crit_edge343.i, %.lr.ph345.i
  %indvars.iv380.i = phi i64 [ 0, %.lr.ph345.i ], [ %indvars.iv.next381.i, %._crit_edge343.i ] ; 2 uses
  %i.abw = mul i64 %indvars.iv380.i, %3
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.abw ; 2 uses
  br i1 %i.a, label %.lr.ph328.i, label %.preheader255.i

.preheader255.i:                                  ; preds = %.lr.ph328.i, %bb.j
  %.0143.lcssa.i = phi ptr [ %i.abx, %bb.j ], [ %i.acn, %.lr.ph328.i ] ; 2 uses
  %.0140.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.aco, %.lr.ph328.i ] ; 2 uses
  %.0137.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.abr, %.lr.ph328.i ] ; 3 uses
  %i.aby = or disjoint i32 %.0137.lcssa.i, 3
  %i.abz = icmp slt i32 %i.aby, %4
  br i1 %i.abz, label %.lr.ph335.i, label %.preheader.i82

.lr.ph328.i:                                      ; preds = %bb.j, %.lr.ph328.i
  %.0137326.i = phi i32 [ %i.acp, %.lr.ph328.i ], [ 0, %bb.j ]
  %.0140325.i = phi ptr [ %i.aco, %.lr.ph328.i ], [ %6, %bb.j ] ; 2 uses
  %.0143324.i = phi ptr [ %i.acn, %.lr.ph328.i ], [ %i.abx, %bb.j ] ; 3 uses
  %i.aca = load <8 x i16>, ptr %.0143324.i, align 1, !tbaa !61 ; 2 uses
  %i.acb = shufflevector <8 x i16> %i.aca, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.acc = shufflevector <8 x i16> %i.aca, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.acd = shufflevector <8 x i16> %i.acb, <8 x i16> %i.acc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ace = bitcast <16 x i16> %i.acd to <8 x float>
  %i.acf = load <8 x float>, ptr %.0140325.i, align 1, !tbaa !61
  %i.acg = fmul fast <8 x float> %i.acf, %i.ace
  %i.ach = bitcast <8 x float> %i.acg to <8 x i32> ; 2 uses
  %i.aci = shufflevector <8 x i32> %i.ach, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acj = shufflevector <8 x i32> %i.ach, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ack = lshr <4 x i32> %i.aci, splat (i32 16)
  %i.acl = lshr <4 x i32> %i.acj, splat (i32 16)
  %i.acm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ack, <4 x i32> %i.acl)
  store <8 x i16> %i.acm, ptr %.0143324.i, align 1, !tbaa !61
  %i.acn = getelementptr inbounds nuw i8, ptr %.0143324.i, i64 16 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.0140325.i, i64 32 ; 2 uses
  %i.acp = add nuw nsw i32 %.0137326.i, 8         ; 2 uses
  %i.acq = or disjoint i32 %i.acp, 7
  %i.acr = icmp slt i32 %i.acq, %4
  br i1 %i.acr, label %.lr.ph328.i, label %.preheader255.i, !llvm.loop !280

.preheader.i82:                                   ; preds = %.lr.ph335.i, %.preheader255.i
  %.1144.lcssa.i = phi ptr [ %.0143.lcssa.i, %.preheader255.i ], [ %i.adz, %.lr.ph335.i ] ; 3 uses
  %.1141.lcssa.i = phi ptr [ %.0140.lcssa.i, %.preheader255.i ], [ %i.aea, %.lr.ph335.i ] ; 3 uses
  %.1138.lcssa.i = phi i32 [ %.0137.lcssa.i, %.preheader255.i ], [ %i.aeb, %.lr.ph335.i ] ; 4 uses
  %i.acs = icmp slt i32 %.1138.lcssa.i, %4
  br i1 %i.acs, label %.lr.ph342.i.preheader, label %._crit_edge343.i

.lr.ph342.i.preheader:                            ; preds = %.preheader.i82
  %i.act = xor i32 %.1138.lcssa.i, -1
  %i.acu = add i32 %4, %i.act                     ; 2 uses
  %i.acv = zext i32 %i.acu to i64
  %i.acw = add nuw nsw i64 %i.acv, 1              ; 2 uses
  %min.iters.check330 = icmp ult i32 %i.acu, 7
  br i1 %min.iters.check330, label %.lr.ph342.i.preheader379, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph342.i.preheader
  %n.vec332 = and i64 %i.acw, 8589934584          ; 5 uses
  %i.acx = trunc i64 %n.vec332 to i32
end_hunk_1
begin_hunk_2_@_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.10:bb.a
  %i.dd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235.i, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.177237.i, i64 8 ; 2 uses
  %i.df = add nuw nsw i32 %.180236.i, 4           ; 3 uses
  %i.dg = or disjoint i32 %i.df, 3
  %i.dh = icmp slt i32 %i.dg, %i.ac
  br i1 %i.dh, label %.lr.ph238.i, label %.preheader228.i, !llvm.loop !8

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %.278244.i = phi ptr [ %i.di, %.lr.ph245.i ], [ %.278244.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.281243.i = phi i32 [ %i.dn, %.lr.ph245.i ], [ %.281243.i.ph, %.lr.ph245.i.preheader ]
  %.0213242.i = phi float [ %.sroa.speculated133.i, %.lr.ph245.i ], [ %.0213242.i.ph, %.lr.ph245.i.preheader ]
  %i.di = getelementptr inbounds nuw i8, ptr %.278244.i, i64 2
  %i.dj = load i16, ptr %.278244.i, align 2, !tbaa !74
  %i.dk = zext i16 %i.dj to i32
  %i.dl = shl nuw i32 %i.dk, 16
  %i.dm = bitcast i32 %i.dl to float
  %.sroa.speculated133.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242.i, float %i.dm) ; 2 uses
  %i.dn = add nuw nsw i32 %.281243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dn, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph245.i, !llvm.loop !303

._crit_edge.i:                                    ; preds = %.lr.ph245.i, %middle.block168, %vec.epilog.middle.block190, %.preheader228.i
  %.0213.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader228.i ], [ %i.cx, %vec.epilog.middle.block190 ], [ %i.cm, %middle.block168 ], [ %.sroa.speculated133.i, %.lr.ph245.i ] ; 4 uses
  %i.do = icmp eq i32 %i.aa, 4                    ; 2 uses
  br i1 %i.do, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.dp = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.dp)
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dr, <4 x float> nofpclass(nan inf) %i.dq) ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.du = icmp eq i32 %i.aa, 1
  br i1 %i.du, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dv = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dw = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.dw) ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.dy) ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.ea)
  %i.ec = extractelement <4 x float> %i.eb, i64 0 ; 2 uses
  %i.ed = fcmp fast olt float %.0213.lcssa.i, %i.ec
  %.sroa.speculated129.i = select i1 %i.ed, float %i.ec, float %.0213.lcssa.i ; 2 uses
  %i.ee = shufflevector <4 x float> %.0210.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ee) ; 2 uses
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> nofpclass(nan inf) %i.eg)
  %i.ei = extractelement <4 x float> %i.eh, i64 0 ; 2 uses
  %i.ej = fcmp fast olt float %.sroa.speculated129.i, %i.ei
  %.sroa.speculated.i = select i1 %i.ej, float %i.ei, float %.sroa.speculated129.i ; 2 uses
  %i.ek = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = shufflevector <4 x float> %i.ek, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.en = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1214.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0213.lcssa.i, %bb.c ], [ %.0213.lcssa.i, %.thread.i ] ; 3 uses
  %.2212.i = phi nsz <4 x float> [ %i.el, %bb.d ], [ %.0210.lcssa.i, %bb.c ], [ %i.ds, %.thread.i ]
  %.2209.i = phi nsz <8 x float> [ %i.em, %bb.d ], [ %.0207.lcssa.i, %bb.c ], [ %i.dt, %.thread.i ]
  br i1 %i.ad, label %.lr.ph251.i, label %.preheader227.i

.preheader227.loopexit.i:                         ; preds = %.lr.ph251.i
  %i.eo = and i32 %i.ac, 2147483640
  br label %.preheader227.i

.preheader227.i:                                  ; preds = %.preheader227.loopexit.i, %bb.e
  %.0215.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ga, %.preheader227.loopexit.i ] ; 5 uses
  %.085.lcssa.i = phi ptr [ %.02042, %bb.e ], [ %i.gb, %.preheader227.loopexit.i ] ; 2 uses
  %.082.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.eo, %.preheader227.loopexit.i ] ; 3 uses
  %i.ep = or disjoint i32 %.082.lcssa.i, 3
  %i.eq = icmp slt i32 %i.ep, %i.ac
  br i1 %i.eq, label %.lr.ph258.i, label %.preheader226.i

.lr.ph251.i:                                      ; preds = %bb.e, %.lr.ph251.i
  %.082249.i = phi i32 [ %i.gc, %.lr.ph251.i ], [ 0, %bb.e ]
  %.085248.i = phi ptr [ %i.gb, %.lr.ph251.i ], [ %.02042, %bb.e ] ; 3 uses
  %.0215247.i = phi <8 x float> [ %i.ga, %.lr.ph251.i ], [ zeroinitializer, %bb.e ]
  %i.er = load <8 x i16>, ptr %.085248.i, align 1, !tbaa !61 ; 2 uses
  %i.es = shufflevector <8 x i16> %i.er, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.et = shufflevector <8 x i16> %i.er, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.eu = shufflevector <8 x i16> %i.es, <8 x i16> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = bitcast <16 x i16> %i.eu to <8 x float>
  %i.ew = fsub fast <8 x float> %i.ev, %.2209.i
  %i.ex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> splat (float f0x42B0C0A5))
  %i.ey = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ey, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fa = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ez, i32 1) ; 2 uses
  %i.fb = fcmp fast ogt <8 x float> %i.fa, %i.ez
  %i.fc = select <8 x i1> %i.fb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fd = fsub fast <8 x float> %i.fa, %i.fc      ; 2 uses
  %i.fe = fneg fast <8 x float> %i.fd             ; 2 uses
  %i.ff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fe, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ey)
  %i.fg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fe, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ff) ; 8 uses
  %i.fh = fmul fast <8 x float> %i.fg, %i.fg
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> splat (float f0x3C088908))
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> splat (float f0x3D2AA9C1))
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fk, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> splat (float f0x3E2AAAAA))
  %i.fm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> splat (float 5.000000e-01))
  %i.fn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fm, <8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.fg)
  %i.fo = fadd fast <8 x float> %i.fn, splat (float 1.000000e+00)
  %i.fp = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fd)
  %i.fq = shl <8 x i32> %i.fp, splat (i32 23)
  %i.fr = add <8 x i32> %i.fq, splat (i32 1065353216)
  %i.fs = bitcast <8 x i32> %i.fr to <8 x float>
  %i.ft = fmul fast <8 x float> %i.fo, %i.fs      ; 2 uses
  %i.fu = bitcast <8 x float> %i.ft to <8 x i32>  ; 2 uses
  %i.fv = shufflevector <8 x i32> %i.fu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fw = shufflevector <8 x i32> %i.fu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fx = lshr <4 x i32> %i.fv, splat (i32 16)
  %i.fy = lshr <4 x i32> %i.fw, splat (i32 16)
  %i.fz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fx, <4 x i32> %i.fy)
  store <8 x i16> %i.fz, ptr %.085248.i, align 1, !tbaa !61
  %i.ga = fadd fast <8 x float> %i.ft, %.0215247.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.085248.i, i64 16 ; 2 uses
  %i.gc = add nuw nsw i32 %.082249.i, 8           ; 2 uses
  %i.gd = or disjoint i32 %i.gc, 7
  %i.ge = icmp slt i32 %i.gd, %i.ac
  br i1 %i.ge, label %.lr.ph251.i, label %.preheader227.loopexit.i, !llvm.loop !9

.preheader226.i:                                  ; preds = %.lr.ph258.i, %.preheader227.i
  %.0218.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader227.i ], [ %i.kg, %.lr.ph258.i ] ; 3 uses
  %.186.lcssa.i = phi ptr [ %.085.lcssa.i, %.preheader227.i ], [ %i.kh, %.lr.ph258.i ] ; 5 uses
  %.183.lcssa.i = phi i32 [ %.082.lcssa.i, %.preheader227.i ], [ %i.ki, %.lr.ph258.i ] ; 5 uses
  %i.gf = icmp slt i32 %.183.lcssa.i, %i.ac
  br i1 %i.gf, label %iter.check131, label %._crit_edge266.i

iter.check131:                                    ; preds = %.preheader226.i
  %i.gg = xor i32 %.183.lcssa.i, -1
  %i.gh = add i32 %i.ac, %i.gg                    ; 3 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 5 uses
  %min.iters.check109 = icmp ult i32 %i.gh, 3
  br i1 %min.iters.check109, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check110

vector.main.loop.iter.check110:                   ; preds = %iter.check131
  %min.iters.check111 = icmp ult i32 %i.gh, 15
  br i1 %min.iters.check111, label %vec.epilog.ph135, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check110
  %i.gk = and i64 %i.gj, 12
  %n.vec113 = and i64 %i.gj, 8589934576           ; 5 uses
  %i.gl = trunc i64 %n.vec113 to i32
  %i.gm = add i32 %.183.lcssa.i, %i.gl
  %i.gn = shl nuw nsw i64 %n.vec113, 1
  %i.go = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gn
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.ph112, %vector.body116
  %index117 = phi i64 [ 0, %vector.ph112 ], [ %index.next126, %vector.body116 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph112 ], [ %i.hz, %vector.body116 ]
  %vec.phi118 = phi <4 x float> [ zeroinitializer, %vector.ph112 ], [ %i.ia, %vector.body116 ]
  %vec.phi119 = phi <4 x float> [ zeroinitializer, %vector.ph112 ], [ %i.ib, %vector.body116 ]
  %vec.phi120 = phi <4 x float> [ zeroinitializer, %vector.ph112 ], [ %i.ic, %vector.body116 ]
  %i.gp = shl i64 %index117, 1
  %next.gep121 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gp ; 5 uses
  %i.gq = getelementptr i8, ptr %next.gep121, i64 8 ; 2 uses
  %i.gr = getelementptr i8, ptr %next.gep121, i64 16 ; 2 uses
  %i.gs = getelementptr i8, ptr %next.gep121, i64 24 ; 2 uses
  %wide.load122 = load <4 x i16>, ptr %next.gep121, align 2, !tbaa !74
  %wide.load123 = load <4 x i16>, ptr %i.gq, align 2, !tbaa !74
  %wide.load124 = load <4 x i16>, ptr %i.gr, align 2, !tbaa !74
  %wide.load125 = load <4 x i16>, ptr %i.gs, align 2, !tbaa !74
  %i.gt = zext <4 x i16> %wide.load122 to <4 x i32>
  %i.gu = zext <4 x i16> %wide.load123 to <4 x i32>
  %i.gv = zext <4 x i16> %wide.load124 to <4 x i32>
  %i.gw = zext <4 x i16> %wide.load125 to <4 x i32>
  %i.gx = shl nuw <4 x i32> %i.gt, splat (i32 16)
  %i.gy = shl nuw <4 x i32> %i.gu, splat (i32 16)
  %i.gz = shl nuw <4 x i32> %i.gv, splat (i32 16)
  %i.ha = shl nuw <4 x i32> %i.gw, splat (i32 16)
  %i.hb = bitcast <4 x i32> %i.gx to <4 x float>
  %i.hc = bitcast <4 x i32> %i.gy to <4 x float>
  %i.hd = bitcast <4 x i32> %i.gz to <4 x float>
  %i.he = bitcast <4 x i32> %i.ha to <4 x float>
  %i.hf = fsub fast <4 x float> %i.hb, %broadcast.splat115
  %i.hg = fsub fast <4 x float> %i.hc, %broadcast.splat115
  %i.hh = fsub fast <4 x float> %i.hd, %broadcast.splat115
  %i.hi = fsub fast <4 x float> %i.he, %broadcast.splat115
  %i.hj = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hf) ; 2 uses
  %i.hk = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hg) ; 2 uses
  %i.hl = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hh) ; 2 uses
  %i.hm = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hi) ; 2 uses
  %i.hn = bitcast <4 x float> %i.hj to <4 x i32>
  %i.ho = bitcast <4 x float> %i.hk to <4 x i32>
  %i.hp = bitcast <4 x float> %i.hl to <4 x i32>
  %i.hq = bitcast <4 x float> %i.hm to <4 x i32>
  %i.hr = lshr <4 x i32> %i.hn, splat (i32 16)
  %i.hs = lshr <4 x i32> %i.ho, splat (i32 16)
  %i.ht = lshr <4 x i32> %i.hp, splat (i32 16)
  %i.hu = lshr <4 x i32> %i.hq, splat (i32 16)
  %i.hv = trunc nuw nsw <4 x i32> %i.hr to <4 x i16>
  %i.hw = trunc nuw nsw <4 x i32> %i.hs to <4 x i16>
  %i.hx = trunc nuw nsw <4 x i32> %i.ht to <4 x i16>
  %i.hy = trunc nuw nsw <4 x i32> %i.hu to <4 x i16>
  store <4 x i16> %i.hv, ptr %next.gep121, align 2, !tbaa !74
  store <4 x i16> %i.hw, ptr %i.gq, align 2, !tbaa !74
  store <4 x i16> %i.hx, ptr %i.gr, align 2, !tbaa !74
  store <4 x i16> %i.hy, ptr %i.gs, align 2, !tbaa !74
  %i.hz = fadd fast <4 x float> %i.hj, %vec.phi   ; 2 uses
  %i.ia = fadd fast <4 x float> %i.hk, %vec.phi118 ; 2 uses
  %i.ib = fadd fast <4 x float> %i.hl, %vec.phi119 ; 2 uses
  %i.ic = fadd fast <4 x float> %i.hm, %vec.phi120 ; 2 uses
  %index.next126 = add nuw i64 %index117, 16      ; 2 uses
  %i.id = icmp eq i64 %index.next126, %n.vec113
  br i1 %i.id, label %middle.block127, label %vector.body116, !llvm.loop !304

middle.block127:                                  ; preds = %vector.body116
  %bin.rdx = fadd fast <4 x float> %i.ia, %i.hz
  %bin.rdx128 = fadd fast <4 x float> %i.ib, %bin.rdx
  %bin.rdx129 = fadd fast <4 x float> %i.ic, %bin.rdx128
  %i.ie = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx129) ; 3 uses
  %cmp.n130 = icmp eq i64 %i.gj, %n.vec113
  br i1 %cmp.n130, label %._crit_edge266.i, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block127
  %min.epilog.iters.check134 = icmp eq i64 %i.gk, 0
  br i1 %min.epilog.iters.check134, label %.lr.ph265.i.preheader, label %vec.epilog.ph135, !prof !75

vec.epilog.ph135:                                 ; preds = %vector.main.loop.iter.check110, %vec.epilog.iter.check132
  %vec.epilog.resume.val136 = phi i64 [ %n.vec113, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check110 ]
  %bc.merge.rdx = phi float [ %i.ie, %vec.epilog.iter.check132 ], [ 0.000000e+00, %vector.main.loop.iter.check110 ]
  %n.vec137 = and i64 %i.gj, 8589934588           ; 4 uses
  %i.if = trunc i64 %n.vec137 to i32
  %i.ig = add i32 %.183.lcssa.i, %i.if
  %i.ih = shl nuw nsw i64 %n.vec137, 1
  %i.ii = getelementptr i8, ptr %.186.lcssa.i, i64 %i.ih
  %i.ij = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert138 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat139 = shufflevector <4 x float> %broadcast.splatinsert138, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body140

vec.epilog.vector.body140:                        ; preds = %vec.epilog.vector.body140, %vec.epilog.ph135
  %index141 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph135 ], [ %index.next145, %vec.epilog.vector.body140 ] ; 2 uses
  %vec.phi142 = phi <4 x float> [ %i.ij, %vec.epilog.ph135 ], [ %i.it, %vec.epilog.vector.body140 ]
  %i.ik = shl i64 %index141, 1
  %next.gep143 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.ik ; 2 uses
  %wide.load144 = load <4 x i16>, ptr %next.gep143, align 2, !tbaa !74
  %i.il = zext <4 x i16> %wide.load144 to <4 x i32>
  %i.im = shl nuw <4 x i32> %i.il, splat (i32 16)
  %i.in = bitcast <4 x i32> %i.im to <4 x float>
  %i.io = fsub fast <4 x float> %i.in, %broadcast.splat139
  %i.ip = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.io) ; 2 uses
  %i.iq = bitcast <4 x float> %i.ip to <4 x i32>
  %i.ir = lshr <4 x i32> %i.iq, splat (i32 16)
  %i.is = trunc nuw nsw <4 x i32> %i.ir to <4 x i16>
  store <4 x i16> %i.is, ptr %next.gep143, align 2, !tbaa !74
  %i.it = fadd fast <4 x float> %i.ip, %vec.phi142 ; 2 uses
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next145, %n.vec137
  br i1 %i.iu, label %vec.epilog.middle.block146, label %vec.epilog.vector.body140, !llvm.loop !305

vec.epilog.middle.block146:                       ; preds = %vec.epilog.vector.body140
  %i.iv = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.it) ; 2 uses
  %cmp.n147 = icmp eq i64 %i.gj, %n.vec137
  br i1 %cmp.n147, label %._crit_edge266.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %iter.check131, %vec.epilog.iter.check132, %vec.epilog.middle.block146
  %.284264.i.ph = phi i32 [ %.183.lcssa.i, %iter.check131 ], [ %i.gm, %vec.epilog.iter.check132 ], [ %i.ig, %vec.epilog.middle.block146 ]
  %.287263.i.ph = phi ptr [ %.186.lcssa.i, %iter.check131 ], [ %i.go, %vec.epilog.iter.check132 ], [ %i.ii, %vec.epilog.middle.block146 ]
  %.088262.i.ph = phi float [ 0.000000e+00, %iter.check131 ], [ %i.ie, %vec.epilog.iter.check132 ], [ %i.iv, %vec.epilog.middle.block146 ]
  br label %.lr.ph265.i

.lr.ph258.i:                                      ; preds = %.preheader227.i, %.lr.ph258.i
  %.183257.i = phi i32 [ %i.ki, %.lr.ph258.i ], [ %.082.lcssa.i, %.preheader227.i ]
  %.186256.i = phi ptr [ %i.kh, %.lr.ph258.i ], [ %.085.lcssa.i, %.preheader227.i ] ; 3 uses
  %.0218255.i = phi <4 x float> [ %i.kg, %.lr.ph258.i ], [ zeroinitializer, %.preheader227.i ]
  %i.iw = load i64, ptr %.186256.i, align 1, !tbaa !61
  %i.ix = insertelement <2 x i64> poison, i64 %i.iw, i64 0
  %i.iy = bitcast <2 x i64> %i.ix to <8 x i16>
  %i.iz = shufflevector <8 x i16> %i.iy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ja = bitcast <8 x i16> %i.iz to <4 x float>
  %i.jb = fsub fast <4 x float> %i.ja, %.2212.i
  %i.jc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jb, <4 x float> splat (float f0x42B0C0A5))
  %i.jd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.je = fmul fast <4 x float> %i.jd, splat (float f0x3FB8AA3B)
  %i.jf = fadd fast <4 x float> %i.je, splat (float 5.000000e-01) ; 2 uses
  %i.jg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jf)
  %i.jh = sitofp fast <4 x i32> %i.jg to <4 x float> ; 2 uses
  %i.ji = fcmp fast olt <4 x float> %i.jf, %i.jh
  %i.jj = select <4 x i1> %i.ji, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jk = fsub fast <4 x float> %i.jh, %i.jj      ; 2 uses
  %i.jl = fneg fast <4 x float> %i.jk             ; 2 uses
  %i.jm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jd)
  %i.jn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jm) ; 8 uses
  %i.jo = fmul fast <4 x float> %i.jn, %i.jn
  %i.jp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jn, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.jq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jp, <4 x float> nofpclass(nan inf) %i.jn, <4 x float> splat (float f0x3C088908))
  %i.jr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jq, <4 x float> nofpclass(nan inf) %i.jn, <4 x float> splat (float f0x3D2AA9C1))
  %i.js = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jr, <4 x float> nofpclass(nan inf) %i.jn, <4 x float> splat (float f0x3E2AAAAA))
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.js, <4 x float> nofpclass(nan inf) %i.jn, <4 x float> splat (float 5.000000e-01))
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> nofpclass(nan inf) %i.jo, <4 x float> nofpclass(nan inf) %i.jn)
  %i.jv = fadd fast <4 x float> %i.ju, splat (float 1.000000e+00)
  %i.jw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jk)
  %i.jx = shl <4 x i32> %i.jw, splat (i32 23)
  %i.jy = add <4 x i32> %i.jx, splat (i32 1065353216)
  %i.jz = bitcast <4 x i32> %i.jy to <4 x float>
  %i.ka = fmul fast <4 x float> %i.jv, %i.jz      ; 2 uses
  %i.kb = bitcast <4 x float> %i.ka to <4 x i32>
  %i.kc = lshr <4 x i32> %i.kb, splat (i32 16)
  %i.kd = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kc, <4 x i32> poison)
  %i.ke = bitcast <8 x i16> %i.kd to <2 x i64>
  %i.kf = extractelement <2 x i64> %i.ke, i64 0
  store i64 %i.kf, ptr %.186256.i, align 1, !tbaa !61
  %i.kg = fadd fast <4 x float> %i.ka, %.0218255.i ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.186256.i, i64 8 ; 2 uses
  %i.ki = add nuw nsw i32 %.183257.i, 4           ; 3 uses
  %i.kj = or disjoint i32 %i.ki, 3
  %i.kk = icmp slt i32 %i.kj, %i.ac
  br i1 %i.kk, label %.lr.ph258.i, label %.preheader226.i, !llvm.loop !10

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i
  %.284264.i = phi i32 [ %i.kw, %.lr.ph265.i ], [ %.284264.i.ph, %.lr.ph265.i.preheader ]
  %.287263.i = phi ptr [ %i.kv, %.lr.ph265.i ], [ %.287263.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %.088262.i = phi float [ %i.ku, %.lr.ph265.i ], [ %.088262.i.ph, %.lr.ph265.i.preheader ]
  %i.kl = load i16, ptr %.287263.i, align 2, !tbaa !74
  %i.km = zext i16 %i.kl to i32
  %i.kn = shl nuw i32 %i.km, 16
  %i.ko = bitcast i32 %i.kn to float
  %i.kp = fsub fast float %i.ko, %.1214.i
  %i.kq = call fast float @llvm.exp.f32(float %i.kp) ; 2 uses
  %i.kr = bitcast float %i.kq to i32
  %i.ks = lshr i32 %i.kr, 16
  %i.kt = trunc nuw nsw i32 %i.ks to i16
  store i16 %i.kt, ptr %.287263.i, align 2, !tbaa !74
  %i.ku = fadd fast float %i.kq, %.088262.i       ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.287263.i, i64 2
  %i.kw = add nuw nsw i32 %.284264.i, 1           ; 2 uses
  %exitcond299.not.i = icmp eq i32 %i.kw, %i.ac
  br i1 %exitcond299.not.i, label %._crit_edge266.i, label %.lr.ph265.i, !llvm.loop !306

._crit_edge266.i:                                 ; preds = %.lr.ph265.i, %middle.block127, %vec.epilog.middle.block146, %.preheader226.i
  %.088.lcssa.i = phi float [ 0.000000e+00, %.preheader226.i ], [ %i.iv, %vec.epilog.middle.block146 ], [ %i.ie, %middle.block127 ], [ %i.ku, %.lr.ph265.i ] ; 2 uses
  %i.kx = icmp eq i32 %i.aa, 8
  br i1 %i.kx, label %.thread223.i, label %bb.f

.thread223.i:                                     ; preds = %._crit_edge266.i
  %i.ky = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa.i) ; 2 uses
  %i.kz = fneg fast <8 x float> %.0215.lcssa.i
  %i.la = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kz, <8 x float> nofpclass(nan inf) %i.ky, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.lb = fmul fast <8 x float> %i.la, %i.ky
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge266.i
  br i1 %i.do, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.lc = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ld = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.le = fadd fast <4 x float> %i.ld, %i.lc
  %i.lf = fadd fast <4 x float> %i.le, %.0218.lcssa.i ; 2 uses
  %i.lg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.lf) ; 2 uses
  %i.lh = fneg fast <4 x float> %i.lf
  %i.li = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lh, <4 x float> nofpclass(nan inf) %i.lg, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.lj = fmul fast <4 x float> %i.li, %i.lg      ; 2 uses
  %i.lk = shufflevector <4 x float> %i.lj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread223.i
  %.1219.i = phi nsz <4 x float> [ %i.lj, %bb.g ], [ %.0218.lcssa.i, %bb.f ], [ %.0218.lcssa.i, %.thread223.i ] ; 3 uses
  %.2217.i = phi nsz <8 x float> [ %i.lk, %bb.g ], [ %.0215.lcssa.i, %bb.f ], [ %i.lb, %.thread223.i ] ; 3 uses
  br i1 %i.en, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ll = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lm = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ln = fadd fast <4 x float> %i.ll, %i.lm      ; 2 uses
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> %.1219.i, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.lp = shufflevector <4 x float> %i.ln, <4 x float> %.1219.i, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.lq = fadd fast <4 x float> %i.lo, %i.lp
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.088.lcssa.i, <4 x float> %i.lq)
  %i.lr = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.ls = insertelement <4 x float> poison, float %i.lr, i64 0 ; 2 uses
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lu = shufflevector <4 x float> %i.ls, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2220.i = phi nsz <4 x float> [ %i.lt, %bb.i ], [ %.1219.i, %bb.h ]
  %.3.i = phi nsz <8 x float> [ %i.lu, %bb.i ], [ %.2217.i, %bb.h ]
  %.189.i = phi nsz float [ %i.lr, %bb.i ], [ %.088.lcssa.i, %bb.h ] ; 3 uses
  br i1 %i.ad, label %.lr.ph271.i, label %.preheader225.i

.preheader225.loopexit.i:                         ; preds = %.lr.ph271.i
  %i.lv = and i32 %i.ac, 2147483640
  br label %.preheader225.i

.preheader225.i:                                  ; preds = %.preheader225.loopexit.i, %bb.j
  %.073.lcssa.i = phi ptr [ %.02042, %bb.j ], [ %i.mk, %.preheader225.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.lv, %.preheader225.loopexit.i ] ; 3 uses
  %i.lw = or disjoint i32 %.0.lcssa.i, 3
  %i.lx = icmp slt i32 %i.lw, %i.ac
  br i1 %i.lx, label %.lr.ph276.i, label %.preheader.i

.lr.ph271.i:                                      ; preds = %bb.j, %.lr.ph271.i
  %.0269.i = phi i32 [ %i.ml, %.lr.ph271.i ], [ 0, %bb.j ]
  %.073268.i = phi ptr [ %i.mk, %.lr.ph271.i ], [ %.02042, %bb.j ] ; 3 uses
  %i.ly = load <8 x i16>, ptr %.073268.i, align 1, !tbaa !61 ; 2 uses
  %i.lz = shufflevector <8 x i16> %i.ly, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ma = shufflevector <8 x i16> %i.ly, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.mb = shufflevector <8 x i16> %i.lz, <8 x i16> %i.ma, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mc = bitcast <16 x i16> %i.mb to <8 x float>
  %i.md = fmul fast <8 x float> %.3.i, %i.mc
  %i.me = bitcast <8 x float> %i.md to <8 x i32>  ; 2 uses
  %i.mf = shufflevector <8 x i32> %i.me, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mg = shufflevector <8 x i32> %i.me, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mh = lshr <4 x i32> %i.mf, splat (i32 16)
  %i.mi = lshr <4 x i32> %i.mg, splat (i32 16)
  %i.mj = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mh, <4 x i32> %i.mi)
  store <8 x i16> %i.mj, ptr %.073268.i, align 1, !tbaa !61
  %i.mk = getelementptr inbounds nuw i8, ptr %.073268.i, i64 16 ; 2 uses
  %i.ml = add nuw nsw i32 %.0269.i, 8             ; 2 uses
  %i.mm = or disjoint i32 %i.ml, 7
  %i.mn = icmp slt i32 %i.mm, %i.ac
  br i1 %i.mn, label %.lr.ph271.i, label %.preheader225.loopexit.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph276.i, %.preheader225.i
  %.174.lcssa.i = phi ptr [ %.073.lcssa.i, %.preheader225.i ], [ %i.of, %.lr.ph276.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader225.i ], [ %i.og, %.lr.ph276.i ] ; 5 uses
  %i.mo = icmp slt i32 %.1.lcssa.i, %i.ac
  br i1 %i.mo, label %iter.check, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.mp = xor i32 %.1.lcssa.i, -1
  %i.mq = add i32 %i.ac, %i.mp                    ; 3 uses
  %i.mr = zext i32 %i.mq to i64
  %i.ms = add nuw nsw i64 %i.mr, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.mq, 3
  br i1 %min.iters.check, label %.lr.ph281.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp ult i32 %i.mq, 15
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mt = and i64 %i.ms, 12
  %n.vec = and i64 %i.ms, 8589934576              ; 5 uses
  %i.mu = trunc i64 %n.vec to i32
  %i.mv = add i32 %.1.lcssa.i, %i.mu
  %i.mw = shl nuw nsw i64 %n.vec, 1
  %i.mx = getelementptr i8, ptr %.174.lcssa.i, i64 %i.mw
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.189.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.my = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.174.lcssa.i, i64 %i.my ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !74
  %i.mz = zext <16 x i16> %wide.load to <16 x i32>
  %i.na = shl nuw <16 x i32> %i.mz, splat (i32 16)
  %i.nb = bitcast <16 x i32> %i.na to <16 x float>
  %i.nc = fmul fast <16 x float> %broadcast.splat, %i.nb
  %i.nd = bitcast <16 x float> %i.nc to <16 x i32>
  %i.ne = lshr <16 x i32> %i.nd, splat (i32 16)
  %i.nf = trunc nuw <16 x i32> %i.ne to <16 x i16>
  store <16 x i16> %i.nf, ptr %next.gep, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ms, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph281.i.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.ms, 8589934588           ; 4 uses
  %i.nh = trunc i64 %n.vec100 to i32
  %i.ni = add i32 %.1.lcssa.i, %i.nh
  %i.nj = shl nuw nsw i64 %n.vec100, 1
  %i.nk = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nj
  %broadcast.splatinsert101 = insertelement <4 x float> poison, float %.189.i, i64 0
  %broadcast.splat102 = shufflevector <4 x float> %broadcast.splatinsert101, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 2 uses
  %i.nl = shl i64 %index103, 1
  %next.gep104 = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nl ; 2 uses
  %wide.load105 = load <4 x i16>, ptr %next.gep104, align 2, !tbaa !74
  %i.nm = zext <4 x i16> %wide.load105 to <4 x i32>
  %i.nn = shl nuw <4 x i32> %i.nm, splat (i32 16)
  %i.no = bitcast <4 x i32> %i.nn to <4 x float>
  %i.np = fmul fast <4 x float> %broadcast.splat102, %i.no
  %i.nq = bitcast <4 x float> %i.np to <4 x i32>
  %i.nr = lshr <4 x i32> %i.nq, splat (i32 16)
  %i.ns = trunc nuw <4 x i32> %i.nr to <4 x i16>
  store <4 x i16> %i.ns, ptr %next.gep104, align 2, !tbaa !74
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next106, %n.vec100
  br i1 %i.nt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !308

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.ms, %n.vec100
  br i1 %cmp.n107, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph281.i.preheader

.lr.ph281.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2280.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %i.mv, %vec.epilog.iter.check ], [ %i.ni, %vec.epilog.middle.block ]
  %.275279.i.ph = phi ptr [ %.174.lcssa.i, %iter.check ], [ %i.mx, %vec.epilog.iter.check ], [ %i.nk, %vec.epilog.middle.block ]
  br label %.lr.ph281.i

.lr.ph276.i:                                      ; preds = %.preheader225.i, %.lr.ph276.i
  %.1275.i = phi i32 [ %i.og, %.lr.ph276.i ], [ %.0.lcssa.i, %.preheader225.i ]
  %.174274.i = phi ptr [ %i.of, %.lr.ph276.i ], [ %.073.lcssa.i, %.preheader225.i ] ; 3 uses
  %i.nu = load i64, ptr %.174274.i, align 1, !tbaa !61
  %i.nv = insertelement <2 x i64> poison, i64 %i.nu, i64 0
  %i.nw = bitcast <2 x i64> %i.nv to <8 x i16>
  %i.nx = shufflevector <8 x i16> %i.nw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ny = bitcast <8 x i16> %i.nx to <4 x float>
  %i.nz = fmul fast <4 x float> %.2220.i, %i.ny
  %i.oa = bitcast <4 x float> %i.nz to <4 x i32>
  %i.ob = lshr <4 x i32> %i.oa, splat (i32 16)
  %i.oc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ob, <4 x i32> poison)
  %i.od = bitcast <8 x i16> %i.oc to <2 x i64>
  %i.oe = extractelement <2 x i64> %i.od, i64 0
  store i64 %i.oe, ptr %.174274.i, align 1, !tbaa !61
  %i.of = getelementptr inbounds nuw i8, ptr %.174274.i, i64 8 ; 2 uses
  %i.og = add nuw nsw i32 %.1275.i, 4             ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.12:bb.a
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235.i, <4 x float> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.177237.i, i64 8 ; 2 uses
  %i.dq = add nuw nsw i32 %.180236.i, 4           ; 3 uses
  %i.dr = or disjoint i32 %i.dq, 3
  %i.ds = icmp slt i32 %i.dr, %i.an
  br i1 %i.ds, label %.lr.ph238.i, label %.preheader228.i, !llvm.loop !8

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %.278244.i = phi ptr [ %i.dt, %.lr.ph245.i ], [ %.278244.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.281243.i = phi i32 [ %i.dy, %.lr.ph245.i ], [ %.281243.i.ph, %.lr.ph245.i.preheader ]
  %.0213242.i = phi float [ %.sroa.speculated133.i, %.lr.ph245.i ], [ %.0213242.i.ph, %.lr.ph245.i.preheader ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.278244.i, i64 2
  %i.du = load i16, ptr %.278244.i, align 2, !tbaa !74
  %i.dv = zext i16 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 16
  %i.dx = bitcast i32 %i.dw to float
  %.sroa.speculated133.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242.i, float %i.dx) ; 2 uses
  %i.dy = add nuw nsw i32 %.281243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dy, %i.an
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph245.i, !llvm.loop !324

._crit_edge.i:                                    ; preds = %.lr.ph245.i, %middle.block187, %vec.epilog.middle.block209, %.preheader228.i
  %.0213.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader228.i ], [ %i.di, %vec.epilog.middle.block209 ], [ %i.cx, %middle.block187 ], [ %.sroa.speculated133.i, %.lr.ph245.i ] ; 4 uses
  %i.dz = icmp eq i32 %i.al, 4                    ; 2 uses
  br i1 %i.dz, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.ea = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eb = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ea)
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) %i.eb) ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.ef = icmp eq i32 %i.al, 1
  br i1 %i.ef, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eg = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eh = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.eh) ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ej) ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.el)
  %i.en = extractelement <4 x float> %i.em, i64 0 ; 2 uses
  %i.eo = fcmp fast olt float %.0213.lcssa.i, %i.en
  %.sroa.speculated129.i = select i1 %i.eo, float %i.en, float %.0213.lcssa.i ; 2 uses
  %i.ep = shufflevector <4 x float> %.0210.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ep) ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.eq, <4 x float> nofpclass(nan inf) %i.er)
  %i.et = extractelement <4 x float> %i.es, i64 0 ; 2 uses
  %i.eu = fcmp fast olt float %.sroa.speculated129.i, %i.et
  %.sroa.speculated.i = select i1 %i.eu, float %i.et, float %.sroa.speculated129.i ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = shufflevector <4 x float> %i.ev, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.ey = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1214.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0213.lcssa.i, %bb.c ], [ %.0213.lcssa.i, %.thread.i ] ; 3 uses
  %.2212.i = phi nsz <4 x float> [ %i.ew, %bb.d ], [ %.0210.lcssa.i, %bb.c ], [ %i.ed, %.thread.i ]
  %.2209.i = phi nsz <8 x float> [ %i.ex, %bb.d ], [ %.0207.lcssa.i, %bb.c ], [ %i.ee, %.thread.i ]
  br i1 %i.ao, label %.lr.ph251.i, label %.preheader227.i

.preheader227.loopexit.i:                         ; preds = %.lr.ph251.i
  %i.ez = and i32 %i.an, 2147483640
  br label %.preheader227.i

.preheader227.i:                                  ; preds = %.preheader227.loopexit.i, %bb.e
  %.0215.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.gl, %.preheader227.loopexit.i ] ; 5 uses
  %.085.lcssa.i = phi ptr [ %.146, %bb.e ], [ %i.gm, %.preheader227.loopexit.i ] ; 2 uses
  %.082.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ez, %.preheader227.loopexit.i ] ; 3 uses
  %i.fa = or disjoint i32 %.082.lcssa.i, 3
  %i.fb = icmp slt i32 %i.fa, %i.an
  br i1 %i.fb, label %.lr.ph258.i, label %.preheader226.i

.lr.ph251.i:                                      ; preds = %bb.e, %.lr.ph251.i
  %.082249.i = phi i32 [ %i.gn, %.lr.ph251.i ], [ 0, %bb.e ]
  %.085248.i = phi ptr [ %i.gm, %.lr.ph251.i ], [ %.146, %bb.e ] ; 3 uses
  %.0215247.i = phi <8 x float> [ %i.gl, %.lr.ph251.i ], [ zeroinitializer, %bb.e ]
  %i.fc = load <8 x i16>, ptr %.085248.i, align 1, !tbaa !61 ; 2 uses
  %i.fd = shufflevector <8 x i16> %i.fc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fe = shufflevector <8 x i16> %i.fc, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ff = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fg = bitcast <16 x i16> %i.ff to <8 x float>
  %i.fh = fsub fast <8 x float> %i.fg, %.2209.i
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> splat (float f0x42B0C0A5))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fl = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fk, i32 1) ; 2 uses
  %i.fm = fcmp fast ogt <8 x float> %i.fl, %i.fk
  %i.fn = select <8 x i1> %i.fm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fo = fsub fast <8 x float> %i.fl, %i.fn      ; 2 uses
  %i.fp = fneg fast <8 x float> %i.fo             ; 2 uses
  %i.fq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fj)
  %i.fr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fq) ; 8 uses
  %i.fs = fmul fast <8 x float> %i.fr, %i.fr
  %i.ft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fr, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3C088908))
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3D2AA9C1))
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float f0x3E2AAAAA))
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fw, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> splat (float 5.000000e-01))
  %i.fy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fx, <8 x float> nofpclass(nan inf) %i.fs, <8 x float> nofpclass(nan inf) %i.fr)
  %i.fz = fadd fast <8 x float> %i.fy, splat (float 1.000000e+00)
  %i.ga = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fo)
  %i.gb = shl <8 x i32> %i.ga, splat (i32 23)
  %i.gc = add <8 x i32> %i.gb, splat (i32 1065353216)
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>
  %i.ge = fmul fast <8 x float> %i.fz, %i.gd      ; 2 uses
  %i.gf = bitcast <8 x float> %i.ge to <8 x i32>  ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.gf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gh = shufflevector <8 x i32> %i.gf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gi = lshr <4 x i32> %i.gg, splat (i32 16)
  %i.gj = lshr <4 x i32> %i.gh, splat (i32 16)
  %i.gk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gi, <4 x i32> %i.gj)
  store <8 x i16> %i.gk, ptr %.085248.i, align 1, !tbaa !61
  %i.gl = fadd fast <8 x float> %i.ge, %.0215247.i ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.085248.i, i64 16 ; 2 uses
  %i.gn = add nuw nsw i32 %.082249.i, 8           ; 2 uses
  %i.go = or disjoint i32 %i.gn, 7
  %i.gp = icmp slt i32 %i.go, %i.an
  br i1 %i.gp, label %.lr.ph251.i, label %.preheader227.loopexit.i, !llvm.loop !9

.preheader226.i:                                  ; preds = %.lr.ph258.i, %.preheader227.i
  %.0218.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader227.i ], [ %i.kr, %.lr.ph258.i ] ; 3 uses
  %.186.lcssa.i = phi ptr [ %.085.lcssa.i, %.preheader227.i ], [ %i.ks, %.lr.ph258.i ] ; 5 uses
  %.183.lcssa.i = phi i32 [ %.082.lcssa.i, %.preheader227.i ], [ %i.kt, %.lr.ph258.i ] ; 5 uses
  %i.gq = icmp slt i32 %.183.lcssa.i, %i.an
  br i1 %i.gq, label %iter.check150, label %._crit_edge266.i

iter.check150:                                    ; preds = %.preheader226.i
  %i.gr = xor i32 %.183.lcssa.i, -1
  %i.gs = add i32 %i.an, %i.gr                    ; 3 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 5 uses
  %min.iters.check128 = icmp ult i32 %i.gs, 3
  br i1 %min.iters.check128, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %iter.check150
  %min.iters.check130 = icmp ult i32 %i.gs, 15
  br i1 %min.iters.check130, label %vec.epilog.ph154, label %vector.ph131

vector.ph131:                                     ; preds = %vector.main.loop.iter.check129
  %i.gv = and i64 %i.gu, 12
  %n.vec132 = and i64 %i.gu, 8589934576           ; 5 uses
  %i.gw = trunc i64 %n.vec132 to i32
  %i.gx = add i32 %.183.lcssa.i, %i.gw
  %i.gy = shl nuw nsw i64 %n.vec132, 1
  %i.gz = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gy
  %broadcast.splatinsert133 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat134 = shufflevector <4 x float> %broadcast.splatinsert133, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.ph131, %vector.body135
  %index136 = phi i64 [ 0, %vector.ph131 ], [ %index.next145, %vector.body135 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph131 ], [ %i.ik, %vector.body135 ]
  %vec.phi137 = phi <4 x float> [ zeroinitializer, %vector.ph131 ], [ %i.il, %vector.body135 ]
  %vec.phi138 = phi <4 x float> [ zeroinitializer, %vector.ph131 ], [ %i.im, %vector.body135 ]
  %vec.phi139 = phi <4 x float> [ zeroinitializer, %vector.ph131 ], [ %i.in, %vector.body135 ]
  %i.ha = shl i64 %index136, 1
  %next.gep140 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.ha ; 5 uses
  %i.hb = getelementptr i8, ptr %next.gep140, i64 8 ; 2 uses
  %i.hc = getelementptr i8, ptr %next.gep140, i64 16 ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep140, i64 24 ; 2 uses
  %wide.load141 = load <4 x i16>, ptr %next.gep140, align 2, !tbaa !74
  %wide.load142 = load <4 x i16>, ptr %i.hb, align 2, !tbaa !74
  %wide.load143 = load <4 x i16>, ptr %i.hc, align 2, !tbaa !74
  %wide.load144 = load <4 x i16>, ptr %i.hd, align 2, !tbaa !74
  %i.he = zext <4 x i16> %wide.load141 to <4 x i32>
  %i.hf = zext <4 x i16> %wide.load142 to <4 x i32>
  %i.hg = zext <4 x i16> %wide.load143 to <4 x i32>
  %i.hh = zext <4 x i16> %wide.load144 to <4 x i32>
  %i.hi = shl nuw <4 x i32> %i.he, splat (i32 16)
  %i.hj = shl nuw <4 x i32> %i.hf, splat (i32 16)
  %i.hk = shl nuw <4 x i32> %i.hg, splat (i32 16)
  %i.hl = shl nuw <4 x i32> %i.hh, splat (i32 16)
  %i.hm = bitcast <4 x i32> %i.hi to <4 x float>
  %i.hn = bitcast <4 x i32> %i.hj to <4 x float>
  %i.ho = bitcast <4 x i32> %i.hk to <4 x float>
  %i.hp = bitcast <4 x i32> %i.hl to <4 x float>
  %i.hq = fsub fast <4 x float> %i.hm, %broadcast.splat134
  %i.hr = fsub fast <4 x float> %i.hn, %broadcast.splat134
  %i.hs = fsub fast <4 x float> %i.ho, %broadcast.splat134
  %i.ht = fsub fast <4 x float> %i.hp, %broadcast.splat134
  %i.hu = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hq) ; 2 uses
  %i.hv = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hr) ; 2 uses
  %i.hw = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hs) ; 2 uses
  %i.hx = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.ht) ; 2 uses
  %i.hy = bitcast <4 x float> %i.hu to <4 x i32>
  %i.hz = bitcast <4 x float> %i.hv to <4 x i32>
  %i.ia = bitcast <4 x float> %i.hw to <4 x i32>
  %i.ib = bitcast <4 x float> %i.hx to <4 x i32>
  %i.ic = lshr <4 x i32> %i.hy, splat (i32 16)
  %i.id = lshr <4 x i32> %i.hz, splat (i32 16)
  %i.ie = lshr <4 x i32> %i.ia, splat (i32 16)
  %i.if = lshr <4 x i32> %i.ib, splat (i32 16)
  %i.ig = trunc nuw nsw <4 x i32> %i.ic to <4 x i16>
  %i.ih = trunc nuw nsw <4 x i32> %i.id to <4 x i16>
  %i.ii = trunc nuw nsw <4 x i32> %i.ie to <4 x i16>
  %i.ij = trunc nuw nsw <4 x i32> %i.if to <4 x i16>
  store <4 x i16> %i.ig, ptr %next.gep140, align 2, !tbaa !74
  store <4 x i16> %i.ih, ptr %i.hb, align 2, !tbaa !74
  store <4 x i16> %i.ii, ptr %i.hc, align 2, !tbaa !74
  store <4 x i16> %i.ij, ptr %i.hd, align 2, !tbaa !74
  %i.ik = fadd fast <4 x float> %i.hu, %vec.phi   ; 2 uses
  %i.il = fadd fast <4 x float> %i.hv, %vec.phi137 ; 2 uses
  %i.im = fadd fast <4 x float> %i.hw, %vec.phi138 ; 2 uses
  %i.in = fadd fast <4 x float> %i.hx, %vec.phi139 ; 2 uses
  %index.next145 = add nuw i64 %index136, 16      ; 2 uses
  %i.io = icmp eq i64 %index.next145, %n.vec132
  br i1 %i.io, label %middle.block146, label %vector.body135, !llvm.loop !325

middle.block146:                                  ; preds = %vector.body135
  %bin.rdx = fadd fast <4 x float> %i.il, %i.ik
  %bin.rdx147 = fadd fast <4 x float> %i.im, %bin.rdx
  %bin.rdx148 = fadd fast <4 x float> %i.in, %bin.rdx147
  %i.ip = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx148) ; 3 uses
  %cmp.n149 = icmp eq i64 %i.gu, %n.vec132
  br i1 %cmp.n149, label %._crit_edge266.i, label %vec.epilog.iter.check151

vec.epilog.iter.check151:                         ; preds = %middle.block146
  %min.epilog.iters.check153 = icmp eq i64 %i.gv, 0
  br i1 %min.epilog.iters.check153, label %.lr.ph265.i.preheader, label %vec.epilog.ph154, !prof !75

vec.epilog.ph154:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check151
  %vec.epilog.resume.val155 = phi i64 [ %n.vec132, %vec.epilog.iter.check151 ], [ 0, %vector.main.loop.iter.check129 ]
  %bc.merge.rdx = phi float [ %i.ip, %vec.epilog.iter.check151 ], [ 0.000000e+00, %vector.main.loop.iter.check129 ]
  %n.vec156 = and i64 %i.gu, 8589934588           ; 4 uses
  %i.iq = trunc i64 %n.vec156 to i32
  %i.ir = add i32 %.183.lcssa.i, %i.iq
  %i.is = shl nuw nsw i64 %n.vec156, 1
  %i.it = getelementptr i8, ptr %.186.lcssa.i, i64 %i.is
  %i.iu = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert157 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat158 = shufflevector <4 x float> %broadcast.splatinsert157, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph154
  %index160 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph154 ], [ %index.next164, %vec.epilog.vector.body159 ] ; 2 uses
  %vec.phi161 = phi <4 x float> [ %i.iu, %vec.epilog.ph154 ], [ %i.je, %vec.epilog.vector.body159 ]
  %i.iv = shl i64 %index160, 1
  %next.gep162 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.iv ; 2 uses
  %wide.load163 = load <4 x i16>, ptr %next.gep162, align 2, !tbaa !74
  %i.iw = zext <4 x i16> %wide.load163 to <4 x i32>
  %i.ix = shl nuw <4 x i32> %i.iw, splat (i32 16)
  %i.iy = bitcast <4 x i32> %i.ix to <4 x float>
  %i.iz = fsub fast <4 x float> %i.iy, %broadcast.splat158
  %i.ja = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.iz) ; 2 uses
  %i.jb = bitcast <4 x float> %i.ja to <4 x i32>
  %i.jc = lshr <4 x i32> %i.jb, splat (i32 16)
  %i.jd = trunc nuw nsw <4 x i32> %i.jc to <4 x i16>
  store <4 x i16> %i.jd, ptr %next.gep162, align 2, !tbaa !74
  %i.je = fadd fast <4 x float> %i.ja, %vec.phi161 ; 2 uses
  %index.next164 = add nuw i64 %index160, 4       ; 2 uses
  %i.jf = icmp eq i64 %index.next164, %n.vec156
  br i1 %i.jf, label %vec.epilog.middle.block165, label %vec.epilog.vector.body159, !llvm.loop !326

vec.epilog.middle.block165:                       ; preds = %vec.epilog.vector.body159
  %i.jg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.je) ; 2 uses
  %cmp.n166 = icmp eq i64 %i.gu, %n.vec156
  br i1 %cmp.n166, label %._crit_edge266.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %iter.check150, %vec.epilog.iter.check151, %vec.epilog.middle.block165
  %.284264.i.ph = phi i32 [ %.183.lcssa.i, %iter.check150 ], [ %i.gx, %vec.epilog.iter.check151 ], [ %i.ir, %vec.epilog.middle.block165 ]
  %.287263.i.ph = phi ptr [ %.186.lcssa.i, %iter.check150 ], [ %i.gz, %vec.epilog.iter.check151 ], [ %i.it, %vec.epilog.middle.block165 ]
  %.088262.i.ph = phi float [ 0.000000e+00, %iter.check150 ], [ %i.ip, %vec.epilog.iter.check151 ], [ %i.jg, %vec.epilog.middle.block165 ]
  br label %.lr.ph265.i

.lr.ph258.i:                                      ; preds = %.preheader227.i, %.lr.ph258.i
  %.183257.i = phi i32 [ %i.kt, %.lr.ph258.i ], [ %.082.lcssa.i, %.preheader227.i ]
  %.186256.i = phi ptr [ %i.ks, %.lr.ph258.i ], [ %.085.lcssa.i, %.preheader227.i ] ; 3 uses
  %.0218255.i = phi <4 x float> [ %i.kr, %.lr.ph258.i ], [ zeroinitializer, %.preheader227.i ]
  %i.jh = load i64, ptr %.186256.i, align 1, !tbaa !61
  %i.ji = insertelement <2 x i64> poison, i64 %i.jh, i64 0
  %i.jj = bitcast <2 x i64> %i.ji to <8 x i16>
  %i.jk = shufflevector <8 x i16> %i.jj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.jl = bitcast <8 x i16> %i.jk to <4 x float>
  %i.jm = fsub fast <4 x float> %i.jl, %.2212.i
  %i.jn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jm, <4 x float> splat (float f0x42B0C0A5))
  %i.jo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jp = fmul fast <4 x float> %i.jo, splat (float f0x3FB8AA3B)
  %i.jq = fadd fast <4 x float> %i.jp, splat (float 5.000000e-01) ; 2 uses
  %i.jr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jq)
  %i.js = sitofp fast <4 x i32> %i.jr to <4 x float> ; 2 uses
  %i.jt = fcmp fast olt <4 x float> %i.jq, %i.js
  %i.ju = select <4 x i1> %i.jt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jv = fsub fast <4 x float> %i.js, %i.ju      ; 2 uses
  %i.jw = fneg fast <4 x float> %i.jv             ; 2 uses
  %i.jx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jo)
  %i.jy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jx) ; 8 uses
  %i.jz = fmul fast <4 x float> %i.jy, %i.jy
  %i.ka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.kb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ka, <4 x float> nofpclass(nan inf) %i.jy, <4 x float> splat (float f0x3C088908))
  %i.kc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kb, <4 x float> nofpclass(nan inf) %i.jy, <4 x float> splat (float f0x3D2AA9C1))
  %i.kd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kc, <4 x float> nofpclass(nan inf) %i.jy, <4 x float> splat (float f0x3E2AAAAA))
  %i.ke = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> nofpclass(nan inf) %i.jy, <4 x float> splat (float 5.000000e-01))
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ke, <4 x float> nofpclass(nan inf) %i.jz, <4 x float> nofpclass(nan inf) %i.jy)
  %i.kg = fadd fast <4 x float> %i.kf, splat (float 1.000000e+00)
  %i.kh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jv)
  %i.ki = shl <4 x i32> %i.kh, splat (i32 23)
  %i.kj = add <4 x i32> %i.ki, splat (i32 1065353216)
  %i.kk = bitcast <4 x i32> %i.kj to <4 x float>
  %i.kl = fmul fast <4 x float> %i.kg, %i.kk      ; 2 uses
  %i.km = bitcast <4 x float> %i.kl to <4 x i32>
  %i.kn = lshr <4 x i32> %i.km, splat (i32 16)
  %i.ko = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kn, <4 x i32> poison)
  %i.kp = bitcast <8 x i16> %i.ko to <2 x i64>
  %i.kq = extractelement <2 x i64> %i.kp, i64 0
  store i64 %i.kq, ptr %.186256.i, align 1, !tbaa !61
  %i.kr = fadd fast <4 x float> %i.kl, %.0218255.i ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.186256.i, i64 8 ; 2 uses
  %i.kt = add nuw nsw i32 %.183257.i, 4           ; 3 uses
  %i.ku = or disjoint i32 %i.kt, 3
  %i.kv = icmp slt i32 %i.ku, %i.an
  br i1 %i.kv, label %.lr.ph258.i, label %.preheader226.i, !llvm.loop !10

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i
  %.284264.i = phi i32 [ %i.lh, %.lr.ph265.i ], [ %.284264.i.ph, %.lr.ph265.i.preheader ]
  %.287263.i = phi ptr [ %i.lg, %.lr.ph265.i ], [ %.287263.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %.088262.i = phi float [ %i.lf, %.lr.ph265.i ], [ %.088262.i.ph, %.lr.ph265.i.preheader ]
  %i.kw = load i16, ptr %.287263.i, align 2, !tbaa !74
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw i32 %i.kx, 16
  %i.kz = bitcast i32 %i.ky to float
  %i.la = fsub fast float %i.kz, %.1214.i
  %i.lb = call fast float @llvm.exp.f32(float %i.la) ; 2 uses
  %i.lc = bitcast float %i.lb to i32
  %i.ld = lshr i32 %i.lc, 16
  %i.le = trunc nuw nsw i32 %i.ld to i16
  store i16 %i.le, ptr %.287263.i, align 2, !tbaa !74
  %i.lf = fadd fast float %i.lb, %.088262.i       ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.287263.i, i64 2
  %i.lh = add nuw nsw i32 %.284264.i, 1           ; 2 uses
  %exitcond299.not.i = icmp eq i32 %i.lh, %i.an
  br i1 %exitcond299.not.i, label %._crit_edge266.i, label %.lr.ph265.i, !llvm.loop !327

._crit_edge266.i:                                 ; preds = %.lr.ph265.i, %middle.block146, %vec.epilog.middle.block165, %.preheader226.i
  %.088.lcssa.i = phi float [ 0.000000e+00, %.preheader226.i ], [ %i.jg, %vec.epilog.middle.block165 ], [ %i.ip, %middle.block146 ], [ %i.lf, %.lr.ph265.i ] ; 2 uses
  %i.li = icmp eq i32 %i.al, 8
  br i1 %i.li, label %.thread223.i, label %bb.f

.thread223.i:                                     ; preds = %._crit_edge266.i
  %i.lj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa.i) ; 2 uses
  %i.lk = fneg fast <8 x float> %.0215.lcssa.i
  %i.ll = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lk, <8 x float> nofpclass(nan inf) %i.lj, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.lm = fmul fast <8 x float> %i.ll, %i.lj
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge266.i
  br i1 %i.dz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ln = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lo = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lp = fadd fast <4 x float> %i.lo, %i.ln
  %i.lq = fadd fast <4 x float> %i.lp, %.0218.lcssa.i ; 2 uses
  %i.lr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.lq) ; 2 uses
  %i.ls = fneg fast <4 x float> %i.lq
  %i.lt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ls, <4 x float> nofpclass(nan inf) %i.lr, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.lu = fmul fast <4 x float> %i.lt, %i.lr      ; 2 uses
  %i.lv = shufflevector <4 x float> %i.lu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread223.i
  %.1219.i = phi nsz <4 x float> [ %i.lu, %bb.g ], [ %.0218.lcssa.i, %bb.f ], [ %.0218.lcssa.i, %.thread223.i ] ; 3 uses
  %.2217.i = phi nsz <8 x float> [ %i.lv, %bb.g ], [ %.0215.lcssa.i, %bb.f ], [ %i.lm, %.thread223.i ] ; 3 uses
  br i1 %i.ey, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.lw = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lx = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ly = fadd fast <4 x float> %i.lw, %i.lx      ; 2 uses
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> %.1219.i, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ma = shufflevector <4 x float> %i.ly, <4 x float> %.1219.i, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.mb = fadd fast <4 x float> %i.lz, %i.ma
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.088.lcssa.i, <4 x float> %i.mb)
  %i.mc = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.md = insertelement <4 x float> poison, float %i.mc, i64 0 ; 2 uses
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = shufflevector <4 x float> %i.md, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2220.i = phi nsz <4 x float> [ %i.me, %bb.i ], [ %.1219.i, %bb.h ]
  %.3.i = phi nsz <8 x float> [ %i.mf, %bb.i ], [ %.2217.i, %bb.h ]
  %.189.i = phi nsz float [ %i.mc, %bb.i ], [ %.088.lcssa.i, %bb.h ] ; 3 uses
  br i1 %i.ao, label %.lr.ph271.i, label %.preheader225.i

.preheader225.loopexit.i:                         ; preds = %.lr.ph271.i
  %i.mg = and i32 %i.an, 2147483640
  br label %.preheader225.i

.preheader225.i:                                  ; preds = %.preheader225.loopexit.i, %bb.j
  %.073.lcssa.i = phi ptr [ %.146, %bb.j ], [ %i.mv, %.preheader225.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.mg, %.preheader225.loopexit.i ] ; 3 uses
  %i.mh = or disjoint i32 %.0.lcssa.i, 3
  %i.mi = icmp slt i32 %i.mh, %i.an
  br i1 %i.mi, label %.lr.ph276.i, label %.preheader.i

.lr.ph271.i:                                      ; preds = %bb.j, %.lr.ph271.i
  %.0269.i = phi i32 [ %i.mw, %.lr.ph271.i ], [ 0, %bb.j ]
  %.073268.i = phi ptr [ %i.mv, %.lr.ph271.i ], [ %.146, %bb.j ] ; 3 uses
  %i.mj = load <8 x i16>, ptr %.073268.i, align 1, !tbaa !61 ; 2 uses
  %i.mk = shufflevector <8 x i16> %i.mj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ml = shufflevector <8 x i16> %i.mj, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.mm = shufflevector <8 x i16> %i.mk, <8 x i16> %i.ml, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mn = bitcast <16 x i16> %i.mm to <8 x float>
  %i.mo = fmul fast <8 x float> %.3.i, %i.mn
  %i.mp = bitcast <8 x float> %i.mo to <8 x i32>  ; 2 uses
  %i.mq = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mr = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ms = lshr <4 x i32> %i.mq, splat (i32 16)
  %i.mt = lshr <4 x i32> %i.mr, splat (i32 16)
  %i.mu = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ms, <4 x i32> %i.mt)
  store <8 x i16> %i.mu, ptr %.073268.i, align 1, !tbaa !61
  %i.mv = getelementptr inbounds nuw i8, ptr %.073268.i, i64 16 ; 2 uses
  %i.mw = add nuw nsw i32 %.0269.i, 8             ; 2 uses
  %i.mx = or disjoint i32 %i.mw, 7
  %i.my = icmp slt i32 %i.mx, %i.an
  br i1 %i.my, label %.lr.ph271.i, label %.preheader225.loopexit.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph276.i, %.preheader225.i
  %.174.lcssa.i = phi ptr [ %.073.lcssa.i, %.preheader225.i ], [ %i.oq, %.lr.ph276.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader225.i ], [ %i.or, %.lr.ph276.i ] ; 5 uses
  %i.mz = icmp slt i32 %.1.lcssa.i, %i.an
  br i1 %i.mz, label %iter.check, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.na = xor i32 %.1.lcssa.i, -1
  %i.nb = add i32 %i.an, %i.na                    ; 3 uses
  %i.nc = zext i32 %i.nb to i64
  %i.nd = add nuw nsw i64 %i.nc, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.nb, 3
  br i1 %min.iters.check, label %.lr.ph281.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check118 = icmp ult i32 %i.nb, 15
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ne = and i64 %i.nd, 12
  %n.vec = and i64 %i.nd, 8589934576              ; 5 uses
  %i.nf = trunc i64 %n.vec to i32
  %i.ng = add i32 %.1.lcssa.i, %i.nf
  %i.nh = shl nuw nsw i64 %n.vec, 1
  %i.ni = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nh
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.189.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nj ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !74
  %i.nk = zext <16 x i16> %wide.load to <16 x i32>
  %i.nl = shl nuw <16 x i32> %i.nk, splat (i32 16)
  %i.nm = bitcast <16 x i32> %i.nl to <16 x float>
  %i.nn = fmul fast <16 x float> %broadcast.splat, %i.nm
  %i.no = bitcast <16 x float> %i.nn to <16 x i32>
  %i.np = lshr <16 x i32> %i.no, splat (i32 16)
  %i.nq = trunc nuw <16 x i32> %i.np to <16 x i16>
  store <16 x i16> %i.nq, ptr %next.gep, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nd, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ne, 0
  br i1 %min.epilog.iters.check, label %.lr.ph281.i.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %i.nd, 8589934588           ; 4 uses
  %i.ns = trunc i64 %n.vec119 to i32
  %i.nt = add i32 %.1.lcssa.i, %i.ns
  %i.nu = shl nuw nsw i64 %n.vec119, 1
  %i.nv = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nu
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %.189.i, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.nw = shl i64 %index122, 1
  %next.gep123 = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nw ; 2 uses
  %wide.load124 = load <4 x i16>, ptr %next.gep123, align 2, !tbaa !74
  %i.nx = zext <4 x i16> %wide.load124 to <4 x i32>
  %i.ny = shl nuw <4 x i32> %i.nx, splat (i32 16)
  %i.nz = bitcast <4 x i32> %i.ny to <4 x float>
  %i.oa = fmul fast <4 x float> %broadcast.splat121, %i.nz
  %i.ob = bitcast <4 x float> %i.oa to <4 x i32>
  %i.oc = lshr <4 x i32> %i.ob, splat (i32 16)
  %i.od = trunc nuw <4 x i32> %i.oc to <4 x i16>
  store <4 x i16> %i.od, ptr %next.gep123, align 2, !tbaa !74
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.oe = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.oe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !329

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %i.nd, %n.vec119
  br i1 %cmp.n126, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph281.i.preheader

.lr.ph281.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2280.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %i.ng, %vec.epilog.iter.check ], [ %i.nt, %vec.epilog.middle.block ]
  %.275279.i.ph = phi ptr [ %.174.lcssa.i, %iter.check ], [ %i.ni, %vec.epilog.iter.check ], [ %i.nv, %vec.epilog.middle.block ]
  br label %.lr.ph281.i

.lr.ph276.i:                                      ; preds = %.preheader225.i, %.lr.ph276.i
  %.1275.i = phi i32 [ %i.or, %.lr.ph276.i ], [ %.0.lcssa.i, %.preheader225.i ]
  %.174274.i = phi ptr [ %i.oq, %.lr.ph276.i ], [ %.073.lcssa.i, %.preheader225.i ] ; 3 uses
  %i.of = load i64, ptr %.174274.i, align 1, !tbaa !61
  %i.og = insertelement <2 x i64> poison, i64 %i.of, i64 0
  %i.oh = bitcast <2 x i64> %i.og to <8 x i16>
  %i.oi = shufflevector <8 x i16> %i.oh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.oj = bitcast <8 x i16> %i.oi to <4 x float>
  %i.ok = fmul fast <4 x float> %.2220.i, %i.oj
  %i.ol = bitcast <4 x float> %i.ok to <4 x i32>
  %i.om = lshr <4 x i32> %i.ol, splat (i32 16)
  %i.on = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.om, <4 x i32> poison)
  %i.oo = bitcast <8 x i16> %i.on to <2 x i64>
  %i.op = extractelement <2 x i64> %i.oo, i64 0
  store i64 %i.op, ptr %.174274.i, align 1, !tbaa !61
  %i.oq = getelementptr inbounds nuw i8, ptr %.174274.i, i64 8 ; 2 uses
  %i.or = add nuw nsw i32 %.1275.i, 4             ; 3 uses
end_hunk_3
