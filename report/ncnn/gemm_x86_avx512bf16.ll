Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512bf16?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %xtraiter = and i32 %i.ab, 3                    ; 3 uses
  %i.ac = icmp ult i32 %i.z, 6
  %unroll_iter = and i32 %i.ab, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod835 = icmp ne i32 %xtraiter, 0
  %i.ad = icmp eq i32 %i.aa, 0
  %unroll_iter848 = and i32 %i.ab, -2
  %i.ae = and i32 %i.z, 2
  %lcmp.mod843.not.not = icmp eq i32 %i.ae, 0
  %lcmp.mod847 = trunc i32 %i.ab to i1
  %xtraiter853 = and i32 %i.ab, 3                 ; 3 uses
  %i.af = icmp ult i32 %i.z, 6
  %unroll_iter859 = and i32 %i.ab, -4
  %lcmp.mod855.not = icmp eq i32 %xtraiter853, 0
  %lcmp.mod858 = icmp ne i32 %xtraiter853, 0
  br label %.split.i.us

.loopexit21.i.preheader:                          ; preds = %.lr.ph92.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 31)
  %i.ag = and i64 %umax, 2147483632
  br label %.preheader19.loopexit.i

.split.i.us:                                      ; preds = %.split.i.us.preheader, %.loopexit21.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit21.i.us ], [ 0, %.split.i.us.preheader ] ; 2 uses
  %.035991.i.us = phi ptr [ %.12.i.us, %.loopexit21.i.us ], [ %.val, %.split.i.us.preheader ] ; 12 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = add nsw i64 %indvars.iv.i.us, %i.v
  %i.aj = mul i64 %i.ai, %i.k
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.n ; 15 uses
  switch i32 %i.y, label %.loopexit21.i.us [
    i32 4, label %.preheader28.i.us
    i32 3, label %bb.d
    i32 2, label %bb.c
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.split.i.us
  br i1 %i.o, label %.lr.ph81.i.us.preheader, label %.preheader20.i.us

.lr.ph81.i.us.preheader:                          ; preds = %bb.b
  br i1 %i.ac, label %.lr.ph81.i.us.epil.preheader, label %.lr.ph81.i.us

.lr.ph81.i.us:                                    ; preds = %.lr.ph81.i.us.preheader, %.lr.ph81.i.us
  %.1080.i.us = phi ptr [ %i.aw, %.lr.ph81.i.us ], [ %.035991.i.us, %.lr.ph81.i.us.preheader ] ; 5 uses
  %.938279.i.us = phi ptr [ %i.ax, %.lr.ph81.i.us ], [ %i.al, %.lr.ph81.i.us.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph81.i.us ], [ 0, %.lr.ph81.i.us.preheader ]
  %i.am = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.938279.i.us, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.am, ptr %.1080.i.us, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 4
  %i.ap = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ao, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.ap, ptr %i.an, align 1, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 8
  %i.as = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ar, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.as, ptr %i.aq, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 12
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.au, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.av, ptr %i.at, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 256 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 16 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader20.i.us.loopexit.unr-lcssa, label %.lr.ph81.i.us, !llvm.loop !28

.preheader20.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph81.i.us
  br i1 %lcmp.mod.not, label %.preheader20.i.us, label %.lr.ph81.i.us.epil.preheader

.lr.ph81.i.us.epil.preheader:                     ; preds = %.preheader20.i.us.loopexit.unr-lcssa, %.lr.ph81.i.us.preheader
  %.1080.i.us.epil.init = phi ptr [ %.035991.i.us, %.lr.ph81.i.us.preheader ], [ %i.aw, %.preheader20.i.us.loopexit.unr-lcssa ]
  %.938279.i.us.epil.init = phi ptr [ %i.al, %.lr.ph81.i.us.preheader ], [ %i.ax, %.preheader20.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod835)
  br label %.lr.ph81.i.us.epil

.lr.ph81.i.us.epil:                               ; preds = %.lr.ph81.i.us.epil, %.lr.ph81.i.us.epil.preheader
  %.1080.i.us.epil = phi ptr [ %i.az, %.lr.ph81.i.us.epil ], [ %.1080.i.us.epil.init, %.lr.ph81.i.us.epil.preheader ] ; 2 uses
  %.938279.i.us.epil = phi ptr [ %i.ba, %.lr.ph81.i.us.epil ], [ %.938279.i.us.epil.init, %.lr.ph81.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph81.i.us.epil ], [ 0, %.lr.ph81.i.us.epil.preheader ]
  %i.ay = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.938279.i.us.epil, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.ay, ptr %.1080.i.us.epil, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.1080.i.us.epil, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.938279.i.us.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader20.i.us, label %.lr.ph81.i.us.epil, !llvm.loop !29

.preheader20.i.us:                                ; preds = %.preheader20.i.us.loopexit.unr-lcssa, %.lr.ph81.i.us.epil, %bb.b
  %.0414.lcssa.i.us = phi i32 [ 0, %bb.b ], [ %i.t, %.lr.ph81.i.us.epil ], [ %i.t, %.preheader20.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.9382.lcssa.i.us = phi ptr [ %i.al, %bb.b ], [ %i.ax, %.preheader20.i.us.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph81.i.us.epil ] ; 2 uses
  %.10.lcssa.i.us = phi ptr [ %.035991.i.us, %bb.b ], [ %i.aw, %.preheader20.i.us.loopexit.unr-lcssa ], [ %i.az, %.lr.ph81.i.us.epil ] ; 3 uses
  %i.bb = icmp slt i32 %.0414.lcssa.i.us, %5
  br i1 %i.bb, label %.lr.ph88.i.us.preheader, label %.loopexit21.i.us

.lr.ph88.i.us.preheader:                          ; preds = %.preheader20.i.us
  %i.bc = sub i32 %5, %.0414.lcssa.i.us
  %xtraiter836 = and i32 %i.bc, 3                 ; 2 uses
  %lcmp.mod837.not = icmp eq i32 %xtraiter836, 0
  br i1 %lcmp.mod837.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol

.lr.ph88.i.us.prol:                               ; preds = %.lr.ph88.i.us.preheader, %.lr.ph88.i.us.prol
  %.1187.i.us.prol = phi ptr [ %i.bf, %.lr.ph88.i.us.prol ], [ %.10.lcssa.i.us, %.lr.ph88.i.us.preheader ] ; 2 uses
  %.1038386.i.us.prol = phi ptr [ %i.bg, %.lr.ph88.i.us.prol ], [ %.9382.lcssa.i.us, %.lr.ph88.i.us.preheader ] ; 2 uses
  %.141585.i.us.prol = phi i32 [ %i.bh, %.lr.ph88.i.us.prol ], [ %.0414.lcssa.i.us, %.lr.ph88.i.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph88.i.us.prol ], [ 0, %.lr.ph88.i.us.preheader ]
  %i.bd = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.1038386.i.us.prol, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.be = trunc <16 x i32> %i.bd to <16 x i16>
  store <16 x i16> %i.be, ptr %.1187.i.us.prol, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.1187.i.us.prol, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1038386.i.us.prol, i64 2 ; 2 uses
  %i.bh = add nuw nsw i32 %.141585.i.us.prol, 1   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter836
  br i1 %prol.iter.cmp.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol, !llvm.loop !30

.lr.ph88.i.us.prol.loopexit:                      ; preds = %.lr.ph88.i.us.prol, %.lr.ph88.i.us.preheader
  %.lcssa819.unr = phi ptr [ poison, %.lr.ph88.i.us.preheader ], [ %i.bf, %.lr.ph88.i.us.prol ]
  %.1187.i.us.unr = phi ptr [ %.10.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bf, %.lr.ph88.i.us.prol ]
  %.1038386.i.us.unr = phi ptr [ %.9382.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bg, %.lr.ph88.i.us.prol ]
  %.141585.i.us.unr = phi i32 [ %.0414.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bh, %.lr.ph88.i.us.prol ]
  %i.bi = sub i32 %.0414.lcssa.i.us, %5
  %i.bj = icmp ugt i32 %i.bi, -4
  br i1 %i.bj, label %.loopexit21.i.us, label %.lr.ph88.i.us

.lr.ph88.i.us:                                    ; preds = %.lr.ph88.i.us.prol.loopexit, %.lr.ph88.i.us
  %.1187.i.us = phi ptr [ %i.by, %.lr.ph88.i.us ], [ %.1187.i.us.unr, %.lr.ph88.i.us.prol.loopexit ] ; 5 uses
  %.1038386.i.us = phi ptr [ %i.bz, %.lr.ph88.i.us ], [ %.1038386.i.us.unr, %.lr.ph88.i.us.prol.loopexit ] ; 5 uses
  %.141585.i.us = phi i32 [ %i.ca, %.lr.ph88.i.us ], [ %.141585.i.us.unr, %.lr.ph88.i.us.prol.loopexit ]
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.1038386.i.us, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bl = trunc <16 x i32> %i.bk to <16 x i16>
  store <16 x i16> %i.bl, ptr %.1187.i.us, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 2
  %i.bo = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bn, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bp = trunc <16 x i32> %i.bo to <16 x i16>
  store <16 x i16> %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 4
  %i.bs = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.br, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bt = trunc <16 x i32> %i.bs to <16 x i16>
  store <16 x i16> %i.bt, ptr %i.bq, align 1, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 6
  %i.bw = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bv, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bx = trunc <16 x i32> %i.bw to <16 x i16>
  store <16 x i16> %i.bx, ptr %i.bu, align 1, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 128 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 8
  %i.ca = add nuw nsw i32 %.141585.i.us, 4        ; 2 uses
  %exitcond303.not.i.us.3 = icmp eq i32 %i.ca, %5
  br i1 %exitcond303.not.i.us.3, label %.loopexit21.i.us, label %.lr.ph88.i.us, !llvm.loop !31

bb.c:                                             ; preds = %.split.i.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx419.i ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx418.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx421.i ; 2 uses
  br i1 %i.o, label %.lr.ph62.i.us, label %.preheader22.i.us

.lr.ph62.i.us:                                    ; preds = %bb.c, %.lr.ph62.i.us
  %.761.i.us = phi ptr [ %i.cx, %.lr.ph62.i.us ], [ %.035991.i.us, %bb.c ] ; 5 uses
  %.637960.i.us = phi ptr [ %i.cy, %.lr.ph62.i.us ], [ %i.al, %bb.c ] ; 2 uses
  %.039659.i.us = phi ptr [ %i.cz, %.lr.ph62.i.us ], [ %i.cb, %bb.c ] ; 2 uses
  %.039858.i.us = phi ptr [ %i.da, %.lr.ph62.i.us ], [ %i.cc, %bb.c ] ; 2 uses
  %.040057.i.us = phi ptr [ %i.db, %.lr.ph62.i.us ], [ %i.cd, %bb.c ] ; 2 uses
  %.041256.i.us = phi i32 [ %i.dc, %.lr.ph62.i.us ], [ 0, %bb.c ]
  %i.ce = load <2 x i64>, ptr %.637960.i.us, align 1, !tbaa !17 ; 2 uses
  %i.cf = load <2 x i64>, ptr %.039659.i.us, align 1, !tbaa !17 ; 2 uses
  %i.cg = load <2 x i64>, ptr %.039858.i.us, align 1, !tbaa !17 ; 2 uses
  %i.ch = load <2 x i64>, ptr %.040057.i.us, align 1, !tbaa !17 ; 2 uses
  %i.ci = bitcast <2 x i64> %i.ce to <8 x i16>
  %i.cj = bitcast <2 x i64> %i.ce to <8 x i16>
  %i.ck = shufflevector <8 x i16> %i.ci, <8 x i16> %i.cj, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.cl = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.cm = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.co = bitcast <2 x i64> %i.cg to <8 x i16>
  %i.cp = bitcast <2 x i64> %i.cg to <8 x i16>
  %i.cq = shufflevector <8 x i16> %i.co, <8 x i16> %i.cp, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.cr = bitcast <2 x i64> %i.ch to <8 x i16>
  %i.cs = bitcast <2 x i64> %i.ch to <8 x i16>
  %i.ct = shufflevector <8 x i16> %i.cr, <8 x i16> %i.cs, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.ck, ptr %.761.i.us, align 1, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %.761.i.us, i64 16
  store <8 x i16> %i.cn, ptr %i.cu, align 1, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %.761.i.us, i64 32
  store <8 x i16> %i.cq, ptr %i.cv, align 1, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %.761.i.us, i64 48
  store <8 x i16> %i.ct, ptr %i.cw, align 1, !tbaa !17
  %i.cx = getelementptr inbounds nuw i8, ptr %.761.i.us, i64 64 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.637960.i.us, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.039659.i.us, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.039858.i.us, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.040057.i.us, i64 16 ; 2 uses
  %i.dc = add nuw nsw i32 %.041256.i.us, 2        ; 2 uses
  %i.dd = or disjoint i32 %i.dc, 1
  %i.de = icmp slt i32 %i.dd, %5
  br i1 %i.de, label %.lr.ph62.i.us, label %.preheader22.i.us, !llvm.loop !32

.preheader22.i.us:                                ; preds = %.lr.ph62.i.us, %bb.c
  %.0412.lcssa.i.us = phi i32 [ 0, %bb.c ], [ %i.t, %.lr.ph62.i.us ] ; 5 uses
  %.0400.lcssa.i.us = phi ptr [ %i.cd, %bb.c ], [ %i.db, %.lr.ph62.i.us ] ; 6 uses
  %.0398.lcssa.i.us = phi ptr [ %i.cc, %bb.c ], [ %i.da, %.lr.ph62.i.us ] ; 6 uses
  %.0396.lcssa.i.us = phi ptr [ %i.cb, %bb.c ], [ %i.cz, %.lr.ph62.i.us ] ; 6 uses
  %.6379.lcssa.i.us = phi ptr [ %i.al, %bb.c ], [ %i.cy, %.lr.ph62.i.us ] ; 6 uses
  %.7.lcssa.i.us = phi ptr [ %.035991.i.us, %bb.c ], [ %i.cx, %.lr.ph62.i.us ] ; 10 uses
  %i.df = icmp slt i32 %.0412.lcssa.i.us, %5
  br i1 %i.df, label %.lr.ph75.i.us.preheader, label %.loopexit21.i.us

.lr.ph75.i.us.preheader:                          ; preds = %.preheader22.i.us
  %i.dg = xor i32 %.0412.lcssa.i.us, -1
  %i.dh = add i32 %5, %i.dg                       ; 2 uses
  %i.di = zext i32 %i.dh to i64                   ; 3 uses
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dh, 15
  br i1 %min.iters.check, label %.lr.ph75.i.us.preheader814, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph75.i.us.preheader
  %i.dk = shl nuw nsw i64 %i.di, 5
  %i.dl = getelementptr i8, ptr %.7.lcssa.i.us, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 32     ; 4 uses
  %i.dn = shl nuw nsw i64 %i.di, 3
  %i.do = add nuw nsw i64 %i.dn, 8                ; 4 uses
  %i.dp = getelementptr i8, ptr %.0400.lcssa.i.us, i64 %i.do
  %i.dq = getelementptr i8, ptr %.0398.lcssa.i.us, i64 %i.do
  %i.dr = getelementptr i8, ptr %.0396.lcssa.i.us, i64 %i.do
  %i.ds = getelementptr i8, ptr %.6379.lcssa.i.us, i64 %i.do
  %bound0 = icmp ult ptr %.7.lcssa.i.us, %i.dp
  %bound1 = icmp ult ptr %.0400.lcssa.i.us, %i.dm
  %found.conflict = and i1 %bound0, %bound1
  %bound0238 = icmp ult ptr %.7.lcssa.i.us, %i.dq
  %bound1239 = icmp ult ptr %.0398.lcssa.i.us, %i.dm
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx = or i1 %found.conflict, %found.conflict240
  %bound0241 = icmp ult ptr %.7.lcssa.i.us, %i.dr
  %bound1242 = icmp ult ptr %.0396.lcssa.i.us, %i.dm
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx, %found.conflict243
  %bound0245 = icmp ult ptr %.7.lcssa.i.us, %i.ds
  %bound1246 = icmp ult ptr %.6379.lcssa.i.us, %i.dm
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  br i1 %conflict.rdx248, label %.lr.ph75.i.us.preheader814, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dj, 8589934584              ; 5 uses
  %i.dt = shl nuw nsw i64 %n.vec, 5
  %i.du = getelementptr i8, ptr %.7.lcssa.i.us, i64 %i.dt ; 2 uses
  %i.dv = shl nuw nsw i64 %n.vec, 3               ; 4 uses
  %i.dw = getelementptr i8, ptr %.6379.lcssa.i.us, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.0396.lcssa.i.us, i64 %i.dv
  %i.dy = getelementptr i8, ptr %.0398.lcssa.i.us, i64 %i.dv
  %i.dz = getelementptr i8, ptr %.0400.lcssa.i.us, i64 %i.dv
  %i.ea = trunc i64 %n.vec to i32
  %i.eb = add i32 %.0412.lcssa.i.us, %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ec = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.7.lcssa.i.us, i64 %i.ec
  %i.ed = shl i64 %index, 3                       ; 4 uses
  %next.gep249 = getelementptr i8, ptr %.6379.lcssa.i.us, i64 %i.ed
  %next.gep250 = getelementptr i8, ptr %.0396.lcssa.i.us, i64 %i.ed
  %next.gep251 = getelementptr i8, ptr %.0398.lcssa.i.us, i64 %i.ed
  %next.gep252 = getelementptr i8, ptr %.0400.lcssa.i.us, i64 %i.ed
  %wide.load = load <8 x i64>, ptr %next.gep249, align 1, !tbaa !17, !alias.scope !117
  %wide.load253 = load <8 x i64>, ptr %next.gep250, align 1, !tbaa !17, !alias.scope !118
  %wide.load254 = load <8 x i64>, ptr %next.gep251, align 1, !tbaa !17, !alias.scope !119
  %wide.load255 = load <8 x i64>, ptr %next.gep252, align 1, !tbaa !17, !alias.scope !120
  %i.ee = shufflevector <8 x i64> %wide.load, <8 x i64> %wide.load253, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ef = shufflevector <8 x i64> %wide.load254, <8 x i64> %wide.load255, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i64> %i.ee, <16 x i64> %i.ef, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i64> %interleaved.vec, ptr %next.gep, align 1, !tbaa !17, !alias.scope !121, !noalias !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %.loopexit21.i.us, label %.lr.ph75.i.us.preheader814

.lr.ph75.i.us.preheader814:                       ; preds = %vector.memcheck, %.lr.ph75.i.us.preheader, %middle.block
  %.874.i.us.ph = phi ptr [ %.7.lcssa.i.us, %vector.memcheck ], [ %.7.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.du, %middle.block ] ; 6 uses
  %.738073.i.us.ph = phi ptr [ %.6379.lcssa.i.us, %vector.memcheck ], [ %.6379.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.dw, %middle.block ] ; 3 uses
  %.139772.i.us.ph = phi ptr [ %.0396.lcssa.i.us, %vector.memcheck ], [ %.0396.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.dx, %middle.block ] ; 3 uses
  %.139971.i.us.ph = phi ptr [ %.0398.lcssa.i.us, %vector.memcheck ], [ %.0398.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.dy, %middle.block ] ; 3 uses
  %.140170.i.us.ph = phi ptr [ %.0400.lcssa.i.us, %vector.memcheck ], [ %.0400.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.dz, %middle.block ] ; 3 uses
  %.141369.i.us.ph = phi i32 [ %.0412.lcssa.i.us, %vector.memcheck ], [ %.0412.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.eb, %middle.block ] ; 4 uses
  %i.eh = sub i32 %5, %.141369.i.us.ph
  %.neg = add i32 %.141369.i.us.ph, 1
  %xtraiter838 = and i32 %i.eh, 1
  %lcmp.mod839.not = icmp eq i32 %xtraiter838, 0
  br i1 %lcmp.mod839.not, label %.lr.ph75.i.us.prol.loopexit, label %.lr.ph75.i.us.prol

.lr.ph75.i.us.prol:                               ; preds = %.lr.ph75.i.us.preheader814
  %i.ei = load i64, ptr %.738073.i.us.ph, align 1, !tbaa !17
  store i64 %i.ei, ptr %.874.i.us.ph, align 1, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %.874.i.us.ph, i64 8
  %i.ek = load i64, ptr %.139772.i.us.ph, align 1, !tbaa !17
  store i64 %i.ek, ptr %i.ej, align 1, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %.874.i.us.ph, i64 16
  %i.em = load i64, ptr %.139971.i.us.ph, align 1, !tbaa !17
  store i64 %i.em, ptr %i.el, align 1, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %.874.i.us.ph, i64 24
  %i.eo = load i64, ptr %.140170.i.us.ph, align 1, !tbaa !17
  store i64 %i.eo, ptr %i.en, align 1, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %.874.i.us.ph, i64 32 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.738073.i.us.ph, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.139772.i.us.ph, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.139971.i.us.ph, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %.140170.i.us.ph, i64 8
  %i.eu = add nuw nsw i32 %.141369.i.us.ph, 1
  br label %.lr.ph75.i.us.prol.loopexit

.lr.ph75.i.us.prol.loopexit:                      ; preds = %.lr.ph75.i.us.prol, %.lr.ph75.i.us.preheader814
  %.lcssa825.unr = phi ptr [ poison, %.lr.ph75.i.us.preheader814 ], [ %i.ep, %.lr.ph75.i.us.prol ]
  %.874.i.us.unr = phi ptr [ %.874.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.ep, %.lr.ph75.i.us.prol ]
  %.738073.i.us.unr = phi ptr [ %.738073.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.eq, %.lr.ph75.i.us.prol ]
  %.139772.i.us.unr = phi ptr [ %.139772.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.er, %.lr.ph75.i.us.prol ]
  %.139971.i.us.unr = phi ptr [ %.139971.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.es, %.lr.ph75.i.us.prol ]
  %.140170.i.us.unr = phi ptr [ %.140170.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.et, %.lr.ph75.i.us.prol ]
  %.141369.i.us.unr = phi i32 [ %.141369.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.eu, %.lr.ph75.i.us.prol ]
  %i.ev = icmp eq i32 %5, %.neg
  br i1 %i.ev, label %.loopexit21.i.us, label %.lr.ph75.i.us

.lr.ph75.i.us:                                    ; preds = %.lr.ph75.i.us.prol.loopexit, %.lr.ph75.i.us
  %.874.i.us = phi ptr [ %i.fp, %.lr.ph75.i.us ], [ %.874.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 9 uses
  %.738073.i.us = phi ptr [ %i.fq, %.lr.ph75.i.us ], [ %.738073.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 3 uses
  %.139772.i.us = phi ptr [ %i.fr, %.lr.ph75.i.us ], [ %.139772.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 3 uses
  %.139971.i.us = phi ptr [ %i.fs, %.lr.ph75.i.us ], [ %.139971.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 3 uses
  %.140170.i.us = phi ptr [ %i.ft, %.lr.ph75.i.us ], [ %.140170.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 3 uses
  %.141369.i.us = phi i32 [ %i.fu, %.lr.ph75.i.us ], [ %.141369.i.us.unr, %.lr.ph75.i.us.prol.loopexit ]
  %i.ew = load i64, ptr %.738073.i.us, align 1, !tbaa !17
  store i64 %i.ew, ptr %.874.i.us, align 1, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 8
  %i.ey = load i64, ptr %.139772.i.us, align 1, !tbaa !17
  store i64 %i.ey, ptr %i.ex, align 1, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 16
  %i.fa = load i64, ptr %.139971.i.us, align 1, !tbaa !17
  store i64 %i.fa, ptr %i.ez, align 1, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 24
  %i.fc = load i64, ptr %.140170.i.us, align 1, !tbaa !17
  store i64 %i.fc, ptr %i.fb, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %.738073.i.us, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.139772.i.us, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.139971.i.us, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.140170.i.us, i64 8
  %i.fi = load i64, ptr %i.fe, align 1, !tbaa !17
  store i64 %i.fi, ptr %i.fd, align 1, !tbaa !17
  %i.fj = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 40
  %i.fk = load i64, ptr %i.ff, align 1, !tbaa !17
  store i64 %i.fk, ptr %i.fj, align 1, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 48
  %i.fm = load i64, ptr %i.fg, align 1, !tbaa !17
  store i64 %i.fm, ptr %i.fl, align 1, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 56
  %i.fo = load i64, ptr %i.fh, align 1, !tbaa !17
  store i64 %i.fo, ptr %i.fn, align 1, !tbaa !17
  %i.fp = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 64 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.738073.i.us, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.139772.i.us, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %.139971.i.us, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %.140170.i.us, i64 16
  %i.fu = add nuw nsw i32 %.141369.i.us, 2        ; 2 uses
  %exitcond302.not.i.us.1 = icmp eq i32 %i.fu, %5
  br i1 %exitcond302.not.i.us.1, label %.loopexit21.i.us, label %.lr.ph75.i.us, !llvm.loop !40

bb.d:                                             ; preds = %.split.i.us
  %i.fv = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx418.i ; 3 uses
  br i1 %i.o, label %.lr.ph44.i.us.preheader, label %.preheader24.i.us

.lr.ph44.i.us.preheader:                          ; preds = %bb.d
  br i1 %i.ad, label %.lr.ph44.i.us.epil.preheader, label %.lr.ph44.i.us

.lr.ph44.i.us:                                    ; preds = %.lr.ph44.i.us.preheader, %.lr.ph44.i.us
  %.443.i.us = phi ptr [ %i.gj, %.lr.ph44.i.us ], [ %.035991.i.us, %.lr.ph44.i.us.preheader ] ; 3 uses
  %.337642.i.us = phi ptr [ %i.gk, %.lr.ph44.i.us ], [ %i.al, %.lr.ph44.i.us.preheader ] ; 3 uses
  %.038841.i.us = phi ptr [ %i.gl, %.lr.ph44.i.us ], [ %i.fv, %.lr.ph44.i.us.preheader ] ; 3 uses
  %niter849 = phi i32 [ %niter849.next.1, %.lr.ph44.i.us ], [ 0, %.lr.ph44.i.us.preheader ]
  %i.fw = load <8 x i32>, ptr %.337642.i.us, align 1, !tbaa !17
  %i.fx = load <8 x i32>, ptr %.038841.i.us, align 1, !tbaa !17
  %i.fy = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fz = bitcast <16 x i32> %i.fy to <32 x i16>
  %i.ga = shufflevector <32 x i16> %i.fz, <32 x i16> poison, <32 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  store <32 x i16> %i.ga, ptr %.443.i.us, align 1, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %.443.i.us, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %.337642.i.us, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.038841.i.us, i64 32
  %i.ge = load <8 x i32>, ptr %i.gc, align 1, !tbaa !17
  %i.gf = load <8 x i32>, ptr %i.gd, align 1, !tbaa !17
  %i.gg = shufflevector <8 x i32> %i.ge, <8 x i32> %i.gf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gh = bitcast <16 x i32> %i.gg to <32 x i16>
  %i.gi = shufflevector <32 x i16> %i.gh, <32 x i16> poison, <32 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  store <32 x i16> %i.gi, ptr %i.gb, align 1, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %.443.i.us, i64 128 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.337642.i.us, i64 64 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.038841.i.us, i64 64 ; 3 uses
  %niter849.next.1 = add nuw nsw i32 %niter849, 2 ; 2 uses
  %niter849.ncmp.1.not = icmp eq i32 %niter849.next.1, %unroll_iter848
  br i1 %niter849.ncmp.1.not, label %.preheader24.i.us.loopexit.unr-lcssa, label %.lr.ph44.i.us, !llvm.loop !41

.preheader24.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph44.i.us
  br i1 %lcmp.mod843.not.not, label %.lr.ph44.i.us.epil.preheader, label %.preheader24.i.us

.lr.ph44.i.us.epil.preheader:                     ; preds = %.preheader24.i.us.loopexit.unr-lcssa, %.lr.ph44.i.us.preheader
  %.443.i.us.epil.init = phi ptr [ %.035991.i.us, %.lr.ph44.i.us.preheader ], [ %i.gj, %.preheader24.i.us.loopexit.unr-lcssa ] ; 2 uses
  %.337642.i.us.epil.init = phi ptr [ %i.al, %.lr.ph44.i.us.preheader ], [ %i.gk, %.preheader24.i.us.loopexit.unr-lcssa ] ; 2 uses
  %.038841.i.us.epil.init = phi ptr [ %i.fv, %.lr.ph44.i.us.preheader ], [ %i.gl, %.preheader24.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod847)
  %i.gm = load <8 x i32>, ptr %.337642.i.us.epil.init, align 1, !tbaa !17
  %i.gn = load <8 x i32>, ptr %.038841.i.us.epil.init, align 1, !tbaa !17
  %i.go = shufflevector <8 x i32> %i.gm, <8 x i32> %i.gn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gp = bitcast <16 x i32> %i.go to <32 x i16>
  %i.gq = shufflevector <32 x i16> %i.gp, <32 x i16> poison, <32 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  store <32 x i16> %i.gq, ptr %.443.i.us.epil.init, align 1, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %.443.i.us.epil.init, i64 64
  %i.gs = getelementptr inbounds nuw i8, ptr %.337642.i.us.epil.init, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %.038841.i.us.epil.init, i64 32
  br label %.preheader24.i.us

end_hunk_0
begin_hunk_1_@_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.xh = getelementptr inbounds nuw i8, ptr %.1358169.i.us, i64 2
  %i.xi = getelementptr inbounds nuw i8, ptr %.1356170.i.us, i64 2
  %i.xj = getelementptr inbounds nuw i8, ptr %.1354171.i.us, i64 2
  %i.xk = load i16, ptr %i.xg, align 2, !tbaa !24
  store i16 %i.xk, ptr %i.xf, align 2, !tbaa !24
  %i.xl = load i16, ptr %i.xh, align 2, !tbaa !24
  %i.xm = getelementptr inbounds nuw i8, ptr %.28168.i.us, i64 10
  store i16 %i.xl, ptr %i.xm, align 2, !tbaa !24
  %i.xn = load i16, ptr %i.xi, align 2, !tbaa !24
  %i.xo = getelementptr inbounds nuw i8, ptr %.28168.i.us, i64 12
  store i16 %i.xn, ptr %i.xo, align 2, !tbaa !24
  %i.xp = load i16, ptr %i.xj, align 2, !tbaa !24
  %i.xq = getelementptr inbounds nuw i8, ptr %.28168.i.us, i64 14
  store i16 %i.xp, ptr %i.xq, align 2, !tbaa !24
  %i.xr = getelementptr inbounds nuw i8, ptr %.28168.i.us, i64 16 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.4367167.i.us, i64 4
  %i.xt = getelementptr inbounds nuw i8, ptr %.1358169.i.us, i64 4
  %i.xu = getelementptr inbounds nuw i8, ptr %.1356170.i.us, i64 4
  %i.xv = getelementptr inbounds nuw i8, ptr %.1354171.i.us, i64 4
  %i.xw = add nuw nsw i32 %.1352172.i.us, 2       ; 2 uses
  %exitcond312.not.i.us.1 = icmp eq i32 %i.xw, %5
  br i1 %exitcond312.not.i.us.1, label %.loopexit.i.us59, label %.lr.ph173.i.us, !llvm.loop !73

.loopexit.i.us59:                                 ; preds = %.lr.ph173.i.us.prol.loopexit, %.lr.ph173.i.us, %middle.block360, %vec.epilog.middle.block, %.preheader7.i.us
  %.29.i.us60 = phi ptr [ %.27.lcssa.i.us, %.preheader7.i.us ], [ %i.wc, %vec.epilog.middle.block ], [ %i.vo, %middle.block360 ], [ %.lcssa799.unr, %.lr.ph173.i.us.prol.loopexit ], [ %i.xr, %.lr.ph173.i.us ] ; 2 uses
  %indvars.iv.next314.i.us61 = add nuw nsw i64 %indvars.iv313.i.us57, 4 ; 3 uses
  %i.xx = icmp slt i64 %indvars.iv.next314.i.us61, %invariant.op401.i
  br i1 %i.xx, label %bb.e, label %.preheader6.loopexit.i, !llvm.loop !55

bb.f:                                             ; preds = %.loopexit13.i, %.lr.ph138.i
  %indvars.iv308.i = phi i64 [ %i.ks, %.lr.ph138.i ], [ %indvars.iv.next309.i, %.loopexit13.i ] ; 2 uses
  %.13137.i = phi ptr [ %.0359.lcssa.i, %.lr.ph138.i ], [ %.22.i, %.loopexit13.i ] ; 10 uses
  %i.xy = load ptr, ptr %0, align 8, !tbaa !14
  %i.xz = add nsw i64 %indvars.iv308.i, %i.ku
  %i.ya = mul i64 %i.xz, %i.k
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.xy, i64 %i.ya
  %i.yc = getelementptr inbounds [2 x i8], ptr %i.yb, i64 %i.kl ; 10 uses
  switch i32 %i.b, label %.loopexit13.i [
    i32 8, label %.preheader18.i
    i32 4, label %bb.g
    i32 1, label %bb.h
  ]

.preheader18.i:                                   ; preds = %bb.f
  br i1 %i.km, label %.lr.ph98.i.preheader, label %.preheader16.i

.lr.ph98.i.preheader:                             ; preds = %.preheader18.i
  br i1 %i.lb, label %.lr.ph98.i.epil.preheader, label %.lr.ph98.i

.preheader16.i.loopexit.unr-lcssa:                ; preds = %.lr.ph98.i
  br i1 %lcmp.mod889.not.not, label %.lr.ph98.i.epil.preheader, label %.preheader16.i

.lr.ph98.i.epil.preheader:                        ; preds = %.preheader16.i.loopexit.unr-lcssa, %.lr.ph98.i.preheader
  %.1497.i.epil.init = phi ptr [ %.13137.i, %.lr.ph98.i.preheader ], [ %i.zb, %.preheader16.i.loopexit.unr-lcssa ] ; 3 uses
  %.040495.i.epil.init = phi ptr [ %i.yc, %.lr.ph98.i.preheader ], [ %i.zc, %.preheader16.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod892)
  %i.yd = load <16 x i16>, ptr %.040495.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ye = shufflevector <16 x i16> %i.yd, <16 x i16> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yf = shufflevector <16 x i16> %i.yd, <16 x i16> poison, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ye, ptr %.1497.i.epil.init, align 1, !tbaa !17
  %i.yg = getelementptr inbounds nuw i8, ptr %.1497.i.epil.init, i64 16
  store <8 x i16> %i.yf, ptr %i.yg, align 1, !tbaa !17
  %i.yh = getelementptr inbounds nuw i8, ptr %.1497.i.epil.init, i64 32
  %i.yi = getelementptr inbounds nuw i8, ptr %.040495.i.epil.init, i64 32
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.lr.ph98.i.epil.preheader, %.preheader16.i.loopexit.unr-lcssa, %.preheader18.i
  %.0404.lcssa.i = phi ptr [ %i.yc, %.preheader18.i ], [ %i.zc, %.preheader16.i.loopexit.unr-lcssa ], [ %i.yi, %.lr.ph98.i.epil.preheader ] ; 2 uses
  %.0402.lcssa.i = phi i32 [ 0, %.preheader18.i ], [ %i.kr, %.preheader16.i.loopexit.unr-lcssa ], [ %i.kr, %.lr.ph98.i.epil.preheader ] ; 5 uses
  %.14.lcssa.i = phi ptr [ %.13137.i, %.preheader18.i ], [ %i.zb, %.preheader16.i.loopexit.unr-lcssa ], [ %i.yh, %.lr.ph98.i.epil.preheader ] ; 3 uses
  %i.yj = icmp slt i32 %.0402.lcssa.i, %5
  br i1 %i.yj, label %.lr.ph105.i.preheader, label %.loopexit13.i

.lr.ph105.i.preheader:                            ; preds = %.preheader16.i
  %i.yk = sub i32 %5, %.0402.lcssa.i
  %xtraiter895 = and i32 %i.yk, 7                 ; 2 uses
  %lcmp.mod896.not = icmp eq i32 %xtraiter895, 0
  br i1 %lcmp.mod896.not, label %.lr.ph105.i.prol.loopexit, label %.lr.ph105.i.prol

.lr.ph105.i.prol:                                 ; preds = %.lr.ph105.i.preheader, %.lr.ph105.i.prol
  %.15104.i.prol = phi ptr [ %i.ym, %.lr.ph105.i.prol ], [ %.14.lcssa.i, %.lr.ph105.i.preheader ] ; 2 uses
  %.1403103.i.prol = phi i32 [ %i.yo, %.lr.ph105.i.prol ], [ %.0402.lcssa.i, %.lr.ph105.i.preheader ]
  %.1405102.i.prol = phi ptr [ %i.yn, %.lr.ph105.i.prol ], [ %.0404.lcssa.i, %.lr.ph105.i.preheader ] ; 2 uses
  %prol.iter897 = phi i32 [ %prol.iter897.next, %.lr.ph105.i.prol ], [ 0, %.lr.ph105.i.preheader ]
  %i.yl = load <2 x i64>, ptr %.1405102.i.prol, align 1, !tbaa !17
  store <2 x i64> %i.yl, ptr %.15104.i.prol, align 1, !tbaa !17
  %i.ym = getelementptr inbounds nuw i8, ptr %.15104.i.prol, i64 16 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.1405102.i.prol, i64 16 ; 2 uses
  %i.yo = add nuw nsw i32 %.1403103.i.prol, 1     ; 2 uses
  %prol.iter897.next = add i32 %prol.iter897, 1   ; 2 uses
  %prol.iter897.cmp.not = icmp eq i32 %prol.iter897.next, %xtraiter895
  br i1 %prol.iter897.cmp.not, label %.lr.ph105.i.prol.loopexit, label %.lr.ph105.i.prol, !llvm.loop !74

.lr.ph105.i.prol.loopexit:                        ; preds = %.lr.ph105.i.prol, %.lr.ph105.i.preheader
  %.lcssa812.unr = phi ptr [ poison, %.lr.ph105.i.preheader ], [ %i.ym, %.lr.ph105.i.prol ]
  %.15104.i.unr = phi ptr [ %.14.lcssa.i, %.lr.ph105.i.preheader ], [ %i.ym, %.lr.ph105.i.prol ]
  %.1403103.i.unr = phi i32 [ %.0402.lcssa.i, %.lr.ph105.i.preheader ], [ %i.yo, %.lr.ph105.i.prol ]
  %.1405102.i.unr = phi ptr [ %.0404.lcssa.i, %.lr.ph105.i.preheader ], [ %i.yn, %.lr.ph105.i.prol ]
  %i.yp = sub i32 %.0402.lcssa.i, %5
  %i.yq = icmp ugt i32 %i.yp, -8
  br i1 %i.yq, label %.loopexit13.i, label %.lr.ph105.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.i.preheader, %.lr.ph98.i
  %.1497.i = phi ptr [ %i.zb, %.lr.ph98.i ], [ %.13137.i, %.lr.ph98.i.preheader ] ; 5 uses
  %.040495.i = phi ptr [ %i.zc, %.lr.ph98.i ], [ %i.yc, %.lr.ph98.i.preheader ] ; 3 uses
  %niter894 = phi i32 [ %niter894.next.1, %.lr.ph98.i ], [ 0, %.lr.ph98.i.preheader ]
  %i.yr = load <16 x i16>, ptr %.040495.i, align 1, !tbaa !17 ; 2 uses
  %i.ys = shufflevector <16 x i16> %i.yr, <16 x i16> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yt = shufflevector <16 x i16> %i.yr, <16 x i16> poison, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ys, ptr %.1497.i, align 1, !tbaa !17
  %i.yu = getelementptr inbounds nuw i8, ptr %.1497.i, i64 16
  store <8 x i16> %i.yt, ptr %i.yu, align 1, !tbaa !17
  %i.yv = getelementptr inbounds nuw i8, ptr %.1497.i, i64 32
  %i.yw = getelementptr inbounds nuw i8, ptr %.040495.i, i64 32
  %i.yx = load <16 x i16>, ptr %i.yw, align 1, !tbaa !17 ; 2 uses
  %i.yy = shufflevector <16 x i16> %i.yx, <16 x i16> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yz = shufflevector <16 x i16> %i.yx, <16 x i16> poison, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.yy, ptr %i.yv, align 1, !tbaa !17
  %i.za = getelementptr inbounds nuw i8, ptr %.1497.i, i64 48
  store <8 x i16> %i.yz, ptr %i.za, align 1, !tbaa !17
  %i.zb = getelementptr inbounds nuw i8, ptr %.1497.i, i64 64 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.040495.i, i64 64 ; 3 uses
  %niter894.next.1 = add nuw nsw i32 %niter894, 2 ; 2 uses
  %niter894.ncmp.1.not = icmp eq i32 %niter894.next.1, %unroll_iter893
  br i1 %niter894.ncmp.1.not, label %.preheader16.i.loopexit.unr-lcssa, label %.lr.ph98.i, !llvm.loop !75

.lr.ph105.i:                                      ; preds = %.lr.ph105.i.prol.loopexit, %.lr.ph105.i
  %.15104.i = phi ptr [ %i.zz, %.lr.ph105.i ], [ %.15104.i.unr, %.lr.ph105.i.prol.loopexit ] ; 9 uses
  %.1403103.i = phi i32 [ %i.aab, %.lr.ph105.i ], [ %.1403103.i.unr, %.lr.ph105.i.prol.loopexit ]
  %.1405102.i = phi ptr [ %i.aaa, %.lr.ph105.i ], [ %.1405102.i.unr, %.lr.ph105.i.prol.loopexit ] ; 9 uses
  %i.zd = load <2 x i64>, ptr %.1405102.i, align 1, !tbaa !17
  store <2 x i64> %i.zd, ptr %.15104.i, align 1, !tbaa !17
  %i.ze = getelementptr inbounds nuw i8, ptr %.15104.i, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 16
  %i.zg = load <2 x i64>, ptr %i.zf, align 1, !tbaa !17
  store <2 x i64> %i.zg, ptr %i.ze, align 1, !tbaa !17
  %i.zh = getelementptr inbounds nuw i8, ptr %.15104.i, i64 32
  %i.zi = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 32
  %i.zj = load <2 x i64>, ptr %i.zi, align 1, !tbaa !17
  store <2 x i64> %i.zj, ptr %i.zh, align 1, !tbaa !17
  %i.zk = getelementptr inbounds nuw i8, ptr %.15104.i, i64 48
  %i.zl = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 48
  %i.zm = load <2 x i64>, ptr %i.zl, align 1, !tbaa !17
  store <2 x i64> %i.zm, ptr %i.zk, align 1, !tbaa !17
  %i.zn = getelementptr inbounds nuw i8, ptr %.15104.i, i64 64
  %i.zo = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 64
  %i.zp = load <2 x i64>, ptr %i.zo, align 1, !tbaa !17
  store <2 x i64> %i.zp, ptr %i.zn, align 1, !tbaa !17
  %i.zq = getelementptr inbounds nuw i8, ptr %.15104.i, i64 80
  %i.zr = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 80
  %i.zs = load <2 x i64>, ptr %i.zr, align 1, !tbaa !17
  store <2 x i64> %i.zs, ptr %i.zq, align 1, !tbaa !17
  %i.zt = getelementptr inbounds nuw i8, ptr %.15104.i, i64 96
  %i.zu = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 96
  %i.zv = load <2 x i64>, ptr %i.zu, align 1, !tbaa !17
  store <2 x i64> %i.zv, ptr %i.zt, align 1, !tbaa !17
  %i.zw = getelementptr inbounds nuw i8, ptr %.15104.i, i64 112
  %i.zx = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 112
  %i.zy = load <2 x i64>, ptr %i.zx, align 1, !tbaa !17
  store <2 x i64> %i.zy, ptr %i.zw, align 1, !tbaa !17
  %i.zz = getelementptr inbounds nuw i8, ptr %.15104.i, i64 128 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 128
  %i.aab = add nuw nsw i32 %.1403103.i, 8         ; 2 uses
  %exitcond305.not.i.7 = icmp eq i32 %i.aab, %5
  br i1 %exitcond305.not.i.7, label %.loopexit13.i, label %.lr.ph105.i, !llvm.loop !76

bb.g:                                             ; preds = %bb.f
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yc, i64 %.idx417.i ; 3 uses
  br i1 %i.km, label %.lr.ph112.i.preheader, label %.preheader14.i

.lr.ph112.i.preheader:                            ; preds = %bb.g
  br i1 %i.kz, label %.lr.ph112.i.epil.preheader, label %.lr.ph112.i

.preheader14.i.loopexit.unr-lcssa:                ; preds = %.lr.ph112.i
  br i1 %lcmp.mod877.not.not, label %.lr.ph112.i.epil.preheader, label %.preheader14.i

.lr.ph112.i.epil.preheader:                       ; preds = %.preheader14.i.loopexit.unr-lcssa, %.lr.ph112.i.preheader
  %.17111.i.epil.init = phi ptr [ %.13137.i, %.lr.ph112.i.preheader ], [ %i.acq, %.preheader14.i.loopexit.unr-lcssa ] ; 3 uses
  %.0394109.i.epil.init = phi ptr [ %i.aac, %.lr.ph112.i.preheader ], [ %i.acs, %.preheader14.i.loopexit.unr-lcssa ] ; 2 uses
  %.3407108.i.epil.init = phi ptr [ %i.yc, %.lr.ph112.i.preheader ], [ %i.acr, %.preheader14.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod881)
  %i.aad = load <2 x i64>, ptr %.3407108.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aae = load <2 x i64>, ptr %.0394109.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aaf = bitcast <2 x i64> %i.aad to <8 x i16>
  %i.aag = bitcast <2 x i64> %i.aad to <8 x i16>
  %i.aah = shufflevector <8 x i16> %i.aaf, <8 x i16> %i.aag, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.aai = bitcast <2 x i64> %i.aae to <8 x i16>
  %i.aaj = bitcast <2 x i64> %i.aae to <8 x i16>
  %i.aak = shufflevector <8 x i16> %i.aai, <8 x i16> %i.aaj, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.aah, ptr %.17111.i.epil.init, align 1, !tbaa !17
  %i.aal = getelementptr inbounds nuw i8, ptr %.17111.i.epil.init, i64 16
  store <8 x i16> %i.aak, ptr %i.aal, align 1, !tbaa !17
  %i.aam = getelementptr inbounds nuw i8, ptr %.17111.i.epil.init, i64 32
  %i.aan = getelementptr inbounds nuw i8, ptr %.3407108.i.epil.init, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %.0394109.i.epil.init, i64 16
  br label %.preheader14.i

.preheader14.i:                                   ; preds = %.lr.ph112.i.epil.preheader, %.preheader14.i.loopexit.unr-lcssa, %bb.g
  %.3407.lcssa.i = phi ptr [ %i.yc, %bb.g ], [ %i.acr, %.preheader14.i.loopexit.unr-lcssa ], [ %i.aan, %.lr.ph112.i.epil.preheader ] ; 6 uses
  %.0394.lcssa.i = phi ptr [ %i.aac, %bb.g ], [ %i.acs, %.preheader14.i.loopexit.unr-lcssa ], [ %i.aao, %.lr.ph112.i.epil.preheader ] ; 6 uses
  %.0392.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.kr, %.preheader14.i.loopexit.unr-lcssa ], [ %i.kr, %.lr.ph112.i.epil.preheader ] ; 5 uses
  %.17.lcssa.i = phi ptr [ %.13137.i, %bb.g ], [ %i.acq, %.preheader14.i.loopexit.unr-lcssa ], [ %i.aam, %.lr.ph112.i.epil.preheader ] ; 8 uses
  %i.aap = icmp slt i32 %.0392.lcssa.i, %5
  br i1 %i.aap, label %.lr.ph121.i.preheader, label %.loopexit13.i

.lr.ph121.i.preheader:                            ; preds = %.preheader14.i
  %i.aaq = xor i32 %.0392.lcssa.i, -1
  %i.aar = add i32 %5, %i.aaq                     ; 2 uses
  %i.aas = zext i32 %i.aar to i64                 ; 3 uses
  %i.aat = add nuw nsw i64 %i.aas, 1              ; 2 uses
  %min.iters.check275 = icmp ult i32 %i.aar, 15
  br i1 %min.iters.check275, label %.lr.ph121.i.preheader800, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph121.i.preheader
  %i.aau = shl nuw nsw i64 %i.aas, 4
  %i.aav = getelementptr i8, ptr %.17.lcssa.i, i64 %i.aau
  %i.aaw = getelementptr i8, ptr %i.aav, i64 16   ; 2 uses
  %i.aax = shl nuw nsw i64 %i.aas, 3
  %i.aay = add nuw nsw i64 %i.aax, 8              ; 2 uses
  %i.aaz = getelementptr i8, ptr %.0394.lcssa.i, i64 %i.aay
  %i.aba = getelementptr i8, ptr %.3407.lcssa.i, i64 %i.aay
  %bound0277 = icmp ult ptr %.17.lcssa.i, %i.aaz
  %bound1278 = icmp ult ptr %.0394.lcssa.i, %i.aaw
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0280 = icmp ult ptr %.17.lcssa.i, %i.aba
  %bound1281 = icmp ult ptr %.3407.lcssa.i, %i.aaw
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %found.conflict279, %found.conflict282
  br i1 %conflict.rdx283, label %.lr.ph121.i.preheader800, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck276
  %n.vec285 = and i64 %i.aat, 8589934584          ; 5 uses
  %i.abb = shl nuw nsw i64 %n.vec285, 4
  %i.abc = getelementptr i8, ptr %.17.lcssa.i, i64 %i.abb ; 2 uses
  %i.abd = trunc i64 %n.vec285 to i32
  %i.abe = add i32 %.0392.lcssa.i, %i.abd
  %i.abf = shl nuw nsw i64 %n.vec285, 3           ; 2 uses
  %i.abg = getelementptr i8, ptr %.0394.lcssa.i, i64 %i.abf
  %i.abh = getelementptr i8, ptr %.3407.lcssa.i, i64 %i.abf
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next294, %vector.body286 ] ; 3 uses
  %i.abi = shl i64 %index287, 4
  %next.gep288 = getelementptr i8, ptr %.17.lcssa.i, i64 %i.abi
  %i.abj = shl i64 %index287, 3                   ; 2 uses
  %next.gep289 = getelementptr i8, ptr %.0394.lcssa.i, i64 %i.abj
  %next.gep290 = getelementptr i8, ptr %.3407.lcssa.i, i64 %i.abj
  %wide.load291 = load <8 x i64>, ptr %next.gep290, align 1, !tbaa !17, !alias.scope !135
  %wide.load292 = load <8 x i64>, ptr %next.gep289, align 1, !tbaa !17, !alias.scope !136
  %interleaved.vec293 = shufflevector <8 x i64> %wide.load291, <8 x i64> %wide.load292, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i64> %interleaved.vec293, ptr %next.gep288, align 1, !tbaa !17, !alias.scope !137, !noalias !138
  %index.next294 = add nuw i64 %index287, 8       ; 2 uses
  %i.abk = icmp eq i64 %index.next294, %n.vec285
  br i1 %i.abk, label %middle.block295, label %vector.body286, !llvm.loop !81

middle.block295:                                  ; preds = %vector.body286
  %cmp.n296 = icmp eq i64 %i.aat, %n.vec285
  br i1 %cmp.n296, label %.loopexit13.i, label %.lr.ph121.i.preheader800

.lr.ph121.i.preheader800:                         ; preds = %vector.memcheck276, %.lr.ph121.i.preheader, %middle.block295
  %.18120.i.ph = phi ptr [ %.17.lcssa.i, %vector.memcheck276 ], [ %.17.lcssa.i, %.lr.ph121.i.preheader ], [ %i.abc, %middle.block295 ] ; 2 uses
  %.1393119.i.ph = phi i32 [ %.0392.lcssa.i, %vector.memcheck276 ], [ %.0392.lcssa.i, %.lr.ph121.i.preheader ], [ %i.abe, %middle.block295 ] ; 4 uses
  %.1395118.i.ph = phi ptr [ %.0394.lcssa.i, %vector.memcheck276 ], [ %.0394.lcssa.i, %.lr.ph121.i.preheader ], [ %i.abg, %middle.block295 ] ; 2 uses
  %.4408117.i.ph = phi ptr [ %.3407.lcssa.i, %vector.memcheck276 ], [ %.3407.lcssa.i, %.lr.ph121.i.preheader ], [ %i.abh, %middle.block295 ] ; 2 uses
  %i.abl = sub i32 %5, %.1393119.i.ph
  %xtraiter884 = and i32 %i.abl, 3                ; 2 uses
  %lcmp.mod885.not = icmp eq i32 %xtraiter884, 0
  br i1 %lcmp.mod885.not, label %.lr.ph121.i.prol.loopexit, label %.lr.ph121.i.prol

.lr.ph121.i.prol:                                 ; preds = %.lr.ph121.i.preheader800, %.lr.ph121.i.prol
  %.18120.i.prol = phi ptr [ %i.abp, %.lr.ph121.i.prol ], [ %.18120.i.ph, %.lr.ph121.i.preheader800 ] ; 3 uses
  %.1393119.i.prol = phi i32 [ %i.abs, %.lr.ph121.i.prol ], [ %.1393119.i.ph, %.lr.ph121.i.preheader800 ]
  %.1395118.i.prol = phi ptr [ %i.abr, %.lr.ph121.i.prol ], [ %.1395118.i.ph, %.lr.ph121.i.preheader800 ] ; 2 uses
  %.4408117.i.prol = phi ptr [ %i.abq, %.lr.ph121.i.prol ], [ %.4408117.i.ph, %.lr.ph121.i.preheader800 ] ; 2 uses
  %prol.iter886 = phi i32 [ %prol.iter886.next, %.lr.ph121.i.prol ], [ 0, %.lr.ph121.i.preheader800 ]
  %i.abm = load i64, ptr %.4408117.i.prol, align 1, !tbaa !17
  store i64 %i.abm, ptr %.18120.i.prol, align 1, !tbaa !17
  %i.abn = getelementptr inbounds nuw i8, ptr %.18120.i.prol, i64 8
  %i.abo = load i64, ptr %.1395118.i.prol, align 1, !tbaa !17
  store i64 %i.abo, ptr %i.abn, align 1, !tbaa !17
  %i.abp = getelementptr inbounds nuw i8, ptr %.18120.i.prol, i64 16 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.4408117.i.prol, i64 8 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.1395118.i.prol, i64 8 ; 2 uses
  %i.abs = add nuw nsw i32 %.1393119.i.prol, 1    ; 2 uses
  %prol.iter886.next = add i32 %prol.iter886, 1   ; 2 uses
  %prol.iter886.cmp.not = icmp eq i32 %prol.iter886.next, %xtraiter884
  br i1 %prol.iter886.cmp.not, label %.lr.ph121.i.prol.loopexit, label %.lr.ph121.i.prol, !llvm.loop !82

.lr.ph121.i.prol.loopexit:                        ; preds = %.lr.ph121.i.prol, %.lr.ph121.i.preheader800
  %.lcssa809.unr = phi ptr [ poison, %.lr.ph121.i.preheader800 ], [ %i.abp, %.lr.ph121.i.prol ]
  %.18120.i.unr = phi ptr [ %.18120.i.ph, %.lr.ph121.i.preheader800 ], [ %i.abp, %.lr.ph121.i.prol ]
  %.1393119.i.unr = phi i32 [ %.1393119.i.ph, %.lr.ph121.i.preheader800 ], [ %i.abs, %.lr.ph121.i.prol ]
  %.1395118.i.unr = phi ptr [ %.1395118.i.ph, %.lr.ph121.i.preheader800 ], [ %i.abr, %.lr.ph121.i.prol ]
  %.4408117.i.unr = phi ptr [ %.4408117.i.ph, %.lr.ph121.i.preheader800 ], [ %i.abq, %.lr.ph121.i.prol ]
  %i.abt = sub i32 %.1393119.i.ph, %5
  %i.abu = icmp ugt i32 %i.abt, -4
  br i1 %i.abu, label %.loopexit13.i, label %.lr.ph121.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %.lr.ph112.i
  %.17111.i = phi ptr [ %i.acq, %.lr.ph112.i ], [ %.13137.i, %.lr.ph112.i.preheader ] ; 5 uses
  %.0394109.i = phi ptr [ %i.acs, %.lr.ph112.i ], [ %i.aac, %.lr.ph112.i.preheader ] ; 3 uses
  %.3407108.i = phi ptr [ %i.acr, %.lr.ph112.i ], [ %i.yc, %.lr.ph112.i.preheader ] ; 3 uses
  %niter883 = phi i32 [ %niter883.next.1, %.lr.ph112.i ], [ 0, %.lr.ph112.i.preheader ]
  %i.abv = load <2 x i64>, ptr %.3407108.i, align 1, !tbaa !17 ; 2 uses
  %i.abw = load <2 x i64>, ptr %.0394109.i, align 1, !tbaa !17 ; 2 uses
  %i.abx = bitcast <2 x i64> %i.abv to <8 x i16>
  %i.aby = bitcast <2 x i64> %i.abv to <8 x i16>
  %i.abz = shufflevector <8 x i16> %i.abx, <8 x i16> %i.aby, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.aca = bitcast <2 x i64> %i.abw to <8 x i16>
  %i.acb = bitcast <2 x i64> %i.abw to <8 x i16>
  %i.acc = shufflevector <8 x i16> %i.aca, <8 x i16> %i.acb, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.abz, ptr %.17111.i, align 1, !tbaa !17
  %i.acd = getelementptr inbounds nuw i8, ptr %.17111.i, i64 16
  store <8 x i16> %i.acc, ptr %i.acd, align 1, !tbaa !17
  %i.ace = getelementptr inbounds nuw i8, ptr %.17111.i, i64 32
  %i.acf = getelementptr inbounds nuw i8, ptr %.3407108.i, i64 16
  %i.acg = getelementptr inbounds nuw i8, ptr %.0394109.i, i64 16
  %i.ach = load <2 x i64>, ptr %i.acf, align 1, !tbaa !17 ; 2 uses
  %i.aci = load <2 x i64>, ptr %i.acg, align 1, !tbaa !17 ; 2 uses
  %i.acj = bitcast <2 x i64> %i.ach to <8 x i16>
  %i.ack = bitcast <2 x i64> %i.ach to <8 x i16>
  %i.acl = shufflevector <8 x i16> %i.acj, <8 x i16> %i.ack, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.acm = bitcast <2 x i64> %i.aci to <8 x i16>
  %i.acn = bitcast <2 x i64> %i.aci to <8 x i16>
  %i.aco = shufflevector <8 x i16> %i.acm, <8 x i16> %i.acn, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.acl, ptr %i.ace, align 1, !tbaa !17
  %i.acp = getelementptr inbounds nuw i8, ptr %.17111.i, i64 48
  store <8 x i16> %i.aco, ptr %i.acp, align 1, !tbaa !17
  %i.acq = getelementptr inbounds nuw i8, ptr %.17111.i, i64 64 ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.3407108.i, i64 32 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.0394109.i, i64 32 ; 3 uses
  %niter883.next.1 = add nuw nsw i32 %niter883, 2 ; 2 uses
  %niter883.ncmp.1.not = icmp eq i32 %niter883.next.1, %unroll_iter882
  br i1 %niter883.ncmp.1.not, label %.preheader14.i.loopexit.unr-lcssa, label %.lr.ph112.i, !llvm.loop !83

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.prol.loopexit, %.lr.ph121.i
  %.18120.i = phi ptr [ %i.ado, %.lr.ph121.i ], [ %.18120.i.unr, %.lr.ph121.i.prol.loopexit ] ; 9 uses
  %.1393119.i = phi i32 [ %i.adr, %.lr.ph121.i ], [ %.1393119.i.unr, %.lr.ph121.i.prol.loopexit ]
  %.1395118.i = phi ptr [ %i.adq, %.lr.ph121.i ], [ %.1395118.i.unr, %.lr.ph121.i.prol.loopexit ] ; 5 uses
  %.4408117.i = phi ptr [ %i.adp, %.lr.ph121.i ], [ %.4408117.i.unr, %.lr.ph121.i.prol.loopexit ] ; 5 uses
  %i.act = load i64, ptr %.4408117.i, align 1, !tbaa !17
  store i64 %i.act, ptr %.18120.i, align 1, !tbaa !17
  %i.acu = getelementptr inbounds nuw i8, ptr %.18120.i, i64 8
  %i.acv = load i64, ptr %.1395118.i, align 1, !tbaa !17
  store i64 %i.acv, ptr %i.acu, align 1, !tbaa !17
  %i.acw = getelementptr inbounds nuw i8, ptr %.18120.i, i64 16
  %i.acx = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 8
  %i.acy = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 8
  %i.acz = load i64, ptr %i.acx, align 1, !tbaa !17
  store i64 %i.acz, ptr %i.acw, align 1, !tbaa !17
  %i.ada = getelementptr inbounds nuw i8, ptr %.18120.i, i64 24
  %i.adb = load i64, ptr %i.acy, align 1, !tbaa !17
  store i64 %i.adb, ptr %i.ada, align 1, !tbaa !17
  %i.adc = getelementptr inbounds nuw i8, ptr %.18120.i, i64 32
  %i.add = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 16
  %i.ade = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 16
  %i.adf = load i64, ptr %i.add, align 1, !tbaa !17
  store i64 %i.adf, ptr %i.adc, align 1, !tbaa !17
  %i.adg = getelementptr inbounds nuw i8, ptr %.18120.i, i64 40
  %i.adh = load i64, ptr %i.ade, align 1, !tbaa !17
  store i64 %i.adh, ptr %i.adg, align 1, !tbaa !17
  %i.adi = getelementptr inbounds nuw i8, ptr %.18120.i, i64 48
  %i.adj = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 24
  %i.adk = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 24
  %i.adl = load i64, ptr %i.adj, align 1, !tbaa !17
  store i64 %i.adl, ptr %i.adi, align 1, !tbaa !17
  %i.adm = getelementptr inbounds nuw i8, ptr %.18120.i, i64 56
  %i.adn = load i64, ptr %i.adk, align 1, !tbaa !17
  store i64 %i.adn, ptr %i.adm, align 1, !tbaa !17
  %i.ado = getelementptr inbounds nuw i8, ptr %.18120.i, i64 64 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 32
  %i.adq = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 32
  %i.adr = add nuw nsw i32 %.1393119.i, 4         ; 2 uses
  %exitcond306.not.i.3 = icmp eq i32 %i.adr, %5
  br i1 %exitcond306.not.i.3, label %.loopexit13.i, label %.lr.ph121.i, !llvm.loop !84

bb.h:                                             ; preds = %bb.f
  br i1 %i.km, label %.lr.ph127.i.preheader, label %.preheader12.i

.lr.ph127.i.preheader:                            ; preds = %bb.h
  br i1 %i.ky, label %.lr.ph127.i.epil.preheader, label %.lr.ph127.i

.preheader12.i.loopexit.unr-lcssa:                ; preds = %.lr.ph127.i
  br i1 %lcmp.mod866.not, label %.preheader12.i, label %.lr.ph127.i.epil.preheader

.lr.ph127.i.epil.preheader:                       ; preds = %.preheader12.i.loopexit.unr-lcssa, %.lr.ph127.i.preheader
  %.20126.i.epil.init = phi ptr [ %.13137.i, %.lr.ph127.i.preheader ], [ %i.aeo, %.preheader12.i.loopexit.unr-lcssa ]
  %.6410124.i.epil.init = phi ptr [ %i.yc, %.lr.ph127.i.preheader ], [ %i.aep, %.preheader12.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod869)
  br label %.lr.ph127.i.epil

.lr.ph127.i.epil:                                 ; preds = %.lr.ph127.i.epil, %.lr.ph127.i.epil.preheader
  %.20126.i.epil = phi ptr [ %i.adt, %.lr.ph127.i.epil ], [ %.20126.i.epil.init, %.lr.ph127.i.epil.preheader ] ; 2 uses
  %.6410124.i.epil = phi ptr [ %i.adu, %.lr.ph127.i.epil ], [ %.6410124.i.epil.init, %.lr.ph127.i.epil.preheader ] ; 2 uses
  %epil.iter865 = phi i32 [ %epil.iter865.next, %.lr.ph127.i.epil ], [ 0, %.lr.ph127.i.epil.preheader ]
  %i.ads = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.6410124.i.epil, <8 x i32> %i.kq, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.ads, ptr %.20126.i.epil, align 1, !tbaa !17
  %i.adt = getelementptr inbounds nuw i8, ptr %.20126.i.epil, i64 32 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.6410124.i.epil, i64 4 ; 2 uses
  %epil.iter865.next = add i32 %epil.iter865, 1   ; 2 uses
  %epil.iter865.cmp.not = icmp eq i32 %epil.iter865.next, %xtraiter864
  br i1 %epil.iter865.cmp.not, label %.preheader12.i, label %.lr.ph127.i.epil, !llvm.loop !85

.preheader12.i:                                   ; preds = %.preheader12.i.loopexit.unr-lcssa, %.lr.ph127.i.epil, %bb.h
  %.6410.lcssa.i = phi ptr [ %i.yc, %bb.h ], [ %i.aep, %.preheader12.i.loopexit.unr-lcssa ], [ %i.adu, %.lr.ph127.i.epil ] ; 2 uses
  %.0384.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.kr, %.lr.ph127.i.epil ], [ %i.kr, %.preheader12.i.loopexit.unr-lcssa ] ; 5 uses
  %.20.lcssa.i = phi ptr [ %.13137.i, %bb.h ], [ %i.aeo, %.preheader12.i.loopexit.unr-lcssa ], [ %i.adt, %.lr.ph127.i.epil ] ; 3 uses
  %i.adv = icmp slt i32 %.0384.lcssa.i, %5
  br i1 %i.adv, label %.lr.ph134.i.preheader, label %.loopexit13.i

.lr.ph134.i.preheader:                            ; preds = %.preheader12.i
  %i.adw = sub i32 %5, %.0384.lcssa.i
  %xtraiter872 = and i32 %i.adw, 3                ; 2 uses
  %lcmp.mod873.not = icmp eq i32 %xtraiter872, 0
  br i1 %lcmp.mod873.not, label %.lr.ph134.i.prol.loopexit, label %.lr.ph134.i.prol

.lr.ph134.i.prol:                                 ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i.prol
end_hunk_1
begin_hunk_2_@_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %xtraiter = and i32 %i.ab, 3                    ; 3 uses
  %i.ac = icmp ult i32 %i.z, 6
  %unroll_iter = and i32 %i.ab, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod835 = icmp ne i32 %xtraiter, 0
  %i.ad = icmp eq i32 %i.aa, 0
  %unroll_iter848 = and i32 %i.ab, -2
  %i.ae = and i32 %i.z, 2
  %lcmp.mod843.not.not = icmp eq i32 %i.ae, 0
  %lcmp.mod847 = trunc i32 %i.ab to i1
  %xtraiter853 = and i32 %i.ab, 3                 ; 3 uses
  %i.af = icmp ult i32 %i.z, 6
  %unroll_iter859 = and i32 %i.ab, -4
  %lcmp.mod855.not = icmp eq i32 %xtraiter853, 0
  %lcmp.mod858 = icmp ne i32 %xtraiter853, 0
  br label %.split.i.us

.loopexit21.i.preheader:                          ; preds = %.lr.ph92.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 31)
  %i.ag = and i64 %umax, 2147483632
  br label %.preheader19.loopexit.i

.split.i.us:                                      ; preds = %.split.i.us.preheader, %.loopexit21.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit21.i.us ], [ 0, %.split.i.us.preheader ] ; 2 uses
  %.035991.i.us = phi ptr [ %.12.i.us, %.loopexit21.i.us ], [ %.val, %.split.i.us.preheader ] ; 12 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = add nsw i64 %indvars.iv.i.us, %i.v
  %i.aj = mul i64 %i.ai, %i.k
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.n ; 15 uses
  switch i32 %i.y, label %.loopexit21.i.us [
    i32 4, label %.preheader28.i.us
    i32 3, label %bb.d
    i32 2, label %bb.c
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.split.i.us
  br i1 %i.o, label %.lr.ph81.i.us.preheader, label %.preheader20.i.us

.lr.ph81.i.us.preheader:                          ; preds = %bb.b
  br i1 %i.ac, label %.lr.ph81.i.us.epil.preheader, label %.lr.ph81.i.us

.lr.ph81.i.us:                                    ; preds = %.lr.ph81.i.us.preheader, %.lr.ph81.i.us
  %.1080.i.us = phi ptr [ %i.aw, %.lr.ph81.i.us ], [ %.035991.i.us, %.lr.ph81.i.us.preheader ] ; 5 uses
  %.938279.i.us = phi ptr [ %i.ax, %.lr.ph81.i.us ], [ %i.al, %.lr.ph81.i.us.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph81.i.us ], [ 0, %.lr.ph81.i.us.preheader ]
  %i.am = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.938279.i.us, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.am, ptr %.1080.i.us, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 4
  %i.ap = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ao, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.ap, ptr %i.an, align 1, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 8
  %i.as = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ar, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.as, ptr %i.aq, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 12
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.au, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.av, ptr %i.at, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.1080.i.us, i64 256 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.938279.i.us, i64 16 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader20.i.us.loopexit.unr-lcssa, label %.lr.ph81.i.us, !llvm.loop !183

.preheader20.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph81.i.us
  br i1 %lcmp.mod.not, label %.preheader20.i.us, label %.lr.ph81.i.us.epil.preheader

.lr.ph81.i.us.epil.preheader:                     ; preds = %.preheader20.i.us.loopexit.unr-lcssa, %.lr.ph81.i.us.preheader
  %.1080.i.us.epil.init = phi ptr [ %.035991.i.us, %.lr.ph81.i.us.preheader ], [ %i.aw, %.preheader20.i.us.loopexit.unr-lcssa ]
  %.938279.i.us.epil.init = phi ptr [ %i.al, %.lr.ph81.i.us.preheader ], [ %i.ax, %.preheader20.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod835)
  br label %.lr.ph81.i.us.epil

.lr.ph81.i.us.epil:                               ; preds = %.lr.ph81.i.us.epil, %.lr.ph81.i.us.epil.preheader
  %.1080.i.us.epil = phi ptr [ %i.az, %.lr.ph81.i.us.epil ], [ %.1080.i.us.epil.init, %.lr.ph81.i.us.epil.preheader ] ; 2 uses
  %.938279.i.us.epil = phi ptr [ %i.ba, %.lr.ph81.i.us.epil ], [ %.938279.i.us.epil.init, %.lr.ph81.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph81.i.us.epil ], [ 0, %.lr.ph81.i.us.epil.preheader ]
  %i.ay = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.938279.i.us.epil, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  store <16 x i32> %i.ay, ptr %.1080.i.us.epil, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.1080.i.us.epil, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.938279.i.us.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader20.i.us, label %.lr.ph81.i.us.epil, !llvm.loop !184

.preheader20.i.us:                                ; preds = %.preheader20.i.us.loopexit.unr-lcssa, %.lr.ph81.i.us.epil, %bb.b
  %.0414.lcssa.i.us = phi i32 [ 0, %bb.b ], [ %i.t, %.lr.ph81.i.us.epil ], [ %i.t, %.preheader20.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.9382.lcssa.i.us = phi ptr [ %i.al, %bb.b ], [ %i.ax, %.preheader20.i.us.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph81.i.us.epil ] ; 2 uses
  %.10.lcssa.i.us = phi ptr [ %.035991.i.us, %bb.b ], [ %i.aw, %.preheader20.i.us.loopexit.unr-lcssa ], [ %i.az, %.lr.ph81.i.us.epil ] ; 3 uses
  %i.bb = icmp slt i32 %.0414.lcssa.i.us, %5
  br i1 %i.bb, label %.lr.ph88.i.us.preheader, label %.loopexit21.i.us

.lr.ph88.i.us.preheader:                          ; preds = %.preheader20.i.us
  %i.bc = sub i32 %5, %.0414.lcssa.i.us
  %xtraiter836 = and i32 %i.bc, 3                 ; 2 uses
  %lcmp.mod837.not = icmp eq i32 %xtraiter836, 0
  br i1 %lcmp.mod837.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol

.lr.ph88.i.us.prol:                               ; preds = %.lr.ph88.i.us.preheader, %.lr.ph88.i.us.prol
  %.1187.i.us.prol = phi ptr [ %i.bf, %.lr.ph88.i.us.prol ], [ %.10.lcssa.i.us, %.lr.ph88.i.us.preheader ] ; 2 uses
  %.1038386.i.us.prol = phi ptr [ %i.bg, %.lr.ph88.i.us.prol ], [ %.9382.lcssa.i.us, %.lr.ph88.i.us.preheader ] ; 2 uses
  %.141585.i.us.prol = phi i32 [ %i.bh, %.lr.ph88.i.us.prol ], [ %.0414.lcssa.i.us, %.lr.ph88.i.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph88.i.us.prol ], [ 0, %.lr.ph88.i.us.preheader ]
  %i.bd = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.1038386.i.us.prol, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.be = trunc <16 x i32> %i.bd to <16 x i16>
  store <16 x i16> %i.be, ptr %.1187.i.us.prol, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.1187.i.us.prol, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1038386.i.us.prol, i64 2 ; 2 uses
  %i.bh = add nuw nsw i32 %.141585.i.us.prol, 1   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter836
  br i1 %prol.iter.cmp.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol, !llvm.loop !185

.lr.ph88.i.us.prol.loopexit:                      ; preds = %.lr.ph88.i.us.prol, %.lr.ph88.i.us.preheader
  %.lcssa819.unr = phi ptr [ poison, %.lr.ph88.i.us.preheader ], [ %i.bf, %.lr.ph88.i.us.prol ]
  %.1187.i.us.unr = phi ptr [ %.10.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bf, %.lr.ph88.i.us.prol ]
  %.1038386.i.us.unr = phi ptr [ %.9382.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bg, %.lr.ph88.i.us.prol ]
  %.141585.i.us.unr = phi i32 [ %.0414.lcssa.i.us, %.lr.ph88.i.us.preheader ], [ %i.bh, %.lr.ph88.i.us.prol ]
  %i.bi = sub i32 %.0414.lcssa.i.us, %5
  %i.bj = icmp ugt i32 %i.bi, -4
  br i1 %i.bj, label %.loopexit21.i.us, label %.lr.ph88.i.us

.lr.ph88.i.us:                                    ; preds = %.lr.ph88.i.us.prol.loopexit, %.lr.ph88.i.us
  %.1187.i.us = phi ptr [ %i.by, %.lr.ph88.i.us ], [ %.1187.i.us.unr, %.lr.ph88.i.us.prol.loopexit ] ; 5 uses
  %.1038386.i.us = phi ptr [ %i.bz, %.lr.ph88.i.us ], [ %.1038386.i.us.unr, %.lr.ph88.i.us.prol.loopexit ] ; 5 uses
  %.141585.i.us = phi i32 [ %i.ca, %.lr.ph88.i.us ], [ %.141585.i.us.unr, %.lr.ph88.i.us.prol.loopexit ]
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.1038386.i.us, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bl = trunc <16 x i32> %i.bk to <16 x i16>
  store <16 x i16> %i.bl, ptr %.1187.i.us, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 2
  %i.bo = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bn, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bp = trunc <16 x i32> %i.bo to <16 x i16>
  store <16 x i16> %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 4
  %i.bs = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.br, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bt = trunc <16 x i32> %i.bs to <16 x i16>
  store <16 x i16> %i.bt, ptr %i.bq, align 1, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 6
  %i.bw = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bv, <16 x i32> %i.s, <16 x i1> splat (i1 true), i32 2)
  %i.bx = trunc <16 x i32> %i.bw to <16 x i16>
  store <16 x i16> %i.bx, ptr %i.bu, align 1, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %.1187.i.us, i64 128 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1038386.i.us, i64 8
  %i.ca = add nuw nsw i32 %.141585.i.us, 4        ; 2 uses
  %exitcond303.not.i.us.3 = icmp eq i32 %i.ca, %5
  br i1 %exitcond303.not.i.us.3, label %.loopexit21.i.us, label %.lr.ph88.i.us, !llvm.loop !186

bb.c:                                             ; preds = %.split.i.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx419.i ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx418.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx421.i ; 2 uses
  br i1 %i.o, label %.lr.ph62.i.us, label %.preheader22.i.us

.lr.ph62.i.us:                                    ; preds = %bb.c, %.lr.ph62.i.us
  %.761.i.us = phi ptr [ %i.cx, %.lr.ph62.i.us ], [ %.035991.i.us, %bb.c ] ; 5 uses
  %.637960.i.us = phi ptr [ %i.cy, %.lr.ph62.i.us ], [ %i.al, %bb.c ] ; 2 uses
  %.039659.i.us = phi ptr [ %i.cz, %.lr.ph62.i.us ], [ %i.cb, %bb.c ] ; 2 uses
  %.039858.i.us = phi ptr [ %i.da, %.lr.ph62.i.us ], [ %i.cc, %bb.c ] ; 2 uses
  %.040057.i.us = phi ptr [ %i.db, %.lr.ph62.i.us ], [ %i.cd, %bb.c ] ; 2 uses
  %.041256.i.us = phi i32 [ %i.dc, %.lr.ph62.i.us ], [ 0, %bb.c ]
  %i.ce = load <2 x i64>, ptr %.637960.i.us, align 1, !tbaa !17 ; 2 uses
  %i.cf = load <2 x i64>, ptr %.039659.i.us, align 1, !tbaa !17 ; 2 uses
  %i.cg = load <2 x i64>, ptr %.039858.i.us, align 1, !tbaa !17 ; 2 uses
  %i.ch = load <2 x i64>, ptr %.040057.i.us, align 1, !tbaa !17 ; 2 uses
  %i.ci = bitcast <2 x i64> %i.ce to <8 x i16>
  %i.cj = bitcast <2 x i64> %i.ce to <8 x i16>
  %i.ck = shufflevector <8 x i16> %i.ci, <8 x i16> %i.cj, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.cl = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.cm = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.co = bitcast <2 x i64> %i.cg to <8 x i16>
  %i.cp = bitcast <2 x i64> %i.cg to <8 x i16>
  %i.cq = shufflevector <8 x i16> %i.co, <8 x i16> %i.cp, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.cr = bitcast <2 x i64> %i.ch to <8 x i16>
  %i.cs = bitcast <2 x i64> %i.ch to <8 x i16>
  %i.ct = shufflevector <8 x i16> %i.cr, <8 x i16> %i.cs, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.ck, ptr %.761.i.us, align 1, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %.761.i.us, i64 16
  store <8 x i16> %i.cn, ptr %i.cu, align 1, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %.761.i.us, i64 32
  store <8 x i16> %i.cq, ptr %i.cv, align 1, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %.761.i.us, i64 48
  store <8 x i16> %i.ct, ptr %i.cw, align 1, !tbaa !17
  %i.cx = getelementptr inbounds nuw i8, ptr %.761.i.us, i64 64 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.637960.i.us, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.039659.i.us, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.039858.i.us, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.040057.i.us, i64 16 ; 2 uses
  %i.dc = add nuw nsw i32 %.041256.i.us, 2        ; 2 uses
  %i.dd = or disjoint i32 %i.dc, 1
  %i.de = icmp slt i32 %i.dd, %5
  br i1 %i.de, label %.lr.ph62.i.us, label %.preheader22.i.us, !llvm.loop !187

.preheader22.i.us:                                ; preds = %.lr.ph62.i.us, %bb.c
  %.0412.lcssa.i.us = phi i32 [ 0, %bb.c ], [ %i.t, %.lr.ph62.i.us ] ; 5 uses
  %.0400.lcssa.i.us = phi ptr [ %i.cd, %bb.c ], [ %i.db, %.lr.ph62.i.us ] ; 6 uses
  %.0398.lcssa.i.us = phi ptr [ %i.cc, %bb.c ], [ %i.da, %.lr.ph62.i.us ] ; 6 uses
  %.0396.lcssa.i.us = phi ptr [ %i.cb, %bb.c ], [ %i.cz, %.lr.ph62.i.us ] ; 6 uses
  %.6379.lcssa.i.us = phi ptr [ %i.al, %bb.c ], [ %i.cy, %.lr.ph62.i.us ] ; 6 uses
  %.7.lcssa.i.us = phi ptr [ %.035991.i.us, %bb.c ], [ %i.cx, %.lr.ph62.i.us ] ; 10 uses
  %i.df = icmp slt i32 %.0412.lcssa.i.us, %5
  br i1 %i.df, label %.lr.ph75.i.us.preheader, label %.loopexit21.i.us

.lr.ph75.i.us.preheader:                          ; preds = %.preheader22.i.us
  %i.dg = xor i32 %.0412.lcssa.i.us, -1
  %i.dh = add i32 %5, %i.dg                       ; 2 uses
  %i.di = zext i32 %i.dh to i64                   ; 3 uses
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dh, 15
  br i1 %min.iters.check, label %.lr.ph75.i.us.preheader814, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph75.i.us.preheader
  %i.dk = shl nuw nsw i64 %i.di, 5
  %i.dl = getelementptr i8, ptr %.7.lcssa.i.us, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 32     ; 4 uses
  %i.dn = shl nuw nsw i64 %i.di, 3
  %i.do = add nuw nsw i64 %i.dn, 8                ; 4 uses
  %i.dp = getelementptr i8, ptr %.0400.lcssa.i.us, i64 %i.do
  %i.dq = getelementptr i8, ptr %.0398.lcssa.i.us, i64 %i.do
  %i.dr = getelementptr i8, ptr %.0396.lcssa.i.us, i64 %i.do
  %i.ds = getelementptr i8, ptr %.6379.lcssa.i.us, i64 %i.do
  %bound0 = icmp ult ptr %.7.lcssa.i.us, %i.dp
  %bound1 = icmp ult ptr %.0400.lcssa.i.us, %i.dm
  %found.conflict = and i1 %bound0, %bound1
  %bound0238 = icmp ult ptr %.7.lcssa.i.us, %i.dq
  %bound1239 = icmp ult ptr %.0398.lcssa.i.us, %i.dm
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx = or i1 %found.conflict, %found.conflict240
  %bound0241 = icmp ult ptr %.7.lcssa.i.us, %i.dr
  %bound1242 = icmp ult ptr %.0396.lcssa.i.us, %i.dm
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx, %found.conflict243
  %bound0245 = icmp ult ptr %.7.lcssa.i.us, %i.ds
  %bound1246 = icmp ult ptr %.6379.lcssa.i.us, %i.dm
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  br i1 %conflict.rdx248, label %.lr.ph75.i.us.preheader814, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dj, 8589934584              ; 5 uses
  %i.dt = shl nuw nsw i64 %n.vec, 5
  %i.du = getelementptr i8, ptr %.7.lcssa.i.us, i64 %i.dt ; 2 uses
  %i.dv = shl nuw nsw i64 %n.vec, 3               ; 4 uses
  %i.dw = getelementptr i8, ptr %.6379.lcssa.i.us, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.0396.lcssa.i.us, i64 %i.dv
  %i.dy = getelementptr i8, ptr %.0398.lcssa.i.us, i64 %i.dv
  %i.dz = getelementptr i8, ptr %.0400.lcssa.i.us, i64 %i.dv
  %i.ea = trunc i64 %n.vec to i32
  %i.eb = add i32 %.0412.lcssa.i.us, %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ec = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.7.lcssa.i.us, i64 %i.ec
  %i.ed = shl i64 %index, 3                       ; 4 uses
  %next.gep249 = getelementptr i8, ptr %.6379.lcssa.i.us, i64 %i.ed
  %next.gep250 = getelementptr i8, ptr %.0396.lcssa.i.us, i64 %i.ed
  %next.gep251 = getelementptr i8, ptr %.0398.lcssa.i.us, i64 %i.ed
  %next.gep252 = getelementptr i8, ptr %.0400.lcssa.i.us, i64 %i.ed
  %wide.load = load <8 x i64>, ptr %next.gep249, align 1, !tbaa !17, !alias.scope !272
  %wide.load253 = load <8 x i64>, ptr %next.gep250, align 1, !tbaa !17, !alias.scope !273
  %wide.load254 = load <8 x i64>, ptr %next.gep251, align 1, !tbaa !17, !alias.scope !274
  %wide.load255 = load <8 x i64>, ptr %next.gep252, align 1, !tbaa !17, !alias.scope !275
  %i.ee = shufflevector <8 x i64> %wide.load, <8 x i64> %wide.load253, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ef = shufflevector <8 x i64> %wide.load254, <8 x i64> %wide.load255, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i64> %i.ee, <16 x i64> %i.ef, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i64> %interleaved.vec, ptr %next.gep, align 1, !tbaa !17, !alias.scope !276, !noalias !277
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %.loopexit21.i.us, label %.lr.ph75.i.us.preheader814

.lr.ph75.i.us.preheader814:                       ; preds = %vector.memcheck, %.lr.ph75.i.us.preheader, %middle.block
  %.874.i.us.ph = phi ptr [ %.7.lcssa.i.us, %vector.memcheck ], [ %.7.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.du, %middle.block ] ; 6 uses
  %.738073.i.us.ph = phi ptr [ %.6379.lcssa.i.us, %vector.memcheck ], [ %.6379.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.dw, %middle.block ] ; 3 uses
  %.139772.i.us.ph = phi ptr [ %.0396.lcssa.i.us, %vector.memcheck ], [ %.0396.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.dx, %middle.block ] ; 3 uses
  %.139971.i.us.ph = phi ptr [ %.0398.lcssa.i.us, %vector.memcheck ], [ %.0398.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.dy, %middle.block ] ; 3 uses
  %.140170.i.us.ph = phi ptr [ %.0400.lcssa.i.us, %vector.memcheck ], [ %.0400.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.dz, %middle.block ] ; 3 uses
  %.141369.i.us.ph = phi i32 [ %.0412.lcssa.i.us, %vector.memcheck ], [ %.0412.lcssa.i.us, %.lr.ph75.i.us.preheader ], [ %i.eb, %middle.block ] ; 4 uses
  %i.eh = sub i32 %5, %.141369.i.us.ph
  %.neg = add i32 %.141369.i.us.ph, 1
  %xtraiter838 = and i32 %i.eh, 1
  %lcmp.mod839.not = icmp eq i32 %xtraiter838, 0
  br i1 %lcmp.mod839.not, label %.lr.ph75.i.us.prol.loopexit, label %.lr.ph75.i.us.prol

.lr.ph75.i.us.prol:                               ; preds = %.lr.ph75.i.us.preheader814
  %i.ei = load i64, ptr %.738073.i.us.ph, align 1, !tbaa !17
  store i64 %i.ei, ptr %.874.i.us.ph, align 1, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %.874.i.us.ph, i64 8
  %i.ek = load i64, ptr %.139772.i.us.ph, align 1, !tbaa !17
  store i64 %i.ek, ptr %i.ej, align 1, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %.874.i.us.ph, i64 16
  %i.em = load i64, ptr %.139971.i.us.ph, align 1, !tbaa !17
  store i64 %i.em, ptr %i.el, align 1, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %.874.i.us.ph, i64 24
  %i.eo = load i64, ptr %.140170.i.us.ph, align 1, !tbaa !17
  store i64 %i.eo, ptr %i.en, align 1, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %.874.i.us.ph, i64 32 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.738073.i.us.ph, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.139772.i.us.ph, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.139971.i.us.ph, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %.140170.i.us.ph, i64 8
  %i.eu = add nuw nsw i32 %.141369.i.us.ph, 1
  br label %.lr.ph75.i.us.prol.loopexit

.lr.ph75.i.us.prol.loopexit:                      ; preds = %.lr.ph75.i.us.prol, %.lr.ph75.i.us.preheader814
  %.lcssa825.unr = phi ptr [ poison, %.lr.ph75.i.us.preheader814 ], [ %i.ep, %.lr.ph75.i.us.prol ]
  %.874.i.us.unr = phi ptr [ %.874.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.ep, %.lr.ph75.i.us.prol ]
  %.738073.i.us.unr = phi ptr [ %.738073.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.eq, %.lr.ph75.i.us.prol ]
  %.139772.i.us.unr = phi ptr [ %.139772.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.er, %.lr.ph75.i.us.prol ]
  %.139971.i.us.unr = phi ptr [ %.139971.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.es, %.lr.ph75.i.us.prol ]
  %.140170.i.us.unr = phi ptr [ %.140170.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.et, %.lr.ph75.i.us.prol ]
  %.141369.i.us.unr = phi i32 [ %.141369.i.us.ph, %.lr.ph75.i.us.preheader814 ], [ %i.eu, %.lr.ph75.i.us.prol ]
  %i.ev = icmp eq i32 %5, %.neg
  br i1 %i.ev, label %.loopexit21.i.us, label %.lr.ph75.i.us

.lr.ph75.i.us:                                    ; preds = %.lr.ph75.i.us.prol.loopexit, %.lr.ph75.i.us
  %.874.i.us = phi ptr [ %i.fp, %.lr.ph75.i.us ], [ %.874.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 9 uses
  %.738073.i.us = phi ptr [ %i.fq, %.lr.ph75.i.us ], [ %.738073.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 3 uses
  %.139772.i.us = phi ptr [ %i.fr, %.lr.ph75.i.us ], [ %.139772.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 3 uses
  %.139971.i.us = phi ptr [ %i.fs, %.lr.ph75.i.us ], [ %.139971.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 3 uses
  %.140170.i.us = phi ptr [ %i.ft, %.lr.ph75.i.us ], [ %.140170.i.us.unr, %.lr.ph75.i.us.prol.loopexit ] ; 3 uses
  %.141369.i.us = phi i32 [ %i.fu, %.lr.ph75.i.us ], [ %.141369.i.us.unr, %.lr.ph75.i.us.prol.loopexit ]
  %i.ew = load i64, ptr %.738073.i.us, align 1, !tbaa !17
  store i64 %i.ew, ptr %.874.i.us, align 1, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 8
  %i.ey = load i64, ptr %.139772.i.us, align 1, !tbaa !17
  store i64 %i.ey, ptr %i.ex, align 1, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 16
  %i.fa = load i64, ptr %.139971.i.us, align 1, !tbaa !17
  store i64 %i.fa, ptr %i.ez, align 1, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 24
  %i.fc = load i64, ptr %.140170.i.us, align 1, !tbaa !17
  store i64 %i.fc, ptr %i.fb, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %.738073.i.us, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.139772.i.us, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.139971.i.us, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.140170.i.us, i64 8
  %i.fi = load i64, ptr %i.fe, align 1, !tbaa !17
  store i64 %i.fi, ptr %i.fd, align 1, !tbaa !17
  %i.fj = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 40
  %i.fk = load i64, ptr %i.ff, align 1, !tbaa !17
  store i64 %i.fk, ptr %i.fj, align 1, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 48
  %i.fm = load i64, ptr %i.fg, align 1, !tbaa !17
  store i64 %i.fm, ptr %i.fl, align 1, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 56
  %i.fo = load i64, ptr %i.fh, align 1, !tbaa !17
  store i64 %i.fo, ptr %i.fn, align 1, !tbaa !17
  %i.fp = getelementptr inbounds nuw i8, ptr %.874.i.us, i64 64 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.738073.i.us, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.139772.i.us, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %.139971.i.us, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %.140170.i.us, i64 16
  %i.fu = add nuw nsw i32 %.141369.i.us, 2        ; 2 uses
  %exitcond302.not.i.us.1 = icmp eq i32 %i.fu, %5
  br i1 %exitcond302.not.i.us.1, label %.loopexit21.i.us, label %.lr.ph75.i.us, !llvm.loop !195

bb.d:                                             ; preds = %.split.i.us
  %i.fv = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx418.i ; 3 uses
  br i1 %i.o, label %.lr.ph44.i.us.preheader, label %.preheader24.i.us

.lr.ph44.i.us.preheader:                          ; preds = %bb.d
  br i1 %i.ad, label %.lr.ph44.i.us.epil.preheader, label %.lr.ph44.i.us

.lr.ph44.i.us:                                    ; preds = %.lr.ph44.i.us.preheader, %.lr.ph44.i.us
  %.443.i.us = phi ptr [ %i.gj, %.lr.ph44.i.us ], [ %.035991.i.us, %.lr.ph44.i.us.preheader ] ; 3 uses
  %.337642.i.us = phi ptr [ %i.gk, %.lr.ph44.i.us ], [ %i.al, %.lr.ph44.i.us.preheader ] ; 3 uses
  %.038841.i.us = phi ptr [ %i.gl, %.lr.ph44.i.us ], [ %i.fv, %.lr.ph44.i.us.preheader ] ; 3 uses
  %niter849 = phi i32 [ %niter849.next.1, %.lr.ph44.i.us ], [ 0, %.lr.ph44.i.us.preheader ]
  %i.fw = load <8 x i32>, ptr %.337642.i.us, align 1, !tbaa !17
  %i.fx = load <8 x i32>, ptr %.038841.i.us, align 1, !tbaa !17
  %i.fy = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fz = bitcast <16 x i32> %i.fy to <32 x i16>
  %i.ga = shufflevector <32 x i16> %i.fz, <32 x i16> poison, <32 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  store <32 x i16> %i.ga, ptr %.443.i.us, align 1, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %.443.i.us, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %.337642.i.us, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.038841.i.us, i64 32
  %i.ge = load <8 x i32>, ptr %i.gc, align 1, !tbaa !17
  %i.gf = load <8 x i32>, ptr %i.gd, align 1, !tbaa !17
  %i.gg = shufflevector <8 x i32> %i.ge, <8 x i32> %i.gf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gh = bitcast <16 x i32> %i.gg to <32 x i16>
  %i.gi = shufflevector <32 x i16> %i.gh, <32 x i16> poison, <32 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  store <32 x i16> %i.gi, ptr %i.gb, align 1, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %.443.i.us, i64 128 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.337642.i.us, i64 64 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.038841.i.us, i64 64 ; 3 uses
  %niter849.next.1 = add nuw nsw i32 %niter849, 2 ; 2 uses
  %niter849.ncmp.1.not = icmp eq i32 %niter849.next.1, %unroll_iter848
  br i1 %niter849.ncmp.1.not, label %.preheader24.i.us.loopexit.unr-lcssa, label %.lr.ph44.i.us, !llvm.loop !196

.preheader24.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph44.i.us
  br i1 %lcmp.mod843.not.not, label %.lr.ph44.i.us.epil.preheader, label %.preheader24.i.us

.lr.ph44.i.us.epil.preheader:                     ; preds = %.preheader24.i.us.loopexit.unr-lcssa, %.lr.ph44.i.us.preheader
  %.443.i.us.epil.init = phi ptr [ %.035991.i.us, %.lr.ph44.i.us.preheader ], [ %i.gj, %.preheader24.i.us.loopexit.unr-lcssa ] ; 2 uses
  %.337642.i.us.epil.init = phi ptr [ %i.al, %.lr.ph44.i.us.preheader ], [ %i.gk, %.preheader24.i.us.loopexit.unr-lcssa ] ; 2 uses
  %.038841.i.us.epil.init = phi ptr [ %i.fv, %.lr.ph44.i.us.preheader ], [ %i.gl, %.preheader24.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod847)
  %i.gm = load <8 x i32>, ptr %.337642.i.us.epil.init, align 1, !tbaa !17
  %i.gn = load <8 x i32>, ptr %.038841.i.us.epil.init, align 1, !tbaa !17
  %i.go = shufflevector <8 x i32> %i.gm, <8 x i32> %i.gn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gp = bitcast <16 x i32> %i.go to <32 x i16>
  %i.gq = shufflevector <32 x i16> %i.gp, <32 x i16> poison, <32 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 16, i32 24, i32 17, i32 25, i32 18, i32 26, i32 19, i32 27, i32 20, i32 28, i32 21, i32 29, i32 22, i32 30, i32 23, i32 31>
  store <32 x i16> %i.gq, ptr %.443.i.us.epil.init, align 1, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %.443.i.us.epil.init, i64 64
  %i.gs = getelementptr inbounds nuw i8, ptr %.337642.i.us.epil.init, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %.038841.i.us.epil.init, i64 32
  br label %.preheader24.i.us

end_hunk_2
begin_hunk_3_@_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.xh = getelementptr inbounds nuw i8, ptr %.1358169.i.us, i64 2
  %i.xi = getelementptr inbounds nuw i8, ptr %.1356170.i.us, i64 2
  %i.xj = getelementptr inbounds nuw i8, ptr %.1354171.i.us, i64 2
  %i.xk = load i16, ptr %i.xg, align 2, !tbaa !24
  store i16 %i.xk, ptr %i.xf, align 2, !tbaa !24
  %i.xl = load i16, ptr %i.xh, align 2, !tbaa !24
  %i.xm = getelementptr inbounds nuw i8, ptr %.28168.i.us, i64 10
  store i16 %i.xl, ptr %i.xm, align 2, !tbaa !24
  %i.xn = load i16, ptr %i.xi, align 2, !tbaa !24
  %i.xo = getelementptr inbounds nuw i8, ptr %.28168.i.us, i64 12
  store i16 %i.xn, ptr %i.xo, align 2, !tbaa !24
  %i.xp = load i16, ptr %i.xj, align 2, !tbaa !24
  %i.xq = getelementptr inbounds nuw i8, ptr %.28168.i.us, i64 14
  store i16 %i.xp, ptr %i.xq, align 2, !tbaa !24
  %i.xr = getelementptr inbounds nuw i8, ptr %.28168.i.us, i64 16 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.4367167.i.us, i64 4
  %i.xt = getelementptr inbounds nuw i8, ptr %.1358169.i.us, i64 4
  %i.xu = getelementptr inbounds nuw i8, ptr %.1356170.i.us, i64 4
  %i.xv = getelementptr inbounds nuw i8, ptr %.1354171.i.us, i64 4
  %i.xw = add nuw nsw i32 %.1352172.i.us, 2       ; 2 uses
  %exitcond312.not.i.us.1 = icmp eq i32 %i.xw, %5
  br i1 %exitcond312.not.i.us.1, label %.loopexit.i.us59, label %.lr.ph173.i.us, !llvm.loop !228

.loopexit.i.us59:                                 ; preds = %.lr.ph173.i.us.prol.loopexit, %.lr.ph173.i.us, %middle.block360, %vec.epilog.middle.block, %.preheader7.i.us
  %.29.i.us60 = phi ptr [ %.27.lcssa.i.us, %.preheader7.i.us ], [ %i.wc, %vec.epilog.middle.block ], [ %i.vo, %middle.block360 ], [ %.lcssa799.unr, %.lr.ph173.i.us.prol.loopexit ], [ %i.xr, %.lr.ph173.i.us ] ; 2 uses
  %indvars.iv.next314.i.us61 = add nuw nsw i64 %indvars.iv313.i.us57, 4 ; 3 uses
  %i.xx = icmp slt i64 %indvars.iv.next314.i.us61, %invariant.op401.i
  br i1 %i.xx, label %bb.e, label %.preheader6.loopexit.i, !llvm.loop !210

bb.f:                                             ; preds = %.loopexit13.i, %.lr.ph138.i
  %indvars.iv308.i = phi i64 [ %i.ks, %.lr.ph138.i ], [ %indvars.iv.next309.i, %.loopexit13.i ] ; 2 uses
  %.13137.i = phi ptr [ %.0359.lcssa.i, %.lr.ph138.i ], [ %.22.i, %.loopexit13.i ] ; 10 uses
  %i.xy = load ptr, ptr %0, align 8, !tbaa !14
  %i.xz = add nsw i64 %indvars.iv308.i, %i.ku
  %i.ya = mul i64 %i.xz, %i.k
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.xy, i64 %i.ya
  %i.yc = getelementptr inbounds [2 x i8], ptr %i.yb, i64 %i.kl ; 10 uses
  switch i32 %i.b, label %.loopexit13.i [
    i32 8, label %.preheader18.i
    i32 4, label %bb.g
    i32 1, label %bb.h
  ]

.preheader18.i:                                   ; preds = %bb.f
  br i1 %i.km, label %.lr.ph98.i.preheader, label %.preheader16.i

.lr.ph98.i.preheader:                             ; preds = %.preheader18.i
  br i1 %i.lb, label %.lr.ph98.i.epil.preheader, label %.lr.ph98.i

.preheader16.i.loopexit.unr-lcssa:                ; preds = %.lr.ph98.i
  br i1 %lcmp.mod889.not.not, label %.lr.ph98.i.epil.preheader, label %.preheader16.i

.lr.ph98.i.epil.preheader:                        ; preds = %.preheader16.i.loopexit.unr-lcssa, %.lr.ph98.i.preheader
  %.1497.i.epil.init = phi ptr [ %.13137.i, %.lr.ph98.i.preheader ], [ %i.zb, %.preheader16.i.loopexit.unr-lcssa ] ; 3 uses
  %.040495.i.epil.init = phi ptr [ %i.yc, %.lr.ph98.i.preheader ], [ %i.zc, %.preheader16.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod892)
  %i.yd = load <16 x i16>, ptr %.040495.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ye = shufflevector <16 x i16> %i.yd, <16 x i16> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yf = shufflevector <16 x i16> %i.yd, <16 x i16> poison, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ye, ptr %.1497.i.epil.init, align 1, !tbaa !17
  %i.yg = getelementptr inbounds nuw i8, ptr %.1497.i.epil.init, i64 16
  store <8 x i16> %i.yf, ptr %i.yg, align 1, !tbaa !17
  %i.yh = getelementptr inbounds nuw i8, ptr %.1497.i.epil.init, i64 32
  %i.yi = getelementptr inbounds nuw i8, ptr %.040495.i.epil.init, i64 32
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.lr.ph98.i.epil.preheader, %.preheader16.i.loopexit.unr-lcssa, %.preheader18.i
  %.0404.lcssa.i = phi ptr [ %i.yc, %.preheader18.i ], [ %i.zc, %.preheader16.i.loopexit.unr-lcssa ], [ %i.yi, %.lr.ph98.i.epil.preheader ] ; 2 uses
  %.0402.lcssa.i = phi i32 [ 0, %.preheader18.i ], [ %i.kr, %.preheader16.i.loopexit.unr-lcssa ], [ %i.kr, %.lr.ph98.i.epil.preheader ] ; 5 uses
  %.14.lcssa.i = phi ptr [ %.13137.i, %.preheader18.i ], [ %i.zb, %.preheader16.i.loopexit.unr-lcssa ], [ %i.yh, %.lr.ph98.i.epil.preheader ] ; 3 uses
  %i.yj = icmp slt i32 %.0402.lcssa.i, %5
  br i1 %i.yj, label %.lr.ph105.i.preheader, label %.loopexit13.i

.lr.ph105.i.preheader:                            ; preds = %.preheader16.i
  %i.yk = sub i32 %5, %.0402.lcssa.i
  %xtraiter895 = and i32 %i.yk, 7                 ; 2 uses
  %lcmp.mod896.not = icmp eq i32 %xtraiter895, 0
  br i1 %lcmp.mod896.not, label %.lr.ph105.i.prol.loopexit, label %.lr.ph105.i.prol

.lr.ph105.i.prol:                                 ; preds = %.lr.ph105.i.preheader, %.lr.ph105.i.prol
  %.15104.i.prol = phi ptr [ %i.ym, %.lr.ph105.i.prol ], [ %.14.lcssa.i, %.lr.ph105.i.preheader ] ; 2 uses
  %.1403103.i.prol = phi i32 [ %i.yo, %.lr.ph105.i.prol ], [ %.0402.lcssa.i, %.lr.ph105.i.preheader ]
  %.1405102.i.prol = phi ptr [ %i.yn, %.lr.ph105.i.prol ], [ %.0404.lcssa.i, %.lr.ph105.i.preheader ] ; 2 uses
  %prol.iter897 = phi i32 [ %prol.iter897.next, %.lr.ph105.i.prol ], [ 0, %.lr.ph105.i.preheader ]
  %i.yl = load <2 x i64>, ptr %.1405102.i.prol, align 1, !tbaa !17
  store <2 x i64> %i.yl, ptr %.15104.i.prol, align 1, !tbaa !17
  %i.ym = getelementptr inbounds nuw i8, ptr %.15104.i.prol, i64 16 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.1405102.i.prol, i64 16 ; 2 uses
  %i.yo = add nuw nsw i32 %.1403103.i.prol, 1     ; 2 uses
  %prol.iter897.next = add i32 %prol.iter897, 1   ; 2 uses
  %prol.iter897.cmp.not = icmp eq i32 %prol.iter897.next, %xtraiter895
  br i1 %prol.iter897.cmp.not, label %.lr.ph105.i.prol.loopexit, label %.lr.ph105.i.prol, !llvm.loop !229

.lr.ph105.i.prol.loopexit:                        ; preds = %.lr.ph105.i.prol, %.lr.ph105.i.preheader
  %.lcssa812.unr = phi ptr [ poison, %.lr.ph105.i.preheader ], [ %i.ym, %.lr.ph105.i.prol ]
  %.15104.i.unr = phi ptr [ %.14.lcssa.i, %.lr.ph105.i.preheader ], [ %i.ym, %.lr.ph105.i.prol ]
  %.1403103.i.unr = phi i32 [ %.0402.lcssa.i, %.lr.ph105.i.preheader ], [ %i.yo, %.lr.ph105.i.prol ]
  %.1405102.i.unr = phi ptr [ %.0404.lcssa.i, %.lr.ph105.i.preheader ], [ %i.yn, %.lr.ph105.i.prol ]
  %i.yp = sub i32 %.0402.lcssa.i, %5
  %i.yq = icmp ugt i32 %i.yp, -8
  br i1 %i.yq, label %.loopexit13.i, label %.lr.ph105.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.i.preheader, %.lr.ph98.i
  %.1497.i = phi ptr [ %i.zb, %.lr.ph98.i ], [ %.13137.i, %.lr.ph98.i.preheader ] ; 5 uses
  %.040495.i = phi ptr [ %i.zc, %.lr.ph98.i ], [ %i.yc, %.lr.ph98.i.preheader ] ; 3 uses
  %niter894 = phi i32 [ %niter894.next.1, %.lr.ph98.i ], [ 0, %.lr.ph98.i.preheader ]
  %i.yr = load <16 x i16>, ptr %.040495.i, align 1, !tbaa !17 ; 2 uses
  %i.ys = shufflevector <16 x i16> %i.yr, <16 x i16> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yt = shufflevector <16 x i16> %i.yr, <16 x i16> poison, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ys, ptr %.1497.i, align 1, !tbaa !17
  %i.yu = getelementptr inbounds nuw i8, ptr %.1497.i, i64 16
  store <8 x i16> %i.yt, ptr %i.yu, align 1, !tbaa !17
  %i.yv = getelementptr inbounds nuw i8, ptr %.1497.i, i64 32
  %i.yw = getelementptr inbounds nuw i8, ptr %.040495.i, i64 32
  %i.yx = load <16 x i16>, ptr %i.yw, align 1, !tbaa !17 ; 2 uses
  %i.yy = shufflevector <16 x i16> %i.yx, <16 x i16> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yz = shufflevector <16 x i16> %i.yx, <16 x i16> poison, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.yy, ptr %i.yv, align 1, !tbaa !17
  %i.za = getelementptr inbounds nuw i8, ptr %.1497.i, i64 48
  store <8 x i16> %i.yz, ptr %i.za, align 1, !tbaa !17
  %i.zb = getelementptr inbounds nuw i8, ptr %.1497.i, i64 64 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.040495.i, i64 64 ; 3 uses
  %niter894.next.1 = add nuw nsw i32 %niter894, 2 ; 2 uses
  %niter894.ncmp.1.not = icmp eq i32 %niter894.next.1, %unroll_iter893
  br i1 %niter894.ncmp.1.not, label %.preheader16.i.loopexit.unr-lcssa, label %.lr.ph98.i, !llvm.loop !230

.lr.ph105.i:                                      ; preds = %.lr.ph105.i.prol.loopexit, %.lr.ph105.i
  %.15104.i = phi ptr [ %i.zz, %.lr.ph105.i ], [ %.15104.i.unr, %.lr.ph105.i.prol.loopexit ] ; 9 uses
  %.1403103.i = phi i32 [ %i.aab, %.lr.ph105.i ], [ %.1403103.i.unr, %.lr.ph105.i.prol.loopexit ]
  %.1405102.i = phi ptr [ %i.aaa, %.lr.ph105.i ], [ %.1405102.i.unr, %.lr.ph105.i.prol.loopexit ] ; 9 uses
  %i.zd = load <2 x i64>, ptr %.1405102.i, align 1, !tbaa !17
  store <2 x i64> %i.zd, ptr %.15104.i, align 1, !tbaa !17
  %i.ze = getelementptr inbounds nuw i8, ptr %.15104.i, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 16
  %i.zg = load <2 x i64>, ptr %i.zf, align 1, !tbaa !17
  store <2 x i64> %i.zg, ptr %i.ze, align 1, !tbaa !17
  %i.zh = getelementptr inbounds nuw i8, ptr %.15104.i, i64 32
  %i.zi = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 32
  %i.zj = load <2 x i64>, ptr %i.zi, align 1, !tbaa !17
  store <2 x i64> %i.zj, ptr %i.zh, align 1, !tbaa !17
  %i.zk = getelementptr inbounds nuw i8, ptr %.15104.i, i64 48
  %i.zl = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 48
  %i.zm = load <2 x i64>, ptr %i.zl, align 1, !tbaa !17
  store <2 x i64> %i.zm, ptr %i.zk, align 1, !tbaa !17
  %i.zn = getelementptr inbounds nuw i8, ptr %.15104.i, i64 64
  %i.zo = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 64
  %i.zp = load <2 x i64>, ptr %i.zo, align 1, !tbaa !17
  store <2 x i64> %i.zp, ptr %i.zn, align 1, !tbaa !17
  %i.zq = getelementptr inbounds nuw i8, ptr %.15104.i, i64 80
  %i.zr = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 80
  %i.zs = load <2 x i64>, ptr %i.zr, align 1, !tbaa !17
  store <2 x i64> %i.zs, ptr %i.zq, align 1, !tbaa !17
  %i.zt = getelementptr inbounds nuw i8, ptr %.15104.i, i64 96
  %i.zu = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 96
  %i.zv = load <2 x i64>, ptr %i.zu, align 1, !tbaa !17
  store <2 x i64> %i.zv, ptr %i.zt, align 1, !tbaa !17
  %i.zw = getelementptr inbounds nuw i8, ptr %.15104.i, i64 112
  %i.zx = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 112
  %i.zy = load <2 x i64>, ptr %i.zx, align 1, !tbaa !17
  store <2 x i64> %i.zy, ptr %i.zw, align 1, !tbaa !17
  %i.zz = getelementptr inbounds nuw i8, ptr %.15104.i, i64 128 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1405102.i, i64 128
  %i.aab = add nuw nsw i32 %.1403103.i, 8         ; 2 uses
  %exitcond305.not.i.7 = icmp eq i32 %i.aab, %5
  br i1 %exitcond305.not.i.7, label %.loopexit13.i, label %.lr.ph105.i, !llvm.loop !231

bb.g:                                             ; preds = %bb.f
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yc, i64 %.idx417.i ; 3 uses
  br i1 %i.km, label %.lr.ph112.i.preheader, label %.preheader14.i

.lr.ph112.i.preheader:                            ; preds = %bb.g
  br i1 %i.kz, label %.lr.ph112.i.epil.preheader, label %.lr.ph112.i

.preheader14.i.loopexit.unr-lcssa:                ; preds = %.lr.ph112.i
  br i1 %lcmp.mod877.not.not, label %.lr.ph112.i.epil.preheader, label %.preheader14.i

.lr.ph112.i.epil.preheader:                       ; preds = %.preheader14.i.loopexit.unr-lcssa, %.lr.ph112.i.preheader
  %.17111.i.epil.init = phi ptr [ %.13137.i, %.lr.ph112.i.preheader ], [ %i.acq, %.preheader14.i.loopexit.unr-lcssa ] ; 3 uses
  %.0394109.i.epil.init = phi ptr [ %i.aac, %.lr.ph112.i.preheader ], [ %i.acs, %.preheader14.i.loopexit.unr-lcssa ] ; 2 uses
  %.3407108.i.epil.init = phi ptr [ %i.yc, %.lr.ph112.i.preheader ], [ %i.acr, %.preheader14.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod881)
  %i.aad = load <2 x i64>, ptr %.3407108.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aae = load <2 x i64>, ptr %.0394109.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aaf = bitcast <2 x i64> %i.aad to <8 x i16>
  %i.aag = bitcast <2 x i64> %i.aad to <8 x i16>
  %i.aah = shufflevector <8 x i16> %i.aaf, <8 x i16> %i.aag, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.aai = bitcast <2 x i64> %i.aae to <8 x i16>
  %i.aaj = bitcast <2 x i64> %i.aae to <8 x i16>
  %i.aak = shufflevector <8 x i16> %i.aai, <8 x i16> %i.aaj, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.aah, ptr %.17111.i.epil.init, align 1, !tbaa !17
  %i.aal = getelementptr inbounds nuw i8, ptr %.17111.i.epil.init, i64 16
  store <8 x i16> %i.aak, ptr %i.aal, align 1, !tbaa !17
  %i.aam = getelementptr inbounds nuw i8, ptr %.17111.i.epil.init, i64 32
  %i.aan = getelementptr inbounds nuw i8, ptr %.3407108.i.epil.init, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %.0394109.i.epil.init, i64 16
  br label %.preheader14.i

.preheader14.i:                                   ; preds = %.lr.ph112.i.epil.preheader, %.preheader14.i.loopexit.unr-lcssa, %bb.g
  %.3407.lcssa.i = phi ptr [ %i.yc, %bb.g ], [ %i.acr, %.preheader14.i.loopexit.unr-lcssa ], [ %i.aan, %.lr.ph112.i.epil.preheader ] ; 6 uses
  %.0394.lcssa.i = phi ptr [ %i.aac, %bb.g ], [ %i.acs, %.preheader14.i.loopexit.unr-lcssa ], [ %i.aao, %.lr.ph112.i.epil.preheader ] ; 6 uses
  %.0392.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.kr, %.preheader14.i.loopexit.unr-lcssa ], [ %i.kr, %.lr.ph112.i.epil.preheader ] ; 5 uses
  %.17.lcssa.i = phi ptr [ %.13137.i, %bb.g ], [ %i.acq, %.preheader14.i.loopexit.unr-lcssa ], [ %i.aam, %.lr.ph112.i.epil.preheader ] ; 8 uses
  %i.aap = icmp slt i32 %.0392.lcssa.i, %5
  br i1 %i.aap, label %.lr.ph121.i.preheader, label %.loopexit13.i

.lr.ph121.i.preheader:                            ; preds = %.preheader14.i
  %i.aaq = xor i32 %.0392.lcssa.i, -1
  %i.aar = add i32 %5, %i.aaq                     ; 2 uses
  %i.aas = zext i32 %i.aar to i64                 ; 3 uses
  %i.aat = add nuw nsw i64 %i.aas, 1              ; 2 uses
  %min.iters.check275 = icmp ult i32 %i.aar, 15
  br i1 %min.iters.check275, label %.lr.ph121.i.preheader800, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph121.i.preheader
  %i.aau = shl nuw nsw i64 %i.aas, 4
  %i.aav = getelementptr i8, ptr %.17.lcssa.i, i64 %i.aau
  %i.aaw = getelementptr i8, ptr %i.aav, i64 16   ; 2 uses
  %i.aax = shl nuw nsw i64 %i.aas, 3
  %i.aay = add nuw nsw i64 %i.aax, 8              ; 2 uses
  %i.aaz = getelementptr i8, ptr %.0394.lcssa.i, i64 %i.aay
  %i.aba = getelementptr i8, ptr %.3407.lcssa.i, i64 %i.aay
  %bound0277 = icmp ult ptr %.17.lcssa.i, %i.aaz
  %bound1278 = icmp ult ptr %.0394.lcssa.i, %i.aaw
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0280 = icmp ult ptr %.17.lcssa.i, %i.aba
  %bound1281 = icmp ult ptr %.3407.lcssa.i, %i.aaw
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %found.conflict279, %found.conflict282
  br i1 %conflict.rdx283, label %.lr.ph121.i.preheader800, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck276
  %n.vec285 = and i64 %i.aat, 8589934584          ; 5 uses
  %i.abb = shl nuw nsw i64 %n.vec285, 4
  %i.abc = getelementptr i8, ptr %.17.lcssa.i, i64 %i.abb ; 2 uses
  %i.abd = trunc i64 %n.vec285 to i32
  %i.abe = add i32 %.0392.lcssa.i, %i.abd
  %i.abf = shl nuw nsw i64 %n.vec285, 3           ; 2 uses
  %i.abg = getelementptr i8, ptr %.0394.lcssa.i, i64 %i.abf
  %i.abh = getelementptr i8, ptr %.3407.lcssa.i, i64 %i.abf
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next294, %vector.body286 ] ; 3 uses
  %i.abi = shl i64 %index287, 4
  %next.gep288 = getelementptr i8, ptr %.17.lcssa.i, i64 %i.abi
  %i.abj = shl i64 %index287, 3                   ; 2 uses
  %next.gep289 = getelementptr i8, ptr %.0394.lcssa.i, i64 %i.abj
  %next.gep290 = getelementptr i8, ptr %.3407.lcssa.i, i64 %i.abj
  %wide.load291 = load <8 x i64>, ptr %next.gep290, align 1, !tbaa !17, !alias.scope !290
  %wide.load292 = load <8 x i64>, ptr %next.gep289, align 1, !tbaa !17, !alias.scope !291
  %interleaved.vec293 = shufflevector <8 x i64> %wide.load291, <8 x i64> %wide.load292, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i64> %interleaved.vec293, ptr %next.gep288, align 1, !tbaa !17, !alias.scope !292, !noalias !293
  %index.next294 = add nuw i64 %index287, 8       ; 2 uses
  %i.abk = icmp eq i64 %index.next294, %n.vec285
  br i1 %i.abk, label %middle.block295, label %vector.body286, !llvm.loop !236

middle.block295:                                  ; preds = %vector.body286
  %cmp.n296 = icmp eq i64 %i.aat, %n.vec285
  br i1 %cmp.n296, label %.loopexit13.i, label %.lr.ph121.i.preheader800

.lr.ph121.i.preheader800:                         ; preds = %vector.memcheck276, %.lr.ph121.i.preheader, %middle.block295
  %.18120.i.ph = phi ptr [ %.17.lcssa.i, %vector.memcheck276 ], [ %.17.lcssa.i, %.lr.ph121.i.preheader ], [ %i.abc, %middle.block295 ] ; 2 uses
  %.1393119.i.ph = phi i32 [ %.0392.lcssa.i, %vector.memcheck276 ], [ %.0392.lcssa.i, %.lr.ph121.i.preheader ], [ %i.abe, %middle.block295 ] ; 4 uses
  %.1395118.i.ph = phi ptr [ %.0394.lcssa.i, %vector.memcheck276 ], [ %.0394.lcssa.i, %.lr.ph121.i.preheader ], [ %i.abg, %middle.block295 ] ; 2 uses
  %.4408117.i.ph = phi ptr [ %.3407.lcssa.i, %vector.memcheck276 ], [ %.3407.lcssa.i, %.lr.ph121.i.preheader ], [ %i.abh, %middle.block295 ] ; 2 uses
  %i.abl = sub i32 %5, %.1393119.i.ph
  %xtraiter884 = and i32 %i.abl, 3                ; 2 uses
  %lcmp.mod885.not = icmp eq i32 %xtraiter884, 0
  br i1 %lcmp.mod885.not, label %.lr.ph121.i.prol.loopexit, label %.lr.ph121.i.prol

.lr.ph121.i.prol:                                 ; preds = %.lr.ph121.i.preheader800, %.lr.ph121.i.prol
  %.18120.i.prol = phi ptr [ %i.abp, %.lr.ph121.i.prol ], [ %.18120.i.ph, %.lr.ph121.i.preheader800 ] ; 3 uses
  %.1393119.i.prol = phi i32 [ %i.abs, %.lr.ph121.i.prol ], [ %.1393119.i.ph, %.lr.ph121.i.preheader800 ]
  %.1395118.i.prol = phi ptr [ %i.abr, %.lr.ph121.i.prol ], [ %.1395118.i.ph, %.lr.ph121.i.preheader800 ] ; 2 uses
  %.4408117.i.prol = phi ptr [ %i.abq, %.lr.ph121.i.prol ], [ %.4408117.i.ph, %.lr.ph121.i.preheader800 ] ; 2 uses
  %prol.iter886 = phi i32 [ %prol.iter886.next, %.lr.ph121.i.prol ], [ 0, %.lr.ph121.i.preheader800 ]
  %i.abm = load i64, ptr %.4408117.i.prol, align 1, !tbaa !17
  store i64 %i.abm, ptr %.18120.i.prol, align 1, !tbaa !17
  %i.abn = getelementptr inbounds nuw i8, ptr %.18120.i.prol, i64 8
  %i.abo = load i64, ptr %.1395118.i.prol, align 1, !tbaa !17
  store i64 %i.abo, ptr %i.abn, align 1, !tbaa !17
  %i.abp = getelementptr inbounds nuw i8, ptr %.18120.i.prol, i64 16 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.4408117.i.prol, i64 8 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.1395118.i.prol, i64 8 ; 2 uses
  %i.abs = add nuw nsw i32 %.1393119.i.prol, 1    ; 2 uses
  %prol.iter886.next = add i32 %prol.iter886, 1   ; 2 uses
  %prol.iter886.cmp.not = icmp eq i32 %prol.iter886.next, %xtraiter884
  br i1 %prol.iter886.cmp.not, label %.lr.ph121.i.prol.loopexit, label %.lr.ph121.i.prol, !llvm.loop !237

.lr.ph121.i.prol.loopexit:                        ; preds = %.lr.ph121.i.prol, %.lr.ph121.i.preheader800
  %.lcssa809.unr = phi ptr [ poison, %.lr.ph121.i.preheader800 ], [ %i.abp, %.lr.ph121.i.prol ]
  %.18120.i.unr = phi ptr [ %.18120.i.ph, %.lr.ph121.i.preheader800 ], [ %i.abp, %.lr.ph121.i.prol ]
  %.1393119.i.unr = phi i32 [ %.1393119.i.ph, %.lr.ph121.i.preheader800 ], [ %i.abs, %.lr.ph121.i.prol ]
  %.1395118.i.unr = phi ptr [ %.1395118.i.ph, %.lr.ph121.i.preheader800 ], [ %i.abr, %.lr.ph121.i.prol ]
  %.4408117.i.unr = phi ptr [ %.4408117.i.ph, %.lr.ph121.i.preheader800 ], [ %i.abq, %.lr.ph121.i.prol ]
  %i.abt = sub i32 %.1393119.i.ph, %5
  %i.abu = icmp ugt i32 %i.abt, -4
  br i1 %i.abu, label %.loopexit13.i, label %.lr.ph121.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %.lr.ph112.i
  %.17111.i = phi ptr [ %i.acq, %.lr.ph112.i ], [ %.13137.i, %.lr.ph112.i.preheader ] ; 5 uses
  %.0394109.i = phi ptr [ %i.acs, %.lr.ph112.i ], [ %i.aac, %.lr.ph112.i.preheader ] ; 3 uses
  %.3407108.i = phi ptr [ %i.acr, %.lr.ph112.i ], [ %i.yc, %.lr.ph112.i.preheader ] ; 3 uses
  %niter883 = phi i32 [ %niter883.next.1, %.lr.ph112.i ], [ 0, %.lr.ph112.i.preheader ]
  %i.abv = load <2 x i64>, ptr %.3407108.i, align 1, !tbaa !17 ; 2 uses
  %i.abw = load <2 x i64>, ptr %.0394109.i, align 1, !tbaa !17 ; 2 uses
  %i.abx = bitcast <2 x i64> %i.abv to <8 x i16>
  %i.aby = bitcast <2 x i64> %i.abv to <8 x i16>
  %i.abz = shufflevector <8 x i16> %i.abx, <8 x i16> %i.aby, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.aca = bitcast <2 x i64> %i.abw to <8 x i16>
  %i.acb = bitcast <2 x i64> %i.abw to <8 x i16>
  %i.acc = shufflevector <8 x i16> %i.aca, <8 x i16> %i.acb, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.abz, ptr %.17111.i, align 1, !tbaa !17
  %i.acd = getelementptr inbounds nuw i8, ptr %.17111.i, i64 16
  store <8 x i16> %i.acc, ptr %i.acd, align 1, !tbaa !17
  %i.ace = getelementptr inbounds nuw i8, ptr %.17111.i, i64 32
  %i.acf = getelementptr inbounds nuw i8, ptr %.3407108.i, i64 16
  %i.acg = getelementptr inbounds nuw i8, ptr %.0394109.i, i64 16
  %i.ach = load <2 x i64>, ptr %i.acf, align 1, !tbaa !17 ; 2 uses
  %i.aci = load <2 x i64>, ptr %i.acg, align 1, !tbaa !17 ; 2 uses
  %i.acj = bitcast <2 x i64> %i.ach to <8 x i16>
  %i.ack = bitcast <2 x i64> %i.ach to <8 x i16>
  %i.acl = shufflevector <8 x i16> %i.acj, <8 x i16> %i.ack, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.acm = bitcast <2 x i64> %i.aci to <8 x i16>
  %i.acn = bitcast <2 x i64> %i.aci to <8 x i16>
  %i.aco = shufflevector <8 x i16> %i.acm, <8 x i16> %i.acn, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.acl, ptr %i.ace, align 1, !tbaa !17
  %i.acp = getelementptr inbounds nuw i8, ptr %.17111.i, i64 48
  store <8 x i16> %i.aco, ptr %i.acp, align 1, !tbaa !17
  %i.acq = getelementptr inbounds nuw i8, ptr %.17111.i, i64 64 ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.3407108.i, i64 32 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.0394109.i, i64 32 ; 3 uses
  %niter883.next.1 = add nuw nsw i32 %niter883, 2 ; 2 uses
  %niter883.ncmp.1.not = icmp eq i32 %niter883.next.1, %unroll_iter882
  br i1 %niter883.ncmp.1.not, label %.preheader14.i.loopexit.unr-lcssa, label %.lr.ph112.i, !llvm.loop !238

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.prol.loopexit, %.lr.ph121.i
  %.18120.i = phi ptr [ %i.ado, %.lr.ph121.i ], [ %.18120.i.unr, %.lr.ph121.i.prol.loopexit ] ; 9 uses
  %.1393119.i = phi i32 [ %i.adr, %.lr.ph121.i ], [ %.1393119.i.unr, %.lr.ph121.i.prol.loopexit ]
  %.1395118.i = phi ptr [ %i.adq, %.lr.ph121.i ], [ %.1395118.i.unr, %.lr.ph121.i.prol.loopexit ] ; 5 uses
  %.4408117.i = phi ptr [ %i.adp, %.lr.ph121.i ], [ %.4408117.i.unr, %.lr.ph121.i.prol.loopexit ] ; 5 uses
  %i.act = load i64, ptr %.4408117.i, align 1, !tbaa !17
  store i64 %i.act, ptr %.18120.i, align 1, !tbaa !17
  %i.acu = getelementptr inbounds nuw i8, ptr %.18120.i, i64 8
  %i.acv = load i64, ptr %.1395118.i, align 1, !tbaa !17
  store i64 %i.acv, ptr %i.acu, align 1, !tbaa !17
  %i.acw = getelementptr inbounds nuw i8, ptr %.18120.i, i64 16
  %i.acx = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 8
  %i.acy = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 8
  %i.acz = load i64, ptr %i.acx, align 1, !tbaa !17
  store i64 %i.acz, ptr %i.acw, align 1, !tbaa !17
  %i.ada = getelementptr inbounds nuw i8, ptr %.18120.i, i64 24
  %i.adb = load i64, ptr %i.acy, align 1, !tbaa !17
  store i64 %i.adb, ptr %i.ada, align 1, !tbaa !17
  %i.adc = getelementptr inbounds nuw i8, ptr %.18120.i, i64 32
  %i.add = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 16
  %i.ade = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 16
  %i.adf = load i64, ptr %i.add, align 1, !tbaa !17
  store i64 %i.adf, ptr %i.adc, align 1, !tbaa !17
  %i.adg = getelementptr inbounds nuw i8, ptr %.18120.i, i64 40
  %i.adh = load i64, ptr %i.ade, align 1, !tbaa !17
  store i64 %i.adh, ptr %i.adg, align 1, !tbaa !17
  %i.adi = getelementptr inbounds nuw i8, ptr %.18120.i, i64 48
  %i.adj = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 24
  %i.adk = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 24
  %i.adl = load i64, ptr %i.adj, align 1, !tbaa !17
  store i64 %i.adl, ptr %i.adi, align 1, !tbaa !17
  %i.adm = getelementptr inbounds nuw i8, ptr %.18120.i, i64 56
  %i.adn = load i64, ptr %i.adk, align 1, !tbaa !17
  store i64 %i.adn, ptr %i.adm, align 1, !tbaa !17
  %i.ado = getelementptr inbounds nuw i8, ptr %.18120.i, i64 64 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 32
  %i.adq = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 32
  %i.adr = add nuw nsw i32 %.1393119.i, 4         ; 2 uses
  %exitcond306.not.i.3 = icmp eq i32 %i.adr, %5
  br i1 %exitcond306.not.i.3, label %.loopexit13.i, label %.lr.ph121.i, !llvm.loop !239

bb.h:                                             ; preds = %bb.f
  br i1 %i.km, label %.lr.ph127.i.preheader, label %.preheader12.i

.lr.ph127.i.preheader:                            ; preds = %bb.h
  br i1 %i.ky, label %.lr.ph127.i.epil.preheader, label %.lr.ph127.i

.preheader12.i.loopexit.unr-lcssa:                ; preds = %.lr.ph127.i
  br i1 %lcmp.mod866.not, label %.preheader12.i, label %.lr.ph127.i.epil.preheader

.lr.ph127.i.epil.preheader:                       ; preds = %.preheader12.i.loopexit.unr-lcssa, %.lr.ph127.i.preheader
  %.20126.i.epil.init = phi ptr [ %.13137.i, %.lr.ph127.i.preheader ], [ %i.aeo, %.preheader12.i.loopexit.unr-lcssa ]
  %.6410124.i.epil.init = phi ptr [ %i.yc, %.lr.ph127.i.preheader ], [ %i.aep, %.preheader12.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod869)
  br label %.lr.ph127.i.epil

.lr.ph127.i.epil:                                 ; preds = %.lr.ph127.i.epil, %.lr.ph127.i.epil.preheader
  %.20126.i.epil = phi ptr [ %i.adt, %.lr.ph127.i.epil ], [ %.20126.i.epil.init, %.lr.ph127.i.epil.preheader ] ; 2 uses
  %.6410124.i.epil = phi ptr [ %i.adu, %.lr.ph127.i.epil ], [ %.6410124.i.epil.init, %.lr.ph127.i.epil.preheader ] ; 2 uses
  %epil.iter865 = phi i32 [ %epil.iter865.next, %.lr.ph127.i.epil ], [ 0, %.lr.ph127.i.epil.preheader ]
  %i.ads = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.6410124.i.epil, <8 x i32> %i.kq, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.ads, ptr %.20126.i.epil, align 1, !tbaa !17
  %i.adt = getelementptr inbounds nuw i8, ptr %.20126.i.epil, i64 32 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.6410124.i.epil, i64 4 ; 2 uses
  %epil.iter865.next = add i32 %epil.iter865, 1   ; 2 uses
  %epil.iter865.cmp.not = icmp eq i32 %epil.iter865.next, %xtraiter864
  br i1 %epil.iter865.cmp.not, label %.preheader12.i, label %.lr.ph127.i.epil, !llvm.loop !240

.preheader12.i:                                   ; preds = %.preheader12.i.loopexit.unr-lcssa, %.lr.ph127.i.epil, %bb.h
  %.6410.lcssa.i = phi ptr [ %i.yc, %bb.h ], [ %i.aep, %.preheader12.i.loopexit.unr-lcssa ], [ %i.adu, %.lr.ph127.i.epil ] ; 2 uses
  %.0384.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.kr, %.lr.ph127.i.epil ], [ %i.kr, %.preheader12.i.loopexit.unr-lcssa ] ; 5 uses
  %.20.lcssa.i = phi ptr [ %.13137.i, %bb.h ], [ %i.aeo, %.preheader12.i.loopexit.unr-lcssa ], [ %i.adt, %.lr.ph127.i.epil ] ; 3 uses
  %i.adv = icmp slt i32 %.0384.lcssa.i, %5
  br i1 %i.adv, label %.lr.ph134.i.preheader, label %.loopexit13.i

.lr.ph134.i.preheader:                            ; preds = %.preheader12.i
  %i.adw = sub i32 %5, %.0384.lcssa.i
  %xtraiter872 = and i32 %i.adw, 3                ; 2 uses
  %lcmp.mod873.not = icmp eq i32 %xtraiter872, 0
  br i1 %lcmp.mod873.not, label %.lr.ph134.i.prol.loopexit, label %.lr.ph134.i.prol

.lr.ph134.i.prol:                                 ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i.prol
end_hunk_3
