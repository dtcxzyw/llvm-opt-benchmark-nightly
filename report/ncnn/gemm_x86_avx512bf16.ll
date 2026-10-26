Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512bf16?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !14    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 34 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph92.i, label %.preheader19.i

.lr.ph92.i:                                       ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp sgt i32 %5, 1                       ; 4 uses
  %.idx418.i = shl i64 %i.k, 4                    ; 2 uses
  %.idx419.i = shl i64 %i.k, 3
  %.idx421.i = mul i64 %i.k, 24
  %i.p = trunc i64 %i.k to i32
  %i.q = insertelement <16 x i32> poison, i32 %i.p, i64 0
  %i.r = shufflevector <16 x i32> %i.q, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.s = mul <16 x i32> %i.r, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.t = and i32 %5, -2                           ; 7 uses
  %i.u = zext nneg i32 %3 to i64                  ; 2 uses
  %i.v = sext i32 %2 to i64
  %i.w = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.x = icmp eq i32 %i.w, 1
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.x, label %.split.i.us.preheader, label %.loopexit21.i.preheader

.split.i.us.preheader:                            ; preds = %.lr.ph92.i
  %i.z = add i32 %5, -2                           ; 4 uses
  %i.aa = lshr i32 %i.z, 1                        ; 2 uses
  %i.ab = add nuw i32 %i.aa, 1                    ; 6 uses
  %xtraiter = and i32 %i.ab, 3                    ; 3 uses
  %i.ac = icmp ult i32 %i.z, 6
  %unroll_iter = and i32 %i.ab, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod739 = icmp ne i32 %xtraiter, 0
  %i.ad = icmp eq i32 %i.aa, 0
  %unroll_iter752 = and i32 %i.ab, -2
  %i.ae = and i32 %i.z, 2
  %lcmp.mod747.not.not = icmp eq i32 %i.ae, 0
  %lcmp.mod751 = trunc i32 %i.ab to i1
  %xtraiter757 = and i32 %i.ab, 3                 ; 3 uses
  %i.af = icmp ult i32 %i.z, 6
  %unroll_iter763 = and i32 %i.ab, -4
  %lcmp.mod759.not = icmp eq i32 %xtraiter757, 0
  %lcmp.mod762 = icmp ne i32 %xtraiter757, 0
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
  tail call void @llvm.assume(i1 %lcmp.mod739)
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
  %xtraiter740 = and i32 %i.bc, 3                 ; 2 uses
  %lcmp.mod741.not = icmp eq i32 %xtraiter740, 0
  br i1 %lcmp.mod741.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol

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
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter740
  br i1 %prol.iter.cmp.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol, !llvm.loop !30

.lr.ph88.i.us.prol.loopexit:                      ; preds = %.lr.ph88.i.us.prol, %.lr.ph88.i.us.preheader
  %.lcssa723.unr = phi ptr [ poison, %.lr.ph88.i.us.preheader ], [ %i.bf, %.lr.ph88.i.us.prol ]
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
end_hunk_0
begin_hunk_1_@_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %min.iters.check491, label %.lr.ph193.us.i.preheader, label %vector.memcheck476

vector.memcheck476:                               ; preds = %iter.check507
  %i.akc = ptrtoaddr ptr %.lcssa180 to i64
  %reass.sub = sub i64 %i.akc, %.30196.us.i477
  %i.akd = getelementptr i8, ptr %.30196.us.i, i64 %i.afp
  %i.ake = getelementptr i8, ptr %i.akd, i64 %reass.sub
  %scevgep478 = getelementptr i8, ptr %i.ake, i64 4 ; 2 uses
  %i.akf = shl nuw nsw i64 %indvar479.lcssa, 2    ; 2 uses
  %gep909 = getelementptr i8, ptr %invariant.gep908, i64 %i.akf
  %i.akg = getelementptr i8, ptr %gep909, i64 6
  %scevgep481 = getelementptr i8, ptr %i.akg, i64 %i.ahv
  %gep915 = getelementptr i8, ptr %invariant.gep914, i64 %i.akf
  %i.akh = getelementptr i8, ptr %gep915, i64 6
  %scevgep482 = getelementptr i8, ptr %i.akh, i64 %i.ahv
  %bound0483 = icmp ult ptr %.lcssa180, %scevgep481
  %bound1484 = icmp ult ptr %.lcssa178, %scevgep478
  %found.conflict485 = and i1 %bound0483, %bound1484
  %bound0486 = icmp ult ptr %.lcssa180, %scevgep482
  %bound1487 = icmp ult ptr %.lcssa179, %scevgep478
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %found.conflict485, %found.conflict488
  br i1 %conflict.rdx489, label %.lr.ph193.us.i.preheader, label %vector.main.loop.iter.check492

vector.main.loop.iter.check492:                   ; preds = %vector.memcheck476
  br i1 %min.iters.check493, label %vec.epilog.ph511, label %vector.ph494

vector.ph494:                                     ; preds = %vector.main.loop.iter.check492
  %i.aki = getelementptr i8, ptr %.lcssa178, i64 %i.ahp
  %i.akj = getelementptr i8, ptr %.lcssa179, i64 %i.ahp
  %i.akk = getelementptr i8, ptr %.lcssa180, i64 %i.ahq ; 2 uses
  br label %vector.body496

vector.body496:                                   ; preds = %vector.ph494, %vector.body496
  %index497 = phi i64 [ 0, %vector.ph494 ], [ %index.next504, %vector.body496 ] ; 3 uses
  %i.akl = shl i64 %index497, 1                   ; 2 uses
  %next.gep498 = getelementptr i8, ptr %.lcssa178, i64 %i.akl
  %next.gep499 = getelementptr i8, ptr %.lcssa179, i64 %i.akl
  %i.akm = shl i64 %index497, 2
  %next.gep500 = getelementptr i8, ptr %.lcssa180, i64 %i.akm
  %wide.load501 = load <32 x i16>, ptr %next.gep499, align 2, !tbaa !24, !alias.scope !143
  %wide.load502 = load <32 x i16>, ptr %next.gep498, align 2, !tbaa !24, !alias.scope !144
  %interleaved.vec503 = shufflevector <32 x i16> %wide.load501, <32 x i16> %wide.load502, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec503, ptr %next.gep500, align 2, !tbaa !24, !alias.scope !145, !noalias !146
  %index.next504 = add nuw i64 %index497, 32      ; 2 uses
  %i.akn = icmp eq i64 %index.next504, %n.vec495
  br i1 %i.akn, label %middle.block505, label %vector.body496, !llvm.loop !103

middle.block505:                                  ; preds = %vector.body496
  br i1 %cmp.n506, label %._crit_edge.us.i, label %vec.epilog.iter.check508

vec.epilog.iter.check508:                         ; preds = %middle.block505
  br i1 %min.epilog.iters.check510, label %.lr.ph193.us.i.preheader, label %vec.epilog.ph511, !prof !22

vec.epilog.ph511:                                 ; preds = %vector.main.loop.iter.check492, %vec.epilog.iter.check508
  %vec.epilog.resume.val512 = phi i64 [ %n.vec495, %vec.epilog.iter.check508 ], [ 0, %vector.main.loop.iter.check492 ]
  %i.ako = getelementptr i8, ptr %.lcssa178, i64 %i.aht
  %i.akp = getelementptr i8, ptr %.lcssa179, i64 %i.aht
  %i.akq = getelementptr i8, ptr %.lcssa180, i64 %i.ahu ; 2 uses
  br label %vec.epilog.vector.body514

vec.epilog.vector.body514:                        ; preds = %vec.epilog.vector.body514, %vec.epilog.ph511
  %index515 = phi i64 [ %vec.epilog.resume.val512, %vec.epilog.ph511 ], [ %index.next522, %vec.epilog.vector.body514 ] ; 3 uses
  %i.akr = shl i64 %index515, 1                   ; 2 uses
  %next.gep516 = getelementptr i8, ptr %.lcssa178, i64 %i.akr
  %next.gep517 = getelementptr i8, ptr %.lcssa179, i64 %i.akr
  %i.aks = shl i64 %index515, 2
  %next.gep518 = getelementptr i8, ptr %.lcssa180, i64 %i.aks
  %wide.load519 = load <8 x i16>, ptr %next.gep517, align 2, !tbaa !24, !alias.scope !143
  %wide.load520 = load <8 x i16>, ptr %next.gep516, align 2, !tbaa !24, !alias.scope !144
  %interleaved.vec521 = shufflevector <8 x i16> %wide.load519, <8 x i16> %wide.load520, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i16> %interleaved.vec521, ptr %next.gep518, align 2, !tbaa !24, !alias.scope !145, !noalias !146
  %index.next522 = add nuw i64 %index515, 8       ; 2 uses
  %i.akt = icmp eq i64 %index.next522, %n.vec513
  br i1 %i.akt, label %vec.epilog.middle.block523, label %vec.epilog.vector.body514, !llvm.loop !104

vec.epilog.middle.block523:                       ; preds = %vec.epilog.vector.body514
  br i1 %cmp.n524, label %._crit_edge.us.i, label %.lr.ph193.us.i.preheader

.lr.ph193.us.i.preheader:                         ; preds = %iter.check507, %vector.memcheck476, %vec.epilog.iter.check508, %vec.epilog.middle.block523
  %.1346192.us.i.ph = phi i32 [ %i.afi, %iter.check507 ], [ %i.afi, %vector.memcheck476 ], [ %i.aho, %vec.epilog.iter.check508 ], [ %i.ahs, %vec.epilog.middle.block523 ] ; 4 uses
  %.1348191.us.i.ph = phi ptr [ %.lcssa178, %iter.check507 ], [ %.lcssa178, %vector.memcheck476 ], [ %i.aki, %vec.epilog.iter.check508 ], [ %i.ako, %vec.epilog.middle.block523 ] ; 2 uses
  %.1350190.us.i.ph = phi ptr [ %.lcssa179, %iter.check507 ], [ %.lcssa179, %vector.memcheck476 ], [ %i.akj, %vec.epilog.iter.check508 ], [ %i.akp, %vec.epilog.middle.block523 ] ; 2 uses
  %.32189.us.i.ph = phi ptr [ %.lcssa180, %iter.check507 ], [ %.lcssa180, %vector.memcheck476 ], [ %i.akk, %vec.epilog.iter.check508 ], [ %i.akq, %vec.epilog.middle.block523 ] ; 2 uses
  %i.aku = sub i32 %5, %.1346192.us.i.ph
  %xtraiter816 = and i32 %i.aku, 3                ; 2 uses
  %lcmp.mod817.not = icmp eq i32 %xtraiter816, 0
  br i1 %lcmp.mod817.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol

.lr.ph193.us.i.prol:                              ; preds = %.lr.ph193.us.i.preheader, %.lr.ph193.us.i.prol
  %.1346192.us.i.prol = phi i32 [ %i.alb, %.lr.ph193.us.i.prol ], [ %.1346192.us.i.ph, %.lr.ph193.us.i.preheader ]
  %.1348191.us.i.prol = phi ptr [ %i.ala, %.lr.ph193.us.i.prol ], [ %.1348191.us.i.ph, %.lr.ph193.us.i.preheader ] ; 2 uses
  %.1350190.us.i.prol = phi ptr [ %i.akz, %.lr.ph193.us.i.prol ], [ %.1350190.us.i.ph, %.lr.ph193.us.i.preheader ] ; 2 uses
  %.32189.us.i.prol = phi ptr [ %i.aky, %.lr.ph193.us.i.prol ], [ %.32189.us.i.ph, %.lr.ph193.us.i.preheader ] ; 3 uses
  %prol.iter818 = phi i32 [ %prol.iter818.next, %.lr.ph193.us.i.prol ], [ 0, %.lr.ph193.us.i.preheader ]
  %i.akv = load i16, ptr %.1350190.us.i.prol, align 2, !tbaa !24
  store i16 %i.akv, ptr %.32189.us.i.prol, align 2, !tbaa !24
  %i.akw = load i16, ptr %.1348191.us.i.prol, align 2, !tbaa !24
  %i.akx = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 2
  store i16 %i.akw, ptr %i.akx, align 2, !tbaa !24
  %i.aky = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 4 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.1350190.us.i.prol, i64 2 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.1348191.us.i.prol, i64 2 ; 2 uses
  %i.alb = add nuw nsw i32 %.1346192.us.i.prol, 1 ; 2 uses
  %prol.iter818.next = add i32 %prol.iter818, 1   ; 2 uses
  %prol.iter818.cmp.not = icmp eq i32 %prol.iter818.next, %xtraiter816
  br i1 %prol.iter818.cmp.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol, !llvm.loop !105

.lr.ph193.us.i.prol.loopexit:                     ; preds = %.lr.ph193.us.i.prol, %.lr.ph193.us.i.preheader
  %.lcssa692.unr = phi ptr [ poison, %.lr.ph193.us.i.preheader ], [ %i.aky, %.lr.ph193.us.i.prol ]
  %.1346192.us.i.unr = phi i32 [ %.1346192.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.alb, %.lr.ph193.us.i.prol ]
  %.1348191.us.i.unr = phi ptr [ %.1348191.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.ala, %.lr.ph193.us.i.prol ]
  %.1350190.us.i.unr = phi ptr [ %.1350190.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.akz, %.lr.ph193.us.i.prol ]
  %.32189.us.i.unr = phi ptr [ %.32189.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.aky, %.lr.ph193.us.i.prol ]
  %i.alc = sub i32 %.1346192.us.i.ph, %5
  %i.ald = icmp ugt i32 %i.alc, -4
  br i1 %i.ald, label %._crit_edge.us.i, label %.lr.ph193.us.i

.lr.ph197.split.i:                                ; preds = %.lr.ph197.i
  %i.ale = icmp eq i32 %5, 1
  br i1 %i.ale, label %.preheader5.us201.preheader.i, label %.preheader5.preheader.i

.preheader5.preheader.i:                          ; preds = %.lr.ph197.split.i
  %i.alf = add i32 %3, -2
  %i.alg = sub i32 %i.alf, %.2370.lcssa.i
  %i.alh = and i32 %i.alg, -2
  %i.ali = add i32 %.2370.lcssa.i, 2
  %i.alj = add i32 %i.ali, %i.alh
  br label %.preheader4.i

.preheader5.us201.preheader.i:                    ; preds = %.lr.ph197.split.i
  %i.alk = sext i32 %.2370.lcssa.i to i64
  %i.all = sext i32 %2 to i64
  %i.alm = sext i32 %3 to i64
  %invariant.op402.i = add nsw i64 %i.alm, -1
  br label %._crit_edge.us210.i

._crit_edge.us210.i:                              ; preds = %._crit_edge.us210.i, %.preheader5.us201.preheader.i
  %indvars.iv316.i = phi i64 [ %i.alk, %.preheader5.us201.preheader.i ], [ %indvars.iv.next317.i, %._crit_edge.us210.i ] ; 2 uses
  %.30196.us202.i = phi ptr [ %.23.lcssa.i, %.preheader5.us201.preheader.i ], [ %i.aln, %._crit_edge.us210.i ] ; 3 uses
  %i.aln = getelementptr i8, ptr %.30196.us202.i, i64 4 ; 2 uses
  %i.alo = add nsw i64 %indvars.iv316.i, %i.all
  %i.alp = mul i64 %i.alo, %i.k
  %gep.us204.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.alp ; 2 uses
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr %gep.us204.i, i64 %i.k
  %i.alr = load i16, ptr %gep.us204.i, align 2, !tbaa !24
  store i16 %i.alr, ptr %.30196.us202.i, align 2, !tbaa !24
  %i.als = load i16, ptr %i.alq, align 2, !tbaa !24
  %i.alt = getelementptr inbounds nuw i8, ptr %.30196.us202.i, i64 2
  store i16 %i.als, ptr %i.alt, align 2, !tbaa !24
  %indvars.iv.next317.i = add nuw nsw i64 %indvars.iv316.i, 2 ; 3 uses
  %i.alu = icmp slt i64 %indvars.iv.next317.i, %invariant.op402.i
  br i1 %i.alu, label %._crit_edge.us210.i, label %.preheader4.loopexit234.i, !llvm.loop !98

.preheader4.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.alv = trunc nsw i64 %indvars.iv.next321.i to i32
  br label %.preheader4.i

.preheader4.loopexit234.i:                        ; preds = %._crit_edge.us210.i
  %i.alw = trunc nsw i64 %indvars.iv.next317.i to i32
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %.preheader4.loopexit234.i, %.preheader4.loopexit.i, %.preheader5.preheader.i, %.preheader6.i
  %.3371.lcssa.i = phi i32 [ %.2370.lcssa.i, %.preheader6.i ], [ %i.alw, %.preheader4.loopexit234.i ], [ %i.alv, %.preheader4.loopexit.i ], [ %i.alj, %.preheader5.preheader.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.23.lcssa.i, %.preheader6.i ], [ %i.aln, %.preheader4.loopexit234.i ], [ %.32.lcssa.us.i, %.preheader4.loopexit.i ], [ %.23.lcssa.i, %.preheader5.preheader.i ]
  %i.alx = icmp slt i32 %.3371.lcssa.i, %3
  br i1 %i.alx, label %.lr.ph231.i, label %_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii.exit

.lr.ph231.i:                                      ; preds = %.preheader4.i
  %i.aly = load ptr, ptr %0, align 8, !tbaa !14   ; 3 uses
  %i.alz = sext i32 %4 to i64                     ; 3 uses
  %invariant.gep233.i = getelementptr [2 x i8], ptr %i.aly, i64 %i.alz
  %i.ama = icmp sgt i32 %5, 1
  %i.amb = and i32 %5, -2                         ; 3 uses
  %i.amc = sext i32 %.3371.lcssa.i to i64         ; 2 uses
  %i.amd = sext i32 %2 to i64                     ; 3 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %i.ame = add i32 %5, -2
  %i.amf = lshr i32 %i.ame, 1
  %i.amg = zext nneg i32 %i.amf to i64
  %i.amh = shl nuw nsw i64 %i.amg, 2              ; 2 uses
  %i.ami = add nsw i64 %i.amc, %i.amd
  %i.amj = mul i64 %i.k, %i.ami
  %i.amk = shl nsw i64 %i.alz, 1
  %i.aml = add i64 %i.amj, %i.alz
  %i.amm = shl i64 %i.aml, 1
  %scevgep634 = getelementptr i8, ptr %i.aly, i64 %i.amm
  %i.amn = add nsw i64 %wide.trip.count.i, %i.amd
  %i.amo = shl nsw i64 %i.amn, 1
  %i.amp = add nsw i64 %i.amo, -2
  %i.amq = mul i64 %i.k, %i.amp
  %i.amr = getelementptr i8, ptr %i.aly, i64 %i.amq
  %i.ams = getelementptr i8, ptr %i.amr, i64 %i.amh
  %i.amt = getelementptr i8, ptr %i.ams, i64 %i.amk
  %scevgep635 = getelementptr i8, ptr %i.amt, i64 4
  %i.amu = add i32 %5, -2                         ; 3 uses
  %i.amv = lshr i32 %i.amu, 1
  %narrow684 = add nuw i32 %i.amv, 1
  %i.amw = zext i32 %narrow684 to i64             ; 5 uses
  %min.iters.check640 = icmp ult i32 %i.amu, 14
  %min.iters.check642 = icmp ult i32 %i.amu, 126
  %i.amx = and i64 %i.amw, 56
  %n.vec644 = and i64 %i.amw, 4294967232          ; 5 uses
  %i.amy = trunc nuw i64 %n.vec644 to i32
  %i.amz = shl i32 %i.amy, 1
  %i.ana = shl nuw nsw i64 %n.vec644, 2           ; 2 uses
  %cmp.n661 = icmp eq i64 %n.vec644, %i.amw
  %min.epilog.iters.check665 = icmp eq i64 %i.amx, 0
  %n.vec668 = and i64 %i.amw, 4294967288          ; 4 uses
  %i.anb = trunc nuw i64 %n.vec668 to i32
  %i.anc = shl i32 %i.anb, 1
  %i.and = shl nuw nsw i64 %n.vec668, 2           ; 2 uses
  %cmp.n679 = icmp eq i64 %n.vec668, %i.amw
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph231.i
  %indvars.iv324.i = phi i64 [ %i.amc, %.lr.ph231.i ], [ %indvars.iv.next325.i, %._crit_edge.i ] ; 2 uses
  %.33230.i = phi ptr [ %.30.lcssa.i, %.lr.ph231.i ], [ %.35.lcssa.i, %._crit_edge.i ] ; 10 uses
  %i.ane = add nsw i64 %indvars.iv324.i, %i.amd
  %i.anf = mul i64 %i.ane, %i.k
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep233.i, i64 %i.anf ; 8 uses
  br i1 %i.ama, label %iter.check662, label %.preheader.i

iter.check662:                                    ; preds = %bb.i
  br i1 %min.iters.check640, label %.lr.ph220.i.preheader, label %vector.memcheck632

vector.memcheck632:                               ; preds = %iter.check662
  %i.ang = getelementptr i8, ptr %.33230.i, i64 %i.amh
  %scevgep633 = getelementptr i8, ptr %i.ang, i64 4
  %bound0636 = icmp ult ptr %.33230.i, %scevgep635
  %bound1637 = icmp ult ptr %scevgep634, %scevgep633
  %found.conflict638 = and i1 %bound0636, %bound1637
  br i1 %found.conflict638, label %.lr.ph220.i.preheader, label %vector.main.loop.iter.check641

vector.main.loop.iter.check641:                   ; preds = %vector.memcheck632
  br i1 %min.iters.check642, label %vec.epilog.ph666, label %vector.ph643

vector.ph643:                                     ; preds = %vector.main.loop.iter.check641
  %i.anh = getelementptr i8, ptr %gep.i, i64 %i.ana ; 2 uses
  %i.ani = getelementptr i8, ptr %.33230.i, i64 %i.ana ; 2 uses
  br label %vector.body645

vector.body645:                                   ; preds = %vector.ph643, %vector.body645
  %index646 = phi i64 [ 0, %vector.ph643 ], [ %index.next659, %vector.body645 ] ; 2 uses
  %i.anj = shl i64 %index646, 2                   ; 3 uses
  %i.ank = or disjoint i64 %i.anj, 128            ; 2 uses
  %next.gep647 = getelementptr i8, ptr %gep.i, i64 %i.anj
  %next.gep648 = getelementptr i8, ptr %gep.i, i64 %i.ank
  %next.gep649 = getelementptr i8, ptr %.33230.i, i64 %i.anj
  %next.gep650 = getelementptr i8, ptr %.33230.i, i64 %i.ank
  %wide.vec651 = load <64 x i16>, ptr %next.gep647, align 2, !tbaa !24, !alias.scope !147
  %wide.vec654 = load <64 x i16>, ptr %next.gep648, align 2, !tbaa !24, !alias.scope !147
  store <64 x i16> %wide.vec651, ptr %next.gep649, align 2, !tbaa !24, !alias.scope !148, !noalias !147
  store <64 x i16> %wide.vec654, ptr %next.gep650, align 2, !tbaa !24, !alias.scope !148, !noalias !147
  %index.next659 = add nuw i64 %index646, 64      ; 2 uses
  %i.anl = icmp eq i64 %index.next659, %n.vec644
  br i1 %i.anl, label %middle.block660, label %vector.body645, !llvm.loop !109

middle.block660:                                  ; preds = %vector.body645
  br i1 %cmp.n661, label %.preheader.i, label %vec.epilog.iter.check663

vec.epilog.iter.check663:                         ; preds = %middle.block660
  br i1 %min.epilog.iters.check665, label %.lr.ph220.i.preheader, label %vec.epilog.ph666, !prof !26

vec.epilog.ph666:                                 ; preds = %vector.main.loop.iter.check641, %vec.epilog.iter.check663
  %vec.epilog.resume.val667 = phi i64 [ %n.vec644, %vec.epilog.iter.check663 ], [ 0, %vector.main.loop.iter.check641 ]
  %i.anm = getelementptr i8, ptr %gep.i, i64 %i.and ; 2 uses
  %i.ann = getelementptr i8, ptr %.33230.i, i64 %i.and ; 2 uses
  br label %vec.epilog.vector.body669

vec.epilog.vector.body669:                        ; preds = %vec.epilog.vector.body669, %vec.epilog.ph666
  %index670 = phi i64 [ %vec.epilog.resume.val667, %vec.epilog.ph666 ], [ %index.next677, %vec.epilog.vector.body669 ] ; 2 uses
  %i.ano = shl i64 %index670, 2                   ; 2 uses
  %next.gep671 = getelementptr i8, ptr %gep.i, i64 %i.ano
  %next.gep672 = getelementptr i8, ptr %.33230.i, i64 %i.ano
  %wide.vec673 = load <16 x i16>, ptr %next.gep671, align 2, !tbaa !24, !alias.scope !147
  store <16 x i16> %wide.vec673, ptr %next.gep672, align 2, !tbaa !24, !alias.scope !148, !noalias !147
  %index.next677 = add nuw i64 %index670, 8       ; 2 uses
  %i.anp = icmp eq i64 %index.next677, %n.vec668
  br i1 %i.anp, label %vec.epilog.middle.block678, label %vec.epilog.vector.body669, !llvm.loop !110

vec.epilog.middle.block678:                       ; preds = %vec.epilog.vector.body669
  br i1 %cmp.n679, label %.preheader.i, label %.lr.ph220.i.preheader

.lr.ph220.i.preheader:                            ; preds = %iter.check662, %vector.memcheck632, %vec.epilog.iter.check663, %vec.epilog.middle.block678
  %.0219.i.ph = phi i32 [ 0, %iter.check662 ], [ 0, %vector.memcheck632 ], [ %i.amz, %vec.epilog.iter.check663 ], [ %i.anc, %vec.epilog.middle.block678 ]
  %.0343218.i.ph = phi ptr [ %gep.i, %iter.check662 ], [ %gep.i, %vector.memcheck632 ], [ %i.anh, %vec.epilog.iter.check663 ], [ %i.anm, %vec.epilog.middle.block678 ]
  %.34217.i.ph = phi ptr [ %.33230.i, %iter.check662 ], [ %.33230.i, %vector.memcheck632 ], [ %i.ani, %vec.epilog.iter.check663 ], [ %i.ann, %vec.epilog.middle.block678 ]
  br label %.lr.ph220.i

.preheader.i:                                     ; preds = %.lr.ph220.i, %middle.block660, %vec.epilog.middle.block678, %bb.i
  %.34.lcssa.i = phi ptr [ %.33230.i, %bb.i ], [ %i.ann, %vec.epilog.middle.block678 ], [ %i.ani, %middle.block660 ], [ %i.apc, %.lr.ph220.i ] ; 7 uses
  %.0343.lcssa.i = phi ptr [ %gep.i, %bb.i ], [ %i.anm, %vec.epilog.middle.block678 ], [ %i.anh, %middle.block660 ], [ %i.apd, %.lr.ph220.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.amb, %vec.epilog.middle.block678 ], [ %i.amb, %middle.block660 ], [ %i.amb, %.lr.ph220.i ] ; 5 uses
  %i.anq = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.anq, label %iter.check614, label %._crit_edge.i

iter.check614:                                    ; preds = %.preheader.i
  %.0343.lcssa.i595 = ptrtoaddr ptr %.0343.lcssa.i to i64
  %.34.lcssa.i594 = ptrtoaddr ptr %.34.lcssa.i to i64
  %i.anr = xor i32 %.0.lcssa.i, -1
  %i.ans = add i32 %5, %i.anr                     ; 3 uses
  %i.ant = zext i32 %i.ans to i64
  %i.anu = add nuw nsw i64 %i.ant, 1              ; 5 uses
  %min.iters.check598 = icmp ult i32 %i.ans, 15
  %i.anv = sub i64 %.0343.lcssa.i595, %.34.lcssa.i594
  %diff.check596 = icmp ugt i64 %i.anv, -256
  %or.cond685 = select i1 %min.iters.check598, i1 true, i1 %diff.check596
  br i1 %or.cond685, label %.lr.ph227.i.preheader, label %vector.main.loop.iter.check599

vector.main.loop.iter.check599:                   ; preds = %iter.check614
  %min.iters.check600 = icmp ult i32 %i.ans, 127
  br i1 %min.iters.check600, label %vec.epilog.ph618, label %vector.ph601

vector.ph601:                                     ; preds = %vector.main.loop.iter.check599
  %i.anw = and i64 %i.anu, 112
  %n.vec602 = and i64 %i.anu, 8589934464          ; 5 uses
  %i.anx = trunc i64 %n.vec602 to i32
  %i.any = add i32 %.0.lcssa.i, %i.anx
  %i.anz = shl nuw nsw i64 %n.vec602, 1           ; 2 uses
  %i.aoa = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.anz
  %i.aob = getelementptr i8, ptr %.34.lcssa.i, i64 %i.anz ; 2 uses
  br label %vector.body603

vector.body603:                                   ; preds = %vector.ph601, %vector.body603
  %index604 = phi i64 [ 0, %vector.ph601 ], [ %index.next611, %vector.body603 ] ; 2 uses
  %i.aoc = shl i64 %index604, 1                   ; 2 uses
  %next.gep605 = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aoc ; 4 uses
  %next.gep606 = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aoc ; 4 uses
  %i.aod = getelementptr i8, ptr %next.gep605, i64 64
  %i.aoe = getelementptr i8, ptr %next.gep605, i64 128
  %i.aof = getelementptr i8, ptr %next.gep605, i64 192
  %wide.load607 = load <32 x i16>, ptr %next.gep605, align 2, !tbaa !24
  %wide.load608 = load <32 x i16>, ptr %i.aod, align 2, !tbaa !24
  %wide.load609 = load <32 x i16>, ptr %i.aoe, align 2, !tbaa !24
  %wide.load610 = load <32 x i16>, ptr %i.aof, align 2, !tbaa !24
  %i.aog = getelementptr i8, ptr %next.gep606, i64 64
  %i.aoh = getelementptr i8, ptr %next.gep606, i64 128
  %i.aoi = getelementptr i8, ptr %next.gep606, i64 192
  store <32 x i16> %wide.load607, ptr %next.gep606, align 2, !tbaa !24
  store <32 x i16> %wide.load608, ptr %i.aog, align 2, !tbaa !24
  store <32 x i16> %wide.load609, ptr %i.aoh, align 2, !tbaa !24
  store <32 x i16> %wide.load610, ptr %i.aoi, align 2, !tbaa !24
  %index.next611 = add nuw i64 %index604, 128     ; 2 uses
  %i.aoj = icmp eq i64 %index.next611, %n.vec602
  br i1 %i.aoj, label %middle.block612, label %vector.body603, !llvm.loop !111

middle.block612:                                  ; preds = %vector.body603
  %cmp.n613 = icmp eq i64 %i.anu, %n.vec602
  br i1 %cmp.n613, label %._crit_edge.i, label %vec.epilog.iter.check615

vec.epilog.iter.check615:                         ; preds = %middle.block612
  %min.epilog.iters.check617 = icmp eq i64 %i.anw, 0
  br i1 %min.epilog.iters.check617, label %.lr.ph227.i.preheader, label %vec.epilog.ph618, !prof !27

vec.epilog.ph618:                                 ; preds = %vector.main.loop.iter.check599, %vec.epilog.iter.check615
  %vec.epilog.resume.val619 = phi i64 [ %n.vec602, %vec.epilog.iter.check615 ], [ 0, %vector.main.loop.iter.check599 ]
  %n.vec620 = and i64 %i.anu, 8589934576          ; 4 uses
  %i.aok = trunc i64 %n.vec620 to i32
  %i.aol = add i32 %.0.lcssa.i, %i.aok
  %i.aom = shl nuw nsw i64 %n.vec620, 1           ; 2 uses
  %i.aon = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aom
  %i.aoo = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aom ; 2 uses
  br label %vec.epilog.vector.body621

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621, %vec.epilog.ph618
  %index622 = phi i64 [ %vec.epilog.resume.val619, %vec.epilog.ph618 ], [ %index.next626, %vec.epilog.vector.body621 ] ; 2 uses
  %i.aop = shl i64 %index622, 1                   ; 2 uses
  %next.gep623 = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aop
  %next.gep624 = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aop
  %wide.load625 = load <16 x i16>, ptr %next.gep623, align 2, !tbaa !24
  store <16 x i16> %wide.load625, ptr %next.gep624, align 2, !tbaa !24
  %index.next626 = add nuw i64 %index622, 16      ; 2 uses
  %i.aoq = icmp eq i64 %index.next626, %n.vec620
  br i1 %i.aoq, label %vec.epilog.middle.block627, label %vec.epilog.vector.body621, !llvm.loop !112

vec.epilog.middle.block627:                       ; preds = %vec.epilog.vector.body621
  %cmp.n628 = icmp eq i64 %i.anu, %n.vec620
  br i1 %cmp.n628, label %._crit_edge.i, label %.lr.ph227.i.preheader

.lr.ph227.i.preheader:                            ; preds = %iter.check614, %vec.epilog.iter.check615, %vec.epilog.middle.block627
  %.1226.i.ph = phi i32 [ %.0.lcssa.i, %iter.check614 ], [ %i.any, %vec.epilog.iter.check615 ], [ %i.aol, %vec.epilog.middle.block627 ] ; 4 uses
  %.1344225.i.ph = phi ptr [ %.0343.lcssa.i, %iter.check614 ], [ %i.aoa, %vec.epilog.iter.check615 ], [ %i.aon, %vec.epilog.middle.block627 ] ; 2 uses
  %.35224.i.ph = phi ptr [ %.34.lcssa.i, %iter.check614 ], [ %i.aob, %vec.epilog.iter.check615 ], [ %i.aoo, %vec.epilog.middle.block627 ] ; 2 uses
  %i.aor = sub i32 %5, %.1226.i.ph
  %xtraiter819 = and i32 %i.aor, 7                ; 2 uses
  %lcmp.mod820.not = icmp eq i32 %xtraiter819, 0
  br i1 %lcmp.mod820.not, label %.lr.ph227.i.prol.loopexit, label %.lr.ph227.i.prol

.lr.ph227.i.prol:                                 ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i.prol
  %.1226.i.prol = phi i32 [ %i.aov, %.lr.ph227.i.prol ], [ %.1226.i.ph, %.lr.ph227.i.preheader ]
  %.1344225.i.prol = phi ptr [ %i.aou, %.lr.ph227.i.prol ], [ %.1344225.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %.35224.i.prol = phi ptr [ %i.aot, %.lr.ph227.i.prol ], [ %.35224.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %prol.iter821 = phi i32 [ %prol.iter821.next, %.lr.ph227.i.prol ], [ 0, %.lr.ph227.i.preheader ]
  %i.aos = load i16, ptr %.1344225.i.prol, align 2, !tbaa !24
  store i16 %i.aos, ptr %.35224.i.prol, align 2, !tbaa !24
  %i.aot = getelementptr inbounds nuw i8, ptr %.35224.i.prol, i64 2 ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %.1344225.i.prol, i64 2 ; 2 uses
  %i.aov = add nuw nsw i32 %.1226.i.prol, 1       ; 2 uses
  %prol.iter821.next = add i32 %prol.iter821, 1   ; 2 uses
  %prol.iter821.cmp.not = icmp eq i32 %prol.iter821.next, %xtraiter819
  br i1 %prol.iter821.cmp.not, label %.lr.ph227.i.prol.loopexit, label %.lr.ph227.i.prol, !llvm.loop !113

.lr.ph227.i.prol.loopexit:                        ; preds = %.lr.ph227.i.prol, %.lr.ph227.i.preheader
  %.lcssa687.unr = phi ptr [ poison, %.lr.ph227.i.preheader ], [ %i.aot, %.lr.ph227.i.prol ]
  %.1226.i.unr = phi i32 [ %.1226.i.ph, %.lr.ph227.i.preheader ], [ %i.aov, %.lr.ph227.i.prol ]
  %.1344225.i.unr = phi ptr [ %.1344225.i.ph, %.lr.ph227.i.preheader ], [ %i.aou, %.lr.ph227.i.prol ]
  %.35224.i.unr = phi ptr [ %.35224.i.ph, %.lr.ph227.i.preheader ], [ %i.aot, %.lr.ph227.i.prol ]
  %i.aow = sub i32 %.1226.i.ph, %5
  %i.aox = icmp ugt i32 %i.aow, -8
  br i1 %i.aox, label %._crit_edge.i, label %.lr.ph227.i

.lr.ph220.i:                                      ; preds = %.lr.ph220.i.preheader, %.lr.ph220.i
  %.0219.i = phi i32 [ %i.ape, %.lr.ph220.i ], [ %.0219.i.ph, %.lr.ph220.i.preheader ]
  %.0343218.i = phi ptr [ %i.apd, %.lr.ph220.i ], [ %.0343218.i.ph, %.lr.ph220.i.preheader ] ; 3 uses
  %.34217.i = phi ptr [ %i.apc, %.lr.ph220.i ], [ %.34217.i.ph, %.lr.ph220.i.preheader ] ; 3 uses
  %i.aoy = load i16, ptr %.0343218.i, align 2, !tbaa !24
  store i16 %i.aoy, ptr %.34217.i, align 2, !tbaa !24
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0343218.i, i64 2
  %i.apa = load i16, ptr %i.aoz, align 2, !tbaa !24
  %i.apb = getelementptr inbounds nuw i8, ptr %.34217.i, i64 2
  store i16 %i.apa, ptr %i.apb, align 2, !tbaa !24
  %i.apc = getelementptr inbounds nuw i8, ptr %.34217.i, i64 4 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.0343218.i, i64 4 ; 2 uses
  %i.ape = add nuw nsw i32 %.0219.i, 2            ; 2 uses
  %i.apf = or disjoint i32 %i.ape, 1
  %i.apg = icmp slt i32 %i.apf, %5
  br i1 %i.apg, label %.lr.ph220.i, label %.preheader.i, !llvm.loop !114

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.prol.loopexit, %.lr.ph227.i
  %.1226.i = phi i32 [ %i.aqf, %.lr.ph227.i ], [ %.1226.i.unr, %.lr.ph227.i.prol.loopexit ]
  %.1344225.i = phi ptr [ %i.aqe, %.lr.ph227.i ], [ %.1344225.i.unr, %.lr.ph227.i.prol.loopexit ] ; 9 uses
  %.35224.i = phi ptr [ %i.aqd, %.lr.ph227.i ], [ %.35224.i.unr, %.lr.ph227.i.prol.loopexit ] ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn37transpose_pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !24
  store i16 %i.ahc, ptr %i.aha, align 2, !tbaa !24
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 2
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !24
  %i.ahf = getelementptr inbounds nuw i8, ptr %.38275.i, i64 14
  store i16 %i.ahe, ptr %i.ahf, align 2, !tbaa !24
  %i.ahg = getelementptr inbounds nuw i8, ptr %.38275.i, i64 16 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %i.ahb, i64 %i.k
  %i.ahi = add nuw nsw i32 %.1547276.i, 4         ; 2 uses
  %exitcond415.not.i.3 = icmp eq i32 %i.ahi, %5
  br i1 %exitcond415.not.i.3, label %.loopexit108.i, label %.lr.ph277.i, !llvm.loop !175

.loopexit108.i.loopexit204.unr-lcssa:             ; preds = %.lr.ph258.i
  br i1 %lcmp.mod283.not.not, label %.lr.ph258.i.epil.preheader, label %.loopexit108.i

.lr.ph258.i.epil.preheader:                       ; preds = %.loopexit108.i.loopexit204.unr-lcssa, %.lr.ph258.i.preheader
  %.33257.i.epil.init = phi ptr [ %.30280.i, %.lr.ph258.i.preheader ], [ %i.adm, %.loopexit108.i.loopexit204.unr-lcssa ] ; 3 uses
  %.2565255.i.epil.init = phi ptr [ %i.ach, %.lr.ph258.i.preheader ], [ %i.adn, %.loopexit108.i.loopexit204.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.ahj = load <4 x i32>, ptr %.2565255.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.2565255.i.epil.init, i64 16
  %i.ahl = load <4 x i32>, ptr %i.ahk, align 1, !tbaa !17 ; 2 uses
  %i.ahm = shufflevector <4 x i32> %i.ahj, <4 x i32> %i.ahl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ahn = shufflevector <4 x i32> %i.ahj, <4 x i32> %i.ahl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.ahm, ptr %.33257.i.epil.init, align 1, !tbaa !17
  %i.aho = getelementptr inbounds nuw i8, ptr %.33257.i.epil.init, i64 16
  store <4 x i32> %i.ahn, ptr %i.aho, align 1, !tbaa !17
  %i.ahp = getelementptr inbounds nuw i8, ptr %.33257.i.epil.init, i64 32
  br label %.loopexit108.i

.loopexit108.i.loopexit205.unr-lcssa:             ; preds = %.lr.ph252.i
  br i1 %lcmp.mod277.not.not, label %.lr.ph252.i.epil.preheader, label %.loopexit108.i

.lr.ph252.i.epil.preheader:                       ; preds = %.loopexit108.i.loopexit205.unr-lcssa, %.lr.ph252.i.preheader
  %.31251.i.epil.init = phi ptr [ %.30280.i, %.lr.ph252.i.preheader ], [ %i.acw, %.loopexit108.i.loopexit205.unr-lcssa ] ; 3 uses
  %.0563249.i.epil.init = phi ptr [ %i.ach, %.lr.ph252.i.preheader ], [ %i.acx, %.loopexit108.i.loopexit205.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.ahq = load <8 x i32>, ptr %.0563249.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0563249.i.epil.init, i64 32
  %i.ahs = load <8 x i32>, ptr %i.ahr, align 1, !tbaa !17 ; 2 uses
  %i.aht = shufflevector <8 x i32> %i.ahq, <8 x i32> %i.ahs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahu = shufflevector <8 x i32> %i.ahq, <8 x i32> %i.ahs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %i.aht, ptr %.31251.i.epil.init, align 1, !tbaa !17
  %i.ahv = getelementptr inbounds nuw i8, ptr %.31251.i.epil.init, i64 32
  store <8 x i32> %i.ahu, ptr %i.ahv, align 1, !tbaa !17
  %i.ahw = getelementptr inbounds nuw i8, ptr %.31251.i.epil.init, i64 64
  br label %.loopexit108.i

.loopexit108.i:                                   ; preds = %.lr.ph252.i.epil.preheader, %.loopexit108.i.loopexit205.unr-lcssa, %.lr.ph258.i.epil.preheader, %.loopexit108.i.loopexit204.unr-lcssa, %.lr.ph264.i, %.lr.ph277.i.prol.loopexit, %.lr.ph277.i, %.preheader107.i, %.loopexit111.i
  %.39.i = phi ptr [ %.30280.i, %.loopexit111.i ], [ %.37.lcssa.i, %.preheader107.i ], [ %i.ahg, %.lr.ph277.i ], [ %i.aek, %.lr.ph264.i ], [ %i.ahp, %.lr.ph258.i.epil.preheader ], [ %.lcssa211.unr, %.lr.ph277.i.prol.loopexit ], [ %i.adm, %.loopexit108.i.loopexit204.unr-lcssa ], [ %i.acw, %.loopexit108.i.loopexit205.unr-lcssa ], [ %i.ahw, %.lr.ph252.i.epil.preheader ] ; 2 uses
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 2 ; 3 uses
  %i.ahx = icmp slt i64 %indvars.iv.next417.i, %invariant.op522.i
  br i1 %i.ahx, label %bb.b, label %.preheader106.loopexit.i, !llvm.loop !176

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph309.i
  %indvars.iv420.i = phi i64 [ %i.abt, %.lr.ph309.i ], [ %indvars.iv.next421.i, %.loopexit.i ] ; 2 uses
  %.40308.i = phi ptr [ %.30.lcssa.i, %.lr.ph309.i ], [ %.48.i, %.loopexit.i ] ; 6 uses
  %i.ahy = load ptr, ptr %0, align 8, !tbaa !14
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.abm
  %i.aia = add nsw i64 %indvars.iv420.i, %i.abu
  %i.aib = mul nsw i64 %i.aia, %i.abv
  %i.aic = getelementptr inbounds [2 x i8], ptr %i.ahz, i64 %i.aib ; 5 uses
  br i1 %i.abx, label %.loopexit105.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %bb.c, %.lr.ph287.i
  %.0544286.i = phi i32 [ %i.aig, %.lr.ph287.i ], [ 0, %bb.c ]
  %.0545285.i = phi ptr [ %i.aif, %.lr.ph287.i ], [ %i.aic, %bb.c ] ; 2 uses
  %.41284.i = phi ptr [ %i.aie, %.lr.ph287.i ], [ %.40308.i, %bb.c ] ; 2 uses
  %i.aid = load <4 x i64>, ptr %.0545285.i, align 1, !tbaa !17
  store <4 x i64> %i.aid, ptr %.41284.i, align 1, !tbaa !17
  %i.aie = getelementptr inbounds nuw i8, ptr %.41284.i, i64 32 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.0545285.i, i64 %.idx611.i
  %i.aig = add nuw nsw i32 %.0544286.i, 16        ; 2 uses
  %i.aih = or disjoint i32 %i.aig, 15
  %i.aii = icmp slt i32 %i.aih, %5
  br i1 %i.aii, label %.lr.ph287.i, label %.loopexit.i, !llvm.loop !177

.loopexit105.i:                                   ; preds = %bb.c
  br i1 %i.aby, label %.loopexit103.i, label %.lr.ph293.i

.lr.ph293.i:                                      ; preds = %.loopexit105.i, %.lr.ph293.i
  %.0543292.i = phi i32 [ %i.aim, %.lr.ph293.i ], [ 0, %.loopexit105.i ]
  %.2291.i = phi ptr [ %i.ail, %.lr.ph293.i ], [ %i.aic, %.loopexit105.i ] ; 2 uses
  %.43290.i = phi ptr [ %i.aik, %.lr.ph293.i ], [ %.40308.i, %.loopexit105.i ] ; 2 uses
  %i.aij = load <2 x i64>, ptr %.2291.i, align 1, !tbaa !17
  store <2 x i64> %i.aij, ptr %.43290.i, align 1, !tbaa !17
  %i.aik = getelementptr inbounds nuw i8, ptr %.43290.i, i64 16 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.2291.i, i64 %.idx610.i
  %i.aim = add nuw nsw i32 %.0543292.i, 8         ; 2 uses
  %i.ain = or disjoint i32 %i.aim, 7
  %i.aio = icmp slt i32 %i.ain, %5
  br i1 %i.aio, label %.lr.ph293.i, label %.loopexit.i, !llvm.loop !178

.loopexit103.i:                                   ; preds = %.loopexit105.i
  br i1 %i.abz, label %.loopexit101.i, label %.lr.ph299.i

.lr.ph299.i:                                      ; preds = %.loopexit103.i, %.lr.ph299.i
  %.0542298.i = phi i32 [ %i.ais, %.lr.ph299.i ], [ 0, %.loopexit103.i ]
  %.4297.i = phi ptr [ %i.air, %.lr.ph299.i ], [ %i.aic, %.loopexit103.i ] ; 2 uses
  %.45296.i = phi ptr [ %i.aiq, %.lr.ph299.i ], [ %.40308.i, %.loopexit103.i ] ; 2 uses
  %i.aip = load i64, ptr %.4297.i, align 1, !tbaa !17
  store i64 %i.aip, ptr %.45296.i, align 1, !tbaa !17
  %i.aiq = getelementptr inbounds nuw i8, ptr %.45296.i, i64 8 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.4297.i, i64 %.idx.i
  %i.ais = add nuw nsw i32 %.0542298.i, 4         ; 2 uses
  %i.ait = or disjoint i32 %i.ais, 3
  %i.aiu = icmp slt i32 %i.ait, %5
  br i1 %i.aiu, label %.lr.ph299.i, label %.loopexit.i, !llvm.loop !179

.loopexit101.i:                                   ; preds = %.loopexit103.i
  br i1 %i.aca, label %.loopexit.i, label %.lr.ph305.i.preheader

.lr.ph305.i.preheader:                            ; preds = %.loopexit101.i
  br i1 %i.acc, label %.lr.ph305.i.epil.preheader, label %.lr.ph305.i

.lr.ph305.i:                                      ; preds = %.lr.ph305.i.preheader, %.lr.ph305.i
  %.6303.i = phi ptr [ %i.ajs, %.lr.ph305.i ], [ %i.aic, %.lr.ph305.i.preheader ] ; 2 uses
  %.47302.i = phi ptr [ %i.ajr, %.lr.ph305.i ], [ %.40308.i, %.lr.ph305.i.preheader ] ; 9 uses
  %niter303 = phi i32 [ %niter303.next.7, %.lr.ph305.i ], [ 0, %.lr.ph305.i.preheader ]
  %i.aiv = load i16, ptr %.6303.i, align 2, !tbaa !24
  store i16 %i.aiv, ptr %.47302.i, align 2, !tbaa !24
  %i.aiw = getelementptr inbounds nuw i8, ptr %.47302.i, i64 2
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %.6303.i, i64 %i.k ; 2 uses
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !24
  store i16 %i.aiy, ptr %i.aiw, align 2, !tbaa !24
  %i.aiz = getelementptr inbounds nuw i8, ptr %.47302.i, i64 4
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %i.aix, i64 %i.k ; 2 uses
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !24
  store i16 %i.ajb, ptr %i.aiz, align 2, !tbaa !24
  %i.ajc = getelementptr inbounds nuw i8, ptr %.47302.i, i64 6
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.aja, i64 %i.k ; 2 uses
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !24
  store i16 %i.aje, ptr %i.ajc, align 2, !tbaa !24
  %i.ajf = getelementptr inbounds nuw i8, ptr %.47302.i, i64 8
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.ajd, i64 %i.k ; 2 uses
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !24
  store i16 %i.ajh, ptr %i.ajf, align 2, !tbaa !24
  %i.aji = getelementptr inbounds nuw i8, ptr %.47302.i, i64 10
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.ajg, i64 %i.k ; 2 uses
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !24
  store i16 %i.ajk, ptr %i.aji, align 2, !tbaa !24
  %i.ajl = getelementptr inbounds nuw i8, ptr %.47302.i, i64 12
  %i.ajm = getelementptr inbounds nuw [2 x i8], ptr %i.ajj, i64 %i.k ; 2 uses
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !24
  store i16 %i.ajn, ptr %i.ajl, align 2, !tbaa !24
  %i.ajo = getelementptr inbounds nuw i8, ptr %.47302.i, i64 14
  %i.ajp = getelementptr inbounds nuw [2 x i8], ptr %i.ajm, i64 %i.k ; 2 uses
  %i.ajq = load i16, ptr %i.ajp, align 2, !tbaa !24
  store i16 %i.ajq, ptr %i.ajo, align 2, !tbaa !24
  %i.ajr = getelementptr inbounds nuw i8, ptr %.47302.i, i64 16 ; 3 uses
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.ajp, i64 %i.k ; 2 uses
  %niter303.next.7 = add i32 %niter303, 8         ; 2 uses
  %niter303.ncmp.7 = icmp eq i32 %niter303.next.7, %unroll_iter302
  br i1 %niter303.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph305.i, !llvm.loop !180

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph305.i
  br i1 %lcmp.mod299.not, label %.loopexit.i, label %.lr.ph305.i.epil.preheader

.lr.ph305.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph305.i.preheader
  %.6303.i.epil.init = phi ptr [ %i.aic, %.lr.ph305.i.preheader ], [ %i.ajs, %.loopexit.i.loopexit.unr-lcssa ]
  %.47302.i.epil.init = phi ptr [ %.40308.i, %.lr.ph305.i.preheader ], [ %i.ajr, %.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod301)
  br label %.lr.ph305.i.epil

.lr.ph305.i.epil:                                 ; preds = %.lr.ph305.i.epil, %.lr.ph305.i.epil.preheader
  %.6303.i.epil = phi ptr [ %i.ajv, %.lr.ph305.i.epil ], [ %.6303.i.epil.init, %.lr.ph305.i.epil.preheader ] ; 2 uses
  %.47302.i.epil = phi ptr [ %i.aju, %.lr.ph305.i.epil ], [ %.47302.i.epil.init, %.lr.ph305.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph305.i.epil ], [ 0, %.lr.ph305.i.epil.preheader ]
  %i.ajt = load i16, ptr %.6303.i.epil, align 2, !tbaa !24
  store i16 %i.ajt, ptr %.47302.i.epil, align 2, !tbaa !24
  %i.aju = getelementptr inbounds nuw i8, ptr %.47302.i.epil, i64 2 ; 2 uses
  %i.ajv = getelementptr inbounds nuw [2 x i8], ptr %.6303.i.epil, i64 %i.k
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter298
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph305.i.epil, !llvm.loop !181

.loopexit.i:                                      ; preds = %.lr.ph287.i, %.lr.ph293.i, %.lr.ph299.i, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph305.i.epil, %.loopexit101.i
  %.48.i = phi ptr [ %.40308.i, %.loopexit101.i ], [ %i.aju, %.lr.ph305.i.epil ], [ %i.aiq, %.lr.ph299.i ], [ %i.aik, %.lr.ph293.i ], [ %i.ajr, %.loopexit.i.loopexit.unr-lcssa ], [ %i.aie, %.lr.ph287.i ]
  %indvars.iv.next421.i = add nuw nsw i64 %indvars.iv420.i, 1 ; 2 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv.next421.i, %wide.trip.count.i
  br i1 %exitcond423.not.i, label %_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii.exit, label %bb.c, !llvm.loop !182

_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii.exit: ; preds = %.loopexit.i, %.preheader106.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !14    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 34 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph92.i, label %.preheader19.i

.lr.ph92.i:                                       ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp sgt i32 %5, 1                       ; 4 uses
  %.idx418.i = shl i64 %i.k, 4                    ; 2 uses
  %.idx419.i = shl i64 %i.k, 3
  %.idx421.i = mul i64 %i.k, 24
  %i.p = trunc i64 %i.k to i32
  %i.q = insertelement <16 x i32> poison, i32 %i.p, i64 0
  %i.r = shufflevector <16 x i32> %i.q, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.s = mul <16 x i32> %i.r, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.t = and i32 %5, -2                           ; 7 uses
  %i.u = zext nneg i32 %3 to i64                  ; 2 uses
  %i.v = sext i32 %2 to i64
  %i.w = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.x = icmp eq i32 %i.w, 1
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.x, label %.split.i.us.preheader, label %.loopexit21.i.preheader

.split.i.us.preheader:                            ; preds = %.lr.ph92.i
  %i.z = add i32 %5, -2                           ; 4 uses
  %i.aa = lshr i32 %i.z, 1                        ; 2 uses
  %i.ab = add nuw i32 %i.aa, 1                    ; 6 uses
  %xtraiter = and i32 %i.ab, 3                    ; 3 uses
  %i.ac = icmp ult i32 %i.z, 6
  %unroll_iter = and i32 %i.ab, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod739 = icmp ne i32 %xtraiter, 0
  %i.ad = icmp eq i32 %i.aa, 0
  %unroll_iter752 = and i32 %i.ab, -2
  %i.ae = and i32 %i.z, 2
  %lcmp.mod747.not.not = icmp eq i32 %i.ae, 0
  %lcmp.mod751 = trunc i32 %i.ab to i1
  %xtraiter757 = and i32 %i.ab, 3                 ; 3 uses
  %i.af = icmp ult i32 %i.z, 6
  %unroll_iter763 = and i32 %i.ab, -4
  %lcmp.mod759.not = icmp eq i32 %xtraiter757, 0
  %lcmp.mod762 = icmp ne i32 %xtraiter757, 0
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
  tail call void @llvm.assume(i1 %lcmp.mod739)
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
  %xtraiter740 = and i32 %i.bc, 3                 ; 2 uses
  %lcmp.mod741.not = icmp eq i32 %xtraiter740, 0
  br i1 %lcmp.mod741.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol

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
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter740
  br i1 %prol.iter.cmp.not, label %.lr.ph88.i.us.prol.loopexit, label %.lr.ph88.i.us.prol, !llvm.loop !185

.lr.ph88.i.us.prol.loopexit:                      ; preds = %.lr.ph88.i.us.prol, %.lr.ph88.i.us.preheader
  %.lcssa723.unr = phi ptr [ poison, %.lr.ph88.i.us.preheader ], [ %i.bf, %.lr.ph88.i.us.prol ]
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
end_hunk_2
begin_hunk_3_@_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %min.iters.check491, label %.lr.ph193.us.i.preheader, label %vector.memcheck476

vector.memcheck476:                               ; preds = %iter.check507
  %i.akc = ptrtoaddr ptr %.lcssa180 to i64
  %reass.sub = sub i64 %i.akc, %.30196.us.i477
  %i.akd = getelementptr i8, ptr %.30196.us.i, i64 %i.afp
  %i.ake = getelementptr i8, ptr %i.akd, i64 %reass.sub
  %scevgep478 = getelementptr i8, ptr %i.ake, i64 4 ; 2 uses
  %i.akf = shl nuw nsw i64 %indvar479.lcssa, 2    ; 2 uses
  %gep909 = getelementptr i8, ptr %invariant.gep908, i64 %i.akf
  %i.akg = getelementptr i8, ptr %gep909, i64 6
  %scevgep481 = getelementptr i8, ptr %i.akg, i64 %i.ahv
  %gep915 = getelementptr i8, ptr %invariant.gep914, i64 %i.akf
  %i.akh = getelementptr i8, ptr %gep915, i64 6
  %scevgep482 = getelementptr i8, ptr %i.akh, i64 %i.ahv
  %bound0483 = icmp ult ptr %.lcssa180, %scevgep481
  %bound1484 = icmp ult ptr %.lcssa178, %scevgep478
  %found.conflict485 = and i1 %bound0483, %bound1484
  %bound0486 = icmp ult ptr %.lcssa180, %scevgep482
  %bound1487 = icmp ult ptr %.lcssa179, %scevgep478
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %found.conflict485, %found.conflict488
  br i1 %conflict.rdx489, label %.lr.ph193.us.i.preheader, label %vector.main.loop.iter.check492

vector.main.loop.iter.check492:                   ; preds = %vector.memcheck476
  br i1 %min.iters.check493, label %vec.epilog.ph511, label %vector.ph494

vector.ph494:                                     ; preds = %vector.main.loop.iter.check492
  %i.aki = getelementptr i8, ptr %.lcssa178, i64 %i.ahp
  %i.akj = getelementptr i8, ptr %.lcssa179, i64 %i.ahp
  %i.akk = getelementptr i8, ptr %.lcssa180, i64 %i.ahq ; 2 uses
  br label %vector.body496

vector.body496:                                   ; preds = %vector.ph494, %vector.body496
  %index497 = phi i64 [ 0, %vector.ph494 ], [ %index.next504, %vector.body496 ] ; 3 uses
  %i.akl = shl i64 %index497, 1                   ; 2 uses
  %next.gep498 = getelementptr i8, ptr %.lcssa178, i64 %i.akl
  %next.gep499 = getelementptr i8, ptr %.lcssa179, i64 %i.akl
  %i.akm = shl i64 %index497, 2
  %next.gep500 = getelementptr i8, ptr %.lcssa180, i64 %i.akm
  %wide.load501 = load <32 x i16>, ptr %next.gep499, align 2, !tbaa !24, !alias.scope !298
  %wide.load502 = load <32 x i16>, ptr %next.gep498, align 2, !tbaa !24, !alias.scope !299
  %interleaved.vec503 = shufflevector <32 x i16> %wide.load501, <32 x i16> %wide.load502, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec503, ptr %next.gep500, align 2, !tbaa !24, !alias.scope !300, !noalias !301
  %index.next504 = add nuw i64 %index497, 32      ; 2 uses
  %i.akn = icmp eq i64 %index.next504, %n.vec495
  br i1 %i.akn, label %middle.block505, label %vector.body496, !llvm.loop !258

middle.block505:                                  ; preds = %vector.body496
  br i1 %cmp.n506, label %._crit_edge.us.i, label %vec.epilog.iter.check508

vec.epilog.iter.check508:                         ; preds = %middle.block505
  br i1 %min.epilog.iters.check510, label %.lr.ph193.us.i.preheader, label %vec.epilog.ph511, !prof !22

vec.epilog.ph511:                                 ; preds = %vector.main.loop.iter.check492, %vec.epilog.iter.check508
  %vec.epilog.resume.val512 = phi i64 [ %n.vec495, %vec.epilog.iter.check508 ], [ 0, %vector.main.loop.iter.check492 ]
  %i.ako = getelementptr i8, ptr %.lcssa178, i64 %i.aht
  %i.akp = getelementptr i8, ptr %.lcssa179, i64 %i.aht
  %i.akq = getelementptr i8, ptr %.lcssa180, i64 %i.ahu ; 2 uses
  br label %vec.epilog.vector.body514

vec.epilog.vector.body514:                        ; preds = %vec.epilog.vector.body514, %vec.epilog.ph511
  %index515 = phi i64 [ %vec.epilog.resume.val512, %vec.epilog.ph511 ], [ %index.next522, %vec.epilog.vector.body514 ] ; 3 uses
  %i.akr = shl i64 %index515, 1                   ; 2 uses
  %next.gep516 = getelementptr i8, ptr %.lcssa178, i64 %i.akr
  %next.gep517 = getelementptr i8, ptr %.lcssa179, i64 %i.akr
  %i.aks = shl i64 %index515, 2
  %next.gep518 = getelementptr i8, ptr %.lcssa180, i64 %i.aks
  %wide.load519 = load <8 x i16>, ptr %next.gep517, align 2, !tbaa !24, !alias.scope !298
  %wide.load520 = load <8 x i16>, ptr %next.gep516, align 2, !tbaa !24, !alias.scope !299
  %interleaved.vec521 = shufflevector <8 x i16> %wide.load519, <8 x i16> %wide.load520, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i16> %interleaved.vec521, ptr %next.gep518, align 2, !tbaa !24, !alias.scope !300, !noalias !301
  %index.next522 = add nuw i64 %index515, 8       ; 2 uses
  %i.akt = icmp eq i64 %index.next522, %n.vec513
  br i1 %i.akt, label %vec.epilog.middle.block523, label %vec.epilog.vector.body514, !llvm.loop !259

vec.epilog.middle.block523:                       ; preds = %vec.epilog.vector.body514
  br i1 %cmp.n524, label %._crit_edge.us.i, label %.lr.ph193.us.i.preheader

.lr.ph193.us.i.preheader:                         ; preds = %iter.check507, %vector.memcheck476, %vec.epilog.iter.check508, %vec.epilog.middle.block523
  %.1346192.us.i.ph = phi i32 [ %i.afi, %iter.check507 ], [ %i.afi, %vector.memcheck476 ], [ %i.aho, %vec.epilog.iter.check508 ], [ %i.ahs, %vec.epilog.middle.block523 ] ; 4 uses
  %.1348191.us.i.ph = phi ptr [ %.lcssa178, %iter.check507 ], [ %.lcssa178, %vector.memcheck476 ], [ %i.aki, %vec.epilog.iter.check508 ], [ %i.ako, %vec.epilog.middle.block523 ] ; 2 uses
  %.1350190.us.i.ph = phi ptr [ %.lcssa179, %iter.check507 ], [ %.lcssa179, %vector.memcheck476 ], [ %i.akj, %vec.epilog.iter.check508 ], [ %i.akp, %vec.epilog.middle.block523 ] ; 2 uses
  %.32189.us.i.ph = phi ptr [ %.lcssa180, %iter.check507 ], [ %.lcssa180, %vector.memcheck476 ], [ %i.akk, %vec.epilog.iter.check508 ], [ %i.akq, %vec.epilog.middle.block523 ] ; 2 uses
  %i.aku = sub i32 %5, %.1346192.us.i.ph
  %xtraiter816 = and i32 %i.aku, 3                ; 2 uses
  %lcmp.mod817.not = icmp eq i32 %xtraiter816, 0
  br i1 %lcmp.mod817.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol

.lr.ph193.us.i.prol:                              ; preds = %.lr.ph193.us.i.preheader, %.lr.ph193.us.i.prol
  %.1346192.us.i.prol = phi i32 [ %i.alb, %.lr.ph193.us.i.prol ], [ %.1346192.us.i.ph, %.lr.ph193.us.i.preheader ]
  %.1348191.us.i.prol = phi ptr [ %i.ala, %.lr.ph193.us.i.prol ], [ %.1348191.us.i.ph, %.lr.ph193.us.i.preheader ] ; 2 uses
  %.1350190.us.i.prol = phi ptr [ %i.akz, %.lr.ph193.us.i.prol ], [ %.1350190.us.i.ph, %.lr.ph193.us.i.preheader ] ; 2 uses
  %.32189.us.i.prol = phi ptr [ %i.aky, %.lr.ph193.us.i.prol ], [ %.32189.us.i.ph, %.lr.ph193.us.i.preheader ] ; 3 uses
  %prol.iter818 = phi i32 [ %prol.iter818.next, %.lr.ph193.us.i.prol ], [ 0, %.lr.ph193.us.i.preheader ]
  %i.akv = load i16, ptr %.1350190.us.i.prol, align 2, !tbaa !24
  store i16 %i.akv, ptr %.32189.us.i.prol, align 2, !tbaa !24
  %i.akw = load i16, ptr %.1348191.us.i.prol, align 2, !tbaa !24
  %i.akx = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 2
  store i16 %i.akw, ptr %i.akx, align 2, !tbaa !24
  %i.aky = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 4 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.1350190.us.i.prol, i64 2 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.1348191.us.i.prol, i64 2 ; 2 uses
  %i.alb = add nuw nsw i32 %.1346192.us.i.prol, 1 ; 2 uses
  %prol.iter818.next = add i32 %prol.iter818, 1   ; 2 uses
  %prol.iter818.cmp.not = icmp eq i32 %prol.iter818.next, %xtraiter816
  br i1 %prol.iter818.cmp.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol, !llvm.loop !260

.lr.ph193.us.i.prol.loopexit:                     ; preds = %.lr.ph193.us.i.prol, %.lr.ph193.us.i.preheader
  %.lcssa692.unr = phi ptr [ poison, %.lr.ph193.us.i.preheader ], [ %i.aky, %.lr.ph193.us.i.prol ]
  %.1346192.us.i.unr = phi i32 [ %.1346192.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.alb, %.lr.ph193.us.i.prol ]
  %.1348191.us.i.unr = phi ptr [ %.1348191.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.ala, %.lr.ph193.us.i.prol ]
  %.1350190.us.i.unr = phi ptr [ %.1350190.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.akz, %.lr.ph193.us.i.prol ]
  %.32189.us.i.unr = phi ptr [ %.32189.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.aky, %.lr.ph193.us.i.prol ]
  %i.alc = sub i32 %.1346192.us.i.ph, %5
  %i.ald = icmp ugt i32 %i.alc, -4
  br i1 %i.ald, label %._crit_edge.us.i, label %.lr.ph193.us.i

.lr.ph197.split.i:                                ; preds = %.lr.ph197.i
  %i.ale = icmp eq i32 %5, 1
  br i1 %i.ale, label %.preheader5.us201.preheader.i, label %.preheader5.preheader.i

.preheader5.preheader.i:                          ; preds = %.lr.ph197.split.i
  %i.alf = add i32 %3, -2
  %i.alg = sub i32 %i.alf, %.2370.lcssa.i
  %i.alh = and i32 %i.alg, -2
  %i.ali = add i32 %.2370.lcssa.i, 2
  %i.alj = add i32 %i.ali, %i.alh
  br label %.preheader4.i

.preheader5.us201.preheader.i:                    ; preds = %.lr.ph197.split.i
  %i.alk = sext i32 %.2370.lcssa.i to i64
  %i.all = sext i32 %2 to i64
  %i.alm = sext i32 %3 to i64
  %invariant.op402.i = add nsw i64 %i.alm, -1
  br label %._crit_edge.us210.i

._crit_edge.us210.i:                              ; preds = %._crit_edge.us210.i, %.preheader5.us201.preheader.i
  %indvars.iv316.i = phi i64 [ %i.alk, %.preheader5.us201.preheader.i ], [ %indvars.iv.next317.i, %._crit_edge.us210.i ] ; 2 uses
  %.30196.us202.i = phi ptr [ %.23.lcssa.i, %.preheader5.us201.preheader.i ], [ %i.aln, %._crit_edge.us210.i ] ; 3 uses
  %i.aln = getelementptr i8, ptr %.30196.us202.i, i64 4 ; 2 uses
  %i.alo = add nsw i64 %indvars.iv316.i, %i.all
  %i.alp = mul i64 %i.alo, %i.k
  %gep.us204.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.alp ; 2 uses
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr %gep.us204.i, i64 %i.k
  %i.alr = load i16, ptr %gep.us204.i, align 2, !tbaa !24
  store i16 %i.alr, ptr %.30196.us202.i, align 2, !tbaa !24
  %i.als = load i16, ptr %i.alq, align 2, !tbaa !24
  %i.alt = getelementptr inbounds nuw i8, ptr %.30196.us202.i, i64 2
  store i16 %i.als, ptr %i.alt, align 2, !tbaa !24
  %indvars.iv.next317.i = add nuw nsw i64 %indvars.iv316.i, 2 ; 3 uses
  %i.alu = icmp slt i64 %indvars.iv.next317.i, %invariant.op402.i
  br i1 %i.alu, label %._crit_edge.us210.i, label %.preheader4.loopexit234.i, !llvm.loop !253

.preheader4.loopexit.i:                           ; preds = %._crit_edge.us.i
  %i.alv = trunc nsw i64 %indvars.iv.next321.i to i32
  br label %.preheader4.i

.preheader4.loopexit234.i:                        ; preds = %._crit_edge.us210.i
  %i.alw = trunc nsw i64 %indvars.iv.next317.i to i32
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %.preheader4.loopexit234.i, %.preheader4.loopexit.i, %.preheader5.preheader.i, %.preheader6.i
  %.3371.lcssa.i = phi i32 [ %.2370.lcssa.i, %.preheader6.i ], [ %i.alw, %.preheader4.loopexit234.i ], [ %i.alv, %.preheader4.loopexit.i ], [ %i.alj, %.preheader5.preheader.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.23.lcssa.i, %.preheader6.i ], [ %i.aln, %.preheader4.loopexit234.i ], [ %.32.lcssa.us.i, %.preheader4.loopexit.i ], [ %.23.lcssa.i, %.preheader5.preheader.i ]
  %i.alx = icmp slt i32 %.3371.lcssa.i, %3
  br i1 %i.alx, label %.lr.ph231.i, label %_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii.exit

.lr.ph231.i:                                      ; preds = %.preheader4.i
  %i.aly = load ptr, ptr %0, align 8, !tbaa !14   ; 3 uses
  %i.alz = sext i32 %4 to i64                     ; 3 uses
  %invariant.gep233.i = getelementptr [2 x i8], ptr %i.aly, i64 %i.alz
  %i.ama = icmp sgt i32 %5, 1
  %i.amb = and i32 %5, -2                         ; 3 uses
  %i.amc = sext i32 %.3371.lcssa.i to i64         ; 2 uses
  %i.amd = sext i32 %2 to i64                     ; 3 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  %i.ame = add i32 %5, -2
  %i.amf = lshr i32 %i.ame, 1
  %i.amg = zext nneg i32 %i.amf to i64
  %i.amh = shl nuw nsw i64 %i.amg, 2              ; 2 uses
  %i.ami = add nsw i64 %i.amc, %i.amd
  %i.amj = mul i64 %i.k, %i.ami
  %i.amk = shl nsw i64 %i.alz, 1
  %i.aml = add i64 %i.amj, %i.alz
  %i.amm = shl i64 %i.aml, 1
  %scevgep634 = getelementptr i8, ptr %i.aly, i64 %i.amm
  %i.amn = add nsw i64 %wide.trip.count.i, %i.amd
  %i.amo = shl nsw i64 %i.amn, 1
  %i.amp = add nsw i64 %i.amo, -2
  %i.amq = mul i64 %i.k, %i.amp
  %i.amr = getelementptr i8, ptr %i.aly, i64 %i.amq
  %i.ams = getelementptr i8, ptr %i.amr, i64 %i.amh
  %i.amt = getelementptr i8, ptr %i.ams, i64 %i.amk
  %scevgep635 = getelementptr i8, ptr %i.amt, i64 4
  %i.amu = add i32 %5, -2                         ; 3 uses
  %i.amv = lshr i32 %i.amu, 1
  %narrow684 = add nuw i32 %i.amv, 1
  %i.amw = zext i32 %narrow684 to i64             ; 5 uses
  %min.iters.check640 = icmp ult i32 %i.amu, 14
  %min.iters.check642 = icmp ult i32 %i.amu, 126
  %i.amx = and i64 %i.amw, 56
  %n.vec644 = and i64 %i.amw, 4294967232          ; 5 uses
  %i.amy = trunc nuw i64 %n.vec644 to i32
  %i.amz = shl i32 %i.amy, 1
  %i.ana = shl nuw nsw i64 %n.vec644, 2           ; 2 uses
  %cmp.n661 = icmp eq i64 %n.vec644, %i.amw
  %min.epilog.iters.check665 = icmp eq i64 %i.amx, 0
  %n.vec668 = and i64 %i.amw, 4294967288          ; 4 uses
  %i.anb = trunc nuw i64 %n.vec668 to i32
  %i.anc = shl i32 %i.anb, 1
  %i.and = shl nuw nsw i64 %n.vec668, 2           ; 2 uses
  %cmp.n679 = icmp eq i64 %n.vec668, %i.amw
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph231.i
  %indvars.iv324.i = phi i64 [ %i.amc, %.lr.ph231.i ], [ %indvars.iv.next325.i, %._crit_edge.i ] ; 2 uses
  %.33230.i = phi ptr [ %.30.lcssa.i, %.lr.ph231.i ], [ %.35.lcssa.i, %._crit_edge.i ] ; 10 uses
  %i.ane = add nsw i64 %indvars.iv324.i, %i.amd
  %i.anf = mul i64 %i.ane, %i.k
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep233.i, i64 %i.anf ; 8 uses
  br i1 %i.ama, label %iter.check662, label %.preheader.i

iter.check662:                                    ; preds = %bb.i
  br i1 %min.iters.check640, label %.lr.ph220.i.preheader, label %vector.memcheck632

vector.memcheck632:                               ; preds = %iter.check662
  %i.ang = getelementptr i8, ptr %.33230.i, i64 %i.amh
  %scevgep633 = getelementptr i8, ptr %i.ang, i64 4
  %bound0636 = icmp ult ptr %.33230.i, %scevgep635
  %bound1637 = icmp ult ptr %scevgep634, %scevgep633
  %found.conflict638 = and i1 %bound0636, %bound1637
  br i1 %found.conflict638, label %.lr.ph220.i.preheader, label %vector.main.loop.iter.check641

vector.main.loop.iter.check641:                   ; preds = %vector.memcheck632
  br i1 %min.iters.check642, label %vec.epilog.ph666, label %vector.ph643

vector.ph643:                                     ; preds = %vector.main.loop.iter.check641
  %i.anh = getelementptr i8, ptr %gep.i, i64 %i.ana ; 2 uses
  %i.ani = getelementptr i8, ptr %.33230.i, i64 %i.ana ; 2 uses
  br label %vector.body645

vector.body645:                                   ; preds = %vector.ph643, %vector.body645
  %index646 = phi i64 [ 0, %vector.ph643 ], [ %index.next659, %vector.body645 ] ; 2 uses
  %i.anj = shl i64 %index646, 2                   ; 3 uses
  %i.ank = or disjoint i64 %i.anj, 128            ; 2 uses
  %next.gep647 = getelementptr i8, ptr %gep.i, i64 %i.anj
  %next.gep648 = getelementptr i8, ptr %gep.i, i64 %i.ank
  %next.gep649 = getelementptr i8, ptr %.33230.i, i64 %i.anj
  %next.gep650 = getelementptr i8, ptr %.33230.i, i64 %i.ank
  %wide.vec651 = load <64 x i16>, ptr %next.gep647, align 2, !tbaa !24, !alias.scope !302
  %wide.vec654 = load <64 x i16>, ptr %next.gep648, align 2, !tbaa !24, !alias.scope !302
  store <64 x i16> %wide.vec651, ptr %next.gep649, align 2, !tbaa !24, !alias.scope !303, !noalias !302
  store <64 x i16> %wide.vec654, ptr %next.gep650, align 2, !tbaa !24, !alias.scope !303, !noalias !302
  %index.next659 = add nuw i64 %index646, 64      ; 2 uses
  %i.anl = icmp eq i64 %index.next659, %n.vec644
  br i1 %i.anl, label %middle.block660, label %vector.body645, !llvm.loop !264

middle.block660:                                  ; preds = %vector.body645
  br i1 %cmp.n661, label %.preheader.i, label %vec.epilog.iter.check663

vec.epilog.iter.check663:                         ; preds = %middle.block660
  br i1 %min.epilog.iters.check665, label %.lr.ph220.i.preheader, label %vec.epilog.ph666, !prof !26

vec.epilog.ph666:                                 ; preds = %vector.main.loop.iter.check641, %vec.epilog.iter.check663
  %vec.epilog.resume.val667 = phi i64 [ %n.vec644, %vec.epilog.iter.check663 ], [ 0, %vector.main.loop.iter.check641 ]
  %i.anm = getelementptr i8, ptr %gep.i, i64 %i.and ; 2 uses
  %i.ann = getelementptr i8, ptr %.33230.i, i64 %i.and ; 2 uses
  br label %vec.epilog.vector.body669

vec.epilog.vector.body669:                        ; preds = %vec.epilog.vector.body669, %vec.epilog.ph666
  %index670 = phi i64 [ %vec.epilog.resume.val667, %vec.epilog.ph666 ], [ %index.next677, %vec.epilog.vector.body669 ] ; 2 uses
  %i.ano = shl i64 %index670, 2                   ; 2 uses
  %next.gep671 = getelementptr i8, ptr %gep.i, i64 %i.ano
  %next.gep672 = getelementptr i8, ptr %.33230.i, i64 %i.ano
  %wide.vec673 = load <16 x i16>, ptr %next.gep671, align 2, !tbaa !24, !alias.scope !302
  store <16 x i16> %wide.vec673, ptr %next.gep672, align 2, !tbaa !24, !alias.scope !303, !noalias !302
  %index.next677 = add nuw i64 %index670, 8       ; 2 uses
  %i.anp = icmp eq i64 %index.next677, %n.vec668
  br i1 %i.anp, label %vec.epilog.middle.block678, label %vec.epilog.vector.body669, !llvm.loop !265

vec.epilog.middle.block678:                       ; preds = %vec.epilog.vector.body669
  br i1 %cmp.n679, label %.preheader.i, label %.lr.ph220.i.preheader

.lr.ph220.i.preheader:                            ; preds = %iter.check662, %vector.memcheck632, %vec.epilog.iter.check663, %vec.epilog.middle.block678
  %.0219.i.ph = phi i32 [ 0, %iter.check662 ], [ 0, %vector.memcheck632 ], [ %i.amz, %vec.epilog.iter.check663 ], [ %i.anc, %vec.epilog.middle.block678 ]
  %.0343218.i.ph = phi ptr [ %gep.i, %iter.check662 ], [ %gep.i, %vector.memcheck632 ], [ %i.anh, %vec.epilog.iter.check663 ], [ %i.anm, %vec.epilog.middle.block678 ]
  %.34217.i.ph = phi ptr [ %.33230.i, %iter.check662 ], [ %.33230.i, %vector.memcheck632 ], [ %i.ani, %vec.epilog.iter.check663 ], [ %i.ann, %vec.epilog.middle.block678 ]
  br label %.lr.ph220.i

.preheader.i:                                     ; preds = %.lr.ph220.i, %middle.block660, %vec.epilog.middle.block678, %bb.i
  %.34.lcssa.i = phi ptr [ %.33230.i, %bb.i ], [ %i.ann, %vec.epilog.middle.block678 ], [ %i.ani, %middle.block660 ], [ %i.apc, %.lr.ph220.i ] ; 7 uses
  %.0343.lcssa.i = phi ptr [ %gep.i, %bb.i ], [ %i.anm, %vec.epilog.middle.block678 ], [ %i.anh, %middle.block660 ], [ %i.apd, %.lr.ph220.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.amb, %vec.epilog.middle.block678 ], [ %i.amb, %middle.block660 ], [ %i.amb, %.lr.ph220.i ] ; 5 uses
  %i.anq = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.anq, label %iter.check614, label %._crit_edge.i

iter.check614:                                    ; preds = %.preheader.i
  %.0343.lcssa.i595 = ptrtoaddr ptr %.0343.lcssa.i to i64
  %.34.lcssa.i594 = ptrtoaddr ptr %.34.lcssa.i to i64
  %i.anr = xor i32 %.0.lcssa.i, -1
  %i.ans = add i32 %5, %i.anr                     ; 3 uses
  %i.ant = zext i32 %i.ans to i64
  %i.anu = add nuw nsw i64 %i.ant, 1              ; 5 uses
  %min.iters.check598 = icmp ult i32 %i.ans, 15
  %i.anv = sub i64 %.0343.lcssa.i595, %.34.lcssa.i594
  %diff.check596 = icmp ugt i64 %i.anv, -256
  %or.cond685 = select i1 %min.iters.check598, i1 true, i1 %diff.check596
  br i1 %or.cond685, label %.lr.ph227.i.preheader, label %vector.main.loop.iter.check599

vector.main.loop.iter.check599:                   ; preds = %iter.check614
  %min.iters.check600 = icmp ult i32 %i.ans, 127
  br i1 %min.iters.check600, label %vec.epilog.ph618, label %vector.ph601

vector.ph601:                                     ; preds = %vector.main.loop.iter.check599
  %i.anw = and i64 %i.anu, 112
  %n.vec602 = and i64 %i.anu, 8589934464          ; 5 uses
  %i.anx = trunc i64 %n.vec602 to i32
  %i.any = add i32 %.0.lcssa.i, %i.anx
  %i.anz = shl nuw nsw i64 %n.vec602, 1           ; 2 uses
  %i.aoa = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.anz
  %i.aob = getelementptr i8, ptr %.34.lcssa.i, i64 %i.anz ; 2 uses
  br label %vector.body603

vector.body603:                                   ; preds = %vector.ph601, %vector.body603
  %index604 = phi i64 [ 0, %vector.ph601 ], [ %index.next611, %vector.body603 ] ; 2 uses
  %i.aoc = shl i64 %index604, 1                   ; 2 uses
  %next.gep605 = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aoc ; 4 uses
  %next.gep606 = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aoc ; 4 uses
  %i.aod = getelementptr i8, ptr %next.gep605, i64 64
  %i.aoe = getelementptr i8, ptr %next.gep605, i64 128
  %i.aof = getelementptr i8, ptr %next.gep605, i64 192
  %wide.load607 = load <32 x i16>, ptr %next.gep605, align 2, !tbaa !24
  %wide.load608 = load <32 x i16>, ptr %i.aod, align 2, !tbaa !24
  %wide.load609 = load <32 x i16>, ptr %i.aoe, align 2, !tbaa !24
  %wide.load610 = load <32 x i16>, ptr %i.aof, align 2, !tbaa !24
  %i.aog = getelementptr i8, ptr %next.gep606, i64 64
  %i.aoh = getelementptr i8, ptr %next.gep606, i64 128
  %i.aoi = getelementptr i8, ptr %next.gep606, i64 192
  store <32 x i16> %wide.load607, ptr %next.gep606, align 2, !tbaa !24
  store <32 x i16> %wide.load608, ptr %i.aog, align 2, !tbaa !24
  store <32 x i16> %wide.load609, ptr %i.aoh, align 2, !tbaa !24
  store <32 x i16> %wide.load610, ptr %i.aoi, align 2, !tbaa !24
  %index.next611 = add nuw i64 %index604, 128     ; 2 uses
  %i.aoj = icmp eq i64 %index.next611, %n.vec602
  br i1 %i.aoj, label %middle.block612, label %vector.body603, !llvm.loop !266

middle.block612:                                  ; preds = %vector.body603
  %cmp.n613 = icmp eq i64 %i.anu, %n.vec602
  br i1 %cmp.n613, label %._crit_edge.i, label %vec.epilog.iter.check615

vec.epilog.iter.check615:                         ; preds = %middle.block612
  %min.epilog.iters.check617 = icmp eq i64 %i.anw, 0
  br i1 %min.epilog.iters.check617, label %.lr.ph227.i.preheader, label %vec.epilog.ph618, !prof !27

vec.epilog.ph618:                                 ; preds = %vector.main.loop.iter.check599, %vec.epilog.iter.check615
  %vec.epilog.resume.val619 = phi i64 [ %n.vec602, %vec.epilog.iter.check615 ], [ 0, %vector.main.loop.iter.check599 ]
  %n.vec620 = and i64 %i.anu, 8589934576          ; 4 uses
  %i.aok = trunc i64 %n.vec620 to i32
  %i.aol = add i32 %.0.lcssa.i, %i.aok
  %i.aom = shl nuw nsw i64 %n.vec620, 1           ; 2 uses
  %i.aon = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aom
  %i.aoo = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aom ; 2 uses
  br label %vec.epilog.vector.body621

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621, %vec.epilog.ph618
  %index622 = phi i64 [ %vec.epilog.resume.val619, %vec.epilog.ph618 ], [ %index.next626, %vec.epilog.vector.body621 ] ; 2 uses
  %i.aop = shl i64 %index622, 1                   ; 2 uses
  %next.gep623 = getelementptr i8, ptr %.0343.lcssa.i, i64 %i.aop
  %next.gep624 = getelementptr i8, ptr %.34.lcssa.i, i64 %i.aop
  %wide.load625 = load <16 x i16>, ptr %next.gep623, align 2, !tbaa !24
  store <16 x i16> %wide.load625, ptr %next.gep624, align 2, !tbaa !24
  %index.next626 = add nuw i64 %index622, 16      ; 2 uses
  %i.aoq = icmp eq i64 %index.next626, %n.vec620
  br i1 %i.aoq, label %vec.epilog.middle.block627, label %vec.epilog.vector.body621, !llvm.loop !267

vec.epilog.middle.block627:                       ; preds = %vec.epilog.vector.body621
  %cmp.n628 = icmp eq i64 %i.anu, %n.vec620
  br i1 %cmp.n628, label %._crit_edge.i, label %.lr.ph227.i.preheader

.lr.ph227.i.preheader:                            ; preds = %iter.check614, %vec.epilog.iter.check615, %vec.epilog.middle.block627
  %.1226.i.ph = phi i32 [ %.0.lcssa.i, %iter.check614 ], [ %i.any, %vec.epilog.iter.check615 ], [ %i.aol, %vec.epilog.middle.block627 ] ; 4 uses
  %.1344225.i.ph = phi ptr [ %.0343.lcssa.i, %iter.check614 ], [ %i.aoa, %vec.epilog.iter.check615 ], [ %i.aon, %vec.epilog.middle.block627 ] ; 2 uses
  %.35224.i.ph = phi ptr [ %.34.lcssa.i, %iter.check614 ], [ %i.aob, %vec.epilog.iter.check615 ], [ %i.aoo, %vec.epilog.middle.block627 ] ; 2 uses
  %i.aor = sub i32 %5, %.1226.i.ph
  %xtraiter819 = and i32 %i.aor, 7                ; 2 uses
  %lcmp.mod820.not = icmp eq i32 %xtraiter819, 0
  br i1 %lcmp.mod820.not, label %.lr.ph227.i.prol.loopexit, label %.lr.ph227.i.prol

.lr.ph227.i.prol:                                 ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i.prol
  %.1226.i.prol = phi i32 [ %i.aov, %.lr.ph227.i.prol ], [ %.1226.i.ph, %.lr.ph227.i.preheader ]
  %.1344225.i.prol = phi ptr [ %i.aou, %.lr.ph227.i.prol ], [ %.1344225.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %.35224.i.prol = phi ptr [ %i.aot, %.lr.ph227.i.prol ], [ %.35224.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %prol.iter821 = phi i32 [ %prol.iter821.next, %.lr.ph227.i.prol ], [ 0, %.lr.ph227.i.preheader ]
  %i.aos = load i16, ptr %.1344225.i.prol, align 2, !tbaa !24
  store i16 %i.aos, ptr %.35224.i.prol, align 2, !tbaa !24
  %i.aot = getelementptr inbounds nuw i8, ptr %.35224.i.prol, i64 2 ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %.1344225.i.prol, i64 2 ; 2 uses
  %i.aov = add nuw nsw i32 %.1226.i.prol, 1       ; 2 uses
  %prol.iter821.next = add i32 %prol.iter821, 1   ; 2 uses
  %prol.iter821.cmp.not = icmp eq i32 %prol.iter821.next, %xtraiter819
  br i1 %prol.iter821.cmp.not, label %.lr.ph227.i.prol.loopexit, label %.lr.ph227.i.prol, !llvm.loop !268

.lr.ph227.i.prol.loopexit:                        ; preds = %.lr.ph227.i.prol, %.lr.ph227.i.preheader
  %.lcssa687.unr = phi ptr [ poison, %.lr.ph227.i.preheader ], [ %i.aot, %.lr.ph227.i.prol ]
  %.1226.i.unr = phi i32 [ %.1226.i.ph, %.lr.ph227.i.preheader ], [ %i.aov, %.lr.ph227.i.prol ]
  %.1344225.i.unr = phi ptr [ %.1344225.i.ph, %.lr.ph227.i.preheader ], [ %i.aou, %.lr.ph227.i.prol ]
  %.35224.i.unr = phi ptr [ %.35224.i.ph, %.lr.ph227.i.preheader ], [ %i.aot, %.lr.ph227.i.prol ]
  %i.aow = sub i32 %.1226.i.ph, %5
  %i.aox = icmp ugt i32 %i.aow, -8
  br i1 %i.aox, label %._crit_edge.i, label %.lr.ph227.i

.lr.ph220.i:                                      ; preds = %.lr.ph220.i.preheader, %.lr.ph220.i
  %.0219.i = phi i32 [ %i.ape, %.lr.ph220.i ], [ %.0219.i.ph, %.lr.ph220.i.preheader ]
  %.0343218.i = phi ptr [ %i.apd, %.lr.ph220.i ], [ %.0343218.i.ph, %.lr.ph220.i.preheader ] ; 3 uses
  %.34217.i = phi ptr [ %i.apc, %.lr.ph220.i ], [ %.34217.i.ph, %.lr.ph220.i.preheader ] ; 3 uses
  %i.aoy = load i16, ptr %.0343218.i, align 2, !tbaa !24
  store i16 %i.aoy, ptr %.34217.i, align 2, !tbaa !24
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0343218.i, i64 2
  %i.apa = load i16, ptr %i.aoz, align 2, !tbaa !24
  %i.apb = getelementptr inbounds nuw i8, ptr %.34217.i, i64 2
  store i16 %i.apa, ptr %i.apb, align 2, !tbaa !24
  %i.apc = getelementptr inbounds nuw i8, ptr %.34217.i, i64 4 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.0343218.i, i64 4 ; 2 uses
  %i.ape = add nuw nsw i32 %.0219.i, 2            ; 2 uses
  %i.apf = or disjoint i32 %i.ape, 1
  %i.apg = icmp slt i32 %i.apf, %5
  br i1 %i.apg, label %.lr.ph220.i, label %.preheader.i, !llvm.loop !269

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.prol.loopexit, %.lr.ph227.i
  %.1226.i = phi i32 [ %i.aqf, %.lr.ph227.i ], [ %.1226.i.unr, %.lr.ph227.i.prol.loopexit ]
  %.1344225.i = phi ptr [ %i.aqe, %.lr.ph227.i ], [ %.1344225.i.unr, %.lr.ph227.i.prol.loopexit ] ; 9 uses
  %.35224.i = phi ptr [ %i.aqd, %.lr.ph227.i ], [ %.35224.i.unr, %.lr.ph227.i.prol.loopexit ] ; 9 uses
end_hunk_3
