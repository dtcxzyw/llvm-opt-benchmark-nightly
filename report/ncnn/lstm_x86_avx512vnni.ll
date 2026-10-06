Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512vnni?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ncnn43lstm_dynamic_quantize_scale2int8_avx512vnniEPKfifPa:bb.a
  %.15268.i = phi ptr [ %i.bb, %.lr.ph72.i ], [ %.051.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ar = load <8 x float>, ptr %.170.i, align 1, !tbaa !25
  %i.as = fmul fast <8 x float> %i.ar, %i.ao      ; 2 uses
  %i.at = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.as)
  %i.au = fadd fast <8 x float> %i.at, %i.as
  %i.av = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.au)
  %i.aw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.av, <16 x i8> zeroinitializer, i8 -1)
  %i.ax = shufflevector <16 x i8> %i.aw, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ay = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %i.ax, <8 x i8> splat (i8 -127))
  %i.az = add <8 x i8> %i.ay, splat (i8 127)
  store <8 x i8> %i.az, ptr %.15268.i, align 1, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %.170.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.15268.i, i64 8 ; 2 uses
  %i.bc = add nuw nsw i32 %.14869.i, 8            ; 3 uses
  %i.bd = or disjoint i32 %i.bc, 7
  %i.be = icmp slt i32 %i.bd, %1
  br i1 %i.be, label %.lr.ph72.i, label %._crit_edge73.i, !llvm.loop !1

._crit_edge73.i:                                  ; preds = %.lr.ph72.i, %._crit_edge.i
  %.152.lcssa.i = phi ptr [ %.051.lcssa.i, %._crit_edge.i ], [ %i.bb, %.lr.ph72.i ] ; 2 uses
  %.148.lcssa.i = phi i32 [ %.047.lcssa.i, %._crit_edge.i ], [ %i.bc, %.lr.ph72.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %i.ba, %.lr.ph72.i ] ; 2 uses
  %i.bf = insertelement <4 x float> poison, float %2, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = or disjoint i32 %.148.lcssa.i, 3
  %i.bi = icmp slt i32 %i.bh, %1
  br i1 %i.bi, label %.lr.ph81.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph81.i, %._crit_edge73.i
  %.253.lcssa.i = phi ptr [ %.152.lcssa.i, %._crit_edge73.i ], [ %i.eq, %.lr.ph81.i ] ; 8 uses
  %.249.lcssa.i = phi i32 [ %.148.lcssa.i, %._crit_edge73.i ], [ %i.er, %.lr.ph81.i ] ; 7 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %._crit_edge73.i ], [ %i.ep, %.lr.ph81.i ] ; 8 uses
  %i.bj = icmp slt i32 %.249.lcssa.i, %1
  br i1 %i.bj, label %iter.check, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit

iter.check:                                       ; preds = %.preheader.i
  %i.bk = xor i32 %.249.lcssa.i, -1
  %i.bl = add i32 %1, %i.bk                       ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bl, 7
  br i1 %min.iters.check, label %.lr.ph88.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bo = xor i32 %.249.lcssa.i, -1
  %i.bp = add i32 %1, %i.bo
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr i8, ptr %.253.lcssa.i, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 1
  %i.bt = shl nuw nsw i64 %i.bq, 2
  %i.bu = getelementptr i8, ptr %.2.lcssa.i, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %bound0 = icmp ult ptr %.253.lcssa.i, %i.bv
  %bound1 = icmp ult ptr %.2.lcssa.i, %i.bs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph88.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i32 %i.bl, 63
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bn, 56
  %n.vec = and i64 %i.bn, 8589934528              ; 6 uses
  %i.bx = shl nuw nsw i64 %n.vec, 2
  %i.by = getelementptr i8, ptr %.2.lcssa.i, i64 %i.bx
  %i.bz = trunc i64 %n.vec to i32
  %i.ca = add i32 %.249.lcssa.i, %i.bz
  %i.cb = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cc ; 4 uses
  %next.gep33 = getelementptr i8, ptr %.253.lcssa.i, i64 %index ; 4 uses
  %i.cd = getelementptr i8, ptr %next.gep, i64 64
  %i.ce = getelementptr i8, ptr %next.gep, i64 128
  %i.cf = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !28, !alias.scope !93
  %wide.load34 = load <16 x float>, ptr %i.cd, align 4, !tbaa !28, !alias.scope !93
  %wide.load35 = load <16 x float>, ptr %i.ce, align 4, !tbaa !28, !alias.scope !93
  %wide.load36 = load <16 x float>, ptr %i.cf, align 4, !tbaa !28, !alias.scope !93
  %i.cg = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.ch = fmul fast <16 x float> %wide.load34, %broadcast.splat
  %i.ci = fmul fast <16 x float> %wide.load35, %broadcast.splat
  %i.cj = fmul fast <16 x float> %wide.load36, %broadcast.splat
  %i.ck = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.cg)
  %i.cl = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.ch)
  %i.cm = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.ci)
  %i.cn = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.cj)
  %i.co = fptosi <16 x float> %i.ck to <16 x i32>
  %i.cp = fptosi <16 x float> %i.cl to <16 x i32>
  %i.cq = fptosi <16 x float> %i.cm to <16 x i32>
  %i.cr = fptosi <16 x float> %i.cn to <16 x i32>
  %i.cs = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.co, <16 x i32> splat (i32 -127))
  %i.ct = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.cp, <16 x i32> splat (i32 -127))
  %i.cu = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.cq, <16 x i32> splat (i32 -127))
  %i.cv = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.cr, <16 x i32> splat (i32 -127))
  %i.cw = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.cs, <16 x i32> splat (i32 127))
  %i.cx = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ct, <16 x i32> splat (i32 127))
  %i.cy = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.cu, <16 x i32> splat (i32 127))
  %i.cz = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.cv, <16 x i32> splat (i32 127))
  %i.da = trunc nsw <16 x i32> %i.cw to <16 x i8>
  %i.db = trunc nsw <16 x i32> %i.cx to <16 x i8>
  %i.dc = trunc nsw <16 x i32> %i.cy to <16 x i8>
  %i.dd = trunc nsw <16 x i32> %i.cz to <16 x i8>
  %i.de = getelementptr i8, ptr %next.gep33, i64 16
  %i.df = getelementptr i8, ptr %next.gep33, i64 32
  %i.dg = getelementptr i8, ptr %next.gep33, i64 48
  store <16 x i8> %i.da, ptr %next.gep33, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  store <16 x i8> %i.db, ptr %i.de, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  store <16 x i8> %i.dc, ptr %i.df, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  store <16 x i8> %i.dd, ptr %i.dg, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph88.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.bn, 8589934584            ; 5 uses
  %i.di = shl nuw nsw i64 %n.vec39, 2
  %i.dj = getelementptr i8, ptr %.2.lcssa.i, i64 %i.di
  %i.dk = trunc i64 %n.vec39 to i32
  %i.dl = add i32 %.249.lcssa.i, %i.dk
  %i.dm = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec39
  %broadcast.splatinsert40 = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat41 = shufflevector <8 x float> %broadcast.splatinsert40, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.dn = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dn
  %next.gep44 = getelementptr i8, ptr %.253.lcssa.i, i64 %index42
  %wide.load45 = load <8 x float>, ptr %next.gep43, align 4, !tbaa !28, !alias.scope !93
  %i.do = fmul fast <8 x float> %wide.load45, %broadcast.splat41
  %i.dp = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.do)
  %i.dq = fptosi <8 x float> %i.dp to <8 x i32>
  %i.dr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dq, <8 x i32> splat (i32 -127))
  %i.ds = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.dr, <8 x i32> splat (i32 127))
  %i.dt = trunc nsw <8 x i32> %i.ds to <8 x i8>
  store <8 x i8> %i.dt, ptr %next.gep44, align 1, !tbaa !25, !alias.scope !94, !noalias !93
  %index.next46 = add nuw i64 %index42, 8         ; 2 uses
  %i.du = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %i.bn, %n.vec39
  br i1 %cmp.n47, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.387.i.ph = phi ptr [ %.2.lcssa.i, %iter.check ], [ %.2.lcssa.i, %vector.memcheck ], [ %i.by, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ] ; 3 uses
  %.35086.i.ph = phi i32 [ %.249.lcssa.i, %iter.check ], [ %.249.lcssa.i, %vector.memcheck ], [ %i.ca, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 4 uses
  %.35485.i.ph = phi ptr [ %.253.lcssa.i, %iter.check ], [ %.253.lcssa.i, %vector.memcheck ], [ %i.cb, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 3 uses
  %i.dv = sub i32 %1, %.35086.i.ph
  %.neg = add i32 %.35086.i.ph, 1
  %xtraiter61 = and i32 %i.dv, 1
  %lcmp.mod62.not = icmp eq i32 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph88.i.prol.loopexit, label %.lr.ph88.i.prol

.lr.ph88.i.prol:                                  ; preds = %.lr.ph88.i.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %.387.i.ph, i64 4
  %i.dx = load float, ptr %.387.i.ph, align 4, !tbaa !28
  %i.dy = fmul fast float %i.dx, %2
  %i.dz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.dy)
  %i.ea = fptosi float %i.dz to i32
  %spec.select.i61.i.prol = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 -127)
  %.0.i62.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i61.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i62.i.prol to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.35485.i.ph, i64 1
  store i8 %.0.i.i.prol, ptr %.35485.i.ph, align 1, !tbaa !25
  %i.ec = add nuw nsw i32 %.35086.i.ph, 1
  br label %.lr.ph88.i.prol.loopexit

.lr.ph88.i.prol.loopexit:                         ; preds = %.lr.ph88.i.prol, %.lr.ph88.i.preheader
  %.387.i.unr = phi ptr [ %.387.i.ph, %.lr.ph88.i.preheader ], [ %i.dw, %.lr.ph88.i.prol ]
  %.35086.i.unr = phi i32 [ %.35086.i.ph, %.lr.ph88.i.preheader ], [ %i.ec, %.lr.ph88.i.prol ]
  %.35485.i.unr = phi ptr [ %.35485.i.ph, %.lr.ph88.i.preheader ], [ %i.eb, %.lr.ph88.i.prol ]
  %i.ed = icmp eq i32 %1, %.neg
  br i1 %i.ed, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %.lr.ph88.i

.lr.ph81.i:                                       ; preds = %._crit_edge73.i, %.lr.ph81.i
  %.279.i = phi ptr [ %i.ep, %.lr.ph81.i ], [ %.1.lcssa.i, %._crit_edge73.i ] ; 2 uses
  %.24978.i = phi i32 [ %i.er, %.lr.ph81.i ], [ %.148.lcssa.i, %._crit_edge73.i ]
  %.25377.i = phi ptr [ %i.eq, %.lr.ph81.i ], [ %.152.lcssa.i, %._crit_edge73.i ] ; 2 uses
  %i.ee = load <4 x float>, ptr %.279.i, align 1, !tbaa !25
  %i.ef = fmul fast <4 x float> %i.ee, %i.bg      ; 2 uses
  %i.eg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ef)
  %i.eh = fadd fast <4 x float> %i.eg, %i.ef
  %i.ei = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eh) ; 2 uses
  %i.ej = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ei, <4 x i32> %i.ei)
  %i.ek = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ej, <8 x i16> splat (i16 -127))
  %i.el = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ek, <8 x i16> splat (i16 127))
  %i.em = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.el, <8 x i16> poison)
  %i.en = shufflevector <16 x i8> %i.em, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eo = add <4 x i8> %i.en, splat (i8 127)
  store <4 x i8> %i.eo, ptr %.25377.i, align 1, !tbaa !25
  %i.ep = getelementptr inbounds nuw i8, ptr %.279.i, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.25377.i, i64 4 ; 2 uses
  %i.er = add nuw nsw i32 %.24978.i, 4            ; 3 uses
  %i.es = or disjoint i32 %i.er, 3
  %i.et = icmp slt i32 %i.es, %1
  br i1 %i.et, label %.lr.ph81.i, label %.preheader.i, !llvm.loop !2

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.prol.loopexit, %.lr.ph88.i
  %.387.i = phi ptr [ %i.fa, %.lr.ph88.i ], [ %.387.i.unr, %.lr.ph88.i.prol.loopexit ] ; 3 uses
  %.35086.i = phi i32 [ %i.fg, %.lr.ph88.i ], [ %.35086.i.unr, %.lr.ph88.i.prol.loopexit ]
  %.35485.i = phi ptr [ %i.ff, %.lr.ph88.i ], [ %.35485.i.unr, %.lr.ph88.i.prol.loopexit ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.387.i, i64 4
  %i.ev = load float, ptr %.387.i, align 4, !tbaa !28
  %i.ew = fmul fast float %i.ev, %2
  %i.ex = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ew)
  %i.ey = fptosi float %i.ex to i32
  %spec.select.i61.i = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 -127)
  %.0.i62.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i61.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i62.i to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.35485.i, i64 1
  store i8 %.0.i.i, ptr %.35485.i, align 1, !tbaa !25
  %i.fa = getelementptr inbounds nuw i8, ptr %.387.i, i64 8
  %i.fb = load float, ptr %i.eu, align 4, !tbaa !28
  %i.fc = fmul fast float %i.fb, %2
  %i.fd = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fc)
  %i.fe = fptosi float %i.fd to i32
  %spec.select.i61.i.1 = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 -127)
  %.0.i62.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i61.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i62.i.1 to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.35485.i, i64 2
  store i8 %.0.i.i.1, ptr %i.ez, align 1, !tbaa !25
  %i.fg = add nuw nsw i32 %.35086.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.fg, %1
  br i1 %exitcond.not.i.1, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %.lr.ph88.i, !llvm.loop !92

_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit: ; preds = %.lr.ph88.i.prol.loopexit, %.lr.ph88.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32>, <16 x i8>, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32>, <16 x i8>, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn20lstm_int8_avx512vnniERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %10) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  %i.c = alloca i32, align 4                      ; 16 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.d = alloca float, align 4                    ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 19 uses
  %i.g = alloca i32, align 4                      ; 17 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  store i32 %i.o, ptr %i.a, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !112  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21   ; 3 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21   ; 4 uses
  store i32 %i.u, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i64 0, ptr %i.z, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 4, i32 noundef %i.u, i64 noundef 4, ptr noundef %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.ac, align 8, !tbaa !23
  %.not.i = icmp eq i32 %i.s, %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !113
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.u, i64 noundef 4, ptr noundef %i.ad)
          to label %._crit_edge199.i unwind label %bb.c

._crit_edge199.i:                                 ; preds = %bb.b
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.d:                                             ; preds = %._crit_edge199.i, %bb.a
  %i.af = phi i32 [ %.pre.i, %._crit_edge199.i ], [ %i.s, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i64 0, ptr %i.aj, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.af, i64 noundef 1, i32 noundef 1, ptr noundef %i.ag)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i unwind label %bb.w

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i:         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !28
  %i.ak = icmp sgt i32 %i.q, 0
  br i1 %i.ak, label %.lr.ph175.i, label %._crit_edge.i

.lr.ph175.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i
  %.not91.i = icmp eq i32 %3, 0
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre201.i = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.x

._crit_edge.i:                                    ; preds = %bb.ab, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !114 ; 2 uses
  %.not.i101.i = icmp eq ptr %i.an, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit99.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ao = atomicrmw add ptr %i.an, i32 -1 acq_rel, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit99.i

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !115 ; 3 uses
  %.not3.i102.i = icmp eq ptr %i.aq, null
  %i.ar = load ptr, ptr %13, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i102.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ar)
          to label %_ZN4ncnn3MatD2Ev.exit99.i unwind label %bb.j, !inline_history !95

bb.h:                                             ; preds = %bb.f
  %.not.i128.i = icmp eq ptr %i.ar, null
  br i1 %.not.i128.i, label %_ZN4ncnn3MatD2Ev.exit99.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.ar) #4
  br label %_ZN4ncnn3MatD2Ev.exit99.i
end_hunk_0
begin_hunk_1_@_ZN4ncnn20lstm_int8_avx512vnniERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE:bb.a
  %.15268.i.i = phi ptr [ %i.jq, %.lr.ph72.i.i ], [ %.051.lcssa.i.i, %._crit_edge.i133.i ] ; 2 uses
  %i.jg = load <8 x float>, ptr %.170.i.i, align 1, !tbaa !25
  %i.jh = fmul fast <8 x float> %i.jg, %i.jd      ; 2 uses
  %i.ji = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.jh)
  %i.jj = fadd fast <8 x float> %i.ji, %i.jh
  %i.jk = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jj)
  %i.jl = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.jk, <16 x i8> zeroinitializer, i8 -1)
  %i.jm = shufflevector <16 x i8> %i.jl, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jn = call <8 x i8> @llvm.smax.v8i8(<8 x i8> %i.jm, <8 x i8> splat (i8 -127))
  %i.jo = add <8 x i8> %i.jn, splat (i8 127)
  store <8 x i8> %i.jo, ptr %.15268.i.i, align 1, !tbaa !25
  %i.jp = getelementptr inbounds nuw i8, ptr %.170.i.i, i64 32 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.15268.i.i, i64 8 ; 2 uses
  %i.jr = add nuw nsw i32 %.14869.i.i, 8          ; 3 uses
  %i.js = or disjoint i32 %i.jr, 7
  %i.jt = icmp slt i32 %i.js, %i.bs
  br i1 %i.jt, label %.lr.ph72.i.i, label %._crit_edge73.i.i, !llvm.loop !1

._crit_edge73.i.i:                                ; preds = %.lr.ph72.i.i, %._crit_edge.i133.i
  %.152.lcssa.i.i = phi ptr [ %.051.lcssa.i.i, %._crit_edge.i133.i ], [ %i.jq, %.lr.ph72.i.i ] ; 2 uses
  %.148.lcssa.i.i = phi i32 [ %.047.lcssa.i.i, %._crit_edge.i133.i ], [ %i.jr, %.lr.ph72.i.i ] ; 3 uses
  %.1.lcssa.i135.i = phi ptr [ %.0.lcssa.i134.i, %._crit_edge.i133.i ], [ %i.jp, %.lr.ph72.i.i ] ; 2 uses
  %i.ju = insertelement <4 x float> poison, float %i.hp, i64 0
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jw = or disjoint i32 %.148.lcssa.i.i, 3
  %i.jx = icmp slt i32 %i.jw, %i.bs
  br i1 %i.jx, label %.lr.ph81.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph81.i.i, %._crit_edge73.i.i
  %.253.lcssa.i.i = phi ptr [ %.152.lcssa.i.i, %._crit_edge73.i.i ], [ %i.nb, %.lr.ph81.i.i ] ; 8 uses
  %.249.lcssa.i.i = phi i32 [ %.148.lcssa.i.i, %._crit_edge73.i.i ], [ %i.nc, %.lr.ph81.i.i ] ; 7 uses
  %.2.lcssa.i136.i = phi ptr [ %.1.lcssa.i135.i, %._crit_edge73.i.i ], [ %i.na, %.lr.ph81.i.i ] ; 8 uses
  %i.jy = icmp slt i32 %.249.lcssa.i.i, %i.bs
  br i1 %i.jy, label %iter.check, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.jz = xor i32 %.249.lcssa.i.i, -1
  %i.ka = add i32 %i.bs, %i.jz                    ; 3 uses
  %i.kb = zext i32 %i.ka to i64
  %i.kc = add nuw nsw i64 %i.kb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ka, 7
  br i1 %min.iters.check, label %.lr.ph88.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep114 = getelementptr i8, ptr %.253.lcssa.i.i, i64 1
  %i.kd = xor i32 %.249.lcssa.i.i, -1
  %i.ke = add i32 %i.bs, %i.kd
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.kf
  %scevgep116 = getelementptr i8, ptr %.2.lcssa.i136.i, i64 4
  %i.kg = shl nuw nsw i64 %i.kf, 2
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.kg
  %bound0 = icmp ult ptr %.253.lcssa.i.i, %scevgep117
  %bound1 = icmp ult ptr %.2.lcssa.i136.i, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph88.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check118 = icmp ult i32 %i.ka, 63
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kh = and i64 %i.kc, 56
  %n.vec = and i64 %i.kc, 8589934528              ; 6 uses
  %i.ki = shl nuw nsw i64 %n.vec, 2
  %i.kj = getelementptr i8, ptr %.2.lcssa.i136.i, i64 %i.ki
  %i.kk = trunc i64 %n.vec to i32
  %i.kl = add i32 %.249.lcssa.i.i, %i.kk
  %i.km = getelementptr i8, ptr %.253.lcssa.i.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.hp, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.2.lcssa.i136.i, i64 %i.kn ; 4 uses
  %next.gep119 = getelementptr i8, ptr %.253.lcssa.i.i, i64 %index ; 4 uses
  %i.ko = getelementptr i8, ptr %next.gep, i64 64
  %i.kp = getelementptr i8, ptr %next.gep, i64 128
  %i.kq = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !28, !alias.scope !119
  %wide.load120 = load <16 x float>, ptr %i.ko, align 4, !tbaa !28, !alias.scope !119
  %wide.load121 = load <16 x float>, ptr %i.kp, align 4, !tbaa !28, !alias.scope !119
  %wide.load122 = load <16 x float>, ptr %i.kq, align 4, !tbaa !28, !alias.scope !119
  %i.kr = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.ks = fmul fast <16 x float> %wide.load120, %broadcast.splat
  %i.kt = fmul fast <16 x float> %wide.load121, %broadcast.splat
  %i.ku = fmul fast <16 x float> %wide.load122, %broadcast.splat
  %i.kv = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.kr)
  %i.kw = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.ks)
  %i.kx = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.kt)
  %i.ky = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.ku)
  %i.kz = fptosi <16 x float> %i.kv to <16 x i32>
  %i.la = fptosi <16 x float> %i.kw to <16 x i32>
  %i.lb = fptosi <16 x float> %i.kx to <16 x i32>
  %i.lc = fptosi <16 x float> %i.ky to <16 x i32>
  %i.ld = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.kz, <16 x i32> splat (i32 -127))
  %i.le = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.la, <16 x i32> splat (i32 -127))
  %i.lf = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.lb, <16 x i32> splat (i32 -127))
  %i.lg = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.lc, <16 x i32> splat (i32 -127))
  %i.lh = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ld, <16 x i32> splat (i32 127))
  %i.li = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.le, <16 x i32> splat (i32 127))
  %i.lj = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.lf, <16 x i32> splat (i32 127))
  %i.lk = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.lg, <16 x i32> splat (i32 127))
  %i.ll = trunc nsw <16 x i32> %i.lh to <16 x i8>
  %i.lm = trunc nsw <16 x i32> %i.li to <16 x i8>
  %i.ln = trunc nsw <16 x i32> %i.lj to <16 x i8>
  %i.lo = trunc nsw <16 x i32> %i.lk to <16 x i8>
  %i.lp = getelementptr i8, ptr %next.gep119, i64 16
  %i.lq = getelementptr i8, ptr %next.gep119, i64 32
  %i.lr = getelementptr i8, ptr %next.gep119, i64 48
  store <16 x i8> %i.ll, ptr %next.gep119, align 1, !tbaa !25, !alias.scope !120, !noalias !119
  store <16 x i8> %i.lm, ptr %i.lp, align 1, !tbaa !25, !alias.scope !120, !noalias !119
  store <16 x i8> %i.ln, ptr %i.lq, align 1, !tbaa !25, !alias.scope !120, !noalias !119
  store <16 x i8> %i.lo, ptr %i.lr, align 1, !tbaa !25, !alias.scope !120, !noalias !119
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph88.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec125 = and i64 %i.kc, 8589934584           ; 5 uses
  %i.lt = shl nuw nsw i64 %n.vec125, 2
  %i.lu = getelementptr i8, ptr %.2.lcssa.i136.i, i64 %i.lt
  %i.lv = trunc i64 %n.vec125 to i32
  %i.lw = add i32 %.249.lcssa.i.i, %i.lv
  %i.lx = getelementptr i8, ptr %.253.lcssa.i.i, i64 %n.vec125
  %broadcast.splatinsert126 = insertelement <8 x float> poison, float %i.hp, i64 0
  %broadcast.splat127 = shufflevector <8 x float> %broadcast.splatinsert126, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ] ; 3 uses
  %i.ly = shl i64 %index128, 2
  %next.gep129 = getelementptr i8, ptr %.2.lcssa.i136.i, i64 %i.ly
  %next.gep130 = getelementptr i8, ptr %.253.lcssa.i.i, i64 %index128
  %wide.load131 = load <8 x float>, ptr %next.gep129, align 4, !tbaa !28, !alias.scope !119
  %i.lz = fmul fast <8 x float> %wide.load131, %broadcast.splat127
  %i.ma = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.lz)
  %i.mb = fptosi <8 x float> %i.ma to <8 x i32>
  %i.mc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mb, <8 x i32> splat (i32 -127))
  %i.md = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.mc, <8 x i32> splat (i32 127))
  %i.me = trunc nsw <8 x i32> %i.md to <8 x i8>
  store <8 x i8> %i.me, ptr %next.gep130, align 1, !tbaa !25, !alias.scope !120, !noalias !119
  %index.next132 = add nuw i64 %index128, 8       ; 2 uses
  %i.mf = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.mf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n133 = icmp eq i64 %i.kc, %n.vec125
  br i1 %cmp.n133, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph88.i.i.preheader

.lr.ph88.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.387.i.i.ph = phi ptr [ %.2.lcssa.i136.i, %iter.check ], [ %.2.lcssa.i136.i, %vector.memcheck ], [ %i.kj, %vec.epilog.iter.check ], [ %i.lu, %vec.epilog.middle.block ] ; 3 uses
  %.35086.i.i.ph = phi i32 [ %.249.lcssa.i.i, %iter.check ], [ %.249.lcssa.i.i, %vector.memcheck ], [ %i.kl, %vec.epilog.iter.check ], [ %i.lw, %vec.epilog.middle.block ] ; 4 uses
  %.35485.i.i.ph = phi ptr [ %.253.lcssa.i.i, %iter.check ], [ %.253.lcssa.i.i, %vector.memcheck ], [ %i.km, %vec.epilog.iter.check ], [ %i.lx, %vec.epilog.middle.block ] ; 3 uses
  %i.mg = sub i32 %i.bs, %.35086.i.i.ph
  %.neg = add i32 %.35086.i.i.ph, 1
  %xtraiter217 = and i32 %i.mg, 1
  %lcmp.mod218.not = icmp eq i32 %xtraiter217, 0
  br i1 %lcmp.mod218.not, label %.lr.ph88.i.i.prol.loopexit, label %.lr.ph88.i.i.prol

.lr.ph88.i.i.prol:                                ; preds = %.lr.ph88.i.i.preheader
  %i.mh = getelementptr inbounds nuw i8, ptr %.387.i.i.ph, i64 4
  %i.mi = load float, ptr %.387.i.i.ph, align 4, !tbaa !28
  %i.mj = fmul fast float %i.mi, %i.hp
  %i.mk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.mj)
  %i.ml = fptosi float %i.mk to i32
  %spec.select.i61.i.i.prol = call i32 @llvm.smax.i32(i32 %i.ml, i32 -127)
  %.0.i62.i.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i61.i.i.prol, i32 127)
  %.0.i.i.i.prol = trunc nsw i32 %.0.i62.i.i.prol to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %.35485.i.i.ph, i64 1
  store i8 %.0.i.i.i.prol, ptr %.35485.i.i.ph, align 1, !tbaa !25
  %i.mn = add nuw nsw i32 %.35086.i.i.ph, 1
  br label %.lr.ph88.i.i.prol.loopexit

.lr.ph88.i.i.prol.loopexit:                       ; preds = %.lr.ph88.i.i.prol, %.lr.ph88.i.i.preheader
  %.387.i.i.unr = phi ptr [ %.387.i.i.ph, %.lr.ph88.i.i.preheader ], [ %i.mh, %.lr.ph88.i.i.prol ]
  %.35086.i.i.unr = phi i32 [ %.35086.i.i.ph, %.lr.ph88.i.i.preheader ], [ %i.mn, %.lr.ph88.i.i.prol ]
  %.35485.i.i.unr = phi ptr [ %.35485.i.i.ph, %.lr.ph88.i.i.preheader ], [ %i.mm, %.lr.ph88.i.i.prol ]
  %i.mo = icmp eq i32 %i.bs, %.neg
  br i1 %i.mo, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph88.i.i

.lr.ph81.i.i:                                     ; preds = %._crit_edge73.i.i, %.lr.ph81.i.i
  %.279.i.i = phi ptr [ %i.na, %.lr.ph81.i.i ], [ %.1.lcssa.i135.i, %._crit_edge73.i.i ] ; 2 uses
  %.24978.i.i = phi i32 [ %i.nc, %.lr.ph81.i.i ], [ %.148.lcssa.i.i, %._crit_edge73.i.i ]
  %.25377.i.i = phi ptr [ %i.nb, %.lr.ph81.i.i ], [ %.152.lcssa.i.i, %._crit_edge73.i.i ] ; 2 uses
  %i.mp = load <4 x float>, ptr %.279.i.i, align 1, !tbaa !25
  %i.mq = fmul fast <4 x float> %i.mp, %i.jv      ; 2 uses
  %i.mr = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mq)
  %i.ms = fadd fast <4 x float> %i.mr, %i.mq
  %i.mt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ms) ; 2 uses
  %i.mu = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mt, <4 x i32> %i.mt)
  %i.mv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mu, <8 x i16> splat (i16 -127))
  %i.mw = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mv, <8 x i16> splat (i16 127))
  %i.mx = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mw, <8 x i16> poison)
  %i.my = shufflevector <16 x i8> %i.mx, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mz = add <4 x i8> %i.my, splat (i8 127)
  store <4 x i8> %i.mz, ptr %.25377.i.i, align 1, !tbaa !25
  %i.na = getelementptr inbounds nuw i8, ptr %.279.i.i, i64 16 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.25377.i.i, i64 4 ; 2 uses
  %i.nc = add nuw nsw i32 %.24978.i.i, 4          ; 3 uses
  %i.nd = or disjoint i32 %i.nc, 3
  %i.ne = icmp slt i32 %i.nd, %i.bs
  br i1 %i.ne, label %.lr.ph81.i.i, label %.preheader.i.i, !llvm.loop !2

.lr.ph88.i.i:                                     ; preds = %.lr.ph88.i.i.prol.loopexit, %.lr.ph88.i.i
  %.387.i.i = phi ptr [ %i.nl, %.lr.ph88.i.i ], [ %.387.i.i.unr, %.lr.ph88.i.i.prol.loopexit ] ; 3 uses
  %.35086.i.i = phi i32 [ %i.nr, %.lr.ph88.i.i ], [ %.35086.i.i.unr, %.lr.ph88.i.i.prol.loopexit ]
  %.35485.i.i = phi ptr [ %i.nq, %.lr.ph88.i.i ], [ %.35485.i.i.unr, %.lr.ph88.i.i.prol.loopexit ] ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.387.i.i, i64 4
  %i.ng = load float, ptr %.387.i.i, align 4, !tbaa !28
  %i.nh = fmul fast float %i.ng, %i.hp
  %i.ni = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.nh)
  %i.nj = fptosi float %i.ni to i32
  %spec.select.i61.i.i = call i32 @llvm.smax.i32(i32 %i.nj, i32 -127)
  %.0.i62.i.i = call i32 @llvm.smin.i32(i32 %spec.select.i61.i.i, i32 127)
  %.0.i.i.i = trunc nsw i32 %.0.i62.i.i to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %.35485.i.i, i64 1
  store i8 %.0.i.i.i, ptr %.35485.i.i, align 1, !tbaa !25
  %i.nl = getelementptr inbounds nuw i8, ptr %.387.i.i, i64 8
  %i.nm = load float, ptr %i.nf, align 4, !tbaa !28
  %i.nn = fmul fast float %i.nm, %i.hp
  %i.no = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.nn)
  %i.np = fptosi float %i.no to i32
  %spec.select.i61.i.i.1 = call i32 @llvm.smax.i32(i32 %i.np, i32 -127)
  %.0.i62.i.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i61.i.i.1, i32 127)
  %.0.i.i.i.1 = trunc nsw i32 %.0.i62.i.i.1 to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %.35485.i.i, i64 2
  store i8 %.0.i.i.i.1, ptr %i.nk, align 1, !tbaa !25
  %i.nr = add nuw nsw i32 %.35086.i.i, 2          ; 2 uses
  %exitcond.not.i137.i.1 = icmp eq i32 %i.nr, %i.bs
  br i1 %exitcond.not.i137.i.1, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph88.i.i, !llvm.loop !110

_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i: ; preds = %.lr.ph88.i.i.prol.loopexit, %.lr.ph88.i.i, %.lr.ph173.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 0, ptr %i.f, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.ns = load i32, ptr %i.c, align 4, !tbaa !12
  %i.nt = ashr i32 %i.ns, 2
  store i32 %i.nt, ptr %i.g, align 4, !tbaa !12
  %i.nu = load i32, ptr %i.al, align 4, !tbaa !17
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.nu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %6, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  %i.nv = load i32, ptr %i.g, align 4, !tbaa !12
  %i.nw = shl i32 %i.nv, 2
  %i.nx = load i32, ptr %i.f, align 4, !tbaa !12
  %i.ny = add nsw i32 %i.nx, %i.nw                ; 2 uses
  store i32 %i.ny, ptr %i.f, align 4, !tbaa !12
  %i.nz = load i32, ptr %i.c, align 4, !tbaa !12
  %i.oa = sub nsw i32 %i.nz, %i.ny
  %i.ob = ashr i32 %i.oa, 1
  store i32 %i.ob, ptr %i.g, align 4, !tbaa !12
  %i.oc = load i32, ptr %i.al, align 4, !tbaa !17
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.oc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %6, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  %i.od = load i32, ptr %i.g, align 4, !tbaa !12
  %i.oe = shl i32 %i.od, 1
  %i.of = load i32, ptr %i.f, align 4, !tbaa !12
  %i.og = add nsw i32 %i.of, %i.oe
  store i32 %i.og, ptr %i.f, align 4, !tbaa !12
  %i.oh = load i32, ptr %i.al, align 4, !tbaa !17
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.oh)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %6, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.oi = load i32, ptr %i.e, align 4, !tbaa !12
  %i.oj = load ptr, ptr %2, align 8, !tbaa !22
  %i.ok = load i32, ptr %i.r, align 4, !tbaa !21
  %i.ol = sext i32 %i.ok to i64
  %i.om = sext i32 %i.oi to i64
  %i.on = mul nsw i64 %i.ol, %i.om
  %i.oo = load i64, ptr %i.am, align 8, !tbaa !24
  %i.op = mul i64 %i.on, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.op
  store ptr %i.oq, ptr %i.h, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.or = load ptr, ptr %9, align 8, !tbaa !22
  store ptr %i.or, ptr %i.i, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.os = load ptr, ptr %8, align 8, !tbaa !22
  store ptr %i.os, ptr %i.j, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.ot = load ptr, ptr %12, align 8, !tbaa !22
  store ptr %i.ot, ptr %i.k, align 8, !tbaa !35
  store i32 0, ptr %i.f, align 4, !tbaa !12
  %i.ou = load i32, ptr %i.c, align 4, !tbaa !12
  %i.ov = ashr i32 %i.ou, 4
  store i32 %i.ov, ptr %i.g, align 4, !tbaa !12
  %i.ow = load i32, ptr %i.al, align 4, !tbaa !17
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.ow)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.g, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.ox = load i32, ptr %i.g, align 4, !tbaa !12
  %i.oy = shl i32 %i.ox, 4
  %i.oz = load i32, ptr %i.f, align 4, !tbaa !12
  %i.pa = add nsw i32 %i.oz, %i.oy                ; 2 uses
  store i32 %i.pa, ptr %i.f, align 4, !tbaa !12
  %i.pb = load i32, ptr %i.c, align 4, !tbaa !12
  %i.pc = sub nsw i32 %i.pb, %i.pa
  %i.pd = ashr i32 %i.pc, 3
  store i32 %i.pd, ptr %i.g, align 4, !tbaa !12
  %i.pe = load i32, ptr %i.al, align 4, !tbaa !17
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.pe)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.pf = load i32, ptr %i.g, align 4, !tbaa !12
  %i.pg = shl i32 %i.pf, 3
  %i.ph = load i32, ptr %i.f, align 4, !tbaa !12
  %i.pi = add nsw i32 %i.ph, %i.pg                ; 2 uses
  store i32 %i.pi, ptr %i.f, align 4, !tbaa !12
  %i.pj = load i32, ptr %i.c, align 4, !tbaa !12
  %i.pk = sub nsw i32 %i.pj, %i.pi
  %i.pl = ashr i32 %i.pk, 2
  store i32 %i.pl, ptr %i.g, align 4, !tbaa !12
  %i.pm = load i32, ptr %i.al, align 4, !tbaa !17
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.pm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.pn = load i32, ptr %i.g, align 4, !tbaa !12
  %i.po = shl i32 %i.pn, 2
  %i.pp = load i32, ptr %i.f, align 4, !tbaa !12
  %i.pq = add nsw i32 %i.pp, %i.po
  store i32 %i.pq, ptr %i.f, align 4, !tbaa !12
  %i.pr = load i32, ptr %i.al, align 4, !tbaa !17
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.pr)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.ps = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %i.pt = load i32, ptr %i.c, align 4, !tbaa !12
  %.not95.i = icmp eq i32 %i.ps, %i.pt
  br i1 %.not95.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  store i32 0, ptr %i.l, align 4, !tbaa !12
  %i.pu = load i32, ptr %i.al, align 4, !tbaa !17
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.pu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.7, ptr nonnull %i.b, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %7, ptr nonnull %12, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  %.pre200.i = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i
  %i.pv = phi i32 [ %.pre200.i, %bb.aa ], [ %i.ps, %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  %i.pw = add nuw nsw i32 %.081174.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.pw, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !111

bb.ac:                                            ; preds = %bb.w, %bb.c
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.ae, %bb.c ]
  %i.px = load ptr, ptr %i.aa, align 8, !tbaa !114 ; 2 uses
  %.not.i113.i = icmp eq ptr %i.px, null
  br i1 %.not.i113.i, label %_ZN4ncnn3MatD2Ev.exit96.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.py = atomicrmw add ptr %i.px, i32 -1 acq_rel, align 4
  %i.pz = icmp eq i32 %i.py, 1
  br i1 %i.pz, label %bb.ae, label %_ZN4ncnn3MatD2Ev.exit96.i

bb.ae:                                            ; preds = %bb.ad
  %i.qa = load ptr, ptr %i.ab, align 8, !tbaa !115 ; 3 uses
  %.not3.i114.i = icmp eq ptr %i.qa, null
  %i.qb = load ptr, ptr %12, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i114.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qc = load ptr, ptr %i.qa, align 8, !tbaa !117
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8
  invoke void %i.qe(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef %i.qb)
          to label %_ZN4ncnn3MatD2Ev.exit96.i unwind label %bb.ai, !inline_history !95

bb.ag:                                            ; preds = %bb.ae
  %.not.i122.i = icmp eq ptr %i.qb, null
  br i1 %.not.i122.i, label %_ZN4ncnn3MatD2Ev.exit96.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.qb) #4
  br label %_ZN4ncnn3MatD2Ev.exit96.i

bb.ai:                                            ; preds = %bb.af
  %i.qf = landingpad { ptr, i32 }
          catch ptr null
  %i.qg = extractvalue { ptr, i32 } %i.qf, 0
  call void @__clang_call_terminate(ptr %i.qg) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit96.i:                        ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.qh = load ptr, ptr %i.x, align 8, !tbaa !114 ; 2 uses
  %.not.i117.i = icmp eq ptr %i.qh, null
  br i1 %.not.i117.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.aj
end_hunk_1
begin_hunk_2_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.ka = trunc nuw i64 %indvars.iv.next422 to i32
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %._crit_edge347.loopexit, %._crit_edge337
  %.0263.in.lcssa = phi <4 x i32> [ %i.jl, %._crit_edge337 ], [ %i.jv, %._crit_edge347.loopexit ]
  %.7149.lcssa = phi ptr [ %.6148.lcssa, %._crit_edge337 ], [ %i.jw, %._crit_edge347.loopexit ] ; 2 uses
  %.7.lcssa = phi i32 [ %.6.lcssa, %._crit_edge337 ], [ %i.ka, %._crit_edge347.loopexit ] ; 3 uses
  %i.kb = load <4 x i32>, ptr %.7149.lcssa, align 1, !tbaa !25
  %i.kc = sub <4 x i32> %.0263.in.lcssa, %i.kb    ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.7149.lcssa, i64 16 ; 2 uses
  %i.ke = or disjoint i32 %.7.lcssa, 1
  %i.kf = icmp slt i32 %i.ke, %i.gc
  br i1 %i.kf, label %.lr.ph355.preheader, label %.preheader

.lr.ph355.preheader:                              ; preds = %._crit_edge347
  %i.kg = zext i32 %.7.lcssa to i64
  br label %.lr.ph355

.preheader.loopexit:                              ; preds = %.lr.ph355
  %i.kh = trunc nuw i64 %indvars.iv.next425 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge347
  %.1264.in.lcssa = phi <4 x i32> [ %i.kc, %._crit_edge347 ], [ %i.lh, %.preheader.loopexit ] ; 3 uses
  %.8150.lcssa = phi ptr [ %i.kd, %._crit_edge347 ], [ %i.li, %.preheader.loopexit ] ; 3 uses
  %.8.lcssa = phi i32 [ %.7.lcssa, %._crit_edge347 ], [ %i.kh, %.preheader.loopexit ] ; 4 uses
  %i.ki = icmp slt i32 %.8.lcssa, %i.gc
  br i1 %i.ki, label %.lr.ph361.preheader, label %._crit_edge362

.lr.ph361.preheader:                              ; preds = %.preheader
  %i.kj = zext i32 %.8.lcssa to i64               ; 3 uses
  %i.kk = sub i32 %i.gc, %.8.lcssa
  %.neg522 = add i32 %.8.lcssa, 1
  %xtraiter519 = and i32 %i.kk, 1
  %lcmp.mod520.not = icmp eq i32 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph361.prol.loopexit, label %.lr.ph361.prol

.lr.ph361.prol:                                   ; preds = %.lr.ph361.preheader
  %i.kl = load <8 x i8>, ptr %.8150.lcssa, align 1, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.kj
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !25
  %i.ko = sext i8 %i.kn to i16
  %i.kp = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %i.kq = shufflevector <8 x i16> %i.kp, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kr = sext <8 x i8> %i.kl to <8 x i16>        ; 2 uses
  %i.ks = mul <8 x i16> %i.kq, %i.kr
  %i.kt = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kr, <8 x i16> %i.kq)
  %i.ku = shufflevector <8 x i16> %i.ks, <8 x i16> %i.kt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kv = bitcast <8 x i16> %i.ku to <4 x i32>
  %i.kw = add <4 x i32> %.1264.in.lcssa, %i.kv    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.8150.lcssa, i64 4
  %indvars.iv.next428.prol = add nuw nsw i64 %i.kj, 1
  br label %.lr.ph361.prol.loopexit

.lr.ph361.prol.loopexit:                          ; preds = %.lr.ph361.prol, %.lr.ph361.preheader
  %indvars.iv427.unr = phi i64 [ %i.kj, %.lr.ph361.preheader ], [ %indvars.iv.next428.prol, %.lr.ph361.prol ]
  %.9151359.unr = phi ptr [ %.8150.lcssa, %.lr.ph361.preheader ], [ %i.kx, %.lr.ph361.prol ]
  %.unr521 = phi <4 x i32> [ %.1264.in.lcssa, %.lr.ph361.preheader ], [ %i.kw, %.lr.ph361.prol ]
  %.lcssa518.unr = phi <4 x i32> [ poison, %.lr.ph361.preheader ], [ %i.kw, %.lr.ph361.prol ]
  %i.ky = icmp eq i32 %i.gc, %.neg522
  br i1 %i.ky, label %._crit_edge362, label %.lr.ph361

.lr.ph355:                                        ; preds = %.lr.ph355.preheader, %.lr.ph355
  %indvars.iv424 = phi i64 [ %i.kg, %.lr.ph355.preheader ], [ %indvars.iv.next425, %.lr.ph355 ] ; 2 uses
  %.8150352 = phi ptr [ %i.kd, %.lr.ph355.preheader ], [ %i.li, %.lr.ph355 ] ; 2 uses
  %.1264.in351 = phi <4 x i32> [ %i.kc, %.lr.ph355.preheader ], [ %i.lh, %.lr.ph355 ]
  %i.kz = load <8 x i8>, ptr %.8150352, align 1, !tbaa !25
  %i.la = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv424
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !152
  %i.lc = insertelement <8 x i16> poison, i16 %i.lb, i64 0
  %i.ld = sext <8 x i8> %i.kz to <8 x i16>
  %i.le = bitcast <8 x i16> %i.lc to <16 x i8>
  %i.lf = shufflevector <16 x i8> %i.le, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.lg = sext <8 x i8> %i.lf to <8 x i16>
  %i.lh = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.1264.in351, <8 x i16> %i.ld, <8 x i16> %i.lg) ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.8150352, i64 8 ; 2 uses
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 2 ; 3 uses
  %i.lj = trunc i64 %indvars.iv.next425 to i32
  %i.lk = or i32 %i.lj, 1
  %i.ll = icmp slt i32 %i.lk, %i.gc
  br i1 %i.ll, label %.lr.ph355, label %.preheader.loopexit, !llvm.loop !149

.lr.ph361:                                        ; preds = %.lr.ph361.prol.loopexit, %.lr.ph361
  %indvars.iv427 = phi i64 [ %indvars.iv.next428.1, %.lr.ph361 ], [ %indvars.iv427.unr, %.lr.ph361.prol.loopexit ] ; 3 uses
  %.9151359 = phi ptr [ %i.mn, %.lr.ph361 ], [ %.9151359.unr, %.lr.ph361.prol.loopexit ] ; 3 uses
  %i.lm = phi <4 x i32> [ %i.mm, %.lr.ph361 ], [ %.unr521, %.lr.ph361.prol.loopexit ]
  %i.ln = load <8 x i8>, ptr %.9151359, align 1, !tbaa !25
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv427
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !25
  %i.lq = sext i8 %i.lp to i16
  %i.lr = insertelement <8 x i16> poison, i16 %i.lq, i64 0
  %i.ls = shufflevector <8 x i16> %i.lr, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lt = sext <8 x i8> %i.ln to <8 x i16>        ; 2 uses
  %i.lu = mul <8 x i16> %i.ls, %i.lt
  %i.lv = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.lt, <8 x i16> %i.ls)
  %i.lw = shufflevector <8 x i16> %i.lu, <8 x i16> %i.lv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lx = bitcast <8 x i16> %i.lw to <4 x i32>
  %i.ly = add <4 x i32> %i.lm, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %.9151359, i64 4
  %i.ma = load <8 x i8>, ptr %i.lz, align 1, !tbaa !25
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv427
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !25
  %i.me = sext i8 %i.md to i16
  %i.mf = insertelement <8 x i16> poison, i16 %i.me, i64 0
  %i.mg = shufflevector <8 x i16> %i.mf, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mh = sext <8 x i8> %i.ma to <8 x i16>        ; 2 uses
  %i.mi = mul <8 x i16> %i.mg, %i.mh
  %i.mj = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.mh, <8 x i16> %i.mg)
  %i.mk = shufflevector <8 x i16> %i.mi, <8 x i16> %i.mj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ml = bitcast <8 x i16> %i.mk to <4 x i32>
  %i.mm = add <4 x i32> %i.ly, %i.ml              ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.9151359, i64 8
  %indvars.iv.next428.1 = add nuw nsw i64 %indvars.iv427, 2 ; 2 uses
  %i.mo = trunc nuw i64 %indvars.iv.next428.1 to i32
  %i.mp = icmp sgt i32 %i.gc, %i.mo
  br i1 %i.mp, label %.lr.ph361, label %._crit_edge362, !llvm.loop !150

._crit_edge362:                                   ; preds = %.lr.ph361.prol.loopexit, %.lr.ph361, %.preheader
  %.lcssa282 = phi <4 x i32> [ %.1264.in.lcssa, %.preheader ], [ %.lcssa518.unr, %.lr.ph361.prol.loopexit ], [ %i.mm, %.lr.ph361 ]
  %i.mq = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ms = insertelement <4 x float> poison, float %i.al, i64 0
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = load <4 x float>, ptr %i.ap, align 1, !tbaa !25
  %i.mv = load <4 x float>, ptr %i.bn, align 1, !tbaa !25
  %i.mw = sitofp fast <4 x i32> %.lcssa274 to <4 x float>
  %i.mx = fmul fast <4 x float> %i.mv, %i.mr
  %i.my = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mw, <4 x float> nofpclass(nan inf) %i.mx, <4 x float> nofpclass(nan inf) %i.mu)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.na = load <4 x float>, ptr %i.mz, align 1, !tbaa !25
  %i.nb = sitofp fast <4 x i32> %.lcssa282 to <4 x float>
  %i.nc = fmul fast <4 x float> %i.na, %i.mt
  %i.nd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nb, <4 x float> nofpclass(nan inf) %i.nc, <4 x float> nofpclass(nan inf) %i.my)
  store <4 x float> %i.nd, ptr %i.bv, align 1, !tbaa !25
  %i.ne = add nuw i32 %.0364, 1
  %exitcond.not = icmp eq i32 %.0364, %i.l
  br i1 %exitcond.not, label %._crit_edge367, label %bb.c

._crit_edge367:                                   ; preds = %._crit_edge362, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge367, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !12
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !12
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = shl nsw i64 %indvars.iv, 4               ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !22
  %i.r = load i32, ptr %i.l, align 4, !tbaa !21
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.p, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !24
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 2 uses
  %10 = load <32 x float>, ptr %i.w, align 1, !tbaa !25 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %11 = load <32 x float>, ptr %i.x, align 1, !tbaa !25 ; 2 uses
  %i.y = shufflevector <32 x float> %10, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.z = shufflevector <32 x float> %11, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aa = shufflevector <32 x float> %10, <32 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ab = shufflevector <32 x float> %11, <32 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ac = shufflevector <16 x float> %i.y, <16 x float> %i.z, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ad = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ae = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.af = fneg fast <16 x float> %i.ac
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aj = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ai, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ak = fcmp fast ogt <16 x float> %i.aj, %i.ai
  %i.al = fadd fast <16 x float> %i.aj, splat (float -1.000000e+00)
  %i.am = select fast <16 x i1> %i.ak, <16 x float> %i.al, <16 x float> %i.aj ; 2 uses
  %i.an = fneg fast <16 x float> %i.am            ; 2 uses
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.an, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ah)
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.an, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ao) ; 8 uses
  %i.aq = fmul fast <16 x float> %i.ap, %i.ap
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3C088908))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3D2AA9C1))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3E2AAAAA))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float 5.000000e-01))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.ap)
  %i.ax = fadd fast <16 x float> %i.aw, splat (float 1.000000e+00)
  %i.ay = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.am, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.az = shl <16 x i32> %i.ay, splat (i32 23)
  %i.ba = add <16 x i32> %i.az, splat (i32 1065353216)
  %i.bb = bitcast <16 x i32> %i.ba to <16 x float>
  %i.bc = fmul fast <16 x float> %i.ax, %i.bb
  %i.bd = fadd fast <16 x float> %i.bc, splat (float 1.000000e+00)
  %i.be = shufflevector <16 x float> %i.y, <16 x float> %i.z, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bf = fneg fast <16 x float> %i.be
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bg, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bj = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bi, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bk = fcmp fast ogt <16 x float> %i.bj, %i.bi
  %i.bl = fadd fast <16 x float> %i.bj, splat (float -1.000000e+00)
  %i.bm = select fast <16 x i1> %i.bk, <16 x float> %i.bl, <16 x float> %i.bj ; 2 uses
  %i.bn = fneg fast <16 x float> %i.bm            ; 2 uses
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bn, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bh)
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bn, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bo) ; 8 uses
  %i.bq = fmul fast <16 x float> %i.bp, %i.bp
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3C088908))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3D2AA9C1))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3E2AAAAA))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float 5.000000e-01))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.bp)
  %i.bx = fadd fast <16 x float> %i.bw, splat (float 1.000000e+00)
  %i.by = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bz = shl <16 x i32> %i.by, splat (i32 23)
  %i.ca = add <16 x i32> %i.bz, splat (i32 1065353216)
  %i.cb = bitcast <16 x i32> %i.ca to <16 x float>
  %i.cc = fmul fast <16 x float> %i.bx, %i.cb
  %i.cd = fadd fast <16 x float> %i.cc, splat (float 1.000000e+00)
  %i.ce = fneg fast <16 x float> %i.ad
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ci = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ch, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cj = fcmp fast ogt <16 x float> %i.ci, %i.ch
  %i.ck = fadd fast <16 x float> %i.ci, splat (float -1.000000e+00)
  %i.cl = select fast <16 x i1> %i.cj, <16 x float> %i.ck, <16 x float> %i.ci ; 2 uses
  %i.cm = fneg fast <16 x float> %i.cl            ; 2 uses
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cm, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cg)
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cm, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cn) ; 8 uses
  %i.cp = fmul fast <16 x float> %i.co, %i.co
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3C088908))
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3D2AA9C1))
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3E2AAAAA))
  %i.cu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float 5.000000e-01))
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.co)
  %i.cw = fadd fast <16 x float> %i.cv, splat (float 1.000000e+00)
  %i.cx = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cy = shl <16 x i32> %i.cx, splat (i32 23)
  %i.cz = add <16 x i32> %i.cy, splat (i32 1065353216)
  %i.da = bitcast <16 x i32> %i.cz to <16 x float>
  %i.db = fmul fast <16 x float> %i.cw, %i.da
  %i.dc = fadd fast <16 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = fmul fast <16 x float> %i.ae, splat (float -2.000000e+00)
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.df = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.de, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.dg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.df, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dh = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dg, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.di = fcmp fast ogt <16 x float> %i.dh, %i.dg
  %i.dj = fadd fast <16 x float> %i.dh, splat (float -1.000000e+00)
  %i.dk = select fast <16 x i1> %i.di, <16 x float> %i.dj, <16 x float> %i.dh ; 2 uses
  %i.dl = fneg fast <16 x float> %i.dk            ; 2 uses
  %i.dm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dl, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.df)
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dl, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dm) ; 8 uses
  %i.do = fmul fast <16 x float> %i.dn, %i.dn
  %i.dp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3C088908))
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3D2AA9C1))
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dr, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3E2AAAAA))
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float 5.000000e-01))
  %i.du = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dt, <16 x float> nofpclass(nan inf) %i.do, <16 x float> nofpclass(nan inf) %i.dn)
  %i.dv = fadd fast <16 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dx = shl <16 x i32> %i.dw, splat (i32 23)
  %i.dy = add <16 x i32> %i.dx, splat (i32 1065353216)
  %i.dz = bitcast <16 x i32> %i.dy to <16 x float>
  %i.ea = fmul fast <16 x float> %i.dv, %i.dz
  %i.eb = fadd fast <16 x float> %i.ea, splat (float 1.000000e+00)
  %i.ec = fdiv fast <16 x float> splat (float 1.000000e+00), %i.eb
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.ee = load ptr, ptr %4, align 8, !tbaa !35
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.p ; 2 uses
  %i.eg = load <16 x float>, ptr %i.ef, align 1, !tbaa !25
  %i.eh = fdiv fast <16 x float> %i.eg, %i.cd
  %i.ei = fdiv fast <16 x float> %i.ed, %i.bd
  %i.ej = fadd fast <16 x float> %i.ei, %i.eh     ; 2 uses
  %i.ek = fmul fast <16 x float> %i.ej, splat (float -2.000000e+00)
  %i.el = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ek, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.el, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.en = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.eo = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.en, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ep = fcmp fast ogt <16 x float> %i.eo, %i.en
  %i.eq = fadd fast <16 x float> %i.eo, splat (float -1.000000e+00)
  %i.er = select fast <16 x i1> %i.ep, <16 x float> %i.eq, <16 x float> %i.eo ; 2 uses
  %i.es = fneg fast <16 x float> %i.er            ; 2 uses
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.es, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.em)
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.es, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.et) ; 8 uses
  %i.ev = fmul fast <16 x float> %i.eu, %i.eu
  %i.ew = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ex = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3C088908))
  %i.ey = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3D2AA9C1))
  %i.ez = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ey, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3E2AAAAA))
  %i.fa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ez, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float 5.000000e-01))
  %i.fb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fa, <16 x float> nofpclass(nan inf) %i.ev, <16 x float> nofpclass(nan inf) %i.eu)
  %i.fc = fadd fast <16 x float> %i.fb, splat (float 1.000000e+00)
  %i.fd = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.er, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fe = shl <16 x i32> %i.fd, splat (i32 23)
  %i.ff = add <16 x i32> %i.fe, splat (i32 1065353216)
  %i.fg = bitcast <16 x i32> %i.ff to <16 x float>
  %i.fh = fmul fast <16 x float> %i.fc, %i.fg
  %i.fi = fadd fast <16 x float> %i.fh, splat (float 1.000000e+00)
  %i.fj = fdiv fast <16 x float> splat (float 1.000000e+00), %i.fi
  %i.fk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.fl = fdiv fast <16 x float> %i.fk, %i.dc     ; 2 uses
  store <16 x float> %i.ej, ptr %i.ef, align 1, !tbaa !25
  %i.fm = load i32, ptr %5, align 4, !tbaa !12
  %i.fn = load i32, ptr %6, align 4, !tbaa !12
  %i.fo = icmp eq i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fp = load ptr, ptr %7, align 8, !tbaa !35
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.p
  store <16 x float> %i.fl, ptr %i.fq, align 1, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.fr = load ptr, ptr %.sink, align 8, !tbaa !35
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.p
  store <16 x float> %i.fl, ptr %i.fs, align 1, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !12
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !12
end_hunk_2
