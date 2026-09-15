Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fft?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fft:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph66.i.prol.loopexit, label %.lr.ph66.i.prol, !llvm.loop !11

.lr.ph66.i.prol.loopexit:                         ; preds = %.lr.ph66.i.prol, %.lr.ph66.i.preheader
  %indvars.iv76.i.unr = phi i64 [ %indvars.iv76.i.ph, %.lr.ph66.i.preheader ], [ %indvars.iv.next77.i.prol, %.lr.ph66.i.prol ]
  %i.cn = sub nsw i64 %indvars.iv76.i.ph, %wide.trip.count79.i
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %make_sintbl.exit, label %.lr.ph66.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i, %.lr.ph64.preheader.i.new
  %indvars.iv71.i = phi i64 [ 0, %.lr.ph64.preheader.i.new ], [ %indvars.iv.next72.i.3, %.lr.ph64.i ] ; 6 uses
  %niter195 = phi i64 [ 0, %.lr.ph64.preheader.i.new ], [ %niter195.next.3, %.lr.ph64.i ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv71.i
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !29
  %i.cr = sub nsw i64 %i.bt, %indvars.iv71.i
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cr
  store float %i.cq, ptr %i.cs, align 4, !tbaa !29
  %indvars.iv.next72.i = or disjoint i64 %indvars.iv71.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !29
  %i.cv = sub nsw i64 %i.bt, %indvars.iv.next72.i
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cv
  store float %i.cu, ptr %i.cw, align 4, !tbaa !29
  %indvars.iv.next72.i.1 = or disjoint i64 %indvars.iv71.i, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i.1
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !29
  %i.cz = sub nsw i64 %i.bt, %indvars.iv.next72.i.1
  %i.da = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !29
  %indvars.iv.next72.i.2 = or disjoint i64 %indvars.iv71.i, 3 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next72.i.2
  %i.dc = load float, ptr %i.db, align 4, !tbaa !29
  %i.dd = sub nsw i64 %i.bt, %indvars.iv.next72.i.2
  %i.de = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.dd
  store float %i.dc, ptr %i.de, align 4, !tbaa !29
  %indvars.iv.next72.i.3 = add nuw nsw i64 %indvars.iv71.i, 4 ; 2 uses
  %niter195.next.3 = add i64 %niter195, 4         ; 2 uses
  %niter195.ncmp.3 = icmp eq i64 %niter195.next.3, %unroll_iter194
  br i1 %niter195.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph64.i, !llvm.loop !12

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.prol.loopexit, %.lr.ph66.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i.3, %.lr.ph66.i ], [ %indvars.iv76.i.unr, %.lr.ph66.i.prol.loopexit ] ; 6 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv76.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !29
  %i.dh = fneg float %i.dg
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv76.i
  store float %i.dh, ptr %gep.i, align 4, !tbaa !29
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !29
  %i.dk = fneg float %i.dj
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i
  store float %i.dk, ptr %gep.i.1, align 4, !tbaa !29
  %indvars.iv.next77.i.1 = add nuw nsw i64 %indvars.iv76.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i.1
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !29
  %i.dn = fneg float %i.dm
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i.1
  store float %i.dn, ptr %gep.i.2, align 4, !tbaa !29
  %indvars.iv.next77.i.2 = add nuw nsw i64 %indvars.iv76.i, 3 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next77.i.2
  %i.dp = load float, ptr %i.do, align 4, !tbaa !29
  %i.dq = fneg float %i.dp
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next77.i.2
  store float %i.dq, ptr %gep.i.3, align 4, !tbaa !29
  %indvars.iv.next77.i.3 = add nuw nsw i64 %indvars.iv76.i, 4 ; 2 uses
  %exitcond80.not.i.3 = icmp eq i64 %indvars.iv.next77.i.3, %wide.trip.count79.i
  br i1 %exitcond80.not.i.3, label %make_sintbl.exit, label %.lr.ph66.i, !llvm.loop !13

make_sintbl.exit:                                 ; preds = %.lr.ph66.i.prol.loopexit, %.lr.ph66.i, %middle.block, %.preheader.i
  store i32 0, ptr %i.n, align 4, !tbaa !7
  %.not17.i = icmp samesign ugt i32 %.0106, 1
  br i1 %.not17.i, label %.preheader.i113.preheader, label %make_bitrev.exit

.preheader.i113.preheader:                        ; preds = %make_sintbl.exit
  %i.dr = add nsw i64 %i.l, -1                    ; 3 uses
  %xtraiter198 = and i64 %i.dr, 1
  %i.ds = icmp eq i32 %.0106, 2
  br i1 %i.ds, label %.preheader.i113.epil.preheader, label %.preheader.i113.preheader.new

.preheader.i113.preheader.new:                    ; preds = %.preheader.i113.preheader
  %unroll_iter202 = and i64 %i.dr, -2
  br label %.preheader.i113

.preheader.i113:                                  ; preds = %bb.j, %.preheader.i113.preheader.new
  %indvars.iv.i114 = phi i64 [ 1, %.preheader.i113.preheader.new ], [ %indvars.iv.next.i115.1, %bb.j ] ; 3 uses
  %.01318.i = phi i32 [ 0, %.preheader.i113.preheader.new ], [ %i.dx, %bb.j ]
  %niter203 = phi i64 [ 0, %.preheader.i113.preheader.new ], [ %niter203.next.1, %bb.j ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i113
  %.1.i = phi i32 [ %i.dt, %bb.h ], [ %.01318.i, %.preheader.i113 ] ; 3 uses
  %.0.in.i = phi i32 [ %.0.i, %bb.h ], [ %.0106, %.preheader.i113 ]
  %.0.i = lshr i32 %.0.in.i, 1                    ; 4 uses
  %.not16.i = icmp sgt i32 %.0.i, %.1.i
  %i.dt = sub nuw nsw i32 %.1.i, %.0.i
  br i1 %.not16.i, label %.preheader.i113.1, label %bb.h, !llvm.loop !14

.preheader.i113.1:                                ; preds = %bb.h
  %i.du = add nuw nsw i32 %.0.i, %.1.i            ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i113.1
  %.1.i.1 = phi i32 [ %i.dw, %bb.i ], [ %i.du, %.preheader.i113.1 ] ; 3 uses
  %.0.in.i.1 = phi i32 [ %.0.i.1, %bb.i ], [ %.0106, %.preheader.i113.1 ]
  %.0.i.1 = lshr i32 %.0.in.i.1, 1                ; 4 uses
  %.not16.i.1 = icmp sgt i32 %.0.i.1, %.1.i.1
  %i.dw = sub nuw nsw i32 %.1.i.1, %.0.i.1
  br i1 %.not16.i.1, label %bb.j, label %bb.i, !llvm.loop !14

bb.j:                                             ; preds = %bb.i
  %i.dx = add nuw nsw i32 %.0.i.1, %.1.i.1        ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.dx, ptr %i.dz, align 4, !tbaa !7
  %indvars.iv.next.i115.1 = add nuw nsw i64 %indvars.iv.i114, 2 ; 2 uses
  %niter203.next.1 = add i64 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %make_bitrev.exit.loopexit.unr-lcssa, label %.preheader.i113

make_bitrev.exit.loopexit.unr-lcssa:              ; preds = %bb.j
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %make_bitrev.exit, label %.preheader.i113.epil.preheader

.preheader.i113.epil.preheader:                   ; preds = %make_bitrev.exit.loopexit.unr-lcssa, %.preheader.i113.preheader
  %indvars.iv.i114.epil.init = phi i64 [ 1, %.preheader.i113.preheader ], [ %indvars.iv.next.i115.1, %make_bitrev.exit.loopexit.unr-lcssa ]
  %.01318.i.epil.init = phi i32 [ 0, %.preheader.i113.preheader ], [ %i.dx, %make_bitrev.exit.loopexit.unr-lcssa ]
  %lcmp.mod201 = trunc i64 %i.dr to i1
  tail call void @llvm.assume(i1 %lcmp.mod201)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i113.epil.preheader
  %.1.i.epil = phi i32 [ %i.ea, %bb.k ], [ %.01318.i.epil.init, %.preheader.i113.epil.preheader ] ; 3 uses
  %.0.in.i.epil = phi i32 [ %.0.i.epil, %bb.k ], [ %.0106, %.preheader.i113.epil.preheader ]
  %.0.i.epil = lshr i32 %.0.in.i.epil, 1          ; 4 uses
  %.not16.i.epil = icmp sgt i32 %.0.i.epil, %.1.i.epil
  %i.ea = sub nuw nsw i32 %.1.i.epil, %.0.i.epil
  br i1 %.not16.i.epil, label %make_bitrev.exit.loopexit.epilog-lcssa, label %bb.k, !llvm.loop !14

make_bitrev.exit.loopexit.epilog-lcssa:           ; preds = %bb.k
  %i.eb = add nuw nsw i32 %.0.i.epil, %.1.i.epil
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i114.epil.init
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !7
  br label %make_bitrev.exit

make_bitrev.exit:                                 ; preds = %make_bitrev.exit.loopexit.epilog-lcssa, %make_bitrev.exit.loopexit.unr-lcssa, %make_sintbl.exit
  br i1 %i.e, label %.preheader118, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %make_bitrev.exit
  %i.ed = load ptr, ptr @fft.bitrev, align 8, !tbaa !25
  %wide.trip.count = zext nneg i32 %.0106 to i64
  br label %bb.m

.preheader118:                                    ; preds = %bb.o, %make_bitrev.exit
  %i.ee = icmp samesign ugt i32 %.0106, 1
  br i1 %i.ee, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %.preheader118
  %i.ef = load ptr, ptr @fft.sintbl, align 8      ; 3 uses
  %i.eg = zext nneg i32 %i.b to i64
  %invariant.gep174 = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  br i1 %i.a, label %.lr.ph127.split.us, label %.lr.ph127.split

.lr.ph127.split.us:                               ; preds = %.lr.ph127, %.loopexit117.us
  %.0102126.us = phi i32 [ %i.eh, %.loopexit117.us ], [ 1, %.lr.ph127 ] ; 3 uses
  %i.eh = shl i32 %.0102126.us, 1                 ; 4 uses
  %i.ei = icmp sgt i32 %.0102126.us, 0
  br i1 %i.ei, label %.lr.ph125.us.preheader, label %.loopexit117.us

.lr.ph125.us.preheader:                           ; preds = %.lr.ph127.split.us
  %i.ej = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.eh, i1 true)
  %i.ek = lshr i32 %.0106, %i.ej
  %i.el = zext i32 %i.eh to i64
  %i.em = zext nneg i32 %.0102126.us to i64       ; 2 uses
  %i.en = zext nneg i32 %i.ek to i64
  %invariant.gep172 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.em
  br label %.lr.ph125.us

.lr.ph125.us:                                     ; preds = %.lr.ph125.us.preheader, %._crit_edge.us.us
  %indvars.iv151 = phi i64 [ 0, %.lr.ph125.us.preheader ], [ %indvars.iv.next152, %._crit_edge.us.us ] ; 3 uses
  %indvars.iv146 = phi i64 [ 0, %.lr.ph125.us.preheader ], [ %indvars.iv.next147, %._crit_edge.us.us ] ; 3 uses
  %indvars155 = trunc i64 %indvars.iv146 to i32
  %i.eo = icmp samesign ugt i32 %.0106, %indvars155
  br i1 %i.eo, label %.lr.ph121.us.us, label %._crit_edge.us.us

.lr.ph121.us.us:                                  ; preds = %.lr.ph125.us
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv151
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !29
  %gep175 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep174, i64 %indvars.iv151
  %i.er = load float, ptr %gep175, align 4, !tbaa !29
  %i.es = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.er, i64 1
  %i.eu = fpext <2 x float> %i.et to <2 x double> ; 3 uses
  %i.ev = fneg <2 x double> %i.eu
  %i.ew = shufflevector <2 x double> %i.eu, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2>
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph121.us.us
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %bb.l ], [ %indvars.iv146, %.lr.ph121.us.us ] ; 3 uses
  %gep173 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep172, i64 %indvars.iv148 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %gep173, i64 8
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv148 ; 2 uses
  %4 = load double, ptr %gep173, align 8, !tbaa !36
  %5 = load double, ptr %3, align 8, !tbaa !37
  %6 = insertelement <2 x double> poison, double %4, i64 0
  %i.ey = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.ey, %i.ew
  %7 = insertelement <2 x double> poison, double %5, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %8, <2 x double> %i.ez)
  %i.fb = fptrunc <2 x double> %i.fa to <2 x float>
  %i.fc = load <2 x double>, ptr %i.ex, align 8, !tbaa !38 ; 2 uses
  %i.fd = fpext <2 x float> %i.fb to <2 x double> ; 2 uses
  %i.fe = fsub <2 x double> %i.fc, %i.fd
  store <2 x double> %i.fe, ptr %gep173, align 8, !tbaa !38
  %i.ff = fadd <2 x double> %i.fc, %i.fd
  store <2 x double> %i.ff, ptr %i.ex, align 8, !tbaa !38
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, %i.el ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv.next149 to i32
  %i.fh = icmp sgt i32 %.0106, %i.fg
  br i1 %i.fh, label %bb.l, label %._crit_edge.us.us, !llvm.loop !15

._crit_edge.us.us:                                ; preds = %bb.l, %.lr.ph125.us
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, %i.en
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next147, %i.em
  br i1 %exitcond157.not, label %.loopexit117.us, label %.lr.ph125.us, !llvm.loop !16

.loopexit117.us:                                  ; preds = %._crit_edge.us.us, %.lr.ph127.split.us
  %i.fi = icmp slt i32 %i.eh, %.0106
  br i1 %i.fi, label %.lr.ph127.split.us, label %._crit_edge128, !llvm.loop !17

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !7
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = icmp slt i64 %indvars.iv, %i.fl
  br i1 %i.fm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.fo = getelementptr inbounds [16 x i8], ptr %1, i64 %i.fl ; 2 uses
  %i.fp = load <2 x double>, ptr %i.fo, align 8, !tbaa !38
  %i.fq = load <2 x double>, ptr %i.fn, align 8, !tbaa !38
  %i.fr = fptrunc <2 x double> %i.fq to <2 x float>
  store <2 x double> %i.fp, ptr %i.fn, align 8, !tbaa !38
  %i.fs = fpext <2 x float> %i.fr to <2 x double>
  store <2 x double> %i.fs, ptr %i.fo, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader118, label %bb.m, !llvm.loop !18

.loopexit117:                                     ; preds = %._crit_edge, %.lr.ph127.split
  %i.ft = icmp slt i32 %i.fu, %.0106
  br i1 %i.ft, label %.lr.ph127.split, label %._crit_edge128, !llvm.loop !17

.lr.ph127.split:                                  ; preds = %.lr.ph127, %.loopexit117
  %.0102126 = phi i32 [ %i.fu, %.loopexit117 ], [ 1, %.lr.ph127 ] ; 3 uses
  %i.fu = shl i32 %.0102126, 1                    ; 4 uses
  %i.fv = icmp sgt i32 %.0102126, 0
  br i1 %i.fv, label %.lr.ph125.preheader, label %.loopexit117

.lr.ph125.preheader:                              ; preds = %.lr.ph127.split
  %i.fw = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.fu, i1 true)
  %i.fx = lshr i32 %.0106, %i.fw
  %i.fy = zext i32 %i.fu to i64
  %i.fz = zext nneg i32 %.0102126 to i64          ; 2 uses
  %i.ga = zext nneg i32 %i.fx to i64
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.fz
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %._crit_edge
  %indvars.iv139 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next140, %._crit_edge ] ; 3 uses
  %indvars.iv134 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next135, %._crit_edge ] ; 3 uses
  %indvars143 = trunc i64 %indvars.iv134 to i32
  %i.gb = icmp samesign ugt i32 %.0106, %indvars143
  br i1 %i.gb, label %.lr.ph121, label %._crit_edge

.lr.ph121:                                        ; preds = %.lr.ph125
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv139
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !29
  %i.ge = fneg float %i.gd
  %gep171 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep174, i64 %indvars.iv139
  %i.gf = load float, ptr %gep171, align 4, !tbaa !29
  %i.gg = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.gf, i64 1
  %i.gi = fpext <2 x float> %i.gh to <2 x double> ; 3 uses
  %i.gj = fneg <2 x double> %i.gi
  %i.gk = shufflevector <2 x double> %i.gi, <2 x double> %i.gj, <2 x i32> <i32 1, i32 2>
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph121, %bb.p
  %indvars.iv136 = phi i64 [ %indvars.iv134, %.lr.ph121 ], [ %indvars.iv.next137, %bb.p ] ; 3 uses
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv136 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv136 ; 2 uses
  %10 = load double, ptr %gep, align 8, !tbaa !36
  %11 = load double, ptr %9, align 8, !tbaa !37
  %12 = insertelement <2 x double> poison, double %10, i64 0
  %i.gm = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x double> %i.gm, %i.gk
  %13 = insertelement <2 x double> poison, double %11, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %14, <2 x double> %i.gn)
  %i.gp = fptrunc <2 x double> %i.go to <2 x float>
  %i.gq = load <2 x double>, ptr %i.gl, align 8, !tbaa !38 ; 2 uses
  %i.gr = fpext <2 x float> %i.gp to <2 x double> ; 2 uses
  %i.gs = fsub <2 x double> %i.gq, %i.gr
  store <2 x double> %i.gs, ptr %gep, align 8, !tbaa !38
  %i.gt = fadd <2 x double> %i.gq, %i.gr
  store <2 x double> %i.gt, ptr %i.gl, align 8, !tbaa !38
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, %i.fy ; 2 uses
  %i.gu = trunc nuw i64 %indvars.iv.next137 to i32
  %i.gv = icmp sgt i32 %.0106, %i.gu
  br i1 %i.gv, label %bb.p, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.p, %.lr.ph125
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, %i.ga
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next135, %i.fz
  br i1 %exitcond145.not, label %.loopexit117, label %.lr.ph125, !llvm.loop !16

._crit_edge128:                                   ; preds = %.loopexit117, %.loopexit117.us, %.preheader118
  %or.cond131 = icmp sgt i32 %0, 0
  br i1 %or.cond131, label %.lr.ph130, label %.loopexit

.lr.ph130:                                        ; preds = %._crit_edge128
  %i.gw = uitofp nneg i32 %.0106 to double        ; 2 uses
  %wide.trip.count161 = zext nneg i32 %.0106 to i64 ; 2 uses
  %min.iters.check179 = icmp samesign ult i32 %.0106, 2
  br i1 %min.iters.check179, label %scalar.ph178.preheader, label %vector.ph180

scalar.ph178.preheader:                           ; preds = %.lr.ph130
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  br label %scalar.ph178

vector.ph180:                                     ; preds = %.lr.ph130
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph180
  %index182 = phi i64 [ 0, %vector.ph180 ], [ %index.next184, %vector.body181 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index182 ; 2 uses
  %wide.load183 = load <2 x double>, ptr %i.gz, align 8
  %i.ha = fdiv <2 x double> %wide.load183, %broadcast.splat
  store <2 x double> %i.ha, ptr %i.gz, align 8
  %index.next184 = add nuw i64 %index182, 1       ; 2 uses
  %i.hb = icmp eq i64 %index.next184, %wide.trip.count161
  br i1 %i.hb, label %.loopexit, label %vector.body181, !llvm.loop !19

scalar.ph178:                                     ; preds = %scalar.ph178.preheader, %scalar.ph178
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %scalar.ph178 ], [ 0, %scalar.ph178.preheader ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv158 ; 2 uses
  %i.hd = load <2 x double>, ptr %i.hc, align 8, !tbaa !38
  %i.he = fdiv <2 x double> %i.hd, %i.gy
  store <2 x double> %i.he, ptr %i.hc, align 8, !tbaa !38
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %.loopexit, label %scalar.ph178, !llvm.loop !20

.loopexit:                                        ; preds = %vector.body181, %scalar.ph178, %._crit_edge128, %bb.c
  %.0105 = phi i32 [ 1, %bb.c ], [ 0, %._crit_edge128 ], [ 0, %scalar.ph178 ], [ 0, %vector.body181 ]
  ret i32 %.0105
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind allocsize(1) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !30}
!9 = distinct !{!9, !31}
!10 = distinct !{!10, !30, !32, !33}
!11 = distinct !{!11, !31}
!12 = distinct !{!12, !30}
!13 = distinct !{!13, !30, !32}
!14 = distinct !{!14, !30}
!15 = distinct !{!15, !30}
!16 = distinct !{!16, !30}
!17 = distinct !{!17, !30}
!18 = distinct !{!18, !30}
!19 = distinct !{!19, !30, !32, !33}
!20 = distinct !{!20, !30, !33, !32}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!"p1 float", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 int", !21, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"float", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = !{!"double", !5, i64 0}
!35 = !{!"_Fukusosuu", !34, i64 0, !34, i64 8}
!36 = !{!35, !34, i64 0}
!37 = !{!35, !34, i64 8}
!38 = !{!34, !34, i64 0}
end_hunk_0
