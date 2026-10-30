Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4i?download=true
inline.NumInlined: 39
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 45
begin_hunk_0_@encode_ints_uint32:bb.a
  %unroll_iter = and i64 %wide.trip.count.i28, 4294967294
  br label %.lr.ph.i29

.preheader76.i.unr-lcssa:                         ; preds = %stream_write_bit.exit.i31.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader76.i, label %.lr.ph.i29.epil.preheader

.lr.ph.i29.epil.preheader:                        ; preds = %.preheader76.i.unr-lcssa, %.lr.ph.preheader.i27
  %indvars.iv.i30.epil.init = phi i64 [ 0, %.lr.ph.preheader.i27 ], [ %indvars.iv.next.i33.1, %.preheader76.i.unr-lcssa ]
  %.sroa.21.180.i.epil.init = phi ptr [ %.sroa.21.0117.i, %.lr.ph.preheader.i27 ], [ %.sroa.21.6.i.1, %.preheader76.i.unr-lcssa ] ; 3 uses
  %.sroa.15.179.i.epil.init = phi i64 [ %.sroa.15.0116.i, %.lr.ph.preheader.i27 ], [ %.sroa.15.6.i.1, %.preheader76.i.unr-lcssa ]
  %.sroa.0.178.i.epil.init = phi i64 [ %.sroa.0.0115.i, %.lr.ph.preheader.i27 ], [ %.sroa.0.6.i32.1, %.preheader76.i.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i32 %.036118.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i30.epil.init
  %i.df = load i32, ptr %i.de, align 4, !tbaa !9, !alias.scope !50
  %i.dg = lshr i32 %i.df, %i.dc
  %i.dh = and i32 %i.dg, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw i64 %i.di, %.sroa.0.178.i.epil.init
  %i.dk = add i64 %i.dj, %.sroa.15.179.i.epil.init ; 2 uses
  %i.dl = add i64 %.sroa.0.178.i.epil.init, 1     ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 64
  br i1 %i.dm, label %bb.k, label %.preheader76.i

bb.k:                                             ; preds = %.lr.ph.i29.epil.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.21.180.i.epil.init, i64 8
  store i64 %i.dk, ptr %.sroa.21.180.i.epil.init, align 8, !tbaa !13, !noalias !51
  br label %.preheader76.i

.preheader76.i:                                   ; preds = %.lr.ph.i29.epil.preheader, %bb.k, %.preheader76.i.unr-lcssa
  %.sroa.0.6.i32.lcssa = phi i64 [ %.sroa.0.6.i32.1, %.preheader76.i.unr-lcssa ], [ 0, %bb.k ], [ %i.dl, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %.sroa.15.6.i.lcssa = phi i64 [ %.sroa.15.6.i.1, %.preheader76.i.unr-lcssa ], [ 0, %bb.k ], [ %i.dk, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %.sroa.21.6.i.lcssa = phi ptr [ %.sroa.21.6.i.1, %.preheader76.i.unr-lcssa ], [ %i.dn, %bb.k ], [ %.sroa.21.180.i.epil.init, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %i.do = icmp ult i32 %.036118.i, 256
  br i1 %i.do, label %.lr.ph86.preheader.i, label %.critedge.i

.lr.ph86.preheader.i:                             ; preds = %.preheader77.i, %.preheader76.i
  %.pre-phi = phi i64 [ %wide.trip.count.i28, %.preheader76.i ], [ 0, %.preheader77.i ] ; 4 uses
  %.sroa.21.1.lcssa144.i = phi ptr [ %.sroa.21.6.i.lcssa, %.preheader76.i ], [ %.sroa.21.0117.i, %.preheader77.i ]
  %.sroa.15.1.lcssa142.i = phi i64 [ %.sroa.15.6.i.lcssa, %.preheader76.i ], [ %.sroa.15.0116.i, %.preheader77.i ]
  %.sroa.0.1.lcssa140.i = phi i64 [ %.sroa.0.6.i32.lcssa, %.preheader76.i ], [ %.sroa.0.0115.i, %.preheader77.i ]
  %i.dp = add i32 %.036118.i, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = sub nsw i64 257, %i.dq                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 12
  br i1 %min.iters.check, label %.lr.ph86.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph86.preheader.i
  %i.ds = add i32 %.036118.i, 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = sub nsw i64 256, %i.dt                  ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = sub i32 -2, %.036118.i
  %i.dx = icmp ult i32 %i.dw, %i.dv
  %i.dy = icmp ugt i64 %i.du, 4294967295
  %i.dz = or i1 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph86.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.dr, -8                      ; 3 uses
  %i.ea = add nsw i64 %.pre-phi, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.pre-phi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load = load <4 x i32>, ptr %i.ec, align 4, !tbaa !9, !alias.scope !50
  %wide.load21 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !9, !alias.scope !50
  %i.ee = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.ef = lshr <4 x i32> %wide.load21, %broadcast.splat
  %i.eg = and <4 x i32> %i.ee, splat (i32 1)
  %i.eh = and <4 x i32> %i.ef, splat (i32 1)
  %i.ei = add <4 x i32> %i.eg, %vec.phi           ; 2 uses
  %i.ej = add <4 x i32> %i.eh, %vec.phi20         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ej, %i.ei
  %i.el = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.lr.ph106.i.preheader, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %vector.scevcheck, %.lr.ph86.preheader.i, %middle.block
  %indvars.iv124.i.ph = phi i64 [ %.pre-phi, %vector.scevcheck ], [ %.pre-phi, %.lr.ph86.preheader.i ], [ %i.ea, %middle.block ]
  %.085.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.preheader.i ], [ %i.el, %middle.block ]
  br label %.lr.ph86.i

.lr.ph.i29:                                       ; preds = %stream_write_bit.exit.i31.1, %.lr.ph.preheader.i27.new
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.preheader.i27.new ], [ %indvars.iv.next.i33.1, %stream_write_bit.exit.i31.1 ] ; 3 uses
  %.sroa.21.180.i = phi ptr [ %.sroa.21.0117.i, %.lr.ph.preheader.i27.new ], [ %.sroa.21.6.i.1, %stream_write_bit.exit.i31.1 ] ; 3 uses
  %.sroa.15.179.i = phi i64 [ %.sroa.15.0116.i, %.lr.ph.preheader.i27.new ], [ %.sroa.15.6.i.1, %stream_write_bit.exit.i31.1 ]
  %.sroa.0.178.i = phi i64 [ %.sroa.0.0115.i, %.lr.ph.preheader.i27.new ], [ %.sroa.0.6.i32.1, %stream_write_bit.exit.i31.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i27.new ], [ %niter.next.1, %stream_write_bit.exit.i31.1 ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i30
  %i.en = load i32, ptr %i.em, align 4, !tbaa !9, !alias.scope !50
  %i.eo = lshr i32 %i.en, %i.dc
  %i.ep = and i32 %i.eo, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl nuw i64 %i.eq, %.sroa.0.178.i
  %i.es = add i64 %i.er, %.sroa.15.179.i          ; 2 uses
  %i.et = add i64 %.sroa.0.178.i, 1               ; 2 uses
  %i.eu = icmp eq i64 %i.et, 64
  br i1 %i.eu, label %bb.l, label %stream_write_bit.exit.i31

bb.l:                                             ; preds = %.lr.ph.i29
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.21.180.i, i64 8
  store i64 %i.es, ptr %.sroa.21.180.i, align 8, !tbaa !13, !noalias !51
  br label %stream_write_bit.exit.i31

stream_write_bit.exit.i31:                        ; preds = %bb.l, %.lr.ph.i29
  %.sroa.0.6.i32 = phi i64 [ 0, %bb.l ], [ %i.et, %.lr.ph.i29 ] ; 2 uses
  %.sroa.15.6.i = phi i64 [ 0, %bb.l ], [ %i.es, %.lr.ph.i29 ]
  %.sroa.21.6.i = phi ptr [ %i.ev, %bb.l ], [ %.sroa.21.180.i, %.lr.ph.i29 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i30
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !9, !alias.scope !50
  %i.ez = lshr i32 %i.ey, %i.dc
  %i.fa = and i32 %i.ez, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw i64 %i.fb, %.sroa.0.6.i32
  %i.fd = add i64 %i.fc, %.sroa.15.6.i            ; 2 uses
  %i.fe = add i64 %.sroa.0.6.i32, 1               ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 64
  br i1 %i.ff, label %bb.m, label %stream_write_bit.exit.i31.1

bb.m:                                             ; preds = %stream_write_bit.exit.i31
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.21.6.i, i64 8
  store i64 %i.fd, ptr %.sroa.21.6.i, align 8, !tbaa !13, !noalias !51
  br label %stream_write_bit.exit.i31.1

stream_write_bit.exit.i31.1:                      ; preds = %bb.m, %stream_write_bit.exit.i31
  %.sroa.0.6.i32.1 = phi i64 [ 0, %bb.m ], [ %i.fe, %stream_write_bit.exit.i31 ] ; 3 uses
  %.sroa.15.6.i.1 = phi i64 [ 0, %bb.m ], [ %i.fd, %stream_write_bit.exit.i31 ] ; 3 uses
  %.sroa.21.6.i.1 = phi ptr [ %i.fg, %bb.m ], [ %.sroa.21.6.i, %stream_write_bit.exit.i31 ] ; 3 uses
  %indvars.iv.next.i33.1 = add nuw nsw i64 %indvars.iv.i30, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader76.i.unr-lcssa, label %.lr.ph.i29

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %.lr.ph86.i ], [ %indvars.iv124.i.ph, %.lr.ph86.i.preheader ] ; 2 uses
  %.085.i = phi i32 [ %i.fl, %.lr.ph86.i ], [ %.085.i.ph, %.lr.ph86.i.preheader ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv124.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !9, !alias.scope !50
  %i.fj = lshr i32 %i.fi, %i.dc
  %i.fk = and i32 %i.fj, 1
  %i.fl = add i32 %i.fk, %.085.i                  ; 2 uses
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.fm = and i64 %indvars.iv.next125.i, 4294967295
  %exitcond127.not.i = icmp eq i64 %i.fm, 256
  br i1 %exitcond127.not.i, label %.lr.ph106.i.preheader, label %.lr.ph86.i, !llvm.loop !42

.lr.ph106.i.preheader:                            ; preds = %.lr.ph86.i, %middle.block
  %.1105.i.ph = phi i32 [ %i.el, %middle.block ], [ %i.fl, %.lr.ph86.i ]
  br label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %.lr.ph106.i.preheader, %.critedge2.i
  %.1105.i = phi i32 [ %i.fu, %.critedge2.i ], [ %.1105.i.ph, %.lr.ph106.i.preheader ] ; 2 uses
  %.137104.i = phi i32 [ %i.gg, %.critedge2.i ], [ %.036118.i, %.lr.ph106.i.preheader ] ; 3 uses
  %.sroa.21.2103.i = phi ptr [ %.sroa.21.8.i, %.critedge2.i ], [ %.sroa.21.1.lcssa144.i, %.lr.ph106.i.preheader ] ; 3 uses
  %.sroa.15.2102.i = phi i64 [ %.sroa.15.8.i, %.critedge2.i ], [ %.sroa.15.1.lcssa142.i, %.lr.ph106.i.preheader ]
  %.sroa.0.2101.i = phi i64 [ %.sroa.0.8.i37, %.critedge2.i ], [ %.sroa.0.1.lcssa140.i, %.lr.ph106.i.preheader ] ; 2 uses
  %i.fn = icmp ne i32 %.1105.i, 0                 ; 2 uses
  %i.fo = zext i1 %i.fn to i64
  %i.fp = shl nuw i64 %i.fo, %.sroa.0.2101.i
  %i.fq = add i64 %i.fp, %.sroa.15.2102.i         ; 2 uses
  %i.fr = add i64 %.sroa.0.2101.i, 1              ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 64
  br i1 %i.fs, label %bb.n, label %stream_write_bit.exit43.i

bb.n:                                             ; preds = %.lr.ph106.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.21.2103.i, i64 8
  store i64 %i.fq, ptr %.sroa.21.2103.i, align 8, !tbaa !13, !noalias !51
  br label %stream_write_bit.exit43.i

stream_write_bit.exit43.i:                        ; preds = %bb.n, %.lr.ph106.i
  %.sroa.0.7.i36 = phi i64 [ 0, %bb.n ], [ %i.fr, %.lr.ph106.i ] ; 3 uses
  %.sroa.15.7.i = phi i64 [ 0, %bb.n ], [ %i.fq, %.lr.ph106.i ] ; 3 uses
  %.sroa.21.7.i = phi ptr [ %i.ft, %bb.n ], [ %.sroa.21.2103.i, %.lr.ph106.i ] ; 3 uses
  br i1 %i.fn, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %stream_write_bit.exit43.i
  %i.fu = add i32 %.1105.i, -1
  %.not122.i = icmp eq i32 %.137104.i, 255
  br i1 %.not122.i, label %.critedge.i, label %.lr.ph92.preheader.i

.lr.ph92.preheader.i:                             ; preds = %bb.o
  %i.fv = zext nneg i32 %.137104.i to i64
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.q, %.lr.ph92.preheader.i
  %indvars.iv128.i = phi i64 [ %i.fv, %.lr.ph92.preheader.i ], [ %indvars.iv.next129.i, %bb.q ] ; 5 uses
  %.sroa.21.390.i = phi ptr [ %.sroa.21.7.i, %.lr.ph92.preheader.i ], [ %.sroa.21.8.i, %bb.q ] ; 3 uses
  %.sroa.15.389.i = phi i64 [ %.sroa.15.7.i, %.lr.ph92.preheader.i ], [ %.sroa.15.8.i, %bb.q ]
  %.sroa.0.388.i = phi i64 [ %.sroa.0.7.i36, %.lr.ph92.preheader.i ], [ %.sroa.0.8.i37, %bb.q ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv128.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !9, !alias.scope !50
  %i.fy = lshr i32 %i.fx, %i.dc
  %i.fz = and i32 %i.fy, 1                        ; 2 uses
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = shl nuw i64 %i.ga, %.sroa.0.388.i
  %i.gc = add i64 %i.gb, %.sroa.15.389.i          ; 2 uses
  %i.gd = add i64 %.sroa.0.388.i, 1               ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 64
  br i1 %i.ge, label %bb.p, label %stream_write_bit.exit44.i

bb.p:                                             ; preds = %.lr.ph92.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.21.390.i, i64 8
  store i64 %i.gc, ptr %.sroa.21.390.i, align 8, !tbaa !13, !noalias !51
  br label %stream_write_bit.exit44.i

stream_write_bit.exit44.i:                        ; preds = %bb.p, %.lr.ph92.i
  %.sroa.0.8.i37 = phi i64 [ 0, %bb.p ], [ %i.gd, %.lr.ph92.i ] ; 4 uses
  %.sroa.15.8.i = phi i64 [ 0, %bb.p ], [ %i.gc, %.lr.ph92.i ] ; 4 uses
  %.sroa.21.8.i = phi ptr [ %i.gf, %bb.p ], [ %.sroa.21.390.i, %.lr.ph92.i ] ; 4 uses
  %.not42.i = icmp eq i32 %i.fz, 0
  br i1 %.not42.i, label %bb.q, label %.critedge2.i

bb.q:                                             ; preds = %stream_write_bit.exit44.i
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1
  %exitcond132.not.i = icmp eq i64 %indvars.iv128.i, 254
  br i1 %exitcond132.not.i, label %.critedge.i, label %.lr.ph92.i

.critedge2.i:                                     ; preds = %stream_write_bit.exit44.i
  %4 = trunc nuw i64 %indvars.iv128.i to i32
  %i.gg = add nuw nsw i32 %4, 1                   ; 2 uses
  %i.gh = icmp samesign ult i64 %indvars.iv128.i, 255
  br i1 %i.gh, label %.lr.ph106.i, label %.critedge.i

.critedge.i:                                      ; preds = %.critedge2.i, %bb.o, %stream_write_bit.exit43.i, %bb.q, %.preheader76.i
  %.137.lcssa.i = phi i32 [ %.036118.i, %.preheader76.i ], [ 256, %bb.q ], [ %.137104.i, %stream_write_bit.exit43.i ], [ %i.gg, %.critedge2.i ], [ 256, %bb.o ]
  %.sroa.0.5.i35 = phi i64 [ %.sroa.0.6.i32.lcssa, %.preheader76.i ], [ %.sroa.0.8.i37, %bb.q ], [ %.sroa.0.7.i36, %stream_write_bit.exit43.i ], [ %.sroa.0.8.i37, %.critedge2.i ], [ %.sroa.0.7.i36, %bb.o ] ; 2 uses
  %.sroa.15.5.i = phi i64 [ %.sroa.15.6.i.lcssa, %.preheader76.i ], [ %.sroa.15.8.i, %bb.q ], [ %.sroa.15.7.i, %stream_write_bit.exit43.i ], [ %.sroa.15.8.i, %.critedge2.i ], [ %.sroa.15.7.i, %bb.o ] ; 2 uses
  %.sroa.21.5.i = phi ptr [ %.sroa.21.6.i.lcssa, %.preheader76.i ], [ %.sroa.21.8.i, %bb.q ], [ %.sroa.21.7.i, %stream_write_bit.exit43.i ], [ %.sroa.21.8.i, %.critedge2.i ], [ %.sroa.21.7.i, %bb.o ] ; 2 uses
  %i.gi = add nsw i32 %i.dc, -1
  %i.gj = icmp samesign ugt i32 %i.dc, %i.da
  br i1 %i.gj, label %.preheader77.i, label %encode_many_ints_prec_uint32.exit

encode_many_ints_prec_uint32.exit:                ; preds = %.critedge.i, %bb.j
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.0.copyload.i24, %bb.j ], [ %.sroa.0.5.i35, %.critedge.i ] ; 2 uses
  %.sroa.15.0.lcssa.i = phi i64 [ %.sroa.15.0.copyload.i, %bb.j ], [ %.sroa.15.5.i, %.critedge.i ]
  %.sroa.21.0.lcssa.i = phi ptr [ %.sroa.21.0.copyload.i, %bb.j ], [ %.sroa.21.5.i, %.critedge.i ] ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  store i64 %.sroa.0.0.lcssa.i25, ptr %0, align 8, !tbaa !13, !alias.scope !49
  store i64 %.sroa.15.0.lcssa.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !13, !alias.scope !49
  store ptr %.sroa.21.0.lcssa.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !45, !alias.scope !49
  %i.gl = ptrtoint ptr %.sroa.21.0.lcssa.i to i64
  %reass.add.i = sub i64 %i.gl, %i.gk
  %reass.mul.i = shl i64 %reass.add.i, 3
  %i.gm = sub i64 %.sroa.0.0.lcssa.i25, %.sroa.0.0.copyload.i24
  %i.gn = add i64 %i.gm, %reass.mul.i
  %i.go = trunc i64 %i.gn to i32
  br label %bb.r

bb.r:                                             ; preds = %encode_many_ints_prec_uint32.exit, %encode_many_ints_uint32.exit
  %.0 = phi i32 [ %i.go, %encode_many_ints_prec_uint32.exit ], [ %i.cz, %encode_many_ints_uint32.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_block_strided_int32_4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i32], align 256            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = shl nsw i64 %2, 2
  %i.c = sub nsw i64 %3, %i.b                     ; 16 uses
  %i.d = shl nsw i64 %3, 2
  %i.e = sub nsw i64 %4, %i.d                     ; 4 uses
  %i.f = shl nsw i64 %4, 2
  %i.g = sub nsw i64 %5, %i.f
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i, %bb.a
  %.041.i = phi i32 [ 0, %bb.a ], [ %i.hl, %.preheader29.i ]
  %.02340.i = phi ptr [ %i.a, %bb.a ], [ %i.hh, %.preheader29.i ] ; 65 uses
  %.02439.i = phi ptr [ %1, %bb.a ], [ %i.hm, %.preheader29.i ] ; 2 uses
  %i.h = load i32, ptr %.02439.i, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %.02340.i, i64 4
  store i32 %i.h, ptr %.02340.i, align 4, !tbaa !9
  %i.j = getelementptr inbounds [4 x i8], ptr %.02439.i, i64 %2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %.02340.i, i64 8
  store i32 %i.k, ptr %i.i, align 4, !tbaa !9
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %2 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %.02340.i, i64 12
  store i32 %i.n, ptr %i.l, align 4, !tbaa !9
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %.02340.i, i64 16
  store i32 %i.q, ptr %i.o, align 4, !tbaa !9
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %2
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.c ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.02340.i, i64 20
  store i32 %i.u, ptr %i.r, align 4, !tbaa !9
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %2 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %.02340.i, i64 24
  store i32 %i.x, ptr %i.v, align 4, !tbaa !9
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %2 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %.02340.i, i64 28
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !9
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %2 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.02340.i, i64 32
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !9
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %2
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.c ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %.02340.i, i64 36
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !9
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %2 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %.02340.i, i64 40
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !9
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.02340.i, i64 44
  store i32 %i.an, ptr %i.al, align 4, !tbaa !9
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %2 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %.02340.i, i64 48
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !9
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %2
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.c ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %.02340.i, i64 52
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !9
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %2 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %.02340.i, i64 56
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !9
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %2 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %.02340.i, i64 60
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !9
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %2 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %.02340.i, i64 64
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !9
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %2
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.c
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.e ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 68
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !9
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %2 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 72
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !9
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %2 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 76
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !9
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %2 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 80
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !9
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %2
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.c ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 84
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !9
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %2 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 88
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !9
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %2 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 92
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !9
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %2 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %.02340.i, i64 96
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !9
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %2
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %.02340.i, i64 100
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !9
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %2 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %.02340.i, i64 104
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !9
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %2 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %.02340.i, i64 108
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !9
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %2 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %.02340.i, i64 112
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !9
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %2
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.c ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %.02340.i, i64 116
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !9
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %2 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !9
  %i.cz = getelementptr inbounds nuw i8, ptr %.02340.i, i64 120
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !9
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %2 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %.02340.i, i64 124
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !9
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.da, i64 %2 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %.02340.i, i64 128
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !9
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %2
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.c
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.e ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %.02340.i, i64 132
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !9
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.di, i64 %2 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %.02340.i, i64 136
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !9
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %2 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %.02340.i, i64 140
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !9
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.do, i64 %2 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %.02340.i, i64 144
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !9
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %2
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.c ; 2 uses
end_hunk_0
