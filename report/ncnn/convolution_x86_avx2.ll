inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii:bb.a
  br i1 %exitcond.not.i.us.us.i, label %.loopexit128.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !370

.loopexit128.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.bp = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.bq = icmp samesign ult i64 %i.bp, %i.x
  br i1 %i.bq, label %_ZN4ncnn3MatD2Ev.exit264.i.us.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !371

_ZN4ncnn3MatD2Ev.exit263.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit263.i.us.i.preheader, %.loopexit128.i.us127.i
  %indvars.iv.i.us125.i = phi i64 [ %indvars.iv.next.i.us129.i, %.loopexit128.i.us127.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit263.i.us.i.preheader ] ; 2 uses
  %.0233146.i.us126.i = phi ptr [ %.5.i.us128.i, %.loopexit128.i.us127.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit263.i.us.i.preheader ] ; 3 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !9, !noalias !372
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !372
  %i.bt = mul i64 %i.bs, %i.t
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !372
  %i.bv = mul i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 %indvars.iv.i.us125.i
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.y   ; 3 uses
  br i1 %i.u, label %.lr.ph136.i.us.i.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit263.i.us.i
  br i1 %i.ac, label %.lr.ph136.i.us.i.epil.preheader, label %.lr.ph136.i.us.i

.lr.ph136.i.us.i:                                 ; preds = %.lr.ph136.i.us.i.preheader, %.lr.ph136.i.us.i
  %.3135.i.us.i = phi ptr [ %i.cr, %.lr.ph136.i.us.i ], [ %.0233146.i.us126.i, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %.0252134.i.us.i = phi ptr [ %i.cs, %.lr.ph136.i.us.i ], [ %i.by, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph136.i.us.i ], [ 0, %.lr.ph136.i.us.i.preheader ]
  %i.bz = load i64, ptr %.0252134.i.us.i, align 1, !tbaa !20
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.k
  %i.cc = load i64, ptr %i.cb, align 1, !tbaa !20
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = bitcast <2 x i64> %i.ca to <16 x i8>
  %i.cf = bitcast <2 x i64> %i.cd to <16 x i8>
  %i.cg = shufflevector <16 x i8> %i.ce, <16 x i8> %i.cf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cg, ptr %.3135.i.us.i, align 1, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.v ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 1, !tbaa !20
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.k
  %i.cm = load i64, ptr %i.cl, align 1, !tbaa !20
  %i.cn = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %i.co = bitcast <2 x i64> %i.ck to <16 x i8>
  %i.cp = bitcast <2 x i64> %i.cn to <16 x i8>
  %i.cq = shufflevector <16 x i8> %i.co, <16 x i8> %i.cp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cq, ptr %i.ch, align 1, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 32 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.v ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader127.i.us.i.loopexit.unr-lcssa, label %.lr.ph136.i.us.i, !llvm.loop !375

.preheader127.i.us.i.loopexit.unr-lcssa:          ; preds = %.lr.ph136.i.us.i
  br i1 %lcmp.mod.not.not, label %.lr.ph136.i.us.i.epil.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.epil.preheader:                  ; preds = %.preheader127.i.us.i.loopexit.unr-lcssa, %.lr.ph136.i.us.i.preheader
  %.3135.i.us.i.epil.init = phi ptr [ %.0233146.i.us126.i, %.lr.ph136.i.us.i.preheader ], [ %i.cr, %.preheader127.i.us.i.loopexit.unr-lcssa ] ; 2 uses
  %.0252134.i.us.i.epil.init = phi ptr [ %i.by, %.lr.ph136.i.us.i.preheader ], [ %i.cs, %.preheader127.i.us.i.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod342)
  %i.ct = load i64, ptr %.0252134.i.us.i.epil.init, align 1, !tbaa !20
  %i.cu = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %i.cv = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i.epil.init, i64 %i.k
  %i.cw = load i64, ptr %i.cv, align 1, !tbaa !20
  %i.cx = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %i.cy = bitcast <2 x i64> %i.cu to <16 x i8>
  %i.cz = bitcast <2 x i64> %i.cx to <16 x i8>
  %i.da = shufflevector <16 x i8> %i.cy, <16 x i8> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.da, ptr %.3135.i.us.i.epil.init, align 1, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %.3135.i.us.i.epil.init, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i.epil.init, i64 %i.v
  br label %.preheader127.i.us.i

.preheader127.i.us.i:                             ; preds = %.lr.ph136.i.us.i.epil.preheader, %.preheader127.i.us.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit263.i.us.i
  %.0254.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit263.i.us.i ], [ %i.w, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.w, %.lr.ph136.i.us.i.epil.preheader ] ; 5 uses
  %.0252.lcssa.i.us.i = phi ptr [ %i.by, %_ZN4ncnn3MatD2Ev.exit263.i.us.i ], [ %i.cs, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.dc, %.lr.ph136.i.us.i.epil.preheader ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0233146.i.us126.i, %_ZN4ncnn3MatD2Ev.exit263.i.us.i ], [ %i.cr, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.db, %.lr.ph136.i.us.i.epil.preheader ] ; 3 uses
  %i.dd = icmp slt i32 %.0254.lcssa.i.us.i, %5
  br i1 %i.dd, label %.lr.ph143.i.us.i.preheader, label %.loopexit128.i.us127.i

.lr.ph143.i.us.i.preheader:                       ; preds = %.preheader127.i.us.i
  %i.de = sub i32 %5, %.0254.lcssa.i.us.i
  %xtraiter343 = and i32 %i.de, 7                 ; 2 uses
  %lcmp.mod344.not = icmp eq i32 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol

.lr.ph143.i.us.i.prol:                            ; preds = %.lr.ph143.i.us.i.preheader, %.lr.ph143.i.us.i.prol
  %.4142.i.us.i.prol = phi ptr [ %i.dg, %.lr.ph143.i.us.i.prol ], [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1253141.i.us.i.prol = phi ptr [ %i.dh, %.lr.ph143.i.us.i.prol ], [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1255140.i.us.i.prol = phi i32 [ %i.di, %.lr.ph143.i.us.i.prol ], [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph143.i.us.i.prol ], [ 0, %.lr.ph143.i.us.i.preheader ]
  %i.df = load i64, ptr %.1253141.i.us.i.prol, align 1, !tbaa !20
  store i64 %i.df, ptr %.4142.i.us.i.prol, align 1, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %.4142.i.us.i.prol, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i.prol, i64 %i.k ; 2 uses
  %i.di = add nuw nsw i32 %.1255140.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter343
  br i1 %prol.iter.cmp.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol, !llvm.loop !376

.lr.ph143.i.us.i.prol.loopexit:                   ; preds = %.lr.ph143.i.us.i.prol, %.lr.ph143.i.us.i.preheader
  %.lcssa297.unr = phi ptr [ poison, %.lr.ph143.i.us.i.preheader ], [ %i.dg, %.lr.ph143.i.us.i.prol ]
  %.4142.i.us.i.unr = phi ptr [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.dg, %.lr.ph143.i.us.i.prol ]
  %.1253141.i.us.i.unr = phi ptr [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.dh, %.lr.ph143.i.us.i.prol ]
  %.1255140.i.us.i.unr = phi i32 [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.di, %.lr.ph143.i.us.i.prol ]
  %i.dj = sub i32 %.0254.lcssa.i.us.i, %5
  %i.dk = icmp ugt i32 %i.dj, -8
  br i1 %i.dk, label %.loopexit128.i.us127.i, label %.lr.ph143.i.us.i

.lr.ph143.i.us.i:                                 ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i
  %.4142.i.us.i = phi ptr [ %i.eh, %.lr.ph143.i.us.i ], [ %.4142.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 9 uses
  %.1253141.i.us.i = phi ptr [ %i.ei, %.lr.ph143.i.us.i ], [ %.1253141.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 2 uses
  %.1255140.i.us.i = phi i32 [ %i.ej, %.lr.ph143.i.us.i ], [ %.1255140.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ]
  %i.dl = load i64, ptr %.1253141.i.us.i, align 1, !tbaa !20
  store i64 %i.dl, ptr %.4142.i.us.i, align 1, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i, i64 %i.k ; 2 uses
  %i.do = load i64, ptr %i.dn, align 1, !tbaa !20
  store i64 %i.do, ptr %i.dm, align 1, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.k ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 1, !tbaa !20
  store i64 %i.dr, ptr %i.dp, align 1, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.k ; 2 uses
  %i.du = load i64, ptr %i.dt, align 1, !tbaa !20
  store i64 %i.du, ptr %i.ds, align 1, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.k ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 1, !tbaa !20
  store i64 %i.dx, ptr %i.dv, align 1, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.k ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 1, !tbaa !20
  store i64 %i.ea, ptr %i.dy, align 1, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.k ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 1, !tbaa !20
  store i64 %i.ed, ptr %i.eb, align 1, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 56
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.k ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 1, !tbaa !20
  store i64 %i.eg, ptr %i.ee, align 1, !tbaa !20
  %i.eh = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 64 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.k
  %i.ej = add nuw nsw i32 %.1255140.i.us.i, 8     ; 2 uses
  %exitcond228.not.i.us.i.7 = icmp eq i32 %i.ej, %5
  br i1 %exitcond228.not.i.us.i.7, label %.loopexit128.i.us127.i, label %.lr.ph143.i.us.i, !llvm.loop !377

.loopexit128.i.us127.i:                           ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i, %.preheader127.i.us.i
  %.5.i.us128.i = phi ptr [ %.3.lcssa.i.us.i, %.preheader127.i.us.i ], [ %.lcssa297.unr, %.lr.ph143.i.us.i.prol.loopexit ], [ %i.eh, %.lr.ph143.i.us.i ] ; 2 uses
  %indvars.iv.next.i.us129.i = add nuw nsw i64 %indvars.iv.i.us125.i, 8 ; 3 uses
  %i.ek = or disjoint i64 %indvars.iv.next.i.us129.i, 7
  %i.el = icmp samesign ult i64 %i.ek, %i.x
  br i1 %i.el, label %_ZN4ncnn3MatD2Ev.exit263.i.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !371

.preheader126.loopexit.i.i:                       ; preds = %.loopexit128.i.us127.i, %.loopexit128.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit264.i.us.preheader.i, %.loopexit128.i.preheader.i
  %.us-phi.i = phi ptr [ %i.bm, %.loopexit128.i.loopexit.us.us.i ], [ %.val.i, %.loopexit128.i.preheader.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit264.i.us.preheader.i ], [ %.5.i.us128.i, %.loopexit128.i.us127.i ]
  %.us-phi123.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ %i.ae, %.loopexit128.i.preheader.i ], [ %i.ag, %_ZN4ncnn3MatD2Ev.exit264.i.us.preheader.i ], [ %indvars.iv.next.i.us129.i, %.loopexit128.i.us127.i ]
  %i.em = trunc nuw nsw i64 %.us-phi123.i to i32
  br label %.preheader126.i.i

.preheader126.i.i:                                ; preds = %.preheader126.loopexit.i.i, %bb.f
  %.0240.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.em, %.preheader126.loopexit.i.i ] ; 3 uses
  %.0233.lcssa.i.i = phi ptr [ %.val.i, %bb.f ], [ %.us-phi.i, %.preheader126.loopexit.i.i ] ; 5 uses
  %i.en = or disjoint i32 %.0240.lcssa.i.i, 3
  %i.eo = icmp slt i32 %i.en, %3
  br i1 %i.eo, label %.lr.ph169.i.i, label %.preheader122.i.i

.lr.ph169.i.i:                                    ; preds = %.preheader126.i.i
  %i.ep = sdiv i32 %4, 8
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.es = lshr i32 %5, 3                          ; 3 uses
  %i.et = shl i64 %i.k, 3                         ; 2 uses
  %i.eu = sext i32 %4 to i64
  %i.ev = icmp sgt i32 %5, 1
  %i.ew = shl i64 %i.k, 1
  %i.ex = and i32 %5, -2
  %i.ey = zext i32 %.0240.lcssa.i.i to i64        ; 6 uses
  %i.ez = sext i32 %3 to i64
  %i.fa = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.ez, -3       ; 4 uses
  switch i32 %i.m, label %.loopexit124.i.preheader.i [
    i32 8, label %.lr.ph169.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader:        ; preds = %.lr.ph169.i.i
  %xtraiter345 = and i32 %5, 1
  %lcmp.mod346.not = icmp eq i32 %xtraiter345, 0
  br label %_ZN4ncnn3MatD2Ev.exit261.i.us.i

.loopexit124.i.preheader.i:                       ; preds = %.lr.ph169.i.i
  %i.fb = add nuw nsw i64 %i.ey, 4                ; 2 uses
  %smax214.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.fb)
  %i.fc = xor i64 %i.ey, -1
  %i.fd = add nsw i64 %smax214.i, %i.fc
  %i.fe = and i64 %i.fd, -4
  %i.ff = add nuw i64 %i.fb, %i.fe
  br label %.preheader122.loopexit.i.i

.lr.ph169.i.split.us.i:                           ; preds = %.lr.ph169.i.i
  %i.fg = icmp sgt i32 %5, 7
  br i1 %i.fg, label %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader:     ; preds = %.lr.ph169.i.split.us.i
  %i.fh = icmp eq i32 %i.es, 1
  %unroll_iter352 = and i32 %i.es, 268435454
  %i.fi = and i32 %5, 8
  %lcmp.mod349.not = icmp eq i32 %i.fi, 0
  %lcmp.mod351 = trunc i32 %i.es to i1
  br label %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i

_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i:        ; preds = %.lr.ph169.i.split.us.i
  %i.fj = add nuw nsw i64 %i.ey, 4                ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.fj)
  %i.fk = xor i64 %i.ey, -1
  %i.fl = add nsw i64 %smax.i, %i.fk
  %i.fm = and i64 %i.fl, -4
  %i.fn = add nuw i64 %i.fj, %i.fm
  br label %.preheader122.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit262.i.us.us.i:               ; preds = %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader, %.loopexit124.i.loopexit.us.us.i
  %indvars.iv232.i.us.us.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader ] ; 2 uses
  %.6168.i.us.us.i = phi ptr [ %.lcssa288, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader ] ; 2 uses
  %i.fo = load ptr, ptr %0, align 8, !tbaa !9, !noalias !378
  %i.fp = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !378
  %i.fq = mul i64 %i.fp, %i.eq
  %i.fr = load i64, ptr %i.er, align 8, !tbaa !19, !noalias !378
  %i.fs = mul i64 %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fs
  %i.fu = add nsw i64 %indvars.iv232.i.us.us.i, %i.fa
  %i.fv = shl nsw i64 %i.fu, 3
  %i.fw = getelementptr inbounds i8, ptr %i.ft, i64 %i.fv ; 2 uses
  br i1 %i.fh, label %.lr.ph153.i.us.us.i.epil.preheader, label %.lr.ph153.i.us.us.i

.lr.ph153.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i, %.lr.ph153.i.us.us.i
  %.7152.i.us.us.i = phi ptr [ %i.gl, %.lr.ph153.i.us.us.i ], [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ] ; 5 uses
  %.0256151.i.us.us.i = phi ptr [ %i.gm, %.lr.ph153.i.us.us.i ], [ %i.fw, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ] ; 3 uses
  %niter353 = phi i32 [ %niter353.next.1, %.lr.ph153.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ]
  %i.fx = load <8 x i16>, ptr %.0256151.i.us.us.i, align 1, !tbaa !20 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 16
  %i.fz = load <8 x i16>, ptr %i.fy, align 1, !tbaa !20 ; 2 uses
  %i.ga = shufflevector <8 x i16> %i.fx, <8 x i16> %i.fz, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.gb = shufflevector <8 x i16> %i.fx, <8 x i16> %i.fz, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.ga, ptr %.7152.i.us.us.i, align 16, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 16
  store <8 x i16> %i.gb, ptr %i.gc, align 16, !tbaa !20
  %i.gd = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 %i.et ; 3 uses
  %i.gf = load <8 x i16>, ptr %i.ge, align 1, !tbaa !20 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gh = load <8 x i16>, ptr %i.gg, align 1, !tbaa !20 ; 2 uses
  %i.gi = shufflevector <8 x i16> %i.gf, <8 x i16> %i.gh, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.gj = shufflevector <8 x i16> %i.gf, <8 x i16> %i.gh, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.gi, ptr %i.gd, align 16, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 48
  store <8 x i16> %i.gj, ptr %i.gk, align 16, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 64 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.et ; 2 uses
  %niter353.next.1 = add i32 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i32 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %.loopexit124.i.loopexit.us.us.i.unr-lcssa, label %.lr.ph153.i.us.us.i, !llvm.loop !381

.loopexit124.i.loopexit.us.us.i.unr-lcssa:        ; preds = %.lr.ph153.i.us.us.i
  br i1 %lcmp.mod349.not, label %.loopexit124.i.loopexit.us.us.i, label %.lr.ph153.i.us.us.i.epil.preheader

.lr.ph153.i.us.us.i.epil.preheader:               ; preds = %.loopexit124.i.loopexit.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i
  %.7152.i.us.us.i.epil.init = phi ptr [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ], [ %i.gl, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ] ; 3 uses
  %.0256151.i.us.us.i.epil.init = phi ptr [ %i.fw, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ], [ %i.gm, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod351)
  %i.gn = load <8 x i16>, ptr %.0256151.i.us.us.i.epil.init, align 1, !tbaa !20 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i.epil.init, i64 16
  %i.gp = load <8 x i16>, ptr %i.go, align 1, !tbaa !20 ; 2 uses
  %i.gq = shufflevector <8 x i16> %i.gn, <8 x i16> %i.gp, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.gr = shufflevector <8 x i16> %i.gn, <8 x i16> %i.gp, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.gq, ptr %.7152.i.us.us.i.epil.init, align 16, !tbaa !20
  %i.gs = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i.epil.init, i64 16
  store <8 x i16> %i.gr, ptr %i.gs, align 16, !tbaa !20
  %i.gt = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i.epil.init, i64 32
  br label %.loopexit124.i.loopexit.us.us.i

.loopexit124.i.loopexit.us.us.i:                  ; preds = %.loopexit124.i.loopexit.us.us.i.unr-lcssa, %.lr.ph153.i.us.us.i.epil.preheader
  %.lcssa288 = phi ptr [ %i.gl, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ], [ %i.gt, %.lr.ph153.i.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next233.i.us.us.i = add nuw nsw i64 %indvars.iv232.i.us.us.i, 4 ; 3 uses
  %i.gu = icmp slt i64 %indvars.iv.next233.i.us.us.i, %invariant.op.i.i
  br i1 %i.gu, label %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !382

_ZN4ncnn3MatD2Ev.exit261.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader, %.loopexit124.i.us141.i
  %indvars.iv232.i.us139.i = phi i64 [ %indvars.iv.next233.i.us143.i, %.loopexit124.i.us141.i ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader ] ; 2 uses
  %.6168.i.us140.i = phi ptr [ %.11.i.us142.i, %.loopexit124.i.us141.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader ] ; 2 uses
  %i.gv = load ptr, ptr %0, align 8, !tbaa !9, !noalias !383
  %i.gw = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !383
  %i.gx = mul i64 %i.gw, %i.eu
  %i.gy = load i64, ptr %i.er, align 8, !tbaa !19, !noalias !383
  %i.gz = mul i64 %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 %indvars.iv232.i.us139.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.fa  ; 2 uses
  br i1 %i.ev, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i

.lr.ph158.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit261.i.us.i, %.lr.ph158.i.us.i
  %.9157.i.us.i = phi ptr [ %i.hz, %.lr.ph158.i.us.i ], [ %.6168.i.us140.i, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ] ; 9 uses
  %.0248156.i.us.i = phi i32 [ %i.ib, %.lr.ph158.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ]
  %.0250155.i.us.i = phi ptr [ %i.ia, %.lr.ph158.i.us.i ], [ %i.hc, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ] ; 6 uses
  %i.hd = load i8, ptr %.0250155.i.us.i, align 1, !tbaa !20
  store i8 %i.hd, ptr %.9157.i.us.i, align 1, !tbaa !20
  %i.he = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.k ; 4 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 1
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !20
  %i.hh = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 2
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !20
  %i.hk = getelementptr i8, ptr %i.he, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !20
  %i.hm = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 3
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !20
  %i.hn = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 4
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !20
  %i.hq = getelementptr i8, ptr %i.he, i64 2
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 5
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !20
  %i.ht = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 3
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 6
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !20
  %i.hw = getelementptr i8, ptr %i.he, i64 3
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !20
  %i.hy = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 7
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !20
  %i.hz = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.ew ; 2 uses
  %i.ib = add nuw nsw i32 %.0248156.i.us.i, 2     ; 2 uses
  %i.ic = or disjoint i32 %i.ib, 1
  %i.id = icmp slt i32 %i.ic, %5
  br i1 %i.id, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i, !llvm.loop !386

.preheader123.i.us.i:                             ; preds = %.lr.ph158.i.us.i, %_ZN4ncnn3MatD2Ev.exit261.i.us.i
  %.0250.lcssa.i.us.i = phi ptr [ %i.hc, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ], [ %i.ia, %.lr.ph158.i.us.i ] ; 6 uses
  %.0248.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ], [ %i.ex, %.lr.ph158.i.us.i ] ; 4 uses
  %.9.lcssa.i.us.i = phi ptr [ %.6168.i.us140.i, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ], [ %i.hz, %.lr.ph158.i.us.i ] ; 7 uses
  %i.ie = icmp slt i32 %.0248.lcssa.i.us.i, %5
  br i1 %i.ie, label %.lr.ph165.i.us.i.preheader, label %.loopexit124.i.us141.i

.lr.ph165.i.us.i.preheader:                       ; preds = %.preheader123.i.us.i
  %.neg = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br i1 %lcmp.mod346.not, label %.lr.ph165.i.us.i.prol.loopexit, label %.lr.ph165.i.us.i.prol

.lr.ph165.i.us.i.prol:                            ; preds = %.lr.ph165.i.us.i.preheader
  %i.if = load i8, ptr %.0250.lcssa.i.us.i, align 1, !tbaa !20
  store i8 %i.if, ptr %.9.lcssa.i.us.i, align 1, !tbaa !20
  %i.ig = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 1
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !20
  %i.ij = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 2
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !20
  %i.im = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 3
  %i.in = load i8, ptr %i.im, align 1, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 3
  store i8 %i.in, ptr %i.io, align 1, !tbaa !20
  %i.ip = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 %i.k
  %i.ir = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br label %.lr.ph165.i.us.i.prol.loopexit

.lr.ph165.i.us.i.prol.loopexit:                   ; preds = %.lr.ph165.i.us.i.prol, %.lr.ph165.i.us.i.preheader
  %.lcssa292.unr = phi ptr [ poison, %.lr.ph165.i.us.i.preheader ], [ %i.ip, %.lr.ph165.i.us.i.prol ]
  %.10164.i.us.i.unr = phi ptr [ %.9.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.ip, %.lr.ph165.i.us.i.prol ]
  %.1249163.i.us.i.unr = phi i32 [ %.0248.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.ir, %.lr.ph165.i.us.i.prol ]
  %.1251162.i.us.i.unr = phi ptr [ %.0250.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.iq, %.lr.ph165.i.us.i.prol ]
  %i.is = icmp eq i32 %5, %.neg
  br i1 %i.is, label %.loopexit124.i.us141.i, label %.lr.ph165.i.us.i

.lr.ph165.i.us.i:                                 ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i
  %.10164.i.us.i = phi ptr [ %i.jp, %.lr.ph165.i.us.i ], [ %.10164.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 9 uses
  %.1249163.i.us.i = phi i32 [ %i.jr, %.lr.ph165.i.us.i ], [ %.1249163.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ]
  %.1251162.i.us.i = phi ptr [ %i.jq, %.lr.ph165.i.us.i ], [ %.1251162.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 5 uses
  %i.it = load i8, ptr %.1251162.i.us.i, align 1, !tbaa !20
  store i8 %i.it, ptr %.10164.i.us.i, align 1, !tbaa !20
  %i.iu = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !20
  %i.iw = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 1
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !20
  %i.iz = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 2
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !20
  %i.ja = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 3
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !20
  %i.jc = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 3
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 %i.k ; 5 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !20
  store i8 %i.jf, ptr %i.jd, align 1, !tbaa !20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !20
  %i.ji = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 5
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !20
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !20
  %i.jl = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 6
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !20
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !20
  %i.jo = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 7
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !20
  %i.jp = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.k
  %i.jr = add nuw nsw i32 %.1249163.i.us.i, 2     ; 2 uses
  %exitcond231.not.i.us.i.1 = icmp eq i32 %i.jr, %5
  br i1 %exitcond231.not.i.us.i.1, label %.loopexit124.i.us141.i, label %.lr.ph165.i.us.i, !llvm.loop !387

.loopexit124.i.us141.i:                           ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i, %.preheader123.i.us.i
  %.11.i.us142.i = phi ptr [ %.9.lcssa.i.us.i, %.preheader123.i.us.i ], [ %.lcssa292.unr, %.lr.ph165.i.us.i.prol.loopexit ], [ %i.jp, %.lr.ph165.i.us.i ] ; 2 uses
  %indvars.iv.next233.i.us143.i = add nuw nsw i64 %indvars.iv232.i.us139.i, 4 ; 3 uses
  %i.js = icmp slt i64 %indvars.iv.next233.i.us143.i, %invariant.op.i.i
  br i1 %i.js, label %_ZN4ncnn3MatD2Ev.exit261.i.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !382

.preheader122.loopexit.i.i:                       ; preds = %.loopexit124.i.us141.i, %.loopexit124.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i, %.loopexit124.i.preheader.i
  %.us-phi136.i = phi ptr [ %.lcssa288, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %.loopexit124.i.preheader.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i ], [ %.11.i.us142.i, %.loopexit124.i.us141.i ]
  %.us-phi137.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.ff, %.loopexit124.i.preheader.i ], [ %i.fn, %_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i ], [ %indvars.iv.next233.i.us143.i, %.loopexit124.i.us141.i ]
  %i.jt = trunc nuw nsw i64 %.us-phi137.i to i32
  br label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %.preheader122.loopexit.i.i, %.preheader126.i.i
  %.1241.lcssa.i.i = phi i32 [ %.0240.lcssa.i.i, %.preheader126.i.i ], [ %i.jt, %.preheader122.loopexit.i.i ] ; 3 uses
  %.6.lcssa.i.i = phi ptr [ %.0233.lcssa.i.i, %.preheader126.i.i ], [ %.us-phi136.i, %.preheader122.loopexit.i.i ] ; 5 uses
  %i.ju = or disjoint i32 %.1241.lcssa.i.i, 1
  %i.jv = icmp slt i32 %i.ju, %3
  br i1 %i.jv, label %.lr.ph191.i.i, label %.preheader.i.i

.lr.ph191.i.i:                                    ; preds = %.preheader122.i.i
  %i.jw = sdiv i32 %4, 8
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jz = lshr i32 %5, 3                          ; 3 uses
  %i.ka = shl i64 %i.k, 3                         ; 2 uses
  %i.kb = sext i32 %4 to i64
  %i.kc = icmp sgt i32 %5, 1
  %i.kd = shl i64 %i.k, 1                         ; 3 uses
  %i.ke = and i32 %5, -2                          ; 2 uses
  %i.kf = zext i32 %.1241.lcssa.i.i to i64        ; 8 uses
  %i.kg = sext i32 %3 to i64
  %i.kh = sext i32 %2 to i64                      ; 2 uses
  %invariant.op277.i.i = add nsw i64 %i.kg, -1    ; 4 uses
  switch i32 %i.m, label %.loopexit120.i.i.preheader [
    i32 8, label %.lr.ph191.i.i.split.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader
  ]

_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader:        ; preds = %.lr.ph191.i.i
  %i.ki = add i32 %5, -2                          ; 2 uses
  %i.kj = lshr i32 %i.ki, 1                       ; 2 uses
  %i.kk = add nuw i32 %i.kj, 1                    ; 2 uses
  %i.kl = icmp eq i32 %i.kj, 0
  %unroll_iter359 = and i32 %i.kk, -2
  %i.km = and i32 %i.ki, 2
  %lcmp.mod355.not.not = icmp eq i32 %i.km, 0
  %lcmp.mod358 = trunc i32 %i.kk to i1
  br label %_ZN4ncnn3MatD2Ev.exit259.i.i.us

.loopexit120.i.i.preheader:                       ; preds = %.lr.ph191.i.i
  %i.kn = add nuw nsw i64 %i.kf, 2
  %smax144 = tail call i64 @llvm.smax.i64(i64 %invariant.op277.i.i, i64 %i.kn)
  %i.ko = xor i64 %i.kf, -1
  %i.kp = add nsw i64 %smax144, %i.ko
  %i.kq = and i64 %i.kp, -2
  %i.kr = add nuw i64 %i.kq, %i.kf
  %i.ks = add nuw i64 %i.kr, 2
  br label %.preheader.loopexit.i.i

.lr.ph191.i.i.split.us:                           ; preds = %.lr.ph191.i.i
  %i.kt = icmp sgt i32 %5, 7
  br i1 %i.kt, label %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader, label %_ZN4ncnn3MatD2Ev.exit260.i.i.us.preheader

_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader:     ; preds = %.lr.ph191.i.i.split.us
  %i.ku = icmp eq i32 %i.jz, 1
  %unroll_iter368 = and i32 %i.jz, 268435454
  %i.kv = and i32 %5, 8
  %lcmp.mod365.not = icmp eq i32 %i.kv, 0
  %lcmp.mod367 = trunc i32 %i.jz to i1
  br label %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us

_ZN4ncnn3MatD2Ev.exit260.i.i.us.preheader:        ; preds = %.lr.ph191.i.i.split.us
  %i.kw = add nuw nsw i64 %i.kf, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op277.i.i, i64 %i.kw)
  %i.kx = xor i64 %i.kf, -1
  %i.ky = add nsw i64 %smax, %i.kx
  %i.kz = and i64 %i.ky, -2
  %i.la = add nuw i64 %i.kz, %i.kf
  %i.lb = add nuw i64 %i.la, 2
  br label %.preheader.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit260.i.i.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader, %.loopexit120.i.i.loopexit.us.us
  %indvars.iv237.i.i.us.us = phi i64 [ %indvars.iv.next238.i.i.us.us, %.loopexit120.i.i.loopexit.us.us ], [ %i.kf, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader ] ; 2 uses
  %.12190.i.i.us.us = phi ptr [ %.lcssa283, %.loopexit120.i.i.loopexit.us.us ], [ %.6.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader ] ; 2 uses
  %i.lc = load ptr, ptr %0, align 8, !tbaa !9, !noalias !388
  %i.ld = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !388
  %i.le = mul i64 %i.ld, %i.jx
  %i.lf = load i64, ptr %i.jy, align 8, !tbaa !19, !noalias !388
  %i.lg = mul i64 %i.le, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lg
  %i.li = add nsw i64 %indvars.iv237.i.i.us.us, %i.kh
  %i.lj = shl nsw i64 %i.li, 3
  %i.lk = getelementptr inbounds i8, ptr %i.lh, i64 %i.lj ; 2 uses
  br i1 %i.ku, label %.lr.ph175.i.i.us.us.epil.preheader, label %.lr.ph175.i.i.us.us

.lr.ph175.i.i.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us, %.lr.ph175.i.i.us.us
  %.13174.i.i.us.us = phi ptr [ %i.md, %.lr.ph175.i.i.us.us ], [ %.12190.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ] ; 3 uses
  %.0247172.i.i.us.us = phi ptr [ %i.me, %.lr.ph175.i.i.us.us ], [ %i.lk, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ] ; 3 uses
  %niter369 = phi i32 [ %niter369.next.1, %.lr.ph175.i.i.us.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ]
  %i.ll = load i64, ptr %.0247172.i.i.us.us, align 1, !tbaa !20
  %i.lm = insertelement <2 x i64> poison, i64 %i.ll, i64 0
  %i.ln = getelementptr inbounds nuw i8, ptr %.0247172.i.i.us.us, i64 8
  %i.lo = load i64, ptr %i.ln, align 1, !tbaa !20
  %i.lp = insertelement <2 x i64> poison, i64 %i.lo, i64 0
  %i.lq = bitcast <2 x i64> %i.lm to <8 x i16>
  %i.lr = bitcast <2 x i64> %i.lp to <8 x i16>
  %i.ls = shufflevector <8 x i16> %i.lq, <8 x i16> %i.lr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ls, ptr %.13174.i.i.us.us, align 1, !tbaa !20
  %i.lt = getelementptr inbounds nuw i8, ptr %.13174.i.i.us.us, i64 16
  %i.lu = getelementptr inbounds nuw i8, ptr %.0247172.i.i.us.us, i64 %i.ka ; 3 uses
  %i.lv = load i64, ptr %i.lu, align 1, !tbaa !20
  %i.lw = insertelement <2 x i64> poison, i64 %i.lv, i64 0
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.ly = load i64, ptr %i.lx, align 1, !tbaa !20
  %i.lz = insertelement <2 x i64> poison, i64 %i.ly, i64 0
  %i.ma = bitcast <2 x i64> %i.lw to <8 x i16>
  %i.mb = bitcast <2 x i64> %i.lz to <8 x i16>
  %i.mc = shufflevector <8 x i16> %i.ma, <8 x i16> %i.mb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.mc, ptr %i.lt, align 1, !tbaa !20
  %i.md = getelementptr inbounds nuw i8, ptr %.13174.i.i.us.us, i64 32 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ka ; 2 uses
  %niter369.next.1 = add i32 %niter369, 2         ; 2 uses
  %niter369.ncmp.1 = icmp eq i32 %niter369.next.1, %unroll_iter368
  br i1 %niter369.ncmp.1, label %.loopexit120.i.i.loopexit.us.us.unr-lcssa, label %.lr.ph175.i.i.us.us, !llvm.loop !391

.loopexit120.i.i.loopexit.us.us.unr-lcssa:        ; preds = %.lr.ph175.i.i.us.us
  br i1 %lcmp.mod365.not, label %.loopexit120.i.i.loopexit.us.us, label %.lr.ph175.i.i.us.us.epil.preheader

.lr.ph175.i.i.us.us.epil.preheader:               ; preds = %.loopexit120.i.i.loopexit.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us
  %.13174.i.i.us.us.epil.init = phi ptr [ %.12190.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ], [ %i.md, %.loopexit120.i.i.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.0247172.i.i.us.us.epil.init = phi ptr [ %i.lk, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ], [ %i.me, %.loopexit120.i.i.loopexit.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod367)
  %i.mf = load i64, ptr %.0247172.i.i.us.us.epil.init, align 1, !tbaa !20
  %i.mg = insertelement <2 x i64> poison, i64 %i.mf, i64 0
  %i.mh = getelementptr inbounds nuw i8, ptr %.0247172.i.i.us.us.epil.init, i64 8
  %i.mi = load i64, ptr %i.mh, align 1, !tbaa !20
  %i.mj = insertelement <2 x i64> poison, i64 %i.mi, i64 0
  %i.mk = bitcast <2 x i64> %i.mg to <8 x i16>
  %i.ml = bitcast <2 x i64> %i.mj to <8 x i16>
  %i.mm = shufflevector <8 x i16> %i.mk, <8 x i16> %i.ml, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.mm, ptr %.13174.i.i.us.us.epil.init, align 1, !tbaa !20
  %i.mn = getelementptr inbounds nuw i8, ptr %.13174.i.i.us.us.epil.init, i64 16
  br label %.loopexit120.i.i.loopexit.us.us

.loopexit120.i.i.loopexit.us.us:                  ; preds = %.loopexit120.i.i.loopexit.us.us.unr-lcssa, %.lr.ph175.i.i.us.us.epil.preheader
  %.lcssa283 = phi ptr [ %i.md, %.loopexit120.i.i.loopexit.us.us.unr-lcssa ], [ %i.mn, %.lr.ph175.i.i.us.us.epil.preheader ] ; 2 uses
  %indvars.iv.next238.i.i.us.us = add nuw nsw i64 %indvars.iv237.i.i.us.us, 2 ; 3 uses
  %i.mo = icmp slt i64 %indvars.iv.next238.i.i.us.us, %invariant.op277.i.i
  br i1 %i.mo, label %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us, label %.preheader.loopexit.i.i, !llvm.loop !392

_ZN4ncnn3MatD2Ev.exit259.i.i.us:                  ; preds = %_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader, %.loopexit120.i.i.us74
  %indvars.iv237.i.i.us72 = phi i64 [ %indvars.iv.next238.i.i.us76, %.loopexit120.i.i.us74 ], [ %i.kf, %_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader ] ; 2 uses
  %.12190.i.i.us73 = phi ptr [ %.17.i.i.us75, %.loopexit120.i.i.us74 ], [ %.6.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader ] ; 3 uses
  %i.mp = load ptr, ptr %0, align 8, !tbaa !9, !noalias !393
  %i.mq = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !393
  %i.mr = mul i64 %i.mq, %i.kb
  %i.ms = load i64, ptr %i.jy, align 8, !tbaa !19, !noalias !393
  %i.mt = mul i64 %i.mr, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 %indvars.iv237.i.i.us72
  %i.mw = getelementptr i8, ptr %i.mv, i64 %i.kh  ; 3 uses
  br i1 %i.kc, label %.lr.ph180.i.i.us.preheader, label %.preheader119.i.i.us

.lr.ph180.i.i.us.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit259.i.i.us
  br i1 %i.kl, label %.lr.ph180.i.i.us.epil.preheader, label %.lr.ph180.i.i.us

.lr.ph180.i.i.us:                                 ; preds = %.lr.ph180.i.i.us.preheader, %.lr.ph180.i.i.us
  %.15179.i.i.us = phi ptr [ %i.nt, %.lr.ph180.i.i.us ], [ %.12190.i.i.us73, %.lr.ph180.i.i.us.preheader ] ; 9 uses
  %.0238177.i.i.us = phi ptr [ %i.nu, %.lr.ph180.i.i.us ], [ %i.mw, %.lr.ph180.i.i.us.preheader ] ; 4 uses
  %niter360 = phi i32 [ %niter360.next.1, %.lr.ph180.i.i.us ], [ 0, %.lr.ph180.i.i.us.preheader ]
  %i.mx = load i8, ptr %.0238177.i.i.us, align 1, !tbaa !20
  store i8 %i.mx, ptr %.15179.i.i.us, align 1, !tbaa !20
  %i.my = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us, i64 %i.k ; 2 uses
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !20
  %i.na = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !20
  %i.nb = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us, i64 1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !20
  %i.nd = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 2
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !20
  %i.ne = getelementptr i8, ptr %i.my, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !20
  %i.ng = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 3
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !20
  %i.nh = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us, i64 %i.kd ; 4 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !20
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !20
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.k ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !20
  %i.nm = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 5
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !20
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !20
  %i.np = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 6
  store i8 %i.no, ptr %i.np, align 1, !tbaa !20
  %i.nq = getelementptr i8, ptr %i.nk, i64 1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !20
  %i.ns = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 7
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !20
  %i.nt = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 8 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.kd ; 3 uses
  %niter360.next.1 = add nuw nsw i32 %niter360, 2 ; 2 uses
  %niter360.ncmp.1.not = icmp eq i32 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1.not, label %.preheader119.i.i.us.loopexit.unr-lcssa, label %.lr.ph180.i.i.us, !llvm.loop !396

.preheader119.i.i.us.loopexit.unr-lcssa:          ; preds = %.lr.ph180.i.i.us
  br i1 %lcmp.mod355.not.not, label %.lr.ph180.i.i.us.epil.preheader, label %.preheader119.i.i.us

.lr.ph180.i.i.us.epil.preheader:                  ; preds = %.preheader119.i.i.us.loopexit.unr-lcssa, %.lr.ph180.i.i.us.preheader
  %.15179.i.i.us.epil.init = phi ptr [ %.12190.i.i.us73, %.lr.ph180.i.i.us.preheader ], [ %i.nt, %.preheader119.i.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.0238177.i.i.us.epil.init = phi ptr [ %i.mw, %.lr.ph180.i.i.us.preheader ], [ %i.nu, %.preheader119.i.i.us.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod358)
  %i.nv = load i8, ptr %.0238177.i.i.us.epil.init, align 1, !tbaa !20
  store i8 %i.nv, ptr %.15179.i.i.us.epil.init, align 1, !tbaa !20
  %i.nw = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us.epil.init, i64 %i.k ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !20
  %i.ny = getelementptr inbounds nuw i8, ptr %.15179.i.i.us.epil.init, i64 1
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !20
  %i.nz = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us.epil.init, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !20
  %i.ob = getelementptr inbounds nuw i8, ptr %.15179.i.i.us.epil.init, i64 2
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !20
  %i.oc = getelementptr i8, ptr %i.nw, i64 1
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !20
  %i.oe = getelementptr inbounds nuw i8, ptr %.15179.i.i.us.epil.init, i64 3
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !20
  %i.of = getelementptr inbounds nuw i8, ptr %.15179.i.i.us.epil.init, i64 4
  %i.og = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us.epil.init, i64 %i.kd
  br label %.preheader119.i.i.us

.preheader119.i.i.us:                             ; preds = %.lr.ph180.i.i.us.epil.preheader, %.preheader119.i.i.us.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit259.i.i.us
  %.0238.lcssa.i.i.us = phi ptr [ %i.mw, %_ZN4ncnn3MatD2Ev.exit259.i.i.us ], [ %i.nu, %.preheader119.i.i.us.loopexit.unr-lcssa ], [ %i.og, %.lr.ph180.i.i.us.epil.preheader ] ; 2 uses
  %.0236.lcssa.i.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit259.i.i.us ], [ %i.ke, %.preheader119.i.i.us.loopexit.unr-lcssa ], [ %i.ke, %.lr.ph180.i.i.us.epil.preheader ] ; 5 uses
  %.15.lcssa.i.i.us = phi ptr [ %.12190.i.i.us73, %_ZN4ncnn3MatD2Ev.exit259.i.i.us ], [ %i.nt, %.preheader119.i.i.us.loopexit.unr-lcssa ], [ %i.of, %.lr.ph180.i.i.us.epil.preheader ] ; 3 uses
  %i.oh = icmp slt i32 %.0236.lcssa.i.i.us, %5
  br i1 %i.oh, label %.lr.ph187.i.i.us.preheader, label %.loopexit120.i.i.us74

.lr.ph187.i.i.us.preheader:                       ; preds = %.preheader119.i.i.us
  %i.oi = sub i32 %5, %.0236.lcssa.i.i.us
  %xtraiter361 = and i32 %i.oi, 3                 ; 2 uses
  %lcmp.mod362.not = icmp eq i32 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph187.i.i.us.prol.loopexit, label %.lr.ph187.i.i.us.prol

.lr.ph187.i.i.us.prol:                            ; preds = %.lr.ph187.i.i.us.preheader, %.lr.ph187.i.i.us.prol
  %.16186.i.i.us.prol = phi ptr [ %i.on, %.lr.ph187.i.i.us.prol ], [ %.15.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ] ; 3 uses
  %.1237185.i.i.us.prol = phi i32 [ %i.op, %.lr.ph187.i.i.us.prol ], [ %.0236.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ]
  %.1239184.i.i.us.prol = phi ptr [ %i.oo, %.lr.ph187.i.i.us.prol ], [ %.0238.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ] ; 3 uses
  %prol.iter363 = phi i32 [ %prol.iter363.next, %.lr.ph187.i.i.us.prol ], [ 0, %.lr.ph187.i.i.us.preheader ]
  %i.oj = load i8, ptr %.1239184.i.i.us.prol, align 1, !tbaa !20
  store i8 %i.oj, ptr %.16186.i.i.us.prol, align 1, !tbaa !20
  %i.ok = getelementptr inbounds nuw i8, ptr %.1239184.i.i.us.prol, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !20
  %i.om = getelementptr inbounds nuw i8, ptr %.16186.i.i.us.prol, i64 1
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !20
  %i.on = getelementptr inbounds nuw i8, ptr %.16186.i.i.us.prol, i64 2 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.1239184.i.i.us.prol, i64 %i.k ; 2 uses
  %i.op = add nuw nsw i32 %.1237185.i.i.us.prol, 1 ; 2 uses
  %prol.iter363.next = add i32 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i32 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph187.i.i.us.prol.loopexit, label %.lr.ph187.i.i.us.prol, !llvm.loop !397

.lr.ph187.i.i.us.prol.loopexit:                   ; preds = %.lr.ph187.i.i.us.prol, %.lr.ph187.i.i.us.preheader
  %.lcssa287.unr = phi ptr [ poison, %.lr.ph187.i.i.us.preheader ], [ %i.on, %.lr.ph187.i.i.us.prol ]
  %.16186.i.i.us.unr = phi ptr [ %.15.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ], [ %i.on, %.lr.ph187.i.i.us.prol ]
  %.1237185.i.i.us.unr = phi i32 [ %.0236.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ], [ %i.op, %.lr.ph187.i.i.us.prol ]
  %.1239184.i.i.us.unr = phi ptr [ %.0238.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ], [ %i.oo, %.lr.ph187.i.i.us.prol ]
  %i.oq = sub i32 %.0236.lcssa.i.i.us, %5
  %i.or = icmp ugt i32 %i.oq, -4
  br i1 %i.or, label %.loopexit120.i.i.us74, label %.lr.ph187.i.i.us

.lr.ph187.i.i.us:                                 ; preds = %.lr.ph187.i.i.us.prol.loopexit, %.lr.ph187.i.i.us
  %.16186.i.i.us = phi ptr [ %i.po, %.lr.ph187.i.i.us ], [ %.16186.i.i.us.unr, %.lr.ph187.i.i.us.prol.loopexit ] ; 9 uses
  %.1237185.i.i.us = phi i32 [ %i.pq, %.lr.ph187.i.i.us ], [ %.1237185.i.i.us.unr, %.lr.ph187.i.i.us.prol.loopexit ]
  %.1239184.i.i.us = phi ptr [ %i.pp, %.lr.ph187.i.i.us ], [ %.1239184.i.i.us.unr, %.lr.ph187.i.i.us.prol.loopexit ] ; 3 uses
  %i.os = load i8, ptr %.1239184.i.i.us, align 1, !tbaa !20
  store i8 %i.os, ptr %.16186.i.i.us, align 1, !tbaa !20
  %i.ot = getelementptr inbounds nuw i8, ptr %.1239184.i.i.us, i64 1
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1:bb.a
  %i.wi = icmp slt i32 %i.wh, %i.bt
  %.fr.us.i = freeze i1 %i.wi
  %.not.us.us.i = icmp slt i32 %i.vz, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.ap:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i
  %i.wj = add nsw i32 %i.uv, %i.uj
  %i.wk = add nsw i32 %i.wj, %i.vh
  %i.wl = ashr i32 %i.wk, 2
  store i32 %i.wl, ptr %i.wg, align 4, !tbaa !92
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.tr
  br label %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i

_ZN4ncnn3MatD2Ev.exit.split.us631.1.i:            ; preds = %bb.ap, %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i
  %.1416.us629.i = phi ptr [ %i.wg, %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i ], [ %i.wm, %bb.ap ]
  %i.wn = or disjoint i32 %i.vz, 1
  %.not.us628.1.i = icmp slt i32 %i.wn, %i.bu
  br i1 %.not.us628.1.i, label %bb.aq, label %.split.us630.i

bb.aq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i
  %i.wo = add nsw i32 %i.uy, %i.um
  %i.wp = add nsw i32 %i.wo, %i.vk
  %i.wq = ashr i32 %i.wp, 2
  store i32 %i.wq, ptr %.1416.us629.i, align 4, !tbaa !92
  br label %.split.us630.i

.split.us630.i:                                   ; preds = %bb.as, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.aq, %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i
  %indvars.iv.next694.i = add nuw nsw i64 %indvars.iv693.i, 1 ; 2 uses
  %exitcond697.not.i = icmp eq i64 %indvars.iv.next694.i, %wide.trip.count696.i
  br i1 %exitcond697.not.i, label %._crit_edge.us633.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !566

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.wr = add nsw i32 %i.uv, %i.uj
  %i.ws = add nsw i32 %i.wr, %i.vh
  %i.wt = ashr i32 %i.ws, 2
  store i32 %i.wt, ptr %i.wg, align 4, !tbaa !92
  %i.wu = sub i32 %i.uv, %i.vh
  %i.wv = add i32 %i.wu, %i.vp
  %i.ww = add i32 %i.wv, %i.vq
  %i.wx = add i32 %i.ww, %i.vr
  %i.wy = ashr i32 %i.wx, 2
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  store i32 %i.wy, ptr %i.wz, align 4, !tbaa !92
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.tr
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.ar, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1416.us.us.i = phi ptr [ %i.wg, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.xa, %bb.ar ] ; 2 uses
  %i.xb = or disjoint i32 %i.vz, 1
  %.not.us.us.1.i = icmp slt i32 %i.xb, %i.bu
  br i1 %.not.us.us.1.i, label %bb.as, label %.split.us630.i

bb.as:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.xc = add nsw i32 %i.uy, %i.um
  %i.xd = add nsw i32 %i.xc, %i.vk
  %i.xe = ashr i32 %i.xd, 2
  store i32 %i.xe, ptr %.1416.us.us.i, align 4, !tbaa !92
  %i.xf = add i32 %i.uy, %i.vq
  %i.xg = add i32 %i.vk, %i.vr
  %i.xh = sub i32 %i.xf, %i.xg
  %i.xi = add i32 %i.xh, %i.vs
  %i.xj = ashr i32 %i.xi, 2
  %i.xk = getelementptr inbounds nuw i8, ptr %.1416.us.us.i, i64 4
  store i32 %i.xj, ptr %i.xk, align 4, !tbaa !92
  br label %.split.us630.i

._crit_edge.us633.i:                              ; preds = %.split.us630.i
  %indvars.iv.next699.i = add nsw i64 %indvars.iv698.i, 1 ; 2 uses
  %exitcond702.not.i = icmp eq i64 %indvars.iv.next699.i, %i.bk
  br i1 %exitcond702.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us632.i, !llvm.loop !567

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.xl = phi i32 [ %i.zk, %.noexc ], [ %.pre158, %.noexc.preheader ] ; 3 uses
  %i.xm = phi i32 [ %i.zm, %.noexc ], [ %i.br, %.noexc.preheader ] ; 2 uses
  %.045150 = phi i32 [ %i.zl, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.xn = sub nsw i32 %i.xm, %.045150
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.xl, i32 %i.xn)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.xo = load i32, ptr %3, align 4, !tbaa !92
  %i.xp = sdiv i32 %i.at, %i.xo
  %i.xq = load ptr, ptr %10, align 8, !tbaa !9, !noalias !568
  %i.xr = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !568
  %i.xs = sext i32 %i.xp to i64
  %i.xt = mul i64 %i.xr, %i.xs
  %i.xu = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !568 ; 3 uses
  %i.xv = mul i64 %i.xt, %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xv
  %i.xx = load i32, ptr %i.r, align 8, !tbaa !94, !noalias !568
  %i.xy = load ptr, ptr %i.s, align 8, !tbaa !483, !noalias !568
  %i.xz = sdiv i32 %.045150, %i.xl
  %i.ya = sext i32 %i.xz to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !482, !alias.scope !571
  store i64 %i.xu, ptr %i.u, align 8, !tbaa !19, !alias.scope !571
  store i32 %i.xx, ptr %i.v, align 8, !tbaa !94, !alias.scope !571
  store ptr %i.xy, ptr %i.w, align 8, !tbaa !483, !alias.scope !571
  store i32 2, ptr %i.x, align 8, !tbaa !497, !alias.scope !571
  %i.yb = load <2 x i32>, ptr %i.n, align 4, !tbaa !92, !noalias !568
  %i.yc = load i32, ptr %i.o, align 8, !tbaa !96, !noalias !568
  %i.yd = load i32, ptr %i.n, align 4, !tbaa !93, !noalias !568
  %i.ye = sext i32 %i.yd to i64
  %i.yf = sext i32 %i.yc to i64
  %i.yg = mul nsw i64 %i.yf, %i.ye                ; 2 uses
  %i.yh = mul i64 %i.xu, %i.yg
  %i.yi = mul i64 %i.yh, %i.ya
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.yi
  store ptr %i.yj, ptr %13, align 8, !tbaa !9, !alias.scope !571
  %i.yk = shufflevector <2 x i32> %i.yb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yl = shufflevector <4 x i32> %i.yk, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.yl, ptr %i.y, align 4, !tbaa !92, !alias.scope !571
  store i64 %i.yg, ptr %i.z, align 8, !tbaa !18, !alias.scope !571
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.ym = load i32, ptr %7, align 4, !tbaa !92
  %i.yn = sdiv i32 %.044151, %i.ym
  %i.yo = load ptr, ptr %11, align 8, !tbaa !9, !noalias !574
  %i.yp = load i64, ptr %i.ac, align 8, !tbaa !18, !noalias !574
  %i.yq = sext i32 %i.yn to i64
  %i.yr = mul i64 %i.yp, %i.yq
  %i.ys = load i64, ptr %i.ad, align 8, !tbaa !19, !noalias !574 ; 3 uses
  %i.yt = mul i64 %i.yr, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yt
  %i.yv = load i32, ptr %i.ae, align 8, !tbaa !94, !noalias !574
  %i.yw = load ptr, ptr %i.af, align 8, !tbaa !483, !noalias !574
  store ptr null, ptr %i.ag, align 8, !tbaa !482
  store i64 %i.ys, ptr %i.ah, align 8, !tbaa !19
  store i32 %i.yv, ptr %i.ai, align 8, !tbaa !94
  store ptr %i.yw, ptr %i.aj, align 8, !tbaa !483
  store i32 2, ptr %i.ak, align 8, !tbaa !497
  %i.yx = load <2 x i32>, ptr %i.aa, align 4, !tbaa !92, !noalias !574
  %i.yy = load i32, ptr %i.ab, align 8, !tbaa !96, !noalias !574
  %i.yz = load i32, ptr %i.aa, align 4, !tbaa !93, !noalias !574
  %i.za = sext i32 %i.yz to i64
  %i.zb = sext i32 %i.yy to i64
  %i.zc = mul nsw i64 %i.zb, %i.za                ; 2 uses
  %i.zd = mul i64 %i.ys, %i.zc
  %i.ze = mul i64 %i.zd, %i.ya
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.ze
  store ptr %i.zf, ptr %14, align 8, !tbaa !9
  %i.zg = shufflevector <2 x i32> %i.yx, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zh = shufflevector <4 x i32> %i.zg, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.zh, ptr %i.al, align 4, !tbaa !92
  store i64 %i.zc, ptr %i.am, align 8, !tbaa !18, !alias.scope !577
  %i.zi = add nsw i32 %i.xl, %.045150
  %i.zj = icmp sge i32 %i.zi, %i.xm
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated119, i32 noundef %.sroa.speculated115, i32 noundef %.045150, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.zj)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.zk = load i32, ptr %9, align 4, !tbaa !92    ; 2 uses
  %i.zl = add nsw i32 %i.zk, %.045150             ; 2 uses
  %i.zm = load i32, ptr %8, align 4, !tbaa !92    ; 2 uses
  %i.zn = icmp slt i32 %i.zl, %i.zm
  br i1 %i.zn, label %.noexc, label %._crit_edge, !llvm.loop !580

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us633.i, %.lr.ph624.i, %.preheader.i
  %i.zo = load i32, ptr %7, align 4, !tbaa !92    ; 2 uses
  %i.zp = add nsw i32 %i.zo, %.044151             ; 2 uses
  %i.zq = load i32, ptr %6, align 4, !tbaa !92    ; 2 uses
  %i.zr = icmp slt i32 %i.zp, %i.zq
  br i1 %i.zr, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !581

._crit_edge156:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge156, %bb.a
  ret void

bb.au:                                            ; preds = %bb.c
  %i.zs = landingpad { ptr, i32 }
          catch ptr null
  %i.zt = extractvalue { ptr, i32 } %i.zs, 0
  call void @__clang_call_terminate(ptr %i.zt) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %3, 7
  br i1 %i.a, label %.preheader406.lr.ph, label %.preheader398

.preheader406.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 7
  %i.g = icmp eq i32 %5, 0                        ; 4 uses
  %i.h = icmp sgt i32 %6, 1                       ; 4 uses
  %i.i = add i32 %6, -2                           ; 5 uses
  %i.j = and i32 %i.i, -2
  %i.k = add nuw nsw i32 %i.j, 2                  ; 4 uses
  %i.l = and i32 %4, -8
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = shl nuw nsw i64 %i.n, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.t = lshr i32 %i.i, 1                         ; 2 uses
  %i.u = add nuw i32 %i.t, 1                      ; 4 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod2000 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter2008 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod2004.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod2007 = trunc i32 %i.u to i1
  br label %.preheader406

.preheader406:                                    ; preds = %.preheader406.lr.ph, %bb.b
  %indvars.iv1112 = phi i64 [ 0, %.preheader406.lr.ph ], [ %indvars.iv.next1113, %bb.b ] ; 2 uses
  %.0802557 = phi ptr [ %.0.val, %.preheader406.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.z = mul nsw i64 %indvars.iv1112, %i.s
  br label %bb.c

.preheader398.loopexit:                           ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next1113 to i32
  br label %.preheader398

.preheader398:                                    ; preds = %.preheader398.loopexit, %bb.a
  %.0805.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader398.loopexit ] ; 3 uses
  %.0802.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader398.loopexit ] ; 2 uses
  %i.ab = or disjoint i32 %.0805.lcssa, 3
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.preheader397.lr.ph, label %.preheader389

.preheader397.lr.ph:                              ; preds = %.preheader398
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = icmp sgt i32 %4, 7
  %i.ai = icmp eq i32 %5, 0                       ; 4 uses
  %i.aj = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ak = add i32 %6, -2                          ; 5 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add nuw nsw i32 %i.al, 2                ; 4 uses
  %i.an = and i32 %4, -8
  %i.ao = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = zext nneg i32 %.0805.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count1126 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -3
  %i.aw = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ax = add nuw i32 %i.aw, 1                    ; 4 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %unroll_iter2019 = and i32 %i.ax, -2
  %i.az = and i32 %i.ak, 2
  %lcmp.mod2014.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod2018 = trunc i32 %i.ax to i1
  %i.ba = icmp eq i32 %i.ao, 0
  %unroll_iter2028 = and i32 %i.ax, -2
  %i.bb = and i32 %i.ak, 2
  %lcmp.mod2024.not.not = icmp eq i32 %i.bb, 0
  %lcmp.mod2027 = trunc i32 %i.ax to i1
  br label %.preheader397

bb.b:                                             ; preds = %._crit_edge552
  %indvars.iv.next1113 = add nuw nsw i64 %indvars.iv1112, 8 ; 3 uses
  %i.bc = or disjoint i64 %indvars.iv.next1113, 7
  %i.bd = icmp samesign ult i64 %i.bc, %i.r
  br i1 %i.bd, label %.preheader406, label %.preheader398.loopexit, !llvm.loop !582

bb.c:                                             ; preds = %.preheader406, %._crit_edge552
  %indvars.iv = phi i64 [ 0, %.preheader406 ], [ %indvars.iv.next, %._crit_edge552 ] ; 3 uses
  %.1803555 = phi ptr [ %.0802557, %.preheader406 ], [ %.5.lcssa, %._crit_edge552 ] ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !9
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !93
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %indvars.iv, %i.bg
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !19
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.z ; 10 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !9
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !93
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %indvars.iv, %i.bo
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !19
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br ; 2 uses
  br i1 %i.f, label %.lr.ph462, label %.preheader405

.preheader405:                                    ; preds = %bb.g, %bb.c
  %.0822.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.0810.lcssa = phi ptr [ %i.bs, %bb.c ], [ %.2812.lcssa, %bb.g ] ; 2 uses
  %.2804.lcssa = phi ptr [ %.1803555, %bb.c ], [ %i.ic, %bb.g ] ; 2 uses
  %i.bt = or disjoint i32 %.0822.lcssa, 3
  %i.bu = icmp slt i32 %i.bt, %4
  br i1 %i.bu, label %.lr.ph499, label %.preheader404

.lr.ph462:                                        ; preds = %bb.c, %bb.g
  %.2804460 = phi ptr [ %i.ic, %bb.g ], [ %.1803555, %bb.c ] ; 17 uses
  %.0810459 = phi ptr [ %.2812.lcssa, %bb.g ], [ %i.bs, %bb.c ] ; 2 uses
  %.0822458 = phi i32 [ %i.id, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph462
  %i.bv = load <4 x i64>, ptr %.2804460, align 32, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %.2804460, i64 32
  %i.bx = load <4 x i64>, ptr %i.bw, align 32, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %.2804460, i64 64
  %i.bz = load <4 x i64>, ptr %i.by, align 32, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %.2804460, i64 96
  %i.cb = load <4 x i64>, ptr %i.ca, align 32, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %.2804460, i64 128
  %i.cd = load <4 x i64>, ptr %i.cc, align 32, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %.2804460, i64 160
  %i.cf = load <4 x i64>, ptr %i.ce, align 32, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %.2804460, i64 192
  %i.ch = load <4 x i64>, ptr %i.cg, align 32, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %.2804460, i64 224
  %i.cj = load <4 x i64>, ptr %i.ci, align 32, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph462, %bb.d
  %.0306 = phi <4 x i64> [ %i.ch, %bb.d ], [ zeroinitializer, %.lr.ph462 ] ; 2 uses
  %.0279 = phi <4 x i64> [ %i.cf, %bb.d ], [ zeroinitializer, %.lr.ph462 ] ; 2 uses
  %.0275 = phi <4 x i64> [ %i.cd, %bb.d ], [ zeroinitializer, %.lr.ph462 ] ; 2 uses
  %.0256 = phi <4 x i64> [ %i.cb, %bb.d ], [ zeroinitializer, %.lr.ph462 ] ; 2 uses
  %.0252 = phi <4 x i64> [ %i.bz, %bb.d ], [ zeroinitializer, %.lr.ph462 ] ; 2 uses
  %.0242 = phi <4 x i64> [ %i.bx, %bb.d ], [ zeroinitializer, %.lr.ph462 ] ; 2 uses
  %.0238 = phi <4 x i64> [ %i.bv, %bb.d ], [ zeroinitializer, %.lr.ph462 ] ; 2 uses
  %storemerge991 = phi <4 x i64> [ %i.cj, %bb.d ], [ zeroinitializer, %.lr.ph462 ] ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader402

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ck = bitcast <4 x i64> %.0238 to <8 x i32>
  %i.cl = bitcast <4 x i64> %.0242 to <8 x i32>
  %i.cm = bitcast <4 x i64> %.0252 to <8 x i32>
  %i.cn = bitcast <4 x i64> %.0256 to <8 x i32>
  %i.co = bitcast <4 x i64> %.0275 to <8 x i32>
  %i.cp = bitcast <4 x i64> %.0279 to <8 x i32>
  %i.cq = bitcast <4 x i64> %.0306 to <8 x i32>
  %i.cr = bitcast <4 x i64> %storemerge991 to <8 x i32>
  br label %.lr.ph

.preheader402.loopexit:                           ; preds = %.lr.ph
  %i.cs = bitcast <8 x i32> %i.ek to <4 x i64>
  %i.ct = bitcast <8 x i32> %i.ei to <4 x i64>
  %i.cu = bitcast <8 x i32> %i.eg to <4 x i64>
  %i.cv = bitcast <8 x i32> %i.ee to <4 x i64>
  %i.cw = bitcast <8 x i32> %i.eb to <4 x i64>
  %i.cx = bitcast <8 x i32> %i.dx to <4 x i64>
  %i.cy = bitcast <8 x i32> %i.dt to <4 x i64>
  %i.cz = bitcast <8 x i32> %i.dp to <4 x i64>
  br label %.preheader402

.preheader402:                                    ; preds = %.preheader402.loopexit, %bb.e
  %.0310.lcssa = phi <4 x i64> [ %storemerge991, %bb.e ], [ %i.cs, %.preheader402.loopexit ] ; 2 uses
  %.1307.lcssa = phi <4 x i64> [ %.0306, %bb.e ], [ %i.ct, %.preheader402.loopexit ] ; 2 uses
  %.1280.lcssa = phi <4 x i64> [ %.0279, %bb.e ], [ %i.cu, %.preheader402.loopexit ] ; 2 uses
  %.1276.lcssa = phi <4 x i64> [ %.0275, %bb.e ], [ %i.cv, %.preheader402.loopexit ] ; 2 uses
  %.1257.lcssa = phi <4 x i64> [ %.0256, %bb.e ], [ %i.cw, %.preheader402.loopexit ] ; 2 uses
  %.1253.lcssa = phi <4 x i64> [ %.0252, %bb.e ], [ %i.cx, %.preheader402.loopexit ] ; 2 uses
  %.1243.lcssa = phi <4 x i64> [ %.0242, %bb.e ], [ %i.cy, %.preheader402.loopexit ] ; 2 uses
  %.1239.lcssa = phi <4 x i64> [ %.0238, %bb.e ], [ %i.cz, %.preheader402.loopexit ] ; 2 uses
  %.0828.lcssa = phi i32 [ 0, %bb.e ], [ %i.k, %.preheader402.loopexit ] ; 2 uses
  %.0826.lcssa = phi ptr [ %i.bl, %bb.e ], [ %i.el, %.preheader402.loopexit ]
  %.1811.lcssa = phi ptr [ %.0810459, %bb.e ], [ %i.em, %.preheader402.loopexit ] ; 2 uses
  %i.da = icmp slt i32 %.0828.lcssa, %6
  br i1 %i.da, label %.lr.ph448.preheader, label %._crit_edge

.lr.ph448.preheader:                              ; preds = %.preheader402
  %i.db = bitcast <4 x i64> %.1239.lcssa to <8 x i32>
  %i.dc = bitcast <4 x i64> %.1243.lcssa to <8 x i32>
  %i.dd = bitcast <4 x i64> %.1253.lcssa to <8 x i32>
  %i.de = bitcast <4 x i64> %.1257.lcssa to <8 x i32>
  %i.df = bitcast <4 x i64> %.1276.lcssa to <8 x i32>
  %i.dg = bitcast <4 x i64> %.1280.lcssa to <8 x i32>
  %i.dh = bitcast <4 x i64> %.1307.lcssa to <8 x i32>
  %i.di = bitcast <4 x i64> %.0310.lcssa to <8 x i32>
  br label %.lr.ph448

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1811426 = phi ptr [ %i.em, %.lr.ph ], [ %.0810459, %.lr.ph.preheader ] ; 2 uses
  %.0826425 = phi ptr [ %i.el, %.lr.ph ], [ %i.bl, %.lr.ph.preheader ] ; 2 uses
  %.0828424 = phi i32 [ %i.en, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.1239423 = phi <8 x i32> [ %i.dp, %.lr.ph ], [ %i.ck, %.lr.ph.preheader ]
  %.1243422 = phi <8 x i32> [ %i.dt, %.lr.ph ], [ %i.cl, %.lr.ph.preheader ]
  %.1253421 = phi <8 x i32> [ %i.dx, %.lr.ph ], [ %i.cm, %.lr.ph.preheader ]
  %.1257420 = phi <8 x i32> [ %i.eb, %.lr.ph ], [ %i.cn, %.lr.ph.preheader ]
  %.1276419 = phi <8 x i32> [ %i.ee, %.lr.ph ], [ %i.co, %.lr.ph.preheader ]
  %.1280418 = phi <8 x i32> [ %i.eg, %.lr.ph ], [ %i.cp, %.lr.ph.preheader ]
  %.1307417 = phi <8 x i32> [ %i.ei, %.lr.ph ], [ %i.cq, %.lr.ph.preheader ]
  %.0310416 = phi <8 x i32> [ %i.ek, %.lr.ph ], [ %i.cr, %.lr.ph.preheader ]
  %i.dj = load <4 x i64>, ptr %.0826425, align 1, !tbaa !20 ; 2 uses
  %i.dk = load <4 x i64>, ptr %.1811426, align 1, !tbaa !20 ; 4 uses
  %i.dl = shufflevector <4 x i64> %i.dj, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dm = bitcast <4 x i64> %i.dj to <16 x i16>   ; 4 uses
  %i.dn = bitcast <4 x i64> %i.dk to <16 x i16>   ; 2 uses
  %i.do = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.dm, <16 x i16> %i.dn)
  %i.dp = add <8 x i32> %i.do, %.1239423          ; 2 uses
  %i.dq = bitcast <4 x i64> %i.dk to <16 x i16>
  %i.dr = shufflevector <16 x i16> %i.dq, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.ds = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.dm, <16 x i16> %i.dr)
  %i.dt = add <8 x i32> %i.ds, %.1243422          ; 2 uses
  %i.du = bitcast <4 x i64> %i.dk to <16 x i16>
  %i.dv = shufflevector <16 x i16> %i.du, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.dw = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.dm, <16 x i16> %i.dv)
  %i.dx = add <8 x i32> %i.dw, %.1253421          ; 2 uses
  %i.dy = bitcast <4 x i64> %i.dk to <16 x i16>
  %i.dz = shufflevector <16 x i16> %i.dy, <16 x i16> poison, <16 x i32> <i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 2 uses
  %i.ea = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.dm, <16 x i16> %i.dz)
  %i.eb = add <8 x i32> %i.ea, %.1257420          ; 2 uses
  %i.ec = bitcast <4 x i64> %i.dl to <16 x i16>   ; 4 uses
  %i.ed = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ec, <16 x i16> %i.dn)
  %i.ee = add <8 x i32> %i.ed, %.1276419          ; 2 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ec, <16 x i16> %i.dr)
  %i.eg = add <8 x i32> %i.ef, %.1280418          ; 2 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ec, <16 x i16> %i.dv)
  %i.ei = add <8 x i32> %i.eh, %.1307417          ; 2 uses
  %i.ej = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ec, <16 x i16> %i.dz)
  %i.ek = add <8 x i32> %i.ej, %.0310416          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0826425, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1811426, i64 32 ; 2 uses
  %i.en = add nuw nsw i32 %.0828424, 2            ; 2 uses
  %i.eo = or disjoint i32 %i.en, 1
  %i.ep = icmp slt i32 %i.eo, %6
  br i1 %i.ep, label %.lr.ph, label %.preheader402.loopexit, !llvm.loop !583

.lr.ph448:                                        ; preds = %.lr.ph448.preheader, %.lr.ph448
  %.2812447 = phi ptr [ %i.fp, %.lr.ph448 ], [ %.1811.lcssa, %.lr.ph448.preheader ] ; 2 uses
  %.1827446 = phi ptr [ %i.fo, %.lr.ph448 ], [ %.0826.lcssa, %.lr.ph448.preheader ] ; 2 uses
  %.1829445 = phi i32 [ %i.fq, %.lr.ph448 ], [ %.0828.lcssa, %.lr.ph448.preheader ]
  %.2240444 = phi <8 x i32> [ %i.fg, %.lr.ph448 ], [ %i.db, %.lr.ph448.preheader ]
  %.2244443 = phi <8 x i32> [ %i.fh, %.lr.ph448 ], [ %i.dc, %.lr.ph448.preheader ]
  %.2254442 = phi <8 x i32> [ %i.fi, %.lr.ph448 ], [ %i.dd, %.lr.ph448.preheader ]
  %.2258441 = phi <8 x i32> [ %i.fj, %.lr.ph448 ], [ %i.de, %.lr.ph448.preheader ]
  %.2277440 = phi <8 x i32> [ %i.fk, %.lr.ph448 ], [ %i.df, %.lr.ph448.preheader ]
  %.2281439 = phi <8 x i32> [ %i.fl, %.lr.ph448 ], [ %i.dg, %.lr.ph448.preheader ]
  %.2308438 = phi <8 x i32> [ %i.fm, %.lr.ph448 ], [ %i.dh, %.lr.ph448.preheader ]
end_hunk_1
begin_hunk_2_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
._crit_edge521:                                   ; preds = %._crit_edge521.loopexit, %.preheader400
  %.2349.lcssa = phi <4 x i64> [ %.1348.lcssa, %.preheader400 ], [ %i.pv, %._crit_edge521.loopexit ] ; 2 uses
  %.1345.lcssa = phi <4 x i64> [ %.0344.lcssa, %.preheader400 ], [ %i.pu, %._crit_edge521.loopexit ] ; 2 uses
  %.8818.lcssa = phi ptr [ %.7817.lcssa, %.preheader400 ], [ %.lcssa1987, %._crit_edge521.loopexit ] ; 2 uses
  %i.pw = bitcast <4 x i64> %.2349.lcssa to <8 x i32> ; 2 uses
  %i.px = bitcast <4 x i64> %.1345.lcssa to <8 x i32> ; 2 uses
  %i.py = shufflevector <8 x i32> %i.pw, <8 x i32> %i.px, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  %i.pz = bitcast <8 x i32> %i.py to <4 x i64>
  %i.qa = shufflevector <8 x i32> %i.px, <8 x i32> %i.pw, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  %i.qb = bitcast <8 x i32> %i.qa to <4 x i64>
  %.3350 = select i1 %7, <4 x i64> %i.pz, <4 x i64> %.2349.lcssa
  %.2346 = select i1 %7, <4 x i64> %i.qb, <4 x i64> %.1345.lcssa
  store <4 x i64> %.3350, ptr %.4527, align 32, !tbaa !20
  %i.qc = getelementptr inbounds nuw i8, ptr %.4527, i64 32
  store <4 x i64> %.2346, ptr %i.qc, align 32, !tbaa !20
  %i.qd = getelementptr inbounds nuw i8, ptr %.4527, i64 64 ; 2 uses
  %i.qe = add nuw nsw i32 %.2824525, 2            ; 3 uses
  %i.qf = or disjoint i32 %i.qe, 1
  %i.qg = icmp slt i32 %i.qf, %4
  br i1 %i.qg, label %.lr.ph528, label %.preheader403, !llvm.loop !591

.lr.ph551:                                        ; preds = %.preheader403, %._crit_edge545
  %.5550 = phi ptr [ %i.sv, %._crit_edge545 ], [ %.4.lcssa, %.preheader403 ] ; 3 uses
  %.9819549 = phi ptr [ %.11821.lcssa, %._crit_edge545 ], [ %.6816.lcssa, %.preheader403 ] ; 4 uses
  %.3825548 = phi i32 [ %i.sw, %._crit_edge545 ], [ %.2824.lcssa, %.preheader403 ]
  br i1 %i.g, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph551
  %i.qh = load <8 x i32>, ptr %.5550, align 32, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph551, %bb.n
  %i.qi = phi <8 x i32> [ %i.qh, %bb.n ], [ zeroinitializer, %.lr.ph551 ] ; 3 uses
  br i1 %i.h, label %.lr.ph536.preheader, label %.preheader399

.lr.ph536.preheader:                              ; preds = %bb.o
  br i1 %i.x, label %.lr.ph536.epil.preheader, label %.lr.ph536

.preheader399.loopexit.unr-lcssa:                 ; preds = %.lr.ph536
  br i1 %lcmp.mod2004.not.not, label %.lr.ph536.epil.preheader, label %.preheader399.loopexit

.lr.ph536.epil.preheader:                         ; preds = %.preheader399.loopexit.unr-lcssa, %.lr.ph536.preheader
  %.10820534.epil.init = phi ptr [ %.9819549, %.lr.ph536.preheader ], [ %i.ry, %.preheader399.loopexit.unr-lcssa ]
  %.0845533.epil.init = phi ptr [ %i.bl, %.lr.ph536.preheader ], [ %i.rx, %.preheader399.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <8 x i32> [ %i.qi, %.lr.ph536.preheader ], [ %i.rw, %.preheader399.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2007)
  %i.qj = load <16 x i16>, ptr %.0845533.epil.init, align 1, !tbaa !20
  %i.qk = load float, ptr %.10820534.epil.init, align 1, !tbaa !20
  %i.ql = insertelement <8 x float> poison, float %i.qk, i64 0
  %i.qm = shufflevector <8 x float> %i.ql, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qn = bitcast <8 x float> %i.qm to <16 x i16>
  %i.qo = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qj, <16 x i16> %i.qn)
  %i.qp = add <8 x i32> %i.qo, %.epil.init
  %i.qq = getelementptr inbounds nuw i8, ptr %.0845533.epil.init, i64 32
  br label %.preheader399.loopexit

.preheader399.loopexit:                           ; preds = %.preheader399.loopexit.unr-lcssa, %.lr.ph536.epil.preheader
  %.lcssa1993 = phi <8 x i32> [ %i.rw, %.preheader399.loopexit.unr-lcssa ], [ %i.qp, %.lr.ph536.epil.preheader ]
  %.lcssa1992 = phi ptr [ %i.rx, %.preheader399.loopexit.unr-lcssa ], [ %i.qq, %.lr.ph536.epil.preheader ]
  %i.qr = getelementptr i8, ptr %.9819549, i64 %i.q
  %scevgep1107 = getelementptr i8, ptr %i.qr, i64 4
  br label %.preheader399

.preheader399:                                    ; preds = %.preheader399.loopexit, %bb.o
  %.0850.lcssa = phi i32 [ 0, %bb.o ], [ %i.k, %.preheader399.loopexit ] ; 5 uses
  %.lcssa414 = phi <8 x i32> [ %i.qi, %bb.o ], [ %.lcssa1993, %.preheader399.loopexit ] ; 3 uses
  %.0845.lcssa = phi ptr [ %i.bl, %bb.o ], [ %.lcssa1992, %.preheader399.loopexit ] ; 3 uses
  %.10820.lcssa = phi ptr [ %.9819549, %bb.o ], [ %scevgep1107, %.preheader399.loopexit ] ; 4 uses
  %i.qs = icmp slt i32 %.0850.lcssa, %6
  br i1 %i.qs, label %.lr.ph544.preheader, label %._crit_edge545

.lr.ph544.preheader:                              ; preds = %.preheader399
  %i.qt = sub i32 %6, %.0850.lcssa
  %.neg2077 = add i32 %.0850.lcssa, 1
  %xtraiter2010 = and i32 %i.qt, 1
  %lcmp.mod2011.not = icmp eq i32 %xtraiter2010, 0
  br i1 %lcmp.mod2011.not, label %.lr.ph544.prol.loopexit, label %.lr.ph544.prol

.lr.ph544.prol:                                   ; preds = %.lr.ph544.preheader
  %i.qu = load <8 x i16>, ptr %.0845.lcssa, align 16, !tbaa !20
  %i.qv = sext <8 x i16> %i.qu to <8 x i32>
  %i.qw = load i16, ptr %.10820.lcssa, align 2, !tbaa !490
  %i.qx = sext i16 %i.qw to i32
  %i.qy = insertelement <8 x i32> poison, i32 %i.qx, i64 0
  %i.qz = shufflevector <8 x i32> %i.qy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ra = mul <8 x i32> %i.qz, %i.qv
  %i.rb = add <8 x i32> %i.ra, %.lcssa414         ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0845.lcssa, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %.10820.lcssa, i64 2 ; 2 uses
  %i.re = add nuw nsw i32 %.0850.lcssa, 1
  br label %.lr.ph544.prol.loopexit

.lr.ph544.prol.loopexit:                          ; preds = %.lr.ph544.prol, %.lr.ph544.preheader
  %.lcssa1995.unr = phi <8 x i32> [ poison, %.lr.ph544.preheader ], [ %i.rb, %.lr.ph544.prol ]
  %.lcssa1994.unr = phi ptr [ poison, %.lr.ph544.preheader ], [ %i.rd, %.lr.ph544.prol ]
  %.11821543.unr = phi ptr [ %.10820.lcssa, %.lr.ph544.preheader ], [ %i.rd, %.lr.ph544.prol ]
  %.1846542.unr = phi ptr [ %.0845.lcssa, %.lr.ph544.preheader ], [ %i.rc, %.lr.ph544.prol ]
  %.unr2012 = phi <8 x i32> [ %.lcssa414, %.lr.ph544.preheader ], [ %i.rb, %.lr.ph544.prol ]
  %.1851541.unr = phi i32 [ %.0850.lcssa, %.lr.ph544.preheader ], [ %i.re, %.lr.ph544.prol ]
  %i.rf = icmp eq i32 %6, %.neg2077
  br i1 %i.rf, label %._crit_edge545, label %.lr.ph544

.lr.ph536:                                        ; preds = %.lr.ph536.preheader, %.lr.ph536
  %.10820534 = phi ptr [ %i.ry, %.lr.ph536 ], [ %.9819549, %.lr.ph536.preheader ] ; 3 uses
  %.0845533 = phi ptr [ %i.rx, %.lr.ph536 ], [ %i.bl, %.lr.ph536.preheader ] ; 3 uses
  %i.rg = phi <8 x i32> [ %i.rw, %.lr.ph536 ], [ %i.qi, %.lr.ph536.preheader ]
  %niter2009 = phi i32 [ %niter2009.next.1, %.lr.ph536 ], [ 0, %.lr.ph536.preheader ]
  %i.rh = load <16 x i16>, ptr %.0845533, align 1, !tbaa !20
  %i.ri = load float, ptr %.10820534, align 1, !tbaa !20
  %i.rj = insertelement <8 x float> poison, float %i.ri, i64 0
  %i.rk = shufflevector <8 x float> %i.rj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rl = bitcast <8 x float> %i.rk to <16 x i16>
  %i.rm = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.rh, <16 x i16> %i.rl)
  %i.rn = add <8 x i32> %i.rm, %i.rg
  %i.ro = getelementptr inbounds nuw i8, ptr %.0845533, i64 32
  %i.rp = getelementptr inbounds nuw i8, ptr %.10820534, i64 4
  %i.rq = load <16 x i16>, ptr %i.ro, align 1, !tbaa !20
  %i.rr = load float, ptr %i.rp, align 1, !tbaa !20
  %i.rs = insertelement <8 x float> poison, float %i.rr, i64 0
  %i.rt = shufflevector <8 x float> %i.rs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ru = bitcast <8 x float> %i.rt to <16 x i16>
  %i.rv = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.rq, <16 x i16> %i.ru)
  %i.rw = add <8 x i32> %i.rv, %i.rn              ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0845533, i64 64 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.10820534, i64 8 ; 2 uses
  %niter2009.next.1 = add nuw nsw i32 %niter2009, 2 ; 2 uses
  %niter2009.ncmp.1.not = icmp eq i32 %niter2009.next.1, %unroll_iter2008
  br i1 %niter2009.ncmp.1.not, label %.preheader399.loopexit.unr-lcssa, label %.lr.ph536, !llvm.loop !592

.lr.ph544:                                        ; preds = %.lr.ph544.prol.loopexit, %.lr.ph544
  %.11821543 = phi ptr [ %i.st, %.lr.ph544 ], [ %.11821543.unr, %.lr.ph544.prol.loopexit ] ; 3 uses
  %.1846542 = phi ptr [ %i.ss, %.lr.ph544 ], [ %.1846542.unr, %.lr.ph544.prol.loopexit ] ; 3 uses
  %i.rz = phi <8 x i32> [ %i.sr, %.lr.ph544 ], [ %.unr2012, %.lr.ph544.prol.loopexit ]
  %.1851541 = phi i32 [ %i.su, %.lr.ph544 ], [ %.1851541.unr, %.lr.ph544.prol.loopexit ]
  %i.sa = load <8 x i16>, ptr %.1846542, align 16, !tbaa !20
  %i.sb = sext <8 x i16> %i.sa to <8 x i32>
  %i.sc = load i16, ptr %.11821543, align 2, !tbaa !490
  %i.sd = sext i16 %i.sc to i32
  %i.se = insertelement <8 x i32> poison, i32 %i.sd, i64 0
  %i.sf = shufflevector <8 x i32> %i.se, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sg = mul <8 x i32> %i.sf, %i.sb
  %i.sh = add <8 x i32> %i.sg, %i.rz
  %i.si = getelementptr inbounds nuw i8, ptr %.1846542, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %.11821543, i64 2
  %i.sk = load <8 x i16>, ptr %i.si, align 16, !tbaa !20
  %i.sl = sext <8 x i16> %i.sk to <8 x i32>
  %i.sm = load i16, ptr %i.sj, align 2, !tbaa !490
  %i.sn = sext i16 %i.sm to i32
  %i.so = insertelement <8 x i32> poison, i32 %i.sn, i64 0
  %i.sp = shufflevector <8 x i32> %i.so, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sq = mul <8 x i32> %i.sp, %i.sl
  %i.sr = add <8 x i32> %i.sq, %i.sh              ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.1846542, i64 32
  %i.st = getelementptr inbounds nuw i8, ptr %.11821543, i64 4 ; 2 uses
  %i.su = add nuw nsw i32 %.1851541, 2            ; 2 uses
  %exitcond1108.not.1 = icmp eq i32 %i.su, %6
  br i1 %exitcond1108.not.1, label %._crit_edge545, label %.lr.ph544, !llvm.loop !593

._crit_edge545:                                   ; preds = %.lr.ph544.prol.loopexit, %.lr.ph544, %.preheader399
  %.lcssa415 = phi <8 x i32> [ %.lcssa414, %.preheader399 ], [ %.lcssa1995.unr, %.lr.ph544.prol.loopexit ], [ %i.sr, %.lr.ph544 ]
  %.11821.lcssa = phi ptr [ %.10820.lcssa, %.preheader399 ], [ %.lcssa1994.unr, %.lr.ph544.prol.loopexit ], [ %i.st, %.lr.ph544 ]
  store <8 x i32> %.lcssa415, ptr %.5550, align 32, !tbaa !20
  %i.sv = getelementptr inbounds nuw i8, ptr %.5550, i64 32 ; 2 uses
  %i.sw = add nuw nsw i32 %.3825548, 1            ; 2 uses
  %exitcond1109.not = icmp eq i32 %i.sw, %4
  br i1 %exitcond1109.not, label %._crit_edge552, label %.lr.ph551, !llvm.loop !594

._crit_edge552:                                   ; preds = %._crit_edge545, %.preheader403
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader403 ], [ %i.sv, %._crit_edge545 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1111.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1111.not, label %bb.b, label %bb.c, !llvm.loop !595

.preheader397:                                    ; preds = %.preheader397.lr.ph, %bb.p
  %indvars.iv1128 = phi i64 [ %i.at, %.preheader397.lr.ph ], [ %indvars.iv.next1129, %bb.p ] ; 2 uses
  %.6689 = phi ptr [ %.0802.lcssa, %.preheader397.lr.ph ], [ %.11.lcssa, %bb.p ]
  %i.sx = mul nsw i64 %indvars.iv1128, %i.av
  br label %bb.q

.preheader389.loopexit:                           ; preds = %bb.p
  %i.sy = trunc nuw nsw i64 %indvars.iv.next1129 to i32
  br label %.preheader389

.preheader389:                                    ; preds = %.preheader389.loopexit, %.preheader398
  %.1806.lcssa = phi i32 [ %.0805.lcssa, %.preheader398 ], [ %i.sy, %.preheader389.loopexit ] ; 3 uses
  %.6.lcssa = phi ptr [ %.0802.lcssa, %.preheader398 ], [ %.11.lcssa, %.preheader389.loopexit ] ; 2 uses
  %i.sz = or disjoint i32 %.1806.lcssa, 1
  %i.ta = icmp slt i32 %i.sz, %3
  br i1 %i.ta, label %.preheader388.lr.ph, label %.preheader380

.preheader388.lr.ph:                              ; preds = %.preheader389
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tf = icmp sgt i32 %4, 7
  %i.tg = icmp eq i32 %5, 0                       ; 4 uses
  %i.th = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ti = add i32 %6, -2                          ; 5 uses
  %i.tj = and i32 %i.ti, -2
  %i.tk = add nuw nsw i32 %i.tj, 2                ; 4 uses
  %i.tl = and i32 %4, -8
  %i.tm = lshr i32 %i.ti, 1
  %i.tn = zext nneg i32 %i.tm to i64              ; 4 uses
  %i.to = shl nuw nsw i64 %i.tn, 4
  %i.tp = shl nuw nsw i64 %i.tn, 3
  %i.tq = shl nuw nsw i64 %i.tn, 2
  %i.tr = zext nneg i32 %.1806.lcssa to i64
  %i.ts = sext i32 %3 to i64
  %i.tt = sext i32 %6 to i64
  %wide.trip.count1142 = zext nneg i32 %2 to i64
  %invariant.op1334 = add nsw i64 %i.ts, -1
  %i.tu = add nuw nsw i64 %i.tn, 1                ; 7 uses
  %i.tv = add i32 %6, -2                          ; 3 uses
  %i.tw = lshr i32 %i.tv, 1                       ; 3 uses
  %i.tx = add nuw i32 %i.tw, 1                    ; 4 uses
  %i.ty = icmp eq i32 %i.tw, 0
  %unroll_iter2040 = and i32 %i.tx, -2
  %i.tz = and i32 %i.tv, 2
  %lcmp.mod2034.not.not = icmp eq i32 %i.tz, 0
  %lcmp.mod2039 = trunc i32 %i.tx to i1
  %i.ua = icmp eq i32 %i.tw, 0
  %unroll_iter2050 = and i32 %i.tx, -2
  %i.ub = and i32 %i.tv, 2
  %lcmp.mod2045.not.not = icmp eq i32 %i.ub, 0
  %lcmp.mod2049 = trunc i32 %i.tx to i1
  %min.iters.check1604 = icmp ult i32 %i.ti, 14
  %n.vec1606 = and i64 %i.tu, 4294967288          ; 4 uses
  %i.uc = trunc nuw i64 %n.vec1606 to i32
  %i.ud = shl i32 %i.uc, 1
  %i.ue = shl nuw nsw i64 %n.vec1606, 3           ; 2 uses
  %cmp.n1627 = icmp eq i64 %i.tu, %n.vec1606
  %min.iters.check1508 = icmp ult i32 %i.ti, 6
  %min.iters.check1510 = icmp ult i32 %i.ti, 30
  %i.uf = and i64 %i.tu, 12
  %n.vec1512 = and i64 %i.tu, 4294967280          ; 6 uses
  %i.ug = trunc nuw i64 %n.vec1512 to i32
  %i.uh = shl i32 %i.ug, 1
  %i.ui = shl nuw nsw i64 %n.vec1512, 3
  %i.uj = shl nuw nsw i64 %n.vec1512, 2
  %cmp.n1543 = icmp eq i64 %i.tu, %n.vec1512
  %min.epilog.iters.check1552 = icmp eq i64 %i.uf, 0
  %n.vec1554 = and i64 %i.tu, 4294967292          ; 5 uses
  %i.uk = trunc nuw i64 %n.vec1554 to i32
  %i.ul = shl i32 %i.uk, 1
  %i.um = shl nuw nsw i64 %n.vec1554, 3
  %i.un = shl nuw nsw i64 %n.vec1554, 2
  %cmp.n1571 = icmp eq i64 %i.tu, %n.vec1554
  br label %.preheader388

bb.p:                                             ; preds = %._crit_edge684
  %indvars.iv.next1129 = add nuw nsw i64 %indvars.iv1128, 4 ; 3 uses
  %i.uo = icmp slt i64 %indvars.iv.next1129, %invariant.op
  br i1 %i.uo, label %.preheader397, label %.preheader389.loopexit, !llvm.loop !596

bb.q:                                             ; preds = %.preheader397, %._crit_edge684
  %indvars.iv1123 = phi i64 [ 0, %.preheader397 ], [ %indvars.iv.next1124, %._crit_edge684 ] ; 3 uses
  %.7687 = phi ptr [ %.6689, %.preheader397 ], [ %.11.lcssa, %._crit_edge684 ] ; 2 uses
  %i.up = load ptr, ptr %0, align 8, !tbaa !9
  %i.uq = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.ur = sext i32 %i.uq to i64
  %i.us = mul nsw i64 %indvars.iv1123, %i.ur
  %i.ut = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.uu = mul i64 %i.us, %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.uu
  %i.uw = getelementptr inbounds [2 x i8], ptr %i.uv, i64 %i.sx ; 10 uses
  %i.ux = load ptr, ptr %1, align 8, !tbaa !9
  %i.uy = load i32, ptr %i.af, align 4, !tbaa !93
  %i.uz = sext i32 %i.uy to i64
  %i.va = mul nsw i64 %indvars.iv1123, %i.uz
  %i.vb = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.vc = mul i64 %i.va, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.vc ; 2 uses
  br i1 %i.ah, label %.lr.ph594, label %.preheader396

.preheader396:                                    ; preds = %bb.u, %bb.q
  %.0890.lcssa = phi i32 [ 0, %bb.q ], [ %i.an, %bb.u ] ; 3 uses
  %.0853.lcssa = phi ptr [ %i.vd, %bb.q ], [ %.2855.lcssa, %bb.u ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7687, %bb.q ], [ %i.yv, %bb.u ] ; 2 uses
  %i.ve = or disjoint i32 %.0890.lcssa, 3
  %i.vf = icmp slt i32 %i.ve, %4
  br i1 %i.vf, label %.lr.ph631, label %.preheader395

.lr.ph594:                                        ; preds = %bb.q, %bb.u
  %.8592 = phi ptr [ %i.yv, %bb.u ], [ %.7687, %bb.q ] ; 9 uses
  %.0853591 = phi ptr [ %.2855.lcssa, %bb.u ], [ %i.vd, %bb.q ] ; 2 uses
  %.0890590 = phi i32 [ %i.yw, %bb.u ], [ 0, %bb.q ]
  br i1 %i.ai, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph594
  %i.vg = load <4 x i64>, ptr %.8592, align 1, !tbaa !20
  %i.vh = getelementptr inbounds nuw i8, ptr %.8592, i64 32
  %i.vi = load <4 x i64>, ptr %i.vh, align 1, !tbaa !20
  %i.vj = getelementptr inbounds nuw i8, ptr %.8592, i64 64
  %i.vk = load <4 x i64>, ptr %i.vj, align 1, !tbaa !20
  %i.vl = getelementptr inbounds nuw i8, ptr %.8592, i64 96
  %i.vm = load <4 x i64>, ptr %i.vl, align 1, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph594, %bb.r
  %.0328 = phi <4 x i64> [ %i.vg, %bb.r ], [ zeroinitializer, %.lr.ph594 ] ; 2 uses
  %.0324 = phi <4 x i64> [ %i.vi, %bb.r ], [ zeroinitializer, %.lr.ph594 ] ; 2 uses
  %.0320 = phi <4 x i64> [ %i.vk, %bb.r ], [ zeroinitializer, %.lr.ph594 ] ; 2 uses
  %storemerge982 = phi <4 x i64> [ %i.vm, %bb.r ], [ zeroinitializer, %.lr.ph594 ] ; 2 uses
  br i1 %i.aj, label %.lr.ph568.preheader, label %.preheader393

.lr.ph568.preheader:                              ; preds = %bb.s
  %i.vn = bitcast <4 x i64> %.0328 to <8 x i32>
  %i.vo = bitcast <4 x i64> %.0324 to <8 x i32>
  %i.vp = bitcast <4 x i64> %.0320 to <8 x i32>
  %i.vq = bitcast <4 x i64> %storemerge982 to <8 x i32>
  br label %.lr.ph568

.preheader393.loopexit:                           ; preds = %.lr.ph568
  %i.vr = bitcast <8 x i32> %i.wq to <4 x i64>
  %i.vs = bitcast <8 x i32> %i.wo to <4 x i64>
  %i.vt = bitcast <8 x i32> %i.wk to <4 x i64>
  %i.vu = bitcast <8 x i32> %i.wg to <4 x i64>
  br label %.preheader393

.preheader393:                                    ; preds = %.preheader393.loopexit, %bb.s
  %.1329.lcssa = phi <4 x i64> [ %.0328, %bb.s ], [ %i.vu, %.preheader393.loopexit ] ; 2 uses
  %.1325.lcssa = phi <4 x i64> [ %.0324, %bb.s ], [ %i.vt, %.preheader393.loopexit ] ; 2 uses
  %.1321.lcssa = phi <4 x i64> [ %.0320, %bb.s ], [ %i.vs, %.preheader393.loopexit ] ; 2 uses
  %.0317.lcssa = phi <4 x i64> [ %storemerge982, %bb.s ], [ %i.vr, %.preheader393.loopexit ] ; 2 uses
  %.0923.lcssa = phi i32 [ 0, %bb.s ], [ %i.am, %.preheader393.loopexit ] ; 2 uses
  %.0921.lcssa = phi ptr [ %i.uw, %bb.s ], [ %i.wr, %.preheader393.loopexit ]
  %.1854.lcssa = phi ptr [ %.0853591, %bb.s ], [ %i.ws, %.preheader393.loopexit ] ; 2 uses
  %i.vv = icmp slt i32 %.0923.lcssa, %6
  br i1 %i.vv, label %.lr.ph583.preheader, label %._crit_edge584

.lr.ph583.preheader:                              ; preds = %.preheader393
  %i.vw = bitcast <4 x i64> %.1329.lcssa to <8 x i32>
  %i.vx = bitcast <4 x i64> %.1325.lcssa to <8 x i32>
  %i.vy = bitcast <4 x i64> %.1321.lcssa to <8 x i32>
  %i.vz = bitcast <4 x i64> %.0317.lcssa to <8 x i32>
  br label %.lr.ph583

.lr.ph568:                                        ; preds = %.lr.ph568.preheader, %.lr.ph568
  %.1854566 = phi ptr [ %i.ws, %.lr.ph568 ], [ %.0853591, %.lr.ph568.preheader ] ; 2 uses
  %.0921565 = phi ptr [ %i.wr, %.lr.ph568 ], [ %i.uw, %.lr.ph568.preheader ] ; 2 uses
  %.0923564 = phi i32 [ %i.wt, %.lr.ph568 ], [ 0, %.lr.ph568.preheader ]
  %.0317563 = phi <8 x i32> [ %i.wq, %.lr.ph568 ], [ %i.vq, %.lr.ph568.preheader ]
  %.1321562 = phi <8 x i32> [ %i.wo, %.lr.ph568 ], [ %i.vp, %.lr.ph568.preheader ]
  %.1325561 = phi <8 x i32> [ %i.wk, %.lr.ph568 ], [ %i.vo, %.lr.ph568.preheader ]
  %.1329560 = phi <8 x i32> [ %i.wg, %.lr.ph568 ], [ %i.vn, %.lr.ph568.preheader ]
  %i.wa = load <2 x i64>, ptr %.0921565, align 1, !tbaa !20
  %i.wb = load <4 x i64>, ptr %.1854566, align 1, !tbaa !20 ; 2 uses
  %i.wc = shufflevector <2 x i64> %i.wa, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.wd = bitcast <4 x i64> %i.wc to <16 x i16>   ; 2 uses
  %i.we = bitcast <4 x i64> %i.wb to <16 x i16>   ; 2 uses
  %i.wf = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.wd, <16 x i16> %i.we)
  %i.wg = add <8 x i32> %i.wf, %.1329560          ; 2 uses
  %i.wh = bitcast <4 x i64> %i.wb to <16 x i16>
  %i.wi = shufflevector <16 x i16> %i.wh, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.wj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.wd, <16 x i16> %i.wi)
  %i.wk = add <8 x i32> %i.wj, %.1325561          ; 2 uses
  %i.wl = bitcast <4 x i64> %i.wc to <16 x i16>
  %i.wm = shufflevector <16 x i16> %i.wl, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.wn = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.wm, <16 x i16> %i.we)
  %i.wo = add <8 x i32> %i.wn, %.1321562          ; 2 uses
  %i.wp = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.wm, <16 x i16> %i.wi)
  %i.wq = add <8 x i32> %i.wp, %.0317563          ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.0921565, i64 16 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.1854566, i64 32 ; 2 uses
  %i.wt = add nuw nsw i32 %.0923564, 2            ; 2 uses
  %i.wu = or disjoint i32 %i.wt, 1
  %i.wv = icmp slt i32 %i.wu, %6
  br i1 %i.wv, label %.lr.ph568, label %.preheader393.loopexit, !llvm.loop !597

.lr.ph583:                                        ; preds = %.lr.ph583.preheader, %.lr.ph583
  %.2855582 = phi ptr [ %i.xo, %.lr.ph583 ], [ %.1854.lcssa, %.lr.ph583.preheader ] ; 2 uses
  %.1922581 = phi ptr [ %i.xn, %.lr.ph583 ], [ %.0921.lcssa, %.lr.ph583.preheader ] ; 2 uses
  %.1924580 = phi i32 [ %i.xp, %.lr.ph583 ], [ %.0923.lcssa, %.lr.ph583.preheader ]
  %.1318579 = phi <8 x i32> [ %i.xm, %.lr.ph583 ], [ %i.vz, %.lr.ph583.preheader ]
  %.2322578 = phi <8 x i32> [ %i.xl, %.lr.ph583 ], [ %i.vy, %.lr.ph583.preheader ]
  %.2326577 = phi <8 x i32> [ %i.xk, %.lr.ph583 ], [ %i.vx, %.lr.ph583.preheader ]
  %.2330576 = phi <8 x i32> [ %i.xj, %.lr.ph583 ], [ %i.vw, %.lr.ph583.preheader ]
  %i.ww = load double, ptr %.1922581, align 1, !tbaa !20
  %i.wx = insertelement <2 x double> poison, double %i.ww, i64 0
  %i.wy = load <8 x i16>, ptr %.2855582, align 1, !tbaa !20
  %i.wz = bitcast <2 x double> %i.wx to <8 x i16>
  %i.xa = shufflevector <8 x i16> %i.wz, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xb = sext <8 x i16> %i.xa to <8 x i32>       ; 3 uses
  %i.xc = sext <8 x i16> %i.wy to <8 x i32>       ; 3 uses
  %i.xd = shufflevector <8 x i32> %i.xc, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.xe = mul nsw <8 x i32> %i.xb, %i.xc
  %i.xf = mul nsw <8 x i32> %i.xd, %i.xb
  %i.xg = shufflevector <8 x i32> %i.xb, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.xh = mul nsw <8 x i32> %i.xg, %i.xc
  %i.xi = mul nsw <8 x i32> %i.xd, %i.xg
  %i.xj = add <8 x i32> %i.xe, %.2330576          ; 2 uses
  %i.xk = add <8 x i32> %i.xf, %.2326577          ; 2 uses
  %i.xl = add <8 x i32> %i.xh, %.2322578          ; 2 uses
  %i.xm = add <8 x i32> %i.xi, %.1318579          ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.1922581, i64 8
  %i.xo = getelementptr inbounds nuw i8, ptr %.2855582, i64 16 ; 2 uses
  %i.xp = add nuw nsw i32 %.1924580, 1            ; 2 uses
  %exitcond1115.not = icmp eq i32 %i.xp, %6
  br i1 %exitcond1115.not, label %._crit_edge584.loopexit, label %.lr.ph583, !llvm.loop !598

end_hunk_2
begin_hunk_3_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %i.agc = bitcast <4 x i32> %i.agb to <2 x i64>
  %.3266 = select i1 %7, <2 x i64> %i.aga, <2 x i64> %.2265.lcssa
  %.2262 = select i1 %7, <2 x i64> %i.agc, <2 x i64> %.1261.lcssa
  store <2 x i64> %.3266, ptr %.10659, align 16, !tbaa !20
  %i.agd = getelementptr inbounds nuw i8, ptr %.10659, i64 16
  store <2 x i64> %.2262, ptr %i.agd, align 16, !tbaa !20
  %i.age = getelementptr inbounds nuw i8, ptr %.10659, i64 32 ; 2 uses
  %i.agf = add nuw nsw i32 %.2892657, 2           ; 3 uses
  %i.agg = or disjoint i32 %i.agf, 1
  %i.agh = icmp slt i32 %i.agg, %4
  br i1 %i.agh, label %.lr.ph660, label %.preheader394, !llvm.loop !605

.lr.ph683:                                        ; preds = %.preheader394, %._crit_edge677
  %.11682 = phi ptr [ %i.ajf, %._crit_edge677 ], [ %.10.lcssa, %.preheader394 ] ; 3 uses
  %.9862681 = phi ptr [ %.11864.lcssa, %._crit_edge677 ], [ %.6859.lcssa, %.preheader394 ] ; 4 uses
  %.3893680 = phi i32 [ %i.ajg, %._crit_edge677 ], [ %.2892.lcssa, %.preheader394 ]
  br i1 %i.ai, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph683
  %i.agi = load <4 x i32>, ptr %.11682, align 16, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph683, %bb.ab
  %i.agj = phi <4 x i32> [ %i.agi, %bb.ab ], [ zeroinitializer, %.lr.ph683 ] ; 3 uses
  br i1 %i.aj, label %.lr.ph668.preheader, label %.preheader390

.lr.ph668.preheader:                              ; preds = %bb.ac
  br i1 %i.ba, label %.lr.ph668.epil.preheader, label %.lr.ph668

.preheader390.loopexit.unr-lcssa:                 ; preds = %.lr.ph668
  br i1 %lcmp.mod2024.not.not, label %.lr.ph668.epil.preheader, label %.preheader390.loopexit

.lr.ph668.epil.preheader:                         ; preds = %.preheader390.loopexit.unr-lcssa, %.lr.ph668.preheader
  %.10863666.epil.init = phi ptr [ %.9862681, %.lr.ph668.preheader ], [ %i.aic, %.preheader390.loopexit.unr-lcssa ]
  %.0933665.epil.init = phi ptr [ %i.uw, %.lr.ph668.preheader ], [ %i.aib, %.preheader390.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init2023 = phi <4 x i32> [ %i.agj, %.lr.ph668.preheader ], [ %i.aia, %.preheader390.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2027)
  %i.agk = load <8 x i16>, ptr %.0933665.epil.init, align 1, !tbaa !20
  %i.agl = load float, ptr %.10863666.epil.init, align 1, !tbaa !20
  %i.agm = insertelement <4 x float> poison, float %i.agl, i64 0
  %i.agn = bitcast <4 x float> %i.agm to <8 x i16>
  %i.ago = shufflevector <8 x i16> %i.agn, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.agp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.agk, <8 x i16> %i.ago)
  %i.agq = add <4 x i32> %i.agp, %.epil.init2023
  %i.agr = getelementptr inbounds nuw i8, ptr %.0933665.epil.init, i64 16
  br label %.preheader390.loopexit

.preheader390.loopexit:                           ; preds = %.preheader390.loopexit.unr-lcssa, %.lr.ph668.epil.preheader
  %.lcssa1948 = phi <4 x i32> [ %i.aia, %.preheader390.loopexit.unr-lcssa ], [ %i.agq, %.lr.ph668.epil.preheader ]
  %.lcssa1947 = phi ptr [ %i.aib, %.preheader390.loopexit.unr-lcssa ], [ %i.agr, %.lr.ph668.epil.preheader ]
  %i.ags = getelementptr i8, ptr %.9862681, i64 %i.as
  %scevgep1120 = getelementptr i8, ptr %i.ags, i64 4
  br label %.preheader390

.preheader390:                                    ; preds = %.preheader390.loopexit, %bb.ac
  %.lcssa412 = phi <4 x i32> [ %i.agj, %bb.ac ], [ %.lcssa1948, %.preheader390.loopexit ] ; 3 uses
  %.0935.lcssa = phi i32 [ 0, %bb.ac ], [ %i.am, %.preheader390.loopexit ] ; 5 uses
  %.0933.lcssa = phi ptr [ %i.uw, %bb.ac ], [ %.lcssa1947, %.preheader390.loopexit ] ; 3 uses
  %.10863.lcssa = phi ptr [ %.9862681, %bb.ac ], [ %scevgep1120, %.preheader390.loopexit ] ; 4 uses
  %i.agt = icmp slt i32 %.0935.lcssa, %6
  br i1 %i.agt, label %.lr.ph676.preheader, label %._crit_edge677

.lr.ph676.preheader:                              ; preds = %.preheader390
  %i.agu = sub i32 %6, %.0935.lcssa
  %.neg2078 = add i32 %.0935.lcssa, 1
  %xtraiter2030 = and i32 %i.agu, 1
  %lcmp.mod2031.not = icmp eq i32 %xtraiter2030, 0
  br i1 %lcmp.mod2031.not, label %.lr.ph676.prol.loopexit, label %.lr.ph676.prol

.lr.ph676.prol:                                   ; preds = %.lr.ph676.preheader
  %i.agv = load i64, ptr %.0933.lcssa, align 1, !tbaa !20
  %i.agw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.agv, i64 0
  %i.agx = load i16, ptr %.10863.lcssa, align 2, !tbaa !490
  %i.agy = insertelement <8 x i16> poison, i16 %i.agx, i64 0
  %i.agz = shufflevector <8 x i16> %i.agy, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aha = bitcast <2 x i64> %i.agw to <8 x i16>  ; 2 uses
  %i.ahb = mul <8 x i16> %i.agz, %i.aha
  %i.ahc = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aha, <8 x i16> %i.agz)
  %i.ahd = shufflevector <8 x i16> %i.ahb, <8 x i16> %i.ahc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahe = bitcast <8 x i16> %i.ahd to <4 x i32>
  %i.ahf = add <4 x i32> %.lcssa412, %i.ahe       ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0933.lcssa, i64 8
  %i.ahh = getelementptr inbounds nuw i8, ptr %.10863.lcssa, i64 2 ; 2 uses
  %i.ahi = add nuw nsw i32 %.0935.lcssa, 1
  br label %.lr.ph676.prol.loopexit

.lr.ph676.prol.loopexit:                          ; preds = %.lr.ph676.prol, %.lr.ph676.preheader
  %.lcssa1950.unr = phi <4 x i32> [ poison, %.lr.ph676.preheader ], [ %i.ahf, %.lr.ph676.prol ]
  %.lcssa1949.unr = phi ptr [ poison, %.lr.ph676.preheader ], [ %i.ahh, %.lr.ph676.prol ]
  %.11864675.unr = phi ptr [ %.10863.lcssa, %.lr.ph676.preheader ], [ %i.ahh, %.lr.ph676.prol ]
  %.1934674.unr = phi ptr [ %.0933.lcssa, %.lr.ph676.preheader ], [ %i.ahg, %.lr.ph676.prol ]
  %.1936673.unr = phi i32 [ %.0935.lcssa, %.lr.ph676.preheader ], [ %i.ahi, %.lr.ph676.prol ]
  %.unr2032 = phi <4 x i32> [ %.lcssa412, %.lr.ph676.preheader ], [ %i.ahf, %.lr.ph676.prol ]
  %i.ahj = icmp eq i32 %6, %.neg2078
  br i1 %i.ahj, label %._crit_edge677, label %.lr.ph676

.lr.ph668:                                        ; preds = %.lr.ph668.preheader, %.lr.ph668
  %.10863666 = phi ptr [ %i.aic, %.lr.ph668 ], [ %.9862681, %.lr.ph668.preheader ] ; 3 uses
  %.0933665 = phi ptr [ %i.aib, %.lr.ph668 ], [ %i.uw, %.lr.ph668.preheader ] ; 3 uses
  %i.ahk = phi <4 x i32> [ %i.aia, %.lr.ph668 ], [ %i.agj, %.lr.ph668.preheader ]
  %niter2029 = phi i32 [ %niter2029.next.1, %.lr.ph668 ], [ 0, %.lr.ph668.preheader ]
  %i.ahl = load <8 x i16>, ptr %.0933665, align 1, !tbaa !20
  %i.ahm = load float, ptr %.10863666, align 1, !tbaa !20
  %i.ahn = insertelement <4 x float> poison, float %i.ahm, i64 0
  %i.aho = bitcast <4 x float> %i.ahn to <8 x i16>
  %i.ahp = shufflevector <8 x i16> %i.aho, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ahq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ahl, <8 x i16> %i.ahp)
  %i.ahr = add <4 x i32> %i.ahq, %i.ahk
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0933665, i64 16
  %i.aht = getelementptr inbounds nuw i8, ptr %.10863666, i64 4
  %i.ahu = load <8 x i16>, ptr %i.ahs, align 1, !tbaa !20
  %i.ahv = load float, ptr %i.aht, align 1, !tbaa !20
  %i.ahw = insertelement <4 x float> poison, float %i.ahv, i64 0
  %i.ahx = bitcast <4 x float> %i.ahw to <8 x i16>
  %i.ahy = shufflevector <8 x i16> %i.ahx, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ahz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ahu, <8 x i16> %i.ahy)
  %i.aia = add <4 x i32> %i.ahz, %i.ahr           ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.0933665, i64 32 ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.10863666, i64 8 ; 2 uses
  %niter2029.next.1 = add nuw nsw i32 %niter2029, 2 ; 2 uses
  %niter2029.ncmp.1.not = icmp eq i32 %niter2029.next.1, %unroll_iter2028
  br i1 %niter2029.ncmp.1.not, label %.preheader390.loopexit.unr-lcssa, label %.lr.ph668, !llvm.loop !606

.lr.ph676:                                        ; preds = %.lr.ph676.prol.loopexit, %.lr.ph676
  %.11864675 = phi ptr [ %i.ajd, %.lr.ph676 ], [ %.11864675.unr, %.lr.ph676.prol.loopexit ] ; 3 uses
  %.1934674 = phi ptr [ %i.ajc, %.lr.ph676 ], [ %.1934674.unr, %.lr.ph676.prol.loopexit ] ; 3 uses
  %.1936673 = phi i32 [ %i.aje, %.lr.ph676 ], [ %.1936673.unr, %.lr.ph676.prol.loopexit ]
  %i.aid = phi <4 x i32> [ %i.ajb, %.lr.ph676 ], [ %.unr2032, %.lr.ph676.prol.loopexit ]
  %i.aie = load i64, ptr %.1934674, align 1, !tbaa !20
  %i.aif = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.aie, i64 0
  %i.aig = load i16, ptr %.11864675, align 2, !tbaa !490
  %i.aih = insertelement <8 x i16> poison, i16 %i.aig, i64 0
  %i.aii = shufflevector <8 x i16> %i.aih, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aij = bitcast <2 x i64> %i.aif to <8 x i16>  ; 2 uses
  %i.aik = mul <8 x i16> %i.aii, %i.aij
  %i.ail = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aij, <8 x i16> %i.aii)
  %i.aim = shufflevector <8 x i16> %i.aik, <8 x i16> %i.ail, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ain = bitcast <8 x i16> %i.aim to <4 x i32>
  %i.aio = add <4 x i32> %i.aid, %i.ain
  %i.aip = getelementptr inbounds nuw i8, ptr %.1934674, i64 8
  %i.aiq = getelementptr inbounds nuw i8, ptr %.11864675, i64 2
  %i.air = load i64, ptr %i.aip, align 1, !tbaa !20
  %i.ais = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.air, i64 0
  %i.ait = load i16, ptr %i.aiq, align 2, !tbaa !490
  %i.aiu = insertelement <8 x i16> poison, i16 %i.ait, i64 0
  %i.aiv = shufflevector <8 x i16> %i.aiu, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aiw = bitcast <2 x i64> %i.ais to <8 x i16>  ; 2 uses
  %i.aix = mul <8 x i16> %i.aiv, %i.aiw
  %i.aiy = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aiw, <8 x i16> %i.aiv)
  %i.aiz = shufflevector <8 x i16> %i.aix, <8 x i16> %i.aiy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aja = bitcast <8 x i16> %i.aiz to <4 x i32>
  %i.ajb = add <4 x i32> %i.aio, %i.aja           ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.1934674, i64 16
  %i.ajd = getelementptr inbounds nuw i8, ptr %.11864675, i64 4 ; 2 uses
  %i.aje = add nuw nsw i32 %.1936673, 2           ; 2 uses
  %exitcond1121.not.1 = icmp eq i32 %i.aje, %6
  br i1 %exitcond1121.not.1, label %._crit_edge677, label %.lr.ph676, !llvm.loop !607

._crit_edge677:                                   ; preds = %.lr.ph676.prol.loopexit, %.lr.ph676, %.preheader390
  %.lcssa413 = phi <4 x i32> [ %.lcssa412, %.preheader390 ], [ %.lcssa1950.unr, %.lr.ph676.prol.loopexit ], [ %i.ajb, %.lr.ph676 ]
  %.11864.lcssa = phi ptr [ %.10863.lcssa, %.preheader390 ], [ %.lcssa1949.unr, %.lr.ph676.prol.loopexit ], [ %i.ajd, %.lr.ph676 ]
  store <4 x i32> %.lcssa413, ptr %.11682, align 16, !tbaa !20
  %i.ajf = getelementptr inbounds nuw i8, ptr %.11682, i64 16 ; 2 uses
  %i.ajg = add nuw nsw i32 %.3893680, 1           ; 2 uses
  %exitcond1122.not = icmp eq i32 %i.ajg, %4
  br i1 %exitcond1122.not, label %._crit_edge684, label %.lr.ph683, !llvm.loop !608

._crit_edge684:                                   ; preds = %._crit_edge677, %.preheader394
  %.11.lcssa = phi ptr [ %.10.lcssa, %.preheader394 ], [ %i.ajf, %._crit_edge677 ] ; 3 uses
  %indvars.iv.next1124 = add nuw nsw i64 %indvars.iv1123, 1 ; 2 uses
  %exitcond1127.not = icmp eq i64 %indvars.iv.next1124, %wide.trip.count1126
  br i1 %exitcond1127.not, label %bb.p, label %bb.q, !llvm.loop !609

.preheader388:                                    ; preds = %.preheader388.lr.ph, %bb.ad
  %indvars.iv1144 = phi i64 [ %i.tr, %.preheader388.lr.ph ], [ %indvars.iv.next1145, %bb.ad ] ; 2 uses
  %.12819 = phi ptr [ %.6.lcssa, %.preheader388.lr.ph ], [ %.17.lcssa, %bb.ad ]
  %i.ajh = mul nsw i64 %indvars.iv1144, %i.tt
  br label %bb.ae

.preheader380.loopexit:                           ; preds = %bb.ad
  %i.aji = trunc nsw i64 %indvars.iv.next1145 to i32
  br label %.preheader380

.preheader380:                                    ; preds = %.preheader380.loopexit, %.preheader389
  %.2807.lcssa = phi i32 [ %.1806.lcssa, %.preheader389 ], [ %i.aji, %.preheader380.loopexit ] ; 2 uses
  %.12.lcssa = phi ptr [ %.6.lcssa, %.preheader389 ], [ %.17.lcssa, %.preheader380.loopexit ]
  %i.ajj = icmp slt i32 %.2807.lcssa, %3
  br i1 %i.ajj, label %.preheader379.lr.ph, label %._crit_edge924

.preheader379.lr.ph:                              ; preds = %.preheader380
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ajm = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ajo = icmp sgt i32 %4, 7
  %i.ajp = icmp eq i32 %5, 0                      ; 5 uses
  %i.ajq = icmp sgt i32 %6, 1                     ; 3 uses
  %i.ajr = icmp sgt i32 %6, 0
  %i.ajs = add i32 %6, -2                         ; 4 uses
  %i.ajt = and i32 %i.ajs, -2
  %i.aju = add nuw nsw i32 %i.ajt, 2              ; 4 uses
  %i.ajv = and i32 %4, -8
  %i.ajw = lshr i32 %i.ajs, 1
  %i.ajx = zext nneg i32 %i.ajw to i64            ; 3 uses
  %i.ajy = shl nuw nsw i64 %i.ajx, 4
  %i.ajz = shl nuw nsw i64 %i.ajx, 3
  %i.aka = add i32 %4, -1                         ; 2 uses
  %i.akb = add i32 %6, -1
  %i.akc = zext i32 %i.akb to i64
  %i.akd = shl nuw nsw i64 %i.akc, 1
  %i.ake = sext i32 %.2807.lcssa to i64
  %i.akf = sext i32 %6 to i64
  %wide.trip.count1167 = sext i32 %3 to i64
  %wide.trip.count1162 = zext nneg i32 %2 to i64
  %i.akg = zext i32 %6 to i64                     ; 5 uses
  %i.akh = add nuw nsw i64 %i.ajx, 1              ; 5 uses
  %i.aki = add i32 %6, -2                         ; 3 uses
  %i.akj = lshr i32 %i.aki, 1                     ; 3 uses
  %i.akk = add nuw i32 %i.akj, 1                  ; 4 uses
  %i.akl = icmp eq i32 %i.akj, 0
  %unroll_iter2063 = and i32 %i.akk, -2
  %i.akm = and i32 %i.aki, 2
  %lcmp.mod2057.not.not = icmp eq i32 %i.akm, 0
  %lcmp.mod2062 = trunc i32 %i.akk to i1
  %i.akn = icmp eq i32 %i.akj, 0
  %unroll_iter2072 = and i32 %i.akk, -2
  %i.ako = and i32 %i.aki, 2
  %lcmp.mod2068.not.not = icmp eq i32 %i.ako, 0
  %lcmp.mod2071 = trunc i32 %i.akk to i1
  %min.iters.check1747 = icmp ult i32 %i.ajs, 6
  %min.iters.check1749 = icmp ult i32 %i.ajs, 30
  %i.akp = and i64 %i.akh, 12
  %n.vec1751 = and i64 %i.akh, 4294967280         ; 6 uses
  %i.akq = trunc nuw i64 %n.vec1751 to i32
  %i.akr = shl i32 %i.akq, 1
  %i.aks = shl nuw nsw i64 %n.vec1751, 2
  %i.akt = shl nuw nsw i64 %n.vec1751, 3
  %cmp.n1782 = icmp eq i64 %i.akh, %n.vec1751
  %min.epilog.iters.check1792 = icmp eq i64 %i.akp, 0
  %n.vec1794 = and i64 %i.akh, 4294967292         ; 5 uses
  %i.aku = trunc nuw i64 %n.vec1794 to i32
  %i.akv = shl i32 %i.aku, 1
  %i.akw = shl nuw nsw i64 %n.vec1794, 2
  %i.akx = shl nuw nsw i64 %n.vec1794, 3
  %cmp.n1811 = icmp eq i64 %i.akh, %n.vec1794
  %min.iters.check1636 = icmp ult i32 %6, 8
  %min.iters.check1638 = icmp ult i32 %6, 32
  %i.aky = and i64 %i.akg, 24
  %n.vec1640 = and i64 %i.akg, 2147483616         ; 5 uses
  %i.akz = trunc nuw nsw i64 %n.vec1640 to i32
  %i.ala = shl nuw nsw i64 %n.vec1640, 1          ; 2 uses
  %cmp.n1662 = icmp eq i64 %n.vec1640, %i.akg
  %min.epilog.iters.check1671 = icmp eq i64 %i.aky, 0
  %n.vec1673 = and i64 %i.akg, 2147483640         ; 4 uses
  %i.alb = trunc nuw nsw i64 %n.vec1673 to i32
  %i.alc = shl nuw nsw i64 %n.vec1673, 1          ; 2 uses
  %cmp.n1683 = icmp eq i64 %n.vec1673, %i.akg
  br label %.preheader379

bb.ad:                                            ; preds = %._crit_edge814
  %indvars.iv.next1145 = add nuw nsw i64 %indvars.iv1144, 2 ; 3 uses
  %i.ald = icmp slt i64 %indvars.iv.next1145, %invariant.op1334
  br i1 %i.ald, label %.preheader388, label %.preheader380.loopexit, !llvm.loop !610

bb.ae:                                            ; preds = %.preheader388, %._crit_edge814
  %indvars.iv1139 = phi i64 [ 0, %.preheader388 ], [ %indvars.iv.next1140, %._crit_edge814 ] ; 3 uses
  %.13817 = phi ptr [ %.12819, %.preheader388 ], [ %.17.lcssa, %._crit_edge814 ] ; 2 uses
  %i.ale = load ptr, ptr %0, align 8, !tbaa !9
  %i.alf = load i32, ptr %i.tb, align 4, !tbaa !93
  %i.alg = sext i32 %i.alf to i64
  %i.alh = mul nsw i64 %indvars.iv1139, %i.alg
  %i.ali = load i64, ptr %i.tc, align 8, !tbaa !19
  %i.alj = mul i64 %i.alh, %i.ali
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ale, i64 %i.alj
  %i.all = getelementptr inbounds [2 x i8], ptr %i.alk, i64 %i.ajh ; 17 uses
  %i.alm = load ptr, ptr %1, align 8, !tbaa !9
  %i.aln = load i32, ptr %i.td, align 4, !tbaa !93
  %i.alo = sext i32 %i.aln to i64
  %i.alp = mul nsw i64 %indvars.iv1139, %i.alo
  %i.alq = load i64, ptr %i.te, align 8, !tbaa !19
  %i.alr = mul i64 %i.alp, %i.alq
  %i.als = getelementptr inbounds nuw i8, ptr %i.alm, i64 %i.alr ; 2 uses
  br i1 %i.tf, label %.lr.ph718, label %.preheader387

.preheader387:                                    ; preds = %bb.ai, %bb.ae
  %.0950.lcssa = phi i32 [ 0, %bb.ae ], [ %i.tl, %bb.ai ] ; 3 uses
  %.0938.lcssa = phi ptr [ %i.als, %bb.ae ], [ %.2940.lcssa, %bb.ai ] ; 2 uses
  %.14.lcssa = phi ptr [ %.13817, %bb.ae ], [ %i.aqn, %bb.ai ] ; 2 uses
  %i.alt = or disjoint i32 %.0950.lcssa, 3
  %i.alu = icmp slt i32 %i.alt, %4
  br i1 %i.alu, label %.lr.ph747, label %.preheader386

.lr.ph718:                                        ; preds = %bb.ae, %bb.ai
  %.14716 = phi ptr [ %i.aqn, %bb.ai ], [ %.13817, %bb.ae ] ; 5 uses
  %.0938715 = phi ptr [ %.2940.lcssa, %bb.ai ], [ %i.als, %bb.ae ] ; 3 uses
  %.0950714 = phi i32 [ %i.aqo, %bb.ai ], [ 0, %bb.ae ]
  br i1 %i.tg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph718
  %i.alv = load <4 x i64>, ptr %.14716, align 1, !tbaa !20
  %i.alw = getelementptr inbounds nuw i8, ptr %.14716, i64 32
  %i.alx = load <4 x i64>, ptr %i.alw, align 1, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph718, %bb.af
  %.0960 = phi <4 x i64> [ %i.alx, %bb.af ], [ zeroinitializer, %.lr.ph718 ] ; 2 uses
  %.0956 = phi <4 x i64> [ %i.alv, %bb.af ], [ zeroinitializer, %.lr.ph718 ] ; 2 uses
  br i1 %i.th, label %.lr.ph698.preheader, label %.preheader384

.lr.ph698.preheader:                              ; preds = %bb.ag
  %i.aly = bitcast <4 x i64> %.0956 to <8 x i32>  ; 2 uses
  %i.alz = bitcast <4 x i64> %.0960 to <8 x i32>  ; 2 uses
  br i1 %i.ty, label %.lr.ph698.epil.preheader, label %.lr.ph698

.preheader384.loopexit.unr-lcssa:                 ; preds = %.lr.ph698
  br i1 %lcmp.mod2034.not.not, label %.lr.ph698.epil.preheader, label %.preheader384.loopexit

.lr.ph698.epil.preheader:                         ; preds = %.preheader384.loopexit.unr-lcssa, %.lr.ph698.preheader
  %.1939696.epil.init = phi ptr [ %.0938715, %.lr.ph698.preheader ], [ %i.aou, %.preheader384.loopexit.unr-lcssa ] ; 2 uses
  %.0954695.epil.init = phi ptr [ %i.all, %.lr.ph698.preheader ], [ %i.aot, %.preheader384.loopexit.unr-lcssa ] ; 3 uses
  %.1957694.epil.init = phi <8 x i32> [ %i.aly, %.lr.ph698.preheader ], [ %i.aop, %.preheader384.loopexit.unr-lcssa ]
  %.1961693.epil.init = phi <8 x i32> [ %i.alz, %.lr.ph698.preheader ], [ %i.aos, %.preheader384.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2039)
  %i.ama = load float, ptr %.0954695.epil.init, align 1, !tbaa !20
  %i.amb = insertelement <8 x float> poison, float %i.ama, i64 0
  %i.amc = shufflevector <8 x float> %i.amb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amd = getelementptr inbounds nuw i8, ptr %.0954695.epil.init, i64 4
  %i.ame = load float, ptr %i.amd, align 1, !tbaa !20
  %i.amf = insertelement <8 x float> poison, float %i.ame, i64 0
  %i.amg = shufflevector <8 x float> %i.amf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amh = load <16 x i16>, ptr %.1939696.epil.init, align 1, !tbaa !20 ; 2 uses
  %i.ami = bitcast <8 x float> %i.amc to <16 x i16>
  %i.amj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ami, <16 x i16> %i.amh)
  %i.amk = add <8 x i32> %i.amj, %.1957694.epil.init
  %i.aml = bitcast <8 x float> %i.amg to <16 x i16>
  %i.amm = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aml, <16 x i16> %i.amh)
  %i.amn = add <8 x i32> %i.amm, %.1961693.epil.init
  %i.amo = getelementptr inbounds nuw i8, ptr %.0954695.epil.init, i64 8
  %i.amp = getelementptr inbounds nuw i8, ptr %.1939696.epil.init, i64 32
  br label %.preheader384.loopexit

.preheader384.loopexit:                           ; preds = %.preheader384.loopexit.unr-lcssa, %.lr.ph698.epil.preheader
  %.lcssa1863 = phi <8 x i32> [ %i.aop, %.preheader384.loopexit.unr-lcssa ], [ %i.amk, %.lr.ph698.epil.preheader ]
  %.lcssa1862 = phi <8 x i32> [ %i.aos, %.preheader384.loopexit.unr-lcssa ], [ %i.amn, %.lr.ph698.epil.preheader ]
  %.lcssa1861 = phi ptr [ %i.aot, %.preheader384.loopexit.unr-lcssa ], [ %i.amo, %.lr.ph698.epil.preheader ]
  %.lcssa1860 = phi ptr [ %i.aou, %.preheader384.loopexit.unr-lcssa ], [ %i.amp, %.lr.ph698.epil.preheader ]
  %i.amq = bitcast <8 x i32> %.lcssa1862 to <4 x i64>
  %i.amr = bitcast <8 x i32> %.lcssa1863 to <4 x i64>
  br label %.preheader384

.preheader384:                                    ; preds = %.preheader384.loopexit, %bb.ag
  %.0976.lcssa = phi i32 [ 0, %bb.ag ], [ %i.tk, %.preheader384.loopexit ] ; 5 uses
  %.1961.lcssa = phi <4 x i64> [ %.0960, %bb.ag ], [ %i.amq, %.preheader384.loopexit ] ; 2 uses
  %.1957.lcssa = phi <4 x i64> [ %.0956, %bb.ag ], [ %i.amr, %.preheader384.loopexit ] ; 2 uses
  %.0954.lcssa = phi ptr [ %i.all, %bb.ag ], [ %.lcssa1861, %.preheader384.loopexit ] ; 4 uses
  %.1939.lcssa = phi ptr [ %.0938715, %bb.ag ], [ %.lcssa1860, %.preheader384.loopexit ] ; 4 uses
  %i.ams = icmp slt i32 %.0976.lcssa, %6
  br i1 %i.ams, label %.lr.ph709.preheader, label %._crit_edge710

.lr.ph709.preheader:                              ; preds = %.preheader384
  %i.amt = bitcast <4 x i64> %.1957.lcssa to <8 x i32> ; 2 uses
  %i.amu = bitcast <4 x i64> %.1961.lcssa to <8 x i32> ; 2 uses
  %i.amv = sub i32 %6, %.0976.lcssa
  %.neg2079 = add i32 %.0976.lcssa, 1
  %xtraiter2042 = and i32 %i.amv, 1
  %lcmp.mod2043.not = icmp eq i32 %xtraiter2042, 0
  br i1 %lcmp.mod2043.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol

.lr.ph709.prol:                                   ; preds = %.lr.ph709.preheader
  %i.amw = load <8 x i16>, ptr %.1939.lcssa, align 16, !tbaa !20
  %i.amx = load i16, ptr %.0954.lcssa, align 2, !tbaa !490
  %i.amy = sext i16 %i.amx to i32
  %i.amz = insertelement <8 x i32> poison, i32 %i.amy, i64 0
  %i.ana = shufflevector <8 x i32> %i.amz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.anb = getelementptr inbounds nuw i8, ptr %.0954.lcssa, i64 2
  %i.anc = load i16, ptr %i.anb, align 2, !tbaa !490
  %i.and = sext i16 %i.anc to i32
  %i.ane = insertelement <8 x i32> poison, i32 %i.and, i64 0
  %i.anf = shufflevector <8 x i32> %i.ane, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ang = sext <8 x i16> %i.amw to <8 x i32>     ; 2 uses
  %i.anh = mul <8 x i32> %i.ana, %i.ang
  %i.ani = mul <8 x i32> %i.anf, %i.ang
  %i.anj = add <8 x i32> %i.anh, %i.amt           ; 2 uses
  %i.ank = add <8 x i32> %i.ani, %i.amu           ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %.0954.lcssa, i64 4
  %i.anm = getelementptr inbounds nuw i8, ptr %.1939.lcssa, i64 16 ; 2 uses
  %i.ann = add nuw nsw i32 %.0976.lcssa, 1
  br label %.lr.ph709.prol.loopexit

.lr.ph709.prol.loopexit:                          ; preds = %.lr.ph709.prol, %.lr.ph709.preheader
  %.lcssa1866.unr = phi <8 x i32> [ poison, %.lr.ph709.preheader ], [ %i.anj, %.lr.ph709.prol ]
  %.lcssa1865.unr = phi <8 x i32> [ poison, %.lr.ph709.preheader ], [ %i.ank, %.lr.ph709.prol ]
  %.lcssa1864.unr = phi ptr [ poison, %.lr.ph709.preheader ], [ %i.anm, %.lr.ph709.prol ]
  %.2940708.unr = phi ptr [ %.1939.lcssa, %.lr.ph709.preheader ], [ %i.anm, %.lr.ph709.prol ]
  %.1955707.unr = phi ptr [ %.0954.lcssa, %.lr.ph709.preheader ], [ %i.anl, %.lr.ph709.prol ]
  %.2958706.unr = phi <8 x i32> [ %i.amt, %.lr.ph709.preheader ], [ %i.anj, %.lr.ph709.prol ]
  %.2962705.unr = phi <8 x i32> [ %i.amu, %.lr.ph709.preheader ], [ %i.ank, %.lr.ph709.prol ]
  %.1977704.unr = phi i32 [ %.0976.lcssa, %.lr.ph709.preheader ], [ %i.ann, %.lr.ph709.prol ]
  %i.ano = icmp eq i32 %6, %.neg2079
  br i1 %i.ano, label %._crit_edge710.loopexit, label %.lr.ph709

end_hunk_3
