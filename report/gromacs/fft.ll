Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/fft?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_Z20gmx_fft_transpose_2dP9t_complexS0_ii(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [500 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp slt i32 %2, 2
  %i.c = icmp slt i32 %3, 2
  %or.cond = or i1 %i.b, %i.c
  %.not231 = icmp eq ptr %0, %1                   ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not231, label %.thread247, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sext i32 %2 to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = sext i32 %3 to i64
  %i.g = mul i64 %i.e, %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %0, i64 %i.g, i1 false)
  br label %.thread247

bb.d:                                             ; preds = %bb.a
  br i1 %.not231, label %bb.e, label %.preheader254.preheader

.preheader254.preheader:                          ; preds = %bb.d
  %i.h = zext nneg i32 %2 to i64                  ; 10 uses
  %i.i = zext nneg i32 %3 to i64                  ; 3 uses
  %xtraiter = and i64 %i.i, 7                     ; 3 uses
  %4 = add nsw i32 %3, -1
  %i.j = icmp ult i32 %4, 7
  %unroll_iter = and i64 %i.i, 2147483640
  %lcmp.mod.not.a = icmp eq i64 %xtraiter, 0
  %lcmp.mod343 = icmp ne i64 %xtraiter, 0
  br label %.preheader254

.preheader254:                                    ; preds = %.preheader254.preheader, %._crit_edge
  %indvars.iv275 = phi i64 [ 0, %.preheader254.preheader ], [ %indvars.iv.next276, %._crit_edge ] ; 3 uses
  %i.k = mul nuw nsw i64 %indvars.iv275, %i.i
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 9 uses
  %invariant.gep312 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv275 ; 9 uses
  br i1 %i.j, label %.epil.preheader, label %.preheader254.new

.preheader254.new:                                ; preds = %.preheader254, %.preheader254.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader254.new ], [ 0, %.preheader254 ] ; 10 uses
  %niter = phi i64 [ %niter.next.7, %.preheader254.new ], [ 0, %.preheader254 ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.l = mul nuw nsw i64 %indvars.iv, %i.h
  %gep313 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %i.l
  %i.m = load <2 x float>, ptr %gep, align 4, !tbaa !20
  store <2 x float> %i.m, ptr %gep313, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.n = mul nuw nsw i64 %indvars.iv.next, %i.h
  %gep313.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %i.n
  %i.o = load <2 x float>, ptr %gep.1, align 4, !tbaa !20
  store <2 x float> %i.o, ptr %gep313.1, align 4, !tbaa !20
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.p = mul nuw nsw i64 %indvars.iv.next.1, %i.h
  %gep313.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %i.p
  %i.q = load <2 x float>, ptr %gep.2, align 4, !tbaa !20
  store <2 x float> %i.q, ptr %gep313.2, align 4, !tbaa !20
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.r = mul nuw nsw i64 %indvars.iv.next.2, %i.h
  %gep313.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %i.r
  %i.s = load <2 x float>, ptr %gep.3, align 4, !tbaa !20
  store <2 x float> %i.s, ptr %gep313.3, align 4, !tbaa !20
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.t = mul nuw nsw i64 %indvars.iv.next.3, %i.h
  %gep313.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %i.t
  %i.u = load <2 x float>, ptr %gep.4, align 4, !tbaa !20
  store <2 x float> %i.u, ptr %gep313.4, align 4, !tbaa !20
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.v = mul nuw nsw i64 %indvars.iv.next.4, %i.h
  %gep313.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %i.v
  %i.w = load <2 x float>, ptr %gep.5, align 4, !tbaa !20
  store <2 x float> %i.w, ptr %gep313.5, align 4, !tbaa !20
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.x = mul nuw nsw i64 %indvars.iv.next.5, %i.h
  %gep313.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %i.x
  %i.y = load <2 x float>, ptr %gep.6, align 4, !tbaa !20
  store <2 x float> %i.y, ptr %gep313.6, align 4, !tbaa !20
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.z = mul nuw nsw i64 %indvars.iv.next.6, %i.h
  %gep313.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %i.z
  %i.aa = load <2 x float>, ptr %gep.7, align 4, !tbaa !20
  store <2 x float> %i.aa, ptr %gep313.7, align 4, !tbaa !20
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %.preheader254.new, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %.preheader254.new
  br i1 %lcmp.mod.not.a, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader254
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader254 ], [ %indvars.iv.next.7, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod343)
  br label %5

5:                                                ; preds = %5, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %5 ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %5 ]
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  %6 = mul nuw nsw i64 %indvars.iv.epil, %i.h
  %gep313.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep312, i64 %6
  %7 = load <2 x float>, ptr %gep.epil, align 4, !tbaa !20
  store <2 x float> %7, ptr %gep313.epil, align 4, !tbaa !20
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %5, !llvm.loop !10

._crit_edge:                                      ; preds = %5, %._crit_edge.unr-lcssa
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %i.h
  br i1 %exitcond279.not, label %.thread247, label %.preheader254, !llvm.loop !11

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i32 %2, %3
  br i1 %i.ab, label %.lr.ph267.preheader, label %.preheader253.preheader

.preheader253.preheader:                          ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(500) %i.a, i8 0, i64 500, i1 false), !tbaa !24
  %i.ac = icmp samesign ugt i32 %2, 2
  %i.ad = icmp samesign ugt i32 %3, 2
  %or.cond3 = and i1 %i.ac, %i.ad
  br i1 %or.cond3, label %bb.f, label %bb.i

.lr.ph267.preheader:                              ; preds = %bb.e
  %i.ae = zext nneg i32 %2 to i64                 ; 10 uses
  %i.af = zext nneg i32 %2 to i64
  %i.ag = add nsw i64 %i.ae, -2
  br label %.lr.ph267

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph265.new, %.lr.ph267
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %i.ae
  br i1 %exitcond297.not, label %.thread247, label %.lr.ph267, !llvm.loop !12

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %.loopexit
  %indvars.iv293 = phi i64 [ 0, %.lr.ph267.preheader ], [ %indvars.iv.next294, %.loopexit ] ; 5 uses
  %indvars.iv286 = phi i64 [ 1, %.lr.ph267.preheader ], [ %indvars.iv.next287, %.loopexit ] ; 3 uses
  %i.ah = sub i64 %i.ag, %indvars.iv293
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 3 uses
  %i.ai = icmp samesign ult i64 %indvars.iv.next294, %i.af
  br i1 %i.ai, label %.lr.ph265, label %.loopexit

.lr.ph265:                                        ; preds = %.lr.ph267
  %i.aj = xor i64 %indvars.iv293, -1
  %i.ak = add nsw i64 %i.aj, %i.ae
  %i.al = mul nuw nsw i64 %indvars.iv293, %i.ae
  %invariant.gep314 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al ; 5 uses
  %invariant.gep316 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv293 ; 5 uses
  %xtraiter344 = and i64 %i.ak, 3                 ; 2 uses
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  br i1 %lcmp.mod345.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph265, %.prol.preheader
  %indvars.iv288.prol = phi i64 [ %indvars.iv.next289.prol, %.prol.preheader ], [ %indvars.iv286, %.lr.ph265 ] ; 3 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.prol.preheader ], [ 0, %.lr.ph265 ]
  %gep315.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv288.prol ; 2 uses
  %i.am = mul nuw nsw i64 %indvars.iv288.prol, %i.ae
  %gep317.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.am ; 2 uses
  %i.an = load <2 x float>, ptr %gep315.prol, align 4, !tbaa !20
  %i.ao = load <2 x float>, ptr %gep317.prol, align 4, !tbaa !20
  store <2 x float> %i.ao, ptr %gep315.prol, align 4, !tbaa !20
  store <2 x float> %i.an, ptr %gep317.prol, align 4, !tbaa !20
  %indvars.iv.next289.prol = add nuw nsw i64 %indvars.iv288.prol, 1 ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter344
  br i1 %prol.iter.cmp.not.a, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !13

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph265
  %indvars.iv288.unr = phi i64 [ %indvars.iv286, %.lr.ph265 ], [ %indvars.iv.next289.prol, %.prol.preheader ]
  %i.ap = icmp ult i64 %i.ah, 3
  br i1 %i.ap, label %.loopexit, label %.lr.ph265.new

.lr.ph265.new:                                    ; preds = %.prol.loopexit, %.lr.ph265.new
  %indvars.iv288 = phi i64 [ %indvars.iv.next289.3, %.lr.ph265.new ], [ %indvars.iv288.unr, %.prol.loopexit ] ; 6 uses
  %gep315 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv288 ; 2 uses
  %i.aq = mul nuw nsw i64 %indvars.iv288, %i.ae
  %gep317 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.aq ; 2 uses
  %i.ar = load <2 x float>, ptr %gep315, align 4, !tbaa !20
  %i.as = load <2 x float>, ptr %gep317, align 4, !tbaa !20
  store <2 x float> %i.as, ptr %gep315, align 4, !tbaa !20
  store <2 x float> %i.ar, ptr %gep317, align 4, !tbaa !20
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %gep315.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv.next289 ; 2 uses
  %i.at = mul nuw nsw i64 %indvars.iv.next289, %i.ae
  %gep317.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.at ; 2 uses
  %i.au = load <2 x float>, ptr %gep315.1, align 4, !tbaa !20
  %i.av = load <2 x float>, ptr %gep317.1, align 4, !tbaa !20
  store <2 x float> %i.av, ptr %gep315.1, align 4, !tbaa !20
  store <2 x float> %i.au, ptr %gep317.1, align 4, !tbaa !20
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %gep315.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv.next289.1 ; 2 uses
  %i.aw = mul nuw nsw i64 %indvars.iv.next289.1, %i.ae
  %gep317.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.aw ; 2 uses
  %i.ax = load <2 x float>, ptr %gep315.2, align 4, !tbaa !20
  %i.ay = load <2 x float>, ptr %gep317.2, align 4, !tbaa !20
  store <2 x float> %i.ay, ptr %gep315.2, align 4, !tbaa !20
  store <2 x float> %i.ax, ptr %gep317.2, align 4, !tbaa !20
  %indvars.iv.next289.2 = add nuw nsw i64 %indvars.iv288, 3 ; 2 uses
  %gep315.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep314, i64 %indvars.iv.next289.2 ; 2 uses
  %i.az = mul nuw nsw i64 %indvars.iv.next289.2, %i.ae
  %gep317.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep316, i64 %i.az ; 2 uses
  %i.ba = load <2 x float>, ptr %gep315.3, align 4, !tbaa !20
  %i.bb = load <2 x float>, ptr %gep317.3, align 4, !tbaa !20
  store <2 x float> %i.bb, ptr %gep315.3, align 4, !tbaa !20
  store <2 x float> %i.ba, ptr %gep317.3, align 4, !tbaa !20
  %indvars.iv.next289.3 = add nuw nsw i64 %indvars.iv288, 4 ; 2 uses
  %exitcond292.not.3 = icmp eq i64 %indvars.iv.next289.3, %i.ae
  br i1 %exitcond292.not.3, label %.loopexit, label %.lr.ph265.new, !llvm.loop !14

bb.f:                                             ; preds = %.preheader253.preheader
  %i.bc = add nsw i32 %2, -1
  %i.bd = add nsw i32 %3, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.3212 = phi i32 [ %i.bc, %bb.f ], [ %.2208, %bb.g ]
  %.2208 = phi i32 [ %i.bd, %bb.f ], [ %i.be, %bb.g ] ; 3 uses
  %i.be = urem i32 %.3212, %.2208                 ; 2 uses
  %.not226 = icmp eq i32 %i.be, 0
  br i1 %.not226, label %bb.h, label %bb.g, !llvm.loop !15

bb.h:                                             ; preds = %bb.g
  %i.bf = add nuw nsw i32 %.2208, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader253.preheader
  %.0199 = phi i32 [ %i.bf, %bb.h ], [ 2, %.preheader253.preheader ]
  %i.bg = mul nuw nsw i32 %3, %2                  ; 3 uses
  %i.bh = add nsw i32 %i.bg, -1                   ; 5 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = insertelement <2 x i32> <i32 1, i32 poison>, i32 %2, i64 1 ; 2 uses
  %i.bk = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %i.bh, i64 1 ; 2 uses
  br label %.loopexit269

.loopexit269.loopexit:                            ; preds = %.split, %.loopexit307
  br label %.loopexit269

.loopexit269:                                     ; preds = %.loopexit269.loopexit, %bb.i
  %.4 = phi i32 [ 1, %bb.i ], [ %i.dh, %.loopexit269.loopexit ] ; 4 uses
  %.0202 = phi i32 [ %3, %bb.i ], [ %spec.select, %.loopexit269.loopexit ]
  %.1200 = phi i32 [ %.0199, %bb.i ], [ %i.cl, %.loopexit269.loopexit ]
  %i.bm = sub nsw i32 %i.bh, %.4                  ; 3 uses
  %i.bn = sext i32 %.4 to i64                     ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !26
  %i.bu = load <2 x float>, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %i.bv = load float, ptr %i.bs, align 4, !tbaa !26
  %i.bw = load <2 x float>, ptr %i.br, align 4, !tbaa !20 ; 2 uses
  %i.bx = extractelement <2 x float> %i.bu, i64 0
  %i.by = extractelement <2 x float> %i.bw, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.loopexit269
  %.2201 = phi i32 [ %.1200, %.loopexit269 ], [ %i.cl, %bb.p ]
  %.0193 = phi i32 [ %.4, %.loopexit269 ], [ %i.cd, %bb.p ] ; 5 uses
  %.0192 = phi i32 [ %i.bm, %.loopexit269 ], [ %i.ce, %bb.p ] ; 4 uses
  %i.bz = insertelement <2 x i32> poison, i32 %.0193, i64 0
  %i.ca = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cb = sdiv <2 x i32> %i.ca, %i.bj
  %i.cc = mul nsw <2 x i32> %i.cb, %i.bl          ; 2 uses
  %shift = shufflevector <2 x i32> %i.cc, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.cc, %shift
  %i.cd = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 5 uses
  %i.ce = sub nsw i32 %i.bh, %i.cd                ; 2 uses
  %i.cf = icmp slt i32 %.0193, 500
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = sext i32 %.0193 to i64
  %i.ch = getelementptr inbounds i8, ptr %i.a, i64 %i.cg
  store i8 1, ptr %i.ch, align 1, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ci = icmp slt i32 %.0192, 500
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = sext i32 %.0192 to i64
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cj
  store i8 1, ptr %i.ck, align 1, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = add nuw nsw i32 %.2201, 2               ; 3 uses
  %i.cm = icmp eq i32 %i.cd, %.4
  br i1 %i.cm, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = icmp eq i32 %i.cd, %i.bm
  br i1 %i.cn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = sext i32 %i.cd to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.co
  %i.cq = sext i32 %.0193 to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cq
  %i.cs = load <2 x float>, ptr %i.cp, align 4, !tbaa !20
  store <2 x float> %i.cs, ptr %i.cr, align 4, !tbaa !20
  %i.ct = sext i32 %i.ce to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ct
  %i.cv = sext i32 %.0192 to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cv
  %i.cx = load <2 x float>, ptr %i.cu, align 4, !tbaa !20
  store <2 x float> %i.cx, ptr %i.cw, align 4, !tbaa !20
  br label %bb.j

bb.q:                                             ; preds = %bb.n, %bb.o
  %.sroa.8.1.ph = phi float [ %i.bv, %bb.o ], [ %i.bt, %bb.n ]
  %.sroa.033.1.ph = phi float [ %i.by, %bb.o ], [ %i.bx, %bb.n ]
  %i.cy = phi <2 x float> [ %i.bu, %bb.o ], [ %i.bw, %bb.n ]
  %i.cz = sext i32 %.0193 to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cz ; 2 uses
  store float %.sroa.033.1.ph, ptr %i.da, align 4, !tbaa !27
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store float %.sroa.8.1.ph, ptr %i.db, align 4, !tbaa !26
  %i.dc = sext i32 %.0192 to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dc
  store <2 x float> %i.cy, ptr %i.dd, align 4, !tbaa !20
  %.not227 = icmp slt i32 %i.cl, %i.bg
  br i1 %.not227, label %.critedge, label %.thread247

.critedge:                                        ; preds = %bb.q, %.critedge.backedge
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.critedge.backedge ], [ %i.bn, %bb.q ] ; 3 uses
  %.1203 = phi i32 [ %spec.select, %.critedge.backedge ], [ %.0202, %bb.q ]
  %i.de = sub nsw i64 %i.bi, %indvars.iv283       ; 2 uses
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, 1 ; 6 uses
  %i.df = add nsw i32 %.1203, %3                  ; 2 uses
  %.not228 = icmp slt i32 %i.df, %i.bg
  %i.dg = select i1 %.not228, i32 0, i32 %i.bh
  %spec.select = sub nsw i32 %i.df, %i.dg         ; 6 uses
  %i.dh = trunc nsw i64 %indvars.iv.next284 to i32 ; 2 uses
  %.not229 = icmp eq i32 %spec.select, %i.dh
  br i1 %.not229, label %.critedge.backedge, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.di = icmp sgt i64 %indvars.iv283, 498
  br i1 %i.di, label %.preheader251, label %.split

.preheader251:                                    ; preds = %bb.r
  %i.dj = sext i32 %spec.select to i64            ; 2 uses
  %i.dk = icmp slt i64 %indvars.iv.next284, %i.dj
  %i.dl = icmp sgt i64 %i.de, %i.dj
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph, label %.loopexit307

.lr.ph:                                           ; preds = %.preheader251, %.lr.ph
  %.0261 = phi i32 [ %i.dr, %.lr.ph ], [ %spec.select, %.preheader251 ]
  %i.dn = insertelement <2 x i32> poison, i32 %.0261, i64 0
  %i.do = shufflevector <2 x i32> %i.dn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dp = sdiv <2 x i32> %i.do, %i.bj
  %i.dq = mul nuw nsw <2 x i32> %i.dp, %i.bl      ; 2 uses
  %shift336 = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop337 = sub nsw <2 x i32> %i.dq, %shift336
  %i.dr = extractelement <2 x i32> %foldExtExtBinop337, i64 0 ; 3 uses
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = icmp slt i64 %indvars.iv.next284, %i.ds
  %i.du = icmp sgt i64 %i.de, %i.ds
  %i.dv = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %i.dv, label %.lr.ph, label %.loopexit307, !llvm.loop !16

.split:                                           ; preds = %bb.r
  %i.dw = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next284
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !24
  %.not230 = icmp eq i8 %i.dx, 0
  br i1 %.not230, label %.loopexit269.loopexit, label %.critedge.backedge, !llvm.loop !17

.loopexit307:                                     ; preds = %.lr.ph, %.preheader251
  %.0.lcssa = phi i32 [ %spec.select, %.preheader251 ], [ %i.dr, %.lr.ph ]
  %i.dy = zext i32 %.0.lcssa to i64
  %i.dz = icmp eq i64 %indvars.iv.next284, %i.dy
  br i1 %i.dz, label %.loopexit269.loopexit, label %.critedge.backedge, !llvm.loop !17

.critedge.backedge:                               ; preds = %.split, %.loopexit307, %.critedge
  br label %.critedge, !llvm.loop !18

.thread247:                                       ; preds = %._crit_edge, %bb.q, %.loopexit, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !21, !22}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !21}
!12 = distinct !{!12, !21}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !21}
!15 = distinct !{!15, !21}
!16 = distinct !{!16, !21}
!17 = distinct !{!17, !21}
!18 = distinct !{!18, !21}
!19 = !{!"float", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!5, !5, i64 0}
!25 = !{!"_ZTS9t_complex", !19, i64 0, !19, i64 4}
!26 = !{!25, !19, i64 4}
!27 = !{!25, !19, i64 0}
end_hunk_0
