Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86?download=true
inline.NumInlined: 29
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK4ncnn8LSTM_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.02223.i.i.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.i.i.preheader ], [ %i.di, %._crit_edge.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod549)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.0924.i.i.epil = phi ptr [ %i.do, %.lr.ph.i.i.epil ], [ %.0924.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.epil = phi <4 x float> [ %i.dn, %.lr.ph.i.i.epil ], [ %.02223.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.dk = load <4 x i32>, ptr %.0924.i.i.epil, align 1, !tbaa !71
  %i.dl = and <4 x i32> %i.dk, splat (i32 2147483647)
  %i.dm = bitcast <4 x i32> %i.dl to <4 x float>
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.02223.i.i.epil, <4 x float> nofpclass(nan inf) %i.dm) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0924.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !210

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.h
  %.022.lcssa.i.i = phi <4 x float> [ zeroinitializer, %bb.h ], [ %i.di, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.dn, %.lr.ph.i.i.epil ] ; 2 uses
  %.09.lcssa.i.i = phi ptr [ %i.ci, %bb.h ], [ %i.dj, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.do, %.lr.ph.i.i.epil ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ 0, %bb.h ], [ %i.bx, %.lr.ph.i.i.epil ], [ %i.bx, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 4 uses
  %i.dp = shufflevector <4 x float> %.022.lcssa.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.022.lcssa.i.i, <4 x float> nofpclass(nan inf) %i.dp) ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.dr)
  %i.dt = extractelement <4 x float> %i.ds, i64 0
  %.sroa.speculated14.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dt, float 0.000000e+00) ; 3 uses
  %i.du = icmp slt i32 %.0.lcssa.i.i, %i.bs
  br i1 %i.du, label %.lr.ph32.i.i.preheader, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i

.lr.ph32.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.dv = xor i32 %.0.lcssa.i.i, -1
  %i.dw = add i32 %i.bs, %i.dv                    ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check524 = icmp ult i32 %i.dw, 7
  br i1 %min.iters.check524, label %.lr.ph32.i.i.preheader541, label %vector.ph525

vector.ph525:                                     ; preds = %.lr.ph32.i.i.preheader
  %n.vec526 = and i64 %i.dy, 8589934584           ; 4 uses
  %i.dz = trunc i64 %n.vec526 to i32
  %i.ea = add i32 %.0.lcssa.i.i, %i.dz
  %i.eb = shl nuw nsw i64 %n.vec526, 2
  %i.ec = getelementptr i8, ptr %.09.lcssa.i.i, i64 %i.eb
  %broadcast.splatinsert527 = insertelement <4 x float> poison, float %.sroa.speculated14.i.i, i64 0
  %broadcast.splat528 = shufflevector <4 x float> %broadcast.splatinsert527, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph525
  %index530 = phi i64 [ 0, %vector.ph525 ], [ %index.next535, %vector.body529 ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat528, %vector.ph525 ], [ %i.eh, %vector.body529 ]
  %vec.phi531 = phi <4 x float> [ %broadcast.splat528, %vector.ph525 ], [ %i.ei, %vector.body529 ]
  %i.ed = shl i64 %index530, 2
  %next.gep532 = getelementptr i8, ptr %.09.lcssa.i.i, i64 %i.ed ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep532, i64 16
  %wide.load533 = load <4 x float>, ptr %next.gep532, align 4, !tbaa !60
  %wide.load534 = load <4 x float>, ptr %i.ee, align 4, !tbaa !60
  %i.ef = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load533)
  %i.eg = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load534)
  %i.eh = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.ef) ; 2 uses
  %i.ei = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi531, <4 x float> %i.eg) ; 2 uses
  %index.next535 = add nuw i64 %index530, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next535, %n.vec526
  br i1 %i.ej, label %middle.block536, label %vector.body529, !llvm.loop !211

middle.block536:                                  ; preds = %vector.body529
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.eh, <4 x float> %i.ei)
  %i.ek = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n537 = icmp eq i64 %i.dy, %n.vec526
  br i1 %cmp.n537, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, label %.lr.ph32.i.i.preheader541

.lr.ph32.i.i.preheader541:                        ; preds = %.lr.ph32.i.i.preheader, %middle.block536
  %.130.i.i.ph = phi i32 [ %.0.lcssa.i.i, %.lr.ph32.i.i.preheader ], [ %i.ea, %middle.block536 ]
  %.11029.i.i.ph = phi ptr [ %.09.lcssa.i.i, %.lr.ph32.i.i.preheader ], [ %i.ec, %middle.block536 ]
  %.02128.i.i.ph = phi float [ %.sroa.speculated14.i.i, %.lr.ph32.i.i.preheader ], [ %i.ek, %middle.block536 ]
  br label %.lr.ph32.i.i

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i.preheader541, %.lr.ph32.i.i
  %.130.i.i = phi i32 [ %i.eo, %.lr.ph32.i.i ], [ %.130.i.i.ph, %.lr.ph32.i.i.preheader541 ]
  %.11029.i.i = phi ptr [ %i.en, %.lr.ph32.i.i ], [ %.11029.i.i.ph, %.lr.ph32.i.i.preheader541 ] ; 2 uses
  %.02128.i.i = phi float [ %.sroa.speculated.i.i, %.lr.ph32.i.i ], [ %.02128.i.i.ph, %.lr.ph32.i.i.preheader541 ]
  %i.el = load float, ptr %.11029.i.i, align 4, !tbaa !60
  %i.em = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.el)
  %.sroa.speculated.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.02128.i.i, float %i.em) ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.11029.i.i, i64 4
  %i.eo = add nuw nsw i32 %.130.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.eo, %i.bs
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, label %.lr.ph32.i.i, !llvm.loop !212

_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i: ; preds = %.lr.ph32.i.i, %middle.block536, %._crit_edge.i.i
  %.021.lcssa.i.i = phi float [ %.sroa.speculated14.i.i, %._crit_edge.i.i ], [ %i.ek, %middle.block536 ], [ %.sroa.speculated.i.i, %.lr.ph32.i.i ] ; 2 uses
  %i.ep = fmul fast float %.021.lcssa.i.i, f0x3C010204
  %i.eq = load ptr, ptr %7, align 8, !tbaa !23
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i
  store float %i.ep, ptr %i.er, align 4, !tbaa !60
  %i.es = fdiv fast float 1.270000e+02, %.021.lcssa.i.i ; 5 uses
  %i.et = insertelement <4 x float> poison, float %i.es, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.bw, label %.lr.ph.i28.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i28.i, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i
  %.016.lcssa.i.i = phi ptr [ %i.ci, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ], [ %i.gl, %.lr.ph.i28.i ] ; 6 uses
  %.014.lcssa.i.i = phi ptr [ %i.cp, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ], [ %i.gm, %.lr.ph.i28.i ] ; 6 uses
  %.0.lcssa.i25.i = phi i32 [ 0, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ], [ %i.bx, %.lr.ph.i28.i ] ; 6 uses
  %i.ev = icmp slt i32 %.0.lcssa.i25.i, %i.bs
  br i1 %i.ev, label %.lr.ph29.i.i.preheader, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i

.lr.ph29.i.i.preheader:                           ; preds = %.preheader.i.i
  %i.ew = xor i32 %.0.lcssa.i25.i, -1
  %i.ex = add i32 %i.bs, %i.ew                    ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ex, 3
  br i1 %min.iters.check, label %.lr.ph29.i.i.preheader540, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph29.i.i.preheader
  %scevgep = getelementptr i8, ptr %.014.lcssa.i.i, i64 1
  %i.fa = xor i32 %.0.lcssa.i25.i, -1
  %i.fb = add i32 %i.bs, %i.fa
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %scevgep517 = getelementptr i8, ptr %scevgep, i64 %i.fc
  %scevgep518 = getelementptr i8, ptr %.016.lcssa.i.i, i64 4
  %i.fd = shl nuw nsw i64 %i.fc, 2
  %scevgep519 = getelementptr i8, ptr %scevgep518, i64 %i.fd
  %bound0 = icmp ult ptr %.014.lcssa.i.i, %scevgep519
  %bound1 = icmp ult ptr %.016.lcssa.i.i, %scevgep517
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph29.i.i.preheader540, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ez, 8589934588              ; 5 uses
  %i.fe = trunc i64 %n.vec to i32
  %i.ff = add i32 %.0.lcssa.i25.i, %i.fe
  %i.fg = getelementptr i8, ptr %.014.lcssa.i.i, i64 %n.vec
  %i.fh = shl nuw nsw i64 %n.vec, 2
  %i.fi = getelementptr i8, ptr %.016.lcssa.i.i, i64 %i.fh
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.es, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.014.lcssa.i.i, i64 %index
  %i.fj = shl i64 %index, 2
  %next.gep520 = getelementptr i8, ptr %.016.lcssa.i.i, i64 %i.fj
  %wide.load = load <4 x float>, ptr %next.gep520, align 4, !tbaa !60, !alias.scope !243
  %i.fk = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.fl = call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.fk)
  %i.fm = fptosi <4 x float> %i.fl to <4 x i32>
  %i.fn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fm, <4 x i32> splat (i32 -127))
  %i.fo = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fn, <4 x i32> splat (i32 127))
  %i.fp = trunc nsw <4 x i32> %i.fo to <4 x i8>
  store <4 x i8> %i.fp, ptr %next.gep, align 1, !tbaa !71, !alias.scope !244, !noalias !243
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph29.i.i.preheader540

.lr.ph29.i.i.preheader540:                        ; preds = %vector.memcheck, %.lr.ph29.i.i.preheader, %middle.block
  %.128.i.i.ph = phi i32 [ %.0.lcssa.i25.i, %vector.memcheck ], [ %.0.lcssa.i25.i, %.lr.ph29.i.i.preheader ], [ %i.ff, %middle.block ] ; 4 uses
  %.11527.i.i.ph = phi ptr [ %.014.lcssa.i.i, %vector.memcheck ], [ %.014.lcssa.i.i, %.lr.ph29.i.i.preheader ], [ %i.fg, %middle.block ] ; 3 uses
  %.11726.i.i.ph = phi ptr [ %.016.lcssa.i.i, %vector.memcheck ], [ %.016.lcssa.i.i, %.lr.ph29.i.i.preheader ], [ %i.fi, %middle.block ] ; 3 uses
  %i.fr = sub i32 %i.bs, %.128.i.i.ph
  %.neg = add i32 %.128.i.i.ph, 1
  %xtraiter550 = and i32 %i.fr, 1
  %lcmp.mod551.not = icmp eq i32 %xtraiter550, 0
  br i1 %lcmp.mod551.not, label %.lr.ph29.i.i.prol.loopexit, label %.lr.ph29.i.i.prol

.lr.ph29.i.i.prol:                                ; preds = %.lr.ph29.i.i.preheader540
  %i.fs = getelementptr inbounds nuw i8, ptr %.11726.i.i.ph, i64 4
  %i.ft = load float, ptr %.11726.i.i.ph, align 4, !tbaa !60
  %i.fu = fmul fast float %i.ft, %i.es
  %i.fv = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fu)
  %i.fw = fptosi float %i.fv to i32
  %spec.select.i19.i.i.prol = call i32 @llvm.smax.i32(i32 %i.fw, i32 -127)
  %.0.i20.i.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i19.i.i.prol, i32 127)
  %.0.i.i.i.prol = trunc nsw i32 %.0.i20.i.i.prol to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %.11527.i.i.ph, i64 1
  store i8 %.0.i.i.i.prol, ptr %.11527.i.i.ph, align 1, !tbaa !71
  %i.fy = add nuw nsw i32 %.128.i.i.ph, 1
  br label %.lr.ph29.i.i.prol.loopexit

.lr.ph29.i.i.prol.loopexit:                       ; preds = %.lr.ph29.i.i.prol, %.lr.ph29.i.i.preheader540
  %.128.i.i.unr = phi i32 [ %.128.i.i.ph, %.lr.ph29.i.i.preheader540 ], [ %i.fy, %.lr.ph29.i.i.prol ]
  %.11527.i.i.unr = phi ptr [ %.11527.i.i.ph, %.lr.ph29.i.i.preheader540 ], [ %i.fx, %.lr.ph29.i.i.prol ]
  %.11726.i.i.unr = phi ptr [ %.11726.i.i.ph, %.lr.ph29.i.i.preheader540 ], [ %i.fs, %.lr.ph29.i.i.prol ]
  %i.fz = icmp eq i32 %i.bs, %.neg
  br i1 %i.fz, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph29.i.i

.lr.ph.i28.i:                                     ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, %.lr.ph.i28.i
  %.023.i.i = phi i32 [ %i.gn, %.lr.ph.i28.i ], [ 0, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ]
  %.01422.i.i = phi ptr [ %i.gm, %.lr.ph.i28.i ], [ %i.cp, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ] ; 2 uses
  %.01621.i.i = phi ptr [ %i.gl, %.lr.ph.i28.i ], [ %i.ci, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ] ; 2 uses
  %i.ga = load <4 x float>, ptr %.01621.i.i, align 1, !tbaa !71
  %i.gb = fmul fast <4 x float> %i.ga, %i.eu      ; 2 uses
  %i.gc = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.gb)
  %i.gd = fadd fast <4 x float> %i.gc, %i.gb
  %i.ge = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gd) ; 2 uses
  %i.gf = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ge, <4 x i32> %i.ge)
  %i.gg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gf, <8 x i16> splat (i16 -127))
  %i.gh = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gg, <8 x i16> splat (i16 127))
  %i.gi = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gh, <8 x i16> poison)
  %i.gj = bitcast <16 x i8> %i.gi to <4 x i32>
  %i.gk = extractelement <4 x i32> %i.gj, i64 0
  store i32 %i.gk, ptr %.01422.i.i, align 4, !tbaa !42
  %i.gl = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.01422.i.i, i64 4 ; 2 uses
  %i.gn = add nuw nsw i32 %.023.i.i, 4            ; 2 uses
  %i.go = or disjoint i32 %i.gn, 3
  %i.gp = icmp slt i32 %i.go, %i.bs
  br i1 %i.gp, label %.lr.ph.i28.i, label %.preheader.i.i, !llvm.loop !3

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i.prol.loopexit, %.lr.ph29.i.i
  %.128.i.i = phi i32 [ %i.hc, %.lr.ph29.i.i ], [ %.128.i.i.unr, %.lr.ph29.i.i.prol.loopexit ]
  %.11527.i.i = phi ptr [ %i.hb, %.lr.ph29.i.i ], [ %.11527.i.i.unr, %.lr.ph29.i.i.prol.loopexit ] ; 3 uses
  %.11726.i.i = phi ptr [ %i.gw, %.lr.ph29.i.i ], [ %.11726.i.i.unr, %.lr.ph29.i.i.prol.loopexit ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.11726.i.i, i64 4
  %i.gr = load float, ptr %.11726.i.i, align 4, !tbaa !60
  %i.gs = fmul fast float %i.gr, %i.es
  %i.gt = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.gs)
  %i.gu = fptosi float %i.gt to i32
  %spec.select.i19.i.i = call i32 @llvm.smax.i32(i32 %i.gu, i32 -127)
  %.0.i20.i.i = call i32 @llvm.smin.i32(i32 %spec.select.i19.i.i, i32 127)
  %.0.i.i.i = trunc nsw i32 %.0.i20.i.i to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %.11527.i.i, i64 1
  store i8 %.0.i.i.i, ptr %.11527.i.i, align 1, !tbaa !71
  %i.gw = getelementptr inbounds nuw i8, ptr %.11726.i.i, i64 8
  %i.gx = load float, ptr %i.gq, align 4, !tbaa !60
  %i.gy = fmul fast float %i.gx, %i.es
  %i.gz = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.gy)
  %i.ha = fptosi float %i.gz to i32
  %spec.select.i19.i.i.1 = call i32 @llvm.smax.i32(i32 %i.ha, i32 -127)
  %.0.i20.i.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i19.i.i.1, i32 127)
  %.0.i.i.i.1 = trunc nsw i32 %.0.i20.i.i.1 to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %.11527.i.i, i64 2
  store i8 %.0.i.i.i.1, ptr %i.gv, align 1, !tbaa !71
  %i.hc = add nuw nsw i32 %.128.i.i, 2            ; 2 uses
  %exitcond.not.i27.i.1 = icmp eq i32 %i.hc, %i.bs
  br i1 %exitcond.not.i27.i.1, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph29.i.i, !llvm.loop !217

_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i: ; preds = %.lr.ph29.i.i.prol.loopexit, %.lr.ph29.i.i, %middle.block, %.preheader.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN4ncnnL21lstm_dynamic_quantizeERKNS_3MatERS0_S3_RKNS_6OptionE.exit, label %bb.h, !llvm.loop !4

_ZN4ncnnL21lstm_dynamic_quantizeERKNS_3MatERS0_S3_RKNS_6OptionE.exit: ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, %.noexc366
  %i.hd = load i32, ptr %i.c, align 8, !tbaa !41  ; 3 uses
  %switch = icmp ult i32 %i.hd, 2
  br i1 %switch, label %bb.i, label %bb.bo

bb.i:                                             ; preds = %_ZN4ncnnL21lstm_dynamic_quantizeERKNS_3MatERS0_S3_RKNS_6OptionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 880
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !62, !noalias !245 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !52, !noalias !245 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 932
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !63, !noalias !245
  %i.hl = load ptr, ptr %i.he, align 8, !tbaa !23, !noalias !245
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !56, !noalias !245 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !57, !noalias !245
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !22, !noalias !245
  store ptr %i.hl, ptr %8, align 8, !tbaa !23, !alias.scope !245
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr null, ptr %i.hs, align 8, !tbaa !21, !alias.scope !245
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !56, !alias.scope !245
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %i.hp, ptr %i.hu, align 8, !tbaa !57, !alias.scope !245
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.hr, ptr %i.hv, align 8, !tbaa !22, !alias.scope !245
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %i.hg, ptr %i.hx, align 4, !tbaa !62, !alias.scope !245
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %i.hi, ptr %i.hy, align 8, !tbaa !52, !alias.scope !245
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 1, ptr %i.hz, align 4, !tbaa !63, !alias.scope !245
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 %i.hk, ptr %i.ia, align 8, !tbaa !58, !alias.scope !245
  %i.ib = sext i32 %i.hg to i64
  %i.ic = sext i32 %i.hi to i64
  %i.id = mul nsw i64 %i.ic, %i.ib                ; 2 uses
  %i.ie = mul i64 %i.hn, %i.id
  %i.if = add i64 %i.ie, 15
  %i.ig = and i64 %i.if, -16
  %i.ih = udiv i64 %i.ig, %i.hn
  %i.ii = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i64 %i.ih, ptr %i.ii, align 8, !tbaa !24, !alias.scope !245
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !64, !noalias !245 ; 2 uses
  %i.il = add nsw i32 %i.ik, -1
  store i32 %i.il, ptr %i.hw, align 8, !tbaa !64, !alias.scope !245
  %i.im = icmp eq i32 %i.ik, 4
  br i1 %i.im, label %bb.j, label %_ZNK4ncnn3Mat7channelEi.exit361

bb.j:                                             ; preds = %bb.i
  store i64 %i.id, ptr %i.ii, align 8, !tbaa !24, !alias.scope !245
  br label %_ZNK4ncnn3Mat7channelEi.exit361

_ZNK4ncnn3Mat7channelEi.exit361:                  ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 952
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !62, !noalias !246 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !52, !noalias !246 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1004
  %i.it = load i32, ptr %i.is, align 4, !tbaa !63, !noalias !246
  %i.iu = load ptr, ptr %i.in, align 8, !tbaa !23, !noalias !246
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !56, !noalias !246 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !57, !noalias !246
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !22, !noalias !246
  store ptr %i.iu, ptr %9, align 8, !tbaa !23, !alias.scope !246
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr null, ptr %i.jb, align 8, !tbaa !21, !alias.scope !246
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.iw, ptr %i.jc, align 8, !tbaa !56, !alias.scope !246
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %i.iy, ptr %i.jd, align 8, !tbaa !57, !alias.scope !246
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %i.ja, ptr %i.je, align 8, !tbaa !22, !alias.scope !246
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 %i.ip, ptr %i.jg, align 4, !tbaa !62, !alias.scope !246
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 %i.ir, ptr %i.jh, align 8, !tbaa !52, !alias.scope !246
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 1, ptr %i.ji, align 4, !tbaa !63, !alias.scope !246
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 %i.it, ptr %i.jj, align 8, !tbaa !58, !alias.scope !246
  %i.jk = sext i32 %i.ip to i64
  %i.jl = sext i32 %i.ir to i64
  %i.jm = mul nsw i64 %i.jl, %i.jk                ; 2 uses
  %i.jn = mul i64 %i.iw, %i.jm
  %i.jo = add i64 %i.jn, 15
  %i.jp = and i64 %i.jo, -16
  %i.jq = udiv i64 %i.jp, %i.iw
  %i.jr = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 %i.jq, ptr %i.jr, align 8, !tbaa !24, !alias.scope !246
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !64, !noalias !246 ; 2 uses
  %i.ju = add nsw i32 %i.jt, -1
  store i32 %i.ju, ptr %i.jf, align 8, !tbaa !64, !alias.scope !246
  %i.jv = icmp eq i32 %i.jt, 4
  br i1 %i.jv, label %bb.k, label %_ZNK4ncnn3Mat7channelEi.exit360

bb.k:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit361
  store i64 %i.jm, ptr %i.jr, align 8, !tbaa !24, !alias.scope !246
  br label %_ZNK4ncnn3Mat7channelEi.exit360

_ZNK4ncnn3Mat7channelEi.exit360:                  ; preds = %bb.k, %_ZNK4ncnn3Mat7channelEi.exit361
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 736
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !62, !noalias !247 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !52, !noalias !247 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !63, !noalias !247
  %i.kd = load ptr, ptr %i.jw, align 8, !tbaa !23, !noalias !247
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !56, !noalias !247 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !57, !noalias !247
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !22, !noalias !247
  store ptr %i.kd, ptr %10, align 8, !tbaa !23, !alias.scope !247
  %i.kk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr null, ptr %i.kk, align 8, !tbaa !21, !alias.scope !247
  %i.kl = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.kf, ptr %i.kl, align 8, !tbaa !56, !alias.scope !247
  %i.km = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %i.kh, ptr %i.km, align 8, !tbaa !57, !alias.scope !247
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store ptr %i.kj, ptr %i.kn, align 8, !tbaa !22, !alias.scope !247
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.kp = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 %i.jy, ptr %i.kp, align 4, !tbaa !62, !alias.scope !247
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %i.ka, ptr %i.kq, align 8, !tbaa !52, !alias.scope !247
  %i.kr = getelementptr inbounds nuw i8, ptr %10, i64 52
  store i32 1, ptr %i.kr, align 4, !tbaa !63, !alias.scope !247
  %i.ks = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i32 %i.kc, ptr %i.ks, align 8, !tbaa !58, !alias.scope !247
  %i.kt = sext i32 %i.jy to i64
  %i.ku = sext i32 %i.ka to i64
  %i.kv = mul nsw i64 %i.ku, %i.kt                ; 2 uses
  %i.kw = mul i64 %i.kf, %i.kv
  %i.kx = add i64 %i.kw, 15
  %i.ky = and i64 %i.kx, -16
end_hunk_0
begin_hunk_1_@_ZN4ncnnL4lstmERKNS_3MatERS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.ek, label %.lr.ph168.preheader, label %._crit_edge169

.lr.ph168.preheader:                              ; preds = %.preheader
  %xtraiter238 = and i32 %i.eh, 3                 ; 2 uses
  %lcmp.mod239.not = icmp eq i32 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.lr.ph168.prol.loopexit, label %.lr.ph168.prol

.lr.ph168.prol:                                   ; preds = %.lr.ph168.preheader, %.lr.ph168.prol
  %.1167.prol = phi ptr [ %i.er, %.lr.ph168.prol ], [ %.071.lcssa, %.lr.ph168.preheader ] ; 2 uses
  %.3166.prol = phi i32 [ %i.et, %.lr.ph168.prol ], [ %.2.lcssa, %.lr.ph168.preheader ]
  %.177165.prol = phi ptr [ %i.es, %.lr.ph168.prol ], [ %.076.lcssa, %.lr.ph168.preheader ] ; 2 uses
  %.3124164.prol = phi <4 x float> [ %i.eq, %.lr.ph168.prol ], [ %.2123.lcssa, %.lr.ph168.preheader ]
  %prol.iter240 = phi i32 [ %prol.iter240.next, %.lr.ph168.prol ], [ 0, %.lr.ph168.preheader ]
  %i.el = load float, ptr %.1167.prol, align 1, !tbaa !71
  %i.em = insertelement <4 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = load <4 x float>, ptr %.177165.prol, align 1, !tbaa !71
  %i.ep = fmul fast <4 x float> %i.en, %i.eo
  %i.eq = fadd fast <4 x float> %i.ep, %.3124164.prol ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.1167.prol, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.177165.prol, i64 16 ; 2 uses
  %i.et = add nuw nsw i32 %.3166.prol, 1          ; 2 uses
  %prol.iter240.next = add i32 %prol.iter240, 1   ; 2 uses
  %prol.iter240.cmp.not = icmp eq i32 %prol.iter240.next, %xtraiter238
  br i1 %prol.iter240.cmp.not, label %.lr.ph168.prol.loopexit, label %.lr.ph168.prol, !llvm.loop !261

.lr.ph168.prol.loopexit:                          ; preds = %.lr.ph168.prol, %.lr.ph168.preheader
  %.lcssa237.unr = phi <4 x float> [ poison, %.lr.ph168.preheader ], [ %i.eq, %.lr.ph168.prol ]
  %.1167.unr = phi ptr [ %.071.lcssa, %.lr.ph168.preheader ], [ %i.er, %.lr.ph168.prol ]
  %.3166.unr = phi i32 [ %.2.lcssa, %.lr.ph168.preheader ], [ %i.et, %.lr.ph168.prol ]
  %.177165.unr = phi ptr [ %.076.lcssa, %.lr.ph168.preheader ], [ %i.es, %.lr.ph168.prol ]
  %.3124164.unr = phi <4 x float> [ %.2123.lcssa, %.lr.ph168.preheader ], [ %i.eq, %.lr.ph168.prol ]
  %i.eu = sub i32 %.2.lcssa, %i.eh
  %i.ev = icmp ugt i32 %i.eu, -4
  br i1 %i.ev, label %._crit_edge169, label %.lr.ph168

.lr.ph155:                                        ; preds = %._crit_edge, %.lr.ph155
  %.071153 = phi ptr [ %i.ga, %.lr.ph155 ], [ %i.eg, %._crit_edge ] ; 5 uses
  %.2152 = phi i32 [ %i.gc, %.lr.ph155 ], [ 0, %._crit_edge ]
  %.076151 = phi ptr [ %i.gb, %.lr.ph155 ], [ %i.aq, %._crit_edge ] ; 5 uses
  %.1116150 = phi <4 x float> [ %i.fz, %.lr.ph155 ], [ %.0115.lcssa, %._crit_edge ]
  %.1118149 = phi <4 x float> [ %i.fx, %.lr.ph155 ], [ %.0117.lcssa, %._crit_edge ]
  %.1120148 = phi <4 x float> [ %i.fv, %.lr.ph155 ], [ %.0119.lcssa, %._crit_edge ]
  %.2123147 = phi <4 x float> [ %i.ft, %.lr.ph155 ], [ %.1122.lcssa, %._crit_edge ]
  %i.ew = load float, ptr %.071153, align 1, !tbaa !71
  %i.ex = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = getelementptr inbounds nuw i8, ptr %.071153, i64 4
  %i.fa = load float, ptr %i.ez, align 1, !tbaa !71
  %i.fb = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = getelementptr inbounds nuw i8, ptr %.071153, i64 8
  %i.fe = load float, ptr %i.fd, align 1, !tbaa !71
  %i.ff = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = getelementptr inbounds nuw i8, ptr %.071153, i64 12
  %i.fi = load float, ptr %i.fh, align 1, !tbaa !71
  %i.fj = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = load <4 x float>, ptr %.076151, align 1, !tbaa !71
  %i.fm = getelementptr inbounds nuw i8, ptr %.076151, i64 16
  %i.fn = load <4 x float>, ptr %i.fm, align 1, !tbaa !71
  %i.fo = getelementptr inbounds nuw i8, ptr %.076151, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 1, !tbaa !71
  %i.fq = getelementptr inbounds nuw i8, ptr %.076151, i64 48
  %i.fr = load <4 x float>, ptr %i.fq, align 1, !tbaa !71
  %i.fs = fmul fast <4 x float> %i.fl, %i.ey
  %i.ft = fadd fast <4 x float> %i.fs, %.2123147  ; 2 uses
  %i.fu = fmul fast <4 x float> %i.fn, %i.fc
  %i.fv = fadd fast <4 x float> %i.fu, %.1120148  ; 2 uses
  %i.fw = fmul fast <4 x float> %i.fp, %i.fg
  %i.fx = fadd fast <4 x float> %i.fw, %.1118149  ; 2 uses
  %i.fy = fmul fast <4 x float> %i.fr, %i.fk
  %i.fz = fadd fast <4 x float> %i.fy, %.1116150  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.071153, i64 16 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.076151, i64 64 ; 2 uses
  %i.gc = add nuw nsw i32 %.2152, 4               ; 2 uses
  %i.gd = or disjoint i32 %i.gc, 3
  %i.ge = icmp slt i32 %i.gd, %i.eh
  br i1 %i.ge, label %.lr.ph155, label %.preheader.loopexit, !llvm.loop !262

.lr.ph168:                                        ; preds = %.lr.ph168.prol.loopexit, %.lr.ph168
  %.1167 = phi ptr [ %i.hj, %.lr.ph168 ], [ %.1167.unr, %.lr.ph168.prol.loopexit ] ; 5 uses
  %.3166 = phi i32 [ %i.hl, %.lr.ph168 ], [ %.3166.unr, %.lr.ph168.prol.loopexit ]
  %.177165 = phi ptr [ %i.hk, %.lr.ph168 ], [ %.177165.unr, %.lr.ph168.prol.loopexit ] ; 5 uses
  %.3124164 = phi <4 x float> [ %i.hi, %.lr.ph168 ], [ %.3124164.unr, %.lr.ph168.prol.loopexit ]
  %i.gf = load float, ptr %.1167, align 1, !tbaa !71
  %i.gg = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = load <4 x float>, ptr %.177165, align 1, !tbaa !71
  %i.gj = fmul fast <4 x float> %i.gh, %i.gi
  %i.gk = fadd fast <4 x float> %i.gj, %.3124164
  %i.gl = getelementptr inbounds nuw i8, ptr %.1167, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %.177165, i64 16
  %i.gn = load float, ptr %i.gl, align 1, !tbaa !71
  %i.go = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gq = load <4 x float>, ptr %i.gm, align 1, !tbaa !71
  %i.gr = fmul fast <4 x float> %i.gp, %i.gq
  %i.gs = fadd fast <4 x float> %i.gr, %i.gk
  %i.gt = getelementptr inbounds nuw i8, ptr %.1167, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.177165, i64 32
  %i.gv = load float, ptr %i.gt, align 1, !tbaa !71
  %i.gw = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = load <4 x float>, ptr %i.gu, align 1, !tbaa !71
  %i.gz = fmul fast <4 x float> %i.gx, %i.gy
  %i.ha = fadd fast <4 x float> %i.gz, %i.gs
  %i.hb = getelementptr inbounds nuw i8, ptr %.1167, i64 12
  %i.hc = getelementptr inbounds nuw i8, ptr %.177165, i64 48
  %i.hd = load float, ptr %i.hb, align 1, !tbaa !71
  %i.he = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hg = load <4 x float>, ptr %i.hc, align 1, !tbaa !71
  %i.hh = fmul fast <4 x float> %i.hf, %i.hg
  %i.hi = fadd fast <4 x float> %i.hh, %i.ha      ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.1167, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %.177165, i64 64
  %i.hl = add nuw nsw i32 %.3166, 4               ; 2 uses
  %exitcond190.not.3 = icmp eq i32 %i.hl, %i.eh
  br i1 %exitcond190.not.3, label %._crit_edge169, label %.lr.ph168, !llvm.loop !263

._crit_edge169:                                   ; preds = %.lr.ph168.prol.loopexit, %.lr.ph168, %.preheader
  %.3124.lcssa = phi <4 x float> [ %.2123.lcssa, %.preheader ], [ %.lcssa237.unr, %.lr.ph168.prol.loopexit ], [ %i.hi, %.lr.ph168 ]
  %i.hm = load ptr, ptr %12, align 8, !tbaa !23
  %i.hn = load i32, ptr %i.v, align 4, !tbaa !62
  %i.ho = sext i32 %i.hn to i64
  %i.hp = mul nsw i64 %i.ho, %i.af
  %i.hq = load i64, ptr %i.w, align 8, !tbaa !56
  %i.hr = mul i64 %i.hp, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hr
  %i.ht = fadd fast <4 x float> %.1118.lcssa, %.1120.lcssa
  %i.hu = fadd fast <4 x float> %i.ht, %.1116.lcssa
  %i.hv = fadd fast <4 x float> %i.hu, %.3124.lcssa
  store <4 x float> %i.hv, ptr %i.hs, align 1, !tbaa !71
  %i.hw = add nuw i32 %.0171, 1
  %exitcond191.not = icmp eq i32 %.0171, %i.l
  br i1 %exitcond191.not, label %._crit_edge174, label %bb.c

._crit_edge174:                                   ; preds = %._crit_edge169, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge174, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL4lstmERKNS_3MatERS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.h = load i32, ptr %0, align 4, !tbaa !42     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !42
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !42
  %i.k = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %.not187 = icmp sgt i32 %i.k, %i.j
  br i1 %.not187, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = shl nsw i64 %indvars.iv, 2               ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !23
  %i.r = load i32, ptr %i.l, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.p, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !56
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 2 uses
  %10 = load <8 x float>, ptr %i.w, align 1, !tbaa !71 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %11 = load <8 x float>, ptr %i.x, align 1, !tbaa !71 ; 2 uses
  %i.y = shufflevector <8 x float> %10, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.z = shufflevector <8 x float> %11, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aa = shufflevector <8 x float> %10, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ab = shufflevector <8 x float> %11, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ac = shufflevector <4 x float> %i.y, <4 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> %i.y, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ae = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.aa, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ag = fneg fast <4 x float> %i.ac
  %i.ah = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> splat (float f0x42B0C0A5))
  %i.ai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ah, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aj = fmul fast <4 x float> %i.ai, splat (float f0x3FB8AA3B)
  %i.ak = fadd fast <4 x float> %i.aj, splat (float 5.000000e-01) ; 2 uses
  %i.al = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ak)
  %i.am = sitofp fast <4 x i32> %i.al to <4 x float> ; 2 uses
  %i.an = fcmp fast olt <4 x float> %i.ak, %i.am
  %i.ao = select <4 x i1> %i.an, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ap = fsub fast <4 x float> %i.am, %i.ao      ; 2 uses
  %i.aq = fmul fast <4 x float> %i.ap, splat (float f0x3F317218)
  %i.ar = fsub fast <4 x float> %i.ai, %i.aq      ; 8 uses
  %i.as = fmul fast <4 x float> %i.ar, %i.ar
  %i.at = fmul fast <4 x float> %i.ar, splat (float f0x39506967)
  %i.au = fadd fast <4 x float> %i.at, splat (float f0x3AB743CE)
  %i.av = fmul fast <4 x float> %i.au, %i.ar
  %i.aw = fadd fast <4 x float> %i.av, splat (float f0x3C088908)
  %i.ax = fmul fast <4 x float> %i.aw, %i.ar
  %i.ay = fadd fast <4 x float> %i.ax, splat (float f0x3D2AA9C1)
  %i.az = fmul fast <4 x float> %i.ay, %i.ar
  %i.ba = fadd fast <4 x float> %i.az, splat (float f0x3E2AAAAA)
  %i.bb = fmul fast <4 x float> %i.ba, %i.ar
  %i.bc = fadd fast <4 x float> %i.bb, splat (float 5.000000e-01)
  %i.bd = fmul fast <4 x float> %i.as, %i.bc
  %i.be = fadd fast <4 x float> %i.ar, %i.bd
  %i.bf = fadd fast <4 x float> %i.be, splat (float 1.000000e+00)
  %i.bg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ap)
  %i.bh = shl <4 x i32> %i.bg, splat (i32 23)
  %i.bi = add <4 x i32> %i.bh, splat (i32 1065353216)
  %i.bj = bitcast <4 x i32> %i.bi to <4 x float>
  %i.bk = fmul fast <4 x float> %i.bf, %i.bj
  %i.bl = fadd fast <4 x float> %i.bk, splat (float 1.000000e+00)
  %i.bm = fneg fast <4 x float> %i.ad
  %i.bn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bm, <4 x float> splat (float f0x42B0C0A5))
  %i.bo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bp = fmul fast <4 x float> %i.bo, splat (float f0x3FB8AA3B)
  %i.bq = fadd fast <4 x float> %i.bp, splat (float 5.000000e-01) ; 2 uses
  %i.br = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bq)
  %i.bs = sitofp fast <4 x i32> %i.br to <4 x float> ; 2 uses
  %i.bt = fcmp fast olt <4 x float> %i.bq, %i.bs
  %i.bu = select <4 x i1> %i.bt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bv = fsub fast <4 x float> %i.bs, %i.bu      ; 2 uses
  %i.bw = fmul fast <4 x float> %i.bv, splat (float f0x3F317218)
  %i.bx = fsub fast <4 x float> %i.bo, %i.bw      ; 8 uses
  %i.by = fmul fast <4 x float> %i.bx, %i.bx
  %i.bz = fmul fast <4 x float> %i.bx, splat (float f0x39506967)
  %i.ca = fadd fast <4 x float> %i.bz, splat (float f0x3AB743CE)
  %i.cb = fmul fast <4 x float> %i.ca, %i.bx
  %i.cc = fadd fast <4 x float> %i.cb, splat (float f0x3C088908)
  %i.cd = fmul fast <4 x float> %i.cc, %i.bx
  %i.ce = fadd fast <4 x float> %i.cd, splat (float f0x3D2AA9C1)
  %i.cf = fmul fast <4 x float> %i.ce, %i.bx
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0x3E2AAAAA)
  %i.ch = fmul fast <4 x float> %i.cg, %i.bx
  %i.ci = fadd fast <4 x float> %i.ch, splat (float 5.000000e-01)
  %i.cj = fmul fast <4 x float> %i.by, %i.ci
  %i.ck = fadd fast <4 x float> %i.bx, %i.cj
  %i.cl = fadd fast <4 x float> %i.ck, splat (float 1.000000e+00)
  %i.cm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bv)
  %i.cn = shl <4 x i32> %i.cm, splat (i32 23)
  %i.co = add <4 x i32> %i.cn, splat (i32 1065353216)
  %i.cp = bitcast <4 x i32> %i.co to <4 x float>
  %i.cq = fmul fast <4 x float> %i.cl, %i.cp
  %i.cr = fadd fast <4 x float> %i.cq, splat (float 1.000000e+00)
  %i.cs = fneg fast <4 x float> %i.ae
  %i.ct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cs, <4 x float> splat (float f0x42B0C0A5))
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cv = fmul fast <4 x float> %i.cu, splat (float f0x3FB8AA3B)
  %i.cw = fadd fast <4 x float> %i.cv, splat (float 5.000000e-01) ; 2 uses
  %i.cx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cw)
  %i.cy = sitofp fast <4 x i32> %i.cx to <4 x float> ; 2 uses
  %i.cz = fcmp fast olt <4 x float> %i.cw, %i.cy
  %i.da = select <4 x i1> %i.cz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.db = fsub fast <4 x float> %i.cy, %i.da      ; 2 uses
  %i.dc = fmul fast <4 x float> %i.db, splat (float f0x3F317218)
  %i.dd = fsub fast <4 x float> %i.cu, %i.dc      ; 8 uses
  %i.de = fmul fast <4 x float> %i.dd, %i.dd
  %i.df = fmul fast <4 x float> %i.dd, splat (float f0x39506967)
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3AB743CE)
  %i.dh = fmul fast <4 x float> %i.dg, %i.dd
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3C088908)
  %i.dj = fmul fast <4 x float> %i.di, %i.dd
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0x3D2AA9C1)
  %i.dl = fmul fast <4 x float> %i.dk, %i.dd
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3E2AAAAA)
  %i.dn = fmul fast <4 x float> %i.dm, %i.dd
  %i.do = fadd fast <4 x float> %i.dn, splat (float 5.000000e-01)
  %i.dp = fmul fast <4 x float> %i.de, %i.do
  %i.dq = fadd fast <4 x float> %i.dd, %i.dp
  %i.dr = fadd fast <4 x float> %i.dq, splat (float 1.000000e+00)
  %i.ds = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.db)
  %i.dt = shl <4 x i32> %i.ds, splat (i32 23)
  %i.du = add <4 x i32> %i.dt, splat (i32 1065353216)
  %i.dv = bitcast <4 x i32> %i.du to <4 x float>
  %i.dw = fmul fast <4 x float> %i.dr, %i.dv
  %i.dx = fadd fast <4 x float> %i.dw, splat (float 1.000000e+00)
  %i.dy = fmul fast <4 x float> %i.af, splat (float -2.000000e+00)
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> splat (float f0x42B0C0A5))
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eb = fmul fast <4 x float> %i.ea, splat (float f0x3FB8AA3B)
  %i.ec = fadd fast <4 x float> %i.eb, splat (float 5.000000e-01) ; 2 uses
  %i.ed = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ec)
  %i.ee = sitofp fast <4 x i32> %i.ed to <4 x float> ; 2 uses
  %i.ef = fcmp fast olt <4 x float> %i.ec, %i.ee
  %i.eg = select <4 x i1> %i.ef, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eh = fsub fast <4 x float> %i.ee, %i.eg      ; 2 uses
  %i.ei = fmul fast <4 x float> %i.eh, splat (float f0x3F317218)
  %i.ej = fsub fast <4 x float> %i.ea, %i.ei      ; 8 uses
  %i.ek = fmul fast <4 x float> %i.ej, %i.ej
  %i.el = fmul fast <4 x float> %i.ej, splat (float f0x39506967)
  %i.em = fadd fast <4 x float> %i.el, splat (float f0x3AB743CE)
  %i.en = fmul fast <4 x float> %i.em, %i.ej
  %i.eo = fadd fast <4 x float> %i.en, splat (float f0x3C088908)
  %i.ep = fmul fast <4 x float> %i.eo, %i.ej
  %i.eq = fadd fast <4 x float> %i.ep, splat (float f0x3D2AA9C1)
  %i.er = fmul fast <4 x float> %i.eq, %i.ej
  %i.es = fadd fast <4 x float> %i.er, splat (float f0x3E2AAAAA)
  %i.et = fmul fast <4 x float> %i.es, %i.ej
  %i.eu = fadd fast <4 x float> %i.et, splat (float 5.000000e-01)
  %i.ev = fmul fast <4 x float> %i.ek, %i.eu
  %i.ew = fadd fast <4 x float> %i.ej, %i.ev
  %i.ex = fadd fast <4 x float> %i.ew, splat (float 1.000000e+00)
  %i.ey = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eh)
  %i.ez = shl <4 x i32> %i.ey, splat (i32 23)
  %i.fa = add <4 x i32> %i.ez, splat (i32 1065353216)
  %i.fb = bitcast <4 x i32> %i.fa to <4 x float>
  %i.fc = fmul fast <4 x float> %i.ex, %i.fb
  %i.fd = fadd fast <4 x float> %i.fc, splat (float 1.000000e+00)
  %i.fe = fdiv fast <4 x float> splat (float 2.000000e+00), %i.fd
  %i.ff = fadd fast <4 x float> %i.fe, splat (float -1.000000e+00)
  %i.fg = load ptr, ptr %4, align 8, !tbaa !74
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.p ; 2 uses
  %i.fi = load <4 x float>, ptr %i.fh, align 1, !tbaa !71
  %i.fj = fdiv fast <4 x float> %i.fi, %i.cr
  %i.fk = fdiv fast <4 x float> %i.ff, %i.bl
  %i.fl = fadd fast <4 x float> %i.fk, %i.fj      ; 2 uses
  %i.fm = fmul fast <4 x float> %i.fl, splat (float -2.000000e+00)
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fm, <4 x float> splat (float f0x42B0C0A5))
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fp = fmul fast <4 x float> %i.fo, splat (float f0x3FB8AA3B)
  %i.fq = fadd fast <4 x float> %i.fp, splat (float 5.000000e-01) ; 2 uses
  %i.fr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fq)
  %i.fs = sitofp fast <4 x i32> %i.fr to <4 x float> ; 2 uses
  %i.ft = fcmp fast olt <4 x float> %i.fq, %i.fs
  %i.fu = select <4 x i1> %i.ft, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fv = fsub fast <4 x float> %i.fs, %i.fu      ; 2 uses
  %i.fw = fmul fast <4 x float> %i.fv, splat (float f0x3F317218)
  %i.fx = fsub fast <4 x float> %i.fo, %i.fw      ; 8 uses
  %i.fy = fmul fast <4 x float> %i.fx, %i.fx
  %i.fz = fmul fast <4 x float> %i.fx, splat (float f0x39506967)
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0x3AB743CE)
  %i.gb = fmul fast <4 x float> %i.ga, %i.fx
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3C088908)
  %i.gd = fmul fast <4 x float> %i.gc, %i.fx
  %i.ge = fadd fast <4 x float> %i.gd, splat (float f0x3D2AA9C1)
  %i.gf = fmul fast <4 x float> %i.ge, %i.fx
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0x3E2AAAAA)
  %i.gh = fmul fast <4 x float> %i.gg, %i.fx
  %i.gi = fadd fast <4 x float> %i.gh, splat (float 5.000000e-01)
  %i.gj = fmul fast <4 x float> %i.fy, %i.gi
  %i.gk = fadd fast <4 x float> %i.fx, %i.gj
  %i.gl = fadd fast <4 x float> %i.gk, splat (float 1.000000e+00)
  %i.gm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fv)
  %i.gn = shl <4 x i32> %i.gm, splat (i32 23)
  %i.go = add <4 x i32> %i.gn, splat (i32 1065353216)
  %i.gp = bitcast <4 x i32> %i.go to <4 x float>
  %i.gq = fmul fast <4 x float> %i.gl, %i.gp
  %i.gr = fadd fast <4 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = fdiv fast <4 x float> splat (float 2.000000e+00), %i.gr
  %i.gt = fadd fast <4 x float> %i.gs, splat (float -1.000000e+00)
  %i.gu = fdiv fast <4 x float> %i.gt, %i.dx      ; 2 uses
  store <4 x float> %i.fl, ptr %i.fh, align 1, !tbaa !71
  %i.gv = load i32, ptr %5, align 4, !tbaa !42
  %i.gw = load i32, ptr %6, align 4, !tbaa !42
  %i.gx = icmp eq i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.gy = load ptr, ptr %7, align 8, !tbaa !74
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.p
  store <4 x float> %i.gu, ptr %i.gz, align 1, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.ha = load ptr, ptr %.sink, align 8, !tbaa !74
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.p
  store <4 x float> %i.gu, ptr %i.hb, align 1, !tbaa !71
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
end_hunk_1
begin_hunk_2_@_ZNK4ncnn8LSTM_x8612forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %.02223.i.i.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.i.i.preheader ], [ %i.hz, %._crit_edge.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod729)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.0924.i.i.epil = phi ptr [ %i.if, %.lr.ph.i.i.epil ], [ %.0924.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.epil = phi <4 x float> [ %i.ie, %.lr.ph.i.i.epil ], [ %.02223.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ib = load <4 x i32>, ptr %.0924.i.i.epil, align 1, !tbaa !71
  %i.ic = and <4 x i32> %i.ib, splat (i32 2147483647)
  %i.id = bitcast <4 x i32> %i.ic to <4 x float>
  %i.ie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.02223.i.i.epil, <4 x float> nofpclass(nan inf) %i.id) ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0924.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !268

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.bf
  %.022.lcssa.i.i = phi <4 x float> [ zeroinitializer, %bb.bf ], [ %i.hz, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.ie, %.lr.ph.i.i.epil ] ; 2 uses
  %.09.lcssa.i.i = phi ptr [ %i.gz, %bb.bf ], [ %i.ia, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.if, %.lr.ph.i.i.epil ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ 0, %bb.bf ], [ %i.go, %.lr.ph.i.i.epil ], [ %i.go, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 4 uses
  %i.ig = shufflevector <4 x float> %.022.lcssa.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.022.lcssa.i.i, <4 x float> nofpclass(nan inf) %i.ig) ; 2 uses
  %i.ii = shufflevector <4 x float> %i.ih, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ij = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ih, <4 x float> nofpclass(nan inf) %i.ii)
  %i.ik = extractelement <4 x float> %i.ij, i64 0
  %.sroa.speculated14.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ik, float 0.000000e+00) ; 3 uses
  %i.il = icmp slt i32 %.0.lcssa.i.i, %i.gj
  br i1 %i.il, label %.lr.ph32.i.i.preheader, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i

.lr.ph32.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.im = xor i32 %.0.lcssa.i.i, -1
  %i.in = add i32 %i.gj, %i.im                    ; 2 uses
  %i.io = zext i32 %i.in to i64
  %i.ip = add nuw nsw i64 %i.io, 1                ; 2 uses
  %min.iters.check704 = icmp ult i32 %i.in, 7
  br i1 %min.iters.check704, label %.lr.ph32.i.i.preheader721, label %vector.ph705

vector.ph705:                                     ; preds = %.lr.ph32.i.i.preheader
  %n.vec706 = and i64 %i.ip, 8589934584           ; 4 uses
  %i.iq = trunc i64 %n.vec706 to i32
  %i.ir = add i32 %.0.lcssa.i.i, %i.iq
  %i.is = shl nuw nsw i64 %n.vec706, 2
  %i.it = getelementptr i8, ptr %.09.lcssa.i.i, i64 %i.is
  %broadcast.splatinsert707 = insertelement <4 x float> poison, float %.sroa.speculated14.i.i, i64 0
  %broadcast.splat708 = shufflevector <4 x float> %broadcast.splatinsert707, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body709

vector.body709:                                   ; preds = %vector.body709, %vector.ph705
  %index710 = phi i64 [ 0, %vector.ph705 ], [ %index.next715, %vector.body709 ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat708, %vector.ph705 ], [ %i.iy, %vector.body709 ]
  %vec.phi711 = phi <4 x float> [ %broadcast.splat708, %vector.ph705 ], [ %i.iz, %vector.body709 ]
  %i.iu = shl i64 %index710, 2
  %next.gep712 = getelementptr i8, ptr %.09.lcssa.i.i, i64 %i.iu ; 2 uses
  %i.iv = getelementptr i8, ptr %next.gep712, i64 16
  %wide.load713 = load <4 x float>, ptr %next.gep712, align 4, !tbaa !60
  %wide.load714 = load <4 x float>, ptr %i.iv, align 4, !tbaa !60
  %i.iw = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load713)
  %i.ix = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load714)
  %i.iy = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.iw) ; 2 uses
  %i.iz = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi711, <4 x float> %i.ix) ; 2 uses
  %index.next715 = add nuw i64 %index710, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next715, %n.vec706
  br i1 %i.ja, label %middle.block716, label %vector.body709, !llvm.loop !269

middle.block716:                                  ; preds = %vector.body709
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.iy, <4 x float> %i.iz)
  %i.jb = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n717 = icmp eq i64 %i.ip, %n.vec706
  br i1 %cmp.n717, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, label %.lr.ph32.i.i.preheader721

.lr.ph32.i.i.preheader721:                        ; preds = %.lr.ph32.i.i.preheader, %middle.block716
  %.130.i.i.ph = phi i32 [ %.0.lcssa.i.i, %.lr.ph32.i.i.preheader ], [ %i.ir, %middle.block716 ]
  %.11029.i.i.ph = phi ptr [ %.09.lcssa.i.i, %.lr.ph32.i.i.preheader ], [ %i.it, %middle.block716 ]
  %.02128.i.i.ph = phi float [ %.sroa.speculated14.i.i, %.lr.ph32.i.i.preheader ], [ %i.jb, %middle.block716 ]
  br label %.lr.ph32.i.i

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i.preheader721, %.lr.ph32.i.i
  %.130.i.i = phi i32 [ %i.jf, %.lr.ph32.i.i ], [ %.130.i.i.ph, %.lr.ph32.i.i.preheader721 ]
  %.11029.i.i = phi ptr [ %i.je, %.lr.ph32.i.i ], [ %.11029.i.i.ph, %.lr.ph32.i.i.preheader721 ] ; 2 uses
  %.02128.i.i = phi float [ %.sroa.speculated.i.i, %.lr.ph32.i.i ], [ %.02128.i.i.ph, %.lr.ph32.i.i.preheader721 ]
  %i.jc = load float, ptr %.11029.i.i, align 4, !tbaa !60
  %i.jd = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.jc)
  %.sroa.speculated.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.02128.i.i, float %i.jd) ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.11029.i.i, i64 4
  %i.jf = add nuw nsw i32 %.130.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jf, %i.gj
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, label %.lr.ph32.i.i, !llvm.loop !270

_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i: ; preds = %.lr.ph32.i.i, %middle.block716, %._crit_edge.i.i
  %.021.lcssa.i.i = phi float [ %.sroa.speculated14.i.i, %._crit_edge.i.i ], [ %i.jb, %middle.block716 ], [ %.sroa.speculated.i.i, %.lr.ph32.i.i ] ; 2 uses
  %i.jg = fmul fast float %.021.lcssa.i.i, f0x3C010204
  %i.jh = load ptr, ptr %9, align 8, !tbaa !23
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i
  store float %i.jg, ptr %i.ji, align 4, !tbaa !60
  %i.jj = fdiv fast float 1.270000e+02, %.021.lcssa.i.i ; 5 uses
  %i.jk = insertelement <4 x float> poison, float %i.jj, i64 0
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.gn, label %.lr.ph.i28.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i28.i, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i
  %.016.lcssa.i.i = phi ptr [ %i.gz, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ], [ %i.lc, %.lr.ph.i28.i ] ; 6 uses
  %.014.lcssa.i.i = phi ptr [ %i.hg, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ], [ %i.ld, %.lr.ph.i28.i ] ; 6 uses
  %.0.lcssa.i25.i = phi i32 [ 0, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ], [ %i.go, %.lr.ph.i28.i ] ; 6 uses
  %i.jm = icmp slt i32 %.0.lcssa.i25.i, %i.gj
  br i1 %i.jm, label %.lr.ph29.i.i.preheader, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i

.lr.ph29.i.i.preheader:                           ; preds = %.preheader.i.i
  %i.jn = xor i32 %.0.lcssa.i25.i, -1
  %i.jo = add i32 %i.gj, %i.jn                    ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.jo, 3
  br i1 %min.iters.check, label %.lr.ph29.i.i.preheader720, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph29.i.i.preheader
  %scevgep = getelementptr i8, ptr %.014.lcssa.i.i, i64 1
  %i.jr = xor i32 %.0.lcssa.i25.i, -1
  %i.js = add i32 %i.gj, %i.jr
  %i.jt = zext i32 %i.js to i64                   ; 2 uses
  %scevgep697 = getelementptr i8, ptr %scevgep, i64 %i.jt
  %scevgep698 = getelementptr i8, ptr %.016.lcssa.i.i, i64 4
  %i.ju = shl nuw nsw i64 %i.jt, 2
  %scevgep699 = getelementptr i8, ptr %scevgep698, i64 %i.ju
  %bound0 = icmp ult ptr %.014.lcssa.i.i, %scevgep699
  %bound1 = icmp ult ptr %.016.lcssa.i.i, %scevgep697
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph29.i.i.preheader720, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jq, 8589934588              ; 5 uses
  %i.jv = trunc i64 %n.vec to i32
  %i.jw = add i32 %.0.lcssa.i25.i, %i.jv
  %i.jx = getelementptr i8, ptr %.014.lcssa.i.i, i64 %n.vec
  %i.jy = shl nuw nsw i64 %n.vec, 2
  %i.jz = getelementptr i8, ptr %.016.lcssa.i.i, i64 %i.jy
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.014.lcssa.i.i, i64 %index
  %i.ka = shl i64 %index, 2
  %next.gep700 = getelementptr i8, ptr %.016.lcssa.i.i, i64 %i.ka
  %wide.load = load <4 x float>, ptr %next.gep700, align 4, !tbaa !60, !alias.scope !309
  %i.kb = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.kc = call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.kb)
  %i.kd = fptosi <4 x float> %i.kc to <4 x i32>
  %i.ke = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kd, <4 x i32> splat (i32 -127))
  %i.kf = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ke, <4 x i32> splat (i32 127))
  %i.kg = trunc nsw <4 x i32> %i.kf to <4 x i8>
  store <4 x i8> %i.kg, ptr %next.gep, align 1, !tbaa !71, !alias.scope !310, !noalias !309
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jq, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph29.i.i.preheader720

.lr.ph29.i.i.preheader720:                        ; preds = %vector.memcheck, %.lr.ph29.i.i.preheader, %middle.block
  %.128.i.i.ph = phi i32 [ %.0.lcssa.i25.i, %vector.memcheck ], [ %.0.lcssa.i25.i, %.lr.ph29.i.i.preheader ], [ %i.jw, %middle.block ] ; 4 uses
  %.11527.i.i.ph = phi ptr [ %.014.lcssa.i.i, %vector.memcheck ], [ %.014.lcssa.i.i, %.lr.ph29.i.i.preheader ], [ %i.jx, %middle.block ] ; 3 uses
  %.11726.i.i.ph = phi ptr [ %.016.lcssa.i.i, %vector.memcheck ], [ %.016.lcssa.i.i, %.lr.ph29.i.i.preheader ], [ %i.jz, %middle.block ] ; 3 uses
  %i.ki = sub i32 %i.gj, %.128.i.i.ph
  %.neg = add i32 %.128.i.i.ph, 1
  %xtraiter730 = and i32 %i.ki, 1
  %lcmp.mod731.not = icmp eq i32 %xtraiter730, 0
  br i1 %lcmp.mod731.not, label %.lr.ph29.i.i.prol.loopexit, label %.lr.ph29.i.i.prol

.lr.ph29.i.i.prol:                                ; preds = %.lr.ph29.i.i.preheader720
  %i.kj = getelementptr inbounds nuw i8, ptr %.11726.i.i.ph, i64 4
  %i.kk = load float, ptr %.11726.i.i.ph, align 4, !tbaa !60
  %i.kl = fmul fast float %i.kk, %i.jj
  %i.km = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.kl)
  %i.kn = fptosi float %i.km to i32
  %spec.select.i19.i.i.prol = call i32 @llvm.smax.i32(i32 %i.kn, i32 -127)
  %.0.i20.i.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i19.i.i.prol, i32 127)
  %.0.i.i.i.prol = trunc nsw i32 %.0.i20.i.i.prol to i8
  %i.ko = getelementptr inbounds nuw i8, ptr %.11527.i.i.ph, i64 1
  store i8 %.0.i.i.i.prol, ptr %.11527.i.i.ph, align 1, !tbaa !71
  %i.kp = add nuw nsw i32 %.128.i.i.ph, 1
  br label %.lr.ph29.i.i.prol.loopexit

.lr.ph29.i.i.prol.loopexit:                       ; preds = %.lr.ph29.i.i.prol, %.lr.ph29.i.i.preheader720
  %.128.i.i.unr = phi i32 [ %.128.i.i.ph, %.lr.ph29.i.i.preheader720 ], [ %i.kp, %.lr.ph29.i.i.prol ]
  %.11527.i.i.unr = phi ptr [ %.11527.i.i.ph, %.lr.ph29.i.i.preheader720 ], [ %i.ko, %.lr.ph29.i.i.prol ]
  %.11726.i.i.unr = phi ptr [ %.11726.i.i.ph, %.lr.ph29.i.i.preheader720 ], [ %i.kj, %.lr.ph29.i.i.prol ]
  %i.kq = icmp eq i32 %i.gj, %.neg
  br i1 %i.kq, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph29.i.i

.lr.ph.i28.i:                                     ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i, %.lr.ph.i28.i
  %.023.i.i = phi i32 [ %i.le, %.lr.ph.i28.i ], [ 0, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ]
  %.01422.i.i = phi ptr [ %i.ld, %.lr.ph.i28.i ], [ %i.hg, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ] ; 2 uses
  %.01621.i.i = phi ptr [ %i.lc, %.lr.ph.i28.i ], [ %i.gz, %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit.i ] ; 2 uses
  %i.kr = load <4 x float>, ptr %.01621.i.i, align 1, !tbaa !71
  %i.ks = fmul fast <4 x float> %i.kr, %i.jl      ; 2 uses
  %i.kt = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ks)
  %i.ku = fadd fast <4 x float> %i.kt, %i.ks
  %i.kv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ku) ; 2 uses
  %i.kw = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kv, <4 x i32> %i.kv)
  %i.kx = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kw, <8 x i16> splat (i16 -127))
  %i.ky = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kx, <8 x i16> splat (i16 127))
  %i.kz = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ky, <8 x i16> poison)
  %i.la = bitcast <16 x i8> %i.kz to <4 x i32>
  %i.lb = extractelement <4 x i32> %i.la, i64 0
  store i32 %i.lb, ptr %.01422.i.i, align 4, !tbaa !42
  %i.lc = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 16 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.01422.i.i, i64 4 ; 2 uses
  %i.le = add nuw nsw i32 %.023.i.i, 4            ; 2 uses
  %i.lf = or disjoint i32 %i.le, 3
  %i.lg = icmp slt i32 %i.lf, %i.gj
  br i1 %i.lg, label %.lr.ph.i28.i, label %.preheader.i.i, !llvm.loop !3

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i.prol.loopexit, %.lr.ph29.i.i
  %.128.i.i = phi i32 [ %i.lt, %.lr.ph29.i.i ], [ %.128.i.i.unr, %.lr.ph29.i.i.prol.loopexit ]
  %.11527.i.i = phi ptr [ %i.ls, %.lr.ph29.i.i ], [ %.11527.i.i.unr, %.lr.ph29.i.i.prol.loopexit ] ; 3 uses
  %.11726.i.i = phi ptr [ %i.ln, %.lr.ph29.i.i ], [ %.11726.i.i.unr, %.lr.ph29.i.i.prol.loopexit ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.11726.i.i, i64 4
  %i.li = load float, ptr %.11726.i.i, align 4, !tbaa !60
  %i.lj = fmul fast float %i.li, %i.jj
  %i.lk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.lj)
  %i.ll = fptosi float %i.lk to i32
  %spec.select.i19.i.i = call i32 @llvm.smax.i32(i32 %i.ll, i32 -127)
  %.0.i20.i.i = call i32 @llvm.smin.i32(i32 %spec.select.i19.i.i, i32 127)
  %.0.i.i.i = trunc nsw i32 %.0.i20.i.i to i8
  %i.lm = getelementptr inbounds nuw i8, ptr %.11527.i.i, i64 1
  store i8 %.0.i.i.i, ptr %.11527.i.i, align 1, !tbaa !71
  %i.ln = getelementptr inbounds nuw i8, ptr %.11726.i.i, i64 8
  %i.lo = load float, ptr %i.lh, align 4, !tbaa !60
  %i.lp = fmul fast float %i.lo, %i.jj
  %i.lq = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.lp)
  %i.lr = fptosi float %i.lq to i32
  %spec.select.i19.i.i.1 = call i32 @llvm.smax.i32(i32 %i.lr, i32 -127)
  %.0.i20.i.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i19.i.i.1, i32 127)
  %.0.i.i.i.1 = trunc nsw i32 %.0.i20.i.i.1 to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %.11527.i.i, i64 2
  store i8 %.0.i.i.i.1, ptr %i.lm, align 1, !tbaa !71
  %i.lt = add nuw nsw i32 %.128.i.i, 2            ; 2 uses
  %exitcond.not.i27.i.1 = icmp eq i32 %i.lt, %i.gj
  br i1 %exitcond.not.i27.i.1, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, label %.lr.ph29.i.i, !llvm.loop !275

_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i: ; preds = %.lr.ph29.i.i.prol.loopexit, %.lr.ph29.i.i, %middle.block, %.preheader.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN4ncnnL21lstm_dynamic_quantizeERKNS_3MatERS0_S3_RKNS_6OptionE.exit, label %bb.bf, !llvm.loop !4

_ZN4ncnnL21lstm_dynamic_quantizeERKNS_3MatERS0_S3_RKNS_6OptionE.exit: ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit.i, %.noexc499
  %i.lu = load i32, ptr %i.d, align 8, !tbaa !41  ; 3 uses
  %switch = icmp ult i32 %i.lu, 2
  br i1 %switch, label %bb.bg, label %bb.dm

bb.bg:                                            ; preds = %_ZN4ncnnL21lstm_dynamic_quantizeERKNS_3MatERS0_S3_RKNS_6OptionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 880
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !62, !noalias !311 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !52, !noalias !311 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 932
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !63, !noalias !311
  %i.mc = load ptr, ptr %i.lv, align 8, !tbaa !23, !noalias !311
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.me = load i64, ptr %i.md, align 8, !tbaa !56, !noalias !311 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !57, !noalias !311
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !22, !noalias !311
  store ptr %i.mc, ptr %10, align 8, !tbaa !23, !alias.scope !311
  %i.mj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr null, ptr %i.mj, align 8, !tbaa !21, !alias.scope !311
  %i.mk = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.me, ptr %i.mk, align 8, !tbaa !56, !alias.scope !311
  %i.ml = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %i.mg, ptr %i.ml, align 8, !tbaa !57, !alias.scope !311
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store ptr %i.mi, ptr %i.mm, align 8, !tbaa !22, !alias.scope !311
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.mo = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 %i.lx, ptr %i.mo, align 4, !tbaa !62, !alias.scope !311
  %i.mp = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %i.lz, ptr %i.mp, align 8, !tbaa !52, !alias.scope !311
  %i.mq = getelementptr inbounds nuw i8, ptr %10, i64 52
  store i32 1, ptr %i.mq, align 4, !tbaa !63, !alias.scope !311
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i32 %i.mb, ptr %i.mr, align 8, !tbaa !58, !alias.scope !311
  %i.ms = sext i32 %i.lx to i64
  %i.mt = sext i32 %i.lz to i64
  %i.mu = mul nsw i64 %i.mt, %i.ms                ; 2 uses
  %i.mv = mul i64 %i.me, %i.mu
  %i.mw = add i64 %i.mv, 15
  %i.mx = and i64 %i.mw, -16
  %i.my = udiv i64 %i.mx, %i.me
  %i.mz = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !24, !alias.scope !311
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !64, !noalias !311 ; 2 uses
  %i.nc = add nsw i32 %i.nb, -1
  store i32 %i.nc, ptr %i.mn, align 8, !tbaa !64, !alias.scope !311
  %i.nd = icmp eq i32 %i.nb, 4
  br i1 %i.nd, label %bb.bh, label %_ZNK4ncnn3Mat7channelEi.exit468

bb.bh:                                            ; preds = %bb.bg
  store i64 %i.mu, ptr %i.mz, align 8, !tbaa !24, !alias.scope !311
  br label %_ZNK4ncnn3Mat7channelEi.exit468

_ZNK4ncnn3Mat7channelEi.exit468:                  ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 952
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !62, !noalias !312 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !52, !noalias !312 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 1004
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !63, !noalias !312
  %i.nl = load ptr, ptr %i.ne, align 8, !tbaa !23, !noalias !312
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !56, !noalias !312 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.np = load i32, ptr %i.no, align 8, !tbaa !57, !noalias !312
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !22, !noalias !312
  store ptr %i.nl, ptr %11, align 8, !tbaa !23, !alias.scope !312
  %i.ns = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr null, ptr %i.ns, align 8, !tbaa !21, !alias.scope !312
  %i.nt = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.nn, ptr %i.nt, align 8, !tbaa !56, !alias.scope !312
  %i.nu = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %i.np, ptr %i.nu, align 8, !tbaa !57, !alias.scope !312
  %i.nv = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  store ptr %i.nr, ptr %i.nv, align 8, !tbaa !22, !alias.scope !312
  %i.nw = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.nx = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 %i.ng, ptr %i.nx, align 4, !tbaa !62, !alias.scope !312
  %i.ny = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 %i.ni, ptr %i.ny, align 8, !tbaa !52, !alias.scope !312
  %i.nz = getelementptr inbounds nuw i8, ptr %11, i64 52
  store i32 1, ptr %i.nz, align 4, !tbaa !63, !alias.scope !312
  %i.oa = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i32 %i.nk, ptr %i.oa, align 8, !tbaa !58, !alias.scope !312
  %i.ob = sext i32 %i.ng to i64
  %i.oc = sext i32 %i.ni to i64
  %i.od = mul nsw i64 %i.oc, %i.ob                ; 2 uses
  %i.oe = mul i64 %i.nn, %i.od
  %i.of = add i64 %i.oe, 15
  %i.og = and i64 %i.of, -16
  %i.oh = udiv i64 %i.og, %i.nn
  %i.oi = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store i64 %i.oh, ptr %i.oi, align 8, !tbaa !24, !alias.scope !312
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !64, !noalias !312 ; 2 uses
  %i.ol = add nsw i32 %i.ok, -1
  store i32 %i.ol, ptr %i.nw, align 8, !tbaa !64, !alias.scope !312
  %i.om = icmp eq i32 %i.ok, 4
  br i1 %i.om, label %bb.bi, label %_ZNK4ncnn3Mat7channelEi.exit467

bb.bi:                                            ; preds = %_ZNK4ncnn3Mat7channelEi.exit468
  store i64 %i.od, ptr %i.oi, align 8, !tbaa !24, !alias.scope !312
  br label %_ZNK4ncnn3Mat7channelEi.exit467

_ZNK4ncnn3Mat7channelEi.exit467:                  ; preds = %bb.bi, %_ZNK4ncnn3Mat7channelEi.exit468
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 736
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !62, !noalias !313 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !52, !noalias !313 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !63, !noalias !313
  %i.ou = load ptr, ptr %i.on, align 8, !tbaa !23, !noalias !313
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !56, !noalias !313 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !57, !noalias !313
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !22, !noalias !313
  store ptr %i.ou, ptr %12, align 8, !tbaa !23, !alias.scope !313
  %i.pb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr null, ptr %i.pb, align 8, !tbaa !21, !alias.scope !313
  %i.pc = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.ow, ptr %i.pc, align 8, !tbaa !56, !alias.scope !313
  %i.pd = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %i.oy, ptr %i.pd, align 8, !tbaa !57, !alias.scope !313
  %i.pe = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store ptr %i.pa, ptr %i.pe, align 8, !tbaa !22, !alias.scope !313
  %i.pf = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.pg = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 %i.op, ptr %i.pg, align 4, !tbaa !62, !alias.scope !313
  %i.ph = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 %i.or, ptr %i.ph, align 8, !tbaa !52, !alias.scope !313
  %i.pi = getelementptr inbounds nuw i8, ptr %12, i64 52
  store i32 1, ptr %i.pi, align 4, !tbaa !63, !alias.scope !313
  %i.pj = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 %i.ot, ptr %i.pj, align 8, !tbaa !58, !alias.scope !313
  %i.pk = sext i32 %i.op to i64
  %i.pl = sext i32 %i.or to i64
  %i.pm = mul nsw i64 %i.pl, %i.pk                ; 2 uses
  %i.pn = mul i64 %i.ow, %i.pm
  %i.po = add i64 %i.pn, 15
  %i.pp = and i64 %i.po, -16
end_hunk_2
begin_hunk_3_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE:bb.a
  %i.dg = shufflevector <4 x float> %.022.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.022.lcssa.i, <4 x float> nofpclass(nan inf) %i.dg) ; 2 uses
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.di)
  %i.dk = extractelement <4 x float> %i.dj, i64 0
  %.sroa.speculated14.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dk, float 0.000000e+00) ; 3 uses
  %i.dl = icmp slt i32 %.0.lcssa.i, %i.bw
  br i1 %i.dl, label %.lr.ph32.i.preheader, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit

.lr.ph32.i.preheader:                             ; preds = %._crit_edge.i
  %i.dm = xor i32 %.0.lcssa.i, -1
  %i.dn = add i32 %i.bw, %i.dm                    ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check150 = icmp ult i32 %i.dn, 7
  br i1 %min.iters.check150, label %.lr.ph32.i.preheader167, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph32.i.preheader
  %n.vec152 = and i64 %i.dp, 8589934584           ; 4 uses
  %i.dq = trunc i64 %n.vec152 to i32
  %i.dr = add i32 %.0.lcssa.i, %i.dq
  %i.ds = shl nuw nsw i64 %n.vec152, 2
  %i.dt = getelementptr i8, ptr %.09.lcssa.i, i64 %i.ds
  %broadcast.splatinsert153 = insertelement <4 x float> poison, float %.sroa.speculated14.i, i64 0
  %broadcast.splat154 = shufflevector <4 x float> %broadcast.splatinsert153, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph151
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat154, %vector.ph151 ], [ %i.dy, %vector.body155 ]
  %vec.phi157 = phi <4 x float> [ %broadcast.splat154, %vector.ph151 ], [ %i.dz, %vector.body155 ]
  %i.du = shl i64 %index156, 2
  %next.gep158 = getelementptr i8, ptr %.09.lcssa.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <4 x float>, ptr %next.gep158, align 4, !tbaa !60
  %wide.load160 = load <4 x float>, ptr %i.dv, align 4, !tbaa !60
  %i.dw = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load159)
  %i.dx = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load160)
  %i.dy = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.dw) ; 2 uses
  %i.dz = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi157, <4 x float> %i.dx) ; 2 uses
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.ea, label %middle.block162, label %vector.body155, !llvm.loop !355

middle.block162:                                  ; preds = %vector.body155
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dy, <4 x float> %i.dz)
  %i.eb = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n163 = icmp eq i64 %i.dp, %n.vec152
  br i1 %cmp.n163, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit, label %.lr.ph32.i.preheader167

.lr.ph32.i.preheader167:                          ; preds = %.lr.ph32.i.preheader, %middle.block162
  %.130.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph32.i.preheader ], [ %i.dr, %middle.block162 ]
  %.11029.i.ph = phi ptr [ %.09.lcssa.i, %.lr.ph32.i.preheader ], [ %i.dt, %middle.block162 ]
  %.02128.i.ph = phi float [ %.sroa.speculated14.i, %.lr.ph32.i.preheader ], [ %i.eb, %middle.block162 ]
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader167, %.lr.ph32.i
  %.130.i = phi i32 [ %i.ef, %.lr.ph32.i ], [ %.130.i.ph, %.lr.ph32.i.preheader167 ]
  %.11029.i = phi ptr [ %i.ee, %.lr.ph32.i ], [ %.11029.i.ph, %.lr.ph32.i.preheader167 ] ; 2 uses
  %.02128.i = phi float [ %.sroa.speculated.i, %.lr.ph32.i ], [ %.02128.i.ph, %.lr.ph32.i.preheader167 ]
  %i.ec = load float, ptr %.11029.i, align 4, !tbaa !60
  %i.ed = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ec)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.02128.i, float %i.ed) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.11029.i, i64 4
  %i.ef = add nuw nsw i32 %.130.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ef, %i.bw
  br i1 %exitcond.not.i, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit, label %.lr.ph32.i, !llvm.loop !356

_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit: ; preds = %.lr.ph32.i, %middle.block162, %._crit_edge.i
  %.021.lcssa.i = phi float [ %.sroa.speculated14.i, %._crit_edge.i ], [ %i.eb, %middle.block162 ], [ %.sroa.speculated.i, %.lr.ph32.i ] ; 3 uses
  %i.eg = fcmp fast oeq float %.021.lcssa.i, 0.000000e+00
  br i1 %i.eg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit
  %i.eh = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ei = load i32, ptr %i.am, align 8, !tbaa !58
  %i.ej = trunc i64 %i.eh to i32
  %i.ek = mul i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph.preheader, label %_ZN4ncnn3Mat4fillIaEEvT_.exit

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.em = load ptr, ptr %13, align 8, !tbaa !23
  %i.en = zext nneg i32 %i.ek to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.em, i8 0, i64 %i.en, i1 false), !tbaa !71
  br label %_ZN4ncnn3Mat4fillIaEEvT_.exit

bb.ab:                                            ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit
  %i.eo = fmul fast float %.021.lcssa.i, f0x3C010204
  store float %i.eo, ptr %i.d, align 4, !tbaa !60
  %i.ep = load ptr, ptr %13, align 8, !tbaa !23   ; 2 uses
  %i.eq = fdiv fast float 1.270000e+02, %.021.lcssa.i ; 5 uses
  %i.er = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.cb, label %.lr.ph.i100, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i100
  %i.et = and i32 %i.bw, 2147483644
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ab
  %.016.lcssa.i = phi ptr [ %i.ca, %bb.ab ], [ %i.gk, %.preheader.loopexit.i ] ; 6 uses
  %.014.lcssa.i = phi ptr [ %i.ep, %bb.ab ], [ %i.gl, %.preheader.loopexit.i ] ; 6 uses
  %.0.lcssa.i97 = phi i32 [ 0, %bb.ab ], [ %i.et, %.preheader.loopexit.i ] ; 6 uses
  %i.eu = icmp slt i32 %.0.lcssa.i97, %i.bw
  br i1 %i.eu, label %.lr.ph29.i.preheader, label %_ZN4ncnn3Mat4fillIaEEvT_.exit

.lr.ph29.i.preheader:                             ; preds = %.preheader.i
  %i.ev = xor i32 %.0.lcssa.i97, -1
  %i.ew = add i32 %i.bw, %i.ev                    ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ew, 3
  br i1 %min.iters.check, label %.lr.ph29.i.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph29.i.preheader
  %scevgep = getelementptr i8, ptr %.014.lcssa.i, i64 1
  %i.ez = xor i32 %.0.lcssa.i97, -1
  %i.fa = add i32 %i.bw, %i.ez
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %scevgep143 = getelementptr i8, ptr %scevgep, i64 %i.fb
  %scevgep144 = getelementptr i8, ptr %.016.lcssa.i, i64 4
  %i.fc = shl nuw nsw i64 %i.fb, 2
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.fc
  %bound0 = icmp ult ptr %.014.lcssa.i, %scevgep145
  %bound1 = icmp ult ptr %.016.lcssa.i, %scevgep143
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph29.i.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ey, 8589934588              ; 5 uses
  %i.fd = trunc i64 %n.vec to i32
  %i.fe = add i32 %.0.lcssa.i97, %i.fd
  %i.ff = getelementptr i8, ptr %.014.lcssa.i, i64 %n.vec
  %i.fg = shl nuw nsw i64 %n.vec, 2
  %i.fh = getelementptr i8, ptr %.016.lcssa.i, i64 %i.fg
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.014.lcssa.i, i64 %index
  %i.fi = shl i64 %index, 2
  %next.gep146 = getelementptr i8, ptr %.016.lcssa.i, i64 %i.fi
  %wide.load = load <4 x float>, ptr %next.gep146, align 4, !tbaa !60, !alias.scope !363
  %i.fj = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.fk = call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.fj)
  %i.fl = fptosi <4 x float> %i.fk to <4 x i32>
  %i.fm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fl, <4 x i32> splat (i32 -127))
  %i.fn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fm, <4 x i32> splat (i32 127))
  %i.fo = trunc nsw <4 x i32> %i.fn to <4 x i8>
  store <4 x i8> %i.fo, ptr %next.gep, align 1, !tbaa !71, !alias.scope !364, !noalias !363
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ey, %n.vec
  br i1 %cmp.n, label %_ZN4ncnn3Mat4fillIaEEvT_.exit, label %.lr.ph29.i.preheader166

.lr.ph29.i.preheader166:                          ; preds = %vector.memcheck, %.lr.ph29.i.preheader, %middle.block
  %.128.i.ph = phi i32 [ %.0.lcssa.i97, %vector.memcheck ], [ %.0.lcssa.i97, %.lr.ph29.i.preheader ], [ %i.fe, %middle.block ] ; 4 uses
  %.11527.i.ph = phi ptr [ %.014.lcssa.i, %vector.memcheck ], [ %.014.lcssa.i, %.lr.ph29.i.preheader ], [ %i.ff, %middle.block ] ; 3 uses
  %.11726.i.ph = phi ptr [ %.016.lcssa.i, %vector.memcheck ], [ %.016.lcssa.i, %.lr.ph29.i.preheader ], [ %i.fh, %middle.block ] ; 3 uses
  %i.fq = sub i32 %i.bw, %.128.i.ph
  %.neg = add i32 %.128.i.ph, 1
  %xtraiter176 = and i32 %i.fq, 1
  %lcmp.mod177.not = icmp eq i32 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.lr.ph29.i.prol.loopexit, label %.lr.ph29.i.prol

.lr.ph29.i.prol:                                  ; preds = %.lr.ph29.i.preheader166
  %i.fr = getelementptr inbounds nuw i8, ptr %.11726.i.ph, i64 4
  %i.fs = load float, ptr %.11726.i.ph, align 4, !tbaa !60
  %i.ft = fmul fast float %i.fs, %i.eq
  %i.fu = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ft)
  %i.fv = fptosi float %i.fu to i32
  %spec.select.i19.i.prol = call i32 @llvm.smax.i32(i32 %i.fv, i32 -127)
  %.0.i20.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i19.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i20.i.prol to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %.11527.i.ph, i64 1
  store i8 %.0.i.i.prol, ptr %.11527.i.ph, align 1, !tbaa !71
  %i.fx = add nuw nsw i32 %.128.i.ph, 1
  br label %.lr.ph29.i.prol.loopexit

.lr.ph29.i.prol.loopexit:                         ; preds = %.lr.ph29.i.prol, %.lr.ph29.i.preheader166
  %.128.i.unr = phi i32 [ %.128.i.ph, %.lr.ph29.i.preheader166 ], [ %i.fx, %.lr.ph29.i.prol ]
  %.11527.i.unr = phi ptr [ %.11527.i.ph, %.lr.ph29.i.preheader166 ], [ %i.fw, %.lr.ph29.i.prol ]
  %.11726.i.unr = phi ptr [ %.11726.i.ph, %.lr.ph29.i.preheader166 ], [ %i.fr, %.lr.ph29.i.prol ]
  %i.fy = icmp eq i32 %i.bw, %.neg
  br i1 %i.fy, label %_ZN4ncnn3Mat4fillIaEEvT_.exit, label %.lr.ph29.i

.lr.ph.i100:                                      ; preds = %bb.ab, %.lr.ph.i100
  %.023.i = phi i32 [ %i.gm, %.lr.ph.i100 ], [ 0, %bb.ab ]
  %.01422.i = phi ptr [ %i.gl, %.lr.ph.i100 ], [ %i.ep, %bb.ab ] ; 2 uses
  %.01621.i = phi ptr [ %i.gk, %.lr.ph.i100 ], [ %i.ca, %bb.ab ] ; 2 uses
  %i.fz = load <4 x float>, ptr %.01621.i, align 1, !tbaa !71
  %i.ga = fmul fast <4 x float> %i.fz, %i.es      ; 2 uses
  %i.gb = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ga)
  %i.gc = fadd fast <4 x float> %i.gb, %i.ga
  %i.gd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gc) ; 2 uses
  %i.ge = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gd, <4 x i32> %i.gd)
  %i.gf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ge, <8 x i16> splat (i16 -127))
  %i.gg = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gf, <8 x i16> splat (i16 127))
  %i.gh = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gg, <8 x i16> poison)
  %i.gi = bitcast <16 x i8> %i.gh to <4 x i32>
  %i.gj = extractelement <4 x i32> %i.gi, i64 0
  store i32 %i.gj, ptr %.01422.i, align 4, !tbaa !42
  %i.gk = getelementptr inbounds nuw i8, ptr %.01621.i, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01422.i, i64 4 ; 2 uses
  %i.gm = add nuw nsw i32 %.023.i, 4              ; 2 uses
  %i.gn = or disjoint i32 %i.gm, 3
  %i.go = icmp slt i32 %i.gn, %i.bw
  br i1 %i.go, label %.lr.ph.i100, label %.preheader.loopexit.i, !llvm.loop !3

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.prol.loopexit, %.lr.ph29.i
  %.128.i = phi i32 [ %i.hb, %.lr.ph29.i ], [ %.128.i.unr, %.lr.ph29.i.prol.loopexit ]
  %.11527.i = phi ptr [ %i.ha, %.lr.ph29.i ], [ %.11527.i.unr, %.lr.ph29.i.prol.loopexit ] ; 3 uses
  %.11726.i = phi ptr [ %i.gv, %.lr.ph29.i ], [ %.11726.i.unr, %.lr.ph29.i.prol.loopexit ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.11726.i, i64 4
  %i.gq = load float, ptr %.11726.i, align 4, !tbaa !60
  %i.gr = fmul fast float %i.gq, %i.eq
  %i.gs = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.gr)
  %i.gt = fptosi float %i.gs to i32
  %spec.select.i19.i = call i32 @llvm.smax.i32(i32 %i.gt, i32 -127)
  %.0.i20.i = call i32 @llvm.smin.i32(i32 %spec.select.i19.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i20.i to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %.11527.i, i64 1
  store i8 %.0.i.i, ptr %.11527.i, align 1, !tbaa !71
  %i.gv = getelementptr inbounds nuw i8, ptr %.11726.i, i64 8
  %i.gw = load float, ptr %i.gp, align 4, !tbaa !60
  %i.gx = fmul fast float %i.gw, %i.eq
  %i.gy = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.gx)
  %i.gz = fptosi float %i.gy to i32
  %spec.select.i19.i.1 = call i32 @llvm.smax.i32(i32 %i.gz, i32 -127)
  %.0.i20.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i19.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i20.i.1 to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %.11527.i, i64 2
  store i8 %.0.i.i.1, ptr %i.gu, align 1, !tbaa !71
  %i.hb = add nuw nsw i32 %.128.i, 2              ; 2 uses
  %exitcond.not.i99.1 = icmp eq i32 %i.hb, %i.bw
  br i1 %exitcond.not.i99.1, label %_ZN4ncnn3Mat4fillIaEEvT_.exit, label %.lr.ph29.i, !llvm.loop !361

_ZN4ncnn3Mat4fillIaEEvT_.exit:                    ; preds = %.lr.ph29.i.prol.loopexit, %.lr.ph29.i, %middle.block, %.lr.ph.preheader, %bb.aa, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i32 0, ptr %i.f, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.hc = load i32, ptr %i.ap, align 4, !tbaa !47
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.hc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull %1, ptr nonnull %i.d, ptr nonnull %6, ptr nonnull %4, ptr nonnull %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.hd = load i32, ptr %i.e, align 4, !tbaa !42
  %i.he = load ptr, ptr %2, align 8, !tbaa !23
  %i.hf = load i32, ptr %i.s, align 4, !tbaa !62
  %i.hg = sext i32 %i.hf to i64
  %i.hh = sext i32 %i.hd to i64
  %i.hi = mul nsw i64 %i.hg, %i.hh
  %i.hj = load i64, ptr %i.aq, align 8, !tbaa !56
  %i.hk = mul i64 %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hk
  store ptr %i.hl, ptr %i.h, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.hm = load ptr, ptr %9, align 8, !tbaa !23
  store ptr %i.hm, ptr %i.i, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.hn = load ptr, ptr %8, align 8, !tbaa !23
  store ptr %i.hn, ptr %i.j, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.ho = load ptr, ptr %12, align 8, !tbaa !23
  store ptr %i.ho, ptr %i.k, align 8, !tbaa !74
  store i32 0, ptr %i.f, align 4, !tbaa !42
  %i.hp = load i32, ptr %i.c, align 4, !tbaa !42
  %i.hq = ashr i32 %i.hp, 2
  store i32 %i.hq, ptr %i.g, align 4, !tbaa !42
  %i.hr = load i32, ptr %i.ap, align 4, !tbaa !47
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.hr)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.hs = load i32, ptr %i.g, align 4, !tbaa !42
  %i.ht = shl i32 %i.hs, 2
  %i.hu = load i32, ptr %i.f, align 4, !tbaa !42
  %i.hv = add nsw i32 %i.hu, %i.ht
  store i32 %i.hv, ptr %i.f, align 4, !tbaa !42
  %i.hw = load i32, ptr %i.ap, align 4, !tbaa !47
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.hw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.hx = load i32, ptr %i.b, align 4, !tbaa !42  ; 2 uses
  %i.hy = load i32, ptr %i.c, align 4, !tbaa !42
  %.not59 = icmp eq i32 %i.hx, %i.hy
  br i1 %.not59, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4ncnn3Mat4fillIaEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store i32 0, ptr %i.l, align 4, !tbaa !42
  %i.hz = load i32, ptr %i.ap, align 4, !tbaa !47
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.hz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.b, ptr nonnull %i.l, ptr nonnull %7, ptr nonnull %12, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  %.pre114 = load i32, ptr %i.b, align 4, !tbaa !42
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN4ncnn3Mat4fillIaEEvT_.exit
  %i.ia = phi i32 [ %.pre114, %bb.ac ], [ %i.hx, %_ZN4ncnn3Mat4fillIaEEvT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.ib = add nuw nsw i32 %.0106, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ib, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !362

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit61, %bb.b
  ret void

bb.af:                                            ; preds = %bb.y, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.y ], [ %i.ah, %bb.e ]
  %i.ic = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not.i77 = icmp eq ptr %i.ic, null
  br i1 %.not.i77, label %_ZN4ncnn3MatD2Ev.exit60, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.id = atomicrmw add ptr %i.ic, i32 -1 acq_rel, align 4
  %i.ie = icmp eq i32 %i.id, 1
  br i1 %i.ie, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.if = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 3 uses
  %.not3.i78 = icmp eq ptr %i.if, null
  %i.ig = load ptr, ptr %12, align 8, !tbaa !23   ; 3 uses
  br i1 %.not3.i78, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef %i.ig)
          to label %_ZN4ncnn3MatD2Ev.exit60 unwind label %bb.al, !inline_history !0

bb.aj:                                            ; preds = %bb.ah
  %.not.i86 = icmp eq ptr %i.ig, null
  br i1 %.not.i86, label %_ZN4ncnn3MatD2Ev.exit60, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.ig) #9
  br label %_ZN4ncnn3MatD2Ev.exit60

bb.al:                                            ; preds = %bb.ai
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit60:                          ; preds = %bb.ag, %bb.af, %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.im = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %.not.i81 = icmp eq ptr %i.im, null
  br i1 %.not.i81, label %_ZN4ncnn3MatD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit60
  %i.in = atomicrmw add ptr %i.im, i32 -1 acq_rel, align 4
  %i.io = icmp eq i32 %i.in, 1
  br i1 %i.io, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.ip = load ptr, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  %.not3.i82 = icmp eq ptr %i.ip, null
  %i.iq = load ptr, ptr %11, align 8, !tbaa !23   ; 3 uses
  br i1 %.not3.i82, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  invoke void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef %i.iq)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ar, !inline_history !0

bb.ap:                                            ; preds = %bb.an
  %.not.i85 = icmp eq ptr %i.iq, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.iq) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ar:                                            ; preds = %bb.ao
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.am, %_ZN4ncnn3MatD2Ev.exit60, %bb.ao, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_3
begin_hunk_4_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined:bb.a
  %i.kn = load i64, ptr %i.km, align 1, !tbaa !71
  %i.ko = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.kn, i64 0
  %i.kp = bitcast <4 x float> %i.kj to <16 x i8>  ; 2 uses
  %.lobit.i150 = ashr <16 x i8> %i.kp, splat (i8 7)
  %i.kq = shufflevector <16 x i8> %i.kp, <16 x i8> %.lobit.i150, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.kr = bitcast <2 x i64> %i.kl to <16 x i8>    ; 2 uses
  %.lobit.i149 = ashr <16 x i8> %i.kr, splat (i8 7)
  %i.ks = shufflevector <16 x i8> %i.kr, <16 x i8> %.lobit.i149, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.kt = bitcast <2 x i64> %i.ko to <16 x i8>    ; 2 uses
  %.lobit.i148 = ashr <16 x i8> %i.kt, splat (i8 7)
  %i.ku = shufflevector <16 x i8> %i.kt, <16 x i8> %.lobit.i148, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.kv = bitcast <16 x i8> %i.ks to <8 x i16>
  %i.kw = bitcast <16 x i8> %i.kq to <8 x i16>    ; 2 uses
  %i.kx = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kv, <8 x i16> %i.kw)
  %i.ky = add <4 x i32> %i.kx, %i.kf              ; 2 uses
  %i.kz = bitcast <16 x i8> %i.ku to <8 x i16>
  %i.la = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kz, <8 x i16> %i.kw)
  %i.lb = add <4 x i32> %i.la, %i.ke              ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.5129355, i64 16 ; 2 uses
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 4 ; 3 uses
  %i.ld = trunc i64 %indvars.iv.next423 to i32
  %i.le = or i32 %i.ld, 3
  %i.lf = icmp slt i32 %i.le, %i.gq
  br i1 %i.lf, label %.lr.ph358, label %._crit_edge359.loopexit, !llvm.loop !370

._crit_edge359.loopexit:                          ; preds = %.lr.ph358
  %i.lg = trunc nuw i64 %indvars.iv.next423 to i32
  %i.lh = bitcast <4 x i32> %i.ky to <4 x float>
  %i.li = bitcast <4 x i32> %i.lb to <4 x float>
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %._crit_edge359.loopexit, %._crit_edge345
  %.3294.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge345 ], [ %i.lh, %._crit_edge359.loopexit ] ; 2 uses
  %.3290.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge345 ], [ %i.li, %._crit_edge359.loopexit ] ; 2 uses
  %.5129.lcssa = phi ptr [ %.4128.lcssa, %._crit_edge345 ], [ %i.lc, %._crit_edge359.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4.lcssa, %._crit_edge345 ], [ %i.lg, %._crit_edge359.loopexit ] ; 3 uses
  %i.lj = shufflevector <4 x float> %.3294.lcssa, <4 x float> %.3290.lcssa, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.lk = shufflevector <4 x float> %.3294.lcssa, <4 x float> %.3290.lcssa, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ll = bitcast <4 x float> %i.lj to <4 x i32>
  %i.lm = add <4 x i32> %i.ka, %i.ll
  %i.ln = bitcast <4 x float> %i.lk to <4 x i32>
  %i.lo = add <4 x i32> %i.lm, %i.ln              ; 2 uses
  %i.lp = or disjoint i32 %.5.lcssa, 1
  %i.lq = icmp slt i32 %i.lp, %i.gq
  br i1 %i.lq, label %.lr.ph368.preheader, label %.preheader

.lr.ph368.preheader:                              ; preds = %._crit_edge359
  %i.lr = zext i32 %.5.lcssa to i64
  br label %.lr.ph368

.preheader.loopexit:                              ; preds = %.lr.ph368
  %i.ls = trunc nuw i64 %indvars.iv.next426 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge359
  %.0281.in.lcssa = phi <4 x i32> [ %i.lo, %._crit_edge359 ], [ %i.mi, %.preheader.loopexit ] ; 2 uses
  %.6130.lcssa = phi ptr [ %.5129.lcssa, %._crit_edge359 ], [ %i.mj, %.preheader.loopexit ]
  %.6.lcssa = phi i32 [ %.5.lcssa, %._crit_edge359 ], [ %i.ls, %.preheader.loopexit ] ; 2 uses
  %i.lt = icmp slt i32 %.6.lcssa, %i.gq
  br i1 %i.lt, label %.lr.ph374.preheader, label %._crit_edge375

.lr.ph374.preheader:                              ; preds = %.preheader
  %i.lu = zext i32 %.6.lcssa to i64
  br label %.lr.ph374

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %.lr.ph368
  %indvars.iv425 = phi i64 [ %i.lr, %.lr.ph368.preheader ], [ %indvars.iv.next426, %.lr.ph368 ] ; 2 uses
  %.6130365 = phi ptr [ %.5129.lcssa, %.lr.ph368.preheader ], [ %i.mj, %.lr.ph368 ] ; 2 uses
  %.0281.in364 = phi <4 x i32> [ %i.lo, %.lr.ph368.preheader ], [ %i.mi, %.lr.ph368 ]
  %i.lv = load i64, ptr %.6130365, align 1, !tbaa !71
  %i.lw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.lv, i64 0
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv425
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !374
  %i.lz = insertelement <8 x i16> poison, i16 %i.ly, i64 0
  %i.ma = shufflevector <8 x i16> %i.lz, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.mb = bitcast <2 x i64> %i.lw to <16 x i8>    ; 2 uses
  %.lobit.i152 = ashr <16 x i8> %i.mb, splat (i8 7)
  %i.mc = shufflevector <16 x i8> %i.mb, <16 x i8> %.lobit.i152, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.md = bitcast <8 x i16> %i.ma to <16 x i8>    ; 2 uses
  %.lobit.i151 = ashr <16 x i8> %i.md, splat (i8 7)
  %i.me = shufflevector <16 x i8> %i.md, <16 x i8> %.lobit.i151, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.mf = bitcast <16 x i8> %i.mc to <8 x i16>
  %i.mg = bitcast <16 x i8> %i.me to <8 x i16>
  %i.mh = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mf, <8 x i16> %i.mg)
  %i.mi = add <4 x i32> %i.mh, %.0281.in364       ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.6130365, i64 8 ; 2 uses
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 2 ; 3 uses
  %i.mk = trunc i64 %indvars.iv.next426 to i32
  %i.ml = or i32 %i.mk, 1
  %i.mm = icmp slt i32 %i.ml, %i.gq
  br i1 %i.mm, label %.lr.ph368, label %.preheader.loopexit, !llvm.loop !371

.lr.ph374:                                        ; preds = %.lr.ph374.preheader, %.lr.ph374
  %indvars.iv428 = phi i64 [ %i.lu, %.lr.ph374.preheader ], [ %indvars.iv.next429, %.lr.ph374 ] ; 2 uses
  %.7131372 = phi ptr [ %.6130.lcssa, %.lr.ph374.preheader ], [ %i.nd, %.lr.ph374 ] ; 2 uses
  %i.mn = phi <4 x i32> [ %.0281.in.lcssa, %.lr.ph374.preheader ], [ %i.nc, %.lr.ph374 ]
  %i.mo = load i64, ptr %.7131372, align 1, !tbaa !71
  %i.mp = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.mo, i64 0
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv428
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !71
  %i.ms = sext i8 %i.mr to i16
  %i.mt = insertelement <8 x i16> poison, i16 %i.ms, i64 0
  %i.mu = shufflevector <8 x i16> %i.mt, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mv = bitcast <2 x i64> %i.mp to <16 x i8>    ; 2 uses
  %.lobit.i153 = ashr <16 x i8> %i.mv, splat (i8 7)
  %i.mw = shufflevector <16 x i8> %i.mv, <16 x i8> %.lobit.i153, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.mx = bitcast <16 x i8> %i.mw to <8 x i16>    ; 2 uses
  %i.my = mul <8 x i16> %i.mu, %i.mx
  %i.mz = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.mx, <8 x i16> %i.mu)
  %i.na = shufflevector <8 x i16> %i.my, <8 x i16> %i.mz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nb = bitcast <8 x i16> %i.na to <4 x i32>
  %i.nc = add <4 x i32> %i.mn, %i.nb              ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.7131372, i64 4
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %i.ne = trunc nuw i64 %indvars.iv.next429 to i32
  %i.nf = icmp sgt i32 %i.gq, %i.ne
  br i1 %i.nf, label %.lr.ph374, label %._crit_edge375, !llvm.loop !372

._crit_edge375:                                   ; preds = %.lr.ph374, %.preheader
  %.lcssa309 = phi <4 x i32> [ %.0281.in.lcssa, %.preheader ], [ %i.nc, %.lr.ph374 ]
  %i.ng = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ni = insertelement <4 x float> poison, float %i.al, i64 0
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nk = load <4 x float>, ptr %i.ap, align 1, !tbaa !71
  %i.nl = load <4 x float>, ptr %i.be, align 1, !tbaa !71
  %i.nm = sitofp fast <4 x i32> %.lcssa303 to <4 x float>
  %i.nn = fmul fast <4 x float> %i.nh, %i.nm
  %i.no = fmul fast <4 x float> %i.nn, %i.nl
  %i.np = fadd fast <4 x float> %i.nk, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.nr = load <4 x float>, ptr %i.nq, align 1, !tbaa !71
  %i.ns = sitofp fast <4 x i32> %.lcssa309 to <4 x float>
  %i.nt = fmul fast <4 x float> %i.nj, %i.ns
  %i.nu = fmul fast <4 x float> %i.nt, %i.nr
  %i.nv = fadd fast <4 x float> %i.nu, %i.np
  store <4 x float> %i.nv, ptr %i.bl, align 1, !tbaa !71
  %i.nw = add nuw i32 %.0377, 1
  %exitcond.not = icmp eq i32 %.0377, %i.l
  br i1 %exitcond.not, label %._crit_edge380, label %bb.c

._crit_edge380:                                   ; preds = %._crit_edge375, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge380, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.h = load i32, ptr %0, align 4, !tbaa !42     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !42
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !42
  %i.k = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %.not188 = icmp sgt i32 %i.k, %i.j
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0189 = phi i32 [ %i.k, %.lr.ph ], [ %i.hd, %bb.e ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !42
  %i.o = shl nsw i32 %.0189, 2
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !23
  %i.r = load i32, ptr %i.l, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.p to i64                     ; 4 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !56
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 2 uses
  %11 = load <8 x float>, ptr %i.x, align 1, !tbaa !71 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %12 = load <8 x float>, ptr %i.y, align 1, !tbaa !71 ; 2 uses
  %i.z = shufflevector <8 x float> %11, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aa = shufflevector <8 x float> %12, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ab = shufflevector <8 x float> %11, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ac = shufflevector <8 x float> %12, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ae = shufflevector <4 x float> %i.aa, <4 x float> %i.z, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ag = shufflevector <4 x float> %i.ac, <4 x float> %i.ab, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ah = fneg fast <4 x float> %i.ad
  %i.ai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ah, <4 x float> splat (float f0x42B0C0A5))
  %i.aj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ai, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ak = fmul fast <4 x float> %i.aj, splat (float f0x3FB8AA3B)
  %i.al = fadd fast <4 x float> %i.ak, splat (float 5.000000e-01) ; 2 uses
  %i.am = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.al)
  %i.an = sitofp fast <4 x i32> %i.am to <4 x float> ; 2 uses
  %i.ao = fcmp fast olt <4 x float> %i.al, %i.an
  %i.ap = select <4 x i1> %i.ao, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aq = fsub fast <4 x float> %i.an, %i.ap      ; 2 uses
  %i.ar = fmul fast <4 x float> %i.aq, splat (float f0x3F317218)
  %i.as = fsub fast <4 x float> %i.aj, %i.ar      ; 8 uses
  %i.at = fmul fast <4 x float> %i.as, %i.as
  %i.au = fmul fast <4 x float> %i.as, splat (float f0x39506967)
  %i.av = fadd fast <4 x float> %i.au, splat (float f0x3AB743CE)
  %i.aw = fmul fast <4 x float> %i.av, %i.as
  %i.ax = fadd fast <4 x float> %i.aw, splat (float f0x3C088908)
  %i.ay = fmul fast <4 x float> %i.ax, %i.as
  %i.az = fadd fast <4 x float> %i.ay, splat (float f0x3D2AA9C1)
  %i.ba = fmul fast <4 x float> %i.az, %i.as
  %i.bb = fadd fast <4 x float> %i.ba, splat (float f0x3E2AAAAA)
  %i.bc = fmul fast <4 x float> %i.bb, %i.as
  %i.bd = fadd fast <4 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fmul fast <4 x float> %i.at, %i.bd
  %i.bf = fadd fast <4 x float> %i.as, %i.be
  %i.bg = fadd fast <4 x float> %i.bf, splat (float 1.000000e+00)
  %i.bh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aq)
  %i.bi = shl <4 x i32> %i.bh, splat (i32 23)
  %i.bj = add <4 x i32> %i.bi, splat (i32 1065353216)
  %i.bk = bitcast <4 x i32> %i.bj to <4 x float>
  %i.bl = fmul fast <4 x float> %i.bg, %i.bk
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 1.000000e+00)
  %i.bn = fneg fast <4 x float> %i.ae
  %i.bo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bn, <4 x float> splat (float f0x42B0C0A5))
  %i.bp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bq = fmul fast <4 x float> %i.bp, splat (float f0x3FB8AA3B)
  %i.br = fadd fast <4 x float> %i.bq, splat (float 5.000000e-01) ; 2 uses
  %i.bs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br)
  %i.bt = sitofp fast <4 x i32> %i.bs to <4 x float> ; 2 uses
  %i.bu = fcmp fast olt <4 x float> %i.br, %i.bt
  %i.bv = select <4 x i1> %i.bu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bw = fsub fast <4 x float> %i.bt, %i.bv      ; 2 uses
  %i.bx = fmul fast <4 x float> %i.bw, splat (float f0x3F317218)
  %i.by = fsub fast <4 x float> %i.bp, %i.bx      ; 8 uses
  %i.bz = fmul fast <4 x float> %i.by, %i.by
  %i.ca = fmul fast <4 x float> %i.by, splat (float f0x39506967)
  %i.cb = fadd fast <4 x float> %i.ca, splat (float f0x3AB743CE)
  %i.cc = fmul fast <4 x float> %i.cb, %i.by
  %i.cd = fadd fast <4 x float> %i.cc, splat (float f0x3C088908)
  %i.ce = fmul fast <4 x float> %i.cd, %i.by
  %i.cf = fadd fast <4 x float> %i.ce, splat (float f0x3D2AA9C1)
  %i.cg = fmul fast <4 x float> %i.cf, %i.by
  %i.ch = fadd fast <4 x float> %i.cg, splat (float f0x3E2AAAAA)
  %i.ci = fmul fast <4 x float> %i.ch, %i.by
  %i.cj = fadd fast <4 x float> %i.ci, splat (float 5.000000e-01)
  %i.ck = fmul fast <4 x float> %i.bz, %i.cj
  %i.cl = fadd fast <4 x float> %i.by, %i.ck
  %i.cm = fadd fast <4 x float> %i.cl, splat (float 1.000000e+00)
  %i.cn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bw)
  %i.co = shl <4 x i32> %i.cn, splat (i32 23)
  %i.cp = add <4 x i32> %i.co, splat (i32 1065353216)
  %i.cq = bitcast <4 x i32> %i.cp to <4 x float>
  %i.cr = fmul fast <4 x float> %i.cm, %i.cq
  %i.cs = fadd fast <4 x float> %i.cr, splat (float 1.000000e+00)
  %i.ct = fneg fast <4 x float> %i.af
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0x42B0C0A5))
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cw = fmul fast <4 x float> %i.cv, splat (float f0x3FB8AA3B)
  %i.cx = fadd fast <4 x float> %i.cw, splat (float 5.000000e-01) ; 2 uses
  %i.cy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cx)
  %i.cz = sitofp fast <4 x i32> %i.cy to <4 x float> ; 2 uses
  %i.da = fcmp fast olt <4 x float> %i.cx, %i.cz
  %i.db = select <4 x i1> %i.da, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dc = fsub fast <4 x float> %i.cz, %i.db      ; 2 uses
  %i.dd = fmul fast <4 x float> %i.dc, splat (float f0x3F317218)
  %i.de = fsub fast <4 x float> %i.cv, %i.dd      ; 8 uses
  %i.df = fmul fast <4 x float> %i.de, %i.de
  %i.dg = fmul fast <4 x float> %i.de, splat (float f0x39506967)
  %i.dh = fadd fast <4 x float> %i.dg, splat (float f0x3AB743CE)
  %i.di = fmul fast <4 x float> %i.dh, %i.de
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0x3C088908)
  %i.dk = fmul fast <4 x float> %i.dj, %i.de
  %i.dl = fadd fast <4 x float> %i.dk, splat (float f0x3D2AA9C1)
  %i.dm = fmul fast <4 x float> %i.dl, %i.de
  %i.dn = fadd fast <4 x float> %i.dm, splat (float f0x3E2AAAAA)
  %i.do = fmul fast <4 x float> %i.dn, %i.de
  %i.dp = fadd fast <4 x float> %i.do, splat (float 5.000000e-01)
  %i.dq = fmul fast <4 x float> %i.df, %i.dp
  %i.dr = fadd fast <4 x float> %i.de, %i.dq
  %i.ds = fadd fast <4 x float> %i.dr, splat (float 1.000000e+00)
  %i.dt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dc)
  %i.du = shl <4 x i32> %i.dt, splat (i32 23)
  %i.dv = add <4 x i32> %i.du, splat (i32 1065353216)
  %i.dw = bitcast <4 x i32> %i.dv to <4 x float>
  %i.dx = fmul fast <4 x float> %i.ds, %i.dw
  %i.dy = fadd fast <4 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = fmul fast <4 x float> %i.ag, splat (float -2.000000e+00)
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> splat (float f0x42B0C0A5))
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ec = fmul fast <4 x float> %i.eb, splat (float f0x3FB8AA3B)
  %i.ed = fadd fast <4 x float> %i.ec, splat (float 5.000000e-01) ; 2 uses
  %i.ee = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ed)
  %i.ef = sitofp fast <4 x i32> %i.ee to <4 x float> ; 2 uses
  %i.eg = fcmp fast olt <4 x float> %i.ed, %i.ef
  %i.eh = select <4 x i1> %i.eg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ei = fsub fast <4 x float> %i.ef, %i.eh      ; 2 uses
  %i.ej = fmul fast <4 x float> %i.ei, splat (float f0x3F317218)
  %i.ek = fsub fast <4 x float> %i.eb, %i.ej      ; 8 uses
  %i.el = fmul fast <4 x float> %i.ek, %i.ek
  %i.em = fmul fast <4 x float> %i.ek, splat (float f0x39506967)
  %i.en = fadd fast <4 x float> %i.em, splat (float f0x3AB743CE)
  %i.eo = fmul fast <4 x float> %i.en, %i.ek
  %i.ep = fadd fast <4 x float> %i.eo, splat (float f0x3C088908)
  %i.eq = fmul fast <4 x float> %i.ep, %i.ek
  %i.er = fadd fast <4 x float> %i.eq, splat (float f0x3D2AA9C1)
  %i.es = fmul fast <4 x float> %i.er, %i.ek
  %i.et = fadd fast <4 x float> %i.es, splat (float f0x3E2AAAAA)
  %i.eu = fmul fast <4 x float> %i.et, %i.ek
  %i.ev = fadd fast <4 x float> %i.eu, splat (float 5.000000e-01)
  %i.ew = fmul fast <4 x float> %i.el, %i.ev
  %i.ex = fadd fast <4 x float> %i.ek, %i.ew
  %i.ey = fadd fast <4 x float> %i.ex, splat (float 1.000000e+00)
  %i.ez = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ei)
  %i.fa = shl <4 x i32> %i.ez, splat (i32 23)
  %i.fb = add <4 x i32> %i.fa, splat (i32 1065353216)
  %i.fc = bitcast <4 x i32> %i.fb to <4 x float>
  %i.fd = fmul fast <4 x float> %i.ey, %i.fc
  %i.fe = fadd fast <4 x float> %i.fd, splat (float 1.000000e+00)
  %i.ff = fdiv fast <4 x float> splat (float 2.000000e+00), %i.fe
  %i.fg = fadd fast <4 x float> %i.ff, splat (float -1.000000e+00)
  %i.fh = load ptr, ptr %5, align 8, !tbaa !74
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.t ; 2 uses
  %i.fj = load <4 x float>, ptr %i.fi, align 1, !tbaa !71
  %i.fk = fdiv fast <4 x float> %i.fj, %i.cs
  %i.fl = fdiv fast <4 x float> %i.fg, %i.bm
  %i.fm = fadd fast <4 x float> %i.fl, %i.fk      ; 2 uses
  %i.fn = fmul fast <4 x float> %i.fm, splat (float -2.000000e+00)
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0x42B0C0A5))
  %i.fp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fq = fmul fast <4 x float> %i.fp, splat (float f0x3FB8AA3B)
  %i.fr = fadd fast <4 x float> %i.fq, splat (float 5.000000e-01) ; 2 uses
  %i.fs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fr)
  %i.ft = sitofp fast <4 x i32> %i.fs to <4 x float> ; 2 uses
  %i.fu = fcmp fast olt <4 x float> %i.fr, %i.ft
  %i.fv = select <4 x i1> %i.fu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fw = fsub fast <4 x float> %i.ft, %i.fv      ; 2 uses
  %i.fx = fmul fast <4 x float> %i.fw, splat (float f0x3F317218)
  %i.fy = fsub fast <4 x float> %i.fp, %i.fx      ; 8 uses
  %i.fz = fmul fast <4 x float> %i.fy, %i.fy
  %i.ga = fmul fast <4 x float> %i.fy, splat (float f0x39506967)
  %i.gb = fadd fast <4 x float> %i.ga, splat (float f0x3AB743CE)
  %i.gc = fmul fast <4 x float> %i.gb, %i.fy
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0x3C088908)
  %i.ge = fmul fast <4 x float> %i.gd, %i.fy
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0x3D2AA9C1)
  %i.gg = fmul fast <4 x float> %i.gf, %i.fy
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3E2AAAAA)
  %i.gi = fmul fast <4 x float> %i.gh, %i.fy
  %i.gj = fadd fast <4 x float> %i.gi, splat (float 5.000000e-01)
  %i.gk = fmul fast <4 x float> %i.fz, %i.gj
  %i.gl = fadd fast <4 x float> %i.fy, %i.gk
  %i.gm = fadd fast <4 x float> %i.gl, splat (float 1.000000e+00)
  %i.gn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fw)
  %i.go = shl <4 x i32> %i.gn, splat (i32 23)
  %i.gp = add <4 x i32> %i.go, splat (i32 1065353216)
  %i.gq = bitcast <4 x i32> %i.gp to <4 x float>
  %i.gr = fmul fast <4 x float> %i.gm, %i.gq
  %i.gs = fadd fast <4 x float> %i.gr, splat (float 1.000000e+00)
  %i.gt = fdiv fast <4 x float> splat (float 2.000000e+00), %i.gs
  %i.gu = fadd fast <4 x float> %i.gt, splat (float -1.000000e+00)
  %i.gv = fdiv fast <4 x float> %i.gu, %i.dy      ; 2 uses
  store <4 x float> %i.fm, ptr %i.fi, align 1, !tbaa !71
  %i.gw = load i32, ptr %6, align 4, !tbaa !42
  %i.gx = load i32, ptr %7, align 4, !tbaa !42
  %i.gy = icmp eq i32 %i.gw, %i.gx
  br i1 %i.gy, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.gz = load ptr, ptr %8, align 8, !tbaa !74
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.t
  store <4 x float> %i.gv, ptr %i.ha, align 1, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %9, %bb.d ], [ %10, %bb.c ]
  %i.hb = load ptr, ptr %.sink, align 8, !tbaa !74
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.t
  store <4 x float> %i.gv, ptr %i.hc, align 1, !tbaa !71
  %i.hd = add i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
end_hunk_4
