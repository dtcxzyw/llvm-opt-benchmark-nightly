Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_XBGR2101010_to_P010:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa4 = phi ptr [ %i.ak, %middle.block ], [ %i.bv, %scalar.ph ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.lcssa4, i64 %i.t
  %i.bx = getelementptr inbounds i8, ptr %.0162189, i64 %i.u
  %i.by = add nuw nsw i32 %.0160190, 1            ; 2 uses
  %exitcond217.not = icmp eq i32 %i.by, %1
  br i1 %exitcond217.not, label %._crit_edge191.split, label %.preheader185, !llvm.loop !110

._crit_edge191.split:                             ; preds = %._crit_edge, %.preheader185.lr.ph
  %.not236 = icmp eq i32 %1, 1
  br i1 %.not236, label %._crit_edge201, label %.preheader184.lr.ph

.preheader184.lr.ph:                              ; preds = %._crit_edge191.split
  %.neg = sdiv i32 %i.h, -2
  %.neg168 = shl nsw i32 %.neg, 1
  %i.bz = add i32 %i.m, %.neg168
  %i.ca = sext i32 %3 to i64
  %i.cb = getelementptr i8, ptr %2, i64 %i.ca     ; 2 uses
  %i.cc = icmp sgt i32 %0, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.not173 = icmp eq i32 %i.e, 0
  %i.cf = zext i32 %i.bz to i64
  %i.cg = sext i32 %i.a to i64                    ; 3 uses
  %wide.trip.count221 = zext i32 %i.d to i64      ; 5 uses
  %i.ch = shl nuw nsw i32 %i.d, 1                 ; 2 uses
  %i.ci = shl nuw nsw i64 %wide.trip.count221, 2
  %i.cj = add nsw i32 %i.b, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.cg, %i.ck
  %i.cm = shl nuw nsw i64 %wide.trip.count221, 3
  %i.cn = add i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = getelementptr i8, ptr %2, i64 %i.cn
  %scevgep15 = getelementptr i8, ptr %i.co, i64 %i.u
  %scevgep16 = getelementptr i8, ptr %2, i64 %i.cn
  %min.iters.check26 = icmp ult i32 %0, 8
  %stride.check24 = icmp slt i32 %i.a, 0
  %n.vec28 = and i64 %wide.trip.count221, 1073741820 ; 4 uses
  %i.cp = shl nuw nsw i64 %n.vec28, 2
  %cmp.n50 = icmp eq i64 %n.vec28, %wide.trip.count221
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.lr.ph, %bb.c
  %.1161200 = phi i32 [ 0, %.preheader184.lr.ph ], [ %i.gx, %bb.c ]
  %.1163199 = phi ptr [ %2, %.preheader184.lr.ph ], [ %i.gv, %bb.c ] ; 4 uses
  %.0164198 = phi ptr [ %i.cb, %.preheader184.lr.ph ], [ %i.gw, %bb.c ] ; 5 uses
  %.0165197 = phi ptr [ %i.p, %.preheader184.lr.ph ], [ %i.gu, %bb.c ] ; 8 uses
  br i1 %i.cc, label %.lr.ph, label %._crit_edge194

.lr.ph:                                           ; preds = %.preheader184
  %i.cq = load <4 x float>, ptr %i.cd, align 8    ; 7 uses
  %i.cr = load <2 x float>, ptr %i.ce, align 8    ; 4 uses
  br i1 %min.iters.check26, label %scalar.ph25.preheader, label %vector.memcheck13

vector.memcheck13:                                ; preds = %.lr.ph
  %scevgep14 = getelementptr i8, ptr %.0165197, i64 %i.ci ; 2 uses
  %bound017 = icmp ult ptr %.0165197, %scevgep15
  %bound118 = icmp ult ptr %i.cb, %scevgep14
  %found.conflict19 = and i1 %bound017, %bound118
  %bound021 = icmp ult ptr %.0165197, %scevgep16
  %bound122 = icmp ult ptr %2, %scevgep14
  %found.conflict23 = and i1 %bound021, %bound122
  %i.cs = or i1 %found.conflict23, %stride.check24
  %conflict.rdx = or i1 %found.conflict19, %i.cs
  br i1 %conflict.rdx, label %scalar.ph25.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %vector.memcheck13
  %i.ct = getelementptr i8, ptr %.0165197, i64 %i.cp ; 2 uses
  %broadcast.splat30 = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat32 = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat34 = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat36 = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat38 = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat40 = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph27
  %index42 = phi i64 [ 0, %vector.ph27 ], [ %index.next48, %vector.body41 ] ; 3 uses
  %i.cu = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %.0165197, i64 %i.cu
  %i.cv = shl nuw nsw i64 %index42, 1             ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.cv
  %wide.vec = load <8 x i32>, ptr %i.cw, align 4, !alias.scope !125 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec44 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.cv
  %wide.vec45 = load <8 x i32>, ptr %i.cx, align 4, !alias.scope !126 ; 2 uses
  %strided.vec46 = shufflevector <8 x i32> %wide.vec45, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec47 = shufflevector <8 x i32> %wide.vec45, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.cy = and <4 x i32> %strided.vec, splat (i32 1023)
  %i.cz = and <4 x i32> %strided.vec44, splat (i32 1023)
  %i.da = add nuw nsw <4 x i32> %i.cz, %i.cy
  %i.db = and <4 x i32> %strided.vec46, splat (i32 1023)
  %i.dc = add nuw nsw <4 x i32> %i.da, %i.db
  %i.dd = and <4 x i32> %strided.vec47, splat (i32 1023)
  %i.de = add nuw nsw <4 x i32> %i.dc, %i.dd
  %i.df = lshr <4 x i32> %i.de, splat (i32 2)
  %i.dg = and <4 x i32> %strided.vec, splat (i32 1047552)
  %i.dh = and <4 x i32> %strided.vec44, splat (i32 1047552)
  %i.di = add nuw nsw <4 x i32> %i.dh, %i.dg
  %i.dj = and <4 x i32> %strided.vec46, splat (i32 1047552)
  %i.dk = add nuw nsw <4 x i32> %i.di, %i.dj
  %i.dl = and <4 x i32> %strided.vec47, splat (i32 1047552)
  %i.dm = add nuw nsw <4 x i32> %i.dk, %i.dl
  %i.dn = lshr <4 x i32> %i.dm, splat (i32 12)
  %i.do = and <4 x i32> %strided.vec, splat (i32 1072693248)
  %i.dp = and <4 x i32> %strided.vec44, splat (i32 1072693248)
  %i.dq = add nuw nsw <4 x i32> %i.dp, %i.do
  %i.dr = and <4 x i32> %strided.vec46, splat (i32 1072693248)
  %i.ds = add nuw <4 x i32> %i.dq, %i.dr
  %i.dt = and <4 x i32> %strided.vec47, splat (i32 1072693248)
  %i.du = add nuw <4 x i32> %i.ds, %i.dt
  %i.dv = lshr <4 x i32> %i.du, splat (i32 22)
  %i.dw = uitofp nneg <4 x i32> %i.df to <4 x float> ; 2 uses
  %i.dx = uitofp nneg <4 x i32> %i.dn to <4 x float> ; 2 uses
  %i.dy = fmul <4 x float> %broadcast.splat32, %i.dx
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat30, <4 x float> %i.dw, <4 x float> %i.dy)
  %i.ea = uitofp nneg <4 x i32> %i.dv to <4 x float> ; 2 uses
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat34, <4 x float> %i.ea, <4 x float> %i.dz)
  %i.ec = fmul <4 x float> %broadcast.splat38, %i.dx
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat36, <4 x float> %i.dw, <4 x float> %i.ec)
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat40, <4 x float> %i.ea, <4 x float> %i.ed)
  %i.ef = shufflevector <4 x float> %i.eb, <4 x float> %i.ee, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.eg = fadd <8 x float> %i.ef, splat (float 5.000000e-01)
  %i.eh = fptosi <8 x float> %i.eg to <8 x i32>
  %i.ei = trunc <8 x i32> %i.eh to <8 x i16>
  %i.ej = shl <8 x i16> %i.ei, splat (i16 6)
  %interleaved.vec = xor <8 x i16> %i.ej, splat (i16 -32768)
  store <8 x i16> %interleaved.vec, ptr %next.gep43, align 2, !alias.scope !127, !noalias !128
  %index.next48 = add nuw i64 %index42, 4         ; 2 uses
  %i.ek = icmp eq i64 %index.next48, %n.vec28
  br i1 %i.ek, label %middle.block49, label %vector.body41, !llvm.loop !115

middle.block49:                                   ; preds = %vector.body41
  br i1 %cmp.n50, label %._crit_edge194, label %scalar.ph25.preheader

scalar.ph25.preheader:                            ; preds = %vector.memcheck13, %.lr.ph, %middle.block49
  %indvars.iv218.ph = phi i64 [ 0, %vector.memcheck13 ], [ 0, %.lr.ph ], [ %n.vec28, %middle.block49 ]
  %.1166192.ph = phi ptr [ %.0165197, %vector.memcheck13 ], [ %.0165197, %.lr.ph ], [ %i.ct, %middle.block49 ]
  %i.el = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.em = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.cq, <4 x float> %i.em, <2 x i32> <i32 1, i32 4>
  %i.eo = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ep = shufflevector <2 x float> %i.el, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph25

scalar.ph25:                                      ; preds = %scalar.ph25.preheader, %scalar.ph25
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %scalar.ph25 ], [ %indvars.iv218.ph, %scalar.ph25.preheader ] ; 2 uses
  %.1166192 = phi ptr [ %i.ex, %scalar.ph25 ], [ %.1166192.ph, %scalar.ph25.preheader ] ; 2 uses
  %i.eq = shl nuw nsw i64 %indvars.iv218, 1       ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.eq
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.1166192, i64 4 ; 2 uses
  %i.ey = load <2 x i32>, ptr %i.er, align 4      ; 2 uses
  %i.ez = shufflevector <2 x i32> %i.ey, <2 x i32> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.fa = shufflevector <2 x i32> %i.ey, <2 x i32> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.fb = and <3 x i32> %i.fa, <i32 1072693248, i32 1023, i32 1047552>
  %i.fc = and <3 x i32> %i.ez, <i32 1072693248, i32 1023, i32 1047552>
  %i.fd = add nuw nsw <3 x i32> %i.fc, %i.fb
  %i.fe = insertelement <3 x i32> poison, i32 %i.et, i64 0
  %i.ff = shufflevector <3 x i32> %i.fe, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fg = and <3 x i32> %i.ff, <i32 1072693248, i32 1023, i32 1047552>
  %i.fh = add nuw <3 x i32> %i.fd, %i.fg
  %i.fi = insertelement <3 x i32> poison, i32 %i.ew, i64 0
  %i.fj = shufflevector <3 x i32> %i.fi, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fk = and <3 x i32> %i.fj, <i32 1072693248, i32 1023, i32 1047552>
  %i.fl = add nuw <3 x i32> %i.fh, %i.fk
  %i.fm = lshr <3 x i32> %i.fl, <i32 22, i32 2, i32 12>
  %i.fn = uitofp nneg <3 x i32> %i.fm to <3 x float> ; 3 uses
  %i.fo = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fp = fmul <2 x float> %i.en, %i.fo
  %i.fq = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.fq, <2 x float> %i.fp)
  %i.fs = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.fs, <2 x float> %i.fr)
  %i.fu = fadd <2 x float> %i.ft, splat (float 5.000000e-01)
  %i.fv = fptosi <2 x float> %i.fu to <2 x i32>
  %i.fw = trunc <2 x i32> %i.fv to <2 x i16>
  %i.fx = shl <2 x i16> %i.fw, splat (i16 6)
  %i.fy = xor <2 x i16> %i.fx, splat (i16 -32768)
  store <2 x i16> %i.fy, ptr %.1166192, align 2
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge194, label %scalar.ph25, !llvm.loop !116

._crit_edge194:                                   ; preds = %scalar.ph25, %middle.block49, %.preheader184
  %.1166.lcssa = phi ptr [ %.0165197, %.preheader184 ], [ %i.ct, %middle.block49 ], [ %i.ex, %scalar.ph25 ] ; 3 uses
  %.1.lcssa.shrunk = phi i32 [ 0, %.preheader184 ], [ %i.ch, %middle.block49 ], [ %i.ch, %scalar.ph25 ]
  br i1 %.not173, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge194
  %.1.lcssa = zext nneg i32 %.1.lcssa.shrunk to i64 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %.1.lcssa
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %.1.lcssa
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %.1166.lcssa, i64 4
  %7 = insertelement <3 x i32> poison, i32 %i.ga, i64 0
  %8 = shufflevector <3 x i32> %7, <3 x i32> poison, <3 x i32> zeroinitializer
  %9 = and <3 x i32> %8, <i32 1072693248, i32 1023, i32 1047552>
  %10 = insertelement <3 x i32> poison, i32 %i.gc, i64 0
  %11 = shufflevector <3 x i32> %10, <3 x i32> poison, <3 x i32> zeroinitializer
  %12 = and <3 x i32> %11, <i32 1072693248, i32 1023, i32 1047552>
  %13 = add nuw nsw <3 x i32> %12, %9
  %14 = lshr <3 x i32> %13, <i32 21, i32 1, i32 11>
  %15 = uitofp nneg <3 x i32> %14 to <3 x float>  ; 3 uses
  %i.ge = load <4 x float>, ptr %i.cd, align 8    ; 3 uses
  %i.gf = load <2 x float>, ptr %i.ce, align 8    ; 2 uses
  %i.gg = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gh = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gi = shufflevector <4 x float> %i.ge, <4 x float> %i.gh, <2 x i32> <i32 1, i32 4>
  %16 = shufflevector <3 x float> %15, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gj = fmul <2 x float> %i.gi, %16
  %i.gk = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %17 = shufflevector <3 x float> %15, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %17, <2 x float> %i.gj)
  %i.gm = shufflevector <2 x float> %i.gg, <2 x float> %i.gf, <2 x i32> <i32 0, i32 3>
  %i.gn = shufflevector <3 x float> %15, <3 x float> poison, <2 x i32> zeroinitializer
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.gn, <2 x float> %i.gl)
  %i.gp = fadd <2 x float> %i.go, splat (float 5.000000e-01)
  %i.gq = fptosi <2 x float> %i.gp to <2 x i32>
  %i.gr = trunc <2 x i32> %i.gq to <2 x i16>
  %i.gs = shl <2 x i16> %i.gr, splat (i16 6)
  %i.gt = xor <2 x i16> %i.gs, splat (i16 -32768)
  store <2 x i16> %i.gt, ptr %.1166.lcssa, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge194
  %.2167 = phi ptr [ %i.gd, %bb.b ], [ %.1166.lcssa, %._crit_edge194 ]
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.2167, i64 %i.cf ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.1163199, i64 %i.cg ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %.0164198, i64 %i.cg
  %i.gx = add nuw nsw i32 %.1161200, 1            ; 2 uses
  %exitcond223.not = icmp eq i32 %i.gx, %i.b
  br i1 %exitcond223.not, label %._crit_edge201, label %.preheader184, !llvm.loop !117

._crit_edge201:                                   ; preds = %bb.c, %bb.a, %._crit_edge191.split
  %.0165.lcssa = phi ptr [ %i.p, %._crit_edge191.split ], [ %i.p, %bb.a ], [ %i.gu, %bb.c ] ; 7 uses
  %.1163.lcssa = phi ptr [ %2, %._crit_edge191.split ], [ %2, %bb.a ], [ %i.gv, %bb.c ] ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge201
  %i.gy = icmp sgt i32 %0, 1
  br i1 %i.gy, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hb = load <4 x float>, ptr %i.gz, align 8    ; 7 uses
  %i.hc = load <2 x float>, ptr %i.ha, align 8    ; 4 uses
  %wide.trip.count227 = zext nneg i32 %i.d to i64 ; 5 uses
  %min.iters.check60 = icmp ult i32 %0, 8
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph206
  %i.hd = shl nuw nsw i64 %wide.trip.count227, 2
  %scevgep54 = getelementptr i8, ptr %.0165.lcssa, i64 %i.hd
  %i.he = shl nuw nsw i64 %wide.trip.count227, 3
  %scevgep55 = getelementptr i8, ptr %.1163.lcssa, i64 %i.he
  %bound056 = icmp ult ptr %.0165.lcssa, %scevgep55
  %bound157 = icmp ult ptr %.1163.lcssa, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %wide.trip.count227, 1073741820 ; 4 uses
  %i.hf = shl nuw nsw i64 %n.vec62, 2
  %i.hg = getelementptr i8, ptr %.0165.lcssa, i64 %i.hf ; 2 uses
  %broadcast.splat64 = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat66 = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat68 = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat70 = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat72 = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat74 = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph61
  %index76 = phi i64 [ 0, %vector.ph61 ], [ %index.next82, %vector.body75 ] ; 3 uses
  %i.hh = shl i64 %index76, 2
  %next.gep77 = getelementptr i8, ptr %.0165.lcssa, i64 %i.hh
  %i.hi = shl nuw nsw i64 %index76, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %.1163.lcssa, i64 %i.hi
  %wide.vec78 = load <8 x i32>, ptr %i.hj, align 4, !alias.scope !129 ; 2 uses
  %strided.vec79 = shufflevector <8 x i32> %wide.vec78, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec80 = shufflevector <8 x i32> %wide.vec78, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.hk = and <4 x i32> %strided.vec79, splat (i32 1023)
  %i.hl = and <4 x i32> %strided.vec80, splat (i32 1023)
  %i.hm = add nuw nsw <4 x i32> %i.hl, %i.hk
  %i.hn = lshr <4 x i32> %i.hm, splat (i32 1)
  %i.ho = and <4 x i32> %strided.vec79, splat (i32 1047552)
  %i.hp = and <4 x i32> %strided.vec80, splat (i32 1047552)
  %i.hq = add nuw nsw <4 x i32> %i.hp, %i.ho
  %i.hr = lshr <4 x i32> %i.hq, splat (i32 11)
  %i.hs = and <4 x i32> %strided.vec79, splat (i32 1072693248)
  %i.ht = and <4 x i32> %strided.vec80, splat (i32 1072693248)
  %i.hu = add nuw nsw <4 x i32> %i.ht, %i.hs
  %i.hv = lshr <4 x i32> %i.hu, splat (i32 21)
  %i.hw = uitofp nneg <4 x i32> %i.hn to <4 x float> ; 2 uses
  %i.hx = uitofp nneg <4 x i32> %i.hr to <4 x float> ; 2 uses
  %i.hy = fmul <4 x float> %broadcast.splat66, %i.hx
  %i.hz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat64, <4 x float> %i.hw, <4 x float> %i.hy)
  %i.ia = uitofp nneg <4 x i32> %i.hv to <4 x float> ; 2 uses
  %i.ib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat68, <4 x float> %i.ia, <4 x float> %i.hz)
  %i.ic = fmul <4 x float> %broadcast.splat72, %i.hx
  %i.id = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat70, <4 x float> %i.hw, <4 x float> %i.ic)
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat74, <4 x float> %i.ia, <4 x float> %i.id)
  %i.if = shufflevector <4 x float> %i.ib, <4 x float> %i.ie, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ig = fadd <8 x float> %i.if, splat (float 5.000000e-01)
  %i.ih = fptosi <8 x float> %i.ig to <8 x i32>
  %i.ii = trunc <8 x i32> %i.ih to <8 x i16>
  %i.ij = shl <8 x i16> %i.ii, splat (i16 6)
  %interleaved.vec81 = xor <8 x i16> %i.ij, splat (i16 -32768)
  store <8 x i16> %interleaved.vec81, ptr %next.gep77, align 2, !alias.scope !130, !noalias !129
  %index.next82 = add nuw i64 %index76, 4         ; 2 uses
  %i.ik = icmp eq i64 %index.next82, %n.vec62
  br i1 %i.ik, label %middle.block83, label %vector.body75, !llvm.loop !121

middle.block83:                                   ; preds = %vector.body75
  %cmp.n84 = icmp eq i64 %n.vec62, %wide.trip.count227
  br i1 %cmp.n84, label %._crit_edge207.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %vector.memcheck53, %.lr.ph206, %middle.block83
  %indvars.iv224.ph = phi i64 [ 0, %vector.memcheck53 ], [ 0, %.lr.ph206 ], [ %n.vec62, %middle.block83 ]
  %.3204.ph = phi ptr [ %.0165.lcssa, %vector.memcheck53 ], [ %.0165.lcssa, %.lr.ph206 ], [ %i.hg, %middle.block83 ]
  %i.il = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.im = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.in = shufflevector <4 x float> %i.hb, <4 x float> %i.im, <2 x i32> <i32 1, i32 4>
  %i.io = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ip = shufflevector <2 x float> %i.il, <2 x float> %i.hc, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %scalar.ph59 ], [ %indvars.iv224.ph, %scalar.ph59.preheader ] ; 2 uses
  %.3204 = phi ptr [ %i.ir, %scalar.ph59 ], [ %.3204.ph, %scalar.ph59.preheader ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv224, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %.1163.lcssa, i64 %.idx
  %i.ir = getelementptr inbounds nuw i8, ptr %.3204, i64 4 ; 2 uses
  %i.is = load <2 x i32>, ptr %i.iq, align 4      ; 2 uses
  %i.it = shufflevector <2 x i32> %i.is, <2 x i32> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.iu = shufflevector <2 x i32> %i.is, <2 x i32> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.iv = and <3 x i32> %i.iu, <i32 1072693248, i32 1023, i32 1047552>
  %i.iw = and <3 x i32> %i.it, <i32 1072693248, i32 1023, i32 1047552>
  %i.ix = add nuw nsw <3 x i32> %i.iw, %i.iv
  %i.iy = lshr <3 x i32> %i.ix, <i32 21, i32 1, i32 11>
  %i.iz = uitofp nneg <3 x i32> %i.iy to <3 x float> ; 3 uses
  %i.ja = shufflevector <3 x float> %i.iz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jb = fmul <2 x float> %i.in, %i.ja
  %i.jc = shufflevector <3 x float> %i.iz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.jc, <2 x float> %i.jb)
  %i.je = shufflevector <3 x float> %i.iz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.je, <2 x float> %i.jd)
  %i.jg = fadd <2 x float> %i.jf, splat (float 5.000000e-01)
  %i.jh = fptosi <2 x float> %i.jg to <2 x i32>
  %i.ji = trunc <2 x i32> %i.jh to <2 x i16>
  %i.jj = shl <2 x i16> %i.ji, splat (i16 6)
  %i.jk = xor <2 x i16> %i.jj, splat (i16 -32768)
  store <2 x i16> %i.jk, ptr %.3204, align 2
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge207.loopexit, label %scalar.ph59, !llvm.loop !122

._crit_edge207.loopexit:                          ; preds = %scalar.ph59, %middle.block83
  %.lcssa = phi ptr [ %i.hg, %middle.block83 ], [ %i.ir, %scalar.ph59 ]
  %i.jl = shl nuw nsw i32 %i.d, 1
  %i.jm = zext nneg i32 %i.jl to i64
  br label %._crit_edge207

._crit_edge207:                                   ; preds = %._crit_edge207.loopexit, %.preheader
  %.3.lcssa = phi ptr [ %.0165.lcssa, %.preheader ], [ %.lcssa, %._crit_edge207.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ 0, %.preheader ], [ %i.jm, %._crit_edge207.loopexit ]
  %.not169 = icmp eq i32 %i.e, 0
  br i1 %.not169, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge207
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.1163.lcssa, i64 %.2.lcssa
  %i.jo = load i32, ptr %i.jn, align 4            ; 3 uses
  %i.jp = and i32 %i.jo, 1023
  %i.jq = lshr i32 %i.jo, 10
  %i.jr = and i32 %i.jq, 1023
  %i.js = lshr i32 %i.jo, 20
  %i.jt = and i32 %i.js, 1023
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.jv = load float, ptr %i.ju, align 8
  %i.jw = uitofp nneg i32 %i.jp to float          ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.jy = load float, ptr %i.jx, align 4
  %i.jz = uitofp nneg i32 %i.jr to float          ; 2 uses
  %i.ka = fmul float %i.jy, %i.jz
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jw, float %i.ka)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kd = load float, ptr %i.kc, align 8
  %i.ke = uitofp nneg i32 %i.jt to float          ; 2 uses
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.kd, float %i.ke, float %i.kb)
  %i.kg = fadd float %i.kf, 5.000000e-01
  %i.kh = fptosi float %i.kg to i32
  %.tr = trunc i32 %i.kh to i16
  %i.ki = shl i16 %.tr, 6
  %i.kj = xor i16 %i.ki, -32768
  %i.kk = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2
  store i16 %i.kj, ptr %.3.lcssa, align 2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.km = load float, ptr %i.kl, align 4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ko = load float, ptr %i.kn, align 8
  %i.kp = fmul float %i.ko, %i.jz
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.km, float %i.jw, float %i.kp)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ks = load float, ptr %i.kr, align 4
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.ke, float %i.kq)
  %i.ku = fadd float %i.kt, 5.000000e-01
  %i.kv = fptosi float %i.ku to i32
  %.tr170 = trunc i32 %i.kv to i16
  %i.kw = shl i16 %.tr170, 6
  %i.kx = xor i16 %i.kw, -32768
  store i16 %i.kx, ptr %i.kk, align 2
  br label %bb.e

end_hunk_0
