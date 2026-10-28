Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_fma?download=true
inline.NumInlined: 420
inline.NumDeleted: 278
loop-unroll.NumRuntimeUnrolled: 268
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL19binary_op_broadcastERKNS_3MatES2_RS0_iRKNS_6OptionE.omp_outlined:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.w = load i32, ptr %i.l, align 8, !tbaa !33
  %i.x = add nsw i32 %i.w, -1
  %i.y = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated31 = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.y)
  %i.z = load i32, ptr %i.m, align 8, !tbaa !33
  %i.aa = add nsw i32 %i.z, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.y)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !35
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !32  ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sext i32 %.sroa.speculated31 to i64
  %i.af = mul nsw i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !19
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load ptr, ptr %4, align 8, !tbaa !35
  %i.ak = load i32, ptr %i.p, align 4, !tbaa !32  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = sext i32 %.sroa.speculated to i64
  %i.an = mul nsw i64 %i.al, %i.am
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !19
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap
  %i.ar = load ptr, ptr %5, align 8, !tbaa !35
  %i.as = load i32, ptr %i.r, align 4, !tbaa !32
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %indvars.iv, %i.at
  %i.av = load i64, ptr %i.s, align 8, !tbaa !19
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aw
  %i.ay = load i32, ptr %i.t, align 8, !tbaa !18
  %i.az = load i32, ptr %i.u, align 8, !tbaa !18
  %i.ba = load i32, ptr %6, align 4, !tbaa !25
  call fastcc void @_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii(ptr noundef %i.ai, ptr noundef %i.aq, ptr noundef %i.ax, i32 noundef %i.ac, i32 noundef %i.ak, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !25
  %i.bc = sext i32 %i.bb to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bc
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #11 {
bb.a:
  switch i32 %7, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.z
    i32 2, label %bb.ax
    i32 3, label %bb.bv
    i32 4, label %bb.ct
    i32 5, label %bb.dr
    i32 6, label %bb.ep
    i32 7, label %bb.fr
    i32 8, label %bb.gp
    i32 9, label %bb.hm
    i32 10, label %bb.io
    i32 11, label %bb.ju
    i32 12, label %bb.la
    i32 13, label %bb.ly
    i32 14, label %bb.mw
    i32 15, label %bb.nu
    i32 16, label %bb.os
    i32 17, label %bb.pp
    i32 18, label %bb.qn
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated83.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 23 uses
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 8 uses
  %i.a = mul i32 %.sroa.speculated.i, %.sroa.speculated83.i ; 35 uses
  %i.b = icmp eq i32 %5, %6
  br i1 %i.b, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, %4
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp sgt i32 %i.a, 7
  br i1 %i.d, label %.lr.ph.i.i.preheader, label %.preheader40.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.e = add nsw i32 %i.a, -8                     ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %xtraiter8069 = and i32 %i.g, 3                 ; 3 uses
  %i.h = icmp ult i32 %i.e, 24
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter8076 = and i32 %i.g, 1073741820
  br label %.lr.ph.i.i

.preheader40.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod8071.not = icmp eq i32 %xtraiter8069, 0
  br i1 %lcmp.mod8071.not, label %.preheader40.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader40.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.044.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.am, %.preheader40.loopexit.i.i.unr-lcssa ]
  %.02843.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.an, %.preheader40.loopexit.i.i.unr-lcssa ]
  %.03441.i.i.epil.init = phi ptr [ %2, %.lr.ph.i.i.preheader ], [ %i.ao, %.preheader40.loopexit.i.i.unr-lcssa ]
  %lcmp.mod8075 = icmp ne i32 %xtraiter8069, 0
  tail call void @llvm.assume(i1 %lcmp.mod8075)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.044.i.i.epil = phi ptr [ %i.l, %.lr.ph.i.i.epil ], [ %.044.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.02843.i.i.epil = phi ptr [ %i.m, %.lr.ph.i.i.epil ], [ %.02843.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.03441.i.i.epil = phi ptr [ %i.n, %.lr.ph.i.i.epil ], [ %.03441.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter8070 = phi i32 [ %epil.iter8070.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.i = load <8 x float>, ptr %.044.i.i.epil, align 1, !tbaa !60
  %i.j = load <8 x float>, ptr %.02843.i.i.epil, align 1, !tbaa !60
  %i.k = fadd fast <8 x float> %i.j, %i.i
  store <8 x float> %i.k, ptr %.03441.i.i.epil, align 1, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %.044.i.i.epil, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02843.i.i.epil, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03441.i.i.epil, i64 32 ; 2 uses
  %epil.iter8070.next = add i32 %epil.iter8070, 1 ; 2 uses
  %epil.iter8070.cmp.not = icmp eq i32 %epil.iter8070.next, %xtraiter8069
  br i1 %epil.iter8070.cmp.not, label %.preheader40.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !70

.preheader40.loopexit.i.i:                        ; preds = %.lr.ph.i.i.epil, %.preheader40.loopexit.i.i.unr-lcssa
  %.lcssa6405 = phi ptr [ %i.am, %.preheader40.loopexit.i.i.unr-lcssa ], [ %i.l, %.lr.ph.i.i.epil ]
  %.lcssa6404 = phi ptr [ %i.an, %.preheader40.loopexit.i.i.unr-lcssa ], [ %i.m, %.lr.ph.i.i.epil ]
  %.lcssa6403 = phi ptr [ %i.ao, %.preheader40.loopexit.i.i.unr-lcssa ], [ %i.n, %.lr.ph.i.i.epil ]
  %i.o = and i32 %i.a, 2147483640
  br label %.preheader40.i.i

.preheader40.i.i:                                 ; preds = %.preheader40.loopexit.i.i, %bb.d
  %.034.lcssa.i.i = phi ptr [ %2, %bb.d ], [ %.lcssa6403, %.preheader40.loopexit.i.i ] ; 2 uses
  %.031.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.o, %.preheader40.loopexit.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %1, %bb.d ], [ %.lcssa6404, %.preheader40.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %0, %bb.d ], [ %.lcssa6405, %.preheader40.loopexit.i.i ] ; 2 uses
  %i.p = or disjoint i32 %.031.lcssa.i.i, 3
  %i.q = icmp slt i32 %i.p, %i.a
  br i1 %i.q, label %.lr.ph52.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.044.i.i = phi ptr [ %0, %.lr.ph.i.i.preheader.new ], [ %i.am, %.lr.ph.i.i ] ; 5 uses
  %.02843.i.i = phi ptr [ %1, %.lr.ph.i.i.preheader.new ], [ %i.an, %.lr.ph.i.i ] ; 5 uses
  %.03441.i.i = phi ptr [ %2, %.lr.ph.i.i.preheader.new ], [ %i.ao, %.lr.ph.i.i ] ; 5 uses
  %niter8077 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter8077.next.3, %.lr.ph.i.i ]
  %i.r = load <8 x float>, ptr %.044.i.i, align 1, !tbaa !60
  %i.s = load <8 x float>, ptr %.02843.i.i, align 1, !tbaa !60
  %i.t = fadd fast <8 x float> %i.s, %i.r
  store <8 x float> %i.t, ptr %.03441.i.i, align 1, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.02843.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.03441.i.i, i64 32
  %i.x = load <8 x float>, ptr %i.u, align 1, !tbaa !60
  %i.y = load <8 x float>, ptr %i.v, align 1, !tbaa !60
  %i.z = fadd fast <8 x float> %i.y, %i.x
  store <8 x float> %i.z, ptr %i.w, align 1, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.02843.i.i, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %.03441.i.i, i64 64
  %i.ad = load <8 x float>, ptr %i.aa, align 1, !tbaa !60
  %i.ae = load <8 x float>, ptr %i.ab, align 1, !tbaa !60
  %i.af = fadd fast <8 x float> %i.ae, %i.ad
  store <8 x float> %i.af, ptr %i.ac, align 1, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %.02843.i.i, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %.03441.i.i, i64 96
  %i.aj = load <8 x float>, ptr %i.ag, align 1, !tbaa !60
  %i.ak = load <8 x float>, ptr %i.ah, align 1, !tbaa !60
  %i.al = fadd fast <8 x float> %i.ak, %i.aj
  store <8 x float> %i.al, ptr %i.ai, align 1, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 128 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02843.i.i, i64 128 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03441.i.i, i64 128 ; 3 uses
  %niter8077.next.3 = add i32 %niter8077, 4       ; 2 uses
  %niter8077.ncmp.3.not = icmp eq i32 %niter8077.next.3, %unroll_iter8076
  br i1 %niter8077.ncmp.3.not, label %.preheader40.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !71

.preheader.i.i:                                   ; preds = %.lr.ph52.i.i, %.preheader40.i.i
  %.135.lcssa.i.i = phi ptr [ %.034.lcssa.i.i, %.preheader40.i.i ], [ %i.ci, %.lr.ph52.i.i ] ; 7 uses
  %.132.lcssa.i.i = phi i32 [ %.031.lcssa.i.i, %.preheader40.i.i ], [ %i.cj, %.lr.ph52.i.i ] ; 6 uses
  %.129.lcssa.i.i = phi ptr [ %.028.lcssa.i.i, %.preheader40.i.i ], [ %i.ch, %.lr.ph52.i.i ] ; 7 uses
  %.1.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader40.i.i ], [ %i.cg, %.lr.ph52.i.i ] ; 7 uses
  %.129.lcssa.i.i6323 = ptrtoaddr ptr %.129.lcssa.i.i to i64
  %.135.lcssa.i.i6324 = ptrtoaddr ptr %.1.lcssa.i.i to i64
  %.1.lcssa.i.i6325 = ptrtoaddr ptr %.135.lcssa.i.i to i64 ; 2 uses
  %i.ap = icmp slt i32 %.132.lcssa.i.i, %i.a
  br i1 %i.ap, label %iter.check6348, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check6348:                                   ; preds = %.preheader.i.i
  %i.aq = xor i32 %.132.lcssa.i.i, -1
  %i.ar = add i32 %i.a, %i.aq                     ; 3 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 5 uses
  %min.iters.check6327 = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check6327, label %.lr.ph61.i.i.preheader, label %vector.memcheck6328

vector.memcheck6328:                              ; preds = %iter.check6348
  %i.au = sub i64 %.135.lcssa.i.i6324, %.1.lcssa.i.i6325
  %diff.check6329 = icmp ugt i64 %i.au, -64
  %i.av = sub i64 %.129.lcssa.i.i6323, %.1.lcssa.i.i6325
  %diff.check6330 = icmp ugt i64 %i.av, -64
  %conflict.rdx6331 = or i1 %diff.check6329, %diff.check6330
  br i1 %conflict.rdx6331, label %.lr.ph61.i.i.preheader, label %vector.main.loop.iter.check6332

vector.main.loop.iter.check6332:                  ; preds = %vector.memcheck6328
  %min.iters.check6333 = icmp ult i32 %i.ar, 15
  br i1 %min.iters.check6333, label %vec.epilog.ph6352, label %vector.ph6334

vector.ph6334:                                    ; preds = %vector.main.loop.iter.check6332
  %i.aw = and i64 %i.at, 12
  %n.vec6335 = and i64 %i.at, 8589934576          ; 5 uses
  %i.ax = shl nuw nsw i64 %n.vec6335, 2           ; 3 uses
  %i.ay = getelementptr i8, ptr %.1.lcssa.i.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %.129.lcssa.i.i, i64 %i.ax
  %i.ba = trunc i64 %n.vec6335 to i32
  %i.bb = add i32 %.132.lcssa.i.i, %i.ba
  %i.bc = getelementptr i8, ptr %.135.lcssa.i.i, i64 %i.ax
  br label %vector.body6336

vector.body6336:                                  ; preds = %vector.ph6334, %vector.body6336
  %index6337 = phi i64 [ 0, %vector.ph6334 ], [ %index.next6345, %vector.body6336 ] ; 2 uses
  %i.bd = shl i64 %index6337, 2                   ; 3 uses
  %next.gep6338 = getelementptr i8, ptr %.1.lcssa.i.i, i64 %i.bd ; 2 uses
  %next.gep6339 = getelementptr i8, ptr %.129.lcssa.i.i, i64 %i.bd ; 2 uses
  %next.gep6340 = getelementptr i8, ptr %.135.lcssa.i.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep6338, i64 32
  %wide.load6341 = load <8 x float>, ptr %next.gep6338, align 4, !tbaa !59
  %wide.load6342 = load <8 x float>, ptr %i.be, align 4, !tbaa !59
  %i.bf = getelementptr i8, ptr %next.gep6339, i64 32
  %wide.load6343 = load <8 x float>, ptr %next.gep6339, align 4, !tbaa !59
  %wide.load6344 = load <8 x float>, ptr %i.bf, align 4, !tbaa !59
  %i.bg = fadd fast <8 x float> %wide.load6343, %wide.load6341
  %i.bh = fadd fast <8 x float> %wide.load6344, %wide.load6342
  %i.bi = getelementptr i8, ptr %next.gep6340, i64 32
  store <8 x float> %i.bg, ptr %next.gep6340, align 4, !tbaa !59
  store <8 x float> %i.bh, ptr %i.bi, align 4, !tbaa !59
  %index.next6345 = add nuw i64 %index6337, 16    ; 2 uses
  %i.bj = icmp eq i64 %index.next6345, %n.vec6335
  br i1 %i.bj, label %middle.block6346, label %vector.body6336, !llvm.loop !72

middle.block6346:                                 ; preds = %vector.body6336
  %cmp.n6347 = icmp eq i64 %i.at, %n.vec6335
  br i1 %cmp.n6347, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check6349

vec.epilog.iter.check6349:                        ; preds = %middle.block6346
  %min.epilog.iters.check6351 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check6351, label %.lr.ph61.i.i.preheader, label %vec.epilog.ph6352, !prof !64

vec.epilog.ph6352:                                ; preds = %vector.main.loop.iter.check6332, %vec.epilog.iter.check6349
  %vec.epilog.resume.val6353 = phi i64 [ %n.vec6335, %vec.epilog.iter.check6349 ], [ 0, %vector.main.loop.iter.check6332 ]
  %n.vec6354 = and i64 %i.at, 8589934588          ; 4 uses
  %i.bk = shl nuw nsw i64 %n.vec6354, 2           ; 3 uses
  %i.bl = getelementptr i8, ptr %.1.lcssa.i.i, i64 %i.bk
  %i.bm = getelementptr i8, ptr %.129.lcssa.i.i, i64 %i.bk
  %i.bn = trunc i64 %n.vec6354 to i32
  %i.bo = add i32 %.132.lcssa.i.i, %i.bn
  %i.bp = getelementptr i8, ptr %.135.lcssa.i.i, i64 %i.bk
  br label %vec.epilog.vector.body6355

vec.epilog.vector.body6355:                       ; preds = %vec.epilog.vector.body6355, %vec.epilog.ph6352
  %index6356 = phi i64 [ %vec.epilog.resume.val6353, %vec.epilog.ph6352 ], [ %index.next6362, %vec.epilog.vector.body6355 ] ; 2 uses
  %i.bq = shl i64 %index6356, 2                   ; 3 uses
  %next.gep6357 = getelementptr i8, ptr %.1.lcssa.i.i, i64 %i.bq
  %next.gep6358 = getelementptr i8, ptr %.129.lcssa.i.i, i64 %i.bq
  %next.gep6359 = getelementptr i8, ptr %.135.lcssa.i.i, i64 %i.bq
  %wide.load6360 = load <4 x float>, ptr %next.gep6357, align 4, !tbaa !59
  %wide.load6361 = load <4 x float>, ptr %next.gep6358, align 4, !tbaa !59
  %i.br = fadd fast <4 x float> %wide.load6361, %wide.load6360
  store <4 x float> %i.br, ptr %next.gep6359, align 4, !tbaa !59
  %index.next6362 = add nuw i64 %index6356, 4     ; 2 uses
  %i.bs = icmp eq i64 %index.next6362, %n.vec6354
  br i1 %i.bs, label %vec.epilog.middle.block6363, label %vec.epilog.vector.body6355, !llvm.loop !73

vec.epilog.middle.block6363:                      ; preds = %vec.epilog.vector.body6355
  %cmp.n6364 = icmp eq i64 %i.at, %n.vec6354
  br i1 %cmp.n6364, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i.preheader

.lr.ph61.i.i.preheader:                           ; preds = %iter.check6348, %vector.memcheck6328, %vec.epilog.iter.check6349, %vec.epilog.middle.block6363
  %.260.i.i.ph = phi ptr [ %.1.lcssa.i.i, %iter.check6348 ], [ %.1.lcssa.i.i, %vector.memcheck6328 ], [ %i.ay, %vec.epilog.iter.check6349 ], [ %i.bl, %vec.epilog.middle.block6363 ] ; 2 uses
  %.23059.i.i.ph = phi ptr [ %.129.lcssa.i.i, %iter.check6348 ], [ %.129.lcssa.i.i, %vector.memcheck6328 ], [ %i.az, %vec.epilog.iter.check6349 ], [ %i.bm, %vec.epilog.middle.block6363 ] ; 2 uses
  %.23358.i.i.ph = phi i32 [ %.132.lcssa.i.i, %iter.check6348 ], [ %.132.lcssa.i.i, %vector.memcheck6328 ], [ %i.bb, %vec.epilog.iter.check6349 ], [ %i.bo, %vec.epilog.middle.block6363 ] ; 4 uses
  %.23657.i.i.ph = phi ptr [ %.135.lcssa.i.i, %iter.check6348 ], [ %.135.lcssa.i.i, %vector.memcheck6328 ], [ %i.bc, %vec.epilog.iter.check6349 ], [ %i.bp, %vec.epilog.middle.block6363 ] ; 2 uses
  %i.bt = sub i32 %i.a, %.23358.i.i.ph
  %xtraiter8078 = and i32 %i.bt, 3                ; 2 uses
  %lcmp.mod8079.not = icmp eq i32 %xtraiter8078, 0
  br i1 %lcmp.mod8079.not, label %.lr.ph61.i.i.prol.loopexit, label %.lr.ph61.i.i.prol

.lr.ph61.i.i.prol:                                ; preds = %.lr.ph61.i.i.preheader, %.lr.ph61.i.i.prol
  %.260.i.i.prol = phi ptr [ %i.bx, %.lr.ph61.i.i.prol ], [ %.260.i.i.ph, %.lr.ph61.i.i.preheader ] ; 2 uses
  %.23059.i.i.prol = phi ptr [ %i.by, %.lr.ph61.i.i.prol ], [ %.23059.i.i.ph, %.lr.ph61.i.i.preheader ] ; 2 uses
  %.23358.i.i.prol = phi i32 [ %i.ca, %.lr.ph61.i.i.prol ], [ %.23358.i.i.ph, %.lr.ph61.i.i.preheader ]
  %.23657.i.i.prol = phi ptr [ %i.bz, %.lr.ph61.i.i.prol ], [ %.23657.i.i.ph, %.lr.ph61.i.i.preheader ] ; 2 uses
  %prol.iter8080 = phi i32 [ %prol.iter8080.next, %.lr.ph61.i.i.prol ], [ 0, %.lr.ph61.i.i.preheader ]
  %i.bu = load float, ptr %.260.i.i.prol, align 4, !tbaa !59
  %i.bv = load float, ptr %.23059.i.i.prol, align 4, !tbaa !59
  %i.bw = fadd fast float %i.bv, %i.bu
  store float %i.bw, ptr %.23657.i.i.prol, align 4, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %.260.i.i.prol, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.23059.i.i.prol, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.23657.i.i.prol, i64 4 ; 2 uses
  %i.ca = add nuw nsw i32 %.23358.i.i.prol, 1     ; 2 uses
  %prol.iter8080.next = add i32 %prol.iter8080, 1 ; 2 uses
  %prol.iter8080.cmp.not = icmp eq i32 %prol.iter8080.next, %xtraiter8078
  br i1 %prol.iter8080.cmp.not, label %.lr.ph61.i.i.prol.loopexit, label %.lr.ph61.i.i.prol, !llvm.loop !74

.lr.ph61.i.i.prol.loopexit:                       ; preds = %.lr.ph61.i.i.prol, %.lr.ph61.i.i.preheader
  %.260.i.i.unr = phi ptr [ %.260.i.i.ph, %.lr.ph61.i.i.preheader ], [ %i.bx, %.lr.ph61.i.i.prol ]
  %.23059.i.i.unr = phi ptr [ %.23059.i.i.ph, %.lr.ph61.i.i.preheader ], [ %i.by, %.lr.ph61.i.i.prol ]
  %.23358.i.i.unr = phi i32 [ %.23358.i.i.ph, %.lr.ph61.i.i.preheader ], [ %i.ca, %.lr.ph61.i.i.prol ]
  %.23657.i.i.unr = phi ptr [ %.23657.i.i.ph, %.lr.ph61.i.i.preheader ], [ %i.bz, %.lr.ph61.i.i.prol ]
  %i.cb = sub i32 %.23358.i.i.ph, %i.a
  %i.cc = icmp ugt i32 %i.cb, -4
  br i1 %i.cc, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i

.lr.ph52.i.i:                                     ; preds = %.preheader40.i.i, %.lr.ph52.i.i
  %.151.i.i = phi ptr [ %i.cg, %.lr.ph52.i.i ], [ %.0.lcssa.i.i, %.preheader40.i.i ] ; 2 uses
  %.12950.i.i = phi ptr [ %i.ch, %.lr.ph52.i.i ], [ %.028.lcssa.i.i, %.preheader40.i.i ] ; 2 uses
  %.13249.i.i = phi i32 [ %i.cj, %.lr.ph52.i.i ], [ %.031.lcssa.i.i, %.preheader40.i.i ]
  %.13548.i.i = phi ptr [ %i.ci, %.lr.ph52.i.i ], [ %.034.lcssa.i.i, %.preheader40.i.i ] ; 2 uses
  %i.cd = load <4 x float>, ptr %.151.i.i, align 1, !tbaa !60
  %i.ce = load <4 x float>, ptr %.12950.i.i, align 1, !tbaa !60
  %i.cf = fadd fast <4 x float> %i.ce, %i.cd
  store <4 x float> %i.cf, ptr %.13548.i.i, align 1, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %.151.i.i, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.12950.i.i, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.13548.i.i, i64 16 ; 2 uses
  %i.cj = add nuw nsw i32 %.13249.i.i, 4          ; 3 uses
  %i.ck = or disjoint i32 %i.cj, 3
  %i.cl = icmp slt i32 %i.ck, %i.a
  br i1 %i.cl, label %.lr.ph52.i.i, label %.preheader.i.i, !llvm.loop !75

.lr.ph61.i.i:                                     ; preds = %.lr.ph61.i.i.prol.loopexit, %.lr.ph61.i.i
  %.260.i.i = phi ptr [ %i.dh, %.lr.ph61.i.i ], [ %.260.i.i.unr, %.lr.ph61.i.i.prol.loopexit ] ; 5 uses
  %.23059.i.i = phi ptr [ %i.di, %.lr.ph61.i.i ], [ %.23059.i.i.unr, %.lr.ph61.i.i.prol.loopexit ] ; 5 uses
  %.23358.i.i = phi i32 [ %i.dk, %.lr.ph61.i.i ], [ %.23358.i.i.unr, %.lr.ph61.i.i.prol.loopexit ]
  %.23657.i.i = phi ptr [ %i.dj, %.lr.ph61.i.i ], [ %.23657.i.i.unr, %.lr.ph61.i.i.prol.loopexit ] ; 5 uses
  %i.cm = load float, ptr %.260.i.i, align 4, !tbaa !59
  %i.cn = load float, ptr %.23059.i.i, align 4, !tbaa !59
  %i.co = fadd fast float %i.cn, %i.cm
  store float %i.co, ptr %.23657.i.i, align 4, !tbaa !59
  %i.cp = getelementptr inbounds nuw i8, ptr %.260.i.i, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.23059.i.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.23657.i.i, i64 4
  %i.cs = load float, ptr %i.cp, align 4, !tbaa !59
  %i.ct = load float, ptr %i.cq, align 4, !tbaa !59
  %i.cu = fadd fast float %i.ct, %i.cs
  store float %i.cu, ptr %i.cr, align 4, !tbaa !59
  %i.cv = getelementptr inbounds nuw i8, ptr %.260.i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.23059.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.23657.i.i, i64 8
  %i.cy = load float, ptr %i.cv, align 4, !tbaa !59
  %i.cz = load float, ptr %i.cw, align 4, !tbaa !59
  %i.da = fadd fast float %i.cz, %i.cy
  store float %i.da, ptr %i.cx, align 4, !tbaa !59
  %i.db = getelementptr inbounds nuw i8, ptr %.260.i.i, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %.23059.i.i, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %.23657.i.i, i64 12
  %i.de = load float, ptr %i.db, align 4, !tbaa !59
  %i.df = load float, ptr %i.dc, align 4, !tbaa !59
  %i.dg = fadd fast float %i.df, %i.de
  store float %i.dg, ptr %i.dd, align 4, !tbaa !59
  %i.dh = getelementptr inbounds nuw i8, ptr %.260.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.23059.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.23657.i.i, i64 16
  %i.dk = add nuw nsw i32 %.23358.i.i, 4          ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i32 %i.dk, %i.a
  br i1 %exitcond.not.i.i.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i, !llvm.loop !76

bb.e:                                             ; preds = %bb.c
  %i.dl = icmp eq i32 %4, 1
  br i1 %i.dl, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.dm = load float, ptr %1, align 4, !tbaa !59  ; 8 uses
  %i.dn = icmp eq i32 %.sroa.speculated.i, 4
  br i1 %i.dn, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f
  %i.do = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dp = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dr = icmp eq i32 %.sroa.speculated.i, 8
  br i1 %i.dr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ds = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %.thread.i.i
  %i.dt = phi <4 x float> [ %i.do, %.thread.i.i ], [ %i.dq, %bb.g ] ; 2 uses
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dv = phi <4 x float> [ %i.dq, %bb.h ], [ %i.dt, %bb.i ]
  %i.dw = phi fast <8 x float> [ %i.ds, %bb.h ], [ %i.du, %bb.i ] ; 5 uses
  %i.dx = icmp sgt i32 %i.a, 7
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %.13356.i.i.prol = phi i32 [ %i.tg, %.lr.ph59.i.i.prol ], [ %.032.lcssa.i.i, %.lr.ph59.i.i.preheader ]
  %prol.iter8013 = phi i32 [ %prol.iter8013.next, %.lr.ph59.i.i.prol ], [ 0, %.lr.ph59.i.i.preheader ]
  %i.ta = load float, ptr %.358.i.i.prol, align 4, !tbaa !59
  %i.tb = insertelement <4 x float> poison, float %i.ta, i64 0
  %i.tc = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.td = fadd fast <4 x float> %i.tc, %i.sg
  store <4 x float> %i.td, ptr %.33157.i.i.prol, align 1, !tbaa !60
  %i.te = getelementptr inbounds nuw i8, ptr %.358.i.i.prol, i64 4 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.33157.i.i.prol, i64 16 ; 2 uses
  %i.tg = add nuw nsw i32 %.13356.i.i.prol, 1     ; 2 uses
  %prol.iter8013.next = add i32 %prol.iter8013, 1 ; 2 uses
  %prol.iter8013.cmp.not = icmp eq i32 %prol.iter8013.next, %xtraiter8011
  br i1 %prol.iter8013.cmp.not, label %.lr.ph59.i.i.prol.loopexit, label %.lr.ph59.i.i.prol, !llvm.loop !99

.lr.ph59.i.i.prol.loopexit:                       ; preds = %.lr.ph59.i.i.prol, %.lr.ph59.i.i.preheader
  %.358.i.i.unr = phi ptr [ %.2.lcssa.i68.i, %.lr.ph59.i.i.preheader ], [ %i.te, %.lr.ph59.i.i.prol ]
  %.33157.i.i.unr = phi ptr [ %.230.lcssa.i.i, %.lr.ph59.i.i.preheader ], [ %i.tf, %.lr.ph59.i.i.prol ]
  %.13356.i.i.unr = phi i32 [ %.032.lcssa.i.i, %.lr.ph59.i.i.preheader ], [ %i.tg, %.lr.ph59.i.i.prol ]
  %i.th = sub nsw i32 %.032.lcssa.i.i, %.sroa.speculated83.i
  %i.ti = icmp ugt i32 %i.th, -4
  br i1 %i.ti, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph59.i.i

.lr.ph52.i69.i:                                   ; preds = %.lr.ph52.i69.i, %.lr.ph52.i69.i.preheader.new
  %.251.i.i = phi ptr [ %1, %.lr.ph52.i69.i.preheader.new ], [ %i.tz, %.lr.ph52.i69.i ] ; 5 uses
  %.23050.i.i = phi ptr [ %2, %.lr.ph52.i69.i.preheader.new ], [ %i.ua, %.lr.ph52.i69.i ] ; 3 uses
  %niter8010 = phi i32 [ 0, %.lr.ph52.i69.i.preheader.new ], [ %niter8010.next.1, %.lr.ph52.i69.i ]
  %i.tj = load float, ptr %.251.i.i, align 4, !tbaa !59
  %i.tk = insertelement <4 x float> poison, float %i.tj, i64 0
  %i.tl = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 4
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !59
  %i.tn = insertelement <4 x float> poison, float %i.tm, i64 0
  %i.to = shufflevector <4 x float> %i.tk, <4 x float> %i.tn, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.tp = fadd fast <8 x float> %i.to, %i.sh
  store <8 x float> %i.tp, ptr %.23050.i.i, align 1, !tbaa !60
  %i.tq = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 8
  %i.tr = getelementptr inbounds nuw i8, ptr %.23050.i.i, i64 32
  %i.ts = load float, ptr %i.tq, align 4, !tbaa !59
  %i.tt = insertelement <4 x float> poison, float %i.ts, i64 0
  %i.tu = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 12
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !59
  %i.tw = insertelement <4 x float> poison, float %i.tv, i64 0
  %i.tx = shufflevector <4 x float> %i.tt, <4 x float> %i.tw, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ty = fadd fast <8 x float> %i.tx, %i.sh
  store <8 x float> %i.ty, ptr %i.tr, align 1, !tbaa !60
  %i.tz = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 16 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.23050.i.i, i64 64 ; 3 uses
  %niter8010.next.1 = add nuw nsw i32 %niter8010, 2 ; 2 uses
  %niter8010.ncmp.1.not = icmp eq i32 %niter8010.next.1, %unroll_iter8009
  br i1 %niter8010.ncmp.1.not, label %.preheader.loopexit.i70.i.unr-lcssa, label %.lr.ph52.i69.i, !llvm.loop !100

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.prol.loopexit, %.lr.ph59.i.i
  %.358.i.i = phi ptr [ %i.ux, %.lr.ph59.i.i ], [ %.358.i.i.unr, %.lr.ph59.i.i.prol.loopexit ] ; 5 uses
  %.33157.i.i = phi ptr [ %i.uy, %.lr.ph59.i.i ], [ %.33157.i.i.unr, %.lr.ph59.i.i.prol.loopexit ] ; 5 uses
  %.13356.i.i = phi i32 [ %i.uz, %.lr.ph59.i.i ], [ %.13356.i.i.unr, %.lr.ph59.i.i.prol.loopexit ]
  %i.ub = load float, ptr %.358.i.i, align 4, !tbaa !59
  %i.uc = insertelement <4 x float> poison, float %i.ub, i64 0
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ue = fadd fast <4 x float> %i.ud, %i.sg
  store <4 x float> %i.ue, ptr %.33157.i.i, align 1, !tbaa !60
  %i.uf = getelementptr inbounds nuw i8, ptr %.358.i.i, i64 4
  %i.ug = getelementptr inbounds nuw i8, ptr %.33157.i.i, i64 16
  %i.uh = load float, ptr %i.uf, align 4, !tbaa !59
  %i.ui = insertelement <4 x float> poison, float %i.uh, i64 0
  %i.uj = shufflevector <4 x float> %i.ui, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uk = fadd fast <4 x float> %i.uj, %i.sg
  store <4 x float> %i.uk, ptr %i.ug, align 1, !tbaa !60
  %i.ul = getelementptr inbounds nuw i8, ptr %.358.i.i, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %.33157.i.i, i64 32
  %i.un = load float, ptr %i.ul, align 4, !tbaa !59
  %i.uo = insertelement <4 x float> poison, float %i.un, i64 0
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uq = fadd fast <4 x float> %i.up, %i.sg
  store <4 x float> %i.uq, ptr %i.um, align 1, !tbaa !60
  %i.ur = getelementptr inbounds nuw i8, ptr %.358.i.i, i64 12
  %i.us = getelementptr inbounds nuw i8, ptr %.33157.i.i, i64 48
  %i.ut = load float, ptr %i.ur, align 4, !tbaa !59
  %i.uu = insertelement <4 x float> poison, float %i.ut, i64 0
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uw = fadd fast <4 x float> %i.uv, %i.sg
  store <4 x float> %i.uw, ptr %i.us, align 1, !tbaa !60
  %i.ux = getelementptr inbounds nuw i8, ptr %.358.i.i, i64 16
  %i.uy = getelementptr inbounds nuw i8, ptr %.33157.i.i, i64 64
  %i.uz = add nuw nsw i32 %.13356.i.i, 4          ; 2 uses
  %exitcond64.not.i.i.3 = icmp eq i32 %i.uz, %.sroa.speculated83.i
  br i1 %exitcond64.not.i.i.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph59.i.i, !llvm.loop !101

bb.z:                                             ; preds = %bb.a
  %.sroa.speculated83.i151 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 23 uses
  %.sroa.speculated.i152 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 8 uses
  %i.va = mul i32 %.sroa.speculated.i152, %.sroa.speculated83.i151 ; 35 uses
  %i.vb = icmp eq i32 %5, %6
  br i1 %i.vb, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %bb.z
  %i.vc = icmp eq i32 %3, %4
  br i1 %i.vc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.vd = icmp sgt i32 %i.va, 7
  br i1 %i.vd, label %.lr.ph.i.i279.preheader, label %.preheader40.i.i258

.lr.ph.i.i279.preheader:                          ; preds = %bb.ab
  %i.ve = add nsw i32 %i.va, -8                   ; 2 uses
  %i.vf = lshr i32 %i.ve, 3
  %i.vg = add nuw nsw i32 %i.vf, 1                ; 2 uses
  %xtraiter7991 = and i32 %i.vg, 3                ; 3 uses
  %i.vh = icmp ult i32 %i.ve, 24
  br i1 %i.vh, label %.lr.ph.i.i279.epil.preheader, label %.lr.ph.i.i279.preheader.new

.lr.ph.i.i279.preheader.new:                      ; preds = %.lr.ph.i.i279.preheader
  %unroll_iter7998 = and i32 %i.vg, 1073741820
  br label %.lr.ph.i.i279

.preheader40.loopexit.i.i284.unr-lcssa:           ; preds = %.lr.ph.i.i279
  %lcmp.mod7993.not = icmp eq i32 %xtraiter7991, 0
  br i1 %lcmp.mod7993.not, label %.preheader40.loopexit.i.i284, label %.lr.ph.i.i279.epil.preheader

.lr.ph.i.i279.epil.preheader:                     ; preds = %.preheader40.loopexit.i.i284.unr-lcssa, %.lr.ph.i.i279.preheader
  %.044.i.i280.epil.init = phi ptr [ %0, %.lr.ph.i.i279.preheader ], [ %i.wm, %.preheader40.loopexit.i.i284.unr-lcssa ]
  %.02843.i.i281.epil.init = phi ptr [ %1, %.lr.ph.i.i279.preheader ], [ %i.wn, %.preheader40.loopexit.i.i284.unr-lcssa ]
  %.03441.i.i283.epil.init = phi ptr [ %2, %.lr.ph.i.i279.preheader ], [ %i.wo, %.preheader40.loopexit.i.i284.unr-lcssa ]
  %lcmp.mod7997 = icmp ne i32 %xtraiter7991, 0
  tail call void @llvm.assume(i1 %lcmp.mod7997)
  br label %.lr.ph.i.i279.epil

.lr.ph.i.i279.epil:                               ; preds = %.lr.ph.i.i279.epil, %.lr.ph.i.i279.epil.preheader
  %.044.i.i280.epil = phi ptr [ %i.vl, %.lr.ph.i.i279.epil ], [ %.044.i.i280.epil.init, %.lr.ph.i.i279.epil.preheader ] ; 2 uses
  %.02843.i.i281.epil = phi ptr [ %i.vm, %.lr.ph.i.i279.epil ], [ %.02843.i.i281.epil.init, %.lr.ph.i.i279.epil.preheader ] ; 2 uses
  %.03441.i.i283.epil = phi ptr [ %i.vn, %.lr.ph.i.i279.epil ], [ %.03441.i.i283.epil.init, %.lr.ph.i.i279.epil.preheader ] ; 2 uses
  %epil.iter7992 = phi i32 [ %epil.iter7992.next, %.lr.ph.i.i279.epil ], [ 0, %.lr.ph.i.i279.epil.preheader ]
  %i.vi = load <8 x float>, ptr %.044.i.i280.epil, align 1, !tbaa !60
  %i.vj = load <8 x float>, ptr %.02843.i.i281.epil, align 1, !tbaa !60
  %i.vk = fsub fast <8 x float> %i.vi, %i.vj
  store <8 x float> %i.vk, ptr %.03441.i.i283.epil, align 1, !tbaa !60
  %i.vl = getelementptr inbounds nuw i8, ptr %.044.i.i280.epil, i64 32 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.02843.i.i281.epil, i64 32 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.03441.i.i283.epil, i64 32 ; 2 uses
  %epil.iter7992.next = add i32 %epil.iter7992, 1 ; 2 uses
  %epil.iter7992.cmp.not = icmp eq i32 %epil.iter7992.next, %xtraiter7991
  br i1 %epil.iter7992.cmp.not, label %.preheader40.loopexit.i.i284, label %.lr.ph.i.i279.epil, !llvm.loop !102

.preheader40.loopexit.i.i284:                     ; preds = %.lr.ph.i.i279.epil, %.preheader40.loopexit.i.i284.unr-lcssa
  %.lcssa6437 = phi ptr [ %i.wm, %.preheader40.loopexit.i.i284.unr-lcssa ], [ %i.vl, %.lr.ph.i.i279.epil ]
  %.lcssa6436 = phi ptr [ %i.wn, %.preheader40.loopexit.i.i284.unr-lcssa ], [ %i.vm, %.lr.ph.i.i279.epil ]
  %.lcssa6435 = phi ptr [ %i.wo, %.preheader40.loopexit.i.i284.unr-lcssa ], [ %i.vn, %.lr.ph.i.i279.epil ]
  %i.vo = and i32 %i.va, 2147483640
  br label %.preheader40.i.i258

.preheader40.i.i258:                              ; preds = %.preheader40.loopexit.i.i284, %bb.ab
  %.034.lcssa.i.i259 = phi ptr [ %2, %bb.ab ], [ %.lcssa6435, %.preheader40.loopexit.i.i284 ] ; 2 uses
  %.031.lcssa.i.i260 = phi i32 [ 0, %bb.ab ], [ %i.vo, %.preheader40.loopexit.i.i284 ] ; 3 uses
  %.028.lcssa.i.i261 = phi ptr [ %1, %bb.ab ], [ %.lcssa6436, %.preheader40.loopexit.i.i284 ] ; 2 uses
  %.0.lcssa.i.i262 = phi ptr [ %0, %bb.ab ], [ %.lcssa6437, %.preheader40.loopexit.i.i284 ] ; 2 uses
  %i.vp = or disjoint i32 %.031.lcssa.i.i260, 3
  %i.vq = icmp slt i32 %i.vp, %i.va
  br i1 %i.vq, label %.lr.ph52.i.i274, label %.preheader.i.i263

.lr.ph.i.i279:                                    ; preds = %.lr.ph.i.i279, %.lr.ph.i.i279.preheader.new
  %.044.i.i280 = phi ptr [ %0, %.lr.ph.i.i279.preheader.new ], [ %i.wm, %.lr.ph.i.i279 ] ; 5 uses
  %.02843.i.i281 = phi ptr [ %1, %.lr.ph.i.i279.preheader.new ], [ %i.wn, %.lr.ph.i.i279 ] ; 5 uses
  %.03441.i.i283 = phi ptr [ %2, %.lr.ph.i.i279.preheader.new ], [ %i.wo, %.lr.ph.i.i279 ] ; 5 uses
  %niter7999 = phi i32 [ 0, %.lr.ph.i.i279.preheader.new ], [ %niter7999.next.3, %.lr.ph.i.i279 ]
  %i.vr = load <8 x float>, ptr %.044.i.i280, align 1, !tbaa !60
  %i.vs = load <8 x float>, ptr %.02843.i.i281, align 1, !tbaa !60
  %i.vt = fsub fast <8 x float> %i.vr, %i.vs
  store <8 x float> %i.vt, ptr %.03441.i.i283, align 1, !tbaa !60
  %i.vu = getelementptr inbounds nuw i8, ptr %.044.i.i280, i64 32
  %i.vv = getelementptr inbounds nuw i8, ptr %.02843.i.i281, i64 32
  %i.vw = getelementptr inbounds nuw i8, ptr %.03441.i.i283, i64 32
  %i.vx = load <8 x float>, ptr %i.vu, align 1, !tbaa !60
  %i.vy = load <8 x float>, ptr %i.vv, align 1, !tbaa !60
  %i.vz = fsub fast <8 x float> %i.vx, %i.vy
  store <8 x float> %i.vz, ptr %i.vw, align 1, !tbaa !60
  %i.wa = getelementptr inbounds nuw i8, ptr %.044.i.i280, i64 64
  %i.wb = getelementptr inbounds nuw i8, ptr %.02843.i.i281, i64 64
  %i.wc = getelementptr inbounds nuw i8, ptr %.03441.i.i283, i64 64
  %i.wd = load <8 x float>, ptr %i.wa, align 1, !tbaa !60
  %i.we = load <8 x float>, ptr %i.wb, align 1, !tbaa !60
  %i.wf = fsub fast <8 x float> %i.wd, %i.we
  store <8 x float> %i.wf, ptr %i.wc, align 1, !tbaa !60
  %i.wg = getelementptr inbounds nuw i8, ptr %.044.i.i280, i64 96
  %i.wh = getelementptr inbounds nuw i8, ptr %.02843.i.i281, i64 96
  %i.wi = getelementptr inbounds nuw i8, ptr %.03441.i.i283, i64 96
  %i.wj = load <8 x float>, ptr %i.wg, align 1, !tbaa !60
  %i.wk = load <8 x float>, ptr %i.wh, align 1, !tbaa !60
  %i.wl = fsub fast <8 x float> %i.wj, %i.wk
  store <8 x float> %i.wl, ptr %i.wi, align 1, !tbaa !60
  %i.wm = getelementptr inbounds nuw i8, ptr %.044.i.i280, i64 128 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.02843.i.i281, i64 128 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.03441.i.i283, i64 128 ; 3 uses
  %niter7999.next.3 = add i32 %niter7999, 4       ; 2 uses
  %niter7999.ncmp.3.not = icmp eq i32 %niter7999.next.3, %unroll_iter7998
  br i1 %niter7999.ncmp.3.not, label %.preheader40.loopexit.i.i284.unr-lcssa, label %.lr.ph.i.i279, !llvm.loop !103

.preheader.i.i263:                                ; preds = %.lr.ph52.i.i274, %.preheader40.i.i258
  %.135.lcssa.i.i264 = phi ptr [ %.034.lcssa.i.i259, %.preheader40.i.i258 ], [ %i.yi, %.lr.ph52.i.i274 ] ; 7 uses
  %.132.lcssa.i.i265 = phi i32 [ %.031.lcssa.i.i260, %.preheader40.i.i258 ], [ %i.yj, %.lr.ph52.i.i274 ] ; 6 uses
  %.129.lcssa.i.i266 = phi ptr [ %.028.lcssa.i.i261, %.preheader40.i.i258 ], [ %i.yh, %.lr.ph52.i.i274 ] ; 7 uses
  %.1.lcssa.i.i267 = phi ptr [ %.0.lcssa.i.i262, %.preheader40.i.i258 ], [ %i.yg, %.lr.ph52.i.i274 ] ; 7 uses
  %.129.lcssa.i.i2666176 = ptrtoaddr ptr %.129.lcssa.i.i266 to i64
  %.135.lcssa.i.i2646177 = ptrtoaddr ptr %.1.lcssa.i.i267 to i64
  %.1.lcssa.i.i2676178 = ptrtoaddr ptr %.135.lcssa.i.i264 to i64 ; 2 uses
  %i.wp = icmp slt i32 %.132.lcssa.i.i265, %i.va
  br i1 %i.wp, label %iter.check6201, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check6201:                                   ; preds = %.preheader.i.i263
  %i.wq = xor i32 %.132.lcssa.i.i265, -1
  %i.wr = add i32 %i.va, %i.wq                    ; 3 uses
  %i.ws = zext i32 %i.wr to i64
  %i.wt = add nuw nsw i64 %i.ws, 1                ; 5 uses
  %min.iters.check6180 = icmp ult i32 %i.wr, 3
  br i1 %min.iters.check6180, label %.lr.ph61.i.i268.preheader, label %vector.memcheck6181

vector.memcheck6181:                              ; preds = %iter.check6201
  %i.wu = sub i64 %.135.lcssa.i.i2646177, %.1.lcssa.i.i2676178
  %diff.check6182 = icmp ugt i64 %i.wu, -64
  %i.wv = sub i64 %.129.lcssa.i.i2666176, %.1.lcssa.i.i2676178
  %diff.check6183 = icmp ugt i64 %i.wv, -64
  %conflict.rdx6184 = or i1 %diff.check6182, %diff.check6183
  br i1 %conflict.rdx6184, label %.lr.ph61.i.i268.preheader, label %vector.main.loop.iter.check6185

vector.main.loop.iter.check6185:                  ; preds = %vector.memcheck6181
  %min.iters.check6186 = icmp ult i32 %i.wr, 15
  br i1 %min.iters.check6186, label %vec.epilog.ph6205, label %vector.ph6187

vector.ph6187:                                    ; preds = %vector.main.loop.iter.check6185
  %i.ww = and i64 %i.wt, 12
  %n.vec6188 = and i64 %i.wt, 8589934576          ; 5 uses
  %i.wx = shl nuw nsw i64 %n.vec6188, 2           ; 3 uses
  %i.wy = getelementptr i8, ptr %.1.lcssa.i.i267, i64 %i.wx
  %i.wz = getelementptr i8, ptr %.129.lcssa.i.i266, i64 %i.wx
  %i.xa = trunc i64 %n.vec6188 to i32
  %i.xb = add i32 %.132.lcssa.i.i265, %i.xa
  %i.xc = getelementptr i8, ptr %.135.lcssa.i.i264, i64 %i.wx
  br label %vector.body6189

vector.body6189:                                  ; preds = %vector.ph6187, %vector.body6189
  %index6190 = phi i64 [ 0, %vector.ph6187 ], [ %index.next6198, %vector.body6189 ] ; 2 uses
  %i.xd = shl i64 %index6190, 2                   ; 3 uses
  %next.gep6191 = getelementptr i8, ptr %.1.lcssa.i.i267, i64 %i.xd ; 2 uses
  %next.gep6192 = getelementptr i8, ptr %.129.lcssa.i.i266, i64 %i.xd ; 2 uses
  %next.gep6193 = getelementptr i8, ptr %.135.lcssa.i.i264, i64 %i.xd ; 2 uses
  %i.xe = getelementptr i8, ptr %next.gep6191, i64 32
  %wide.load6194 = load <8 x float>, ptr %next.gep6191, align 4, !tbaa !59
  %wide.load6195 = load <8 x float>, ptr %i.xe, align 4, !tbaa !59
  %i.xf = getelementptr i8, ptr %next.gep6192, i64 32
  %wide.load6196 = load <8 x float>, ptr %next.gep6192, align 4, !tbaa !59
  %wide.load6197 = load <8 x float>, ptr %i.xf, align 4, !tbaa !59
  %i.xg = fsub fast <8 x float> %wide.load6194, %wide.load6196
  %i.xh = fsub fast <8 x float> %wide.load6195, %wide.load6197
  %i.xi = getelementptr i8, ptr %next.gep6193, i64 32
  store <8 x float> %i.xg, ptr %next.gep6193, align 4, !tbaa !59
  store <8 x float> %i.xh, ptr %i.xi, align 4, !tbaa !59
  %index.next6198 = add nuw i64 %index6190, 16    ; 2 uses
  %i.xj = icmp eq i64 %index.next6198, %n.vec6188
  br i1 %i.xj, label %middle.block6199, label %vector.body6189, !llvm.loop !104

middle.block6199:                                 ; preds = %vector.body6189
  %cmp.n6200 = icmp eq i64 %i.wt, %n.vec6188
  br i1 %cmp.n6200, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check6202

vec.epilog.iter.check6202:                        ; preds = %middle.block6199
  %min.epilog.iters.check6204 = icmp eq i64 %i.ww, 0
  br i1 %min.epilog.iters.check6204, label %.lr.ph61.i.i268.preheader, label %vec.epilog.ph6205, !prof !64

vec.epilog.ph6205:                                ; preds = %vector.main.loop.iter.check6185, %vec.epilog.iter.check6202
  %vec.epilog.resume.val6206 = phi i64 [ %n.vec6188, %vec.epilog.iter.check6202 ], [ 0, %vector.main.loop.iter.check6185 ]
  %n.vec6207 = and i64 %i.wt, 8589934588          ; 4 uses
  %i.xk = shl nuw nsw i64 %n.vec6207, 2           ; 3 uses
  %i.xl = getelementptr i8, ptr %.1.lcssa.i.i267, i64 %i.xk
  %i.xm = getelementptr i8, ptr %.129.lcssa.i.i266, i64 %i.xk
  %i.xn = trunc i64 %n.vec6207 to i32
  %i.xo = add i32 %.132.lcssa.i.i265, %i.xn
  %i.xp = getelementptr i8, ptr %.135.lcssa.i.i264, i64 %i.xk
  br label %vec.epilog.vector.body6208

vec.epilog.vector.body6208:                       ; preds = %vec.epilog.vector.body6208, %vec.epilog.ph6205
  %index6209 = phi i64 [ %vec.epilog.resume.val6206, %vec.epilog.ph6205 ], [ %index.next6215, %vec.epilog.vector.body6208 ] ; 2 uses
  %i.xq = shl i64 %index6209, 2                   ; 3 uses
  %next.gep6210 = getelementptr i8, ptr %.1.lcssa.i.i267, i64 %i.xq
  %next.gep6211 = getelementptr i8, ptr %.129.lcssa.i.i266, i64 %i.xq
  %next.gep6212 = getelementptr i8, ptr %.135.lcssa.i.i264, i64 %i.xq
  %wide.load6213 = load <4 x float>, ptr %next.gep6210, align 4, !tbaa !59
  %wide.load6214 = load <4 x float>, ptr %next.gep6211, align 4, !tbaa !59
  %i.xr = fsub fast <4 x float> %wide.load6213, %wide.load6214
  store <4 x float> %i.xr, ptr %next.gep6212, align 4, !tbaa !59
  %index.next6215 = add nuw i64 %index6209, 4     ; 2 uses
  %i.xs = icmp eq i64 %index.next6215, %n.vec6207
  br i1 %i.xs, label %vec.epilog.middle.block6216, label %vec.epilog.vector.body6208, !llvm.loop !105

vec.epilog.middle.block6216:                      ; preds = %vec.epilog.vector.body6208
  %cmp.n6217 = icmp eq i64 %i.wt, %n.vec6207
  br i1 %cmp.n6217, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i268.preheader

.lr.ph61.i.i268.preheader:                        ; preds = %iter.check6201, %vector.memcheck6181, %vec.epilog.iter.check6202, %vec.epilog.middle.block6216
  %.260.i.i269.ph = phi ptr [ %.1.lcssa.i.i267, %iter.check6201 ], [ %.1.lcssa.i.i267, %vector.memcheck6181 ], [ %i.wy, %vec.epilog.iter.check6202 ], [ %i.xl, %vec.epilog.middle.block6216 ] ; 2 uses
  %.23059.i.i270.ph = phi ptr [ %.129.lcssa.i.i266, %iter.check6201 ], [ %.129.lcssa.i.i266, %vector.memcheck6181 ], [ %i.wz, %vec.epilog.iter.check6202 ], [ %i.xm, %vec.epilog.middle.block6216 ] ; 2 uses
  %.23358.i.i271.ph = phi i32 [ %.132.lcssa.i.i265, %iter.check6201 ], [ %.132.lcssa.i.i265, %vector.memcheck6181 ], [ %i.xb, %vec.epilog.iter.check6202 ], [ %i.xo, %vec.epilog.middle.block6216 ] ; 4 uses
  %.23657.i.i272.ph = phi ptr [ %.135.lcssa.i.i264, %iter.check6201 ], [ %.135.lcssa.i.i264, %vector.memcheck6181 ], [ %i.xc, %vec.epilog.iter.check6202 ], [ %i.xp, %vec.epilog.middle.block6216 ] ; 2 uses
  %i.xt = sub i32 %i.va, %.23358.i.i271.ph
  %xtraiter8000 = and i32 %i.xt, 3                ; 2 uses
  %lcmp.mod8001.not = icmp eq i32 %xtraiter8000, 0
  br i1 %lcmp.mod8001.not, label %.lr.ph61.i.i268.prol.loopexit, label %.lr.ph61.i.i268.prol

.lr.ph61.i.i268.prol:                             ; preds = %.lr.ph61.i.i268.preheader, %.lr.ph61.i.i268.prol
  %.260.i.i269.prol = phi ptr [ %i.xx, %.lr.ph61.i.i268.prol ], [ %.260.i.i269.ph, %.lr.ph61.i.i268.preheader ] ; 2 uses
  %.23059.i.i270.prol = phi ptr [ %i.xy, %.lr.ph61.i.i268.prol ], [ %.23059.i.i270.ph, %.lr.ph61.i.i268.preheader ] ; 2 uses
  %.23358.i.i271.prol = phi i32 [ %i.ya, %.lr.ph61.i.i268.prol ], [ %.23358.i.i271.ph, %.lr.ph61.i.i268.preheader ]
  %.23657.i.i272.prol = phi ptr [ %i.xz, %.lr.ph61.i.i268.prol ], [ %.23657.i.i272.ph, %.lr.ph61.i.i268.preheader ] ; 2 uses
  %prol.iter8002 = phi i32 [ %prol.iter8002.next, %.lr.ph61.i.i268.prol ], [ 0, %.lr.ph61.i.i268.preheader ]
  %i.xu = load float, ptr %.260.i.i269.prol, align 4, !tbaa !59
  %i.xv = load float, ptr %.23059.i.i270.prol, align 4, !tbaa !59
  %i.xw = fsub fast float %i.xu, %i.xv
  store float %i.xw, ptr %.23657.i.i272.prol, align 4, !tbaa !59
  %i.xx = getelementptr inbounds nuw i8, ptr %.260.i.i269.prol, i64 4 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.23059.i.i270.prol, i64 4 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.23657.i.i272.prol, i64 4 ; 2 uses
  %i.ya = add nuw nsw i32 %.23358.i.i271.prol, 1  ; 2 uses
  %prol.iter8002.next = add i32 %prol.iter8002, 1 ; 2 uses
  %prol.iter8002.cmp.not = icmp eq i32 %prol.iter8002.next, %xtraiter8000
  br i1 %prol.iter8002.cmp.not, label %.lr.ph61.i.i268.prol.loopexit, label %.lr.ph61.i.i268.prol, !llvm.loop !106

.lr.ph61.i.i268.prol.loopexit:                    ; preds = %.lr.ph61.i.i268.prol, %.lr.ph61.i.i268.preheader
  %.260.i.i269.unr = phi ptr [ %.260.i.i269.ph, %.lr.ph61.i.i268.preheader ], [ %i.xx, %.lr.ph61.i.i268.prol ]
  %.23059.i.i270.unr = phi ptr [ %.23059.i.i270.ph, %.lr.ph61.i.i268.preheader ], [ %i.xy, %.lr.ph61.i.i268.prol ]
  %.23358.i.i271.unr = phi i32 [ %.23358.i.i271.ph, %.lr.ph61.i.i268.preheader ], [ %i.ya, %.lr.ph61.i.i268.prol ]
  %.23657.i.i272.unr = phi ptr [ %.23657.i.i272.ph, %.lr.ph61.i.i268.preheader ], [ %i.xz, %.lr.ph61.i.i268.prol ]
  %i.yb = sub i32 %.23358.i.i271.ph, %i.va
  %i.yc = icmp ugt i32 %i.yb, -4
  br i1 %i.yc, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i268

.lr.ph52.i.i274:                                  ; preds = %.preheader40.i.i258, %.lr.ph52.i.i274
  %.151.i.i275 = phi ptr [ %i.yg, %.lr.ph52.i.i274 ], [ %.0.lcssa.i.i262, %.preheader40.i.i258 ] ; 2 uses
  %.12950.i.i276 = phi ptr [ %i.yh, %.lr.ph52.i.i274 ], [ %.028.lcssa.i.i261, %.preheader40.i.i258 ] ; 2 uses
  %.13249.i.i277 = phi i32 [ %i.yj, %.lr.ph52.i.i274 ], [ %.031.lcssa.i.i260, %.preheader40.i.i258 ]
  %.13548.i.i278 = phi ptr [ %i.yi, %.lr.ph52.i.i274 ], [ %.034.lcssa.i.i259, %.preheader40.i.i258 ] ; 2 uses
  %i.yd = load <4 x float>, ptr %.151.i.i275, align 1, !tbaa !60
  %i.ye = load <4 x float>, ptr %.12950.i.i276, align 1, !tbaa !60
  %i.yf = fsub fast <4 x float> %i.yd, %i.ye
  store <4 x float> %i.yf, ptr %.13548.i.i278, align 1, !tbaa !60
  %i.yg = getelementptr inbounds nuw i8, ptr %.151.i.i275, i64 16 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.12950.i.i276, i64 16 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.13548.i.i278, i64 16 ; 2 uses
  %i.yj = add nuw nsw i32 %.13249.i.i277, 4       ; 3 uses
  %i.yk = or disjoint i32 %i.yj, 3
  %i.yl = icmp slt i32 %i.yk, %i.va
  br i1 %i.yl, label %.lr.ph52.i.i274, label %.preheader.i.i263, !llvm.loop !107

.lr.ph61.i.i268:                                  ; preds = %.lr.ph61.i.i268.prol.loopexit, %.lr.ph61.i.i268
  %.260.i.i269 = phi ptr [ %i.zh, %.lr.ph61.i.i268 ], [ %.260.i.i269.unr, %.lr.ph61.i.i268.prol.loopexit ] ; 5 uses
  %.23059.i.i270 = phi ptr [ %i.zi, %.lr.ph61.i.i268 ], [ %.23059.i.i270.unr, %.lr.ph61.i.i268.prol.loopexit ] ; 5 uses
  %.23358.i.i271 = phi i32 [ %i.zk, %.lr.ph61.i.i268 ], [ %.23358.i.i271.unr, %.lr.ph61.i.i268.prol.loopexit ]
  %.23657.i.i272 = phi ptr [ %i.zj, %.lr.ph61.i.i268 ], [ %.23657.i.i272.unr, %.lr.ph61.i.i268.prol.loopexit ] ; 5 uses
  %i.ym = load float, ptr %.260.i.i269, align 4, !tbaa !59
  %i.yn = load float, ptr %.23059.i.i270, align 4, !tbaa !59
  %i.yo = fsub fast float %i.ym, %i.yn
  store float %i.yo, ptr %.23657.i.i272, align 4, !tbaa !59
  %i.yp = getelementptr inbounds nuw i8, ptr %.260.i.i269, i64 4
  %i.yq = getelementptr inbounds nuw i8, ptr %.23059.i.i270, i64 4
  %i.yr = getelementptr inbounds nuw i8, ptr %.23657.i.i272, i64 4
  %i.ys = load float, ptr %i.yp, align 4, !tbaa !59
  %i.yt = load float, ptr %i.yq, align 4, !tbaa !59
  %i.yu = fsub fast float %i.ys, %i.yt
  store float %i.yu, ptr %i.yr, align 4, !tbaa !59
  %i.yv = getelementptr inbounds nuw i8, ptr %.260.i.i269, i64 8
  %i.yw = getelementptr inbounds nuw i8, ptr %.23059.i.i270, i64 8
  %i.yx = getelementptr inbounds nuw i8, ptr %.23657.i.i272, i64 8
  %i.yy = load float, ptr %i.yv, align 4, !tbaa !59
  %i.yz = load float, ptr %i.yw, align 4, !tbaa !59
  %i.za = fsub fast float %i.yy, %i.yz
  store float %i.za, ptr %i.yx, align 4, !tbaa !59
  %i.zb = getelementptr inbounds nuw i8, ptr %.260.i.i269, i64 12
  %i.zc = getelementptr inbounds nuw i8, ptr %.23059.i.i270, i64 12
  %i.zd = getelementptr inbounds nuw i8, ptr %.23657.i.i272, i64 12
  %i.ze = load float, ptr %i.zb, align 4, !tbaa !59
  %i.zf = load float, ptr %i.zc, align 4, !tbaa !59
  %i.zg = fsub fast float %i.ze, %i.zf
  store float %i.zg, ptr %i.zd, align 4, !tbaa !59
  %i.zh = getelementptr inbounds nuw i8, ptr %.260.i.i269, i64 16
  %i.zi = getelementptr inbounds nuw i8, ptr %.23059.i.i270, i64 16
  %i.zj = getelementptr inbounds nuw i8, ptr %.23657.i.i272, i64 16
  %i.zk = add nuw nsw i32 %.23358.i.i271, 4       ; 2 uses
  %exitcond.not.i.i273.3 = icmp eq i32 %i.zk, %i.va
  br i1 %exitcond.not.i.i273.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i268, !llvm.loop !108

bb.ac:                                            ; preds = %bb.aa
  %i.zl = icmp eq i32 %4, 1
  br i1 %i.zl, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.zm = load float, ptr %1, align 4, !tbaa !59  ; 8 uses
  %i.zn = icmp eq i32 %.sroa.speculated.i152, 4
  br i1 %i.zn, label %.thread.i.i257, label %bb.ae

.thread.i.i257:                                   ; preds = %bb.ad
  %i.zo = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.zp = insertelement <4 x float> poison, float %i.zm, i64 0
  %i.zq = shufflevector <4 x float> %i.zp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zr = icmp eq i32 %.sroa.speculated.i152, 8
  br i1 %i.zr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.zs = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %.thread.i.i257
  %i.zt = phi <4 x float> [ %i.zo, %.thread.i.i257 ], [ %i.zq, %bb.ae ] ; 2 uses
  %i.zu = shufflevector <4 x float> %i.zt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.zv = phi <4 x float> [ %i.zq, %bb.af ], [ %i.zt, %bb.ag ]
  %i.zw = phi fast <8 x float> [ %i.zs, %bb.af ], [ %i.zu, %bb.ag ] ; 5 uses
  %i.zx = icmp sgt i32 %i.va, 7
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %.13356.i.i160.prol = phi i32 [ %i.apg, %.lr.ph59.i.i157.prol ], [ %.032.lcssa.i.i154, %.lr.ph59.i.i157.preheader ]
  %prol.iter7935 = phi i32 [ %prol.iter7935.next, %.lr.ph59.i.i157.prol ], [ 0, %.lr.ph59.i.i157.preheader ]
  %i.apa = load float, ptr %.358.i.i158.prol, align 4, !tbaa !59
  %i.apb = insertelement <4 x float> poison, float %i.apa, i64 0
  %i.apc = shufflevector <4 x float> %i.apb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apd = fsub fast <4 x float> %i.aog, %i.apc
  store <4 x float> %i.apd, ptr %.33157.i.i159.prol, align 1, !tbaa !60
  %i.ape = getelementptr inbounds nuw i8, ptr %.358.i.i158.prol, i64 4 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.33157.i.i159.prol, i64 16 ; 2 uses
  %i.apg = add nuw nsw i32 %.13356.i.i160.prol, 1 ; 2 uses
  %prol.iter7935.next = add i32 %prol.iter7935, 1 ; 2 uses
  %prol.iter7935.cmp.not = icmp eq i32 %prol.iter7935.next, %xtraiter7933
  br i1 %prol.iter7935.cmp.not, label %.lr.ph59.i.i157.prol.loopexit, label %.lr.ph59.i.i157.prol, !llvm.loop !131

.lr.ph59.i.i157.prol.loopexit:                    ; preds = %.lr.ph59.i.i157.prol, %.lr.ph59.i.i157.preheader
  %.358.i.i158.unr = phi ptr [ %.2.lcssa.i68.i156, %.lr.ph59.i.i157.preheader ], [ %i.ape, %.lr.ph59.i.i157.prol ]
  %.33157.i.i159.unr = phi ptr [ %.230.lcssa.i.i155, %.lr.ph59.i.i157.preheader ], [ %i.apf, %.lr.ph59.i.i157.prol ]
  %.13356.i.i160.unr = phi i32 [ %.032.lcssa.i.i154, %.lr.ph59.i.i157.preheader ], [ %i.apg, %.lr.ph59.i.i157.prol ]
  %i.aph = sub nsw i32 %.032.lcssa.i.i154, %.sroa.speculated83.i151
  %i.api = icmp ugt i32 %i.aph, -4
  br i1 %i.api, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph59.i.i157

.lr.ph52.i69.i162:                                ; preds = %.lr.ph52.i69.i162, %.lr.ph52.i69.i162.preheader.new
  %.251.i.i163 = phi ptr [ %1, %.lr.ph52.i69.i162.preheader.new ], [ %i.apz, %.lr.ph52.i69.i162 ] ; 5 uses
  %.23050.i.i164 = phi ptr [ %2, %.lr.ph52.i69.i162.preheader.new ], [ %i.aqa, %.lr.ph52.i69.i162 ] ; 3 uses
  %niter7932 = phi i32 [ 0, %.lr.ph52.i69.i162.preheader.new ], [ %niter7932.next.1, %.lr.ph52.i69.i162 ]
  %i.apj = load float, ptr %.251.i.i163, align 4, !tbaa !59
  %i.apk = insertelement <4 x float> poison, float %i.apj, i64 0
  %i.apl = getelementptr inbounds nuw i8, ptr %.251.i.i163, i64 4
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !59
  %i.apn = insertelement <4 x float> poison, float %i.apm, i64 0
  %i.apo = shufflevector <4 x float> %i.apk, <4 x float> %i.apn, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.app = fsub fast <8 x float> %i.aoh, %i.apo
  store <8 x float> %i.app, ptr %.23050.i.i164, align 1, !tbaa !60
  %i.apq = getelementptr inbounds nuw i8, ptr %.251.i.i163, i64 8
  %i.apr = getelementptr inbounds nuw i8, ptr %.23050.i.i164, i64 32
  %i.aps = load float, ptr %i.apq, align 4, !tbaa !59
  %i.apt = insertelement <4 x float> poison, float %i.aps, i64 0
  %i.apu = getelementptr inbounds nuw i8, ptr %.251.i.i163, i64 12
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !59
  %i.apw = insertelement <4 x float> poison, float %i.apv, i64 0
  %i.apx = shufflevector <4 x float> %i.apt, <4 x float> %i.apw, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.apy = fsub fast <8 x float> %i.aoh, %i.apx
  store <8 x float> %i.apy, ptr %i.apr, align 1, !tbaa !60
  %i.apz = getelementptr inbounds nuw i8, ptr %.251.i.i163, i64 16 ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %.23050.i.i164, i64 64 ; 3 uses
  %niter7932.next.1 = add nuw nsw i32 %niter7932, 2 ; 2 uses
  %niter7932.ncmp.1.not = icmp eq i32 %niter7932.next.1, %unroll_iter7931
  br i1 %niter7932.ncmp.1.not, label %.preheader.loopexit.i70.i166.unr-lcssa, label %.lr.ph52.i69.i162, !llvm.loop !132

.lr.ph59.i.i157:                                  ; preds = %.lr.ph59.i.i157.prol.loopexit, %.lr.ph59.i.i157
  %.358.i.i158 = phi ptr [ %i.aqx, %.lr.ph59.i.i157 ], [ %.358.i.i158.unr, %.lr.ph59.i.i157.prol.loopexit ] ; 5 uses
  %.33157.i.i159 = phi ptr [ %i.aqy, %.lr.ph59.i.i157 ], [ %.33157.i.i159.unr, %.lr.ph59.i.i157.prol.loopexit ] ; 5 uses
  %.13356.i.i160 = phi i32 [ %i.aqz, %.lr.ph59.i.i157 ], [ %.13356.i.i160.unr, %.lr.ph59.i.i157.prol.loopexit ]
  %i.aqb = load float, ptr %.358.i.i158, align 4, !tbaa !59
  %i.aqc = insertelement <4 x float> poison, float %i.aqb, i64 0
  %i.aqd = shufflevector <4 x float> %i.aqc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqe = fsub fast <4 x float> %i.aog, %i.aqd
  store <4 x float> %i.aqe, ptr %.33157.i.i159, align 1, !tbaa !60
  %i.aqf = getelementptr inbounds nuw i8, ptr %.358.i.i158, i64 4
  %i.aqg = getelementptr inbounds nuw i8, ptr %.33157.i.i159, i64 16
  %i.aqh = load float, ptr %i.aqf, align 4, !tbaa !59
  %i.aqi = insertelement <4 x float> poison, float %i.aqh, i64 0
  %i.aqj = shufflevector <4 x float> %i.aqi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqk = fsub fast <4 x float> %i.aog, %i.aqj
  store <4 x float> %i.aqk, ptr %i.aqg, align 1, !tbaa !60
  %i.aql = getelementptr inbounds nuw i8, ptr %.358.i.i158, i64 8
  %i.aqm = getelementptr inbounds nuw i8, ptr %.33157.i.i159, i64 32
  %i.aqn = load float, ptr %i.aql, align 4, !tbaa !59
  %i.aqo = insertelement <4 x float> poison, float %i.aqn, i64 0
  %i.aqp = shufflevector <4 x float> %i.aqo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqq = fsub fast <4 x float> %i.aog, %i.aqp
  store <4 x float> %i.aqq, ptr %i.aqm, align 1, !tbaa !60
  %i.aqr = getelementptr inbounds nuw i8, ptr %.358.i.i158, i64 12
  %i.aqs = getelementptr inbounds nuw i8, ptr %.33157.i.i159, i64 48
  %i.aqt = load float, ptr %i.aqr, align 4, !tbaa !59
  %i.aqu = insertelement <4 x float> poison, float %i.aqt, i64 0
  %i.aqv = shufflevector <4 x float> %i.aqu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqw = fsub fast <4 x float> %i.aog, %i.aqv
  store <4 x float> %i.aqw, ptr %i.aqs, align 1, !tbaa !60
  %i.aqx = getelementptr inbounds nuw i8, ptr %.358.i.i158, i64 16
  %i.aqy = getelementptr inbounds nuw i8, ptr %.33157.i.i159, i64 64
  %i.aqz = add nuw nsw i32 %.13356.i.i160, 4      ; 2 uses
  %exitcond64.not.i.i161.3 = icmp eq i32 %i.aqz, %.sroa.speculated83.i151
  br i1 %exitcond64.not.i.i161.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph59.i.i157, !llvm.loop !133

bb.ax:                                            ; preds = %bb.a
  %.sroa.speculated83.i285 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 23 uses
  %.sroa.speculated.i286 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 8 uses
  %i.ara = mul i32 %.sroa.speculated.i286, %.sroa.speculated83.i285 ; 35 uses
  %i.arb = icmp eq i32 %5, %6
  br i1 %i.arb, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %bb.ax
  %i.arc = icmp eq i32 %3, %4
  br i1 %i.arc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ard = icmp sgt i32 %i.ara, 7
  br i1 %i.ard, label %.lr.ph.i.i413.preheader, label %.preheader40.i.i392

.lr.ph.i.i413.preheader:                          ; preds = %bb.az
  %i.are = add nsw i32 %i.ara, -8                 ; 2 uses
  %i.arf = lshr i32 %i.are, 3
  %i.arg = add nuw nsw i32 %i.arf, 1              ; 2 uses
  %xtraiter7913 = and i32 %i.arg, 3               ; 3 uses
  %i.arh = icmp ult i32 %i.are, 24
  br i1 %i.arh, label %.lr.ph.i.i413.epil.preheader, label %.lr.ph.i.i413.preheader.new

.lr.ph.i.i413.preheader.new:                      ; preds = %.lr.ph.i.i413.preheader
  %unroll_iter7920 = and i32 %i.arg, 1073741820
  br label %.lr.ph.i.i413

.preheader40.loopexit.i.i418.unr-lcssa:           ; preds = %.lr.ph.i.i413
  %lcmp.mod7915.not = icmp eq i32 %xtraiter7913, 0
  br i1 %lcmp.mod7915.not, label %.preheader40.loopexit.i.i418, label %.lr.ph.i.i413.epil.preheader

.lr.ph.i.i413.epil.preheader:                     ; preds = %.preheader40.loopexit.i.i418.unr-lcssa, %.lr.ph.i.i413.preheader
  %.044.i.i414.epil.init = phi ptr [ %0, %.lr.ph.i.i413.preheader ], [ %i.asm, %.preheader40.loopexit.i.i418.unr-lcssa ]
  %.02843.i.i415.epil.init = phi ptr [ %1, %.lr.ph.i.i413.preheader ], [ %i.asn, %.preheader40.loopexit.i.i418.unr-lcssa ]
  %.03441.i.i417.epil.init = phi ptr [ %2, %.lr.ph.i.i413.preheader ], [ %i.aso, %.preheader40.loopexit.i.i418.unr-lcssa ]
  %lcmp.mod7919 = icmp ne i32 %xtraiter7913, 0
  tail call void @llvm.assume(i1 %lcmp.mod7919)
  br label %.lr.ph.i.i413.epil

.lr.ph.i.i413.epil:                               ; preds = %.lr.ph.i.i413.epil, %.lr.ph.i.i413.epil.preheader
  %.044.i.i414.epil = phi ptr [ %i.arl, %.lr.ph.i.i413.epil ], [ %.044.i.i414.epil.init, %.lr.ph.i.i413.epil.preheader ] ; 2 uses
  %.02843.i.i415.epil = phi ptr [ %i.arm, %.lr.ph.i.i413.epil ], [ %.02843.i.i415.epil.init, %.lr.ph.i.i413.epil.preheader ] ; 2 uses
  %.03441.i.i417.epil = phi ptr [ %i.arn, %.lr.ph.i.i413.epil ], [ %.03441.i.i417.epil.init, %.lr.ph.i.i413.epil.preheader ] ; 2 uses
  %epil.iter7914 = phi i32 [ %epil.iter7914.next, %.lr.ph.i.i413.epil ], [ 0, %.lr.ph.i.i413.epil.preheader ]
  %i.ari = load <8 x float>, ptr %.044.i.i414.epil, align 1, !tbaa !60
  %i.arj = load <8 x float>, ptr %.02843.i.i415.epil, align 1, !tbaa !60
  %i.ark = fmul fast <8 x float> %i.arj, %i.ari
  store <8 x float> %i.ark, ptr %.03441.i.i417.epil, align 1, !tbaa !60
  %i.arl = getelementptr inbounds nuw i8, ptr %.044.i.i414.epil, i64 32 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.02843.i.i415.epil, i64 32 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.03441.i.i417.epil, i64 32 ; 2 uses
  %epil.iter7914.next = add i32 %epil.iter7914, 1 ; 2 uses
  %epil.iter7914.cmp.not = icmp eq i32 %epil.iter7914.next, %xtraiter7913
  br i1 %epil.iter7914.cmp.not, label %.preheader40.loopexit.i.i418, label %.lr.ph.i.i413.epil, !llvm.loop !134

.preheader40.loopexit.i.i418:                     ; preds = %.lr.ph.i.i413.epil, %.preheader40.loopexit.i.i418.unr-lcssa
  %.lcssa6469 = phi ptr [ %i.asm, %.preheader40.loopexit.i.i418.unr-lcssa ], [ %i.arl, %.lr.ph.i.i413.epil ]
  %.lcssa6468 = phi ptr [ %i.asn, %.preheader40.loopexit.i.i418.unr-lcssa ], [ %i.arm, %.lr.ph.i.i413.epil ]
  %.lcssa6467 = phi ptr [ %i.aso, %.preheader40.loopexit.i.i418.unr-lcssa ], [ %i.arn, %.lr.ph.i.i413.epil ]
  %i.aro = and i32 %i.ara, 2147483640
  br label %.preheader40.i.i392

.preheader40.i.i392:                              ; preds = %.preheader40.loopexit.i.i418, %bb.az
  %.034.lcssa.i.i393 = phi ptr [ %2, %bb.az ], [ %.lcssa6467, %.preheader40.loopexit.i.i418 ] ; 2 uses
  %.031.lcssa.i.i394 = phi i32 [ 0, %bb.az ], [ %i.aro, %.preheader40.loopexit.i.i418 ] ; 3 uses
  %.028.lcssa.i.i395 = phi ptr [ %1, %bb.az ], [ %.lcssa6468, %.preheader40.loopexit.i.i418 ] ; 2 uses
  %.0.lcssa.i.i396 = phi ptr [ %0, %bb.az ], [ %.lcssa6469, %.preheader40.loopexit.i.i418 ] ; 2 uses
  %i.arp = or disjoint i32 %.031.lcssa.i.i394, 3
  %i.arq = icmp slt i32 %i.arp, %i.ara
  br i1 %i.arq, label %.lr.ph52.i.i408, label %.preheader.i.i397

.lr.ph.i.i413:                                    ; preds = %.lr.ph.i.i413, %.lr.ph.i.i413.preheader.new
  %.044.i.i414 = phi ptr [ %0, %.lr.ph.i.i413.preheader.new ], [ %i.asm, %.lr.ph.i.i413 ] ; 5 uses
  %.02843.i.i415 = phi ptr [ %1, %.lr.ph.i.i413.preheader.new ], [ %i.asn, %.lr.ph.i.i413 ] ; 5 uses
  %.03441.i.i417 = phi ptr [ %2, %.lr.ph.i.i413.preheader.new ], [ %i.aso, %.lr.ph.i.i413 ] ; 5 uses
  %niter7921 = phi i32 [ 0, %.lr.ph.i.i413.preheader.new ], [ %niter7921.next.3, %.lr.ph.i.i413 ]
  %i.arr = load <8 x float>, ptr %.044.i.i414, align 1, !tbaa !60
  %i.ars = load <8 x float>, ptr %.02843.i.i415, align 1, !tbaa !60
  %i.art = fmul fast <8 x float> %i.ars, %i.arr
  store <8 x float> %i.art, ptr %.03441.i.i417, align 1, !tbaa !60
  %i.aru = getelementptr inbounds nuw i8, ptr %.044.i.i414, i64 32
  %i.arv = getelementptr inbounds nuw i8, ptr %.02843.i.i415, i64 32
  %i.arw = getelementptr inbounds nuw i8, ptr %.03441.i.i417, i64 32
  %i.arx = load <8 x float>, ptr %i.aru, align 1, !tbaa !60
  %i.ary = load <8 x float>, ptr %i.arv, align 1, !tbaa !60
  %i.arz = fmul fast <8 x float> %i.ary, %i.arx
  store <8 x float> %i.arz, ptr %i.arw, align 1, !tbaa !60
  %i.asa = getelementptr inbounds nuw i8, ptr %.044.i.i414, i64 64
  %i.asb = getelementptr inbounds nuw i8, ptr %.02843.i.i415, i64 64
  %i.asc = getelementptr inbounds nuw i8, ptr %.03441.i.i417, i64 64
  %i.asd = load <8 x float>, ptr %i.asa, align 1, !tbaa !60
  %i.ase = load <8 x float>, ptr %i.asb, align 1, !tbaa !60
  %i.asf = fmul fast <8 x float> %i.ase, %i.asd
  store <8 x float> %i.asf, ptr %i.asc, align 1, !tbaa !60
  %i.asg = getelementptr inbounds nuw i8, ptr %.044.i.i414, i64 96
  %i.ash = getelementptr inbounds nuw i8, ptr %.02843.i.i415, i64 96
  %i.asi = getelementptr inbounds nuw i8, ptr %.03441.i.i417, i64 96
  %i.asj = load <8 x float>, ptr %i.asg, align 1, !tbaa !60
  %i.ask = load <8 x float>, ptr %i.ash, align 1, !tbaa !60
  %i.asl = fmul fast <8 x float> %i.ask, %i.asj
  store <8 x float> %i.asl, ptr %i.asi, align 1, !tbaa !60
  %i.asm = getelementptr inbounds nuw i8, ptr %.044.i.i414, i64 128 ; 3 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.02843.i.i415, i64 128 ; 3 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %.03441.i.i417, i64 128 ; 3 uses
  %niter7921.next.3 = add i32 %niter7921, 4       ; 2 uses
  %niter7921.ncmp.3.not = icmp eq i32 %niter7921.next.3, %unroll_iter7920
  br i1 %niter7921.ncmp.3.not, label %.preheader40.loopexit.i.i418.unr-lcssa, label %.lr.ph.i.i413, !llvm.loop !135

.preheader.i.i397:                                ; preds = %.lr.ph52.i.i408, %.preheader40.i.i392
  %.135.lcssa.i.i398 = phi ptr [ %.034.lcssa.i.i393, %.preheader40.i.i392 ], [ %i.aui, %.lr.ph52.i.i408 ] ; 7 uses
  %.132.lcssa.i.i399 = phi i32 [ %.031.lcssa.i.i394, %.preheader40.i.i392 ], [ %i.auj, %.lr.ph52.i.i408 ] ; 6 uses
  %.129.lcssa.i.i400 = phi ptr [ %.028.lcssa.i.i395, %.preheader40.i.i392 ], [ %i.auh, %.lr.ph52.i.i408 ] ; 7 uses
  %.1.lcssa.i.i401 = phi ptr [ %.0.lcssa.i.i396, %.preheader40.i.i392 ], [ %i.aug, %.lr.ph52.i.i408 ] ; 7 uses
  %.129.lcssa.i.i4006029 = ptrtoaddr ptr %.129.lcssa.i.i400 to i64
  %.135.lcssa.i.i3986030 = ptrtoaddr ptr %.1.lcssa.i.i401 to i64
  %.1.lcssa.i.i4016031 = ptrtoaddr ptr %.135.lcssa.i.i398 to i64 ; 2 uses
  %i.asp = icmp slt i32 %.132.lcssa.i.i399, %i.ara
  br i1 %i.asp, label %iter.check6054, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check6054:                                   ; preds = %.preheader.i.i397
  %i.asq = xor i32 %.132.lcssa.i.i399, -1
  %i.asr = add i32 %i.ara, %i.asq                 ; 3 uses
  %i.ass = zext i32 %i.asr to i64
  %i.ast = add nuw nsw i64 %i.ass, 1              ; 5 uses
  %min.iters.check6033 = icmp ult i32 %i.asr, 3
  br i1 %min.iters.check6033, label %.lr.ph61.i.i402.preheader, label %vector.memcheck6034

vector.memcheck6034:                              ; preds = %iter.check6054
  %i.asu = sub i64 %.135.lcssa.i.i3986030, %.1.lcssa.i.i4016031
  %diff.check6035 = icmp ugt i64 %i.asu, -64
  %i.asv = sub i64 %.129.lcssa.i.i4006029, %.1.lcssa.i.i4016031
  %diff.check6036 = icmp ugt i64 %i.asv, -64
  %conflict.rdx6037 = or i1 %diff.check6035, %diff.check6036
  br i1 %conflict.rdx6037, label %.lr.ph61.i.i402.preheader, label %vector.main.loop.iter.check6038

vector.main.loop.iter.check6038:                  ; preds = %vector.memcheck6034
  %min.iters.check6039 = icmp ult i32 %i.asr, 15
  br i1 %min.iters.check6039, label %vec.epilog.ph6058, label %vector.ph6040

vector.ph6040:                                    ; preds = %vector.main.loop.iter.check6038
  %i.asw = and i64 %i.ast, 12
  %n.vec6041 = and i64 %i.ast, 8589934576         ; 5 uses
  %i.asx = shl nuw nsw i64 %n.vec6041, 2          ; 3 uses
  %i.asy = getelementptr i8, ptr %.1.lcssa.i.i401, i64 %i.asx
  %i.asz = getelementptr i8, ptr %.129.lcssa.i.i400, i64 %i.asx
  %i.ata = trunc i64 %n.vec6041 to i32
  %i.atb = add i32 %.132.lcssa.i.i399, %i.ata
  %i.atc = getelementptr i8, ptr %.135.lcssa.i.i398, i64 %i.asx
  br label %vector.body6042

vector.body6042:                                  ; preds = %vector.ph6040, %vector.body6042
  %index6043 = phi i64 [ 0, %vector.ph6040 ], [ %index.next6051, %vector.body6042 ] ; 2 uses
  %i.atd = shl i64 %index6043, 2                  ; 3 uses
  %next.gep6044 = getelementptr i8, ptr %.1.lcssa.i.i401, i64 %i.atd ; 2 uses
  %next.gep6045 = getelementptr i8, ptr %.129.lcssa.i.i400, i64 %i.atd ; 2 uses
  %next.gep6046 = getelementptr i8, ptr %.135.lcssa.i.i398, i64 %i.atd ; 2 uses
  %i.ate = getelementptr i8, ptr %next.gep6044, i64 32
  %wide.load6047 = load <8 x float>, ptr %next.gep6044, align 4, !tbaa !59
  %wide.load6048 = load <8 x float>, ptr %i.ate, align 4, !tbaa !59
  %i.atf = getelementptr i8, ptr %next.gep6045, i64 32
  %wide.load6049 = load <8 x float>, ptr %next.gep6045, align 4, !tbaa !59
  %wide.load6050 = load <8 x float>, ptr %i.atf, align 4, !tbaa !59
  %i.atg = fmul fast <8 x float> %wide.load6049, %wide.load6047
  %i.ath = fmul fast <8 x float> %wide.load6050, %wide.load6048
  %i.ati = getelementptr i8, ptr %next.gep6046, i64 32
  store <8 x float> %i.atg, ptr %next.gep6046, align 4, !tbaa !59
  store <8 x float> %i.ath, ptr %i.ati, align 4, !tbaa !59
  %index.next6051 = add nuw i64 %index6043, 16    ; 2 uses
  %i.atj = icmp eq i64 %index.next6051, %n.vec6041
  br i1 %i.atj, label %middle.block6052, label %vector.body6042, !llvm.loop !136

middle.block6052:                                 ; preds = %vector.body6042
  %cmp.n6053 = icmp eq i64 %i.ast, %n.vec6041
  br i1 %cmp.n6053, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check6055

vec.epilog.iter.check6055:                        ; preds = %middle.block6052
  %min.epilog.iters.check6057 = icmp eq i64 %i.asw, 0
  br i1 %min.epilog.iters.check6057, label %.lr.ph61.i.i402.preheader, label %vec.epilog.ph6058, !prof !64

vec.epilog.ph6058:                                ; preds = %vector.main.loop.iter.check6038, %vec.epilog.iter.check6055
  %vec.epilog.resume.val6059 = phi i64 [ %n.vec6041, %vec.epilog.iter.check6055 ], [ 0, %vector.main.loop.iter.check6038 ]
  %n.vec6060 = and i64 %i.ast, 8589934588         ; 4 uses
  %i.atk = shl nuw nsw i64 %n.vec6060, 2          ; 3 uses
  %i.atl = getelementptr i8, ptr %.1.lcssa.i.i401, i64 %i.atk
  %i.atm = getelementptr i8, ptr %.129.lcssa.i.i400, i64 %i.atk
  %i.atn = trunc i64 %n.vec6060 to i32
  %i.ato = add i32 %.132.lcssa.i.i399, %i.atn
  %i.atp = getelementptr i8, ptr %.135.lcssa.i.i398, i64 %i.atk
  br label %vec.epilog.vector.body6061

vec.epilog.vector.body6061:                       ; preds = %vec.epilog.vector.body6061, %vec.epilog.ph6058
  %index6062 = phi i64 [ %vec.epilog.resume.val6059, %vec.epilog.ph6058 ], [ %index.next6068, %vec.epilog.vector.body6061 ] ; 2 uses
  %i.atq = shl i64 %index6062, 2                  ; 3 uses
  %next.gep6063 = getelementptr i8, ptr %.1.lcssa.i.i401, i64 %i.atq
  %next.gep6064 = getelementptr i8, ptr %.129.lcssa.i.i400, i64 %i.atq
  %next.gep6065 = getelementptr i8, ptr %.135.lcssa.i.i398, i64 %i.atq
  %wide.load6066 = load <4 x float>, ptr %next.gep6063, align 4, !tbaa !59
  %wide.load6067 = load <4 x float>, ptr %next.gep6064, align 4, !tbaa !59
  %i.atr = fmul fast <4 x float> %wide.load6067, %wide.load6066
  store <4 x float> %i.atr, ptr %next.gep6065, align 4, !tbaa !59
  %index.next6068 = add nuw i64 %index6062, 4     ; 2 uses
  %i.ats = icmp eq i64 %index.next6068, %n.vec6060
  br i1 %i.ats, label %vec.epilog.middle.block6069, label %vec.epilog.vector.body6061, !llvm.loop !137

vec.epilog.middle.block6069:                      ; preds = %vec.epilog.vector.body6061
  %cmp.n6070 = icmp eq i64 %i.ast, %n.vec6060
  br i1 %cmp.n6070, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i402.preheader

.lr.ph61.i.i402.preheader:                        ; preds = %iter.check6054, %vector.memcheck6034, %vec.epilog.iter.check6055, %vec.epilog.middle.block6069
  %.260.i.i403.ph = phi ptr [ %.1.lcssa.i.i401, %iter.check6054 ], [ %.1.lcssa.i.i401, %vector.memcheck6034 ], [ %i.asy, %vec.epilog.iter.check6055 ], [ %i.atl, %vec.epilog.middle.block6069 ] ; 2 uses
  %.23059.i.i404.ph = phi ptr [ %.129.lcssa.i.i400, %iter.check6054 ], [ %.129.lcssa.i.i400, %vector.memcheck6034 ], [ %i.asz, %vec.epilog.iter.check6055 ], [ %i.atm, %vec.epilog.middle.block6069 ] ; 2 uses
  %.23358.i.i405.ph = phi i32 [ %.132.lcssa.i.i399, %iter.check6054 ], [ %.132.lcssa.i.i399, %vector.memcheck6034 ], [ %i.atb, %vec.epilog.iter.check6055 ], [ %i.ato, %vec.epilog.middle.block6069 ] ; 4 uses
  %.23657.i.i406.ph = phi ptr [ %.135.lcssa.i.i398, %iter.check6054 ], [ %.135.lcssa.i.i398, %vector.memcheck6034 ], [ %i.atc, %vec.epilog.iter.check6055 ], [ %i.atp, %vec.epilog.middle.block6069 ] ; 2 uses
  %i.att = sub i32 %i.ara, %.23358.i.i405.ph
  %xtraiter7922 = and i32 %i.att, 3               ; 2 uses
  %lcmp.mod7923.not = icmp eq i32 %xtraiter7922, 0
  br i1 %lcmp.mod7923.not, label %.lr.ph61.i.i402.prol.loopexit, label %.lr.ph61.i.i402.prol

.lr.ph61.i.i402.prol:                             ; preds = %.lr.ph61.i.i402.preheader, %.lr.ph61.i.i402.prol
  %.260.i.i403.prol = phi ptr [ %i.atx, %.lr.ph61.i.i402.prol ], [ %.260.i.i403.ph, %.lr.ph61.i.i402.preheader ] ; 2 uses
  %.23059.i.i404.prol = phi ptr [ %i.aty, %.lr.ph61.i.i402.prol ], [ %.23059.i.i404.ph, %.lr.ph61.i.i402.preheader ] ; 2 uses
  %.23358.i.i405.prol = phi i32 [ %i.aua, %.lr.ph61.i.i402.prol ], [ %.23358.i.i405.ph, %.lr.ph61.i.i402.preheader ]
  %.23657.i.i406.prol = phi ptr [ %i.atz, %.lr.ph61.i.i402.prol ], [ %.23657.i.i406.ph, %.lr.ph61.i.i402.preheader ] ; 2 uses
  %prol.iter7924 = phi i32 [ %prol.iter7924.next, %.lr.ph61.i.i402.prol ], [ 0, %.lr.ph61.i.i402.preheader ]
  %i.atu = load float, ptr %.260.i.i403.prol, align 4, !tbaa !59
  %i.atv = load float, ptr %.23059.i.i404.prol, align 4, !tbaa !59
  %i.atw = fmul fast float %i.atv, %i.atu
  store float %i.atw, ptr %.23657.i.i406.prol, align 4, !tbaa !59
  %i.atx = getelementptr inbounds nuw i8, ptr %.260.i.i403.prol, i64 4 ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.23059.i.i404.prol, i64 4 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %.23657.i.i406.prol, i64 4 ; 2 uses
  %i.aua = add nuw nsw i32 %.23358.i.i405.prol, 1 ; 2 uses
  %prol.iter7924.next = add i32 %prol.iter7924, 1 ; 2 uses
  %prol.iter7924.cmp.not = icmp eq i32 %prol.iter7924.next, %xtraiter7922
  br i1 %prol.iter7924.cmp.not, label %.lr.ph61.i.i402.prol.loopexit, label %.lr.ph61.i.i402.prol, !llvm.loop !138

.lr.ph61.i.i402.prol.loopexit:                    ; preds = %.lr.ph61.i.i402.prol, %.lr.ph61.i.i402.preheader
  %.260.i.i403.unr = phi ptr [ %.260.i.i403.ph, %.lr.ph61.i.i402.preheader ], [ %i.atx, %.lr.ph61.i.i402.prol ]
  %.23059.i.i404.unr = phi ptr [ %.23059.i.i404.ph, %.lr.ph61.i.i402.preheader ], [ %i.aty, %.lr.ph61.i.i402.prol ]
  %.23358.i.i405.unr = phi i32 [ %.23358.i.i405.ph, %.lr.ph61.i.i402.preheader ], [ %i.aua, %.lr.ph61.i.i402.prol ]
  %.23657.i.i406.unr = phi ptr [ %.23657.i.i406.ph, %.lr.ph61.i.i402.preheader ], [ %i.atz, %.lr.ph61.i.i402.prol ]
  %i.aub = sub i32 %.23358.i.i405.ph, %i.ara
  %i.auc = icmp ugt i32 %i.aub, -4
  br i1 %i.auc, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i402

.lr.ph52.i.i408:                                  ; preds = %.preheader40.i.i392, %.lr.ph52.i.i408
  %.151.i.i409 = phi ptr [ %i.aug, %.lr.ph52.i.i408 ], [ %.0.lcssa.i.i396, %.preheader40.i.i392 ] ; 2 uses
  %.12950.i.i410 = phi ptr [ %i.auh, %.lr.ph52.i.i408 ], [ %.028.lcssa.i.i395, %.preheader40.i.i392 ] ; 2 uses
  %.13249.i.i411 = phi i32 [ %i.auj, %.lr.ph52.i.i408 ], [ %.031.lcssa.i.i394, %.preheader40.i.i392 ]
  %.13548.i.i412 = phi ptr [ %i.aui, %.lr.ph52.i.i408 ], [ %.034.lcssa.i.i393, %.preheader40.i.i392 ] ; 2 uses
  %i.aud = load <4 x float>, ptr %.151.i.i409, align 1, !tbaa !60
  %i.aue = load <4 x float>, ptr %.12950.i.i410, align 1, !tbaa !60
  %i.auf = fmul fast <4 x float> %i.aue, %i.aud
  store <4 x float> %i.auf, ptr %.13548.i.i412, align 1, !tbaa !60
  %i.aug = getelementptr inbounds nuw i8, ptr %.151.i.i409, i64 16 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %.12950.i.i410, i64 16 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %.13548.i.i412, i64 16 ; 2 uses
  %i.auj = add nuw nsw i32 %.13249.i.i411, 4      ; 3 uses
  %i.auk = or disjoint i32 %i.auj, 3
  %i.aul = icmp slt i32 %i.auk, %i.ara
  br i1 %i.aul, label %.lr.ph52.i.i408, label %.preheader.i.i397, !llvm.loop !139

.lr.ph61.i.i402:                                  ; preds = %.lr.ph61.i.i402.prol.loopexit, %.lr.ph61.i.i402
  %.260.i.i403 = phi ptr [ %i.avh, %.lr.ph61.i.i402 ], [ %.260.i.i403.unr, %.lr.ph61.i.i402.prol.loopexit ] ; 5 uses
  %.23059.i.i404 = phi ptr [ %i.avi, %.lr.ph61.i.i402 ], [ %.23059.i.i404.unr, %.lr.ph61.i.i402.prol.loopexit ] ; 5 uses
  %.23358.i.i405 = phi i32 [ %i.avk, %.lr.ph61.i.i402 ], [ %.23358.i.i405.unr, %.lr.ph61.i.i402.prol.loopexit ]
  %.23657.i.i406 = phi ptr [ %i.avj, %.lr.ph61.i.i402 ], [ %.23657.i.i406.unr, %.lr.ph61.i.i402.prol.loopexit ] ; 5 uses
  %i.aum = load float, ptr %.260.i.i403, align 4, !tbaa !59
  %i.aun = load float, ptr %.23059.i.i404, align 4, !tbaa !59
  %i.auo = fmul fast float %i.aun, %i.aum
  store float %i.auo, ptr %.23657.i.i406, align 4, !tbaa !59
  %i.aup = getelementptr inbounds nuw i8, ptr %.260.i.i403, i64 4
  %i.auq = getelementptr inbounds nuw i8, ptr %.23059.i.i404, i64 4
  %i.aur = getelementptr inbounds nuw i8, ptr %.23657.i.i406, i64 4
  %i.aus = load float, ptr %i.aup, align 4, !tbaa !59
  %i.aut = load float, ptr %i.auq, align 4, !tbaa !59
  %i.auu = fmul fast float %i.aut, %i.aus
  store float %i.auu, ptr %i.aur, align 4, !tbaa !59
  %i.auv = getelementptr inbounds nuw i8, ptr %.260.i.i403, i64 8
  %i.auw = getelementptr inbounds nuw i8, ptr %.23059.i.i404, i64 8
  %i.aux = getelementptr inbounds nuw i8, ptr %.23657.i.i406, i64 8
  %i.auy = load float, ptr %i.auv, align 4, !tbaa !59
  %i.auz = load float, ptr %i.auw, align 4, !tbaa !59
  %i.ava = fmul fast float %i.auz, %i.auy
  store float %i.ava, ptr %i.aux, align 4, !tbaa !59
  %i.avb = getelementptr inbounds nuw i8, ptr %.260.i.i403, i64 12
  %i.avc = getelementptr inbounds nuw i8, ptr %.23059.i.i404, i64 12
  %i.avd = getelementptr inbounds nuw i8, ptr %.23657.i.i406, i64 12
  %i.ave = load float, ptr %i.avb, align 4, !tbaa !59
  %i.avf = load float, ptr %i.avc, align 4, !tbaa !59
  %i.avg = fmul fast float %i.avf, %i.ave
  store float %i.avg, ptr %i.avd, align 4, !tbaa !59
  %i.avh = getelementptr inbounds nuw i8, ptr %.260.i.i403, i64 16
  %i.avi = getelementptr inbounds nuw i8, ptr %.23059.i.i404, i64 16
  %i.avj = getelementptr inbounds nuw i8, ptr %.23657.i.i406, i64 16
  %i.avk = add nuw nsw i32 %.23358.i.i405, 4      ; 2 uses
  %exitcond.not.i.i407.3 = icmp eq i32 %i.avk, %i.ara
  br i1 %exitcond.not.i.i407.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i402, !llvm.loop !140

bb.ba:                                            ; preds = %bb.ay
  %i.avl = icmp eq i32 %4, 1
  br i1 %i.avl, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.avm = load float, ptr %1, align 4, !tbaa !59 ; 8 uses
  %i.avn = icmp eq i32 %.sroa.speculated.i286, 4
  br i1 %i.avn, label %.thread.i.i391, label %bb.bc

.thread.i.i391:                                   ; preds = %bb.bb
  %i.avo = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.avp = insertelement <4 x float> poison, float %i.avm, i64 0
  %i.avq = shufflevector <4 x float> %i.avp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.avr = icmp eq i32 %.sroa.speculated.i286, 8
  br i1 %i.avr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.avs = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %.thread.i.i391
  %i.avt = phi <4 x float> [ %i.avo, %.thread.i.i391 ], [ %i.avq, %bb.bc ] ; 2 uses
  %i.avu = shufflevector <4 x float> %i.avt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.avv = phi <4 x float> [ %i.avq, %bb.bd ], [ %i.avt, %bb.be ]
  %i.avw = phi fast <8 x float> [ %i.avs, %bb.bd ], [ %i.avu, %bb.be ] ; 5 uses
  %i.avx = icmp sgt i32 %i.ara, 7
end_hunk_2
begin_hunk_3_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %.13356.i.i428.prol = phi i32 [ %i.cft, %.lr.ph59.i.i425.prol ], [ %.032.lcssa.i.i422, %.lr.ph59.i.i425.preheader ]
  %prol.iter7779 = phi i32 [ %prol.iter7779.next, %.lr.ph59.i.i425.prol ], [ 0, %.lr.ph59.i.i425.preheader ]
  %i.cfn = load float, ptr %.358.i.i426.prol, align 4, !tbaa !59
  %i.cfo = insertelement <4 x float> poison, float %i.cfn, i64 0
  %i.cfp = shufflevector <4 x float> %i.cfo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cfq = fdiv fast <4 x float> %i.cet, %i.cfp
  store <4 x float> %i.cfq, ptr %.33157.i.i427.prol, align 1, !tbaa !60
  %i.cfr = getelementptr inbounds nuw i8, ptr %.358.i.i426.prol, i64 4 ; 2 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %.33157.i.i427.prol, i64 16 ; 2 uses
  %i.cft = add nuw nsw i32 %.13356.i.i428.prol, 1 ; 2 uses
  %prol.iter7779.next = add i32 %prol.iter7779, 1 ; 2 uses
  %prol.iter7779.cmp.not = icmp eq i32 %prol.iter7779.next, %xtraiter7777
  br i1 %prol.iter7779.cmp.not, label %.lr.ph59.i.i425.prol.loopexit, label %.lr.ph59.i.i425.prol, !llvm.loop !192

.lr.ph59.i.i425.prol.loopexit:                    ; preds = %.lr.ph59.i.i425.prol, %.lr.ph59.i.i425.preheader
  %.358.i.i426.unr = phi ptr [ %.2.lcssa.i68.i424, %.lr.ph59.i.i425.preheader ], [ %i.cfr, %.lr.ph59.i.i425.prol ]
  %.33157.i.i427.unr = phi ptr [ %.230.lcssa.i.i423, %.lr.ph59.i.i425.preheader ], [ %i.cfs, %.lr.ph59.i.i425.prol ]
  %.13356.i.i428.unr = phi i32 [ %.032.lcssa.i.i422, %.lr.ph59.i.i425.preheader ], [ %i.cft, %.lr.ph59.i.i425.prol ]
  %i.cfu = sub nsw i32 %.032.lcssa.i.i422, %.sroa.speculated83.i419
  %i.cfv = icmp ugt i32 %i.cfu, -4
  br i1 %i.cfv, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph59.i.i425

.lr.ph52.i69.i430:                                ; preds = %.lr.ph52.i69.i430, %.lr.ph52.i69.i430.preheader.new
  %.251.i.i431 = phi ptr [ %1, %.lr.ph52.i69.i430.preheader.new ], [ %i.cgm, %.lr.ph52.i69.i430 ] ; 5 uses
  %.23050.i.i432 = phi ptr [ %2, %.lr.ph52.i69.i430.preheader.new ], [ %i.cgn, %.lr.ph52.i69.i430 ] ; 3 uses
  %niter7776 = phi i32 [ 0, %.lr.ph52.i69.i430.preheader.new ], [ %niter7776.next.1, %.lr.ph52.i69.i430 ]
  %i.cfw = load float, ptr %.251.i.i431, align 4, !tbaa !59
  %i.cfx = insertelement <4 x float> poison, float %i.cfw, i64 0
  %i.cfy = getelementptr inbounds nuw i8, ptr %.251.i.i431, i64 4
  %i.cfz = load float, ptr %i.cfy, align 4, !tbaa !59
  %i.cga = insertelement <4 x float> poison, float %i.cfz, i64 0
  %i.cgb = shufflevector <4 x float> %i.cfx, <4 x float> %i.cga, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cgc = fdiv fast <8 x float> %i.ceu, %i.cgb
  store <8 x float> %i.cgc, ptr %.23050.i.i432, align 1, !tbaa !60
  %i.cgd = getelementptr inbounds nuw i8, ptr %.251.i.i431, i64 8
  %i.cge = getelementptr inbounds nuw i8, ptr %.23050.i.i432, i64 32
  %i.cgf = load float, ptr %i.cgd, align 4, !tbaa !59
  %i.cgg = insertelement <4 x float> poison, float %i.cgf, i64 0
  %i.cgh = getelementptr inbounds nuw i8, ptr %.251.i.i431, i64 12
  %i.cgi = load float, ptr %i.cgh, align 4, !tbaa !59
  %i.cgj = insertelement <4 x float> poison, float %i.cgi, i64 0
  %i.cgk = shufflevector <4 x float> %i.cgg, <4 x float> %i.cgj, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cgl = fdiv fast <8 x float> %i.ceu, %i.cgk
  store <8 x float> %i.cgl, ptr %i.cge, align 1, !tbaa !60
  %i.cgm = getelementptr inbounds nuw i8, ptr %.251.i.i431, i64 16 ; 3 uses
  %i.cgn = getelementptr inbounds nuw i8, ptr %.23050.i.i432, i64 64 ; 3 uses
  %niter7776.next.1 = add nuw nsw i32 %niter7776, 2 ; 2 uses
  %niter7776.ncmp.1.not = icmp eq i32 %niter7776.next.1, %unroll_iter7775
  br i1 %niter7776.ncmp.1.not, label %.preheader.loopexit.i70.i434.unr-lcssa, label %.lr.ph52.i69.i430, !llvm.loop !193

.lr.ph59.i.i425:                                  ; preds = %.lr.ph59.i.i425.prol.loopexit, %.lr.ph59.i.i425
  %.358.i.i426 = phi ptr [ %i.chk, %.lr.ph59.i.i425 ], [ %.358.i.i426.unr, %.lr.ph59.i.i425.prol.loopexit ] ; 5 uses
  %.33157.i.i427 = phi ptr [ %i.chl, %.lr.ph59.i.i425 ], [ %.33157.i.i427.unr, %.lr.ph59.i.i425.prol.loopexit ] ; 5 uses
  %.13356.i.i428 = phi i32 [ %i.chm, %.lr.ph59.i.i425 ], [ %.13356.i.i428.unr, %.lr.ph59.i.i425.prol.loopexit ]
  %i.cgo = load float, ptr %.358.i.i426, align 4, !tbaa !59
  %i.cgp = insertelement <4 x float> poison, float %i.cgo, i64 0
  %i.cgq = shufflevector <4 x float> %i.cgp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cgr = fdiv fast <4 x float> %i.cet, %i.cgq
  store <4 x float> %i.cgr, ptr %.33157.i.i427, align 1, !tbaa !60
  %i.cgs = getelementptr inbounds nuw i8, ptr %.358.i.i426, i64 4
  %i.cgt = getelementptr inbounds nuw i8, ptr %.33157.i.i427, i64 16
  %i.cgu = load float, ptr %i.cgs, align 4, !tbaa !59
  %i.cgv = insertelement <4 x float> poison, float %i.cgu, i64 0
  %i.cgw = shufflevector <4 x float> %i.cgv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cgx = fdiv fast <4 x float> %i.cet, %i.cgw
  store <4 x float> %i.cgx, ptr %i.cgt, align 1, !tbaa !60
  %i.cgy = getelementptr inbounds nuw i8, ptr %.358.i.i426, i64 8
  %i.cgz = getelementptr inbounds nuw i8, ptr %.33157.i.i427, i64 32
  %i.cha = load float, ptr %i.cgy, align 4, !tbaa !59
  %i.chb = insertelement <4 x float> poison, float %i.cha, i64 0
  %i.chc = shufflevector <4 x float> %i.chb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chd = fdiv fast <4 x float> %i.cet, %i.chc
  store <4 x float> %i.chd, ptr %i.cgz, align 1, !tbaa !60
  %i.che = getelementptr inbounds nuw i8, ptr %.358.i.i426, i64 12
  %i.chf = getelementptr inbounds nuw i8, ptr %.33157.i.i427, i64 48
  %i.chg = load float, ptr %i.che, align 4, !tbaa !59
  %i.chh = insertelement <4 x float> poison, float %i.chg, i64 0
  %i.chi = shufflevector <4 x float> %i.chh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chj = fdiv fast <4 x float> %i.cet, %i.chi
  store <4 x float> %i.chj, ptr %i.chf, align 1, !tbaa !60
  %i.chk = getelementptr inbounds nuw i8, ptr %.358.i.i426, i64 16
  %i.chl = getelementptr inbounds nuw i8, ptr %.33157.i.i427, i64 64
  %i.chm = add nuw nsw i32 %.13356.i.i428, 4      ; 2 uses
  %exitcond64.not.i.i429.3 = icmp eq i32 %i.chm, %.sroa.speculated83.i419
  br i1 %exitcond64.not.i.i429.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph59.i.i425, !llvm.loop !194

bb.ct:                                            ; preds = %bb.a
  %.sroa.speculated84.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 23 uses
  %.sroa.speculated.i553 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 8 uses
  %i.chn = mul i32 %.sroa.speculated.i553, %.sroa.speculated84.i ; 35 uses
  %i.cho = icmp eq i32 %5, %6
  br i1 %i.cho, label %bb.cu, label %bb.di

bb.cu:                                            ; preds = %bb.ct
  %i.chp = icmp eq i32 %3, %4
  br i1 %i.chp, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.chq = icmp sgt i32 %i.chn, 7
  br i1 %i.chq, label %.lr.ph.i.i658.preheader, label %.preheader40.i.i637

.lr.ph.i.i658.preheader:                          ; preds = %bb.cv
  %i.chr = add nsw i32 %i.chn, -8                 ; 2 uses
  %i.chs = lshr i32 %i.chr, 3
  %i.cht = add nuw nsw i32 %i.chs, 1              ; 2 uses
  %xtraiter7757 = and i32 %i.cht, 3               ; 3 uses
  %i.chu = icmp ult i32 %i.chr, 24
  br i1 %i.chu, label %.lr.ph.i.i658.epil.preheader, label %.lr.ph.i.i658.preheader.new

.lr.ph.i.i658.preheader.new:                      ; preds = %.lr.ph.i.i658.preheader
  %unroll_iter7764 = and i32 %i.cht, 1073741820
  br label %.lr.ph.i.i658

.preheader40.loopexit.i.i663.unr-lcssa:           ; preds = %.lr.ph.i.i658
  %lcmp.mod7759.not = icmp eq i32 %xtraiter7757, 0
  br i1 %lcmp.mod7759.not, label %.preheader40.loopexit.i.i663, label %.lr.ph.i.i658.epil.preheader

.lr.ph.i.i658.epil.preheader:                     ; preds = %.preheader40.loopexit.i.i663.unr-lcssa, %.lr.ph.i.i658.preheader
  %.044.i.i659.epil.init = phi ptr [ %0, %.lr.ph.i.i658.preheader ], [ %i.ciz, %.preheader40.loopexit.i.i663.unr-lcssa ]
  %.02843.i.i660.epil.init = phi ptr [ %1, %.lr.ph.i.i658.preheader ], [ %i.cja, %.preheader40.loopexit.i.i663.unr-lcssa ]
  %.03441.i.i662.epil.init = phi ptr [ %2, %.lr.ph.i.i658.preheader ], [ %i.cjb, %.preheader40.loopexit.i.i663.unr-lcssa ]
  %lcmp.mod7763 = icmp ne i32 %xtraiter7757, 0
  tail call void @llvm.assume(i1 %lcmp.mod7763)
  br label %.lr.ph.i.i658.epil

.lr.ph.i.i658.epil:                               ; preds = %.lr.ph.i.i658.epil, %.lr.ph.i.i658.epil.preheader
  %.044.i.i659.epil = phi ptr [ %i.chy, %.lr.ph.i.i658.epil ], [ %.044.i.i659.epil.init, %.lr.ph.i.i658.epil.preheader ] ; 2 uses
  %.02843.i.i660.epil = phi ptr [ %i.chz, %.lr.ph.i.i658.epil ], [ %.02843.i.i660.epil.init, %.lr.ph.i.i658.epil.preheader ] ; 2 uses
  %.03441.i.i662.epil = phi ptr [ %i.cia, %.lr.ph.i.i658.epil ], [ %.03441.i.i662.epil.init, %.lr.ph.i.i658.epil.preheader ] ; 2 uses
  %epil.iter7758 = phi i32 [ %epil.iter7758.next, %.lr.ph.i.i658.epil ], [ 0, %.lr.ph.i.i658.epil.preheader ]
  %i.chv = load <8 x float>, ptr %.044.i.i659.epil, align 1, !tbaa !60
  %i.chw = load <8 x float>, ptr %.02843.i.i660.epil, align 1, !tbaa !60
  %i.chx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.chv, <8 x float> nofpclass(nan inf) %i.chw)
  store <8 x float> %i.chx, ptr %.03441.i.i662.epil, align 1, !tbaa !60
  %i.chy = getelementptr inbounds nuw i8, ptr %.044.i.i659.epil, i64 32 ; 2 uses
  %i.chz = getelementptr inbounds nuw i8, ptr %.02843.i.i660.epil, i64 32 ; 2 uses
  %i.cia = getelementptr inbounds nuw i8, ptr %.03441.i.i662.epil, i64 32 ; 2 uses
  %epil.iter7758.next = add i32 %epil.iter7758, 1 ; 2 uses
  %epil.iter7758.cmp.not = icmp eq i32 %epil.iter7758.next, %xtraiter7757
  br i1 %epil.iter7758.cmp.not, label %.preheader40.loopexit.i.i663, label %.lr.ph.i.i658.epil, !llvm.loop !195

.preheader40.loopexit.i.i663:                     ; preds = %.lr.ph.i.i658.epil, %.preheader40.loopexit.i.i663.unr-lcssa
  %.lcssa6536 = phi ptr [ %i.ciz, %.preheader40.loopexit.i.i663.unr-lcssa ], [ %i.chy, %.lr.ph.i.i658.epil ]
  %.lcssa6535 = phi ptr [ %i.cja, %.preheader40.loopexit.i.i663.unr-lcssa ], [ %i.chz, %.lr.ph.i.i658.epil ]
  %.lcssa6534 = phi ptr [ %i.cjb, %.preheader40.loopexit.i.i663.unr-lcssa ], [ %i.cia, %.lr.ph.i.i658.epil ]
  %i.cib = and i32 %i.chn, 2147483640
  br label %.preheader40.i.i637

.preheader40.i.i637:                              ; preds = %.preheader40.loopexit.i.i663, %bb.cv
  %.034.lcssa.i.i638 = phi ptr [ %2, %bb.cv ], [ %.lcssa6534, %.preheader40.loopexit.i.i663 ] ; 2 uses
  %.031.lcssa.i.i639 = phi i32 [ 0, %bb.cv ], [ %i.cib, %.preheader40.loopexit.i.i663 ] ; 3 uses
  %.028.lcssa.i.i640 = phi ptr [ %1, %bb.cv ], [ %.lcssa6535, %.preheader40.loopexit.i.i663 ] ; 2 uses
  %.0.lcssa.i.i641 = phi ptr [ %0, %bb.cv ], [ %.lcssa6536, %.preheader40.loopexit.i.i663 ] ; 2 uses
  %i.cic = or disjoint i32 %.031.lcssa.i.i639, 3
  %i.cid = icmp slt i32 %i.cic, %i.chn
  br i1 %i.cid, label %.lr.ph52.i.i653, label %.preheader.i.i642

.lr.ph.i.i658:                                    ; preds = %.lr.ph.i.i658, %.lr.ph.i.i658.preheader.new
  %.044.i.i659 = phi ptr [ %0, %.lr.ph.i.i658.preheader.new ], [ %i.ciz, %.lr.ph.i.i658 ] ; 5 uses
  %.02843.i.i660 = phi ptr [ %1, %.lr.ph.i.i658.preheader.new ], [ %i.cja, %.lr.ph.i.i658 ] ; 5 uses
  %.03441.i.i662 = phi ptr [ %2, %.lr.ph.i.i658.preheader.new ], [ %i.cjb, %.lr.ph.i.i658 ] ; 5 uses
  %niter7765 = phi i32 [ 0, %.lr.ph.i.i658.preheader.new ], [ %niter7765.next.3, %.lr.ph.i.i658 ]
  %i.cie = load <8 x float>, ptr %.044.i.i659, align 1, !tbaa !60
  %i.cif = load <8 x float>, ptr %.02843.i.i660, align 1, !tbaa !60
  %i.cig = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cie, <8 x float> nofpclass(nan inf) %i.cif)
  store <8 x float> %i.cig, ptr %.03441.i.i662, align 1, !tbaa !60
  %i.cih = getelementptr inbounds nuw i8, ptr %.044.i.i659, i64 32
  %i.cii = getelementptr inbounds nuw i8, ptr %.02843.i.i660, i64 32
  %i.cij = getelementptr inbounds nuw i8, ptr %.03441.i.i662, i64 32
  %i.cik = load <8 x float>, ptr %i.cih, align 1, !tbaa !60
  %i.cil = load <8 x float>, ptr %i.cii, align 1, !tbaa !60
  %i.cim = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cik, <8 x float> nofpclass(nan inf) %i.cil)
  store <8 x float> %i.cim, ptr %i.cij, align 1, !tbaa !60
  %i.cin = getelementptr inbounds nuw i8, ptr %.044.i.i659, i64 64
  %i.cio = getelementptr inbounds nuw i8, ptr %.02843.i.i660, i64 64
  %i.cip = getelementptr inbounds nuw i8, ptr %.03441.i.i662, i64 64
  %i.ciq = load <8 x float>, ptr %i.cin, align 1, !tbaa !60
  %i.cir = load <8 x float>, ptr %i.cio, align 1, !tbaa !60
  %i.cis = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ciq, <8 x float> nofpclass(nan inf) %i.cir)
  store <8 x float> %i.cis, ptr %i.cip, align 1, !tbaa !60
  %i.cit = getelementptr inbounds nuw i8, ptr %.044.i.i659, i64 96
  %i.ciu = getelementptr inbounds nuw i8, ptr %.02843.i.i660, i64 96
  %i.civ = getelementptr inbounds nuw i8, ptr %.03441.i.i662, i64 96
  %i.ciw = load <8 x float>, ptr %i.cit, align 1, !tbaa !60
  %i.cix = load <8 x float>, ptr %i.ciu, align 1, !tbaa !60
  %i.ciy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ciw, <8 x float> nofpclass(nan inf) %i.cix)
  store <8 x float> %i.ciy, ptr %i.civ, align 1, !tbaa !60
  %i.ciz = getelementptr inbounds nuw i8, ptr %.044.i.i659, i64 128 ; 3 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %.02843.i.i660, i64 128 ; 3 uses
  %i.cjb = getelementptr inbounds nuw i8, ptr %.03441.i.i662, i64 128 ; 3 uses
  %niter7765.next.3 = add i32 %niter7765, 4       ; 2 uses
  %niter7765.ncmp.3.not = icmp eq i32 %niter7765.next.3, %unroll_iter7764
  br i1 %niter7765.ncmp.3.not, label %.preheader40.loopexit.i.i663.unr-lcssa, label %.lr.ph.i.i658, !llvm.loop !196

.preheader.i.i642:                                ; preds = %.lr.ph52.i.i653, %.preheader40.i.i637
  %.135.lcssa.i.i643 = phi ptr [ %.034.lcssa.i.i638, %.preheader40.i.i637 ], [ %i.ckz, %.lr.ph52.i.i653 ] ; 7 uses
  %.132.lcssa.i.i644 = phi i32 [ %.031.lcssa.i.i639, %.preheader40.i.i637 ], [ %i.cla, %.lr.ph52.i.i653 ] ; 6 uses
  %.129.lcssa.i.i645 = phi ptr [ %.028.lcssa.i.i640, %.preheader40.i.i637 ], [ %i.cky, %.lr.ph52.i.i653 ] ; 7 uses
  %.1.lcssa.i.i646 = phi ptr [ %.0.lcssa.i.i641, %.preheader40.i.i637 ], [ %i.ckx, %.lr.ph52.i.i653 ] ; 7 uses
  %.129.lcssa.i.i6455800 = ptrtoaddr ptr %.129.lcssa.i.i645 to i64
  %.135.lcssa.i.i6435801 = ptrtoaddr ptr %.1.lcssa.i.i646 to i64
  %.1.lcssa.i.i6465802 = ptrtoaddr ptr %.135.lcssa.i.i643 to i64 ; 2 uses
  %i.cjc = icmp slt i32 %.132.lcssa.i.i644, %i.chn
  br i1 %i.cjc, label %iter.check5825, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check5825:                                   ; preds = %.preheader.i.i642
  %i.cjd = xor i32 %.132.lcssa.i.i644, -1
  %i.cje = add i32 %i.chn, %i.cjd                 ; 3 uses
  %i.cjf = zext i32 %i.cje to i64
  %i.cjg = add nuw nsw i64 %i.cjf, 1              ; 5 uses
  %min.iters.check5804 = icmp ult i32 %i.cje, 3
  br i1 %min.iters.check5804, label %.lr.ph61.i.i647.preheader, label %vector.memcheck5805

vector.memcheck5805:                              ; preds = %iter.check5825
  %i.cjh = sub i64 %.135.lcssa.i.i6435801, %.1.lcssa.i.i6465802
  %diff.check5806 = icmp ugt i64 %i.cjh, -64
  %i.cji = sub i64 %.129.lcssa.i.i6455800, %.1.lcssa.i.i6465802
  %diff.check5807 = icmp ugt i64 %i.cji, -64
  %conflict.rdx5808 = or i1 %diff.check5806, %diff.check5807
  br i1 %conflict.rdx5808, label %.lr.ph61.i.i647.preheader, label %vector.main.loop.iter.check5809

vector.main.loop.iter.check5809:                  ; preds = %vector.memcheck5805
  %min.iters.check5810 = icmp ult i32 %i.cje, 15
  br i1 %min.iters.check5810, label %vec.epilog.ph5829, label %vector.ph5811

vector.ph5811:                                    ; preds = %vector.main.loop.iter.check5809
  %i.cjj = and i64 %i.cjg, 12
  %n.vec5812 = and i64 %i.cjg, 8589934576         ; 5 uses
  %i.cjk = shl nuw nsw i64 %n.vec5812, 2          ; 3 uses
  %i.cjl = getelementptr i8, ptr %.1.lcssa.i.i646, i64 %i.cjk
  %i.cjm = getelementptr i8, ptr %.129.lcssa.i.i645, i64 %i.cjk
  %i.cjn = trunc i64 %n.vec5812 to i32
  %i.cjo = add i32 %.132.lcssa.i.i644, %i.cjn
  %i.cjp = getelementptr i8, ptr %.135.lcssa.i.i643, i64 %i.cjk
  br label %vector.body5813

vector.body5813:                                  ; preds = %vector.ph5811, %vector.body5813
  %index5814 = phi i64 [ 0, %vector.ph5811 ], [ %index.next5822, %vector.body5813 ] ; 2 uses
  %i.cjq = shl i64 %index5814, 2                  ; 3 uses
  %next.gep5815 = getelementptr i8, ptr %.1.lcssa.i.i646, i64 %i.cjq ; 2 uses
  %next.gep5816 = getelementptr i8, ptr %.129.lcssa.i.i645, i64 %i.cjq ; 2 uses
  %next.gep5817 = getelementptr i8, ptr %.135.lcssa.i.i643, i64 %i.cjq ; 2 uses
  %i.cjr = getelementptr i8, ptr %next.gep5815, i64 32
  %wide.load5818 = load <8 x float>, ptr %next.gep5815, align 4, !tbaa !59 ; 2 uses
  %wide.load5819 = load <8 x float>, ptr %i.cjr, align 4, !tbaa !59 ; 2 uses
  %i.cjs = getelementptr i8, ptr %next.gep5816, i64 32
  %wide.load5820 = load <8 x float>, ptr %next.gep5816, align 4, !tbaa !59 ; 2 uses
  %wide.load5821 = load <8 x float>, ptr %i.cjs, align 4, !tbaa !59 ; 2 uses
  %i.cjt = fcmp fast olt <8 x float> %wide.load5818, %wide.load5820
  %i.cju = fcmp fast olt <8 x float> %wide.load5819, %wide.load5821
  %i.cjv = select <8 x i1> %i.cjt, <8 x float> %wide.load5820, <8 x float> %wide.load5818
  %i.cjw = select <8 x i1> %i.cju, <8 x float> %wide.load5821, <8 x float> %wide.load5819
  %i.cjx = getelementptr i8, ptr %next.gep5817, i64 32
  store <8 x float> %i.cjv, ptr %next.gep5817, align 4, !tbaa !59
  store <8 x float> %i.cjw, ptr %i.cjx, align 4, !tbaa !59
  %index.next5822 = add nuw i64 %index5814, 16    ; 2 uses
  %i.cjy = icmp eq i64 %index.next5822, %n.vec5812
  br i1 %i.cjy, label %middle.block5823, label %vector.body5813, !llvm.loop !197

middle.block5823:                                 ; preds = %vector.body5813
  %cmp.n5824 = icmp eq i64 %i.cjg, %n.vec5812
  br i1 %cmp.n5824, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check5826

vec.epilog.iter.check5826:                        ; preds = %middle.block5823
  %min.epilog.iters.check5828 = icmp eq i64 %i.cjj, 0
  br i1 %min.epilog.iters.check5828, label %.lr.ph61.i.i647.preheader, label %vec.epilog.ph5829, !prof !64

vec.epilog.ph5829:                                ; preds = %vector.main.loop.iter.check5809, %vec.epilog.iter.check5826
  %vec.epilog.resume.val5830 = phi i64 [ %n.vec5812, %vec.epilog.iter.check5826 ], [ 0, %vector.main.loop.iter.check5809 ]
  %n.vec5831 = and i64 %i.cjg, 8589934588         ; 4 uses
  %i.cjz = shl nuw nsw i64 %n.vec5831, 2          ; 3 uses
  %i.cka = getelementptr i8, ptr %.1.lcssa.i.i646, i64 %i.cjz
  %i.ckb = getelementptr i8, ptr %.129.lcssa.i.i645, i64 %i.cjz
  %i.ckc = trunc i64 %n.vec5831 to i32
  %i.ckd = add i32 %.132.lcssa.i.i644, %i.ckc
  %i.cke = getelementptr i8, ptr %.135.lcssa.i.i643, i64 %i.cjz
  br label %vec.epilog.vector.body5832

vec.epilog.vector.body5832:                       ; preds = %vec.epilog.vector.body5832, %vec.epilog.ph5829
  %index5833 = phi i64 [ %vec.epilog.resume.val5830, %vec.epilog.ph5829 ], [ %index.next5839, %vec.epilog.vector.body5832 ] ; 2 uses
  %i.ckf = shl i64 %index5833, 2                  ; 3 uses
  %next.gep5834 = getelementptr i8, ptr %.1.lcssa.i.i646, i64 %i.ckf
  %next.gep5835 = getelementptr i8, ptr %.129.lcssa.i.i645, i64 %i.ckf
  %next.gep5836 = getelementptr i8, ptr %.135.lcssa.i.i643, i64 %i.ckf
  %wide.load5837 = load <4 x float>, ptr %next.gep5834, align 4, !tbaa !59 ; 2 uses
  %wide.load5838 = load <4 x float>, ptr %next.gep5835, align 4, !tbaa !59 ; 2 uses
  %i.ckg = fcmp fast olt <4 x float> %wide.load5837, %wide.load5838
  %i.ckh = select <4 x i1> %i.ckg, <4 x float> %wide.load5838, <4 x float> %wide.load5837
  store <4 x float> %i.ckh, ptr %next.gep5836, align 4, !tbaa !59
  %index.next5839 = add nuw i64 %index5833, 4     ; 2 uses
  %i.cki = icmp eq i64 %index.next5839, %n.vec5831
  br i1 %i.cki, label %vec.epilog.middle.block5840, label %vec.epilog.vector.body5832, !llvm.loop !198

vec.epilog.middle.block5840:                      ; preds = %vec.epilog.vector.body5832
  %cmp.n5841 = icmp eq i64 %i.cjg, %n.vec5831
  br i1 %cmp.n5841, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i647.preheader

.lr.ph61.i.i647.preheader:                        ; preds = %iter.check5825, %vector.memcheck5805, %vec.epilog.iter.check5826, %vec.epilog.middle.block5840
  %.260.i.i648.ph = phi ptr [ %.1.lcssa.i.i646, %iter.check5825 ], [ %.1.lcssa.i.i646, %vector.memcheck5805 ], [ %i.cjl, %vec.epilog.iter.check5826 ], [ %i.cka, %vec.epilog.middle.block5840 ] ; 2 uses
  %.23059.i.i649.ph = phi ptr [ %.129.lcssa.i.i645, %iter.check5825 ], [ %.129.lcssa.i.i645, %vector.memcheck5805 ], [ %i.cjm, %vec.epilog.iter.check5826 ], [ %i.ckb, %vec.epilog.middle.block5840 ] ; 2 uses
  %.23358.i.i650.ph = phi i32 [ %.132.lcssa.i.i644, %iter.check5825 ], [ %.132.lcssa.i.i644, %vector.memcheck5805 ], [ %i.cjo, %vec.epilog.iter.check5826 ], [ %i.ckd, %vec.epilog.middle.block5840 ] ; 4 uses
  %.23657.i.i651.ph = phi ptr [ %.135.lcssa.i.i643, %iter.check5825 ], [ %.135.lcssa.i.i643, %vector.memcheck5805 ], [ %i.cjp, %vec.epilog.iter.check5826 ], [ %i.cke, %vec.epilog.middle.block5840 ] ; 2 uses
  %i.ckj = sub i32 %i.chn, %.23358.i.i650.ph
  %xtraiter7766 = and i32 %i.ckj, 3               ; 2 uses
  %lcmp.mod7767.not = icmp eq i32 %xtraiter7766, 0
  br i1 %lcmp.mod7767.not, label %.lr.ph61.i.i647.prol.loopexit, label %.lr.ph61.i.i647.prol

.lr.ph61.i.i647.prol:                             ; preds = %.lr.ph61.i.i647.preheader, %.lr.ph61.i.i647.prol
  %.260.i.i648.prol = phi ptr [ %i.cko, %.lr.ph61.i.i647.prol ], [ %.260.i.i648.ph, %.lr.ph61.i.i647.preheader ] ; 2 uses
  %.23059.i.i649.prol = phi ptr [ %i.ckp, %.lr.ph61.i.i647.prol ], [ %.23059.i.i649.ph, %.lr.ph61.i.i647.preheader ] ; 2 uses
  %.23358.i.i650.prol = phi i32 [ %i.ckr, %.lr.ph61.i.i647.prol ], [ %.23358.i.i650.ph, %.lr.ph61.i.i647.preheader ]
  %.23657.i.i651.prol = phi ptr [ %i.ckq, %.lr.ph61.i.i647.prol ], [ %.23657.i.i651.ph, %.lr.ph61.i.i647.preheader ] ; 2 uses
  %prol.iter7768 = phi i32 [ %prol.iter7768.next, %.lr.ph61.i.i647.prol ], [ 0, %.lr.ph61.i.i647.preheader ]
  %i.ckk = load float, ptr %.260.i.i648.prol, align 4, !tbaa !59 ; 2 uses
  %i.ckl = load float, ptr %.23059.i.i649.prol, align 4, !tbaa !59 ; 2 uses
  %i.ckm = fcmp fast olt float %i.ckk, %i.ckl
  %i.ckn = select i1 %i.ckm, float %i.ckl, float %i.ckk
  store float %i.ckn, ptr %.23657.i.i651.prol, align 4, !tbaa !59
  %i.cko = getelementptr inbounds nuw i8, ptr %.260.i.i648.prol, i64 4 ; 2 uses
  %i.ckp = getelementptr inbounds nuw i8, ptr %.23059.i.i649.prol, i64 4 ; 2 uses
  %i.ckq = getelementptr inbounds nuw i8, ptr %.23657.i.i651.prol, i64 4 ; 2 uses
  %i.ckr = add nuw nsw i32 %.23358.i.i650.prol, 1 ; 2 uses
  %prol.iter7768.next = add i32 %prol.iter7768, 1 ; 2 uses
  %prol.iter7768.cmp.not = icmp eq i32 %prol.iter7768.next, %xtraiter7766
  br i1 %prol.iter7768.cmp.not, label %.lr.ph61.i.i647.prol.loopexit, label %.lr.ph61.i.i647.prol, !llvm.loop !199

.lr.ph61.i.i647.prol.loopexit:                    ; preds = %.lr.ph61.i.i647.prol, %.lr.ph61.i.i647.preheader
  %.260.i.i648.unr = phi ptr [ %.260.i.i648.ph, %.lr.ph61.i.i647.preheader ], [ %i.cko, %.lr.ph61.i.i647.prol ]
  %.23059.i.i649.unr = phi ptr [ %.23059.i.i649.ph, %.lr.ph61.i.i647.preheader ], [ %i.ckp, %.lr.ph61.i.i647.prol ]
  %.23358.i.i650.unr = phi i32 [ %.23358.i.i650.ph, %.lr.ph61.i.i647.preheader ], [ %i.ckr, %.lr.ph61.i.i647.prol ]
  %.23657.i.i651.unr = phi ptr [ %.23657.i.i651.ph, %.lr.ph61.i.i647.preheader ], [ %i.ckq, %.lr.ph61.i.i647.prol ]
  %i.cks = sub i32 %.23358.i.i650.ph, %i.chn
  %i.ckt = icmp ugt i32 %i.cks, -4
  br i1 %i.ckt, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i647

.lr.ph52.i.i653:                                  ; preds = %.preheader40.i.i637, %.lr.ph52.i.i653
  %.151.i.i654 = phi ptr [ %i.ckx, %.lr.ph52.i.i653 ], [ %.0.lcssa.i.i641, %.preheader40.i.i637 ] ; 2 uses
  %.12950.i.i655 = phi ptr [ %i.cky, %.lr.ph52.i.i653 ], [ %.028.lcssa.i.i640, %.preheader40.i.i637 ] ; 2 uses
  %.13249.i.i656 = phi i32 [ %i.cla, %.lr.ph52.i.i653 ], [ %.031.lcssa.i.i639, %.preheader40.i.i637 ]
  %.13548.i.i657 = phi ptr [ %i.ckz, %.lr.ph52.i.i653 ], [ %.034.lcssa.i.i638, %.preheader40.i.i637 ] ; 2 uses
  %i.cku = load <4 x float>, ptr %.151.i.i654, align 1, !tbaa !60
  %i.ckv = load <4 x float>, ptr %.12950.i.i655, align 1, !tbaa !60
  %i.ckw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cku, <4 x float> nofpclass(nan inf) %i.ckv)
  store <4 x float> %i.ckw, ptr %.13548.i.i657, align 1, !tbaa !60
  %i.ckx = getelementptr inbounds nuw i8, ptr %.151.i.i654, i64 16 ; 2 uses
  %i.cky = getelementptr inbounds nuw i8, ptr %.12950.i.i655, i64 16 ; 2 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %.13548.i.i657, i64 16 ; 2 uses
  %i.cla = add nuw nsw i32 %.13249.i.i656, 4      ; 3 uses
  %i.clb = or disjoint i32 %i.cla, 3
  %i.clc = icmp slt i32 %i.clb, %i.chn
  br i1 %i.clc, label %.lr.ph52.i.i653, label %.preheader.i.i642, !llvm.loop !200

.lr.ph61.i.i647:                                  ; preds = %.lr.ph61.i.i647.prol.loopexit, %.lr.ph61.i.i647
  %.260.i.i648 = phi ptr [ %i.cmc, %.lr.ph61.i.i647 ], [ %.260.i.i648.unr, %.lr.ph61.i.i647.prol.loopexit ] ; 5 uses
  %.23059.i.i649 = phi ptr [ %i.cmd, %.lr.ph61.i.i647 ], [ %.23059.i.i649.unr, %.lr.ph61.i.i647.prol.loopexit ] ; 5 uses
  %.23358.i.i650 = phi i32 [ %i.cmf, %.lr.ph61.i.i647 ], [ %.23358.i.i650.unr, %.lr.ph61.i.i647.prol.loopexit ]
  %.23657.i.i651 = phi ptr [ %i.cme, %.lr.ph61.i.i647 ], [ %.23657.i.i651.unr, %.lr.ph61.i.i647.prol.loopexit ] ; 5 uses
  %i.cld = load float, ptr %.260.i.i648, align 4, !tbaa !59 ; 2 uses
  %i.cle = load float, ptr %.23059.i.i649, align 4, !tbaa !59 ; 2 uses
  %i.clf = fcmp fast olt float %i.cld, %i.cle
  %i.clg = select i1 %i.clf, float %i.cle, float %i.cld
  store float %i.clg, ptr %.23657.i.i651, align 4, !tbaa !59
  %i.clh = getelementptr inbounds nuw i8, ptr %.260.i.i648, i64 4
  %i.cli = getelementptr inbounds nuw i8, ptr %.23059.i.i649, i64 4
  %i.clj = getelementptr inbounds nuw i8, ptr %.23657.i.i651, i64 4
  %i.clk = load float, ptr %i.clh, align 4, !tbaa !59 ; 2 uses
  %i.cll = load float, ptr %i.cli, align 4, !tbaa !59 ; 2 uses
  %i.clm = fcmp fast olt float %i.clk, %i.cll
  %i.cln = select i1 %i.clm, float %i.cll, float %i.clk
  store float %i.cln, ptr %i.clj, align 4, !tbaa !59
  %i.clo = getelementptr inbounds nuw i8, ptr %.260.i.i648, i64 8
  %i.clp = getelementptr inbounds nuw i8, ptr %.23059.i.i649, i64 8
  %i.clq = getelementptr inbounds nuw i8, ptr %.23657.i.i651, i64 8
  %i.clr = load float, ptr %i.clo, align 4, !tbaa !59 ; 2 uses
  %i.cls = load float, ptr %i.clp, align 4, !tbaa !59 ; 2 uses
  %i.clt = fcmp fast olt float %i.clr, %i.cls
  %i.clu = select i1 %i.clt, float %i.cls, float %i.clr
  store float %i.clu, ptr %i.clq, align 4, !tbaa !59
  %i.clv = getelementptr inbounds nuw i8, ptr %.260.i.i648, i64 12
  %i.clw = getelementptr inbounds nuw i8, ptr %.23059.i.i649, i64 12
  %i.clx = getelementptr inbounds nuw i8, ptr %.23657.i.i651, i64 12
  %i.cly = load float, ptr %i.clv, align 4, !tbaa !59 ; 2 uses
  %i.clz = load float, ptr %i.clw, align 4, !tbaa !59 ; 2 uses
  %i.cma = fcmp fast olt float %i.cly, %i.clz
  %i.cmb = select i1 %i.cma, float %i.clz, float %i.cly
  store float %i.cmb, ptr %i.clx, align 4, !tbaa !59
  %i.cmc = getelementptr inbounds nuw i8, ptr %.260.i.i648, i64 16
  %i.cmd = getelementptr inbounds nuw i8, ptr %.23059.i.i649, i64 16
  %i.cme = getelementptr inbounds nuw i8, ptr %.23657.i.i651, i64 16
  %i.cmf = add nuw nsw i32 %.23358.i.i650, 4      ; 2 uses
  %exitcond.not.i.i652.3 = icmp eq i32 %i.cmf, %i.chn
  br i1 %exitcond.not.i.i652.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i647, !llvm.loop !201

bb.cw:                                            ; preds = %bb.cu
  %i.cmg = icmp eq i32 %4, 1
  br i1 %i.cmg, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.cmh = load float, ptr %1, align 4, !tbaa !59 ; 13 uses
  %i.cmi = icmp eq i32 %.sroa.speculated.i553, 4
  br i1 %i.cmi, label %.thread.i.i636, label %bb.cy

.thread.i.i636:                                   ; preds = %bb.cx
  %i.cmj = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.cmk = insertelement <4 x float> poison, float %i.cmh, i64 0
  %i.cml = shufflevector <4 x float> %i.cmk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cmm = icmp eq i32 %.sroa.speculated.i553, 8
  br i1 %i.cmm, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.cmn = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.db

bb.da:                                            ; preds = %bb.cy, %.thread.i.i636
end_hunk_3
begin_hunk_4_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %.13356.i.i559.prol = phi i32 [ %i.dcl, %.lr.ph59.i.i556.prol ], [ %.032.lcssa.i.i554, %.lr.ph59.i.i556.preheader ]
  %prol.iter7701 = phi i32 [ %prol.iter7701.next, %.lr.ph59.i.i556.prol ], [ 0, %.lr.ph59.i.i556.preheader ]
  %i.dcf = load float, ptr %.358.i.i557.prol, align 4, !tbaa !59
  %i.dcg = insertelement <4 x float> poison, float %i.dcf, i64 0
  %i.dch = shufflevector <4 x float> %i.dcg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dci = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dbl, <4 x float> nofpclass(nan inf) %i.dch)
  store <4 x float> %i.dci, ptr %.33157.i.i558.prol, align 1, !tbaa !60
  %i.dcj = getelementptr inbounds nuw i8, ptr %.358.i.i557.prol, i64 4 ; 2 uses
  %i.dck = getelementptr inbounds nuw i8, ptr %.33157.i.i558.prol, i64 16 ; 2 uses
  %i.dcl = add nuw nsw i32 %.13356.i.i559.prol, 1 ; 2 uses
  %prol.iter7701.next = add i32 %prol.iter7701, 1 ; 2 uses
  %prol.iter7701.cmp.not = icmp eq i32 %prol.iter7701.next, %xtraiter7699
  br i1 %prol.iter7701.cmp.not, label %.lr.ph59.i.i556.prol.loopexit, label %.lr.ph59.i.i556.prol, !llvm.loop !224

.lr.ph59.i.i556.prol.loopexit:                    ; preds = %.lr.ph59.i.i556.prol, %.lr.ph59.i.i556.preheader
  %.358.i.i557.unr = phi ptr [ %.2.lcssa.i69.i, %.lr.ph59.i.i556.preheader ], [ %i.dcj, %.lr.ph59.i.i556.prol ]
  %.33157.i.i558.unr = phi ptr [ %.230.lcssa.i.i555, %.lr.ph59.i.i556.preheader ], [ %i.dck, %.lr.ph59.i.i556.prol ]
  %.13356.i.i559.unr = phi i32 [ %.032.lcssa.i.i554, %.lr.ph59.i.i556.preheader ], [ %i.dcl, %.lr.ph59.i.i556.prol ]
  %i.dcm = sub nsw i32 %.032.lcssa.i.i554, %.sroa.speculated84.i
  %i.dcn = icmp ugt i32 %i.dcm, -4
  br i1 %i.dcn, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph59.i.i556

.lr.ph52.i70.i:                                   ; preds = %.lr.ph52.i70.i, %.lr.ph52.i70.i.preheader.new
  %.251.i.i561 = phi ptr [ %1, %.lr.ph52.i70.i.preheader.new ], [ %i.dde, %.lr.ph52.i70.i ] ; 5 uses
  %.23050.i.i562 = phi ptr [ %2, %.lr.ph52.i70.i.preheader.new ], [ %i.ddf, %.lr.ph52.i70.i ] ; 3 uses
  %niter7698 = phi i32 [ 0, %.lr.ph52.i70.i.preheader.new ], [ %niter7698.next.1, %.lr.ph52.i70.i ]
  %i.dco = load float, ptr %.251.i.i561, align 4, !tbaa !59
  %i.dcp = insertelement <4 x float> poison, float %i.dco, i64 0
  %i.dcq = getelementptr inbounds nuw i8, ptr %.251.i.i561, i64 4
  %i.dcr = load float, ptr %i.dcq, align 4, !tbaa !59
  %i.dcs = insertelement <4 x float> poison, float %i.dcr, i64 0
  %i.dct = shufflevector <4 x float> %i.dcp, <4 x float> %i.dcs, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.dcu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dbm, <8 x float> nofpclass(nan inf) %i.dct)
  store <8 x float> %i.dcu, ptr %.23050.i.i562, align 1, !tbaa !60
  %i.dcv = getelementptr inbounds nuw i8, ptr %.251.i.i561, i64 8
  %i.dcw = getelementptr inbounds nuw i8, ptr %.23050.i.i562, i64 32
  %i.dcx = load float, ptr %i.dcv, align 4, !tbaa !59
  %i.dcy = insertelement <4 x float> poison, float %i.dcx, i64 0
  %i.dcz = getelementptr inbounds nuw i8, ptr %.251.i.i561, i64 12
  %i.dda = load float, ptr %i.dcz, align 4, !tbaa !59
  %i.ddb = insertelement <4 x float> poison, float %i.dda, i64 0
  %i.ddc = shufflevector <4 x float> %i.dcy, <4 x float> %i.ddb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ddd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dbm, <8 x float> nofpclass(nan inf) %i.ddc)
  store <8 x float> %i.ddd, ptr %i.dcw, align 1, !tbaa !60
  %i.dde = getelementptr inbounds nuw i8, ptr %.251.i.i561, i64 16 ; 3 uses
  %i.ddf = getelementptr inbounds nuw i8, ptr %.23050.i.i562, i64 64 ; 3 uses
  %niter7698.next.1 = add nuw nsw i32 %niter7698, 2 ; 2 uses
  %niter7698.ncmp.1.not = icmp eq i32 %niter7698.next.1, %unroll_iter7697
  br i1 %niter7698.ncmp.1.not, label %.preheader.loopexit.i71.i.unr-lcssa, label %.lr.ph52.i70.i, !llvm.loop !225

.lr.ph59.i.i556:                                  ; preds = %.lr.ph59.i.i556.prol.loopexit, %.lr.ph59.i.i556
  %.358.i.i557 = phi ptr [ %i.dec, %.lr.ph59.i.i556 ], [ %.358.i.i557.unr, %.lr.ph59.i.i556.prol.loopexit ] ; 5 uses
  %.33157.i.i558 = phi ptr [ %i.ded, %.lr.ph59.i.i556 ], [ %.33157.i.i558.unr, %.lr.ph59.i.i556.prol.loopexit ] ; 5 uses
  %.13356.i.i559 = phi i32 [ %i.dee, %.lr.ph59.i.i556 ], [ %.13356.i.i559.unr, %.lr.ph59.i.i556.prol.loopexit ]
  %i.ddg = load float, ptr %.358.i.i557, align 4, !tbaa !59
  %i.ddh = insertelement <4 x float> poison, float %i.ddg, i64 0
  %i.ddi = shufflevector <4 x float> %i.ddh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dbl, <4 x float> nofpclass(nan inf) %i.ddi)
  store <4 x float> %i.ddj, ptr %.33157.i.i558, align 1, !tbaa !60
  %i.ddk = getelementptr inbounds nuw i8, ptr %.358.i.i557, i64 4
  %i.ddl = getelementptr inbounds nuw i8, ptr %.33157.i.i558, i64 16
  %i.ddm = load float, ptr %i.ddk, align 4, !tbaa !59
  %i.ddn = insertelement <4 x float> poison, float %i.ddm, i64 0
  %i.ddo = shufflevector <4 x float> %i.ddn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dbl, <4 x float> nofpclass(nan inf) %i.ddo)
  store <4 x float> %i.ddp, ptr %i.ddl, align 1, !tbaa !60
  %i.ddq = getelementptr inbounds nuw i8, ptr %.358.i.i557, i64 8
  %i.ddr = getelementptr inbounds nuw i8, ptr %.33157.i.i558, i64 32
  %i.dds = load float, ptr %i.ddq, align 4, !tbaa !59
  %i.ddt = insertelement <4 x float> poison, float %i.dds, i64 0
  %i.ddu = shufflevector <4 x float> %i.ddt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dbl, <4 x float> nofpclass(nan inf) %i.ddu)
  store <4 x float> %i.ddv, ptr %i.ddr, align 1, !tbaa !60
  %i.ddw = getelementptr inbounds nuw i8, ptr %.358.i.i557, i64 12
  %i.ddx = getelementptr inbounds nuw i8, ptr %.33157.i.i558, i64 48
  %i.ddy = load float, ptr %i.ddw, align 4, !tbaa !59
  %i.ddz = insertelement <4 x float> poison, float %i.ddy, i64 0
  %i.dea = shufflevector <4 x float> %i.ddz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.deb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dbl, <4 x float> nofpclass(nan inf) %i.dea)
  store <4 x float> %i.deb, ptr %i.ddx, align 1, !tbaa !60
  %i.dec = getelementptr inbounds nuw i8, ptr %.358.i.i557, i64 16
  %i.ded = getelementptr inbounds nuw i8, ptr %.33157.i.i558, i64 64
  %i.dee = add nuw nsw i32 %.13356.i.i559, 4      ; 2 uses
  %exitcond64.not.i.i560.3 = icmp eq i32 %i.dee, %.sroa.speculated84.i
  br i1 %exitcond64.not.i.i560.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph59.i.i556, !llvm.loop !226

bb.dr:                                            ; preds = %bb.a
  %.sroa.speculated84.i664 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 23 uses
  %.sroa.speculated.i665 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 8 uses
  %i.def = mul i32 %.sroa.speculated.i665, %.sroa.speculated84.i664 ; 35 uses
  %i.deg = icmp eq i32 %5, %6
  br i1 %i.deg, label %bb.ds, label %bb.eg

bb.ds:                                            ; preds = %bb.dr
  %i.deh = icmp eq i32 %3, %4
  br i1 %i.deh, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.dei = icmp sgt i32 %i.def, 7
  br i1 %i.dei, label %.lr.ph.i.i794.preheader, label %.preheader40.i.i773

.lr.ph.i.i794.preheader:                          ; preds = %bb.dt
  %i.dej = add nsw i32 %i.def, -8                 ; 2 uses
  %i.dek = lshr i32 %i.dej, 3
  %i.del = add nuw nsw i32 %i.dek, 1              ; 2 uses
  %xtraiter7679 = and i32 %i.del, 3               ; 3 uses
  %i.dem = icmp ult i32 %i.dej, 24
  br i1 %i.dem, label %.lr.ph.i.i794.epil.preheader, label %.lr.ph.i.i794.preheader.new

.lr.ph.i.i794.preheader.new:                      ; preds = %.lr.ph.i.i794.preheader
  %unroll_iter7686 = and i32 %i.del, 1073741820
  br label %.lr.ph.i.i794

.preheader40.loopexit.i.i799.unr-lcssa:           ; preds = %.lr.ph.i.i794
  %lcmp.mod7681.not = icmp eq i32 %xtraiter7679, 0
  br i1 %lcmp.mod7681.not, label %.preheader40.loopexit.i.i799, label %.lr.ph.i.i794.epil.preheader

.lr.ph.i.i794.epil.preheader:                     ; preds = %.preheader40.loopexit.i.i799.unr-lcssa, %.lr.ph.i.i794.preheader
  %.044.i.i795.epil.init = phi ptr [ %0, %.lr.ph.i.i794.preheader ], [ %i.dfr, %.preheader40.loopexit.i.i799.unr-lcssa ]
  %.02843.i.i796.epil.init = phi ptr [ %1, %.lr.ph.i.i794.preheader ], [ %i.dfs, %.preheader40.loopexit.i.i799.unr-lcssa ]
  %.03441.i.i798.epil.init = phi ptr [ %2, %.lr.ph.i.i794.preheader ], [ %i.dft, %.preheader40.loopexit.i.i799.unr-lcssa ]
  %lcmp.mod7685 = icmp ne i32 %xtraiter7679, 0
  tail call void @llvm.assume(i1 %lcmp.mod7685)
  br label %.lr.ph.i.i794.epil

.lr.ph.i.i794.epil:                               ; preds = %.lr.ph.i.i794.epil, %.lr.ph.i.i794.epil.preheader
  %.044.i.i795.epil = phi ptr [ %i.deq, %.lr.ph.i.i794.epil ], [ %.044.i.i795.epil.init, %.lr.ph.i.i794.epil.preheader ] ; 2 uses
  %.02843.i.i796.epil = phi ptr [ %i.der, %.lr.ph.i.i794.epil ], [ %.02843.i.i796.epil.init, %.lr.ph.i.i794.epil.preheader ] ; 2 uses
  %.03441.i.i798.epil = phi ptr [ %i.des, %.lr.ph.i.i794.epil ], [ %.03441.i.i798.epil.init, %.lr.ph.i.i794.epil.preheader ] ; 2 uses
  %epil.iter7680 = phi i32 [ %epil.iter7680.next, %.lr.ph.i.i794.epil ], [ 0, %.lr.ph.i.i794.epil.preheader ]
  %i.den = load <8 x float>, ptr %.044.i.i795.epil, align 1, !tbaa !60
  %i.deo = load <8 x float>, ptr %.02843.i.i796.epil, align 1, !tbaa !60
  %i.dep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.den, <8 x float> nofpclass(nan inf) %i.deo)
  store <8 x float> %i.dep, ptr %.03441.i.i798.epil, align 1, !tbaa !60
  %i.deq = getelementptr inbounds nuw i8, ptr %.044.i.i795.epil, i64 32 ; 2 uses
  %i.der = getelementptr inbounds nuw i8, ptr %.02843.i.i796.epil, i64 32 ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr %.03441.i.i798.epil, i64 32 ; 2 uses
  %epil.iter7680.next = add i32 %epil.iter7680, 1 ; 2 uses
  %epil.iter7680.cmp.not = icmp eq i32 %epil.iter7680.next, %xtraiter7679
  br i1 %epil.iter7680.cmp.not, label %.preheader40.loopexit.i.i799, label %.lr.ph.i.i794.epil, !llvm.loop !227

.preheader40.loopexit.i.i799:                     ; preds = %.lr.ph.i.i794.epil, %.preheader40.loopexit.i.i799.unr-lcssa
  %.lcssa6568 = phi ptr [ %i.dfr, %.preheader40.loopexit.i.i799.unr-lcssa ], [ %i.deq, %.lr.ph.i.i794.epil ]
  %.lcssa6567 = phi ptr [ %i.dfs, %.preheader40.loopexit.i.i799.unr-lcssa ], [ %i.der, %.lr.ph.i.i794.epil ]
  %.lcssa6566 = phi ptr [ %i.dft, %.preheader40.loopexit.i.i799.unr-lcssa ], [ %i.des, %.lr.ph.i.i794.epil ]
  %i.det = and i32 %i.def, 2147483640
  br label %.preheader40.i.i773

.preheader40.i.i773:                              ; preds = %.preheader40.loopexit.i.i799, %bb.dt
  %.034.lcssa.i.i774 = phi ptr [ %2, %bb.dt ], [ %.lcssa6566, %.preheader40.loopexit.i.i799 ] ; 2 uses
  %.031.lcssa.i.i775 = phi i32 [ 0, %bb.dt ], [ %i.det, %.preheader40.loopexit.i.i799 ] ; 3 uses
  %.028.lcssa.i.i776 = phi ptr [ %1, %bb.dt ], [ %.lcssa6567, %.preheader40.loopexit.i.i799 ] ; 2 uses
  %.0.lcssa.i.i777 = phi ptr [ %0, %bb.dt ], [ %.lcssa6568, %.preheader40.loopexit.i.i799 ] ; 2 uses
  %i.deu = or disjoint i32 %.031.lcssa.i.i775, 3
  %i.dev = icmp slt i32 %i.deu, %i.def
  br i1 %i.dev, label %.lr.ph52.i.i789, label %.preheader.i.i778

.lr.ph.i.i794:                                    ; preds = %.lr.ph.i.i794, %.lr.ph.i.i794.preheader.new
  %.044.i.i795 = phi ptr [ %0, %.lr.ph.i.i794.preheader.new ], [ %i.dfr, %.lr.ph.i.i794 ] ; 5 uses
  %.02843.i.i796 = phi ptr [ %1, %.lr.ph.i.i794.preheader.new ], [ %i.dfs, %.lr.ph.i.i794 ] ; 5 uses
  %.03441.i.i798 = phi ptr [ %2, %.lr.ph.i.i794.preheader.new ], [ %i.dft, %.lr.ph.i.i794 ] ; 5 uses
  %niter7687 = phi i32 [ 0, %.lr.ph.i.i794.preheader.new ], [ %niter7687.next.3, %.lr.ph.i.i794 ]
  %i.dew = load <8 x float>, ptr %.044.i.i795, align 1, !tbaa !60
  %i.dex = load <8 x float>, ptr %.02843.i.i796, align 1, !tbaa !60
  %i.dey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dew, <8 x float> nofpclass(nan inf) %i.dex)
  store <8 x float> %i.dey, ptr %.03441.i.i798, align 1, !tbaa !60
  %i.dez = getelementptr inbounds nuw i8, ptr %.044.i.i795, i64 32
  %i.dfa = getelementptr inbounds nuw i8, ptr %.02843.i.i796, i64 32
  %i.dfb = getelementptr inbounds nuw i8, ptr %.03441.i.i798, i64 32
  %i.dfc = load <8 x float>, ptr %i.dez, align 1, !tbaa !60
  %i.dfd = load <8 x float>, ptr %i.dfa, align 1, !tbaa !60
  %i.dfe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dfc, <8 x float> nofpclass(nan inf) %i.dfd)
  store <8 x float> %i.dfe, ptr %i.dfb, align 1, !tbaa !60
  %i.dff = getelementptr inbounds nuw i8, ptr %.044.i.i795, i64 64
  %i.dfg = getelementptr inbounds nuw i8, ptr %.02843.i.i796, i64 64
  %i.dfh = getelementptr inbounds nuw i8, ptr %.03441.i.i798, i64 64
  %i.dfi = load <8 x float>, ptr %i.dff, align 1, !tbaa !60
  %i.dfj = load <8 x float>, ptr %i.dfg, align 1, !tbaa !60
  %i.dfk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dfi, <8 x float> nofpclass(nan inf) %i.dfj)
  store <8 x float> %i.dfk, ptr %i.dfh, align 1, !tbaa !60
  %i.dfl = getelementptr inbounds nuw i8, ptr %.044.i.i795, i64 96
  %i.dfm = getelementptr inbounds nuw i8, ptr %.02843.i.i796, i64 96
  %i.dfn = getelementptr inbounds nuw i8, ptr %.03441.i.i798, i64 96
  %i.dfo = load <8 x float>, ptr %i.dfl, align 1, !tbaa !60
  %i.dfp = load <8 x float>, ptr %i.dfm, align 1, !tbaa !60
  %i.dfq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dfo, <8 x float> nofpclass(nan inf) %i.dfp)
  store <8 x float> %i.dfq, ptr %i.dfn, align 1, !tbaa !60
  %i.dfr = getelementptr inbounds nuw i8, ptr %.044.i.i795, i64 128 ; 3 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %.02843.i.i796, i64 128 ; 3 uses
  %i.dft = getelementptr inbounds nuw i8, ptr %.03441.i.i798, i64 128 ; 3 uses
  %niter7687.next.3 = add i32 %niter7687, 4       ; 2 uses
  %niter7687.ncmp.3.not = icmp eq i32 %niter7687.next.3, %unroll_iter7686
  br i1 %niter7687.ncmp.3.not, label %.preheader40.loopexit.i.i799.unr-lcssa, label %.lr.ph.i.i794, !llvm.loop !228

.preheader.i.i778:                                ; preds = %.lr.ph52.i.i789, %.preheader40.i.i773
  %.135.lcssa.i.i779 = phi ptr [ %.034.lcssa.i.i774, %.preheader40.i.i773 ], [ %i.dhr, %.lr.ph52.i.i789 ] ; 7 uses
  %.132.lcssa.i.i780 = phi i32 [ %.031.lcssa.i.i775, %.preheader40.i.i773 ], [ %i.dhs, %.lr.ph52.i.i789 ] ; 6 uses
  %.129.lcssa.i.i781 = phi ptr [ %.028.lcssa.i.i776, %.preheader40.i.i773 ], [ %i.dhq, %.lr.ph52.i.i789 ] ; 7 uses
  %.1.lcssa.i.i782 = phi ptr [ %.0.lcssa.i.i777, %.preheader40.i.i773 ], [ %i.dhp, %.lr.ph52.i.i789 ] ; 7 uses
  %.1.lcssa.i.i7825653 = ptrtoaddr ptr %.1.lcssa.i.i782 to i64
  %.135.lcssa.i.i7795654 = ptrtoaddr ptr %.129.lcssa.i.i781 to i64
  %.129.lcssa.i.i7815655 = ptrtoaddr ptr %.135.lcssa.i.i779 to i64 ; 2 uses
  %i.dfu = icmp slt i32 %.132.lcssa.i.i780, %i.def
  br i1 %i.dfu, label %iter.check5678, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check5678:                                   ; preds = %.preheader.i.i778
  %i.dfv = xor i32 %.132.lcssa.i.i780, -1
  %i.dfw = add i32 %i.def, %i.dfv                 ; 3 uses
  %i.dfx = zext i32 %i.dfw to i64
  %i.dfy = add nuw nsw i64 %i.dfx, 1              ; 5 uses
  %min.iters.check5657 = icmp ult i32 %i.dfw, 3
  br i1 %min.iters.check5657, label %.lr.ph61.i.i783.preheader, label %vector.memcheck5658

vector.memcheck5658:                              ; preds = %iter.check5678
  %i.dfz = sub i64 %.135.lcssa.i.i7795654, %.129.lcssa.i.i7815655
  %diff.check5659 = icmp ugt i64 %i.dfz, -64
  %i.dga = sub i64 %.1.lcssa.i.i7825653, %.129.lcssa.i.i7815655
  %diff.check5660 = icmp ugt i64 %i.dga, -64
  %conflict.rdx5661 = or i1 %diff.check5659, %diff.check5660
  br i1 %conflict.rdx5661, label %.lr.ph61.i.i783.preheader, label %vector.main.loop.iter.check5662

vector.main.loop.iter.check5662:                  ; preds = %vector.memcheck5658
  %min.iters.check5663 = icmp ult i32 %i.dfw, 15
  br i1 %min.iters.check5663, label %vec.epilog.ph5682, label %vector.ph5664

vector.ph5664:                                    ; preds = %vector.main.loop.iter.check5662
  %i.dgb = and i64 %i.dfy, 12
  %n.vec5665 = and i64 %i.dfy, 8589934576         ; 5 uses
  %i.dgc = shl nuw nsw i64 %n.vec5665, 2          ; 3 uses
  %i.dgd = getelementptr i8, ptr %.1.lcssa.i.i782, i64 %i.dgc
  %i.dge = getelementptr i8, ptr %.129.lcssa.i.i781, i64 %i.dgc
  %i.dgf = trunc i64 %n.vec5665 to i32
  %i.dgg = add i32 %.132.lcssa.i.i780, %i.dgf
  %i.dgh = getelementptr i8, ptr %.135.lcssa.i.i779, i64 %i.dgc
  br label %vector.body5666

vector.body5666:                                  ; preds = %vector.ph5664, %vector.body5666
  %index5667 = phi i64 [ 0, %vector.ph5664 ], [ %index.next5675, %vector.body5666 ] ; 2 uses
  %i.dgi = shl i64 %index5667, 2                  ; 3 uses
  %next.gep5668 = getelementptr i8, ptr %.1.lcssa.i.i782, i64 %i.dgi ; 2 uses
  %next.gep5669 = getelementptr i8, ptr %.129.lcssa.i.i781, i64 %i.dgi ; 2 uses
  %next.gep5670 = getelementptr i8, ptr %.135.lcssa.i.i779, i64 %i.dgi ; 2 uses
  %i.dgj = getelementptr i8, ptr %next.gep5669, i64 32
  %wide.load5671 = load <8 x float>, ptr %next.gep5669, align 4, !tbaa !59 ; 2 uses
  %wide.load5672 = load <8 x float>, ptr %i.dgj, align 4, !tbaa !59 ; 2 uses
  %i.dgk = getelementptr i8, ptr %next.gep5668, i64 32
  %wide.load5673 = load <8 x float>, ptr %next.gep5668, align 4, !tbaa !59 ; 2 uses
  %wide.load5674 = load <8 x float>, ptr %i.dgk, align 4, !tbaa !59 ; 2 uses
  %i.dgl = fcmp fast olt <8 x float> %wide.load5671, %wide.load5673
  %i.dgm = fcmp fast olt <8 x float> %wide.load5672, %wide.load5674
  %i.dgn = select <8 x i1> %i.dgl, <8 x float> %wide.load5671, <8 x float> %wide.load5673
  %i.dgo = select <8 x i1> %i.dgm, <8 x float> %wide.load5672, <8 x float> %wide.load5674
  %i.dgp = getelementptr i8, ptr %next.gep5670, i64 32
  store <8 x float> %i.dgn, ptr %next.gep5670, align 4, !tbaa !59
  store <8 x float> %i.dgo, ptr %i.dgp, align 4, !tbaa !59
  %index.next5675 = add nuw i64 %index5667, 16    ; 2 uses
  %i.dgq = icmp eq i64 %index.next5675, %n.vec5665
  br i1 %i.dgq, label %middle.block5676, label %vector.body5666, !llvm.loop !229

middle.block5676:                                 ; preds = %vector.body5666
  %cmp.n5677 = icmp eq i64 %i.dfy, %n.vec5665
  br i1 %cmp.n5677, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check5679

vec.epilog.iter.check5679:                        ; preds = %middle.block5676
  %min.epilog.iters.check5681 = icmp eq i64 %i.dgb, 0
  br i1 %min.epilog.iters.check5681, label %.lr.ph61.i.i783.preheader, label %vec.epilog.ph5682, !prof !64

vec.epilog.ph5682:                                ; preds = %vector.main.loop.iter.check5662, %vec.epilog.iter.check5679
  %vec.epilog.resume.val5683 = phi i64 [ %n.vec5665, %vec.epilog.iter.check5679 ], [ 0, %vector.main.loop.iter.check5662 ]
  %n.vec5684 = and i64 %i.dfy, 8589934588         ; 4 uses
  %i.dgr = shl nuw nsw i64 %n.vec5684, 2          ; 3 uses
  %i.dgs = getelementptr i8, ptr %.1.lcssa.i.i782, i64 %i.dgr
  %i.dgt = getelementptr i8, ptr %.129.lcssa.i.i781, i64 %i.dgr
  %i.dgu = trunc i64 %n.vec5684 to i32
  %i.dgv = add i32 %.132.lcssa.i.i780, %i.dgu
  %i.dgw = getelementptr i8, ptr %.135.lcssa.i.i779, i64 %i.dgr
  br label %vec.epilog.vector.body5685

vec.epilog.vector.body5685:                       ; preds = %vec.epilog.vector.body5685, %vec.epilog.ph5682
  %index5686 = phi i64 [ %vec.epilog.resume.val5683, %vec.epilog.ph5682 ], [ %index.next5692, %vec.epilog.vector.body5685 ] ; 2 uses
  %i.dgx = shl i64 %index5686, 2                  ; 3 uses
  %next.gep5687 = getelementptr i8, ptr %.1.lcssa.i.i782, i64 %i.dgx
  %next.gep5688 = getelementptr i8, ptr %.129.lcssa.i.i781, i64 %i.dgx
  %next.gep5689 = getelementptr i8, ptr %.135.lcssa.i.i779, i64 %i.dgx
  %wide.load5690 = load <4 x float>, ptr %next.gep5688, align 4, !tbaa !59 ; 2 uses
  %wide.load5691 = load <4 x float>, ptr %next.gep5687, align 4, !tbaa !59 ; 2 uses
  %i.dgy = fcmp fast olt <4 x float> %wide.load5690, %wide.load5691
  %i.dgz = select <4 x i1> %i.dgy, <4 x float> %wide.load5690, <4 x float> %wide.load5691
  store <4 x float> %i.dgz, ptr %next.gep5689, align 4, !tbaa !59
  %index.next5692 = add nuw i64 %index5686, 4     ; 2 uses
  %i.dha = icmp eq i64 %index.next5692, %n.vec5684
  br i1 %i.dha, label %vec.epilog.middle.block5693, label %vec.epilog.vector.body5685, !llvm.loop !230

vec.epilog.middle.block5693:                      ; preds = %vec.epilog.vector.body5685
  %cmp.n5694 = icmp eq i64 %i.dfy, %n.vec5684
  br i1 %cmp.n5694, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i783.preheader

.lr.ph61.i.i783.preheader:                        ; preds = %iter.check5678, %vector.memcheck5658, %vec.epilog.iter.check5679, %vec.epilog.middle.block5693
  %.260.i.i784.ph = phi ptr [ %.1.lcssa.i.i782, %iter.check5678 ], [ %.1.lcssa.i.i782, %vector.memcheck5658 ], [ %i.dgd, %vec.epilog.iter.check5679 ], [ %i.dgs, %vec.epilog.middle.block5693 ] ; 2 uses
  %.23059.i.i785.ph = phi ptr [ %.129.lcssa.i.i781, %iter.check5678 ], [ %.129.lcssa.i.i781, %vector.memcheck5658 ], [ %i.dge, %vec.epilog.iter.check5679 ], [ %i.dgt, %vec.epilog.middle.block5693 ] ; 2 uses
  %.23358.i.i786.ph = phi i32 [ %.132.lcssa.i.i780, %iter.check5678 ], [ %.132.lcssa.i.i780, %vector.memcheck5658 ], [ %i.dgg, %vec.epilog.iter.check5679 ], [ %i.dgv, %vec.epilog.middle.block5693 ] ; 4 uses
  %.23657.i.i787.ph = phi ptr [ %.135.lcssa.i.i779, %iter.check5678 ], [ %.135.lcssa.i.i779, %vector.memcheck5658 ], [ %i.dgh, %vec.epilog.iter.check5679 ], [ %i.dgw, %vec.epilog.middle.block5693 ] ; 2 uses
  %i.dhb = sub i32 %i.def, %.23358.i.i786.ph
  %xtraiter7688 = and i32 %i.dhb, 3               ; 2 uses
  %lcmp.mod7689.not = icmp eq i32 %xtraiter7688, 0
  br i1 %lcmp.mod7689.not, label %.lr.ph61.i.i783.prol.loopexit, label %.lr.ph61.i.i783.prol

.lr.ph61.i.i783.prol:                             ; preds = %.lr.ph61.i.i783.preheader, %.lr.ph61.i.i783.prol
  %.260.i.i784.prol = phi ptr [ %i.dhg, %.lr.ph61.i.i783.prol ], [ %.260.i.i784.ph, %.lr.ph61.i.i783.preheader ] ; 2 uses
  %.23059.i.i785.prol = phi ptr [ %i.dhh, %.lr.ph61.i.i783.prol ], [ %.23059.i.i785.ph, %.lr.ph61.i.i783.preheader ] ; 2 uses
  %.23358.i.i786.prol = phi i32 [ %i.dhj, %.lr.ph61.i.i783.prol ], [ %.23358.i.i786.ph, %.lr.ph61.i.i783.preheader ]
  %.23657.i.i787.prol = phi ptr [ %i.dhi, %.lr.ph61.i.i783.prol ], [ %.23657.i.i787.ph, %.lr.ph61.i.i783.preheader ] ; 2 uses
  %prol.iter7690 = phi i32 [ %prol.iter7690.next, %.lr.ph61.i.i783.prol ], [ 0, %.lr.ph61.i.i783.preheader ]
  %i.dhc = load float, ptr %.23059.i.i785.prol, align 4, !tbaa !59 ; 2 uses
  %i.dhd = load float, ptr %.260.i.i784.prol, align 4, !tbaa !59 ; 2 uses
  %i.dhe = fcmp fast olt float %i.dhc, %i.dhd
  %i.dhf = select i1 %i.dhe, float %i.dhc, float %i.dhd
  store float %i.dhf, ptr %.23657.i.i787.prol, align 4, !tbaa !59
  %i.dhg = getelementptr inbounds nuw i8, ptr %.260.i.i784.prol, i64 4 ; 2 uses
  %i.dhh = getelementptr inbounds nuw i8, ptr %.23059.i.i785.prol, i64 4 ; 2 uses
  %i.dhi = getelementptr inbounds nuw i8, ptr %.23657.i.i787.prol, i64 4 ; 2 uses
  %i.dhj = add nuw nsw i32 %.23358.i.i786.prol, 1 ; 2 uses
  %prol.iter7690.next = add i32 %prol.iter7690, 1 ; 2 uses
  %prol.iter7690.cmp.not = icmp eq i32 %prol.iter7690.next, %xtraiter7688
  br i1 %prol.iter7690.cmp.not, label %.lr.ph61.i.i783.prol.loopexit, label %.lr.ph61.i.i783.prol, !llvm.loop !231

.lr.ph61.i.i783.prol.loopexit:                    ; preds = %.lr.ph61.i.i783.prol, %.lr.ph61.i.i783.preheader
  %.260.i.i784.unr = phi ptr [ %.260.i.i784.ph, %.lr.ph61.i.i783.preheader ], [ %i.dhg, %.lr.ph61.i.i783.prol ]
  %.23059.i.i785.unr = phi ptr [ %.23059.i.i785.ph, %.lr.ph61.i.i783.preheader ], [ %i.dhh, %.lr.ph61.i.i783.prol ]
  %.23358.i.i786.unr = phi i32 [ %.23358.i.i786.ph, %.lr.ph61.i.i783.preheader ], [ %i.dhj, %.lr.ph61.i.i783.prol ]
  %.23657.i.i787.unr = phi ptr [ %.23657.i.i787.ph, %.lr.ph61.i.i783.preheader ], [ %i.dhi, %.lr.ph61.i.i783.prol ]
  %i.dhk = sub i32 %.23358.i.i786.ph, %i.def
  %i.dhl = icmp ugt i32 %i.dhk, -4
  br i1 %i.dhl, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i783

.lr.ph52.i.i789:                                  ; preds = %.preheader40.i.i773, %.lr.ph52.i.i789
  %.151.i.i790 = phi ptr [ %i.dhp, %.lr.ph52.i.i789 ], [ %.0.lcssa.i.i777, %.preheader40.i.i773 ] ; 2 uses
  %.12950.i.i791 = phi ptr [ %i.dhq, %.lr.ph52.i.i789 ], [ %.028.lcssa.i.i776, %.preheader40.i.i773 ] ; 2 uses
  %.13249.i.i792 = phi i32 [ %i.dhs, %.lr.ph52.i.i789 ], [ %.031.lcssa.i.i775, %.preheader40.i.i773 ]
  %.13548.i.i793 = phi ptr [ %i.dhr, %.lr.ph52.i.i789 ], [ %.034.lcssa.i.i774, %.preheader40.i.i773 ] ; 2 uses
  %i.dhm = load <4 x float>, ptr %.151.i.i790, align 1, !tbaa !60
  %i.dhn = load <4 x float>, ptr %.12950.i.i791, align 1, !tbaa !60
  %i.dho = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dhm, <4 x float> nofpclass(nan inf) %i.dhn)
  store <4 x float> %i.dho, ptr %.13548.i.i793, align 1, !tbaa !60
  %i.dhp = getelementptr inbounds nuw i8, ptr %.151.i.i790, i64 16 ; 2 uses
  %i.dhq = getelementptr inbounds nuw i8, ptr %.12950.i.i791, i64 16 ; 2 uses
  %i.dhr = getelementptr inbounds nuw i8, ptr %.13548.i.i793, i64 16 ; 2 uses
  %i.dhs = add nuw nsw i32 %.13249.i.i792, 4      ; 3 uses
  %i.dht = or disjoint i32 %i.dhs, 3
  %i.dhu = icmp slt i32 %i.dht, %i.def
  br i1 %i.dhu, label %.lr.ph52.i.i789, label %.preheader.i.i778, !llvm.loop !232

.lr.ph61.i.i783:                                  ; preds = %.lr.ph61.i.i783.prol.loopexit, %.lr.ph61.i.i783
  %.260.i.i784 = phi ptr [ %i.diu, %.lr.ph61.i.i783 ], [ %.260.i.i784.unr, %.lr.ph61.i.i783.prol.loopexit ] ; 5 uses
  %.23059.i.i785 = phi ptr [ %i.div, %.lr.ph61.i.i783 ], [ %.23059.i.i785.unr, %.lr.ph61.i.i783.prol.loopexit ] ; 5 uses
  %.23358.i.i786 = phi i32 [ %i.dix, %.lr.ph61.i.i783 ], [ %.23358.i.i786.unr, %.lr.ph61.i.i783.prol.loopexit ]
  %.23657.i.i787 = phi ptr [ %i.diw, %.lr.ph61.i.i783 ], [ %.23657.i.i787.unr, %.lr.ph61.i.i783.prol.loopexit ] ; 5 uses
  %i.dhv = load float, ptr %.23059.i.i785, align 4, !tbaa !59 ; 2 uses
  %i.dhw = load float, ptr %.260.i.i784, align 4, !tbaa !59 ; 2 uses
  %i.dhx = fcmp fast olt float %i.dhv, %i.dhw
  %i.dhy = select i1 %i.dhx, float %i.dhv, float %i.dhw
  store float %i.dhy, ptr %.23657.i.i787, align 4, !tbaa !59
  %i.dhz = getelementptr inbounds nuw i8, ptr %.260.i.i784, i64 4
  %i.dia = getelementptr inbounds nuw i8, ptr %.23059.i.i785, i64 4
  %i.dib = getelementptr inbounds nuw i8, ptr %.23657.i.i787, i64 4
  %i.dic = load float, ptr %i.dia, align 4, !tbaa !59 ; 2 uses
  %i.did = load float, ptr %i.dhz, align 4, !tbaa !59 ; 2 uses
  %i.die = fcmp fast olt float %i.dic, %i.did
  %i.dif = select i1 %i.die, float %i.dic, float %i.did
  store float %i.dif, ptr %i.dib, align 4, !tbaa !59
  %i.dig = getelementptr inbounds nuw i8, ptr %.260.i.i784, i64 8
  %i.dih = getelementptr inbounds nuw i8, ptr %.23059.i.i785, i64 8
  %i.dii = getelementptr inbounds nuw i8, ptr %.23657.i.i787, i64 8
  %i.dij = load float, ptr %i.dih, align 4, !tbaa !59 ; 2 uses
  %i.dik = load float, ptr %i.dig, align 4, !tbaa !59 ; 2 uses
  %i.dil = fcmp fast olt float %i.dij, %i.dik
  %i.dim = select i1 %i.dil, float %i.dij, float %i.dik
  store float %i.dim, ptr %i.dii, align 4, !tbaa !59
  %i.din = getelementptr inbounds nuw i8, ptr %.260.i.i784, i64 12
  %i.dio = getelementptr inbounds nuw i8, ptr %.23059.i.i785, i64 12
  %i.dip = getelementptr inbounds nuw i8, ptr %.23657.i.i787, i64 12
  %i.diq = load float, ptr %i.dio, align 4, !tbaa !59 ; 2 uses
  %i.dir = load float, ptr %i.din, align 4, !tbaa !59 ; 2 uses
  %i.dis = fcmp fast olt float %i.diq, %i.dir
  %i.dit = select i1 %i.dis, float %i.diq, float %i.dir
  store float %i.dit, ptr %i.dip, align 4, !tbaa !59
  %i.diu = getelementptr inbounds nuw i8, ptr %.260.i.i784, i64 16
  %i.div = getelementptr inbounds nuw i8, ptr %.23059.i.i785, i64 16
  %i.diw = getelementptr inbounds nuw i8, ptr %.23657.i.i787, i64 16
  %i.dix = add nuw nsw i32 %.23358.i.i786, 4      ; 2 uses
  %exitcond.not.i.i788.3 = icmp eq i32 %i.dix, %i.def
  br i1 %exitcond.not.i.i788.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i783, !llvm.loop !233

bb.du:                                            ; preds = %bb.ds
  %i.diy = icmp eq i32 %4, 1
  br i1 %i.diy, label %bb.dv, label %bb.ea

bb.dv:                                            ; preds = %bb.du
  %i.diz = load float, ptr %1, align 4, !tbaa !59 ; 13 uses
  %i.dja = icmp eq i32 %.sroa.speculated.i665, 4
  br i1 %i.dja, label %.thread.i.i772, label %bb.dw

.thread.i.i772:                                   ; preds = %bb.dv
  %i.djb = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.djc = insertelement <4 x float> poison, float %i.diz, i64 0
  %i.djd = shufflevector <4 x float> %i.djc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dje = icmp eq i32 %.sroa.speculated.i665, 8
  br i1 %i.dje, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.djf = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw, %.thread.i.i772
end_hunk_4
begin_hunk_5_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.fow = fadd fast <4 x float> %i.fov, %i.foh
  %i.fox = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fog, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fow)
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fp, %.lr.ph256.i.i
  %.2255.i.i = phi ptr [ %1, %.lr.ph256.i.i ], [ %i.fqc, %bb.fp ] ; 3 uses
  %.230254.i.i = phi ptr [ %2, %.lr.ph256.i.i ], [ %i.fqd, %bb.fp ] ; 2 uses
  %.032253.i.i = phi i32 [ 0, %.lr.ph256.i.i ], [ %i.fqe, %bb.fp ]
  %i.foy = load float, ptr %.2255.i.i, align 4, !tbaa !59
  %i.foz = insertelement <4 x float> poison, float %i.foy, i64 0
  %i.fpa = getelementptr inbounds nuw i8, ptr %.2255.i.i, i64 4
  %i.fpb = load float, ptr %i.fpa, align 4, !tbaa !59
  %i.fpc = insertelement <4 x float> poison, float %i.fpb, i64 0
  %i.fpd = shufflevector <4 x float> %i.foz, <4 x float> %i.fpc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.fpe = fmul fast <8 x float> %i.fpd, %i.fnr
  %i.fpf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fpe, <8 x float> splat (float f0x42B0C0A5))
  %i.fpg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fpf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fph = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fpg, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fpi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fph, i32 1) ; 2 uses
  %i.fpj = fcmp fast ogt <8 x float> %i.fpi, %i.fph
  %i.fpk = select <8 x i1> %i.fpj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fpl = fsub fast <8 x float> %i.fpi, %i.fpk   ; 2 uses
  %i.fpm = fneg fast <8 x float> %i.fpl           ; 2 uses
  %i.fpn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fpm, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fpg)
  %i.fpo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fpm, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fpn) ; 8 uses
  %i.fpp = fmul fast <8 x float> %i.fpo, %i.fpo
  %i.fpq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fpo, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fpr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fpq, <8 x float> nofpclass(nan inf) %i.fpo, <8 x float> splat (float f0x3C088908))
  %i.fps = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fpr, <8 x float> nofpclass(nan inf) %i.fpo, <8 x float> splat (float f0x3D2AA9C1))
  %i.fpt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fps, <8 x float> nofpclass(nan inf) %i.fpo, <8 x float> splat (float f0x3E2AAAAA))
  %i.fpu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fpt, <8 x float> nofpclass(nan inf) %i.fpo, <8 x float> splat (float 5.000000e-01))
  %i.fpv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fpu, <8 x float> nofpclass(nan inf) %i.fpp, <8 x float> nofpclass(nan inf) %i.fpo)
  %i.fpw = fadd fast <8 x float> %i.fpv, splat (float 1.000000e+00)
  %i.fpx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fpl)
  %i.fpy = shl <8 x i32> %i.fpx, splat (i32 23)
  %i.fpz = add <8 x i32> %i.fpy, splat (i32 1065353216)
  %i.fqa = bitcast <8 x i32> %i.fpz to <8 x float>
  %i.fqb = fmul fast <8 x float> %i.fpw, %i.fqa
  store <8 x float> %i.fqb, ptr %.230254.i.i, align 1, !tbaa !60
  %i.fqc = getelementptr inbounds nuw i8, ptr %.2255.i.i, i64 8 ; 2 uses
  %i.fqd = getelementptr inbounds nuw i8, ptr %.230254.i.i, i64 32 ; 2 uses
  %i.fqe = add nuw nsw i32 %.032253.i.i, 2        ; 2 uses
  %i.fqf = or disjoint i32 %i.fqe, 1
  %i.fqg = icmp slt i32 %i.fqf, %.sroa.speculated100.i
  br i1 %i.fqg, label %bb.fp, label %.preheader.loopexit.i85.i, !llvm.loop !280

bb.fq:                                            ; preds = %bb.fq, %.lr.ph263.i.i
  %.3262.i.i = phi ptr [ %.2.lcssa.i84.i, %.lr.ph263.i.i ], [ %i.frk, %bb.fq ] ; 2 uses
  %.331261.i.i = phi ptr [ %.230.lcssa.i.i802, %.lr.ph263.i.i ], [ %i.frl, %bb.fq ] ; 2 uses
  %.133260.i.i = phi i32 [ %.032.lcssa.i.i801, %.lr.ph263.i.i ], [ %i.frm, %bb.fq ]
  %i.fqh = load float, ptr %.3262.i.i, align 4, !tbaa !59
  %i.fqi = insertelement <4 x float> poison, float %i.fqh, i64 0
  %i.fqj = shufflevector <4 x float> %i.fqi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fqk = fmul fast <4 x float> %i.fqj, %i.fox
  %i.fql = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fqk, <4 x float> splat (float f0x42B0C0A5))
  %i.fqm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fql, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fqn = fmul fast <4 x float> %i.fqm, splat (float f0x3FB8AA3B)
  %i.fqo = fadd fast <4 x float> %i.fqn, splat (float 5.000000e-01) ; 2 uses
  %i.fqp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fqo)
  %i.fqq = sitofp fast <4 x i32> %i.fqp to <4 x float> ; 2 uses
  %i.fqr = fcmp fast olt <4 x float> %i.fqo, %i.fqq
  %i.fqs = select <4 x i1> %i.fqr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fqt = fsub fast <4 x float> %i.fqq, %i.fqs   ; 2 uses
  %i.fqu = fneg fast <4 x float> %i.fqt           ; 2 uses
  %i.fqv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fqu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fqm)
  %i.fqw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fqu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fqv) ; 8 uses
  %i.fqx = fmul fast <4 x float> %i.fqw, %i.fqw
  %i.fqy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fqw, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fqz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fqy, <4 x float> nofpclass(nan inf) %i.fqw, <4 x float> splat (float f0x3C088908))
  %i.fra = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fqz, <4 x float> nofpclass(nan inf) %i.fqw, <4 x float> splat (float f0x3D2AA9C1))
  %i.frb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fra, <4 x float> nofpclass(nan inf) %i.fqw, <4 x float> splat (float f0x3E2AAAAA))
  %i.frc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.frb, <4 x float> nofpclass(nan inf) %i.fqw, <4 x float> splat (float 5.000000e-01))
  %i.frd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.frc, <4 x float> nofpclass(nan inf) %i.fqx, <4 x float> nofpclass(nan inf) %i.fqw)
  %i.fre = fadd fast <4 x float> %i.frd, splat (float 1.000000e+00)
  %i.frf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fqt)
  %i.frg = shl <4 x i32> %i.frf, splat (i32 23)
  %i.frh = add <4 x i32> %i.frg, splat (i32 1065353216)
  %i.fri = bitcast <4 x i32> %i.frh to <4 x float>
  %i.frj = fmul fast <4 x float> %i.fre, %i.fri
  store <4 x float> %i.frj, ptr %.331261.i.i, align 1, !tbaa !60
  %i.frk = getelementptr inbounds nuw i8, ptr %.3262.i.i, i64 4
  %i.frl = getelementptr inbounds nuw i8, ptr %.331261.i.i, i64 16
  %i.frm = add nuw nsw i32 %.133260.i.i, 1        ; 2 uses
  %exitcond268.not.i.i = icmp eq i32 %i.frm, %.sroa.speculated100.i
  br i1 %exitcond268.not.i.i, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %bb.fq, !llvm.loop !281

bb.fr:                                            ; preds = %bb.a
  %.sroa.speculated83.i835 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 23 uses
  %.sroa.speculated.i836 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 8 uses
  %i.frn = mul i32 %.sroa.speculated.i836, %.sroa.speculated83.i835 ; 35 uses
  %i.fro = icmp eq i32 %5, %6
  br i1 %i.fro, label %bb.fs, label %bb.gg

bb.fs:                                            ; preds = %bb.fr
  %i.frp = icmp eq i32 %3, %4
  br i1 %i.frp, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.frq = icmp sgt i32 %i.frn, 7
  br i1 %i.frq, label %.lr.ph.i.i963.preheader, label %.preheader40.i.i942

.lr.ph.i.i963.preheader:                          ; preds = %bb.ft
  %i.frr = add nsw i32 %i.frn, -8                 ; 2 uses
  %i.frs = lshr i32 %i.frr, 3
  %i.frt = add nuw nsw i32 %i.frs, 1              ; 2 uses
  %xtraiter7592 = and i32 %i.frt, 3               ; 3 uses
  %i.fru = icmp ult i32 %i.frr, 24
  br i1 %i.fru, label %.lr.ph.i.i963.epil.preheader, label %.lr.ph.i.i963.preheader.new

.lr.ph.i.i963.preheader.new:                      ; preds = %.lr.ph.i.i963.preheader
  %unroll_iter7599 = and i32 %i.frt, 1073741820
  br label %.lr.ph.i.i963

.preheader40.loopexit.i.i968.unr-lcssa:           ; preds = %.lr.ph.i.i963
  %lcmp.mod7594.not = icmp eq i32 %xtraiter7592, 0
  br i1 %lcmp.mod7594.not, label %.preheader40.loopexit.i.i968, label %.lr.ph.i.i963.epil.preheader

.lr.ph.i.i963.epil.preheader:                     ; preds = %.preheader40.loopexit.i.i968.unr-lcssa, %.lr.ph.i.i963.preheader
  %.044.i.i964.epil.init = phi ptr [ %0, %.lr.ph.i.i963.preheader ], [ %i.fsz, %.preheader40.loopexit.i.i968.unr-lcssa ]
  %.02843.i.i965.epil.init = phi ptr [ %1, %.lr.ph.i.i963.preheader ], [ %i.fta, %.preheader40.loopexit.i.i968.unr-lcssa ]
  %.03441.i.i967.epil.init = phi ptr [ %2, %.lr.ph.i.i963.preheader ], [ %i.ftb, %.preheader40.loopexit.i.i968.unr-lcssa ]
  %lcmp.mod7598 = icmp ne i32 %xtraiter7592, 0
  tail call void @llvm.assume(i1 %lcmp.mod7598)
  br label %.lr.ph.i.i963.epil

.lr.ph.i.i963.epil:                               ; preds = %.lr.ph.i.i963.epil, %.lr.ph.i.i963.epil.preheader
  %.044.i.i964.epil = phi ptr [ %i.fry, %.lr.ph.i.i963.epil ], [ %.044.i.i964.epil.init, %.lr.ph.i.i963.epil.preheader ] ; 2 uses
  %.02843.i.i965.epil = phi ptr [ %i.frz, %.lr.ph.i.i963.epil ], [ %.02843.i.i965.epil.init, %.lr.ph.i.i963.epil.preheader ] ; 2 uses
  %.03441.i.i967.epil = phi ptr [ %i.fsa, %.lr.ph.i.i963.epil ], [ %.03441.i.i967.epil.init, %.lr.ph.i.i963.epil.preheader ] ; 2 uses
  %epil.iter7593 = phi i32 [ %epil.iter7593.next, %.lr.ph.i.i963.epil ], [ 0, %.lr.ph.i.i963.epil.preheader ]
  %i.frv = load <8 x float>, ptr %.044.i.i964.epil, align 1, !tbaa !60
  %i.frw = load <8 x float>, ptr %.02843.i.i965.epil, align 1, !tbaa !60
  %i.frx = fsub fast <8 x float> %i.frw, %i.frv
  store <8 x float> %i.frx, ptr %.03441.i.i967.epil, align 1, !tbaa !60
  %i.fry = getelementptr inbounds nuw i8, ptr %.044.i.i964.epil, i64 32 ; 2 uses
  %i.frz = getelementptr inbounds nuw i8, ptr %.02843.i.i965.epil, i64 32 ; 2 uses
  %i.fsa = getelementptr inbounds nuw i8, ptr %.03441.i.i967.epil, i64 32 ; 2 uses
  %epil.iter7593.next = add i32 %epil.iter7593, 1 ; 2 uses
  %epil.iter7593.cmp.not = icmp eq i32 %epil.iter7593.next, %xtraiter7592
  br i1 %epil.iter7593.cmp.not, label %.preheader40.loopexit.i.i968, label %.lr.ph.i.i963.epil, !llvm.loop !282

.preheader40.loopexit.i.i968:                     ; preds = %.lr.ph.i.i963.epil, %.preheader40.loopexit.i.i968.unr-lcssa
  %.lcssa6635 = phi ptr [ %i.fsz, %.preheader40.loopexit.i.i968.unr-lcssa ], [ %i.fry, %.lr.ph.i.i963.epil ]
  %.lcssa6634 = phi ptr [ %i.fta, %.preheader40.loopexit.i.i968.unr-lcssa ], [ %i.frz, %.lr.ph.i.i963.epil ]
  %.lcssa6633 = phi ptr [ %i.ftb, %.preheader40.loopexit.i.i968.unr-lcssa ], [ %i.fsa, %.lr.ph.i.i963.epil ]
  %i.fsb = and i32 %i.frn, 2147483640
  br label %.preheader40.i.i942

.preheader40.i.i942:                              ; preds = %.preheader40.loopexit.i.i968, %bb.ft
  %.034.lcssa.i.i943 = phi ptr [ %2, %bb.ft ], [ %.lcssa6633, %.preheader40.loopexit.i.i968 ] ; 2 uses
  %.031.lcssa.i.i944 = phi i32 [ 0, %bb.ft ], [ %i.fsb, %.preheader40.loopexit.i.i968 ] ; 3 uses
  %.028.lcssa.i.i945 = phi ptr [ %1, %bb.ft ], [ %.lcssa6634, %.preheader40.loopexit.i.i968 ] ; 2 uses
  %.0.lcssa.i.i946 = phi ptr [ %0, %bb.ft ], [ %.lcssa6635, %.preheader40.loopexit.i.i968 ] ; 2 uses
  %i.fsc = or disjoint i32 %.031.lcssa.i.i944, 3
  %i.fsd = icmp slt i32 %i.fsc, %i.frn
  br i1 %i.fsd, label %.lr.ph52.i.i958, label %.preheader.i.i947

.lr.ph.i.i963:                                    ; preds = %.lr.ph.i.i963, %.lr.ph.i.i963.preheader.new
  %.044.i.i964 = phi ptr [ %0, %.lr.ph.i.i963.preheader.new ], [ %i.fsz, %.lr.ph.i.i963 ] ; 5 uses
  %.02843.i.i965 = phi ptr [ %1, %.lr.ph.i.i963.preheader.new ], [ %i.fta, %.lr.ph.i.i963 ] ; 5 uses
  %.03441.i.i967 = phi ptr [ %2, %.lr.ph.i.i963.preheader.new ], [ %i.ftb, %.lr.ph.i.i963 ] ; 5 uses
  %niter7600 = phi i32 [ 0, %.lr.ph.i.i963.preheader.new ], [ %niter7600.next.3, %.lr.ph.i.i963 ]
  %i.fse = load <8 x float>, ptr %.044.i.i964, align 1, !tbaa !60
  %i.fsf = load <8 x float>, ptr %.02843.i.i965, align 1, !tbaa !60
  %i.fsg = fsub fast <8 x float> %i.fsf, %i.fse
  store <8 x float> %i.fsg, ptr %.03441.i.i967, align 1, !tbaa !60
  %i.fsh = getelementptr inbounds nuw i8, ptr %.044.i.i964, i64 32
  %i.fsi = getelementptr inbounds nuw i8, ptr %.02843.i.i965, i64 32
  %i.fsj = getelementptr inbounds nuw i8, ptr %.03441.i.i967, i64 32
  %i.fsk = load <8 x float>, ptr %i.fsh, align 1, !tbaa !60
  %i.fsl = load <8 x float>, ptr %i.fsi, align 1, !tbaa !60
  %i.fsm = fsub fast <8 x float> %i.fsl, %i.fsk
  store <8 x float> %i.fsm, ptr %i.fsj, align 1, !tbaa !60
  %i.fsn = getelementptr inbounds nuw i8, ptr %.044.i.i964, i64 64
  %i.fso = getelementptr inbounds nuw i8, ptr %.02843.i.i965, i64 64
  %i.fsp = getelementptr inbounds nuw i8, ptr %.03441.i.i967, i64 64
  %i.fsq = load <8 x float>, ptr %i.fsn, align 1, !tbaa !60
  %i.fsr = load <8 x float>, ptr %i.fso, align 1, !tbaa !60
  %i.fss = fsub fast <8 x float> %i.fsr, %i.fsq
  store <8 x float> %i.fss, ptr %i.fsp, align 1, !tbaa !60
  %i.fst = getelementptr inbounds nuw i8, ptr %.044.i.i964, i64 96
  %i.fsu = getelementptr inbounds nuw i8, ptr %.02843.i.i965, i64 96
  %i.fsv = getelementptr inbounds nuw i8, ptr %.03441.i.i967, i64 96
  %i.fsw = load <8 x float>, ptr %i.fst, align 1, !tbaa !60
  %i.fsx = load <8 x float>, ptr %i.fsu, align 1, !tbaa !60
  %i.fsy = fsub fast <8 x float> %i.fsx, %i.fsw
  store <8 x float> %i.fsy, ptr %i.fsv, align 1, !tbaa !60
  %i.fsz = getelementptr inbounds nuw i8, ptr %.044.i.i964, i64 128 ; 3 uses
  %i.fta = getelementptr inbounds nuw i8, ptr %.02843.i.i965, i64 128 ; 3 uses
  %i.ftb = getelementptr inbounds nuw i8, ptr %.03441.i.i967, i64 128 ; 3 uses
  %niter7600.next.3 = add i32 %niter7600, 4       ; 2 uses
  %niter7600.ncmp.3.not = icmp eq i32 %niter7600.next.3, %unroll_iter7599
  br i1 %niter7600.ncmp.3.not, label %.preheader40.loopexit.i.i968.unr-lcssa, label %.lr.ph.i.i963, !llvm.loop !283

.preheader.i.i947:                                ; preds = %.lr.ph52.i.i958, %.preheader40.i.i942
  %.135.lcssa.i.i948 = phi ptr [ %.034.lcssa.i.i943, %.preheader40.i.i942 ], [ %i.fuv, %.lr.ph52.i.i958 ] ; 7 uses
  %.132.lcssa.i.i949 = phi i32 [ %.031.lcssa.i.i944, %.preheader40.i.i942 ], [ %i.fuw, %.lr.ph52.i.i958 ] ; 6 uses
  %.129.lcssa.i.i950 = phi ptr [ %.028.lcssa.i.i945, %.preheader40.i.i942 ], [ %i.fuu, %.lr.ph52.i.i958 ] ; 7 uses
  %.1.lcssa.i.i951 = phi ptr [ %.0.lcssa.i.i946, %.preheader40.i.i942 ], [ %i.fut, %.lr.ph52.i.i958 ] ; 7 uses
  %.1.lcssa.i.i9515428 = ptrtoaddr ptr %.1.lcssa.i.i951 to i64
  %.135.lcssa.i.i9485429 = ptrtoaddr ptr %.129.lcssa.i.i950 to i64
  %.129.lcssa.i.i9505430 = ptrtoaddr ptr %.135.lcssa.i.i948 to i64 ; 2 uses
  %i.ftc = icmp slt i32 %.132.lcssa.i.i949, %i.frn
  br i1 %i.ftc, label %iter.check5453, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check5453:                                   ; preds = %.preheader.i.i947
  %i.ftd = xor i32 %.132.lcssa.i.i949, -1
  %i.fte = add i32 %i.frn, %i.ftd                 ; 3 uses
  %i.ftf = zext i32 %i.fte to i64
  %i.ftg = add nuw nsw i64 %i.ftf, 1              ; 5 uses
  %min.iters.check5432 = icmp ult i32 %i.fte, 3
  br i1 %min.iters.check5432, label %.lr.ph61.i.i952.preheader, label %vector.memcheck5433

vector.memcheck5433:                              ; preds = %iter.check5453
  %i.fth = sub i64 %.135.lcssa.i.i9485429, %.129.lcssa.i.i9505430
  %diff.check5434 = icmp ugt i64 %i.fth, -64
  %i.fti = sub i64 %.1.lcssa.i.i9515428, %.129.lcssa.i.i9505430
  %diff.check5435 = icmp ugt i64 %i.fti, -64
  %conflict.rdx5436 = or i1 %diff.check5434, %diff.check5435
  br i1 %conflict.rdx5436, label %.lr.ph61.i.i952.preheader, label %vector.main.loop.iter.check5437

vector.main.loop.iter.check5437:                  ; preds = %vector.memcheck5433
  %min.iters.check5438 = icmp ult i32 %i.fte, 15
  br i1 %min.iters.check5438, label %vec.epilog.ph5457, label %vector.ph5439

vector.ph5439:                                    ; preds = %vector.main.loop.iter.check5437
  %i.ftj = and i64 %i.ftg, 12
  %n.vec5440 = and i64 %i.ftg, 8589934576         ; 5 uses
  %i.ftk = shl nuw nsw i64 %n.vec5440, 2          ; 3 uses
  %i.ftl = getelementptr i8, ptr %.1.lcssa.i.i951, i64 %i.ftk
  %i.ftm = getelementptr i8, ptr %.129.lcssa.i.i950, i64 %i.ftk
  %i.ftn = trunc i64 %n.vec5440 to i32
  %i.fto = add i32 %.132.lcssa.i.i949, %i.ftn
  %i.ftp = getelementptr i8, ptr %.135.lcssa.i.i948, i64 %i.ftk
  br label %vector.body5441

vector.body5441:                                  ; preds = %vector.ph5439, %vector.body5441
  %index5442 = phi i64 [ 0, %vector.ph5439 ], [ %index.next5450, %vector.body5441 ] ; 2 uses
  %i.ftq = shl i64 %index5442, 2                  ; 3 uses
  %next.gep5443 = getelementptr i8, ptr %.1.lcssa.i.i951, i64 %i.ftq ; 2 uses
  %next.gep5444 = getelementptr i8, ptr %.129.lcssa.i.i950, i64 %i.ftq ; 2 uses
  %next.gep5445 = getelementptr i8, ptr %.135.lcssa.i.i948, i64 %i.ftq ; 2 uses
  %i.ftr = getelementptr i8, ptr %next.gep5444, i64 32
  %wide.load5446 = load <8 x float>, ptr %next.gep5444, align 4, !tbaa !59
  %wide.load5447 = load <8 x float>, ptr %i.ftr, align 4, !tbaa !59
  %i.fts = getelementptr i8, ptr %next.gep5443, i64 32
  %wide.load5448 = load <8 x float>, ptr %next.gep5443, align 4, !tbaa !59
  %wide.load5449 = load <8 x float>, ptr %i.fts, align 4, !tbaa !59
  %i.ftt = fsub fast <8 x float> %wide.load5446, %wide.load5448
  %i.ftu = fsub fast <8 x float> %wide.load5447, %wide.load5449
  %i.ftv = getelementptr i8, ptr %next.gep5445, i64 32
  store <8 x float> %i.ftt, ptr %next.gep5445, align 4, !tbaa !59
  store <8 x float> %i.ftu, ptr %i.ftv, align 4, !tbaa !59
  %index.next5450 = add nuw i64 %index5442, 16    ; 2 uses
  %i.ftw = icmp eq i64 %index.next5450, %n.vec5440
  br i1 %i.ftw, label %middle.block5451, label %vector.body5441, !llvm.loop !284

middle.block5451:                                 ; preds = %vector.body5441
  %cmp.n5452 = icmp eq i64 %i.ftg, %n.vec5440
  br i1 %cmp.n5452, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check5454

vec.epilog.iter.check5454:                        ; preds = %middle.block5451
  %min.epilog.iters.check5456 = icmp eq i64 %i.ftj, 0
  br i1 %min.epilog.iters.check5456, label %.lr.ph61.i.i952.preheader, label %vec.epilog.ph5457, !prof !64

vec.epilog.ph5457:                                ; preds = %vector.main.loop.iter.check5437, %vec.epilog.iter.check5454
  %vec.epilog.resume.val5458 = phi i64 [ %n.vec5440, %vec.epilog.iter.check5454 ], [ 0, %vector.main.loop.iter.check5437 ]
  %n.vec5459 = and i64 %i.ftg, 8589934588         ; 4 uses
  %i.ftx = shl nuw nsw i64 %n.vec5459, 2          ; 3 uses
  %i.fty = getelementptr i8, ptr %.1.lcssa.i.i951, i64 %i.ftx
  %i.ftz = getelementptr i8, ptr %.129.lcssa.i.i950, i64 %i.ftx
  %i.fua = trunc i64 %n.vec5459 to i32
  %i.fub = add i32 %.132.lcssa.i.i949, %i.fua
  %i.fuc = getelementptr i8, ptr %.135.lcssa.i.i948, i64 %i.ftx
  br label %vec.epilog.vector.body5460

vec.epilog.vector.body5460:                       ; preds = %vec.epilog.vector.body5460, %vec.epilog.ph5457
  %index5461 = phi i64 [ %vec.epilog.resume.val5458, %vec.epilog.ph5457 ], [ %index.next5467, %vec.epilog.vector.body5460 ] ; 2 uses
  %i.fud = shl i64 %index5461, 2                  ; 3 uses
  %next.gep5462 = getelementptr i8, ptr %.1.lcssa.i.i951, i64 %i.fud
  %next.gep5463 = getelementptr i8, ptr %.129.lcssa.i.i950, i64 %i.fud
  %next.gep5464 = getelementptr i8, ptr %.135.lcssa.i.i948, i64 %i.fud
  %wide.load5465 = load <4 x float>, ptr %next.gep5463, align 4, !tbaa !59
  %wide.load5466 = load <4 x float>, ptr %next.gep5462, align 4, !tbaa !59
  %i.fue = fsub fast <4 x float> %wide.load5465, %wide.load5466
  store <4 x float> %i.fue, ptr %next.gep5464, align 4, !tbaa !59
  %index.next5467 = add nuw i64 %index5461, 4     ; 2 uses
  %i.fuf = icmp eq i64 %index.next5467, %n.vec5459
  br i1 %i.fuf, label %vec.epilog.middle.block5468, label %vec.epilog.vector.body5460, !llvm.loop !285

vec.epilog.middle.block5468:                      ; preds = %vec.epilog.vector.body5460
  %cmp.n5469 = icmp eq i64 %i.ftg, %n.vec5459
  br i1 %cmp.n5469, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i952.preheader

.lr.ph61.i.i952.preheader:                        ; preds = %iter.check5453, %vector.memcheck5433, %vec.epilog.iter.check5454, %vec.epilog.middle.block5468
  %.260.i.i953.ph = phi ptr [ %.1.lcssa.i.i951, %iter.check5453 ], [ %.1.lcssa.i.i951, %vector.memcheck5433 ], [ %i.ftl, %vec.epilog.iter.check5454 ], [ %i.fty, %vec.epilog.middle.block5468 ] ; 2 uses
  %.23059.i.i954.ph = phi ptr [ %.129.lcssa.i.i950, %iter.check5453 ], [ %.129.lcssa.i.i950, %vector.memcheck5433 ], [ %i.ftm, %vec.epilog.iter.check5454 ], [ %i.ftz, %vec.epilog.middle.block5468 ] ; 2 uses
  %.23358.i.i955.ph = phi i32 [ %.132.lcssa.i.i949, %iter.check5453 ], [ %.132.lcssa.i.i949, %vector.memcheck5433 ], [ %i.fto, %vec.epilog.iter.check5454 ], [ %i.fub, %vec.epilog.middle.block5468 ] ; 4 uses
  %.23657.i.i956.ph = phi ptr [ %.135.lcssa.i.i948, %iter.check5453 ], [ %.135.lcssa.i.i948, %vector.memcheck5433 ], [ %i.ftp, %vec.epilog.iter.check5454 ], [ %i.fuc, %vec.epilog.middle.block5468 ] ; 2 uses
  %i.fug = sub i32 %i.frn, %.23358.i.i955.ph
  %xtraiter7601 = and i32 %i.fug, 3               ; 2 uses
  %lcmp.mod7602.not = icmp eq i32 %xtraiter7601, 0
  br i1 %lcmp.mod7602.not, label %.lr.ph61.i.i952.prol.loopexit, label %.lr.ph61.i.i952.prol

.lr.ph61.i.i952.prol:                             ; preds = %.lr.ph61.i.i952.preheader, %.lr.ph61.i.i952.prol
  %.260.i.i953.prol = phi ptr [ %i.fuk, %.lr.ph61.i.i952.prol ], [ %.260.i.i953.ph, %.lr.ph61.i.i952.preheader ] ; 2 uses
  %.23059.i.i954.prol = phi ptr [ %i.ful, %.lr.ph61.i.i952.prol ], [ %.23059.i.i954.ph, %.lr.ph61.i.i952.preheader ] ; 2 uses
  %.23358.i.i955.prol = phi i32 [ %i.fun, %.lr.ph61.i.i952.prol ], [ %.23358.i.i955.ph, %.lr.ph61.i.i952.preheader ]
  %.23657.i.i956.prol = phi ptr [ %i.fum, %.lr.ph61.i.i952.prol ], [ %.23657.i.i956.ph, %.lr.ph61.i.i952.preheader ] ; 2 uses
  %prol.iter7603 = phi i32 [ %prol.iter7603.next, %.lr.ph61.i.i952.prol ], [ 0, %.lr.ph61.i.i952.preheader ]
  %i.fuh = load float, ptr %.23059.i.i954.prol, align 4, !tbaa !59
  %i.fui = load float, ptr %.260.i.i953.prol, align 4, !tbaa !59
  %i.fuj = fsub fast float %i.fuh, %i.fui
  store float %i.fuj, ptr %.23657.i.i956.prol, align 4, !tbaa !59
  %i.fuk = getelementptr inbounds nuw i8, ptr %.260.i.i953.prol, i64 4 ; 2 uses
  %i.ful = getelementptr inbounds nuw i8, ptr %.23059.i.i954.prol, i64 4 ; 2 uses
  %i.fum = getelementptr inbounds nuw i8, ptr %.23657.i.i956.prol, i64 4 ; 2 uses
  %i.fun = add nuw nsw i32 %.23358.i.i955.prol, 1 ; 2 uses
  %prol.iter7603.next = add i32 %prol.iter7603, 1 ; 2 uses
  %prol.iter7603.cmp.not = icmp eq i32 %prol.iter7603.next, %xtraiter7601
  br i1 %prol.iter7603.cmp.not, label %.lr.ph61.i.i952.prol.loopexit, label %.lr.ph61.i.i952.prol, !llvm.loop !286

.lr.ph61.i.i952.prol.loopexit:                    ; preds = %.lr.ph61.i.i952.prol, %.lr.ph61.i.i952.preheader
  %.260.i.i953.unr = phi ptr [ %.260.i.i953.ph, %.lr.ph61.i.i952.preheader ], [ %i.fuk, %.lr.ph61.i.i952.prol ]
  %.23059.i.i954.unr = phi ptr [ %.23059.i.i954.ph, %.lr.ph61.i.i952.preheader ], [ %i.ful, %.lr.ph61.i.i952.prol ]
  %.23358.i.i955.unr = phi i32 [ %.23358.i.i955.ph, %.lr.ph61.i.i952.preheader ], [ %i.fun, %.lr.ph61.i.i952.prol ]
  %.23657.i.i956.unr = phi ptr [ %.23657.i.i956.ph, %.lr.ph61.i.i952.preheader ], [ %i.fum, %.lr.ph61.i.i952.prol ]
  %i.fuo = sub i32 %.23358.i.i955.ph, %i.frn
  %i.fup = icmp ugt i32 %i.fuo, -4
  br i1 %i.fup, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i952

.lr.ph52.i.i958:                                  ; preds = %.preheader40.i.i942, %.lr.ph52.i.i958
  %.151.i.i959 = phi ptr [ %i.fut, %.lr.ph52.i.i958 ], [ %.0.lcssa.i.i946, %.preheader40.i.i942 ] ; 2 uses
  %.12950.i.i960 = phi ptr [ %i.fuu, %.lr.ph52.i.i958 ], [ %.028.lcssa.i.i945, %.preheader40.i.i942 ] ; 2 uses
  %.13249.i.i961 = phi i32 [ %i.fuw, %.lr.ph52.i.i958 ], [ %.031.lcssa.i.i944, %.preheader40.i.i942 ]
  %.13548.i.i962 = phi ptr [ %i.fuv, %.lr.ph52.i.i958 ], [ %.034.lcssa.i.i943, %.preheader40.i.i942 ] ; 2 uses
  %i.fuq = load <4 x float>, ptr %.151.i.i959, align 1, !tbaa !60
  %i.fur = load <4 x float>, ptr %.12950.i.i960, align 1, !tbaa !60
  %i.fus = fsub fast <4 x float> %i.fur, %i.fuq
  store <4 x float> %i.fus, ptr %.13548.i.i962, align 1, !tbaa !60
  %i.fut = getelementptr inbounds nuw i8, ptr %.151.i.i959, i64 16 ; 2 uses
  %i.fuu = getelementptr inbounds nuw i8, ptr %.12950.i.i960, i64 16 ; 2 uses
  %i.fuv = getelementptr inbounds nuw i8, ptr %.13548.i.i962, i64 16 ; 2 uses
  %i.fuw = add nuw nsw i32 %.13249.i.i961, 4      ; 3 uses
  %i.fux = or disjoint i32 %i.fuw, 3
  %i.fuy = icmp slt i32 %i.fux, %i.frn
  br i1 %i.fuy, label %.lr.ph52.i.i958, label %.preheader.i.i947, !llvm.loop !287

.lr.ph61.i.i952:                                  ; preds = %.lr.ph61.i.i952.prol.loopexit, %.lr.ph61.i.i952
  %.260.i.i953 = phi ptr [ %i.fvu, %.lr.ph61.i.i952 ], [ %.260.i.i953.unr, %.lr.ph61.i.i952.prol.loopexit ] ; 5 uses
  %.23059.i.i954 = phi ptr [ %i.fvv, %.lr.ph61.i.i952 ], [ %.23059.i.i954.unr, %.lr.ph61.i.i952.prol.loopexit ] ; 5 uses
  %.23358.i.i955 = phi i32 [ %i.fvx, %.lr.ph61.i.i952 ], [ %.23358.i.i955.unr, %.lr.ph61.i.i952.prol.loopexit ]
  %.23657.i.i956 = phi ptr [ %i.fvw, %.lr.ph61.i.i952 ], [ %.23657.i.i956.unr, %.lr.ph61.i.i952.prol.loopexit ] ; 5 uses
  %i.fuz = load float, ptr %.23059.i.i954, align 4, !tbaa !59
  %i.fva = load float, ptr %.260.i.i953, align 4, !tbaa !59
  %i.fvb = fsub fast float %i.fuz, %i.fva
  store float %i.fvb, ptr %.23657.i.i956, align 4, !tbaa !59
  %i.fvc = getelementptr inbounds nuw i8, ptr %.260.i.i953, i64 4
  %i.fvd = getelementptr inbounds nuw i8, ptr %.23059.i.i954, i64 4
  %i.fve = getelementptr inbounds nuw i8, ptr %.23657.i.i956, i64 4
  %i.fvf = load float, ptr %i.fvd, align 4, !tbaa !59
  %i.fvg = load float, ptr %i.fvc, align 4, !tbaa !59
  %i.fvh = fsub fast float %i.fvf, %i.fvg
  store float %i.fvh, ptr %i.fve, align 4, !tbaa !59
  %i.fvi = getelementptr inbounds nuw i8, ptr %.260.i.i953, i64 8
  %i.fvj = getelementptr inbounds nuw i8, ptr %.23059.i.i954, i64 8
  %i.fvk = getelementptr inbounds nuw i8, ptr %.23657.i.i956, i64 8
  %i.fvl = load float, ptr %i.fvj, align 4, !tbaa !59
  %i.fvm = load float, ptr %i.fvi, align 4, !tbaa !59
  %i.fvn = fsub fast float %i.fvl, %i.fvm
  store float %i.fvn, ptr %i.fvk, align 4, !tbaa !59
  %i.fvo = getelementptr inbounds nuw i8, ptr %.260.i.i953, i64 12
  %i.fvp = getelementptr inbounds nuw i8, ptr %.23059.i.i954, i64 12
  %i.fvq = getelementptr inbounds nuw i8, ptr %.23657.i.i956, i64 12
  %i.fvr = load float, ptr %i.fvp, align 4, !tbaa !59
  %i.fvs = load float, ptr %i.fvo, align 4, !tbaa !59
  %i.fvt = fsub fast float %i.fvr, %i.fvs
  store float %i.fvt, ptr %i.fvq, align 4, !tbaa !59
  %i.fvu = getelementptr inbounds nuw i8, ptr %.260.i.i953, i64 16
  %i.fvv = getelementptr inbounds nuw i8, ptr %.23059.i.i954, i64 16
  %i.fvw = getelementptr inbounds nuw i8, ptr %.23657.i.i956, i64 16
  %i.fvx = add nuw nsw i32 %.23358.i.i955, 4      ; 2 uses
  %exitcond.not.i.i957.3 = icmp eq i32 %i.fvx, %i.frn
  br i1 %exitcond.not.i.i957.3, label %_ZN4ncnnL16binary_op_vectorINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph61.i.i952, !llvm.loop !288

bb.fu:                                            ; preds = %bb.fs
  %i.fvy = icmp eq i32 %4, 1
  br i1 %i.fvy, label %bb.fv, label %bb.ga

bb.fv:                                            ; preds = %bb.fu
  %i.fvz = load float, ptr %1, align 4, !tbaa !59 ; 8 uses
  %i.fwa = icmp eq i32 %.sroa.speculated.i836, 4
  br i1 %i.fwa, label %.thread.i.i941, label %bb.fw

.thread.i.i941:                                   ; preds = %bb.fv
  %i.fwb = load <4 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.fwc = insertelement <4 x float> poison, float %i.fvz, i64 0
  %i.fwd = shufflevector <4 x float> %i.fwc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fwe = icmp eq i32 %.sroa.speculated.i836, 8
  br i1 %i.fwe, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.fwf = load <8 x float>, ptr %1, align 4, !tbaa !60
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw, %.thread.i.i941
  %i.fwg = phi <4 x float> [ %i.fwb, %.thread.i.i941 ], [ %i.fwd, %bb.fw ] ; 2 uses
  %i.fwh = shufflevector <4 x float> %i.fwg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.fwi = phi <4 x float> [ %i.fwd, %bb.fx ], [ %i.fwg, %bb.fy ]
  %i.fwj = phi fast <8 x float> [ %i.fwf, %bb.fx ], [ %i.fwh, %bb.fy ] ; 5 uses
  %i.fwk = icmp sgt i32 %i.frn, 7
end_hunk_5
begin_hunk_6_@_ZN4ncnnL28binary_op_no_broadcast_bf16sERKNS_3MatES2_RS0_iRKNS_6OptionE:bb.a
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = mul nsw i32 %i.n, %i.p
  store i32 %i.q, ptr %i.c, align 4, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !58
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.s)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN4ncnnL28binary_op_no_broadcast_bf16sERKNS_3MatES2_RS0_iRKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25binary_op_broadcast_bf16sERKNS_3MatES2_RS0_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not39 = icmp sgt i32 %i.k, %i.j
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.w = load i32, ptr %i.l, align 8, !tbaa !33
  %i.x = add nsw i32 %i.w, -1
  %i.y = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated31 = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.y)
  %i.z = load i32, ptr %i.m, align 8, !tbaa !33
  %i.aa = add nsw i32 %i.z, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.y)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !35
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !32  ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sext i32 %.sroa.speculated31 to i64
  %i.af = mul nsw i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !19
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load ptr, ptr %4, align 8, !tbaa !35
  %i.ak = load i32, ptr %i.p, align 4, !tbaa !32  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = sext i32 %.sroa.speculated to i64
  %i.an = mul nsw i64 %i.al, %i.am
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !19
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap
  %i.ar = load ptr, ptr %5, align 8, !tbaa !35
  %i.as = load i32, ptr %i.r, align 4, !tbaa !32
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %indvars.iv, %i.at
  %i.av = load i64, ptr %i.s, align 8, !tbaa !19
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aw
  %i.ay = load i32, ptr %i.t, align 8, !tbaa !18
  %i.az = load i32, ptr %i.u, align 8, !tbaa !18
  %i.ba = load i32, ptr %6, align 4, !tbaa !25
  call fastcc void @_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii(ptr noundef %i.ai, ptr noundef %i.aq, ptr noundef %i.ax, i32 noundef %i.ac, i32 noundef %i.ak, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !25
  %i.bc = sext i32 %i.bb to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bc
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #11 {
bb.a:
  switch i32 %7, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.z
    i32 2, label %bb.ax
    i32 3, label %bb.bv
    i32 4, label %bb.ct
    i32 5, label %bb.dr
    i32 6, label %bb.ep
    i32 7, label %bb.fp
    i32 8, label %bb.gn
    i32 9, label %bb.hj
    i32 10, label %bb.il
    i32 11, label %bb.jp
    i32 12, label %bb.kt
    i32 13, label %bb.lr
    i32 14, label %bb.mp
    i32 15, label %bb.nn
    i32 16, label %bb.ol
    i32 17, label %bb.ph
    i32 18, label %bb.qf
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated86.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.a = mul i32 %.sroa.speculated.i, %.sroa.speculated86.i ; 40 uses
  %i.b = icmp eq i32 %5, %6
  br i1 %i.b, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, %4
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp sgt i32 %i.a, 7
  br i1 %i.d, label %.lr.ph.i.i, label %.preheader46.i.i

.preheader46.loopexit.i.i:                        ; preds = %.lr.ph.i.i
  %i.e = and i32 %i.a, 2147483640
  br label %.preheader46.i.i

.preheader46.i.i:                                 ; preds = %.preheader46.loopexit.i.i, %bb.d
  %.030.lcssa.i.i = phi ptr [ %2, %bb.d ], [ %i.aa, %.preheader46.loopexit.i.i ] ; 2 uses
  %.027.lcssa.i.i = phi ptr [ %1, %bb.d ], [ %i.z, %.preheader46.loopexit.i.i ] ; 2 uses
  %.024.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.e, %.preheader46.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %0, %bb.d ], [ %i.y, %.preheader46.loopexit.i.i ] ; 2 uses
  %i.f = or disjoint i32 %.024.lcssa.i.i, 3
  %i.g = icmp slt i32 %i.f, %i.a
  br i1 %i.g, label %.lr.ph58.i.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.050.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %0, %bb.d ] ; 2 uses
  %.02449.i.i = phi i32 [ %i.ab, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.02748.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %1, %bb.d ] ; 2 uses
  %.03047.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %2, %bb.d ] ; 2 uses
  %i.h = load <8 x i16>, ptr %.050.i.i, align 1, !tbaa !60 ; 2 uses
  %i.i = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.h, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.j = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.h, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.k = shufflevector <8 x i16> %i.i, <8 x i16> %i.j, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.l = bitcast <16 x i16> %i.k to <8 x float>
  %i.m = load <8 x i16>, ptr %.02748.i.i, align 1, !tbaa !60 ; 2 uses
  %i.n = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.m, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.o = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.m, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.p = shufflevector <8 x i16> %i.n, <8 x i16> %i.o, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.q = bitcast <16 x i16> %i.p to <8 x float>
  %i.r = fadd fast <8 x float> %i.q, %i.l
  %i.s = bitcast <8 x float> %i.r to <8 x i32>    ; 2 uses
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = shufflevector <8 x i32> %i.s, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.v = lshr <4 x i32> %i.t, splat (i32 16)
  %i.w = lshr <4 x i32> %i.u, splat (i32 16)
  %i.x = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.v, <4 x i32> %i.w)
  store <8 x i16> %i.x, ptr %.03047.i.i, align 1, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %.050.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02748.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03047.i.i, i64 16 ; 2 uses
  %i.ab = add nuw nsw i32 %.02449.i.i, 8          ; 2 uses
  %i.ac = or disjoint i32 %i.ab, 7
  %i.ad = icmp slt i32 %i.ac, %i.a
  br i1 %i.ad, label %.lr.ph.i.i, label %.preheader46.loopexit.i.i, !llvm.loop !615

.preheader.i.i:                                   ; preds = %.lr.ph58.i.i, %.preheader46.i.i
  %.131.lcssa.i.i = phi ptr [ %.030.lcssa.i.i, %.preheader46.i.i ], [ %i.dg, %.lr.ph58.i.i ] ; 7 uses
  %.128.lcssa.i.i = phi ptr [ %.027.lcssa.i.i, %.preheader46.i.i ], [ %i.df, %.lr.ph58.i.i ] ; 7 uses
  %.125.lcssa.i.i = phi i32 [ %.024.lcssa.i.i, %.preheader46.i.i ], [ %i.dh, %.lr.ph58.i.i ] ; 6 uses
  %.1.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader46.i.i ], [ %i.de, %.lr.ph58.i.i ] ; 7 uses
  %.128.lcssa.i.i7038 = ptrtoaddr ptr %.128.lcssa.i.i to i64
  %.131.lcssa.i.i7039 = ptrtoaddr ptr %.1.lcssa.i.i to i64
  %.1.lcssa.i.i7040 = ptrtoaddr ptr %.131.lcssa.i.i to i64 ; 2 uses
  %i.ae = icmp slt i32 %.125.lcssa.i.i, %i.a
  br i1 %i.ae, label %iter.check7060, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7060:                                   ; preds = %.preheader.i.i
  %i.af = xor i32 %.125.lcssa.i.i, -1
  %i.ag = add i32 %i.a, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 5 uses
  %min.iters.check7041 = icmp ult i32 %i.ag, 3
  br i1 %min.iters.check7041, label %.lr.ph67.i.i.preheader, label %vector.memcheck7042

vector.memcheck7042:                              ; preds = %iter.check7060
  %i.aj = sub i64 %.131.lcssa.i.i7039, %.1.lcssa.i.i7040
  %diff.check7043 = icmp ugt i64 %i.aj, -32
  %i.ak = sub i64 %.128.lcssa.i.i7038, %.1.lcssa.i.i7040
  %diff.check7044 = icmp ugt i64 %i.ak, -32
  %conflict.rdx7045 = or i1 %diff.check7043, %diff.check7044
  br i1 %conflict.rdx7045, label %.lr.ph67.i.i.preheader, label %vector.main.loop.iter.check7046

vector.main.loop.iter.check7046:                  ; preds = %vector.memcheck7042
  %min.iters.check7047 = icmp ult i32 %i.ag, 15
  br i1 %min.iters.check7047, label %vec.epilog.ph7064, label %vector.ph7048

vector.ph7048:                                    ; preds = %vector.main.loop.iter.check7046
  %i.al = and i64 %i.ai, 12
  %n.vec7049 = and i64 %i.ai, 8589934576          ; 5 uses
  %i.am = shl nuw nsw i64 %n.vec7049, 1           ; 3 uses
  %i.an = getelementptr i8, ptr %.1.lcssa.i.i, i64 %i.am
  %i.ao = trunc i64 %n.vec7049 to i32
  %i.ap = add i32 %.125.lcssa.i.i, %i.ao
  %i.aq = getelementptr i8, ptr %.128.lcssa.i.i, i64 %i.am
  %i.ar = getelementptr i8, ptr %.131.lcssa.i.i, i64 %i.am
  br label %vector.body7050

vector.body7050:                                  ; preds = %vector.ph7048, %vector.body7050
  %index7051 = phi i64 [ 0, %vector.ph7048 ], [ %index.next7057, %vector.body7050 ] ; 2 uses
  %i.as = shl i64 %index7051, 1                   ; 3 uses
  %next.gep7052 = getelementptr i8, ptr %.1.lcssa.i.i, i64 %i.as
  %next.gep7053 = getelementptr i8, ptr %.128.lcssa.i.i, i64 %i.as
  %next.gep7054 = getelementptr i8, ptr %.131.lcssa.i.i, i64 %i.as
  %wide.load7055 = load <16 x i16>, ptr %next.gep7052, align 2, !tbaa !57
  %i.at = zext <16 x i16> %wide.load7055 to <16 x i32>
  %i.au = shl nuw <16 x i32> %i.at, splat (i32 16)
  %i.av = bitcast <16 x i32> %i.au to <16 x float>
  %wide.load7056 = load <16 x i16>, ptr %next.gep7053, align 2, !tbaa !57
  %i.aw = zext <16 x i16> %wide.load7056 to <16 x i32>
  %i.ax = shl nuw <16 x i32> %i.aw, splat (i32 16)
  %i.ay = bitcast <16 x i32> %i.ax to <16 x float>
  %i.az = fadd fast <16 x float> %i.ay, %i.av
  %i.ba = bitcast <16 x float> %i.az to <16 x i32>
  %i.bb = lshr <16 x i32> %i.ba, splat (i32 16)
  %i.bc = trunc nuw <16 x i32> %i.bb to <16 x i16>
  store <16 x i16> %i.bc, ptr %next.gep7054, align 2, !tbaa !57
  %index.next7057 = add nuw i64 %index7051, 16    ; 2 uses
  %i.bd = icmp eq i64 %index.next7057, %n.vec7049
  br i1 %i.bd, label %middle.block7058, label %vector.body7050, !llvm.loop !616

middle.block7058:                                 ; preds = %vector.body7050
  %cmp.n7059 = icmp eq i64 %i.ai, %n.vec7049
  br i1 %cmp.n7059, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7061

vec.epilog.iter.check7061:                        ; preds = %middle.block7058
  %min.epilog.iters.check7063 = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check7063, label %.lr.ph67.i.i.preheader, label %vec.epilog.ph7064, !prof !64

vec.epilog.ph7064:                                ; preds = %vector.main.loop.iter.check7046, %vec.epilog.iter.check7061
  %vec.epilog.resume.val7065 = phi i64 [ %n.vec7049, %vec.epilog.iter.check7061 ], [ 0, %vector.main.loop.iter.check7046 ]
  %n.vec7066 = and i64 %i.ai, 8589934588          ; 4 uses
  %i.be = shl nuw nsw i64 %n.vec7066, 1           ; 3 uses
  %i.bf = getelementptr i8, ptr %.1.lcssa.i.i, i64 %i.be
  %i.bg = trunc i64 %n.vec7066 to i32
  %i.bh = add i32 %.125.lcssa.i.i, %i.bg
  %i.bi = getelementptr i8, ptr %.128.lcssa.i.i, i64 %i.be
  %i.bj = getelementptr i8, ptr %.131.lcssa.i.i, i64 %i.be
  br label %vec.epilog.vector.body7067

vec.epilog.vector.body7067:                       ; preds = %vec.epilog.vector.body7067, %vec.epilog.ph7064
  %index7068 = phi i64 [ %vec.epilog.resume.val7065, %vec.epilog.ph7064 ], [ %index.next7074, %vec.epilog.vector.body7067 ] ; 2 uses
  %i.bk = shl i64 %index7068, 1                   ; 3 uses
  %next.gep7069 = getelementptr i8, ptr %.1.lcssa.i.i, i64 %i.bk
  %next.gep7070 = getelementptr i8, ptr %.128.lcssa.i.i, i64 %i.bk
  %next.gep7071 = getelementptr i8, ptr %.131.lcssa.i.i, i64 %i.bk
  %wide.load7072 = load <4 x i16>, ptr %next.gep7069, align 2, !tbaa !57
  %i.bl = zext <4 x i16> %wide.load7072 to <4 x i32>
  %i.bm = shl nuw <4 x i32> %i.bl, splat (i32 16)
  %i.bn = bitcast <4 x i32> %i.bm to <4 x float>
  %wide.load7073 = load <4 x i16>, ptr %next.gep7070, align 2, !tbaa !57
  %i.bo = zext <4 x i16> %wide.load7073 to <4 x i32>
  %i.bp = shl nuw <4 x i32> %i.bo, splat (i32 16)
  %i.bq = bitcast <4 x i32> %i.bp to <4 x float>
  %i.br = fadd fast <4 x float> %i.bq, %i.bn
  %i.bs = bitcast <4 x float> %i.br to <4 x i32>
  %i.bt = lshr <4 x i32> %i.bs, splat (i32 16)
  %i.bu = trunc nuw <4 x i32> %i.bt to <4 x i16>
  store <4 x i16> %i.bu, ptr %next.gep7071, align 2, !tbaa !57
  %index.next7074 = add nuw i64 %index7068, 4     ; 2 uses
  %i.bv = icmp eq i64 %index.next7074, %n.vec7066
  br i1 %i.bv, label %vec.epilog.middle.block7075, label %vec.epilog.vector.body7067, !llvm.loop !617

vec.epilog.middle.block7075:                      ; preds = %vec.epilog.vector.body7067
  %cmp.n7076 = icmp eq i64 %i.ai, %n.vec7066
  br i1 %cmp.n7076, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i.preheader

.lr.ph67.i.i.preheader:                           ; preds = %iter.check7060, %vector.memcheck7042, %vec.epilog.iter.check7061, %vec.epilog.middle.block7075
  %.266.i.i.ph = phi ptr [ %.1.lcssa.i.i, %iter.check7060 ], [ %.1.lcssa.i.i, %vector.memcheck7042 ], [ %i.an, %vec.epilog.iter.check7061 ], [ %i.bf, %vec.epilog.middle.block7075 ] ; 3 uses
  %.22665.i.i.ph = phi i32 [ %.125.lcssa.i.i, %iter.check7060 ], [ %.125.lcssa.i.i, %vector.memcheck7042 ], [ %i.ap, %vec.epilog.iter.check7061 ], [ %i.bh, %vec.epilog.middle.block7075 ] ; 4 uses
  %.22964.i.i.ph = phi ptr [ %.128.lcssa.i.i, %iter.check7060 ], [ %.128.lcssa.i.i, %vector.memcheck7042 ], [ %i.aq, %vec.epilog.iter.check7061 ], [ %i.bi, %vec.epilog.middle.block7075 ] ; 3 uses
  %.23263.i.i.ph = phi ptr [ %.131.lcssa.i.i, %iter.check7060 ], [ %.131.lcssa.i.i, %vector.memcheck7042 ], [ %i.ar, %vec.epilog.iter.check7061 ], [ %i.bj, %vec.epilog.middle.block7075 ] ; 3 uses
  %i.bw = sub i32 %i.a, %.22665.i.i.ph
  %.neg8058 = add i32 %.22665.i.i.ph, 1
  %xtraiter7996 = and i32 %i.bw, 1
  %lcmp.mod7997.not = icmp eq i32 %xtraiter7996, 0
  br i1 %lcmp.mod7997.not, label %.lr.ph67.i.i.prol.loopexit, label %.lr.ph67.i.i.prol

.lr.ph67.i.i.prol:                                ; preds = %.lr.ph67.i.i.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %.266.i.i.ph, i64 2
  %i.by = load i16, ptr %.266.i.i.ph, align 2, !tbaa !57
  %i.bz = zext i16 %i.by to i32
  %i.ca = shl nuw i32 %i.bz, 16
  %i.cb = bitcast i32 %i.ca to float
  %i.cc = getelementptr inbounds nuw i8, ptr %.22964.i.i.ph, i64 2
  %i.cd = load i16, ptr %.22964.i.i.ph, align 2, !tbaa !57
  %i.ce = zext i16 %i.cd to i32
  %i.cf = shl nuw i32 %i.ce, 16
  %i.cg = bitcast i32 %i.cf to float
  %i.ch = fadd fast float %i.cg, %i.cb
  %i.ci = bitcast float %i.ch to i32
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc nuw i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %.23263.i.i.ph, i64 2
  store i16 %i.ck, ptr %.23263.i.i.ph, align 2, !tbaa !57
  %i.cm = add nuw nsw i32 %.22665.i.i.ph, 1
  br label %.lr.ph67.i.i.prol.loopexit

.lr.ph67.i.i.prol.loopexit:                       ; preds = %.lr.ph67.i.i.prol, %.lr.ph67.i.i.preheader
  %.266.i.i.unr = phi ptr [ %.266.i.i.ph, %.lr.ph67.i.i.preheader ], [ %i.bx, %.lr.ph67.i.i.prol ]
  %.22665.i.i.unr = phi i32 [ %.22665.i.i.ph, %.lr.ph67.i.i.preheader ], [ %i.cm, %.lr.ph67.i.i.prol ]
  %.22964.i.i.unr = phi ptr [ %.22964.i.i.ph, %.lr.ph67.i.i.preheader ], [ %i.cc, %.lr.ph67.i.i.prol ]
  %.23263.i.i.unr = phi ptr [ %.23263.i.i.ph, %.lr.ph67.i.i.preheader ], [ %i.cl, %.lr.ph67.i.i.prol ]
  %i.cn = icmp eq i32 %i.a, %.neg8058
  br i1 %i.cn, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i

.lr.ph58.i.i:                                     ; preds = %.preheader46.i.i, %.lr.ph58.i.i
  %.157.i.i = phi ptr [ %i.de, %.lr.ph58.i.i ], [ %.0.lcssa.i.i, %.preheader46.i.i ] ; 2 uses
  %.12556.i.i = phi i32 [ %i.dh, %.lr.ph58.i.i ], [ %.024.lcssa.i.i, %.preheader46.i.i ]
  %.12855.i.i = phi ptr [ %i.df, %.lr.ph58.i.i ], [ %.027.lcssa.i.i, %.preheader46.i.i ] ; 2 uses
  %.13154.i.i = phi ptr [ %i.dg, %.lr.ph58.i.i ], [ %.030.lcssa.i.i, %.preheader46.i.i ] ; 2 uses
  %i.co = load i64, ptr %.157.i.i, align 1, !tbaa !60
  %i.cp = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %i.cq = bitcast <2 x i64> %i.cp to <8 x i16>
  %i.cr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cs = bitcast <8 x i16> %i.cr to <4 x float>
  %i.ct = load i64, ptr %.12855.i.i, align 1, !tbaa !60
  %i.cu = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %i.cv = bitcast <2 x i64> %i.cu to <8 x i16>
  %i.cw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cx = bitcast <8 x i16> %i.cw to <4 x float>
  %i.cy = fadd fast <4 x float> %i.cx, %i.cs
  %i.cz = bitcast <4 x float> %i.cy to <4 x i32>
  %i.da = lshr <4 x i32> %i.cz, splat (i32 16)
  %i.db = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.da, <4 x i32> poison)
  %i.dc = bitcast <8 x i16> %i.db to <2 x i64>
  %i.dd = extractelement <2 x i64> %i.dc, i64 0
  store i64 %i.dd, ptr %.13154.i.i, align 1, !tbaa !60
  %i.de = getelementptr inbounds nuw i8, ptr %.157.i.i, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.12855.i.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.13154.i.i, i64 8 ; 2 uses
  %i.dh = add nuw nsw i32 %.12556.i.i, 4          ; 3 uses
  %i.di = or disjoint i32 %i.dh, 3
  %i.dj = icmp slt i32 %i.di, %i.a
  br i1 %i.dj, label %.lr.ph58.i.i, label %.preheader.i.i, !llvm.loop !618

.lr.ph67.i.i:                                     ; preds = %.lr.ph67.i.i.prol.loopexit, %.lr.ph67.i.i
  %.266.i.i = phi ptr [ %i.dz, %.lr.ph67.i.i ], [ %.266.i.i.unr, %.lr.ph67.i.i.prol.loopexit ] ; 3 uses
  %.22665.i.i = phi i32 [ %i.eo, %.lr.ph67.i.i ], [ %.22665.i.i.unr, %.lr.ph67.i.i.prol.loopexit ]
  %.22964.i.i = phi ptr [ %i.ee, %.lr.ph67.i.i ], [ %.22964.i.i.unr, %.lr.ph67.i.i.prol.loopexit ] ; 3 uses
  %.23263.i.i = phi ptr [ %i.en, %.lr.ph67.i.i ], [ %.23263.i.i.unr, %.lr.ph67.i.i.prol.loopexit ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 2
  %i.dl = load i16, ptr %.266.i.i, align 2, !tbaa !57
  %i.dm = zext i16 %i.dl to i32
  %i.dn = shl nuw i32 %i.dm, 16
  %i.do = bitcast i32 %i.dn to float
  %i.dp = getelementptr inbounds nuw i8, ptr %.22964.i.i, i64 2
  %i.dq = load i16, ptr %.22964.i.i, align 2, !tbaa !57
  %i.dr = zext i16 %i.dq to i32
  %i.ds = shl nuw i32 %i.dr, 16
  %i.dt = bitcast i32 %i.ds to float
  %i.du = fadd fast float %i.dt, %i.do
  %i.dv = bitcast float %i.du to i32
  %i.dw = lshr i32 %i.dv, 16
  %i.dx = trunc nuw i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %.23263.i.i, i64 2
  store i16 %i.dx, ptr %.23263.i.i, align 2, !tbaa !57
  %i.dz = getelementptr inbounds nuw i8, ptr %.266.i.i, i64 4
  %i.ea = load i16, ptr %i.dk, align 2, !tbaa !57
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl nuw i32 %i.eb, 16
  %i.ed = bitcast i32 %i.ec to float
  %i.ee = getelementptr inbounds nuw i8, ptr %.22964.i.i, i64 4
  %i.ef = load i16, ptr %i.dp, align 2, !tbaa !57
  %i.eg = zext i16 %i.ef to i32
  %i.eh = shl nuw i32 %i.eg, 16
  %i.ei = bitcast i32 %i.eh to float
  %i.ej = fadd fast float %i.ei, %i.ed
  %i.ek = bitcast float %i.ej to i32
  %i.el = lshr i32 %i.ek, 16
  %i.em = trunc nuw i32 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %.23263.i.i, i64 4
  store i16 %i.em, ptr %i.dy, align 2, !tbaa !57
  %i.eo = add nuw nsw i32 %.22665.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.eo, %i.a
  br i1 %exitcond.not.i.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i, !llvm.loop !619

bb.e:                                             ; preds = %bb.c
  %i.ep = icmp eq i32 %4, 1
end_hunk_6
begin_hunk_7_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.ue = lshr i32 %i.ud, 16
  %i.uf = trunc nuw i32 %i.ue to i16
  %i.ug = getelementptr inbounds nuw i8, ptr %.22725.i.i, i64 2
  store i16 %i.uf, ptr %.22725.i.i, align 2, !tbaa !57
  %i.uh = getelementptr inbounds nuw i8, ptr %.228.i.i, i64 4
  %i.ui = load i16, ptr %i.tx, align 2, !tbaa !57
  %i.uj = zext i16 %i.ui to i32
  %i.uk = shl nuw i32 %i.uj, 16
  %i.ul = bitcast i32 %i.uk to float
  %i.um = fadd fast float %i.ul, %i.ql
  %i.un = bitcast float %i.um to i32
  %i.uo = lshr i32 %i.un, 16
  %i.up = trunc nuw i32 %i.uo to i16
  %i.uq = getelementptr inbounds nuw i8, ptr %.22725.i.i, i64 4
  store i16 %i.up, ptr %i.ug, align 2, !tbaa !57
  %i.ur = add nuw nsw i32 %.22426.i.i, 2          ; 2 uses
  %exitcond.not.i72.i.1 = icmp eq i32 %i.ur, %i.a
  br i1 %exitcond.not.i72.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph29.i.i, !llvm.loop !636

bb.v:                                             ; preds = %bb.t
  %i.us = icmp eq i32 %3, 1
  br i1 %i.us, label %bb.w, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.w:                                             ; preds = %bb.v
  switch i32 %.sroa.speculated.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.x
    i32 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.ut = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.uu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ut, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ut, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uw = shufflevector <8 x i16> %i.uu, <8 x i16> %i.uv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ux = bitcast <16 x i16> %i.uw to <8 x float> ; 3 uses
  %xtraiter7985 = and i32 %.sroa.speculated86.i, 1
  %i.uy = icmp eq i32 %.sroa.speculated86.i, 1
  br i1 %i.uy, label %.lr.ph39.i.i.epil.preheader, label %.new7984

.new7984:                                         ; preds = %bb.x
  %unroll_iter7988 = and i32 %.sroa.speculated86.i, 2147483646
  br label %.lr.ph39.i.i

.lr.ph39.i.i:                                     ; preds = %.lr.ph39.i.i, %.new7984
  %.01838.i.i = phi ptr [ %1, %.new7984 ], [ %i.wb, %.lr.ph39.i.i ] ; 3 uses
  %.02036.i.i = phi ptr [ %2, %.new7984 ], [ %i.wc, %.lr.ph39.i.i ] ; 3 uses
  %niter7989 = phi i32 [ 0, %.new7984 ], [ %niter7989.next.1, %.lr.ph39.i.i ]
  %i.uz = load i16, ptr %.01838.i.i, align 2, !tbaa !57
  %i.va = zext i16 %i.uz to i32
  %i.vb = shl nuw i32 %i.va, 16
  %i.vc = insertelement <8 x i32> poison, i32 %i.vb, i64 0
  %i.vd = bitcast <8 x i32> %i.vc to <8 x float>
  %i.ve = shufflevector <8 x float> %i.vd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vf = fadd fast <8 x float> %i.ve, %i.ux
  %i.vg = bitcast <8 x float> %i.vf to <8 x i32>  ; 2 uses
  %i.vh = shufflevector <8 x i32> %i.vg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vi = shufflevector <8 x i32> %i.vg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vj = lshr <4 x i32> %i.vh, splat (i32 16)
  %i.vk = lshr <4 x i32> %i.vi, splat (i32 16)
  %i.vl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.vj, <4 x i32> %i.vk)
  store <8 x i16> %i.vl, ptr %.02036.i.i, align 1, !tbaa !60
  %i.vm = getelementptr inbounds nuw i8, ptr %.01838.i.i, i64 2
  %i.vn = getelementptr inbounds nuw i8, ptr %.02036.i.i, i64 16
  %i.vo = load i16, ptr %i.vm, align 2, !tbaa !57
  %i.vp = zext i16 %i.vo to i32
  %i.vq = shl nuw i32 %i.vp, 16
  %i.vr = insertelement <8 x i32> poison, i32 %i.vq, i64 0
  %i.vs = bitcast <8 x i32> %i.vr to <8 x float>
  %i.vt = shufflevector <8 x float> %i.vs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vu = fadd fast <8 x float> %i.vt, %i.ux
  %i.vv = bitcast <8 x float> %i.vu to <8 x i32>  ; 2 uses
  %i.vw = shufflevector <8 x i32> %i.vv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vx = shufflevector <8 x i32> %i.vv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vy = lshr <4 x i32> %i.vw, splat (i32 16)
  %i.vz = lshr <4 x i32> %i.vx, splat (i32 16)
  %i.wa = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.vy, <4 x i32> %i.vz)
  store <8 x i16> %i.wa, ptr %i.vn, align 1, !tbaa !60
  %i.wb = getelementptr inbounds nuw i8, ptr %.01838.i.i, i64 4 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.02036.i.i, i64 32 ; 2 uses
  %niter7989.next.1 = add i32 %niter7989, 2       ; 2 uses
  %niter7989.ncmp.1 = icmp eq i32 %niter7989.next.1, %unroll_iter7988
  br i1 %niter7989.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7209.unr-lcssa, label %.lr.ph39.i.i, !llvm.loop !637

bb.y:                                             ; preds = %bb.w
  %i.wd = load i64, ptr %0, align 1, !tbaa !60
  %i.we = insertelement <2 x i64> poison, i64 %i.wd, i64 0
  %i.wf = bitcast <2 x i64> %i.we to <8 x i16>
  %i.wg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wh = bitcast <8 x i16> %i.wg to <4 x float>  ; 3 uses
  %xtraiter7979 = and i32 %.sroa.speculated86.i, 1
  %i.wi = icmp eq i32 %.sroa.speculated86.i, 1
  br i1 %i.wi, label %.lr.ph.i74.i.epil.preheader, label %.new7978

.new7978:                                         ; preds = %bb.y
  %unroll_iter7982 = and i32 %.sroa.speculated86.i, 2147483646
  br label %.lr.ph.i74.i

.lr.ph.i74.i:                                     ; preds = %.lr.ph.i74.i, %.new7978
  %.134.i.i = phi ptr [ %1, %.new7978 ], [ %i.xj, %.lr.ph.i74.i ] ; 3 uses
  %.12133.i.i = phi ptr [ %2, %.new7978 ], [ %i.xk, %.lr.ph.i74.i ] ; 3 uses
  %niter7983 = phi i32 [ 0, %.new7978 ], [ %niter7983.next.1, %.lr.ph.i74.i ]
  %i.wj = load i16, ptr %.134.i.i, align 2, !tbaa !57
  %i.wk = zext i16 %i.wj to i32
  %i.wl = shl nuw i32 %i.wk, 16
  %i.wm = insertelement <4 x i32> poison, i32 %i.wl, i64 0
  %i.wn = bitcast <4 x i32> %i.wm to <4 x float>
  %i.wo = shufflevector <4 x float> %i.wn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wp = fadd fast <4 x float> %i.wo, %i.wh
  %i.wq = bitcast <4 x float> %i.wp to <4 x i32>
  %i.wr = lshr <4 x i32> %i.wq, splat (i32 16)
  %i.ws = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.wr, <4 x i32> poison)
  %i.wt = bitcast <8 x i16> %i.ws to <2 x i64>
  %i.wu = extractelement <2 x i64> %i.wt, i64 0
  store i64 %i.wu, ptr %.12133.i.i, align 1, !tbaa !60
  %i.wv = getelementptr inbounds nuw i8, ptr %.134.i.i, i64 2
  %i.ww = getelementptr inbounds nuw i8, ptr %.12133.i.i, i64 8
  %i.wx = load i16, ptr %i.wv, align 2, !tbaa !57
  %i.wy = zext i16 %i.wx to i32
  %i.wz = shl nuw i32 %i.wy, 16
  %i.xa = insertelement <4 x i32> poison, i32 %i.wz, i64 0
  %i.xb = bitcast <4 x i32> %i.xa to <4 x float>
  %i.xc = shufflevector <4 x float> %i.xb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xd = fadd fast <4 x float> %i.xc, %i.wh
  %i.xe = bitcast <4 x float> %i.xd to <4 x i32>
  %i.xf = lshr <4 x i32> %i.xe, splat (i32 16)
  %i.xg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.xf, <4 x i32> poison)
  %i.xh = bitcast <8 x i16> %i.xg to <2 x i64>
  %i.xi = extractelement <2 x i64> %i.xh, i64 0
  store i64 %i.xi, ptr %i.ww, align 1, !tbaa !60
  %i.xj = getelementptr inbounds nuw i8, ptr %.134.i.i, i64 4 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.12133.i.i, i64 16 ; 2 uses
  %niter7983.next.1 = add i32 %niter7983, 2       ; 2 uses
  %niter7983.ncmp.1 = icmp eq i32 %niter7983.next.1, %unroll_iter7982
  br i1 %niter7983.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7210.unr-lcssa, label %.lr.ph.i74.i, !llvm.loop !638

bb.z:                                             ; preds = %bb.a
  %.sroa.speculated86.i151 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i152 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.xl = mul i32 %.sroa.speculated.i152, %.sroa.speculated86.i151 ; 40 uses
  %i.xm = icmp eq i32 %5, %6
  br i1 %i.xm, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %bb.z
  %i.xn = icmp eq i32 %3, %4
  br i1 %i.xn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.xo = icmp sgt i32 %i.xl, 7
  br i1 %i.xo, label %.lr.ph.i.i267, label %.preheader46.i.i246

.preheader46.loopexit.i.i272:                     ; preds = %.lr.ph.i.i267
  %i.xp = and i32 %i.xl, 2147483640
  br label %.preheader46.i.i246

.preheader46.i.i246:                              ; preds = %.preheader46.loopexit.i.i272, %bb.ab
  %.030.lcssa.i.i247 = phi ptr [ %2, %bb.ab ], [ %i.yl, %.preheader46.loopexit.i.i272 ] ; 2 uses
  %.027.lcssa.i.i248 = phi ptr [ %1, %bb.ab ], [ %i.yk, %.preheader46.loopexit.i.i272 ] ; 2 uses
  %.024.lcssa.i.i249 = phi i32 [ 0, %bb.ab ], [ %i.xp, %.preheader46.loopexit.i.i272 ] ; 3 uses
  %.0.lcssa.i.i250 = phi ptr [ %0, %bb.ab ], [ %i.yj, %.preheader46.loopexit.i.i272 ] ; 2 uses
  %i.xq = or disjoint i32 %.024.lcssa.i.i249, 3
  %i.xr = icmp slt i32 %i.xq, %i.xl
  br i1 %i.xr, label %.lr.ph58.i.i262, label %.preheader.i.i251

.lr.ph.i.i267:                                    ; preds = %bb.ab, %.lr.ph.i.i267
  %.050.i.i268 = phi ptr [ %i.yj, %.lr.ph.i.i267 ], [ %0, %bb.ab ] ; 2 uses
  %.02449.i.i269 = phi i32 [ %i.ym, %.lr.ph.i.i267 ], [ 0, %bb.ab ]
  %.02748.i.i270 = phi ptr [ %i.yk, %.lr.ph.i.i267 ], [ %1, %bb.ab ] ; 2 uses
  %.03047.i.i271 = phi ptr [ %i.yl, %.lr.ph.i.i267 ], [ %2, %bb.ab ] ; 2 uses
  %i.xs = load <8 x i16>, ptr %.050.i.i268, align 1, !tbaa !60 ; 2 uses
  %i.xt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.xs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.xv = shufflevector <8 x i16> %i.xt, <8 x i16> %i.xu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xw = bitcast <16 x i16> %i.xv to <8 x float>
  %i.xx = load <8 x i16>, ptr %.02748.i.i270, align 1, !tbaa !60 ; 2 uses
  %i.xy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.xx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ya = shufflevector <8 x i16> %i.xy, <8 x i16> %i.xz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yb = bitcast <16 x i16> %i.ya to <8 x float>
  %i.yc = fsub fast <8 x float> %i.xw, %i.yb
  %i.yd = bitcast <8 x float> %i.yc to <8 x i32>  ; 2 uses
  %i.ye = shufflevector <8 x i32> %i.yd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yf = shufflevector <8 x i32> %i.yd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.yg = lshr <4 x i32> %i.ye, splat (i32 16)
  %i.yh = lshr <4 x i32> %i.yf, splat (i32 16)
  %i.yi = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.yg, <4 x i32> %i.yh)
  store <8 x i16> %i.yi, ptr %.03047.i.i271, align 1, !tbaa !60
  %i.yj = getelementptr inbounds nuw i8, ptr %.050.i.i268, i64 16 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.02748.i.i270, i64 16 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.03047.i.i271, i64 16 ; 2 uses
  %i.ym = add nuw nsw i32 %.02449.i.i269, 8       ; 2 uses
  %i.yn = or disjoint i32 %i.ym, 7
  %i.yo = icmp slt i32 %i.yn, %i.xl
  br i1 %i.yo, label %.lr.ph.i.i267, label %.preheader46.loopexit.i.i272, !llvm.loop !639

.preheader.i.i251:                                ; preds = %.lr.ph58.i.i262, %.preheader46.i.i246
  %.131.lcssa.i.i252 = phi ptr [ %.030.lcssa.i.i247, %.preheader46.i.i246 ], [ %i.abr, %.lr.ph58.i.i262 ] ; 7 uses
  %.128.lcssa.i.i253 = phi ptr [ %.027.lcssa.i.i248, %.preheader46.i.i246 ], [ %i.abq, %.lr.ph58.i.i262 ] ; 7 uses
  %.125.lcssa.i.i254 = phi i32 [ %.024.lcssa.i.i249, %.preheader46.i.i246 ], [ %i.abs, %.lr.ph58.i.i262 ] ; 6 uses
  %.1.lcssa.i.i255 = phi ptr [ %.0.lcssa.i.i250, %.preheader46.i.i246 ], [ %i.abp, %.lr.ph58.i.i262 ] ; 7 uses
  %.128.lcssa.i.i2536859 = ptrtoaddr ptr %.128.lcssa.i.i253 to i64
  %.131.lcssa.i.i2526860 = ptrtoaddr ptr %.1.lcssa.i.i255 to i64
  %.1.lcssa.i.i2556861 = ptrtoaddr ptr %.131.lcssa.i.i252 to i64 ; 2 uses
  %i.yp = icmp slt i32 %.125.lcssa.i.i254, %i.xl
  br i1 %i.yp, label %iter.check6881, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6881:                                   ; preds = %.preheader.i.i251
  %i.yq = xor i32 %.125.lcssa.i.i254, -1
  %i.yr = add i32 %i.xl, %i.yq                    ; 3 uses
  %i.ys = zext i32 %i.yr to i64
  %i.yt = add nuw nsw i64 %i.ys, 1                ; 5 uses
  %min.iters.check6862 = icmp ult i32 %i.yr, 3
  br i1 %min.iters.check6862, label %.lr.ph67.i.i256.preheader, label %vector.memcheck6863

vector.memcheck6863:                              ; preds = %iter.check6881
  %i.yu = sub i64 %.131.lcssa.i.i2526860, %.1.lcssa.i.i2556861
  %diff.check6864 = icmp ugt i64 %i.yu, -32
  %i.yv = sub i64 %.128.lcssa.i.i2536859, %.1.lcssa.i.i2556861
  %diff.check6865 = icmp ugt i64 %i.yv, -32
  %conflict.rdx6866 = or i1 %diff.check6864, %diff.check6865
  br i1 %conflict.rdx6866, label %.lr.ph67.i.i256.preheader, label %vector.main.loop.iter.check6867

vector.main.loop.iter.check6867:                  ; preds = %vector.memcheck6863
  %min.iters.check6868 = icmp ult i32 %i.yr, 15
  br i1 %min.iters.check6868, label %vec.epilog.ph6885, label %vector.ph6869

vector.ph6869:                                    ; preds = %vector.main.loop.iter.check6867
  %i.yw = and i64 %i.yt, 12
  %n.vec6870 = and i64 %i.yt, 8589934576          ; 5 uses
  %i.yx = shl nuw nsw i64 %n.vec6870, 1           ; 3 uses
  %i.yy = getelementptr i8, ptr %.1.lcssa.i.i255, i64 %i.yx
  %i.yz = trunc i64 %n.vec6870 to i32
  %i.za = add i32 %.125.lcssa.i.i254, %i.yz
  %i.zb = getelementptr i8, ptr %.128.lcssa.i.i253, i64 %i.yx
  %i.zc = getelementptr i8, ptr %.131.lcssa.i.i252, i64 %i.yx
  br label %vector.body6871

vector.body6871:                                  ; preds = %vector.ph6869, %vector.body6871
  %index6872 = phi i64 [ 0, %vector.ph6869 ], [ %index.next6878, %vector.body6871 ] ; 2 uses
  %i.zd = shl i64 %index6872, 1                   ; 3 uses
  %next.gep6873 = getelementptr i8, ptr %.1.lcssa.i.i255, i64 %i.zd
  %next.gep6874 = getelementptr i8, ptr %.128.lcssa.i.i253, i64 %i.zd
  %next.gep6875 = getelementptr i8, ptr %.131.lcssa.i.i252, i64 %i.zd
  %wide.load6876 = load <16 x i16>, ptr %next.gep6873, align 2, !tbaa !57
  %i.ze = zext <16 x i16> %wide.load6876 to <16 x i32>
  %i.zf = shl nuw <16 x i32> %i.ze, splat (i32 16)
  %i.zg = bitcast <16 x i32> %i.zf to <16 x float>
  %wide.load6877 = load <16 x i16>, ptr %next.gep6874, align 2, !tbaa !57
  %i.zh = zext <16 x i16> %wide.load6877 to <16 x i32>
  %i.zi = shl nuw <16 x i32> %i.zh, splat (i32 16)
  %i.zj = bitcast <16 x i32> %i.zi to <16 x float>
  %i.zk = fsub fast <16 x float> %i.zg, %i.zj
  %i.zl = bitcast <16 x float> %i.zk to <16 x i32>
  %i.zm = lshr <16 x i32> %i.zl, splat (i32 16)
  %i.zn = trunc nuw <16 x i32> %i.zm to <16 x i16>
  store <16 x i16> %i.zn, ptr %next.gep6875, align 2, !tbaa !57
  %index.next6878 = add nuw i64 %index6872, 16    ; 2 uses
  %i.zo = icmp eq i64 %index.next6878, %n.vec6870
  br i1 %i.zo, label %middle.block6879, label %vector.body6871, !llvm.loop !640

middle.block6879:                                 ; preds = %vector.body6871
  %cmp.n6880 = icmp eq i64 %i.yt, %n.vec6870
  br i1 %cmp.n6880, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check6882

vec.epilog.iter.check6882:                        ; preds = %middle.block6879
  %min.epilog.iters.check6884 = icmp eq i64 %i.yw, 0
  br i1 %min.epilog.iters.check6884, label %.lr.ph67.i.i256.preheader, label %vec.epilog.ph6885, !prof !64

vec.epilog.ph6885:                                ; preds = %vector.main.loop.iter.check6867, %vec.epilog.iter.check6882
  %vec.epilog.resume.val6886 = phi i64 [ %n.vec6870, %vec.epilog.iter.check6882 ], [ 0, %vector.main.loop.iter.check6867 ]
  %n.vec6887 = and i64 %i.yt, 8589934588          ; 4 uses
  %i.zp = shl nuw nsw i64 %n.vec6887, 1           ; 3 uses
  %i.zq = getelementptr i8, ptr %.1.lcssa.i.i255, i64 %i.zp
  %i.zr = trunc i64 %n.vec6887 to i32
  %i.zs = add i32 %.125.lcssa.i.i254, %i.zr
  %i.zt = getelementptr i8, ptr %.128.lcssa.i.i253, i64 %i.zp
  %i.zu = getelementptr i8, ptr %.131.lcssa.i.i252, i64 %i.zp
  br label %vec.epilog.vector.body6888

vec.epilog.vector.body6888:                       ; preds = %vec.epilog.vector.body6888, %vec.epilog.ph6885
  %index6889 = phi i64 [ %vec.epilog.resume.val6886, %vec.epilog.ph6885 ], [ %index.next6895, %vec.epilog.vector.body6888 ] ; 2 uses
  %i.zv = shl i64 %index6889, 1                   ; 3 uses
  %next.gep6890 = getelementptr i8, ptr %.1.lcssa.i.i255, i64 %i.zv
  %next.gep6891 = getelementptr i8, ptr %.128.lcssa.i.i253, i64 %i.zv
  %next.gep6892 = getelementptr i8, ptr %.131.lcssa.i.i252, i64 %i.zv
  %wide.load6893 = load <4 x i16>, ptr %next.gep6890, align 2, !tbaa !57
  %i.zw = zext <4 x i16> %wide.load6893 to <4 x i32>
  %i.zx = shl nuw <4 x i32> %i.zw, splat (i32 16)
  %i.zy = bitcast <4 x i32> %i.zx to <4 x float>
  %wide.load6894 = load <4 x i16>, ptr %next.gep6891, align 2, !tbaa !57
  %i.zz = zext <4 x i16> %wide.load6894 to <4 x i32>
  %i.aaa = shl nuw <4 x i32> %i.zz, splat (i32 16)
  %i.aab = bitcast <4 x i32> %i.aaa to <4 x float>
  %i.aac = fsub fast <4 x float> %i.zy, %i.aab
  %i.aad = bitcast <4 x float> %i.aac to <4 x i32>
  %i.aae = lshr <4 x i32> %i.aad, splat (i32 16)
  %i.aaf = trunc nuw <4 x i32> %i.aae to <4 x i16>
  store <4 x i16> %i.aaf, ptr %next.gep6892, align 2, !tbaa !57
  %index.next6895 = add nuw i64 %index6889, 4     ; 2 uses
  %i.aag = icmp eq i64 %index.next6895, %n.vec6887
  br i1 %i.aag, label %vec.epilog.middle.block6896, label %vec.epilog.vector.body6888, !llvm.loop !641

vec.epilog.middle.block6896:                      ; preds = %vec.epilog.vector.body6888
  %cmp.n6897 = icmp eq i64 %i.yt, %n.vec6887
  br i1 %cmp.n6897, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i256.preheader

.lr.ph67.i.i256.preheader:                        ; preds = %iter.check6881, %vector.memcheck6863, %vec.epilog.iter.check6882, %vec.epilog.middle.block6896
  %.266.i.i257.ph = phi ptr [ %.1.lcssa.i.i255, %iter.check6881 ], [ %.1.lcssa.i.i255, %vector.memcheck6863 ], [ %i.yy, %vec.epilog.iter.check6882 ], [ %i.zq, %vec.epilog.middle.block6896 ] ; 3 uses
  %.22665.i.i258.ph = phi i32 [ %.125.lcssa.i.i254, %iter.check6881 ], [ %.125.lcssa.i.i254, %vector.memcheck6863 ], [ %i.za, %vec.epilog.iter.check6882 ], [ %i.zs, %vec.epilog.middle.block6896 ] ; 4 uses
  %.22964.i.i259.ph = phi ptr [ %.128.lcssa.i.i253, %iter.check6881 ], [ %.128.lcssa.i.i253, %vector.memcheck6863 ], [ %i.zb, %vec.epilog.iter.check6882 ], [ %i.zt, %vec.epilog.middle.block6896 ] ; 3 uses
  %.23263.i.i260.ph = phi ptr [ %.131.lcssa.i.i252, %iter.check6881 ], [ %.131.lcssa.i.i252, %vector.memcheck6863 ], [ %i.zc, %vec.epilog.iter.check6882 ], [ %i.zu, %vec.epilog.middle.block6896 ] ; 3 uses
  %i.aah = sub i32 %i.xl, %.22665.i.i258.ph
  %.neg8054 = add i32 %.22665.i.i258.ph, 1
  %xtraiter7976 = and i32 %i.aah, 1
  %lcmp.mod7977.not = icmp eq i32 %xtraiter7976, 0
  br i1 %lcmp.mod7977.not, label %.lr.ph67.i.i256.prol.loopexit, label %.lr.ph67.i.i256.prol

.lr.ph67.i.i256.prol:                             ; preds = %.lr.ph67.i.i256.preheader
  %i.aai = getelementptr inbounds nuw i8, ptr %.266.i.i257.ph, i64 2
  %i.aaj = load i16, ptr %.266.i.i257.ph, align 2, !tbaa !57
  %i.aak = zext i16 %i.aaj to i32
  %i.aal = shl nuw i32 %i.aak, 16
  %i.aam = bitcast i32 %i.aal to float
  %i.aan = getelementptr inbounds nuw i8, ptr %.22964.i.i259.ph, i64 2
  %i.aao = load i16, ptr %.22964.i.i259.ph, align 2, !tbaa !57
  %i.aap = zext i16 %i.aao to i32
  %i.aaq = shl nuw i32 %i.aap, 16
  %i.aar = bitcast i32 %i.aaq to float
  %i.aas = fsub fast float %i.aam, %i.aar
  %i.aat = bitcast float %i.aas to i32
  %i.aau = lshr i32 %i.aat, 16
  %i.aav = trunc nuw i32 %i.aau to i16
  %i.aaw = getelementptr inbounds nuw i8, ptr %.23263.i.i260.ph, i64 2
  store i16 %i.aav, ptr %.23263.i.i260.ph, align 2, !tbaa !57
  %i.aax = add nuw nsw i32 %.22665.i.i258.ph, 1
  br label %.lr.ph67.i.i256.prol.loopexit

.lr.ph67.i.i256.prol.loopexit:                    ; preds = %.lr.ph67.i.i256.prol, %.lr.ph67.i.i256.preheader
  %.266.i.i257.unr = phi ptr [ %.266.i.i257.ph, %.lr.ph67.i.i256.preheader ], [ %i.aai, %.lr.ph67.i.i256.prol ]
  %.22665.i.i258.unr = phi i32 [ %.22665.i.i258.ph, %.lr.ph67.i.i256.preheader ], [ %i.aax, %.lr.ph67.i.i256.prol ]
  %.22964.i.i259.unr = phi ptr [ %.22964.i.i259.ph, %.lr.ph67.i.i256.preheader ], [ %i.aan, %.lr.ph67.i.i256.prol ]
  %.23263.i.i260.unr = phi ptr [ %.23263.i.i260.ph, %.lr.ph67.i.i256.preheader ], [ %i.aaw, %.lr.ph67.i.i256.prol ]
  %i.aay = icmp eq i32 %i.xl, %.neg8054
  br i1 %i.aay, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i256

.lr.ph58.i.i262:                                  ; preds = %.preheader46.i.i246, %.lr.ph58.i.i262
  %.157.i.i263 = phi ptr [ %i.abp, %.lr.ph58.i.i262 ], [ %.0.lcssa.i.i250, %.preheader46.i.i246 ] ; 2 uses
  %.12556.i.i264 = phi i32 [ %i.abs, %.lr.ph58.i.i262 ], [ %.024.lcssa.i.i249, %.preheader46.i.i246 ]
  %.12855.i.i265 = phi ptr [ %i.abq, %.lr.ph58.i.i262 ], [ %.027.lcssa.i.i248, %.preheader46.i.i246 ] ; 2 uses
  %.13154.i.i266 = phi ptr [ %i.abr, %.lr.ph58.i.i262 ], [ %.030.lcssa.i.i247, %.preheader46.i.i246 ] ; 2 uses
  %i.aaz = load i64, ptr %.157.i.i263, align 1, !tbaa !60
  %i.aba = insertelement <2 x i64> poison, i64 %i.aaz, i64 0
  %i.abb = bitcast <2 x i64> %i.aba to <8 x i16>
  %i.abc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abd = bitcast <8 x i16> %i.abc to <4 x float>
  %i.abe = load i64, ptr %.12855.i.i265, align 1, !tbaa !60
  %i.abf = insertelement <2 x i64> poison, i64 %i.abe, i64 0
  %i.abg = bitcast <2 x i64> %i.abf to <8 x i16>
  %i.abh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abi = bitcast <8 x i16> %i.abh to <4 x float>
  %i.abj = fsub fast <4 x float> %i.abd, %i.abi
  %i.abk = bitcast <4 x float> %i.abj to <4 x i32>
  %i.abl = lshr <4 x i32> %i.abk, splat (i32 16)
  %i.abm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.abl, <4 x i32> poison)
  %i.abn = bitcast <8 x i16> %i.abm to <2 x i64>
  %i.abo = extractelement <2 x i64> %i.abn, i64 0
  store i64 %i.abo, ptr %.13154.i.i266, align 1, !tbaa !60
  %i.abp = getelementptr inbounds nuw i8, ptr %.157.i.i263, i64 8 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.12855.i.i265, i64 8 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.13154.i.i266, i64 8 ; 2 uses
  %i.abs = add nuw nsw i32 %.12556.i.i264, 4      ; 3 uses
  %i.abt = or disjoint i32 %i.abs, 3
  %i.abu = icmp slt i32 %i.abt, %i.xl
  br i1 %i.abu, label %.lr.ph58.i.i262, label %.preheader.i.i251, !llvm.loop !642

.lr.ph67.i.i256:                                  ; preds = %.lr.ph67.i.i256.prol.loopexit, %.lr.ph67.i.i256
  %.266.i.i257 = phi ptr [ %i.ack, %.lr.ph67.i.i256 ], [ %.266.i.i257.unr, %.lr.ph67.i.i256.prol.loopexit ] ; 3 uses
  %.22665.i.i258 = phi i32 [ %i.acz, %.lr.ph67.i.i256 ], [ %.22665.i.i258.unr, %.lr.ph67.i.i256.prol.loopexit ]
  %.22964.i.i259 = phi ptr [ %i.acp, %.lr.ph67.i.i256 ], [ %.22964.i.i259.unr, %.lr.ph67.i.i256.prol.loopexit ] ; 3 uses
  %.23263.i.i260 = phi ptr [ %i.acy, %.lr.ph67.i.i256 ], [ %.23263.i.i260.unr, %.lr.ph67.i.i256.prol.loopexit ] ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.266.i.i257, i64 2
  %i.abw = load i16, ptr %.266.i.i257, align 2, !tbaa !57
  %i.abx = zext i16 %i.abw to i32
  %i.aby = shl nuw i32 %i.abx, 16
  %i.abz = bitcast i32 %i.aby to float
  %i.aca = getelementptr inbounds nuw i8, ptr %.22964.i.i259, i64 2
  %i.acb = load i16, ptr %.22964.i.i259, align 2, !tbaa !57
  %i.acc = zext i16 %i.acb to i32
  %i.acd = shl nuw i32 %i.acc, 16
  %i.ace = bitcast i32 %i.acd to float
  %i.acf = fsub fast float %i.abz, %i.ace
  %i.acg = bitcast float %i.acf to i32
  %i.ach = lshr i32 %i.acg, 16
  %i.aci = trunc nuw i32 %i.ach to i16
  %i.acj = getelementptr inbounds nuw i8, ptr %.23263.i.i260, i64 2
  store i16 %i.aci, ptr %.23263.i.i260, align 2, !tbaa !57
  %i.ack = getelementptr inbounds nuw i8, ptr %.266.i.i257, i64 4
  %i.acl = load i16, ptr %i.abv, align 2, !tbaa !57
  %i.acm = zext i16 %i.acl to i32
  %i.acn = shl nuw i32 %i.acm, 16
  %i.aco = bitcast i32 %i.acn to float
  %i.acp = getelementptr inbounds nuw i8, ptr %.22964.i.i259, i64 4
  %i.acq = load i16, ptr %i.aca, align 2, !tbaa !57
  %i.acr = zext i16 %i.acq to i32
  %i.acs = shl nuw i32 %i.acr, 16
  %i.act = bitcast i32 %i.acs to float
  %i.acu = fsub fast float %i.aco, %i.act
  %i.acv = bitcast float %i.acu to i32
  %i.acw = lshr i32 %i.acv, 16
  %i.acx = trunc nuw i32 %i.acw to i16
  %i.acy = getelementptr inbounds nuw i8, ptr %.23263.i.i260, i64 4
  store i16 %i.acx, ptr %i.acj, align 2, !tbaa !57
  %i.acz = add nuw nsw i32 %.22665.i.i258, 2      ; 2 uses
  %exitcond.not.i.i261.1 = icmp eq i32 %i.acz, %i.xl
  br i1 %exitcond.not.i.i261.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i256, !llvm.loop !643

bb.ac:                                            ; preds = %bb.aa
  %i.ada = icmp eq i32 %4, 1
end_hunk_7
begin_hunk_8_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.asp = lshr i32 %i.aso, 16
  %i.asq = trunc nuw i32 %i.asp to i16
  %i.asr = getelementptr inbounds nuw i8, ptr %.22725.i.i175, i64 2
  store i16 %i.asq, ptr %.22725.i.i175, align 2, !tbaa !57
  %i.ass = getelementptr inbounds nuw i8, ptr %.228.i.i173, i64 4
  %i.ast = load i16, ptr %i.asi, align 2, !tbaa !57
  %i.asu = zext i16 %i.ast to i32
  %i.asv = shl nuw i32 %i.asu, 16
  %i.asw = bitcast i32 %i.asv to float
  %i.asx = fsub fast float %i.asw, %i.aow
  %i.asy = bitcast float %i.asx to i32
  %i.asz = lshr i32 %i.asy, 16
  %i.ata = trunc nuw i32 %i.asz to i16
  %i.atb = getelementptr inbounds nuw i8, ptr %.22725.i.i175, i64 4
  store i16 %i.ata, ptr %i.asr, align 2, !tbaa !57
  %i.atc = add nuw nsw i32 %.22426.i.i174, 2      ; 2 uses
  %exitcond.not.i72.i176.1 = icmp eq i32 %i.atc, %i.xl
  br i1 %exitcond.not.i72.i176.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph29.i.i172, !llvm.loop !660

bb.at:                                            ; preds = %bb.ar
  %i.atd = icmp eq i32 %3, 1
  br i1 %i.atd, label %bb.au, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.au:                                            ; preds = %bb.at
  switch i32 %.sroa.speculated.i152, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.av
    i32 4, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.ate = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.atf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ate, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.atg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ate, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ath = shufflevector <8 x i16> %i.atf, <8 x i16> %i.atg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ati = bitcast <16 x i16> %i.ath to <8 x float> ; 3 uses
  %xtraiter7965 = and i32 %.sroa.speculated86.i151, 1
  %i.atj = icmp eq i32 %.sroa.speculated86.i151, 1
  br i1 %i.atj, label %.lr.ph39.i.i158.epil.preheader, label %.new7964

.new7964:                                         ; preds = %bb.av
  %unroll_iter7968 = and i32 %.sroa.speculated86.i151, 2147483646
  br label %.lr.ph39.i.i158

.lr.ph39.i.i158:                                  ; preds = %.lr.ph39.i.i158, %.new7964
  %.01838.i.i159 = phi ptr [ %1, %.new7964 ], [ %i.aum, %.lr.ph39.i.i158 ] ; 3 uses
  %.02036.i.i161 = phi ptr [ %2, %.new7964 ], [ %i.aun, %.lr.ph39.i.i158 ] ; 3 uses
  %niter7969 = phi i32 [ 0, %.new7964 ], [ %niter7969.next.1, %.lr.ph39.i.i158 ]
  %i.atk = load i16, ptr %.01838.i.i159, align 2, !tbaa !57
  %i.atl = zext i16 %i.atk to i32
  %i.atm = shl nuw i32 %i.atl, 16
  %i.atn = insertelement <8 x i32> poison, i32 %i.atm, i64 0
  %i.ato = bitcast <8 x i32> %i.atn to <8 x float>
  %i.atp = shufflevector <8 x float> %i.ato, <8 x float> poison, <8 x i32> zeroinitializer
  %i.atq = fsub fast <8 x float> %i.ati, %i.atp
  %i.atr = bitcast <8 x float> %i.atq to <8 x i32> ; 2 uses
  %i.ats = shufflevector <8 x i32> %i.atr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.att = shufflevector <8 x i32> %i.atr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.atu = lshr <4 x i32> %i.ats, splat (i32 16)
  %i.atv = lshr <4 x i32> %i.att, splat (i32 16)
  %i.atw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.atu, <4 x i32> %i.atv)
  store <8 x i16> %i.atw, ptr %.02036.i.i161, align 1, !tbaa !60
  %i.atx = getelementptr inbounds nuw i8, ptr %.01838.i.i159, i64 2
  %i.aty = getelementptr inbounds nuw i8, ptr %.02036.i.i161, i64 16
  %i.atz = load i16, ptr %i.atx, align 2, !tbaa !57
  %i.aua = zext i16 %i.atz to i32
  %i.aub = shl nuw i32 %i.aua, 16
  %i.auc = insertelement <8 x i32> poison, i32 %i.aub, i64 0
  %i.aud = bitcast <8 x i32> %i.auc to <8 x float>
  %i.aue = shufflevector <8 x float> %i.aud, <8 x float> poison, <8 x i32> zeroinitializer
  %i.auf = fsub fast <8 x float> %i.ati, %i.aue
  %i.aug = bitcast <8 x float> %i.auf to <8 x i32> ; 2 uses
  %i.auh = shufflevector <8 x i32> %i.aug, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aui = shufflevector <8 x i32> %i.aug, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.auj = lshr <4 x i32> %i.auh, splat (i32 16)
  %i.auk = lshr <4 x i32> %i.aui, splat (i32 16)
  %i.aul = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.auj, <4 x i32> %i.auk)
  store <8 x i16> %i.aul, ptr %i.aty, align 1, !tbaa !60
  %i.aum = getelementptr inbounds nuw i8, ptr %.01838.i.i159, i64 4 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %.02036.i.i161, i64 32 ; 2 uses
  %niter7969.next.1 = add i32 %niter7969, 2       ; 2 uses
  %niter7969.ncmp.1 = icmp eq i32 %niter7969.next.1, %unroll_iter7968
  br i1 %niter7969.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7239.unr-lcssa, label %.lr.ph39.i.i158, !llvm.loop !661

bb.aw:                                            ; preds = %bb.au
  %i.auo = load i64, ptr %0, align 1, !tbaa !60
  %i.aup = insertelement <2 x i64> poison, i64 %i.auo, i64 0
  %i.auq = bitcast <2 x i64> %i.aup to <8 x i16>
  %i.aur = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.auq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aus = bitcast <8 x i16> %i.aur to <4 x float> ; 3 uses
  %xtraiter7959 = and i32 %.sroa.speculated86.i151, 1
  %i.aut = icmp eq i32 %.sroa.speculated86.i151, 1
  br i1 %i.aut, label %.lr.ph.i74.i153.epil.preheader, label %.new7958

.new7958:                                         ; preds = %bb.aw
  %unroll_iter7962 = and i32 %.sroa.speculated86.i151, 2147483646
  br label %.lr.ph.i74.i153

.lr.ph.i74.i153:                                  ; preds = %.lr.ph.i74.i153, %.new7958
  %.134.i.i155 = phi ptr [ %1, %.new7958 ], [ %i.avu, %.lr.ph.i74.i153 ] ; 3 uses
  %.12133.i.i156 = phi ptr [ %2, %.new7958 ], [ %i.avv, %.lr.ph.i74.i153 ] ; 3 uses
  %niter7963 = phi i32 [ 0, %.new7958 ], [ %niter7963.next.1, %.lr.ph.i74.i153 ]
  %i.auu = load i16, ptr %.134.i.i155, align 2, !tbaa !57
  %i.auv = zext i16 %i.auu to i32
  %i.auw = shl nuw i32 %i.auv, 16
  %i.aux = insertelement <4 x i32> poison, i32 %i.auw, i64 0
  %i.auy = bitcast <4 x i32> %i.aux to <4 x float>
  %i.auz = shufflevector <4 x float> %i.auy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ava = fsub fast <4 x float> %i.aus, %i.auz
  %i.avb = bitcast <4 x float> %i.ava to <4 x i32>
  %i.avc = lshr <4 x i32> %i.avb, splat (i32 16)
  %i.avd = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.avc, <4 x i32> poison)
  %i.ave = bitcast <8 x i16> %i.avd to <2 x i64>
  %i.avf = extractelement <2 x i64> %i.ave, i64 0
  store i64 %i.avf, ptr %.12133.i.i156, align 1, !tbaa !60
  %i.avg = getelementptr inbounds nuw i8, ptr %.134.i.i155, i64 2
  %i.avh = getelementptr inbounds nuw i8, ptr %.12133.i.i156, i64 8
  %i.avi = load i16, ptr %i.avg, align 2, !tbaa !57
  %i.avj = zext i16 %i.avi to i32
  %i.avk = shl nuw i32 %i.avj, 16
  %i.avl = insertelement <4 x i32> poison, i32 %i.avk, i64 0
  %i.avm = bitcast <4 x i32> %i.avl to <4 x float>
  %i.avn = shufflevector <4 x float> %i.avm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avo = fsub fast <4 x float> %i.aus, %i.avn
  %i.avp = bitcast <4 x float> %i.avo to <4 x i32>
  %i.avq = lshr <4 x i32> %i.avp, splat (i32 16)
  %i.avr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.avq, <4 x i32> poison)
  %i.avs = bitcast <8 x i16> %i.avr to <2 x i64>
  %i.avt = extractelement <2 x i64> %i.avs, i64 0
  store i64 %i.avt, ptr %i.avh, align 1, !tbaa !60
  %i.avu = getelementptr inbounds nuw i8, ptr %.134.i.i155, i64 4 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %.12133.i.i156, i64 16 ; 2 uses
  %niter7963.next.1 = add i32 %niter7963, 2       ; 2 uses
  %niter7963.ncmp.1 = icmp eq i32 %niter7963.next.1, %unroll_iter7962
  br i1 %niter7963.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7240.unr-lcssa, label %.lr.ph.i74.i153, !llvm.loop !662

bb.ax:                                            ; preds = %bb.a
  %.sroa.speculated86.i273 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i274 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.avw = mul i32 %.sroa.speculated.i274, %.sroa.speculated86.i273 ; 40 uses
  %i.avx = icmp eq i32 %5, %6
  br i1 %i.avx, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %bb.ax
  %i.avy = icmp eq i32 %3, %4
  br i1 %i.avy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.avz = icmp sgt i32 %i.avw, 7
  br i1 %i.avz, label %.lr.ph.i.i389, label %.preheader46.i.i368

.preheader46.loopexit.i.i394:                     ; preds = %.lr.ph.i.i389
  %i.awa = and i32 %i.avw, 2147483640
  br label %.preheader46.i.i368

.preheader46.i.i368:                              ; preds = %.preheader46.loopexit.i.i394, %bb.az
  %.030.lcssa.i.i369 = phi ptr [ %2, %bb.az ], [ %i.aww, %.preheader46.loopexit.i.i394 ] ; 2 uses
  %.027.lcssa.i.i370 = phi ptr [ %1, %bb.az ], [ %i.awv, %.preheader46.loopexit.i.i394 ] ; 2 uses
  %.024.lcssa.i.i371 = phi i32 [ 0, %bb.az ], [ %i.awa, %.preheader46.loopexit.i.i394 ] ; 3 uses
  %.0.lcssa.i.i372 = phi ptr [ %0, %bb.az ], [ %i.awu, %.preheader46.loopexit.i.i394 ] ; 2 uses
  %i.awb = or disjoint i32 %.024.lcssa.i.i371, 3
  %i.awc = icmp slt i32 %i.awb, %i.avw
  br i1 %i.awc, label %.lr.ph58.i.i384, label %.preheader.i.i373

.lr.ph.i.i389:                                    ; preds = %bb.az, %.lr.ph.i.i389
  %.050.i.i390 = phi ptr [ %i.awu, %.lr.ph.i.i389 ], [ %0, %bb.az ] ; 2 uses
  %.02449.i.i391 = phi i32 [ %i.awx, %.lr.ph.i.i389 ], [ 0, %bb.az ]
  %.02748.i.i392 = phi ptr [ %i.awv, %.lr.ph.i.i389 ], [ %1, %bb.az ] ; 2 uses
  %.03047.i.i393 = phi ptr [ %i.aww, %.lr.ph.i.i389 ], [ %2, %bb.az ] ; 2 uses
  %i.awd = load <8 x i16>, ptr %.050.i.i390, align 1, !tbaa !60 ; 2 uses
  %i.awe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.awd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.awg = shufflevector <8 x i16> %i.awe, <8 x i16> %i.awf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awh = bitcast <16 x i16> %i.awg to <8 x float>
  %i.awi = load <8 x i16>, ptr %.02748.i.i392, align 1, !tbaa !60 ; 2 uses
  %i.awj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.awi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.awl = shufflevector <8 x i16> %i.awj, <8 x i16> %i.awk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awm = bitcast <16 x i16> %i.awl to <8 x float>
  %i.awn = fmul fast <8 x float> %i.awm, %i.awh
  %i.awo = bitcast <8 x float> %i.awn to <8 x i32> ; 2 uses
  %i.awp = shufflevector <8 x i32> %i.awo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awq = shufflevector <8 x i32> %i.awo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awr = lshr <4 x i32> %i.awp, splat (i32 16)
  %i.aws = lshr <4 x i32> %i.awq, splat (i32 16)
  %i.awt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.awr, <4 x i32> %i.aws)
  store <8 x i16> %i.awt, ptr %.03047.i.i393, align 1, !tbaa !60
  %i.awu = getelementptr inbounds nuw i8, ptr %.050.i.i390, i64 16 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.02748.i.i392, i64 16 ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.03047.i.i393, i64 16 ; 2 uses
  %i.awx = add nuw nsw i32 %.02449.i.i391, 8      ; 2 uses
  %i.awy = or disjoint i32 %i.awx, 7
  %i.awz = icmp slt i32 %i.awy, %i.avw
  br i1 %i.awz, label %.lr.ph.i.i389, label %.preheader46.loopexit.i.i394, !llvm.loop !663

.preheader.i.i373:                                ; preds = %.lr.ph58.i.i384, %.preheader46.i.i368
  %.131.lcssa.i.i374 = phi ptr [ %.030.lcssa.i.i369, %.preheader46.i.i368 ], [ %i.bac, %.lr.ph58.i.i384 ] ; 7 uses
  %.128.lcssa.i.i375 = phi ptr [ %.027.lcssa.i.i370, %.preheader46.i.i368 ], [ %i.bab, %.lr.ph58.i.i384 ] ; 7 uses
  %.125.lcssa.i.i376 = phi i32 [ %.024.lcssa.i.i371, %.preheader46.i.i368 ], [ %i.bad, %.lr.ph58.i.i384 ] ; 6 uses
  %.1.lcssa.i.i377 = phi ptr [ %.0.lcssa.i.i372, %.preheader46.i.i368 ], [ %i.baa, %.lr.ph58.i.i384 ] ; 7 uses
  %.128.lcssa.i.i3756680 = ptrtoaddr ptr %.128.lcssa.i.i375 to i64
  %.131.lcssa.i.i3746681 = ptrtoaddr ptr %.1.lcssa.i.i377 to i64
  %.1.lcssa.i.i3776682 = ptrtoaddr ptr %.131.lcssa.i.i374 to i64 ; 2 uses
  %i.axa = icmp slt i32 %.125.lcssa.i.i376, %i.avw
  br i1 %i.axa, label %iter.check6702, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6702:                                   ; preds = %.preheader.i.i373
  %i.axb = xor i32 %.125.lcssa.i.i376, -1
  %i.axc = add i32 %i.avw, %i.axb                 ; 3 uses
  %i.axd = zext i32 %i.axc to i64
  %i.axe = add nuw nsw i64 %i.axd, 1              ; 5 uses
  %min.iters.check6683 = icmp ult i32 %i.axc, 3
  br i1 %min.iters.check6683, label %.lr.ph67.i.i378.preheader, label %vector.memcheck6684

vector.memcheck6684:                              ; preds = %iter.check6702
  %i.axf = sub i64 %.131.lcssa.i.i3746681, %.1.lcssa.i.i3776682
  %diff.check6685 = icmp ugt i64 %i.axf, -32
  %i.axg = sub i64 %.128.lcssa.i.i3756680, %.1.lcssa.i.i3776682
  %diff.check6686 = icmp ugt i64 %i.axg, -32
  %conflict.rdx6687 = or i1 %diff.check6685, %diff.check6686
  br i1 %conflict.rdx6687, label %.lr.ph67.i.i378.preheader, label %vector.main.loop.iter.check6688

vector.main.loop.iter.check6688:                  ; preds = %vector.memcheck6684
  %min.iters.check6689 = icmp ult i32 %i.axc, 15
  br i1 %min.iters.check6689, label %vec.epilog.ph6706, label %vector.ph6690

vector.ph6690:                                    ; preds = %vector.main.loop.iter.check6688
  %i.axh = and i64 %i.axe, 12
  %n.vec6691 = and i64 %i.axe, 8589934576         ; 5 uses
  %i.axi = shl nuw nsw i64 %n.vec6691, 1          ; 3 uses
  %i.axj = getelementptr i8, ptr %.1.lcssa.i.i377, i64 %i.axi
  %i.axk = trunc i64 %n.vec6691 to i32
  %i.axl = add i32 %.125.lcssa.i.i376, %i.axk
  %i.axm = getelementptr i8, ptr %.128.lcssa.i.i375, i64 %i.axi
  %i.axn = getelementptr i8, ptr %.131.lcssa.i.i374, i64 %i.axi
  br label %vector.body6692

vector.body6692:                                  ; preds = %vector.ph6690, %vector.body6692
  %index6693 = phi i64 [ 0, %vector.ph6690 ], [ %index.next6699, %vector.body6692 ] ; 2 uses
  %i.axo = shl i64 %index6693, 1                  ; 3 uses
  %next.gep6694 = getelementptr i8, ptr %.1.lcssa.i.i377, i64 %i.axo
  %next.gep6695 = getelementptr i8, ptr %.128.lcssa.i.i375, i64 %i.axo
  %next.gep6696 = getelementptr i8, ptr %.131.lcssa.i.i374, i64 %i.axo
  %wide.load6697 = load <16 x i16>, ptr %next.gep6694, align 2, !tbaa !57
  %i.axp = zext <16 x i16> %wide.load6697 to <16 x i32>
  %i.axq = shl nuw <16 x i32> %i.axp, splat (i32 16)
  %i.axr = bitcast <16 x i32> %i.axq to <16 x float>
  %wide.load6698 = load <16 x i16>, ptr %next.gep6695, align 2, !tbaa !57
  %i.axs = zext <16 x i16> %wide.load6698 to <16 x i32>
  %i.axt = shl nuw <16 x i32> %i.axs, splat (i32 16)
  %i.axu = bitcast <16 x i32> %i.axt to <16 x float>
  %i.axv = fmul fast <16 x float> %i.axu, %i.axr
  %i.axw = bitcast <16 x float> %i.axv to <16 x i32>
  %i.axx = lshr <16 x i32> %i.axw, splat (i32 16)
  %i.axy = trunc nuw <16 x i32> %i.axx to <16 x i16>
  store <16 x i16> %i.axy, ptr %next.gep6696, align 2, !tbaa !57
  %index.next6699 = add nuw i64 %index6693, 16    ; 2 uses
  %i.axz = icmp eq i64 %index.next6699, %n.vec6691
  br i1 %i.axz, label %middle.block6700, label %vector.body6692, !llvm.loop !664

middle.block6700:                                 ; preds = %vector.body6692
  %cmp.n6701 = icmp eq i64 %i.axe, %n.vec6691
  br i1 %cmp.n6701, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check6703

vec.epilog.iter.check6703:                        ; preds = %middle.block6700
  %min.epilog.iters.check6705 = icmp eq i64 %i.axh, 0
  br i1 %min.epilog.iters.check6705, label %.lr.ph67.i.i378.preheader, label %vec.epilog.ph6706, !prof !64

vec.epilog.ph6706:                                ; preds = %vector.main.loop.iter.check6688, %vec.epilog.iter.check6703
  %vec.epilog.resume.val6707 = phi i64 [ %n.vec6691, %vec.epilog.iter.check6703 ], [ 0, %vector.main.loop.iter.check6688 ]
  %n.vec6708 = and i64 %i.axe, 8589934588         ; 4 uses
  %i.aya = shl nuw nsw i64 %n.vec6708, 1          ; 3 uses
  %i.ayb = getelementptr i8, ptr %.1.lcssa.i.i377, i64 %i.aya
  %i.ayc = trunc i64 %n.vec6708 to i32
  %i.ayd = add i32 %.125.lcssa.i.i376, %i.ayc
  %i.aye = getelementptr i8, ptr %.128.lcssa.i.i375, i64 %i.aya
  %i.ayf = getelementptr i8, ptr %.131.lcssa.i.i374, i64 %i.aya
  br label %vec.epilog.vector.body6709

vec.epilog.vector.body6709:                       ; preds = %vec.epilog.vector.body6709, %vec.epilog.ph6706
  %index6710 = phi i64 [ %vec.epilog.resume.val6707, %vec.epilog.ph6706 ], [ %index.next6716, %vec.epilog.vector.body6709 ] ; 2 uses
  %i.ayg = shl i64 %index6710, 1                  ; 3 uses
  %next.gep6711 = getelementptr i8, ptr %.1.lcssa.i.i377, i64 %i.ayg
  %next.gep6712 = getelementptr i8, ptr %.128.lcssa.i.i375, i64 %i.ayg
  %next.gep6713 = getelementptr i8, ptr %.131.lcssa.i.i374, i64 %i.ayg
  %wide.load6714 = load <4 x i16>, ptr %next.gep6711, align 2, !tbaa !57
  %i.ayh = zext <4 x i16> %wide.load6714 to <4 x i32>
  %i.ayi = shl nuw <4 x i32> %i.ayh, splat (i32 16)
  %i.ayj = bitcast <4 x i32> %i.ayi to <4 x float>
  %wide.load6715 = load <4 x i16>, ptr %next.gep6712, align 2, !tbaa !57
  %i.ayk = zext <4 x i16> %wide.load6715 to <4 x i32>
  %i.ayl = shl nuw <4 x i32> %i.ayk, splat (i32 16)
  %i.aym = bitcast <4 x i32> %i.ayl to <4 x float>
  %i.ayn = fmul fast <4 x float> %i.aym, %i.ayj
  %i.ayo = bitcast <4 x float> %i.ayn to <4 x i32>
  %i.ayp = lshr <4 x i32> %i.ayo, splat (i32 16)
  %i.ayq = trunc nuw <4 x i32> %i.ayp to <4 x i16>
  store <4 x i16> %i.ayq, ptr %next.gep6713, align 2, !tbaa !57
  %index.next6716 = add nuw i64 %index6710, 4     ; 2 uses
  %i.ayr = icmp eq i64 %index.next6716, %n.vec6708
  br i1 %i.ayr, label %vec.epilog.middle.block6717, label %vec.epilog.vector.body6709, !llvm.loop !665

vec.epilog.middle.block6717:                      ; preds = %vec.epilog.vector.body6709
  %cmp.n6718 = icmp eq i64 %i.axe, %n.vec6708
  br i1 %cmp.n6718, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i378.preheader

.lr.ph67.i.i378.preheader:                        ; preds = %iter.check6702, %vector.memcheck6684, %vec.epilog.iter.check6703, %vec.epilog.middle.block6717
  %.266.i.i379.ph = phi ptr [ %.1.lcssa.i.i377, %iter.check6702 ], [ %.1.lcssa.i.i377, %vector.memcheck6684 ], [ %i.axj, %vec.epilog.iter.check6703 ], [ %i.ayb, %vec.epilog.middle.block6717 ] ; 3 uses
  %.22665.i.i380.ph = phi i32 [ %.125.lcssa.i.i376, %iter.check6702 ], [ %.125.lcssa.i.i376, %vector.memcheck6684 ], [ %i.axl, %vec.epilog.iter.check6703 ], [ %i.ayd, %vec.epilog.middle.block6717 ] ; 4 uses
  %.22964.i.i381.ph = phi ptr [ %.128.lcssa.i.i375, %iter.check6702 ], [ %.128.lcssa.i.i375, %vector.memcheck6684 ], [ %i.axm, %vec.epilog.iter.check6703 ], [ %i.aye, %vec.epilog.middle.block6717 ] ; 3 uses
  %.23263.i.i382.ph = phi ptr [ %.131.lcssa.i.i374, %iter.check6702 ], [ %.131.lcssa.i.i374, %vector.memcheck6684 ], [ %i.axn, %vec.epilog.iter.check6703 ], [ %i.ayf, %vec.epilog.middle.block6717 ] ; 3 uses
  %i.ays = sub i32 %i.avw, %.22665.i.i380.ph
  %.neg8050 = add i32 %.22665.i.i380.ph, 1
  %xtraiter7956 = and i32 %i.ays, 1
  %lcmp.mod7957.not = icmp eq i32 %xtraiter7956, 0
  br i1 %lcmp.mod7957.not, label %.lr.ph67.i.i378.prol.loopexit, label %.lr.ph67.i.i378.prol

.lr.ph67.i.i378.prol:                             ; preds = %.lr.ph67.i.i378.preheader
  %i.ayt = getelementptr inbounds nuw i8, ptr %.266.i.i379.ph, i64 2
  %i.ayu = load i16, ptr %.266.i.i379.ph, align 2, !tbaa !57
  %i.ayv = zext i16 %i.ayu to i32
  %i.ayw = shl nuw i32 %i.ayv, 16
  %i.ayx = bitcast i32 %i.ayw to float
  %i.ayy = getelementptr inbounds nuw i8, ptr %.22964.i.i381.ph, i64 2
  %i.ayz = load i16, ptr %.22964.i.i381.ph, align 2, !tbaa !57
  %i.aza = zext i16 %i.ayz to i32
  %i.azb = shl nuw i32 %i.aza, 16
  %i.azc = bitcast i32 %i.azb to float
  %i.azd = fmul fast float %i.azc, %i.ayx
  %i.aze = bitcast float %i.azd to i32
  %i.azf = lshr i32 %i.aze, 16
  %i.azg = trunc nuw i32 %i.azf to i16
  %i.azh = getelementptr inbounds nuw i8, ptr %.23263.i.i382.ph, i64 2
  store i16 %i.azg, ptr %.23263.i.i382.ph, align 2, !tbaa !57
  %i.azi = add nuw nsw i32 %.22665.i.i380.ph, 1
  br label %.lr.ph67.i.i378.prol.loopexit

.lr.ph67.i.i378.prol.loopexit:                    ; preds = %.lr.ph67.i.i378.prol, %.lr.ph67.i.i378.preheader
  %.266.i.i379.unr = phi ptr [ %.266.i.i379.ph, %.lr.ph67.i.i378.preheader ], [ %i.ayt, %.lr.ph67.i.i378.prol ]
  %.22665.i.i380.unr = phi i32 [ %.22665.i.i380.ph, %.lr.ph67.i.i378.preheader ], [ %i.azi, %.lr.ph67.i.i378.prol ]
  %.22964.i.i381.unr = phi ptr [ %.22964.i.i381.ph, %.lr.ph67.i.i378.preheader ], [ %i.ayy, %.lr.ph67.i.i378.prol ]
  %.23263.i.i382.unr = phi ptr [ %.23263.i.i382.ph, %.lr.ph67.i.i378.preheader ], [ %i.azh, %.lr.ph67.i.i378.prol ]
  %i.azj = icmp eq i32 %i.avw, %.neg8050
  br i1 %i.azj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i378

.lr.ph58.i.i384:                                  ; preds = %.preheader46.i.i368, %.lr.ph58.i.i384
  %.157.i.i385 = phi ptr [ %i.baa, %.lr.ph58.i.i384 ], [ %.0.lcssa.i.i372, %.preheader46.i.i368 ] ; 2 uses
  %.12556.i.i386 = phi i32 [ %i.bad, %.lr.ph58.i.i384 ], [ %.024.lcssa.i.i371, %.preheader46.i.i368 ]
  %.12855.i.i387 = phi ptr [ %i.bab, %.lr.ph58.i.i384 ], [ %.027.lcssa.i.i370, %.preheader46.i.i368 ] ; 2 uses
  %.13154.i.i388 = phi ptr [ %i.bac, %.lr.ph58.i.i384 ], [ %.030.lcssa.i.i369, %.preheader46.i.i368 ] ; 2 uses
  %i.azk = load i64, ptr %.157.i.i385, align 1, !tbaa !60
  %i.azl = insertelement <2 x i64> poison, i64 %i.azk, i64 0
  %i.azm = bitcast <2 x i64> %i.azl to <8 x i16>
  %i.azn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azo = bitcast <8 x i16> %i.azn to <4 x float>
  %i.azp = load i64, ptr %.12855.i.i387, align 1, !tbaa !60
  %i.azq = insertelement <2 x i64> poison, i64 %i.azp, i64 0
  %i.azr = bitcast <2 x i64> %i.azq to <8 x i16>
  %i.azs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azt = bitcast <8 x i16> %i.azs to <4 x float>
  %i.azu = fmul fast <4 x float> %i.azt, %i.azo
  %i.azv = bitcast <4 x float> %i.azu to <4 x i32>
  %i.azw = lshr <4 x i32> %i.azv, splat (i32 16)
  %i.azx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.azw, <4 x i32> poison)
  %i.azy = bitcast <8 x i16> %i.azx to <2 x i64>
  %i.azz = extractelement <2 x i64> %i.azy, i64 0
  store i64 %i.azz, ptr %.13154.i.i388, align 1, !tbaa !60
  %i.baa = getelementptr inbounds nuw i8, ptr %.157.i.i385, i64 8 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %.12855.i.i387, i64 8 ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.13154.i.i388, i64 8 ; 2 uses
  %i.bad = add nuw nsw i32 %.12556.i.i386, 4      ; 3 uses
  %i.bae = or disjoint i32 %i.bad, 3
  %i.baf = icmp slt i32 %i.bae, %i.avw
  br i1 %i.baf, label %.lr.ph58.i.i384, label %.preheader.i.i373, !llvm.loop !666

.lr.ph67.i.i378:                                  ; preds = %.lr.ph67.i.i378.prol.loopexit, %.lr.ph67.i.i378
  %.266.i.i379 = phi ptr [ %i.bav, %.lr.ph67.i.i378 ], [ %.266.i.i379.unr, %.lr.ph67.i.i378.prol.loopexit ] ; 3 uses
  %.22665.i.i380 = phi i32 [ %i.bbk, %.lr.ph67.i.i378 ], [ %.22665.i.i380.unr, %.lr.ph67.i.i378.prol.loopexit ]
  %.22964.i.i381 = phi ptr [ %i.bba, %.lr.ph67.i.i378 ], [ %.22964.i.i381.unr, %.lr.ph67.i.i378.prol.loopexit ] ; 3 uses
  %.23263.i.i382 = phi ptr [ %i.bbj, %.lr.ph67.i.i378 ], [ %.23263.i.i382.unr, %.lr.ph67.i.i378.prol.loopexit ] ; 3 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.266.i.i379, i64 2
  %i.bah = load i16, ptr %.266.i.i379, align 2, !tbaa !57
  %i.bai = zext i16 %i.bah to i32
  %i.baj = shl nuw i32 %i.bai, 16
  %i.bak = bitcast i32 %i.baj to float
  %i.bal = getelementptr inbounds nuw i8, ptr %.22964.i.i381, i64 2
  %i.bam = load i16, ptr %.22964.i.i381, align 2, !tbaa !57
  %i.ban = zext i16 %i.bam to i32
  %i.bao = shl nuw i32 %i.ban, 16
  %i.bap = bitcast i32 %i.bao to float
  %i.baq = fmul fast float %i.bap, %i.bak
  %i.bar = bitcast float %i.baq to i32
  %i.bas = lshr i32 %i.bar, 16
  %i.bat = trunc nuw i32 %i.bas to i16
  %i.bau = getelementptr inbounds nuw i8, ptr %.23263.i.i382, i64 2
  store i16 %i.bat, ptr %.23263.i.i382, align 2, !tbaa !57
  %i.bav = getelementptr inbounds nuw i8, ptr %.266.i.i379, i64 4
  %i.baw = load i16, ptr %i.bag, align 2, !tbaa !57
  %i.bax = zext i16 %i.baw to i32
  %i.bay = shl nuw i32 %i.bax, 16
  %i.baz = bitcast i32 %i.bay to float
  %i.bba = getelementptr inbounds nuw i8, ptr %.22964.i.i381, i64 4
  %i.bbb = load i16, ptr %i.bal, align 2, !tbaa !57
  %i.bbc = zext i16 %i.bbb to i32
  %i.bbd = shl nuw i32 %i.bbc, 16
  %i.bbe = bitcast i32 %i.bbd to float
  %i.bbf = fmul fast float %i.bbe, %i.baz
  %i.bbg = bitcast float %i.bbf to i32
  %i.bbh = lshr i32 %i.bbg, 16
  %i.bbi = trunc nuw i32 %i.bbh to i16
  %i.bbj = getelementptr inbounds nuw i8, ptr %.23263.i.i382, i64 4
  store i16 %i.bbi, ptr %i.bau, align 2, !tbaa !57
  %i.bbk = add nuw nsw i32 %.22665.i.i380, 2      ; 2 uses
  %exitcond.not.i.i383.1 = icmp eq i32 %i.bbk, %i.avw
  br i1 %exitcond.not.i.i383.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i378, !llvm.loop !667

bb.ba:                                            ; preds = %bb.ay
  %i.bbl = icmp eq i32 %4, 1
end_hunk_8
begin_hunk_9_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.bra = lshr i32 %i.bqz, 16
  %i.brb = trunc nuw i32 %i.bra to i16
  %i.brc = getelementptr inbounds nuw i8, ptr %.22725.i.i297, i64 2
  store i16 %i.brb, ptr %.22725.i.i297, align 2, !tbaa !57
  %i.brd = getelementptr inbounds nuw i8, ptr %.228.i.i295, i64 4
  %i.bre = load i16, ptr %i.bqt, align 2, !tbaa !57
  %i.brf = zext i16 %i.bre to i32
  %i.brg = shl nuw i32 %i.brf, 16
  %i.brh = bitcast i32 %i.brg to float
  %i.bri = fmul fast float %i.brh, %i.bnh
  %i.brj = bitcast float %i.bri to i32
  %i.brk = lshr i32 %i.brj, 16
  %i.brl = trunc nuw i32 %i.brk to i16
  %i.brm = getelementptr inbounds nuw i8, ptr %.22725.i.i297, i64 4
  store i16 %i.brl, ptr %i.brc, align 2, !tbaa !57
  %i.brn = add nuw nsw i32 %.22426.i.i296, 2      ; 2 uses
  %exitcond.not.i72.i298.1 = icmp eq i32 %i.brn, %i.avw
  br i1 %exitcond.not.i72.i298.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph29.i.i294, !llvm.loop !684

bb.br:                                            ; preds = %bb.bp
  %i.bro = icmp eq i32 %3, 1
  br i1 %i.bro, label %bb.bs, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.bs:                                            ; preds = %bb.br
  switch i32 %.sroa.speculated.i274, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.bt
    i32 4, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.brp = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.brq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.brp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.brr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.brp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.brs = shufflevector <8 x i16> %i.brq, <8 x i16> %i.brr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.brt = bitcast <16 x i16> %i.brs to <8 x float> ; 3 uses
  %xtraiter7945 = and i32 %.sroa.speculated86.i273, 1
  %i.bru = icmp eq i32 %.sroa.speculated86.i273, 1
  br i1 %i.bru, label %.lr.ph39.i.i280.epil.preheader, label %.new7944

.new7944:                                         ; preds = %bb.bt
  %unroll_iter7948 = and i32 %.sroa.speculated86.i273, 2147483646
  br label %.lr.ph39.i.i280

.lr.ph39.i.i280:                                  ; preds = %.lr.ph39.i.i280, %.new7944
  %.01838.i.i281 = phi ptr [ %1, %.new7944 ], [ %i.bsx, %.lr.ph39.i.i280 ] ; 3 uses
  %.02036.i.i283 = phi ptr [ %2, %.new7944 ], [ %i.bsy, %.lr.ph39.i.i280 ] ; 3 uses
  %niter7949 = phi i32 [ 0, %.new7944 ], [ %niter7949.next.1, %.lr.ph39.i.i280 ]
  %i.brv = load i16, ptr %.01838.i.i281, align 2, !tbaa !57
  %i.brw = zext i16 %i.brv to i32
  %i.brx = shl nuw i32 %i.brw, 16
  %i.bry = insertelement <8 x i32> poison, i32 %i.brx, i64 0
  %i.brz = bitcast <8 x i32> %i.bry to <8 x float>
  %i.bsa = shufflevector <8 x float> %i.brz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bsb = fmul fast <8 x float> %i.bsa, %i.brt
  %i.bsc = bitcast <8 x float> %i.bsb to <8 x i32> ; 2 uses
  %i.bsd = shufflevector <8 x i32> %i.bsc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bse = shufflevector <8 x i32> %i.bsc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsf = lshr <4 x i32> %i.bsd, splat (i32 16)
  %i.bsg = lshr <4 x i32> %i.bse, splat (i32 16)
  %i.bsh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bsf, <4 x i32> %i.bsg)
  store <8 x i16> %i.bsh, ptr %.02036.i.i283, align 1, !tbaa !60
  %i.bsi = getelementptr inbounds nuw i8, ptr %.01838.i.i281, i64 2
  %i.bsj = getelementptr inbounds nuw i8, ptr %.02036.i.i283, i64 16
  %i.bsk = load i16, ptr %i.bsi, align 2, !tbaa !57
  %i.bsl = zext i16 %i.bsk to i32
  %i.bsm = shl nuw i32 %i.bsl, 16
  %i.bsn = insertelement <8 x i32> poison, i32 %i.bsm, i64 0
  %i.bso = bitcast <8 x i32> %i.bsn to <8 x float>
  %i.bsp = shufflevector <8 x float> %i.bso, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bsq = fmul fast <8 x float> %i.bsp, %i.brt
  %i.bsr = bitcast <8 x float> %i.bsq to <8 x i32> ; 2 uses
  %i.bss = shufflevector <8 x i32> %i.bsr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bst = shufflevector <8 x i32> %i.bsr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsu = lshr <4 x i32> %i.bss, splat (i32 16)
  %i.bsv = lshr <4 x i32> %i.bst, splat (i32 16)
  %i.bsw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bsu, <4 x i32> %i.bsv)
  store <8 x i16> %i.bsw, ptr %i.bsj, align 1, !tbaa !60
  %i.bsx = getelementptr inbounds nuw i8, ptr %.01838.i.i281, i64 4 ; 2 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %.02036.i.i283, i64 32 ; 2 uses
  %niter7949.next.1 = add i32 %niter7949, 2       ; 2 uses
  %niter7949.ncmp.1 = icmp eq i32 %niter7949.next.1, %unroll_iter7948
  br i1 %niter7949.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7269.unr-lcssa, label %.lr.ph39.i.i280, !llvm.loop !685

bb.bu:                                            ; preds = %bb.bs
  %i.bsz = load i64, ptr %0, align 1, !tbaa !60
  %i.bta = insertelement <2 x i64> poison, i64 %i.bsz, i64 0
  %i.btb = bitcast <2 x i64> %i.bta to <8 x i16>
  %i.btc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.btb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.btd = bitcast <8 x i16> %i.btc to <4 x float> ; 3 uses
  %xtraiter7939 = and i32 %.sroa.speculated86.i273, 1
  %i.bte = icmp eq i32 %.sroa.speculated86.i273, 1
  br i1 %i.bte, label %.lr.ph.i74.i275.epil.preheader, label %.new7938

.new7938:                                         ; preds = %bb.bu
  %unroll_iter7942 = and i32 %.sroa.speculated86.i273, 2147483646
  br label %.lr.ph.i74.i275

.lr.ph.i74.i275:                                  ; preds = %.lr.ph.i74.i275, %.new7938
  %.134.i.i277 = phi ptr [ %1, %.new7938 ], [ %i.buf, %.lr.ph.i74.i275 ] ; 3 uses
  %.12133.i.i278 = phi ptr [ %2, %.new7938 ], [ %i.bug, %.lr.ph.i74.i275 ] ; 3 uses
  %niter7943 = phi i32 [ 0, %.new7938 ], [ %niter7943.next.1, %.lr.ph.i74.i275 ]
  %i.btf = load i16, ptr %.134.i.i277, align 2, !tbaa !57
  %i.btg = zext i16 %i.btf to i32
  %i.bth = shl nuw i32 %i.btg, 16
  %i.bti = insertelement <4 x i32> poison, i32 %i.bth, i64 0
  %i.btj = bitcast <4 x i32> %i.bti to <4 x float>
  %i.btk = shufflevector <4 x float> %i.btj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.btl = fmul fast <4 x float> %i.btk, %i.btd
  %i.btm = bitcast <4 x float> %i.btl to <4 x i32>
  %i.btn = lshr <4 x i32> %i.btm, splat (i32 16)
  %i.bto = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.btn, <4 x i32> poison)
  %i.btp = bitcast <8 x i16> %i.bto to <2 x i64>
  %i.btq = extractelement <2 x i64> %i.btp, i64 0
  store i64 %i.btq, ptr %.12133.i.i278, align 1, !tbaa !60
  %i.btr = getelementptr inbounds nuw i8, ptr %.134.i.i277, i64 2
  %i.bts = getelementptr inbounds nuw i8, ptr %.12133.i.i278, i64 8
  %i.btt = load i16, ptr %i.btr, align 2, !tbaa !57
  %i.btu = zext i16 %i.btt to i32
  %i.btv = shl nuw i32 %i.btu, 16
  %i.btw = insertelement <4 x i32> poison, i32 %i.btv, i64 0
  %i.btx = bitcast <4 x i32> %i.btw to <4 x float>
  %i.bty = shufflevector <4 x float> %i.btx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.btz = fmul fast <4 x float> %i.bty, %i.btd
  %i.bua = bitcast <4 x float> %i.btz to <4 x i32>
  %i.bub = lshr <4 x i32> %i.bua, splat (i32 16)
  %i.buc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bub, <4 x i32> poison)
  %i.bud = bitcast <8 x i16> %i.buc to <2 x i64>
  %i.bue = extractelement <2 x i64> %i.bud, i64 0
  store i64 %i.bue, ptr %i.bts, align 1, !tbaa !60
  %i.buf = getelementptr inbounds nuw i8, ptr %.134.i.i277, i64 4 ; 2 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %.12133.i.i278, i64 16 ; 2 uses
  %niter7943.next.1 = add i32 %niter7943, 2       ; 2 uses
  %niter7943.ncmp.1 = icmp eq i32 %niter7943.next.1, %unroll_iter7942
  br i1 %niter7943.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7270.unr-lcssa, label %.lr.ph.i74.i275, !llvm.loop !686

bb.bv:                                            ; preds = %bb.a
  %.sroa.speculated86.i395 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i396 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.buh = mul i32 %.sroa.speculated.i396, %.sroa.speculated86.i395 ; 40 uses
  %i.bui = icmp eq i32 %5, %6
  br i1 %i.bui, label %bb.bw, label %bb.ck

bb.bw:                                            ; preds = %bb.bv
  %i.buj = icmp eq i32 %3, %4
  br i1 %i.buj, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.buk = icmp sgt i32 %i.buh, 7
  br i1 %i.buk, label %.lr.ph.i.i511, label %.preheader46.i.i490

.preheader46.loopexit.i.i516:                     ; preds = %.lr.ph.i.i511
  %i.bul = and i32 %i.buh, 2147483640
  br label %.preheader46.i.i490

.preheader46.i.i490:                              ; preds = %.preheader46.loopexit.i.i516, %bb.bx
  %.030.lcssa.i.i491 = phi ptr [ %2, %bb.bx ], [ %i.bvh, %.preheader46.loopexit.i.i516 ] ; 2 uses
  %.027.lcssa.i.i492 = phi ptr [ %1, %bb.bx ], [ %i.bvg, %.preheader46.loopexit.i.i516 ] ; 2 uses
  %.024.lcssa.i.i493 = phi i32 [ 0, %bb.bx ], [ %i.bul, %.preheader46.loopexit.i.i516 ] ; 3 uses
  %.0.lcssa.i.i494 = phi ptr [ %0, %bb.bx ], [ %i.bvf, %.preheader46.loopexit.i.i516 ] ; 2 uses
  %i.bum = or disjoint i32 %.024.lcssa.i.i493, 3
  %i.bun = icmp slt i32 %i.bum, %i.buh
  br i1 %i.bun, label %.lr.ph58.i.i506, label %.preheader.i.i495

.lr.ph.i.i511:                                    ; preds = %bb.bx, %.lr.ph.i.i511
  %.050.i.i512 = phi ptr [ %i.bvf, %.lr.ph.i.i511 ], [ %0, %bb.bx ] ; 2 uses
  %.02449.i.i513 = phi i32 [ %i.bvi, %.lr.ph.i.i511 ], [ 0, %bb.bx ]
  %.02748.i.i514 = phi ptr [ %i.bvg, %.lr.ph.i.i511 ], [ %1, %bb.bx ] ; 2 uses
  %.03047.i.i515 = phi ptr [ %i.bvh, %.lr.ph.i.i511 ], [ %2, %bb.bx ] ; 2 uses
  %i.buo = load <8 x i16>, ptr %.050.i.i512, align 1, !tbaa !60 ; 2 uses
  %i.bup = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.buo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.buq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.buo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bur = shufflevector <8 x i16> %i.bup, <8 x i16> %i.buq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bus = bitcast <16 x i16> %i.bur to <8 x float>
  %i.but = load <8 x i16>, ptr %.02748.i.i514, align 1, !tbaa !60 ; 2 uses
  %i.buu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.but, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.buv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.but, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.buw = shufflevector <8 x i16> %i.buu, <8 x i16> %i.buv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bux = bitcast <16 x i16> %i.buw to <8 x float>
  %i.buy = fdiv fast <8 x float> %i.bus, %i.bux
  %i.buz = bitcast <8 x float> %i.buy to <8 x i32> ; 2 uses
  %i.bva = shufflevector <8 x i32> %i.buz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvb = shufflevector <8 x i32> %i.buz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvc = lshr <4 x i32> %i.bva, splat (i32 16)
  %i.bvd = lshr <4 x i32> %i.bvb, splat (i32 16)
  %i.bve = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvc, <4 x i32> %i.bvd)
  store <8 x i16> %i.bve, ptr %.03047.i.i515, align 1, !tbaa !60
  %i.bvf = getelementptr inbounds nuw i8, ptr %.050.i.i512, i64 16 ; 2 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %.02748.i.i514, i64 16 ; 2 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %.03047.i.i515, i64 16 ; 2 uses
  %i.bvi = add nuw nsw i32 %.02449.i.i513, 8      ; 2 uses
  %i.bvj = or disjoint i32 %i.bvi, 7
  %i.bvk = icmp slt i32 %i.bvj, %i.buh
  br i1 %i.bvk, label %.lr.ph.i.i511, label %.preheader46.loopexit.i.i516, !llvm.loop !687

.preheader.i.i495:                                ; preds = %.lr.ph58.i.i506, %.preheader46.i.i490
  %.131.lcssa.i.i496 = phi ptr [ %.030.lcssa.i.i491, %.preheader46.i.i490 ], [ %i.byn, %.lr.ph58.i.i506 ] ; 7 uses
  %.128.lcssa.i.i497 = phi ptr [ %.027.lcssa.i.i492, %.preheader46.i.i490 ], [ %i.bym, %.lr.ph58.i.i506 ] ; 7 uses
  %.125.lcssa.i.i498 = phi i32 [ %.024.lcssa.i.i493, %.preheader46.i.i490 ], [ %i.byo, %.lr.ph58.i.i506 ] ; 6 uses
  %.1.lcssa.i.i499 = phi ptr [ %.0.lcssa.i.i494, %.preheader46.i.i490 ], [ %i.byl, %.lr.ph58.i.i506 ] ; 7 uses
  %.128.lcssa.i.i4976501 = ptrtoaddr ptr %.128.lcssa.i.i497 to i64
  %.131.lcssa.i.i4966502 = ptrtoaddr ptr %.1.lcssa.i.i499 to i64
  %.1.lcssa.i.i4996503 = ptrtoaddr ptr %.131.lcssa.i.i496 to i64 ; 2 uses
  %i.bvl = icmp slt i32 %.125.lcssa.i.i498, %i.buh
  br i1 %i.bvl, label %iter.check6523, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6523:                                   ; preds = %.preheader.i.i495
  %i.bvm = xor i32 %.125.lcssa.i.i498, -1
  %i.bvn = add i32 %i.buh, %i.bvm                 ; 3 uses
  %i.bvo = zext i32 %i.bvn to i64
  %i.bvp = add nuw nsw i64 %i.bvo, 1              ; 5 uses
  %min.iters.check6504 = icmp ult i32 %i.bvn, 3
  br i1 %min.iters.check6504, label %.lr.ph67.i.i500.preheader, label %vector.memcheck6505

vector.memcheck6505:                              ; preds = %iter.check6523
  %i.bvq = sub i64 %.131.lcssa.i.i4966502, %.1.lcssa.i.i4996503
  %diff.check6506 = icmp ugt i64 %i.bvq, -32
  %i.bvr = sub i64 %.128.lcssa.i.i4976501, %.1.lcssa.i.i4996503
  %diff.check6507 = icmp ugt i64 %i.bvr, -32
  %conflict.rdx6508 = or i1 %diff.check6506, %diff.check6507
  br i1 %conflict.rdx6508, label %.lr.ph67.i.i500.preheader, label %vector.main.loop.iter.check6509

vector.main.loop.iter.check6509:                  ; preds = %vector.memcheck6505
  %min.iters.check6510 = icmp ult i32 %i.bvn, 15
  br i1 %min.iters.check6510, label %vec.epilog.ph6527, label %vector.ph6511

vector.ph6511:                                    ; preds = %vector.main.loop.iter.check6509
  %i.bvs = and i64 %i.bvp, 12
  %n.vec6512 = and i64 %i.bvp, 8589934576         ; 5 uses
  %i.bvt = shl nuw nsw i64 %n.vec6512, 1          ; 3 uses
  %i.bvu = getelementptr i8, ptr %.1.lcssa.i.i499, i64 %i.bvt
  %i.bvv = trunc i64 %n.vec6512 to i32
  %i.bvw = add i32 %.125.lcssa.i.i498, %i.bvv
  %i.bvx = getelementptr i8, ptr %.128.lcssa.i.i497, i64 %i.bvt
  %i.bvy = getelementptr i8, ptr %.131.lcssa.i.i496, i64 %i.bvt
  br label %vector.body6513

vector.body6513:                                  ; preds = %vector.ph6511, %vector.body6513
  %index6514 = phi i64 [ 0, %vector.ph6511 ], [ %index.next6520, %vector.body6513 ] ; 2 uses
  %i.bvz = shl i64 %index6514, 1                  ; 3 uses
  %next.gep6515 = getelementptr i8, ptr %.1.lcssa.i.i499, i64 %i.bvz
  %next.gep6516 = getelementptr i8, ptr %.128.lcssa.i.i497, i64 %i.bvz
  %next.gep6517 = getelementptr i8, ptr %.131.lcssa.i.i496, i64 %i.bvz
  %wide.load6518 = load <16 x i16>, ptr %next.gep6515, align 2, !tbaa !57
  %i.bwa = zext <16 x i16> %wide.load6518 to <16 x i32>
  %i.bwb = shl nuw <16 x i32> %i.bwa, splat (i32 16)
  %i.bwc = bitcast <16 x i32> %i.bwb to <16 x float>
  %wide.load6519 = load <16 x i16>, ptr %next.gep6516, align 2, !tbaa !57
  %i.bwd = zext <16 x i16> %wide.load6519 to <16 x i32>
  %i.bwe = shl nuw <16 x i32> %i.bwd, splat (i32 16)
  %i.bwf = bitcast <16 x i32> %i.bwe to <16 x float>
  %i.bwg = fdiv fast <16 x float> %i.bwc, %i.bwf
  %i.bwh = bitcast <16 x float> %i.bwg to <16 x i32>
  %i.bwi = lshr <16 x i32> %i.bwh, splat (i32 16)
  %i.bwj = trunc nuw <16 x i32> %i.bwi to <16 x i16>
  store <16 x i16> %i.bwj, ptr %next.gep6517, align 2, !tbaa !57
  %index.next6520 = add nuw i64 %index6514, 16    ; 2 uses
  %i.bwk = icmp eq i64 %index.next6520, %n.vec6512
  br i1 %i.bwk, label %middle.block6521, label %vector.body6513, !llvm.loop !688

middle.block6521:                                 ; preds = %vector.body6513
  %cmp.n6522 = icmp eq i64 %i.bvp, %n.vec6512
  br i1 %cmp.n6522, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check6524

vec.epilog.iter.check6524:                        ; preds = %middle.block6521
  %min.epilog.iters.check6526 = icmp eq i64 %i.bvs, 0
  br i1 %min.epilog.iters.check6526, label %.lr.ph67.i.i500.preheader, label %vec.epilog.ph6527, !prof !64

vec.epilog.ph6527:                                ; preds = %vector.main.loop.iter.check6509, %vec.epilog.iter.check6524
  %vec.epilog.resume.val6528 = phi i64 [ %n.vec6512, %vec.epilog.iter.check6524 ], [ 0, %vector.main.loop.iter.check6509 ]
  %n.vec6529 = and i64 %i.bvp, 8589934588         ; 4 uses
  %i.bwl = shl nuw nsw i64 %n.vec6529, 1          ; 3 uses
  %i.bwm = getelementptr i8, ptr %.1.lcssa.i.i499, i64 %i.bwl
  %i.bwn = trunc i64 %n.vec6529 to i32
  %i.bwo = add i32 %.125.lcssa.i.i498, %i.bwn
  %i.bwp = getelementptr i8, ptr %.128.lcssa.i.i497, i64 %i.bwl
  %i.bwq = getelementptr i8, ptr %.131.lcssa.i.i496, i64 %i.bwl
  br label %vec.epilog.vector.body6530

vec.epilog.vector.body6530:                       ; preds = %vec.epilog.vector.body6530, %vec.epilog.ph6527
  %index6531 = phi i64 [ %vec.epilog.resume.val6528, %vec.epilog.ph6527 ], [ %index.next6537, %vec.epilog.vector.body6530 ] ; 2 uses
  %i.bwr = shl i64 %index6531, 1                  ; 3 uses
  %next.gep6532 = getelementptr i8, ptr %.1.lcssa.i.i499, i64 %i.bwr
  %next.gep6533 = getelementptr i8, ptr %.128.lcssa.i.i497, i64 %i.bwr
  %next.gep6534 = getelementptr i8, ptr %.131.lcssa.i.i496, i64 %i.bwr
  %wide.load6535 = load <4 x i16>, ptr %next.gep6532, align 2, !tbaa !57
  %i.bws = zext <4 x i16> %wide.load6535 to <4 x i32>
  %i.bwt = shl nuw <4 x i32> %i.bws, splat (i32 16)
  %i.bwu = bitcast <4 x i32> %i.bwt to <4 x float>
  %wide.load6536 = load <4 x i16>, ptr %next.gep6533, align 2, !tbaa !57
  %i.bwv = zext <4 x i16> %wide.load6536 to <4 x i32>
  %i.bww = shl nuw <4 x i32> %i.bwv, splat (i32 16)
  %i.bwx = bitcast <4 x i32> %i.bww to <4 x float>
  %i.bwy = fdiv fast <4 x float> %i.bwu, %i.bwx
  %i.bwz = bitcast <4 x float> %i.bwy to <4 x i32>
  %i.bxa = lshr <4 x i32> %i.bwz, splat (i32 16)
  %i.bxb = trunc nuw <4 x i32> %i.bxa to <4 x i16>
  store <4 x i16> %i.bxb, ptr %next.gep6534, align 2, !tbaa !57
  %index.next6537 = add nuw i64 %index6531, 4     ; 2 uses
  %i.bxc = icmp eq i64 %index.next6537, %n.vec6529
  br i1 %i.bxc, label %vec.epilog.middle.block6538, label %vec.epilog.vector.body6530, !llvm.loop !689

vec.epilog.middle.block6538:                      ; preds = %vec.epilog.vector.body6530
  %cmp.n6539 = icmp eq i64 %i.bvp, %n.vec6529
  br i1 %cmp.n6539, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i500.preheader

.lr.ph67.i.i500.preheader:                        ; preds = %iter.check6523, %vector.memcheck6505, %vec.epilog.iter.check6524, %vec.epilog.middle.block6538
  %.266.i.i501.ph = phi ptr [ %.1.lcssa.i.i499, %iter.check6523 ], [ %.1.lcssa.i.i499, %vector.memcheck6505 ], [ %i.bvu, %vec.epilog.iter.check6524 ], [ %i.bwm, %vec.epilog.middle.block6538 ] ; 3 uses
  %.22665.i.i502.ph = phi i32 [ %.125.lcssa.i.i498, %iter.check6523 ], [ %.125.lcssa.i.i498, %vector.memcheck6505 ], [ %i.bvw, %vec.epilog.iter.check6524 ], [ %i.bwo, %vec.epilog.middle.block6538 ] ; 4 uses
  %.22964.i.i503.ph = phi ptr [ %.128.lcssa.i.i497, %iter.check6523 ], [ %.128.lcssa.i.i497, %vector.memcheck6505 ], [ %i.bvx, %vec.epilog.iter.check6524 ], [ %i.bwp, %vec.epilog.middle.block6538 ] ; 3 uses
  %.23263.i.i504.ph = phi ptr [ %.131.lcssa.i.i496, %iter.check6523 ], [ %.131.lcssa.i.i496, %vector.memcheck6505 ], [ %i.bvy, %vec.epilog.iter.check6524 ], [ %i.bwq, %vec.epilog.middle.block6538 ] ; 3 uses
  %i.bxd = sub i32 %i.buh, %.22665.i.i502.ph
  %.neg8046 = add i32 %.22665.i.i502.ph, 1
  %xtraiter7936 = and i32 %i.bxd, 1
  %lcmp.mod7937.not = icmp eq i32 %xtraiter7936, 0
  br i1 %lcmp.mod7937.not, label %.lr.ph67.i.i500.prol.loopexit, label %.lr.ph67.i.i500.prol

.lr.ph67.i.i500.prol:                             ; preds = %.lr.ph67.i.i500.preheader
  %i.bxe = getelementptr inbounds nuw i8, ptr %.266.i.i501.ph, i64 2
  %i.bxf = load i16, ptr %.266.i.i501.ph, align 2, !tbaa !57
  %i.bxg = zext i16 %i.bxf to i32
  %i.bxh = shl nuw i32 %i.bxg, 16
  %i.bxi = bitcast i32 %i.bxh to float
  %i.bxj = getelementptr inbounds nuw i8, ptr %.22964.i.i503.ph, i64 2
  %i.bxk = load i16, ptr %.22964.i.i503.ph, align 2, !tbaa !57
  %i.bxl = zext i16 %i.bxk to i32
  %i.bxm = shl nuw i32 %i.bxl, 16
  %i.bxn = bitcast i32 %i.bxm to float
  %i.bxo = fdiv fast float %i.bxi, %i.bxn
  %i.bxp = bitcast float %i.bxo to i32
  %i.bxq = lshr i32 %i.bxp, 16
  %i.bxr = trunc nuw i32 %i.bxq to i16
  %i.bxs = getelementptr inbounds nuw i8, ptr %.23263.i.i504.ph, i64 2
  store i16 %i.bxr, ptr %.23263.i.i504.ph, align 2, !tbaa !57
  %i.bxt = add nuw nsw i32 %.22665.i.i502.ph, 1
  br label %.lr.ph67.i.i500.prol.loopexit

.lr.ph67.i.i500.prol.loopexit:                    ; preds = %.lr.ph67.i.i500.prol, %.lr.ph67.i.i500.preheader
  %.266.i.i501.unr = phi ptr [ %.266.i.i501.ph, %.lr.ph67.i.i500.preheader ], [ %i.bxe, %.lr.ph67.i.i500.prol ]
  %.22665.i.i502.unr = phi i32 [ %.22665.i.i502.ph, %.lr.ph67.i.i500.preheader ], [ %i.bxt, %.lr.ph67.i.i500.prol ]
  %.22964.i.i503.unr = phi ptr [ %.22964.i.i503.ph, %.lr.ph67.i.i500.preheader ], [ %i.bxj, %.lr.ph67.i.i500.prol ]
  %.23263.i.i504.unr = phi ptr [ %.23263.i.i504.ph, %.lr.ph67.i.i500.preheader ], [ %i.bxs, %.lr.ph67.i.i500.prol ]
  %i.bxu = icmp eq i32 %i.buh, %.neg8046
  br i1 %i.bxu, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i500

.lr.ph58.i.i506:                                  ; preds = %.preheader46.i.i490, %.lr.ph58.i.i506
  %.157.i.i507 = phi ptr [ %i.byl, %.lr.ph58.i.i506 ], [ %.0.lcssa.i.i494, %.preheader46.i.i490 ] ; 2 uses
  %.12556.i.i508 = phi i32 [ %i.byo, %.lr.ph58.i.i506 ], [ %.024.lcssa.i.i493, %.preheader46.i.i490 ]
  %.12855.i.i509 = phi ptr [ %i.bym, %.lr.ph58.i.i506 ], [ %.027.lcssa.i.i492, %.preheader46.i.i490 ] ; 2 uses
  %.13154.i.i510 = phi ptr [ %i.byn, %.lr.ph58.i.i506 ], [ %.030.lcssa.i.i491, %.preheader46.i.i490 ] ; 2 uses
  %i.bxv = load i64, ptr %.157.i.i507, align 1, !tbaa !60
  %i.bxw = insertelement <2 x i64> poison, i64 %i.bxv, i64 0
  %i.bxx = bitcast <2 x i64> %i.bxw to <8 x i16>
  %i.bxy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bxx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bxz = bitcast <8 x i16> %i.bxy to <4 x float>
  %i.bya = load i64, ptr %.12855.i.i509, align 1, !tbaa !60
  %i.byb = insertelement <2 x i64> poison, i64 %i.bya, i64 0
  %i.byc = bitcast <2 x i64> %i.byb to <8 x i16>
  %i.byd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.byc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bye = bitcast <8 x i16> %i.byd to <4 x float>
  %i.byf = fdiv fast <4 x float> %i.bxz, %i.bye
  %i.byg = bitcast <4 x float> %i.byf to <4 x i32>
  %i.byh = lshr <4 x i32> %i.byg, splat (i32 16)
  %i.byi = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.byh, <4 x i32> poison)
  %i.byj = bitcast <8 x i16> %i.byi to <2 x i64>
  %i.byk = extractelement <2 x i64> %i.byj, i64 0
  store i64 %i.byk, ptr %.13154.i.i510, align 1, !tbaa !60
  %i.byl = getelementptr inbounds nuw i8, ptr %.157.i.i507, i64 8 ; 2 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %.12855.i.i509, i64 8 ; 2 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %.13154.i.i510, i64 8 ; 2 uses
  %i.byo = add nuw nsw i32 %.12556.i.i508, 4      ; 3 uses
  %i.byp = or disjoint i32 %i.byo, 3
  %i.byq = icmp slt i32 %i.byp, %i.buh
  br i1 %i.byq, label %.lr.ph58.i.i506, label %.preheader.i.i495, !llvm.loop !690

.lr.ph67.i.i500:                                  ; preds = %.lr.ph67.i.i500.prol.loopexit, %.lr.ph67.i.i500
  %.266.i.i501 = phi ptr [ %i.bzg, %.lr.ph67.i.i500 ], [ %.266.i.i501.unr, %.lr.ph67.i.i500.prol.loopexit ] ; 3 uses
  %.22665.i.i502 = phi i32 [ %i.bzv, %.lr.ph67.i.i500 ], [ %.22665.i.i502.unr, %.lr.ph67.i.i500.prol.loopexit ]
  %.22964.i.i503 = phi ptr [ %i.bzl, %.lr.ph67.i.i500 ], [ %.22964.i.i503.unr, %.lr.ph67.i.i500.prol.loopexit ] ; 3 uses
  %.23263.i.i504 = phi ptr [ %i.bzu, %.lr.ph67.i.i500 ], [ %.23263.i.i504.unr, %.lr.ph67.i.i500.prol.loopexit ] ; 3 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %.266.i.i501, i64 2
  %i.bys = load i16, ptr %.266.i.i501, align 2, !tbaa !57
  %i.byt = zext i16 %i.bys to i32
  %i.byu = shl nuw i32 %i.byt, 16
  %i.byv = bitcast i32 %i.byu to float
  %i.byw = getelementptr inbounds nuw i8, ptr %.22964.i.i503, i64 2
  %i.byx = load i16, ptr %.22964.i.i503, align 2, !tbaa !57
  %i.byy = zext i16 %i.byx to i32
  %i.byz = shl nuw i32 %i.byy, 16
  %i.bza = bitcast i32 %i.byz to float
  %i.bzb = fdiv fast float %i.byv, %i.bza
  %i.bzc = bitcast float %i.bzb to i32
  %i.bzd = lshr i32 %i.bzc, 16
  %i.bze = trunc nuw i32 %i.bzd to i16
  %i.bzf = getelementptr inbounds nuw i8, ptr %.23263.i.i504, i64 2
  store i16 %i.bze, ptr %.23263.i.i504, align 2, !tbaa !57
  %i.bzg = getelementptr inbounds nuw i8, ptr %.266.i.i501, i64 4
  %i.bzh = load i16, ptr %i.byr, align 2, !tbaa !57
  %i.bzi = zext i16 %i.bzh to i32
  %i.bzj = shl nuw i32 %i.bzi, 16
  %i.bzk = bitcast i32 %i.bzj to float
  %i.bzl = getelementptr inbounds nuw i8, ptr %.22964.i.i503, i64 4
  %i.bzm = load i16, ptr %i.byw, align 2, !tbaa !57
  %i.bzn = zext i16 %i.bzm to i32
  %i.bzo = shl nuw i32 %i.bzn, 16
  %i.bzp = bitcast i32 %i.bzo to float
  %i.bzq = fdiv fast float %i.bzk, %i.bzp
  %i.bzr = bitcast float %i.bzq to i32
  %i.bzs = lshr i32 %i.bzr, 16
  %i.bzt = trunc nuw i32 %i.bzs to i16
  %i.bzu = getelementptr inbounds nuw i8, ptr %.23263.i.i504, i64 4
  store i16 %i.bzt, ptr %i.bzf, align 2, !tbaa !57
  %i.bzv = add nuw nsw i32 %.22665.i.i502, 2      ; 2 uses
  %exitcond.not.i.i505.1 = icmp eq i32 %i.bzv, %i.buh
  br i1 %exitcond.not.i.i505.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i500, !llvm.loop !691

bb.by:                                            ; preds = %bb.bw
  %i.bzw = icmp eq i32 %4, 1
end_hunk_9
begin_hunk_10_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.cpv = lshr i32 %i.cpu, 16
  %i.cpw = trunc nuw i32 %i.cpv to i16
  %i.cpx = getelementptr inbounds nuw i8, ptr %.22725.i.i419, i64 2
  store i16 %i.cpw, ptr %.22725.i.i419, align 2, !tbaa !57
  %i.cpy = getelementptr inbounds nuw i8, ptr %.228.i.i417, i64 4
  %i.cpz = load i16, ptr %i.cpo, align 2, !tbaa !57
  %i.cqa = zext i16 %i.cpz to i32
  %i.cqb = shl nuw i32 %i.cqa, 16
  %i.cqc = bitcast i32 %i.cqb to float
  %i.cqd = fmul fast float %i.cqc, %i.cox
  %i.cqe = bitcast float %i.cqd to i32
  %i.cqf = lshr i32 %i.cqe, 16
  %i.cqg = trunc nuw i32 %i.cqf to i16
  %i.cqh = getelementptr inbounds nuw i8, ptr %.22725.i.i419, i64 4
  store i16 %i.cqg, ptr %i.cpx, align 2, !tbaa !57
  %i.cqi = add nuw nsw i32 %.22426.i.i418, 2      ; 2 uses
  %exitcond.not.i72.i420.1 = icmp eq i32 %i.cqi, %i.buh
  br i1 %exitcond.not.i72.i420.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph29.i.i416, !llvm.loop !708

bb.cp:                                            ; preds = %bb.cn
  %i.cqj = icmp eq i32 %3, 1
  br i1 %i.cqj, label %bb.cq, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.cq:                                            ; preds = %bb.cp
  switch i32 %.sroa.speculated.i396, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.cr
    i32 4, label %bb.cs
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.cqk = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.cql = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cqk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cqn = shufflevector <8 x i16> %i.cql, <8 x i16> %i.cqm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cqo = bitcast <16 x i16> %i.cqn to <8 x float> ; 3 uses
  %xtraiter7925 = and i32 %.sroa.speculated86.i395, 1
  %i.cqp = icmp eq i32 %.sroa.speculated86.i395, 1
  br i1 %i.cqp, label %.lr.ph39.i.i402.epil.preheader, label %.new7924

.new7924:                                         ; preds = %bb.cr
  %unroll_iter7928 = and i32 %.sroa.speculated86.i395, 2147483646
  br label %.lr.ph39.i.i402

.lr.ph39.i.i402:                                  ; preds = %.lr.ph39.i.i402, %.new7924
  %.01838.i.i403 = phi ptr [ %1, %.new7924 ], [ %i.crs, %.lr.ph39.i.i402 ] ; 3 uses
  %.02036.i.i405 = phi ptr [ %2, %.new7924 ], [ %i.crt, %.lr.ph39.i.i402 ] ; 3 uses
  %niter7929 = phi i32 [ 0, %.new7924 ], [ %niter7929.next.1, %.lr.ph39.i.i402 ]
  %i.cqq = load i16, ptr %.01838.i.i403, align 2, !tbaa !57
  %i.cqr = zext i16 %i.cqq to i32
  %i.cqs = shl nuw i32 %i.cqr, 16
  %i.cqt = insertelement <8 x i32> poison, i32 %i.cqs, i64 0
  %i.cqu = bitcast <8 x i32> %i.cqt to <8 x float>
  %i.cqv = shufflevector <8 x float> %i.cqu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cqw = fdiv fast <8 x float> %i.cqo, %i.cqv
  %i.cqx = bitcast <8 x float> %i.cqw to <8 x i32> ; 2 uses
  %i.cqy = shufflevector <8 x i32> %i.cqx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cqz = shufflevector <8 x i32> %i.cqx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cra = lshr <4 x i32> %i.cqy, splat (i32 16)
  %i.crb = lshr <4 x i32> %i.cqz, splat (i32 16)
  %i.crc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cra, <4 x i32> %i.crb)
  store <8 x i16> %i.crc, ptr %.02036.i.i405, align 1, !tbaa !60
  %i.crd = getelementptr inbounds nuw i8, ptr %.01838.i.i403, i64 2
  %i.cre = getelementptr inbounds nuw i8, ptr %.02036.i.i405, i64 16
  %i.crf = load i16, ptr %i.crd, align 2, !tbaa !57
  %i.crg = zext i16 %i.crf to i32
  %i.crh = shl nuw i32 %i.crg, 16
  %i.cri = insertelement <8 x i32> poison, i32 %i.crh, i64 0
  %i.crj = bitcast <8 x i32> %i.cri to <8 x float>
  %i.crk = shufflevector <8 x float> %i.crj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.crl = fdiv fast <8 x float> %i.cqo, %i.crk
  %i.crm = bitcast <8 x float> %i.crl to <8 x i32> ; 2 uses
  %i.crn = shufflevector <8 x i32> %i.crm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cro = shufflevector <8 x i32> %i.crm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.crp = lshr <4 x i32> %i.crn, splat (i32 16)
  %i.crq = lshr <4 x i32> %i.cro, splat (i32 16)
  %i.crr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.crp, <4 x i32> %i.crq)
  store <8 x i16> %i.crr, ptr %i.cre, align 1, !tbaa !60
  %i.crs = getelementptr inbounds nuw i8, ptr %.01838.i.i403, i64 4 ; 2 uses
  %i.crt = getelementptr inbounds nuw i8, ptr %.02036.i.i405, i64 32 ; 2 uses
  %niter7929.next.1 = add i32 %niter7929, 2       ; 2 uses
  %niter7929.ncmp.1 = icmp eq i32 %niter7929.next.1, %unroll_iter7928
  br i1 %niter7929.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7299.unr-lcssa, label %.lr.ph39.i.i402, !llvm.loop !709

bb.cs:                                            ; preds = %bb.cq
  %i.cru = load i64, ptr %0, align 1, !tbaa !60
  %i.crv = insertelement <2 x i64> poison, i64 %i.cru, i64 0
  %i.crw = bitcast <2 x i64> %i.crv to <8 x i16>
  %i.crx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.crw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cry = bitcast <8 x i16> %i.crx to <4 x float> ; 3 uses
  %xtraiter7919 = and i32 %.sroa.speculated86.i395, 1
  %i.crz = icmp eq i32 %.sroa.speculated86.i395, 1
  br i1 %i.crz, label %.lr.ph.i74.i397.epil.preheader, label %.new7918

.new7918:                                         ; preds = %bb.cs
  %unroll_iter7922 = and i32 %.sroa.speculated86.i395, 2147483646
  br label %.lr.ph.i74.i397

.lr.ph.i74.i397:                                  ; preds = %.lr.ph.i74.i397, %.new7918
  %.134.i.i399 = phi ptr [ %1, %.new7918 ], [ %i.cta, %.lr.ph.i74.i397 ] ; 3 uses
  %.12133.i.i400 = phi ptr [ %2, %.new7918 ], [ %i.ctb, %.lr.ph.i74.i397 ] ; 3 uses
  %niter7923 = phi i32 [ 0, %.new7918 ], [ %niter7923.next.1, %.lr.ph.i74.i397 ]
  %i.csa = load i16, ptr %.134.i.i399, align 2, !tbaa !57
  %i.csb = zext i16 %i.csa to i32
  %i.csc = shl nuw i32 %i.csb, 16
  %i.csd = insertelement <4 x i32> poison, i32 %i.csc, i64 0
  %i.cse = bitcast <4 x i32> %i.csd to <4 x float>
  %i.csf = shufflevector <4 x float> %i.cse, <4 x float> poison, <4 x i32> zeroinitializer
  %i.csg = fdiv fast <4 x float> %i.cry, %i.csf
  %i.csh = bitcast <4 x float> %i.csg to <4 x i32>
  %i.csi = lshr <4 x i32> %i.csh, splat (i32 16)
  %i.csj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.csi, <4 x i32> poison)
  %i.csk = bitcast <8 x i16> %i.csj to <2 x i64>
  %i.csl = extractelement <2 x i64> %i.csk, i64 0
  store i64 %i.csl, ptr %.12133.i.i400, align 1, !tbaa !60
  %i.csm = getelementptr inbounds nuw i8, ptr %.134.i.i399, i64 2
  %i.csn = getelementptr inbounds nuw i8, ptr %.12133.i.i400, i64 8
  %i.cso = load i16, ptr %i.csm, align 2, !tbaa !57
  %i.csp = zext i16 %i.cso to i32
  %i.csq = shl nuw i32 %i.csp, 16
  %i.csr = insertelement <4 x i32> poison, i32 %i.csq, i64 0
  %i.css = bitcast <4 x i32> %i.csr to <4 x float>
  %i.cst = shufflevector <4 x float> %i.css, <4 x float> poison, <4 x i32> zeroinitializer
  %i.csu = fdiv fast <4 x float> %i.cry, %i.cst
  %i.csv = bitcast <4 x float> %i.csu to <4 x i32>
  %i.csw = lshr <4 x i32> %i.csv, splat (i32 16)
  %i.csx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.csw, <4 x i32> poison)
  %i.csy = bitcast <8 x i16> %i.csx to <2 x i64>
  %i.csz = extractelement <2 x i64> %i.csy, i64 0
  store i64 %i.csz, ptr %i.csn, align 1, !tbaa !60
  %i.cta = getelementptr inbounds nuw i8, ptr %.134.i.i399, i64 4 ; 2 uses
  %i.ctb = getelementptr inbounds nuw i8, ptr %.12133.i.i400, i64 16 ; 2 uses
  %niter7923.next.1 = add i32 %niter7923, 2       ; 2 uses
  %niter7923.ncmp.1 = icmp eq i32 %niter7923.next.1, %unroll_iter7922
  br i1 %niter7923.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7300.unr-lcssa, label %.lr.ph.i74.i397, !llvm.loop !710

bb.ct:                                            ; preds = %bb.a
  %.sroa.speculated89.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i517 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.ctc = mul i32 %.sroa.speculated.i517, %.sroa.speculated89.i ; 40 uses
  %i.ctd = icmp eq i32 %5, %6
  br i1 %i.ctd, label %bb.cu, label %bb.di

bb.cu:                                            ; preds = %bb.ct
  %i.cte = icmp eq i32 %3, %4
  br i1 %i.cte, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ctf = icmp sgt i32 %i.ctc, 7
  br i1 %i.ctf, label %.lr.ph.i.i561, label %.preheader45.i.i

.preheader45.loopexit.i.i:                        ; preds = %.lr.ph.i.i561
  %i.ctg = and i32 %i.ctc, 2147483640
  br label %.preheader45.i.i

.preheader45.i.i:                                 ; preds = %.preheader45.loopexit.i.i, %bb.cv
  %.030.lcssa.i.i551 = phi ptr [ %2, %bb.cv ], [ %i.cuc, %.preheader45.loopexit.i.i ] ; 2 uses
  %.027.lcssa.i.i552 = phi ptr [ %1, %bb.cv ], [ %i.cub, %.preheader45.loopexit.i.i ] ; 2 uses
  %.024.lcssa.i.i553 = phi i32 [ 0, %bb.cv ], [ %i.ctg, %.preheader45.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i.i554 = phi ptr [ %0, %bb.cv ], [ %i.cua, %.preheader45.loopexit.i.i ] ; 2 uses
  %i.cth = or disjoint i32 %.024.lcssa.i.i553, 3
  %i.cti = icmp slt i32 %i.cth, %i.ctc
  br i1 %i.cti, label %.lr.ph57.i.i, label %.preheader.i.i555

.lr.ph.i.i561:                                    ; preds = %bb.cv, %.lr.ph.i.i561
  %.049.i.i562 = phi ptr [ %i.cua, %.lr.ph.i.i561 ], [ %0, %bb.cv ] ; 2 uses
  %.02448.i.i = phi i32 [ %i.cud, %.lr.ph.i.i561 ], [ 0, %bb.cv ]
  %.02747.i.i = phi ptr [ %i.cub, %.lr.ph.i.i561 ], [ %1, %bb.cv ] ; 2 uses
  %.03046.i.i = phi ptr [ %i.cuc, %.lr.ph.i.i561 ], [ %2, %bb.cv ] ; 2 uses
  %i.ctj = load <8 x i16>, ptr %.049.i.i562, align 1, !tbaa !60 ; 2 uses
  %i.ctk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ctj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ctl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ctj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ctm = shufflevector <8 x i16> %i.ctk, <8 x i16> %i.ctl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ctn = bitcast <16 x i16> %i.ctm to <8 x float>
  %i.cto = load <8 x i16>, ptr %.02747.i.i, align 1, !tbaa !60 ; 2 uses
  %i.ctp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cto, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ctq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cto, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ctr = shufflevector <8 x i16> %i.ctp, <8 x i16> %i.ctq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cts = bitcast <16 x i16> %i.ctr to <8 x float>
  %i.ctt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ctn, <8 x float> nofpclass(nan inf) %i.cts)
  %i.ctu = bitcast <8 x float> %i.ctt to <8 x i32> ; 2 uses
  %i.ctv = shufflevector <8 x i32> %i.ctu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ctw = shufflevector <8 x i32> %i.ctu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ctx = lshr <4 x i32> %i.ctv, splat (i32 16)
  %i.cty = lshr <4 x i32> %i.ctw, splat (i32 16)
  %i.ctz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ctx, <4 x i32> %i.cty)
  store <8 x i16> %i.ctz, ptr %.03046.i.i, align 1, !tbaa !60
  %i.cua = getelementptr inbounds nuw i8, ptr %.049.i.i562, i64 16 ; 2 uses
  %i.cub = getelementptr inbounds nuw i8, ptr %.02747.i.i, i64 16 ; 2 uses
  %i.cuc = getelementptr inbounds nuw i8, ptr %.03046.i.i, i64 16 ; 2 uses
  %i.cud = add nuw nsw i32 %.02448.i.i, 8         ; 2 uses
  %i.cue = or disjoint i32 %i.cud, 7
  %i.cuf = icmp slt i32 %i.cue, %i.ctc
  br i1 %i.cuf, label %.lr.ph.i.i561, label %.preheader45.loopexit.i.i, !llvm.loop !711

.preheader.i.i555:                                ; preds = %.lr.ph57.i.i, %.preheader45.i.i
  %.131.lcssa.i.i556 = phi ptr [ %.030.lcssa.i.i551, %.preheader45.i.i ], [ %i.cxe, %.lr.ph57.i.i ] ; 7 uses
  %.128.lcssa.i.i557 = phi ptr [ %.027.lcssa.i.i552, %.preheader45.i.i ], [ %i.cxd, %.lr.ph57.i.i ] ; 7 uses
  %.125.lcssa.i.i558 = phi i32 [ %.024.lcssa.i.i553, %.preheader45.i.i ], [ %i.cxf, %.lr.ph57.i.i ] ; 6 uses
  %.1.lcssa.i.i559 = phi ptr [ %.0.lcssa.i.i554, %.preheader45.i.i ], [ %i.cxc, %.lr.ph57.i.i ] ; 7 uses
  %.128.lcssa.i.i5576322 = ptrtoaddr ptr %.128.lcssa.i.i557 to i64
  %.131.lcssa.i.i5566323 = ptrtoaddr ptr %.1.lcssa.i.i559 to i64
  %.1.lcssa.i.i5596324 = ptrtoaddr ptr %.131.lcssa.i.i556 to i64 ; 2 uses
  %i.cug = icmp slt i32 %.125.lcssa.i.i558, %i.ctc
  br i1 %i.cug, label %iter.check6344, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6344:                                   ; preds = %.preheader.i.i555
  %i.cuh = xor i32 %.125.lcssa.i.i558, -1
  %i.cui = add i32 %i.ctc, %i.cuh                 ; 3 uses
  %i.cuj = zext i32 %i.cui to i64
  %i.cuk = add nuw nsw i64 %i.cuj, 1              ; 5 uses
  %min.iters.check6325 = icmp ult i32 %i.cui, 3
  br i1 %min.iters.check6325, label %.lr.ph66.i.i.preheader, label %vector.memcheck6326

vector.memcheck6326:                              ; preds = %iter.check6344
  %i.cul = sub i64 %.131.lcssa.i.i5566323, %.1.lcssa.i.i5596324
  %diff.check6327 = icmp ugt i64 %i.cul, -32
  %i.cum = sub i64 %.128.lcssa.i.i5576322, %.1.lcssa.i.i5596324
  %diff.check6328 = icmp ugt i64 %i.cum, -32
  %conflict.rdx6329 = or i1 %diff.check6327, %diff.check6328
  br i1 %conflict.rdx6329, label %.lr.ph66.i.i.preheader, label %vector.main.loop.iter.check6330

vector.main.loop.iter.check6330:                  ; preds = %vector.memcheck6326
  %min.iters.check6331 = icmp ult i32 %i.cui, 15
  br i1 %min.iters.check6331, label %vec.epilog.ph6348, label %vector.ph6332

vector.ph6332:                                    ; preds = %vector.main.loop.iter.check6330
  %i.cun = and i64 %i.cuk, 12
  %n.vec6333 = and i64 %i.cuk, 8589934576         ; 5 uses
  %i.cuo = shl nuw nsw i64 %n.vec6333, 1          ; 3 uses
  %i.cup = getelementptr i8, ptr %.1.lcssa.i.i559, i64 %i.cuo
  %i.cuq = trunc i64 %n.vec6333 to i32
  %i.cur = add i32 %.125.lcssa.i.i558, %i.cuq
  %i.cus = getelementptr i8, ptr %.128.lcssa.i.i557, i64 %i.cuo
  %i.cut = getelementptr i8, ptr %.131.lcssa.i.i556, i64 %i.cuo
  br label %vector.body6334

vector.body6334:                                  ; preds = %vector.ph6332, %vector.body6334
  %index6335 = phi i64 [ 0, %vector.ph6332 ], [ %index.next6341, %vector.body6334 ] ; 2 uses
  %i.cuu = shl i64 %index6335, 1                  ; 3 uses
  %next.gep6336 = getelementptr i8, ptr %.1.lcssa.i.i559, i64 %i.cuu
  %next.gep6337 = getelementptr i8, ptr %.128.lcssa.i.i557, i64 %i.cuu
  %next.gep6338 = getelementptr i8, ptr %.131.lcssa.i.i556, i64 %i.cuu
  %wide.load6339 = load <16 x i16>, ptr %next.gep6336, align 2, !tbaa !57 ; 2 uses
  %i.cuv = zext <16 x i16> %wide.load6339 to <16 x i32>
  %i.cuw = shl nuw <16 x i32> %i.cuv, splat (i32 16)
  %i.cux = bitcast <16 x i32> %i.cuw to <16 x float>
  %wide.load6340 = load <16 x i16>, ptr %next.gep6337, align 2, !tbaa !57 ; 2 uses
  %i.cuy = zext <16 x i16> %wide.load6340 to <16 x i32>
  %i.cuz = shl nuw <16 x i32> %i.cuy, splat (i32 16)
  %i.cva = bitcast <16 x i32> %i.cuz to <16 x float>
  %i.cvb = fcmp fast olt <16 x float> %i.cux, %i.cva
  %i.cvc = select <16 x i1> %i.cvb, <16 x i16> %wide.load6340, <16 x i16> %wide.load6339
  store <16 x i16> %i.cvc, ptr %next.gep6338, align 2, !tbaa !57
  %index.next6341 = add nuw i64 %index6335, 16    ; 2 uses
  %i.cvd = icmp eq i64 %index.next6341, %n.vec6333
  br i1 %i.cvd, label %middle.block6342, label %vector.body6334, !llvm.loop !712

middle.block6342:                                 ; preds = %vector.body6334
  %cmp.n6343 = icmp eq i64 %i.cuk, %n.vec6333
  br i1 %cmp.n6343, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check6345

vec.epilog.iter.check6345:                        ; preds = %middle.block6342
  %min.epilog.iters.check6347 = icmp eq i64 %i.cun, 0
  br i1 %min.epilog.iters.check6347, label %.lr.ph66.i.i.preheader, label %vec.epilog.ph6348, !prof !64

vec.epilog.ph6348:                                ; preds = %vector.main.loop.iter.check6330, %vec.epilog.iter.check6345
  %vec.epilog.resume.val6349 = phi i64 [ %n.vec6333, %vec.epilog.iter.check6345 ], [ 0, %vector.main.loop.iter.check6330 ]
  %n.vec6350 = and i64 %i.cuk, 8589934588         ; 4 uses
  %i.cve = shl nuw nsw i64 %n.vec6350, 1          ; 3 uses
  %i.cvf = getelementptr i8, ptr %.1.lcssa.i.i559, i64 %i.cve
  %i.cvg = trunc i64 %n.vec6350 to i32
  %i.cvh = add i32 %.125.lcssa.i.i558, %i.cvg
  %i.cvi = getelementptr i8, ptr %.128.lcssa.i.i557, i64 %i.cve
  %i.cvj = getelementptr i8, ptr %.131.lcssa.i.i556, i64 %i.cve
  br label %vec.epilog.vector.body6351

vec.epilog.vector.body6351:                       ; preds = %vec.epilog.vector.body6351, %vec.epilog.ph6348
  %index6352 = phi i64 [ %vec.epilog.resume.val6349, %vec.epilog.ph6348 ], [ %index.next6358, %vec.epilog.vector.body6351 ] ; 2 uses
  %i.cvk = shl i64 %index6352, 1                  ; 3 uses
  %next.gep6353 = getelementptr i8, ptr %.1.lcssa.i.i559, i64 %i.cvk
  %next.gep6354 = getelementptr i8, ptr %.128.lcssa.i.i557, i64 %i.cvk
  %next.gep6355 = getelementptr i8, ptr %.131.lcssa.i.i556, i64 %i.cvk
  %wide.load6356 = load <4 x i16>, ptr %next.gep6353, align 2, !tbaa !57 ; 2 uses
  %i.cvl = zext <4 x i16> %wide.load6356 to <4 x i32>
  %i.cvm = shl nuw <4 x i32> %i.cvl, splat (i32 16)
  %i.cvn = bitcast <4 x i32> %i.cvm to <4 x float>
  %wide.load6357 = load <4 x i16>, ptr %next.gep6354, align 2, !tbaa !57 ; 2 uses
  %i.cvo = zext <4 x i16> %wide.load6357 to <4 x i32>
  %i.cvp = shl nuw <4 x i32> %i.cvo, splat (i32 16)
  %i.cvq = bitcast <4 x i32> %i.cvp to <4 x float>
  %i.cvr = fcmp fast olt <4 x float> %i.cvn, %i.cvq
  %i.cvs = select <4 x i1> %i.cvr, <4 x i16> %wide.load6357, <4 x i16> %wide.load6356
  store <4 x i16> %i.cvs, ptr %next.gep6355, align 2, !tbaa !57
  %index.next6358 = add nuw i64 %index6352, 4     ; 2 uses
  %i.cvt = icmp eq i64 %index.next6358, %n.vec6350
  br i1 %i.cvt, label %vec.epilog.middle.block6359, label %vec.epilog.vector.body6351, !llvm.loop !713

vec.epilog.middle.block6359:                      ; preds = %vec.epilog.vector.body6351
  %cmp.n6360 = icmp eq i64 %i.cuk, %n.vec6350
  br i1 %cmp.n6360, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph66.i.i.preheader

.lr.ph66.i.i.preheader:                           ; preds = %iter.check6344, %vector.memcheck6326, %vec.epilog.iter.check6345, %vec.epilog.middle.block6359
  %.265.i.i.ph = phi ptr [ %.1.lcssa.i.i559, %iter.check6344 ], [ %.1.lcssa.i.i559, %vector.memcheck6326 ], [ %i.cup, %vec.epilog.iter.check6345 ], [ %i.cvf, %vec.epilog.middle.block6359 ] ; 3 uses
  %.22664.i.i.ph = phi i32 [ %.125.lcssa.i.i558, %iter.check6344 ], [ %.125.lcssa.i.i558, %vector.memcheck6326 ], [ %i.cur, %vec.epilog.iter.check6345 ], [ %i.cvh, %vec.epilog.middle.block6359 ] ; 4 uses
  %.22963.i.i.ph = phi ptr [ %.128.lcssa.i.i557, %iter.check6344 ], [ %.128.lcssa.i.i557, %vector.memcheck6326 ], [ %i.cus, %vec.epilog.iter.check6345 ], [ %i.cvi, %vec.epilog.middle.block6359 ] ; 3 uses
  %.23262.i.i.ph = phi ptr [ %.131.lcssa.i.i556, %iter.check6344 ], [ %.131.lcssa.i.i556, %vector.memcheck6326 ], [ %i.cut, %vec.epilog.iter.check6345 ], [ %i.cvj, %vec.epilog.middle.block6359 ] ; 3 uses
  %i.cvu = sub i32 %i.ctc, %.22664.i.i.ph
  %.neg8042 = add i32 %.22664.i.i.ph, 1
  %xtraiter7916 = and i32 %i.cvu, 1
  %lcmp.mod7917.not = icmp eq i32 %xtraiter7916, 0
  br i1 %lcmp.mod7917.not, label %.lr.ph66.i.i.prol.loopexit, label %.lr.ph66.i.i.prol

.lr.ph66.i.i.prol:                                ; preds = %.lr.ph66.i.i.preheader
  %i.cvv = getelementptr inbounds nuw i8, ptr %.265.i.i.ph, i64 2
  %i.cvw = load i16, ptr %.265.i.i.ph, align 2, !tbaa !57
  %i.cvx = zext i16 %i.cvw to i32
  %i.cvy = shl nuw i32 %i.cvx, 16
  %i.cvz = bitcast i32 %i.cvy to float            ; 2 uses
  %i.cwa = getelementptr inbounds nuw i8, ptr %.22963.i.i.ph, i64 2
  %i.cwb = load i16, ptr %.22963.i.i.ph, align 2, !tbaa !57
  %i.cwc = zext i16 %i.cwb to i32
  %i.cwd = shl nuw i32 %i.cwc, 16
  %i.cwe = bitcast i32 %i.cwd to float            ; 2 uses
  %i.cwf = fcmp fast olt float %i.cvz, %i.cwe
  %.sroa.speculated.i.i.prol = select i1 %i.cwf, float %i.cwe, float %i.cvz
  %i.cwg = bitcast float %.sroa.speculated.i.i.prol to i32
  %i.cwh = lshr i32 %i.cwg, 16
  %i.cwi = trunc nuw i32 %i.cwh to i16
  %i.cwj = getelementptr inbounds nuw i8, ptr %.23262.i.i.ph, i64 2
  store i16 %i.cwi, ptr %.23262.i.i.ph, align 2, !tbaa !57
  %i.cwk = add nuw nsw i32 %.22664.i.i.ph, 1
  br label %.lr.ph66.i.i.prol.loopexit

.lr.ph66.i.i.prol.loopexit:                       ; preds = %.lr.ph66.i.i.prol, %.lr.ph66.i.i.preheader
  %.265.i.i.unr = phi ptr [ %.265.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.cvv, %.lr.ph66.i.i.prol ]
  %.22664.i.i.unr = phi i32 [ %.22664.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.cwk, %.lr.ph66.i.i.prol ]
  %.22963.i.i.unr = phi ptr [ %.22963.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.cwa, %.lr.ph66.i.i.prol ]
  %.23262.i.i.unr = phi ptr [ %.23262.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.cwj, %.lr.ph66.i.i.prol ]
  %i.cwl = icmp eq i32 %i.ctc, %.neg8042
  br i1 %i.cwl, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph66.i.i

.lr.ph57.i.i:                                     ; preds = %.preheader45.i.i, %.lr.ph57.i.i
  %.156.i.i = phi ptr [ %i.cxc, %.lr.ph57.i.i ], [ %.0.lcssa.i.i554, %.preheader45.i.i ] ; 2 uses
  %.12555.i.i = phi i32 [ %i.cxf, %.lr.ph57.i.i ], [ %.024.lcssa.i.i553, %.preheader45.i.i ]
  %.12854.i.i = phi ptr [ %i.cxd, %.lr.ph57.i.i ], [ %.027.lcssa.i.i552, %.preheader45.i.i ] ; 2 uses
  %.13153.i.i = phi ptr [ %i.cxe, %.lr.ph57.i.i ], [ %.030.lcssa.i.i551, %.preheader45.i.i ] ; 2 uses
  %i.cwm = load i64, ptr %.156.i.i, align 1, !tbaa !60
  %i.cwn = insertelement <2 x i64> poison, i64 %i.cwm, i64 0
  %i.cwo = bitcast <2 x i64> %i.cwn to <8 x i16>
  %i.cwp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwq = bitcast <8 x i16> %i.cwp to <4 x float>
  %i.cwr = load i64, ptr %.12854.i.i, align 1, !tbaa !60
  %i.cws = insertelement <2 x i64> poison, i64 %i.cwr, i64 0
  %i.cwt = bitcast <2 x i64> %i.cws to <8 x i16>
  %i.cwu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cwt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cwv = bitcast <8 x i16> %i.cwu to <4 x float>
  %i.cww = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cwq, <4 x float> nofpclass(nan inf) %i.cwv)
  %i.cwx = bitcast <4 x float> %i.cww to <4 x i32>
  %i.cwy = lshr <4 x i32> %i.cwx, splat (i32 16)
  %i.cwz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cwy, <4 x i32> poison)
  %i.cxa = bitcast <8 x i16> %i.cwz to <2 x i64>
  %i.cxb = extractelement <2 x i64> %i.cxa, i64 0
  store i64 %i.cxb, ptr %.13153.i.i, align 1, !tbaa !60
  %i.cxc = getelementptr inbounds nuw i8, ptr %.156.i.i, i64 8 ; 2 uses
  %i.cxd = getelementptr inbounds nuw i8, ptr %.12854.i.i, i64 8 ; 2 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %.13153.i.i, i64 8 ; 2 uses
  %i.cxf = add nuw nsw i32 %.12555.i.i, 4         ; 3 uses
  %i.cxg = or disjoint i32 %i.cxf, 3
  %i.cxh = icmp slt i32 %i.cxg, %i.ctc
  br i1 %i.cxh, label %.lr.ph57.i.i, label %.preheader.i.i555, !llvm.loop !714

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i
  %.265.i.i = phi ptr [ %i.cxx, %.lr.ph66.i.i ], [ %.265.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 3 uses
  %.22664.i.i = phi i32 [ %i.cym, %.lr.ph66.i.i ], [ %.22664.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.22963.i.i = phi ptr [ %i.cyc, %.lr.ph66.i.i ], [ %.22963.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 3 uses
  %.23262.i.i = phi ptr [ %i.cyl, %.lr.ph66.i.i ], [ %.23262.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 3 uses
  %i.cxi = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 2
  %i.cxj = load i16, ptr %.265.i.i, align 2, !tbaa !57
  %i.cxk = zext i16 %i.cxj to i32
  %i.cxl = shl nuw i32 %i.cxk, 16
  %i.cxm = bitcast i32 %i.cxl to float            ; 2 uses
  %i.cxn = getelementptr inbounds nuw i8, ptr %.22963.i.i, i64 2
  %i.cxo = load i16, ptr %.22963.i.i, align 2, !tbaa !57
  %i.cxp = zext i16 %i.cxo to i32
  %i.cxq = shl nuw i32 %i.cxp, 16
  %i.cxr = bitcast i32 %i.cxq to float            ; 2 uses
  %i.cxs = fcmp fast olt float %i.cxm, %i.cxr
  %.sroa.speculated.i.i = select i1 %i.cxs, float %i.cxr, float %i.cxm
  %i.cxt = bitcast float %.sroa.speculated.i.i to i32
  %i.cxu = lshr i32 %i.cxt, 16
  %i.cxv = trunc nuw i32 %i.cxu to i16
  %i.cxw = getelementptr inbounds nuw i8, ptr %.23262.i.i, i64 2
  store i16 %i.cxv, ptr %.23262.i.i, align 2, !tbaa !57
  %i.cxx = getelementptr inbounds nuw i8, ptr %.265.i.i, i64 4
  %i.cxy = load i16, ptr %i.cxi, align 2, !tbaa !57
  %i.cxz = zext i16 %i.cxy to i32
  %i.cya = shl nuw i32 %i.cxz, 16
  %i.cyb = bitcast i32 %i.cya to float            ; 2 uses
  %i.cyc = getelementptr inbounds nuw i8, ptr %.22963.i.i, i64 4
  %i.cyd = load i16, ptr %i.cxn, align 2, !tbaa !57
  %i.cye = zext i16 %i.cyd to i32
  %i.cyf = shl nuw i32 %i.cye, 16
  %i.cyg = bitcast i32 %i.cyf to float            ; 2 uses
  %i.cyh = fcmp fast olt float %i.cyb, %i.cyg
  %.sroa.speculated.i.i.1 = select i1 %i.cyh, float %i.cyg, float %i.cyb
  %i.cyi = bitcast float %.sroa.speculated.i.i.1 to i32
  %i.cyj = lshr i32 %i.cyi, 16
  %i.cyk = trunc nuw i32 %i.cyj to i16
  %i.cyl = getelementptr inbounds nuw i8, ptr %.23262.i.i, i64 4
  store i16 %i.cyk, ptr %i.cxw, align 2, !tbaa !57
  %i.cym = add nuw nsw i32 %.22664.i.i, 2         ; 2 uses
  %exitcond.not.i.i560.1 = icmp eq i32 %i.cym, %i.ctc
  br i1 %exitcond.not.i.i560.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph66.i.i, !llvm.loop !715

bb.cw:                                            ; preds = %bb.cu
  %i.cyn = icmp eq i32 %4, 1
  br i1 %i.cyn, label %bb.cx, label %bb.dc
end_hunk_10
begin_hunk_11_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.doj = trunc nuw i32 %i.doi to i16
  %i.dok = getelementptr inbounds nuw i8, ptr %.22724.i.i, i64 2
  store i16 %i.doj, ptr %.22724.i.i, align 2, !tbaa !57
  %i.dol = getelementptr inbounds nuw i8, ptr %.226.i.i, i64 4
  %i.dom = load i16, ptr %i.dob, align 2, !tbaa !57
  %i.don = zext i16 %i.dom to i32
  %i.doo = shl nuw i32 %i.don, 16
  %i.dop = bitcast i32 %i.doo to float            ; 2 uses
  %i.doq = fcmp fast olt float %i.dop, %i.dkn
  %.sroa.speculated.i74.i.1 = select i1 %i.doq, float %i.dkn, float %i.dop
  %i.dor = bitcast float %.sroa.speculated.i74.i.1 to i32
  %i.dos = lshr i32 %i.dor, 16
  %i.dot = trunc nuw i32 %i.dos to i16
  %i.dou = getelementptr inbounds nuw i8, ptr %.22724.i.i, i64 4
  store i16 %i.dot, ptr %i.dok, align 2, !tbaa !57
  %i.dov = add nuw nsw i32 %.22425.i.i, 2         ; 2 uses
  %exitcond.not.i75.i530.1 = icmp eq i32 %i.dov, %i.ctc
  br i1 %exitcond.not.i75.i530.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph27.i.i, !llvm.loop !732

bb.dn:                                            ; preds = %bb.dl
  %i.dow = icmp eq i32 %3, 1
  br i1 %i.dow, label %bb.do, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.do:                                            ; preds = %bb.dn
  switch i32 %.sroa.speculated.i517, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.dp
    i32 4, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.dox = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.doy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dox, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.doz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dox, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dpa = shufflevector <8 x i16> %i.doy, <8 x i16> %i.doz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dpb = bitcast <16 x i16> %i.dpa to <8 x float> ; 3 uses
  %xtraiter7905 = and i32 %.sroa.speculated89.i, 1
  %i.dpc = icmp eq i32 %.sroa.speculated89.i, 1
  br i1 %i.dpc, label %.lr.ph39.i.i521.epil.preheader, label %.new7904

.new7904:                                         ; preds = %bb.dp
  %unroll_iter7908 = and i32 %.sroa.speculated89.i, 2147483646
  br label %.lr.ph39.i.i521

.lr.ph39.i.i521:                                  ; preds = %.lr.ph39.i.i521, %.new7904
  %.01838.i.i522 = phi ptr [ %1, %.new7904 ], [ %i.dqf, %.lr.ph39.i.i521 ] ; 3 uses
  %.02036.i.i524 = phi ptr [ %2, %.new7904 ], [ %i.dqg, %.lr.ph39.i.i521 ] ; 3 uses
  %niter7909 = phi i32 [ 0, %.new7904 ], [ %niter7909.next.1, %.lr.ph39.i.i521 ]
  %i.dpd = load i16, ptr %.01838.i.i522, align 2, !tbaa !57
  %i.dpe = zext i16 %i.dpd to i32
  %i.dpf = shl nuw i32 %i.dpe, 16
  %i.dpg = insertelement <8 x i32> poison, i32 %i.dpf, i64 0
  %i.dph = bitcast <8 x i32> %i.dpg to <8 x float>
  %i.dpi = shufflevector <8 x float> %i.dph, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dpj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dpb, <8 x float> nofpclass(nan inf) %i.dpi)
  %i.dpk = bitcast <8 x float> %i.dpj to <8 x i32> ; 2 uses
  %i.dpl = shufflevector <8 x i32> %i.dpk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dpm = shufflevector <8 x i32> %i.dpk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dpn = lshr <4 x i32> %i.dpl, splat (i32 16)
  %i.dpo = lshr <4 x i32> %i.dpm, splat (i32 16)
  %i.dpp = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dpn, <4 x i32> %i.dpo)
  store <8 x i16> %i.dpp, ptr %.02036.i.i524, align 1, !tbaa !60
  %i.dpq = getelementptr inbounds nuw i8, ptr %.01838.i.i522, i64 2
  %i.dpr = getelementptr inbounds nuw i8, ptr %.02036.i.i524, i64 16
  %i.dps = load i16, ptr %i.dpq, align 2, !tbaa !57
  %i.dpt = zext i16 %i.dps to i32
  %i.dpu = shl nuw i32 %i.dpt, 16
  %i.dpv = insertelement <8 x i32> poison, i32 %i.dpu, i64 0
  %i.dpw = bitcast <8 x i32> %i.dpv to <8 x float>
  %i.dpx = shufflevector <8 x float> %i.dpw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dpy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dpb, <8 x float> nofpclass(nan inf) %i.dpx)
  %i.dpz = bitcast <8 x float> %i.dpy to <8 x i32> ; 2 uses
  %i.dqa = shufflevector <8 x i32> %i.dpz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dqb = shufflevector <8 x i32> %i.dpz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dqc = lshr <4 x i32> %i.dqa, splat (i32 16)
  %i.dqd = lshr <4 x i32> %i.dqb, splat (i32 16)
  %i.dqe = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dqc, <4 x i32> %i.dqd)
  store <8 x i16> %i.dqe, ptr %i.dpr, align 1, !tbaa !60
  %i.dqf = getelementptr inbounds nuw i8, ptr %.01838.i.i522, i64 4 ; 2 uses
  %i.dqg = getelementptr inbounds nuw i8, ptr %.02036.i.i524, i64 32 ; 2 uses
  %niter7909.next.1 = add i32 %niter7909, 2       ; 2 uses
  %niter7909.ncmp.1 = icmp eq i32 %niter7909.next.1, %unroll_iter7908
  br i1 %niter7909.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7329.unr-lcssa, label %.lr.ph39.i.i521, !llvm.loop !733

bb.dq:                                            ; preds = %bb.do
  %i.dqh = load i64, ptr %0, align 1, !tbaa !60
  %i.dqi = insertelement <2 x i64> poison, i64 %i.dqh, i64 0
  %i.dqj = bitcast <2 x i64> %i.dqi to <8 x i16>
  %i.dqk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dqj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dql = bitcast <8 x i16> %i.dqk to <4 x float> ; 3 uses
  %xtraiter7899 = and i32 %.sroa.speculated89.i, 1
  %i.dqm = icmp eq i32 %.sroa.speculated89.i, 1
  br i1 %i.dqm, label %.lr.ph.i77.i.epil.preheader, label %.new7898

.new7898:                                         ; preds = %bb.dq
  %unroll_iter7902 = and i32 %.sroa.speculated89.i, 2147483646
  br label %.lr.ph.i77.i

.lr.ph.i77.i:                                     ; preds = %.lr.ph.i77.i, %.new7898
  %.134.i.i519 = phi ptr [ %1, %.new7898 ], [ %i.drn, %.lr.ph.i77.i ] ; 3 uses
  %.12133.i.i520 = phi ptr [ %2, %.new7898 ], [ %i.dro, %.lr.ph.i77.i ] ; 3 uses
  %niter7903 = phi i32 [ 0, %.new7898 ], [ %niter7903.next.1, %.lr.ph.i77.i ]
  %i.dqn = load i16, ptr %.134.i.i519, align 2, !tbaa !57
  %i.dqo = zext i16 %i.dqn to i32
  %i.dqp = shl nuw i32 %i.dqo, 16
  %i.dqq = insertelement <4 x i32> poison, i32 %i.dqp, i64 0
  %i.dqr = bitcast <4 x i32> %i.dqq to <4 x float>
  %i.dqs = shufflevector <4 x float> %i.dqr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dqt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dql, <4 x float> nofpclass(nan inf) %i.dqs)
  %i.dqu = bitcast <4 x float> %i.dqt to <4 x i32>
  %i.dqv = lshr <4 x i32> %i.dqu, splat (i32 16)
  %i.dqw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dqv, <4 x i32> poison)
  %i.dqx = bitcast <8 x i16> %i.dqw to <2 x i64>
  %i.dqy = extractelement <2 x i64> %i.dqx, i64 0
  store i64 %i.dqy, ptr %.12133.i.i520, align 1, !tbaa !60
  %i.dqz = getelementptr inbounds nuw i8, ptr %.134.i.i519, i64 2
  %i.dra = getelementptr inbounds nuw i8, ptr %.12133.i.i520, i64 8
  %i.drb = load i16, ptr %i.dqz, align 2, !tbaa !57
  %i.drc = zext i16 %i.drb to i32
  %i.drd = shl nuw i32 %i.drc, 16
  %i.dre = insertelement <4 x i32> poison, i32 %i.drd, i64 0
  %i.drf = bitcast <4 x i32> %i.dre to <4 x float>
  %i.drg = shufflevector <4 x float> %i.drf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.drh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dql, <4 x float> nofpclass(nan inf) %i.drg)
  %i.dri = bitcast <4 x float> %i.drh to <4 x i32>
  %i.drj = lshr <4 x i32> %i.dri, splat (i32 16)
  %i.drk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.drj, <4 x i32> poison)
  %i.drl = bitcast <8 x i16> %i.drk to <2 x i64>
  %i.drm = extractelement <2 x i64> %i.drl, i64 0
  store i64 %i.drm, ptr %i.dra, align 1, !tbaa !60
  %i.drn = getelementptr inbounds nuw i8, ptr %.134.i.i519, i64 4 ; 2 uses
  %i.dro = getelementptr inbounds nuw i8, ptr %.12133.i.i520, i64 16 ; 2 uses
  %niter7903.next.1 = add i32 %niter7903, 2       ; 2 uses
  %niter7903.ncmp.1 = icmp eq i32 %niter7903.next.1, %unroll_iter7902
  br i1 %niter7903.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7330.unr-lcssa, label %.lr.ph.i77.i, !llvm.loop !734

bb.dr:                                            ; preds = %bb.a
  %.sroa.speculated89.i563 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i564 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.drp = mul i32 %.sroa.speculated.i564, %.sroa.speculated89.i563 ; 40 uses
  %i.drq = icmp eq i32 %5, %6
  br i1 %i.drq, label %bb.ds, label %bb.eg

bb.ds:                                            ; preds = %bb.dr
  %i.drr = icmp eq i32 %3, %4
  br i1 %i.drr, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.drs = icmp sgt i32 %i.drp, 7
  br i1 %i.drs, label %.lr.ph.i.i683, label %.preheader45.i.i661

.preheader45.loopexit.i.i688:                     ; preds = %.lr.ph.i.i683
  %i.drt = and i32 %i.drp, 2147483640
  br label %.preheader45.i.i661

.preheader45.i.i661:                              ; preds = %.preheader45.loopexit.i.i688, %bb.dt
  %.030.lcssa.i.i662 = phi ptr [ %2, %bb.dt ], [ %i.dsp, %.preheader45.loopexit.i.i688 ] ; 2 uses
  %.027.lcssa.i.i663 = phi ptr [ %1, %bb.dt ], [ %i.dso, %.preheader45.loopexit.i.i688 ] ; 2 uses
  %.024.lcssa.i.i664 = phi i32 [ 0, %bb.dt ], [ %i.drt, %.preheader45.loopexit.i.i688 ] ; 3 uses
  %.0.lcssa.i.i665 = phi ptr [ %0, %bb.dt ], [ %i.dsn, %.preheader45.loopexit.i.i688 ] ; 2 uses
  %i.dru = or disjoint i32 %.024.lcssa.i.i664, 3
  %i.drv = icmp slt i32 %i.dru, %i.drp
  br i1 %i.drv, label %.lr.ph57.i.i678, label %.preheader.i.i666

.lr.ph.i.i683:                                    ; preds = %bb.dt, %.lr.ph.i.i683
  %.049.i.i684 = phi ptr [ %i.dsn, %.lr.ph.i.i683 ], [ %0, %bb.dt ] ; 2 uses
  %.02448.i.i685 = phi i32 [ %i.dsq, %.lr.ph.i.i683 ], [ 0, %bb.dt ]
  %.02747.i.i686 = phi ptr [ %i.dso, %.lr.ph.i.i683 ], [ %1, %bb.dt ] ; 2 uses
  %.03046.i.i687 = phi ptr [ %i.dsp, %.lr.ph.i.i683 ], [ %2, %bb.dt ] ; 2 uses
  %i.drw = load <8 x i16>, ptr %.049.i.i684, align 1, !tbaa !60 ; 2 uses
  %i.drx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.drw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dry = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.drw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.drz = shufflevector <8 x i16> %i.drx, <8 x i16> %i.dry, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dsa = bitcast <16 x i16> %i.drz to <8 x float>
  %i.dsb = load <8 x i16>, ptr %.02747.i.i686, align 1, !tbaa !60 ; 2 uses
  %i.dsc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dsb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dsd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dsb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dse = shufflevector <8 x i16> %i.dsc, <8 x i16> %i.dsd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dsf = bitcast <16 x i16> %i.dse to <8 x float>
  %i.dsg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dsa, <8 x float> nofpclass(nan inf) %i.dsf)
  %i.dsh = bitcast <8 x float> %i.dsg to <8 x i32> ; 2 uses
  %i.dsi = shufflevector <8 x i32> %i.dsh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dsj = shufflevector <8 x i32> %i.dsh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dsk = lshr <4 x i32> %i.dsi, splat (i32 16)
  %i.dsl = lshr <4 x i32> %i.dsj, splat (i32 16)
  %i.dsm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dsk, <4 x i32> %i.dsl)
  store <8 x i16> %i.dsm, ptr %.03046.i.i687, align 1, !tbaa !60
  %i.dsn = getelementptr inbounds nuw i8, ptr %.049.i.i684, i64 16 ; 2 uses
  %i.dso = getelementptr inbounds nuw i8, ptr %.02747.i.i686, i64 16 ; 2 uses
  %i.dsp = getelementptr inbounds nuw i8, ptr %.03046.i.i687, i64 16 ; 2 uses
  %i.dsq = add nuw nsw i32 %.02448.i.i685, 8      ; 2 uses
  %i.dsr = or disjoint i32 %i.dsq, 7
  %i.dss = icmp slt i32 %i.dsr, %i.drp
  br i1 %i.dss, label %.lr.ph.i.i683, label %.preheader45.loopexit.i.i688, !llvm.loop !735

.preheader.i.i666:                                ; preds = %.lr.ph57.i.i678, %.preheader45.i.i661
  %.131.lcssa.i.i667 = phi ptr [ %.030.lcssa.i.i662, %.preheader45.i.i661 ], [ %i.dvr, %.lr.ph57.i.i678 ] ; 7 uses
  %.128.lcssa.i.i668 = phi ptr [ %.027.lcssa.i.i663, %.preheader45.i.i661 ], [ %i.dvq, %.lr.ph57.i.i678 ] ; 7 uses
  %.125.lcssa.i.i669 = phi i32 [ %.024.lcssa.i.i664, %.preheader45.i.i661 ], [ %i.dvs, %.lr.ph57.i.i678 ] ; 6 uses
  %.1.lcssa.i.i670 = phi ptr [ %.0.lcssa.i.i665, %.preheader45.i.i661 ], [ %i.dvp, %.lr.ph57.i.i678 ] ; 7 uses
  %.128.lcssa.i.i6686143 = ptrtoaddr ptr %.128.lcssa.i.i668 to i64
  %.131.lcssa.i.i6676144 = ptrtoaddr ptr %.1.lcssa.i.i670 to i64
  %.1.lcssa.i.i6706145 = ptrtoaddr ptr %.131.lcssa.i.i667 to i64 ; 2 uses
  %i.dst = icmp slt i32 %.125.lcssa.i.i669, %i.drp
  br i1 %i.dst, label %iter.check6165, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6165:                                   ; preds = %.preheader.i.i666
  %i.dsu = xor i32 %.125.lcssa.i.i669, -1
  %i.dsv = add i32 %i.drp, %i.dsu                 ; 3 uses
  %i.dsw = zext i32 %i.dsv to i64
  %i.dsx = add nuw nsw i64 %i.dsw, 1              ; 5 uses
  %min.iters.check6146 = icmp ult i32 %i.dsv, 3
  br i1 %min.iters.check6146, label %.lr.ph66.i.i671.preheader, label %vector.memcheck6147

vector.memcheck6147:                              ; preds = %iter.check6165
  %i.dsy = sub i64 %.131.lcssa.i.i6676144, %.1.lcssa.i.i6706145
  %diff.check6148 = icmp ugt i64 %i.dsy, -32
  %i.dsz = sub i64 %.128.lcssa.i.i6686143, %.1.lcssa.i.i6706145
  %diff.check6149 = icmp ugt i64 %i.dsz, -32
  %conflict.rdx6150 = or i1 %diff.check6148, %diff.check6149
  br i1 %conflict.rdx6150, label %.lr.ph66.i.i671.preheader, label %vector.main.loop.iter.check6151

vector.main.loop.iter.check6151:                  ; preds = %vector.memcheck6147
  %min.iters.check6152 = icmp ult i32 %i.dsv, 15
  br i1 %min.iters.check6152, label %vec.epilog.ph6169, label %vector.ph6153

vector.ph6153:                                    ; preds = %vector.main.loop.iter.check6151
  %i.dta = and i64 %i.dsx, 12
  %n.vec6154 = and i64 %i.dsx, 8589934576         ; 5 uses
  %i.dtb = shl nuw nsw i64 %n.vec6154, 1          ; 3 uses
  %i.dtc = getelementptr i8, ptr %.1.lcssa.i.i670, i64 %i.dtb
  %i.dtd = trunc i64 %n.vec6154 to i32
  %i.dte = add i32 %.125.lcssa.i.i669, %i.dtd
  %i.dtf = getelementptr i8, ptr %.128.lcssa.i.i668, i64 %i.dtb
  %i.dtg = getelementptr i8, ptr %.131.lcssa.i.i667, i64 %i.dtb
  br label %vector.body6155

vector.body6155:                                  ; preds = %vector.ph6153, %vector.body6155
  %index6156 = phi i64 [ 0, %vector.ph6153 ], [ %index.next6162, %vector.body6155 ] ; 2 uses
  %i.dth = shl i64 %index6156, 1                  ; 3 uses
  %next.gep6157 = getelementptr i8, ptr %.1.lcssa.i.i670, i64 %i.dth
  %next.gep6158 = getelementptr i8, ptr %.128.lcssa.i.i668, i64 %i.dth
  %next.gep6159 = getelementptr i8, ptr %.131.lcssa.i.i667, i64 %i.dth
  %wide.load6160 = load <16 x i16>, ptr %next.gep6157, align 2, !tbaa !57 ; 2 uses
  %i.dti = zext <16 x i16> %wide.load6160 to <16 x i32>
  %i.dtj = shl nuw <16 x i32> %i.dti, splat (i32 16)
  %i.dtk = bitcast <16 x i32> %i.dtj to <16 x float>
  %wide.load6161 = load <16 x i16>, ptr %next.gep6158, align 2, !tbaa !57 ; 2 uses
  %i.dtl = zext <16 x i16> %wide.load6161 to <16 x i32>
  %i.dtm = shl nuw <16 x i32> %i.dtl, splat (i32 16)
  %i.dtn = bitcast <16 x i32> %i.dtm to <16 x float>
  %i.dto = fcmp fast olt <16 x float> %i.dtn, %i.dtk
  %i.dtp = select <16 x i1> %i.dto, <16 x i16> %wide.load6161, <16 x i16> %wide.load6160
  store <16 x i16> %i.dtp, ptr %next.gep6159, align 2, !tbaa !57
  %index.next6162 = add nuw i64 %index6156, 16    ; 2 uses
  %i.dtq = icmp eq i64 %index.next6162, %n.vec6154
  br i1 %i.dtq, label %middle.block6163, label %vector.body6155, !llvm.loop !736

middle.block6163:                                 ; preds = %vector.body6155
  %cmp.n6164 = icmp eq i64 %i.dsx, %n.vec6154
  br i1 %cmp.n6164, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check6166

vec.epilog.iter.check6166:                        ; preds = %middle.block6163
  %min.epilog.iters.check6168 = icmp eq i64 %i.dta, 0
  br i1 %min.epilog.iters.check6168, label %.lr.ph66.i.i671.preheader, label %vec.epilog.ph6169, !prof !64

vec.epilog.ph6169:                                ; preds = %vector.main.loop.iter.check6151, %vec.epilog.iter.check6166
  %vec.epilog.resume.val6170 = phi i64 [ %n.vec6154, %vec.epilog.iter.check6166 ], [ 0, %vector.main.loop.iter.check6151 ]
  %n.vec6171 = and i64 %i.dsx, 8589934588         ; 4 uses
  %i.dtr = shl nuw nsw i64 %n.vec6171, 1          ; 3 uses
  %i.dts = getelementptr i8, ptr %.1.lcssa.i.i670, i64 %i.dtr
  %i.dtt = trunc i64 %n.vec6171 to i32
  %i.dtu = add i32 %.125.lcssa.i.i669, %i.dtt
  %i.dtv = getelementptr i8, ptr %.128.lcssa.i.i668, i64 %i.dtr
  %i.dtw = getelementptr i8, ptr %.131.lcssa.i.i667, i64 %i.dtr
  br label %vec.epilog.vector.body6172

vec.epilog.vector.body6172:                       ; preds = %vec.epilog.vector.body6172, %vec.epilog.ph6169
  %index6173 = phi i64 [ %vec.epilog.resume.val6170, %vec.epilog.ph6169 ], [ %index.next6179, %vec.epilog.vector.body6172 ] ; 2 uses
  %i.dtx = shl i64 %index6173, 1                  ; 3 uses
  %next.gep6174 = getelementptr i8, ptr %.1.lcssa.i.i670, i64 %i.dtx
  %next.gep6175 = getelementptr i8, ptr %.128.lcssa.i.i668, i64 %i.dtx
  %next.gep6176 = getelementptr i8, ptr %.131.lcssa.i.i667, i64 %i.dtx
  %wide.load6177 = load <4 x i16>, ptr %next.gep6174, align 2, !tbaa !57 ; 2 uses
  %i.dty = zext <4 x i16> %wide.load6177 to <4 x i32>
  %i.dtz = shl nuw <4 x i32> %i.dty, splat (i32 16)
  %i.dua = bitcast <4 x i32> %i.dtz to <4 x float>
  %wide.load6178 = load <4 x i16>, ptr %next.gep6175, align 2, !tbaa !57 ; 2 uses
  %i.dub = zext <4 x i16> %wide.load6178 to <4 x i32>
  %i.duc = shl nuw <4 x i32> %i.dub, splat (i32 16)
  %i.dud = bitcast <4 x i32> %i.duc to <4 x float>
  %i.due = fcmp fast olt <4 x float> %i.dud, %i.dua
  %i.duf = select <4 x i1> %i.due, <4 x i16> %wide.load6178, <4 x i16> %wide.load6177
  store <4 x i16> %i.duf, ptr %next.gep6176, align 2, !tbaa !57
  %index.next6179 = add nuw i64 %index6173, 4     ; 2 uses
  %i.dug = icmp eq i64 %index.next6179, %n.vec6171
  br i1 %i.dug, label %vec.epilog.middle.block6180, label %vec.epilog.vector.body6172, !llvm.loop !737

vec.epilog.middle.block6180:                      ; preds = %vec.epilog.vector.body6172
  %cmp.n6181 = icmp eq i64 %i.dsx, %n.vec6171
  br i1 %cmp.n6181, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph66.i.i671.preheader

.lr.ph66.i.i671.preheader:                        ; preds = %iter.check6165, %vector.memcheck6147, %vec.epilog.iter.check6166, %vec.epilog.middle.block6180
  %.265.i.i672.ph = phi ptr [ %.1.lcssa.i.i670, %iter.check6165 ], [ %.1.lcssa.i.i670, %vector.memcheck6147 ], [ %i.dtc, %vec.epilog.iter.check6166 ], [ %i.dts, %vec.epilog.middle.block6180 ] ; 3 uses
  %.22664.i.i673.ph = phi i32 [ %.125.lcssa.i.i669, %iter.check6165 ], [ %.125.lcssa.i.i669, %vector.memcheck6147 ], [ %i.dte, %vec.epilog.iter.check6166 ], [ %i.dtu, %vec.epilog.middle.block6180 ] ; 4 uses
  %.22963.i.i674.ph = phi ptr [ %.128.lcssa.i.i668, %iter.check6165 ], [ %.128.lcssa.i.i668, %vector.memcheck6147 ], [ %i.dtf, %vec.epilog.iter.check6166 ], [ %i.dtv, %vec.epilog.middle.block6180 ] ; 3 uses
  %.23262.i.i675.ph = phi ptr [ %.131.lcssa.i.i667, %iter.check6165 ], [ %.131.lcssa.i.i667, %vector.memcheck6147 ], [ %i.dtg, %vec.epilog.iter.check6166 ], [ %i.dtw, %vec.epilog.middle.block6180 ] ; 3 uses
  %i.duh = sub i32 %i.drp, %.22664.i.i673.ph
  %.neg8038 = add i32 %.22664.i.i673.ph, 1
  %xtraiter7896 = and i32 %i.duh, 1
  %lcmp.mod7897.not = icmp eq i32 %xtraiter7896, 0
  br i1 %lcmp.mod7897.not, label %.lr.ph66.i.i671.prol.loopexit, label %.lr.ph66.i.i671.prol

.lr.ph66.i.i671.prol:                             ; preds = %.lr.ph66.i.i671.preheader
  %i.dui = getelementptr inbounds nuw i8, ptr %.265.i.i672.ph, i64 2
  %i.duj = load i16, ptr %.265.i.i672.ph, align 2, !tbaa !57
  %i.duk = zext i16 %i.duj to i32
  %i.dul = shl nuw i32 %i.duk, 16
  %i.dum = bitcast i32 %i.dul to float            ; 2 uses
  %i.dun = getelementptr inbounds nuw i8, ptr %.22963.i.i674.ph, i64 2
  %i.duo = load i16, ptr %.22963.i.i674.ph, align 2, !tbaa !57
  %i.dup = zext i16 %i.duo to i32
  %i.duq = shl nuw i32 %i.dup, 16
  %i.dur = bitcast i32 %i.duq to float            ; 2 uses
  %i.dus = fcmp fast olt float %i.dur, %i.dum
  %.sroa.speculated.i.i676.prol = select i1 %i.dus, float %i.dur, float %i.dum
  %i.dut = bitcast float %.sroa.speculated.i.i676.prol to i32
  %i.duu = lshr i32 %i.dut, 16
  %i.duv = trunc nuw i32 %i.duu to i16
  %i.duw = getelementptr inbounds nuw i8, ptr %.23262.i.i675.ph, i64 2
  store i16 %i.duv, ptr %.23262.i.i675.ph, align 2, !tbaa !57
  %i.dux = add nuw nsw i32 %.22664.i.i673.ph, 1
  br label %.lr.ph66.i.i671.prol.loopexit

.lr.ph66.i.i671.prol.loopexit:                    ; preds = %.lr.ph66.i.i671.prol, %.lr.ph66.i.i671.preheader
  %.265.i.i672.unr = phi ptr [ %.265.i.i672.ph, %.lr.ph66.i.i671.preheader ], [ %i.dui, %.lr.ph66.i.i671.prol ]
  %.22664.i.i673.unr = phi i32 [ %.22664.i.i673.ph, %.lr.ph66.i.i671.preheader ], [ %i.dux, %.lr.ph66.i.i671.prol ]
  %.22963.i.i674.unr = phi ptr [ %.22963.i.i674.ph, %.lr.ph66.i.i671.preheader ], [ %i.dun, %.lr.ph66.i.i671.prol ]
  %.23262.i.i675.unr = phi ptr [ %.23262.i.i675.ph, %.lr.ph66.i.i671.preheader ], [ %i.duw, %.lr.ph66.i.i671.prol ]
  %i.duy = icmp eq i32 %i.drp, %.neg8038
  br i1 %i.duy, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph66.i.i671

.lr.ph57.i.i678:                                  ; preds = %.preheader45.i.i661, %.lr.ph57.i.i678
  %.156.i.i679 = phi ptr [ %i.dvp, %.lr.ph57.i.i678 ], [ %.0.lcssa.i.i665, %.preheader45.i.i661 ] ; 2 uses
  %.12555.i.i680 = phi i32 [ %i.dvs, %.lr.ph57.i.i678 ], [ %.024.lcssa.i.i664, %.preheader45.i.i661 ]
  %.12854.i.i681 = phi ptr [ %i.dvq, %.lr.ph57.i.i678 ], [ %.027.lcssa.i.i663, %.preheader45.i.i661 ] ; 2 uses
  %.13153.i.i682 = phi ptr [ %i.dvr, %.lr.ph57.i.i678 ], [ %.030.lcssa.i.i662, %.preheader45.i.i661 ] ; 2 uses
  %i.duz = load i64, ptr %.156.i.i679, align 1, !tbaa !60
  %i.dva = insertelement <2 x i64> poison, i64 %i.duz, i64 0
  %i.dvb = bitcast <2 x i64> %i.dva to <8 x i16>
  %i.dvc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvd = bitcast <8 x i16> %i.dvc to <4 x float>
  %i.dve = load i64, ptr %.12854.i.i681, align 1, !tbaa !60
  %i.dvf = insertelement <2 x i64> poison, i64 %i.dve, i64 0
  %i.dvg = bitcast <2 x i64> %i.dvf to <8 x i16>
  %i.dvh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvi = bitcast <8 x i16> %i.dvh to <4 x float>
  %i.dvj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dvd, <4 x float> nofpclass(nan inf) %i.dvi)
  %i.dvk = bitcast <4 x float> %i.dvj to <4 x i32>
  %i.dvl = lshr <4 x i32> %i.dvk, splat (i32 16)
  %i.dvm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dvl, <4 x i32> poison)
  %i.dvn = bitcast <8 x i16> %i.dvm to <2 x i64>
  %i.dvo = extractelement <2 x i64> %i.dvn, i64 0
  store i64 %i.dvo, ptr %.13153.i.i682, align 1, !tbaa !60
  %i.dvp = getelementptr inbounds nuw i8, ptr %.156.i.i679, i64 8 ; 2 uses
  %i.dvq = getelementptr inbounds nuw i8, ptr %.12854.i.i681, i64 8 ; 2 uses
  %i.dvr = getelementptr inbounds nuw i8, ptr %.13153.i.i682, i64 8 ; 2 uses
  %i.dvs = add nuw nsw i32 %.12555.i.i680, 4      ; 3 uses
  %i.dvt = or disjoint i32 %i.dvs, 3
  %i.dvu = icmp slt i32 %i.dvt, %i.drp
  br i1 %i.dvu, label %.lr.ph57.i.i678, label %.preheader.i.i666, !llvm.loop !738

.lr.ph66.i.i671:                                  ; preds = %.lr.ph66.i.i671.prol.loopexit, %.lr.ph66.i.i671
  %.265.i.i672 = phi ptr [ %i.dwk, %.lr.ph66.i.i671 ], [ %.265.i.i672.unr, %.lr.ph66.i.i671.prol.loopexit ] ; 3 uses
  %.22664.i.i673 = phi i32 [ %i.dwz, %.lr.ph66.i.i671 ], [ %.22664.i.i673.unr, %.lr.ph66.i.i671.prol.loopexit ]
  %.22963.i.i674 = phi ptr [ %i.dwp, %.lr.ph66.i.i671 ], [ %.22963.i.i674.unr, %.lr.ph66.i.i671.prol.loopexit ] ; 3 uses
  %.23262.i.i675 = phi ptr [ %i.dwy, %.lr.ph66.i.i671 ], [ %.23262.i.i675.unr, %.lr.ph66.i.i671.prol.loopexit ] ; 3 uses
  %i.dvv = getelementptr inbounds nuw i8, ptr %.265.i.i672, i64 2
  %i.dvw = load i16, ptr %.265.i.i672, align 2, !tbaa !57
  %i.dvx = zext i16 %i.dvw to i32
  %i.dvy = shl nuw i32 %i.dvx, 16
  %i.dvz = bitcast i32 %i.dvy to float            ; 2 uses
  %i.dwa = getelementptr inbounds nuw i8, ptr %.22963.i.i674, i64 2
  %i.dwb = load i16, ptr %.22963.i.i674, align 2, !tbaa !57
  %i.dwc = zext i16 %i.dwb to i32
  %i.dwd = shl nuw i32 %i.dwc, 16
  %i.dwe = bitcast i32 %i.dwd to float            ; 2 uses
  %i.dwf = fcmp fast olt float %i.dwe, %i.dvz
  %.sroa.speculated.i.i676 = select i1 %i.dwf, float %i.dwe, float %i.dvz
  %i.dwg = bitcast float %.sroa.speculated.i.i676 to i32
  %i.dwh = lshr i32 %i.dwg, 16
  %i.dwi = trunc nuw i32 %i.dwh to i16
  %i.dwj = getelementptr inbounds nuw i8, ptr %.23262.i.i675, i64 2
  store i16 %i.dwi, ptr %.23262.i.i675, align 2, !tbaa !57
  %i.dwk = getelementptr inbounds nuw i8, ptr %.265.i.i672, i64 4
  %i.dwl = load i16, ptr %i.dvv, align 2, !tbaa !57
  %i.dwm = zext i16 %i.dwl to i32
  %i.dwn = shl nuw i32 %i.dwm, 16
  %i.dwo = bitcast i32 %i.dwn to float            ; 2 uses
  %i.dwp = getelementptr inbounds nuw i8, ptr %.22963.i.i674, i64 4
  %i.dwq = load i16, ptr %i.dwa, align 2, !tbaa !57
  %i.dwr = zext i16 %i.dwq to i32
  %i.dws = shl nuw i32 %i.dwr, 16
  %i.dwt = bitcast i32 %i.dws to float            ; 2 uses
  %i.dwu = fcmp fast olt float %i.dwt, %i.dwo
  %.sroa.speculated.i.i676.1 = select i1 %i.dwu, float %i.dwt, float %i.dwo
  %i.dwv = bitcast float %.sroa.speculated.i.i676.1 to i32
  %i.dww = lshr i32 %i.dwv, 16
  %i.dwx = trunc nuw i32 %i.dww to i16
  %i.dwy = getelementptr inbounds nuw i8, ptr %.23262.i.i675, i64 4
  store i16 %i.dwx, ptr %i.dwj, align 2, !tbaa !57
  %i.dwz = add nuw nsw i32 %.22664.i.i673, 2      ; 2 uses
  %exitcond.not.i.i677.1 = icmp eq i32 %i.dwz, %i.drp
  br i1 %exitcond.not.i.i677.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph66.i.i671, !llvm.loop !739

bb.du:                                            ; preds = %bb.ds
  %i.dxa = icmp eq i32 %4, 1
  br i1 %i.dxa, label %bb.dv, label %bb.ea
end_hunk_11
begin_hunk_12_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.enx = bitcast <8 x float> %i.enw to <8 x i32> ; 2 uses
  %i.eny = shufflevector <8 x i32> %i.enx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.enz = shufflevector <8 x i32> %i.enx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eoa = lshr <4 x i32> %i.eny, splat (i32 16)
  %i.eob = lshr <4 x i32> %i.enz, splat (i32 16)
  %i.eoc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eoa, <4 x i32> %i.eob)
  store <8 x i16> %i.eoc, ptr %.02036.i.i573, align 1, !tbaa !60
  %i.eod = getelementptr inbounds nuw i8, ptr %.01838.i.i571, i64 2
  %i.eoe = getelementptr inbounds nuw i8, ptr %.02036.i.i573, i64 16
  %i.eof = load i16, ptr %i.eod, align 2, !tbaa !57
  %i.eog = zext i16 %i.eof to i32
  %i.eoh = shl nuw i32 %i.eog, 16
  %i.eoi = insertelement <8 x i32> poison, i32 %i.eoh, i64 0
  %i.eoj = bitcast <8 x i32> %i.eoi to <8 x float>
  %i.eok = shufflevector <8 x float> %i.eoj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eol = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eno, <8 x float> nofpclass(nan inf) %i.eok)
  %i.eom = bitcast <8 x float> %i.eol to <8 x i32> ; 2 uses
  %i.eon = shufflevector <8 x i32> %i.eom, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eoo = shufflevector <8 x i32> %i.eom, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eop = lshr <4 x i32> %i.eon, splat (i32 16)
  %i.eoq = lshr <4 x i32> %i.eoo, splat (i32 16)
  %i.eor = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eop, <4 x i32> %i.eoq)
  store <8 x i16> %i.eor, ptr %i.eoe, align 1, !tbaa !60
  %i.eos = getelementptr inbounds nuw i8, ptr %.01838.i.i571, i64 4 ; 2 uses
  %i.eot = getelementptr inbounds nuw i8, ptr %.02036.i.i573, i64 32 ; 2 uses
  %niter7889.next.1 = add i32 %niter7889, 2       ; 2 uses
  %niter7889.ncmp.1 = icmp eq i32 %niter7889.next.1, %unroll_iter7888
  br i1 %niter7889.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7359.unr-lcssa, label %.lr.ph39.i.i570, !llvm.loop !757

bb.eo:                                            ; preds = %bb.em
  %i.eou = load i64, ptr %0, align 1, !tbaa !60
  %i.eov = insertelement <2 x i64> poison, i64 %i.eou, i64 0
  %i.eow = bitcast <2 x i64> %i.eov to <8 x i16>
  %i.eox = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eow, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eoy = bitcast <8 x i16> %i.eox to <4 x float> ; 3 uses
  %xtraiter7879 = and i32 %.sroa.speculated89.i563, 1
  %i.eoz = icmp eq i32 %.sroa.speculated89.i563, 1
  br i1 %i.eoz, label %.lr.ph.i77.i565.epil.preheader, label %.new7878

.new7878:                                         ; preds = %bb.eo
  %unroll_iter7882 = and i32 %.sroa.speculated89.i563, 2147483646
  br label %.lr.ph.i77.i565

.lr.ph.i77.i565:                                  ; preds = %.lr.ph.i77.i565, %.new7878
  %.134.i.i567 = phi ptr [ %1, %.new7878 ], [ %i.eqa, %.lr.ph.i77.i565 ] ; 3 uses
  %.12133.i.i568 = phi ptr [ %2, %.new7878 ], [ %i.eqb, %.lr.ph.i77.i565 ] ; 3 uses
  %niter7883 = phi i32 [ 0, %.new7878 ], [ %niter7883.next.1, %.lr.ph.i77.i565 ]
  %i.epa = load i16, ptr %.134.i.i567, align 2, !tbaa !57
  %i.epb = zext i16 %i.epa to i32
  %i.epc = shl nuw i32 %i.epb, 16
  %i.epd = insertelement <4 x i32> poison, i32 %i.epc, i64 0
  %i.epe = bitcast <4 x i32> %i.epd to <4 x float>
  %i.epf = shufflevector <4 x float> %i.epe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.epg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eoy, <4 x float> nofpclass(nan inf) %i.epf)
  %i.eph = bitcast <4 x float> %i.epg to <4 x i32>
  %i.epi = lshr <4 x i32> %i.eph, splat (i32 16)
  %i.epj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.epi, <4 x i32> poison)
  %i.epk = bitcast <8 x i16> %i.epj to <2 x i64>
  %i.epl = extractelement <2 x i64> %i.epk, i64 0
  store i64 %i.epl, ptr %.12133.i.i568, align 1, !tbaa !60
  %i.epm = getelementptr inbounds nuw i8, ptr %.134.i.i567, i64 2
  %i.epn = getelementptr inbounds nuw i8, ptr %.12133.i.i568, i64 8
  %i.epo = load i16, ptr %i.epm, align 2, !tbaa !57
  %i.epp = zext i16 %i.epo to i32
  %i.epq = shl nuw i32 %i.epp, 16
  %i.epr = insertelement <4 x i32> poison, i32 %i.epq, i64 0
  %i.eps = bitcast <4 x i32> %i.epr to <4 x float>
  %i.ept = shufflevector <4 x float> %i.eps, <4 x float> poison, <4 x i32> zeroinitializer
  %i.epu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eoy, <4 x float> nofpclass(nan inf) %i.ept)
  %i.epv = bitcast <4 x float> %i.epu to <4 x i32>
  %i.epw = lshr <4 x i32> %i.epv, splat (i32 16)
  %i.epx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.epw, <4 x i32> poison)
  %i.epy = bitcast <8 x i16> %i.epx to <2 x i64>
  %i.epz = extractelement <2 x i64> %i.epy, i64 0
  store i64 %i.epz, ptr %i.epn, align 1, !tbaa !60
  %i.eqa = getelementptr inbounds nuw i8, ptr %.134.i.i567, i64 4 ; 2 uses
  %i.eqb = getelementptr inbounds nuw i8, ptr %.12133.i.i568, i64 16 ; 2 uses
  %niter7883.next.1 = add i32 %niter7883, 2       ; 2 uses
  %niter7883.ncmp.1 = icmp eq i32 %niter7883.next.1, %unroll_iter7882
  br i1 %niter7883.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7360.unr-lcssa, label %.lr.ph.i77.i565, !llvm.loop !758

bb.ep:                                            ; preds = %bb.a
  %.sroa.speculated107.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 7 uses
  %.sroa.speculated.i689 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.eqc = mul i32 %.sroa.speculated.i689, %.sroa.speculated107.i ; 40 uses
  %i.eqd = icmp eq i32 %5, %6
  br i1 %i.eqd, label %bb.eq, label %bb.fg

bb.eq:                                            ; preds = %bb.ep
  %i.eqe = icmp eq i32 %3, %4
  br i1 %i.eqe, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.eqf = icmp sgt i32 %i.eqc, 7
  br i1 %i.eqf, label %.lr.ph.i.i718, label %.preheader172.i.i

.preheader172.loopexit.i.i:                       ; preds = %.lr.ph.i.i718
  %i.eqg = and i32 %i.eqc, 2147483640
  br label %.preheader172.i.i

.preheader172.i.i:                                ; preds = %.preheader172.loopexit.i.i, %bb.er
  %.030.lcssa.i.i708 = phi ptr [ %2, %bb.er ], [ %i.ete, %.preheader172.loopexit.i.i ] ; 2 uses
  %.027.lcssa.i.i709 = phi ptr [ %1, %bb.er ], [ %i.etd, %.preheader172.loopexit.i.i ] ; 2 uses
  %.024.lcssa.i.i710 = phi i32 [ 0, %bb.er ], [ %i.eqg, %.preheader172.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i.i711 = phi ptr [ %0, %bb.er ], [ %i.etc, %.preheader172.loopexit.i.i ] ; 2 uses
  %i.eqh = or disjoint i32 %.024.lcssa.i.i710, 3
  %i.eqi = icmp slt i32 %i.eqh, %i.eqc
  br i1 %i.eqi, label %.lr.ph184.i.i, label %.preheader.i.i712

.lr.ph.i.i718:                                    ; preds = %bb.er, %.lr.ph.i.i718
  %.0176.i.i = phi ptr [ %i.etc, %.lr.ph.i.i718 ], [ %0, %bb.er ] ; 2 uses
  %.024175.i.i = phi i32 [ %i.etf, %.lr.ph.i.i718 ], [ 0, %bb.er ]
  %.027174.i.i = phi ptr [ %i.etd, %.lr.ph.i.i718 ], [ %1, %bb.er ] ; 2 uses
  %.030173.i.i = phi ptr [ %i.ete, %.lr.ph.i.i718 ], [ %2, %bb.er ] ; 2 uses
  %i.eqj = load <8 x i16>, ptr %.0176.i.i, align 1, !tbaa !60 ; 2 uses
  %i.eqk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eqj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eql = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eqj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eqm = shufflevector <8 x i16> %i.eqk, <8 x i16> %i.eql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eqn = bitcast <16 x i16> %i.eqm to <8 x float>
  %i.eqo = load <8 x i16>, ptr %.027174.i.i, align 1, !tbaa !60 ; 2 uses
  %i.eqp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eqo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eqq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eqo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eqr = shufflevector <8 x i16> %i.eqp, <8 x i16> %i.eqq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eqs = bitcast <16 x i16> %i.eqr to <8 x float>
  %i.eqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eqn, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.equ = bitcast <8 x float> %i.eqt to <8 x i32>
  %i.eqv = bitcast <8 x float> %i.eqt to <8 x i32>
  %i.eqw = and <8 x i32> %i.eqv, splat (i32 -2139095041)
  %i.eqx = or disjoint <8 x i32> %i.eqw, splat (i32 1056964608)
  %i.eqy = bitcast <8 x i32> %i.eqx to <8 x float> ; 3 uses
  %i.eqz = lshr <8 x i32> %i.equ, splat (i32 23)
  %i.era = add nsw <8 x i32> %i.eqz, splat (i32 -127)
  %i.erb = sitofp fast <8 x i32> %i.era to <8 x float> ; 2 uses
  %i.erc = fadd fast <8 x float> %i.erb, splat (float 1.000000e+00)
  %i.erd = fcmp fast olt <8 x float> %i.eqy, splat (float f0x3F3504F3) ; 2 uses
  %i.ere = select <8 x i1> %i.erd, <8 x float> %i.eqy, <8 x float> zeroinitializer
  %i.erf = fadd fast <8 x float> %i.eqy, splat (float -1.000000e+00)
  %i.erg = select fast <8 x i1> %i.erd, <8 x float> %i.erb, <8 x float> %i.erc ; 2 uses
  %i.erh = fadd fast <8 x float> %i.erf, %i.ere   ; 12 uses
  %i.eri = fmul fast <8 x float> %i.erh, %i.erh   ; 2 uses
  %i.erj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erh, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.erk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erj, <8 x float> nofpclass(nan inf) %i.erh, <8 x float> splat (float f0x3DEF251A))
  %i.erl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erk, <8 x float> nofpclass(nan inf) %i.erh, <8 x float> splat (float f0xBDFE5D4F))
  %i.erm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erl, <8 x float> nofpclass(nan inf) %i.erh, <8 x float> splat (float f0x3E11E9BF))
  %i.ern = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erm, <8 x float> nofpclass(nan inf) %i.erh, <8 x float> splat (float f0xBE2AAE50))
  %i.ero = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ern, <8 x float> nofpclass(nan inf) %i.erh, <8 x float> splat (float f0x3E4CCEAC))
  %i.erp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ero, <8 x float> nofpclass(nan inf) %i.erh, <8 x float> splat (float f0xBE7FFFFC))
  %i.erq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erp, <8 x float> nofpclass(nan inf) %i.erh, <8 x float> splat (float f0x3EAAAAAA))
  %i.err = fmul fast <8 x float> %i.eri, %i.erh
  %i.ers = fmul fast <8 x float> %i.err, %i.erq
  %i.ert = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ers)
  %i.eru = fneg fast <8 x float> %i.eri
  %i.erv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.eru, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ert)
  %i.erw = fadd fast <8 x float> %i.erv, %i.erh
  %i.erx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.erg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.erw)
  %i.ery = fmul fast <8 x float> %i.erx, %i.eqs
  %i.erz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ery, <8 x float> splat (float f0x42B0C0A5))
  %i.esa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.erz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.esb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esa, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.esc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.esb, i32 1) ; 2 uses
  %i.esd = fcmp fast ogt <8 x float> %i.esc, %i.esb
  %i.ese = select <8 x i1> %i.esd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.esf = fsub fast <8 x float> %i.esc, %i.ese   ; 2 uses
  %i.esg = fneg fast <8 x float> %i.esf           ; 2 uses
  %i.esh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.esg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.esa)
  %i.esi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.esg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.esh) ; 8 uses
  %i.esj = fmul fast <8 x float> %i.esi, %i.esi
  %i.esk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esi, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.esl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esk, <8 x float> nofpclass(nan inf) %i.esi, <8 x float> splat (float f0x3C088908))
  %i.esm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esl, <8 x float> nofpclass(nan inf) %i.esi, <8 x float> splat (float f0x3D2AA9C1))
  %i.esn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esm, <8 x float> nofpclass(nan inf) %i.esi, <8 x float> splat (float f0x3E2AAAAA))
  %i.eso = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.esn, <8 x float> nofpclass(nan inf) %i.esi, <8 x float> splat (float 5.000000e-01))
  %i.esp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eso, <8 x float> nofpclass(nan inf) %i.esj, <8 x float> nofpclass(nan inf) %i.esi)
  %i.esq = fadd fast <8 x float> %i.esp, splat (float 1.000000e+00)
  %i.esr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.esf)
  %i.ess = shl <8 x i32> %i.esr, splat (i32 23)
  %i.est = add <8 x i32> %i.ess, splat (i32 1065353216)
  %i.esu = bitcast <8 x i32> %i.est to <8 x float>
  %i.esv = fmul fast <8 x float> %i.esq, %i.esu
  %i.esw = bitcast <8 x float> %i.esv to <8 x i32> ; 2 uses
  %i.esx = shufflevector <8 x i32> %i.esw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.esy = shufflevector <8 x i32> %i.esw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.esz = lshr <4 x i32> %i.esx, splat (i32 16)
  %i.eta = lshr <4 x i32> %i.esy, splat (i32 16)
  %i.etb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.esz, <4 x i32> %i.eta)
  store <8 x i16> %i.etb, ptr %.030173.i.i, align 1, !tbaa !60
  %i.etc = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 16 ; 2 uses
  %i.etd = getelementptr inbounds nuw i8, ptr %.027174.i.i, i64 16 ; 2 uses
  %i.ete = getelementptr inbounds nuw i8, ptr %.030173.i.i, i64 16 ; 2 uses
  %i.etf = add nuw nsw i32 %.024175.i.i, 8        ; 2 uses
  %i.etg = or disjoint i32 %i.etf, 7
  %i.eth = icmp slt i32 %i.etg, %i.eqc
  br i1 %i.eth, label %.lr.ph.i.i718, label %.preheader172.loopexit.i.i, !llvm.loop !759

.preheader.i.i712:                                ; preds = %.lr.ph184.i.i, %.preheader172.i.i
  %.131.lcssa.i.i713 = phi ptr [ %.030.lcssa.i.i708, %.preheader172.i.i ], [ %i.eyn, %.lr.ph184.i.i ] ; 7 uses
  %.128.lcssa.i.i714 = phi ptr [ %.027.lcssa.i.i709, %.preheader172.i.i ], [ %i.eym, %.lr.ph184.i.i ] ; 7 uses
  %.125.lcssa.i.i715 = phi i32 [ %.024.lcssa.i.i710, %.preheader172.i.i ], [ %i.eyo, %.lr.ph184.i.i ] ; 6 uses
  %.1.lcssa.i.i716 = phi ptr [ %.0.lcssa.i.i711, %.preheader172.i.i ], [ %i.eyl, %.lr.ph184.i.i ] ; 7 uses
  %.128.lcssa.i.i7145964 = ptrtoaddr ptr %.128.lcssa.i.i714 to i64
  %.131.lcssa.i.i7135965 = ptrtoaddr ptr %.1.lcssa.i.i716 to i64
  %.1.lcssa.i.i7165966 = ptrtoaddr ptr %.131.lcssa.i.i713 to i64 ; 2 uses
  %i.eti = icmp slt i32 %.125.lcssa.i.i715, %i.eqc
  br i1 %i.eti, label %iter.check5986, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5986:                                   ; preds = %.preheader.i.i712
  %i.etj = xor i32 %.125.lcssa.i.i715, -1
  %i.etk = add i32 %i.eqc, %i.etj                 ; 3 uses
  %i.etl = zext i32 %i.etk to i64
  %i.etm = add nuw nsw i64 %i.etl, 1              ; 5 uses
  %min.iters.check5967 = icmp ult i32 %i.etk, 3
  br i1 %min.iters.check5967, label %.lr.ph193.i.i.preheader, label %vector.memcheck5968

vector.memcheck5968:                              ; preds = %iter.check5986
  %i.etn = sub i64 %.131.lcssa.i.i7135965, %.1.lcssa.i.i7165966
  %diff.check5969 = icmp ugt i64 %i.etn, -32
  %i.eto = sub i64 %.128.lcssa.i.i7145964, %.1.lcssa.i.i7165966
  %diff.check5970 = icmp ugt i64 %i.eto, -32
  %conflict.rdx5971 = or i1 %diff.check5969, %diff.check5970
  br i1 %conflict.rdx5971, label %.lr.ph193.i.i.preheader, label %vector.main.loop.iter.check5972

vector.main.loop.iter.check5972:                  ; preds = %vector.memcheck5968
  %min.iters.check5973 = icmp ult i32 %i.etk, 15
  br i1 %min.iters.check5973, label %vec.epilog.ph5990, label %vector.ph5974

vector.ph5974:                                    ; preds = %vector.main.loop.iter.check5972
  %i.etp = and i64 %i.etm, 12
  %n.vec5975 = and i64 %i.etm, 8589934576         ; 5 uses
  %i.etq = shl nuw nsw i64 %n.vec5975, 1          ; 3 uses
  %i.etr = getelementptr i8, ptr %.1.lcssa.i.i716, i64 %i.etq
  %i.ets = trunc i64 %n.vec5975 to i32
  %i.ett = add i32 %.125.lcssa.i.i715, %i.ets
  %i.etu = getelementptr i8, ptr %.128.lcssa.i.i714, i64 %i.etq
  %i.etv = getelementptr i8, ptr %.131.lcssa.i.i713, i64 %i.etq
  br label %vector.body5976

vector.body5976:                                  ; preds = %vector.ph5974, %vector.body5976
  %index5977 = phi i64 [ 0, %vector.ph5974 ], [ %index.next5983, %vector.body5976 ] ; 2 uses
  %i.etw = shl i64 %index5977, 1                  ; 3 uses
  %next.gep5978 = getelementptr i8, ptr %.1.lcssa.i.i716, i64 %i.etw
  %next.gep5979 = getelementptr i8, ptr %.128.lcssa.i.i714, i64 %i.etw
  %next.gep5980 = getelementptr i8, ptr %.131.lcssa.i.i713, i64 %i.etw
  %wide.load5981 = load <16 x i16>, ptr %next.gep5978, align 2, !tbaa !57
  %i.etx = zext <16 x i16> %wide.load5981 to <16 x i32>
  %i.ety = shl nuw <16 x i32> %i.etx, splat (i32 16)
  %i.etz = bitcast <16 x i32> %i.ety to <16 x float>
  %wide.load5982 = load <16 x i16>, ptr %next.gep5979, align 2, !tbaa !57
  %i.eua = zext <16 x i16> %wide.load5982 to <16 x i32>
  %i.eub = shl nuw <16 x i32> %i.eua, splat (i32 16)
  %i.euc = bitcast <16 x i32> %i.eub to <16 x float>
  %i.eud = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.etz, <16 x float> %i.euc)
  %i.eue = bitcast <16 x float> %i.eud to <16 x i32>
  %i.euf = lshr <16 x i32> %i.eue, splat (i32 16)
  %i.eug = trunc nuw <16 x i32> %i.euf to <16 x i16>
  store <16 x i16> %i.eug, ptr %next.gep5980, align 2, !tbaa !57
  %index.next5983 = add nuw i64 %index5977, 16    ; 2 uses
  %i.euh = icmp eq i64 %index.next5983, %n.vec5975
  br i1 %i.euh, label %middle.block5984, label %vector.body5976, !llvm.loop !760

middle.block5984:                                 ; preds = %vector.body5976
  %cmp.n5985 = icmp eq i64 %i.etm, %n.vec5975
  br i1 %cmp.n5985, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5987

vec.epilog.iter.check5987:                        ; preds = %middle.block5984
  %min.epilog.iters.check5989 = icmp eq i64 %i.etp, 0
  br i1 %min.epilog.iters.check5989, label %.lr.ph193.i.i.preheader, label %vec.epilog.ph5990, !prof !64

vec.epilog.ph5990:                                ; preds = %vector.main.loop.iter.check5972, %vec.epilog.iter.check5987
  %vec.epilog.resume.val5991 = phi i64 [ %n.vec5975, %vec.epilog.iter.check5987 ], [ 0, %vector.main.loop.iter.check5972 ]
  %n.vec5992 = and i64 %i.etm, 8589934588         ; 4 uses
  %i.eui = shl nuw nsw i64 %n.vec5992, 1          ; 3 uses
  %i.euj = getelementptr i8, ptr %.1.lcssa.i.i716, i64 %i.eui
  %i.euk = trunc i64 %n.vec5992 to i32
  %i.eul = add i32 %.125.lcssa.i.i715, %i.euk
  %i.eum = getelementptr i8, ptr %.128.lcssa.i.i714, i64 %i.eui
  %i.eun = getelementptr i8, ptr %.131.lcssa.i.i713, i64 %i.eui
  br label %vec.epilog.vector.body5993

vec.epilog.vector.body5993:                       ; preds = %vec.epilog.vector.body5993, %vec.epilog.ph5990
  %index5994 = phi i64 [ %vec.epilog.resume.val5991, %vec.epilog.ph5990 ], [ %index.next6000, %vec.epilog.vector.body5993 ] ; 2 uses
  %i.euo = shl i64 %index5994, 1                  ; 3 uses
  %next.gep5995 = getelementptr i8, ptr %.1.lcssa.i.i716, i64 %i.euo
  %next.gep5996 = getelementptr i8, ptr %.128.lcssa.i.i714, i64 %i.euo
  %next.gep5997 = getelementptr i8, ptr %.131.lcssa.i.i713, i64 %i.euo
  %wide.load5998 = load <4 x i16>, ptr %next.gep5995, align 2, !tbaa !57
  %i.eup = zext <4 x i16> %wide.load5998 to <4 x i32>
  %i.euq = shl nuw <4 x i32> %i.eup, splat (i32 16)
  %i.eur = bitcast <4 x i32> %i.euq to <4 x float>
  %wide.load5999 = load <4 x i16>, ptr %next.gep5996, align 2, !tbaa !57
  %i.eus = zext <4 x i16> %wide.load5999 to <4 x i32>
  %i.eut = shl nuw <4 x i32> %i.eus, splat (i32 16)
  %i.euu = bitcast <4 x i32> %i.eut to <4 x float>
  %i.euv = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.eur, <4 x float> %i.euu)
  %i.euw = bitcast <4 x float> %i.euv to <4 x i32>
  %i.eux = lshr <4 x i32> %i.euw, splat (i32 16)
  %i.euy = trunc nuw <4 x i32> %i.eux to <4 x i16>
  store <4 x i16> %i.euy, ptr %next.gep5997, align 2, !tbaa !57
  %index.next6000 = add nuw i64 %index5994, 4     ; 2 uses
  %i.euz = icmp eq i64 %index.next6000, %n.vec5992
  br i1 %i.euz, label %vec.epilog.middle.block6001, label %vec.epilog.vector.body5993, !llvm.loop !761

vec.epilog.middle.block6001:                      ; preds = %vec.epilog.vector.body5993
  %cmp.n6002 = icmp eq i64 %i.etm, %n.vec5992
  br i1 %cmp.n6002, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i.i.preheader

.lr.ph193.i.i.preheader:                          ; preds = %iter.check5986, %vector.memcheck5968, %vec.epilog.iter.check5987, %vec.epilog.middle.block6001
  %.2192.i.i.ph = phi ptr [ %.1.lcssa.i.i716, %iter.check5986 ], [ %.1.lcssa.i.i716, %vector.memcheck5968 ], [ %i.etr, %vec.epilog.iter.check5987 ], [ %i.euj, %vec.epilog.middle.block6001 ] ; 3 uses
  %.226191.i.i.ph = phi i32 [ %.125.lcssa.i.i715, %iter.check5986 ], [ %.125.lcssa.i.i715, %vector.memcheck5968 ], [ %i.ett, %vec.epilog.iter.check5987 ], [ %i.eul, %vec.epilog.middle.block6001 ] ; 4 uses
  %.229190.i.i.ph = phi ptr [ %.128.lcssa.i.i714, %iter.check5986 ], [ %.128.lcssa.i.i714, %vector.memcheck5968 ], [ %i.etu, %vec.epilog.iter.check5987 ], [ %i.eum, %vec.epilog.middle.block6001 ] ; 3 uses
  %.232189.i.i.ph = phi ptr [ %.131.lcssa.i.i713, %iter.check5986 ], [ %.131.lcssa.i.i713, %vector.memcheck5968 ], [ %i.etv, %vec.epilog.iter.check5987 ], [ %i.eun, %vec.epilog.middle.block6001 ] ; 3 uses
  %i.eva = sub i32 %i.eqc, %.226191.i.i.ph
  %.neg8034 = add i32 %.226191.i.i.ph, 1
  %xtraiter7876 = and i32 %i.eva, 1
  %lcmp.mod7877.not = icmp eq i32 %xtraiter7876, 0
  br i1 %lcmp.mod7877.not, label %.lr.ph193.i.i.prol.loopexit, label %.lr.ph193.i.i.prol

.lr.ph193.i.i.prol:                               ; preds = %.lr.ph193.i.i.preheader
  %i.evb = getelementptr inbounds nuw i8, ptr %.2192.i.i.ph, i64 2
  %i.evc = load i16, ptr %.2192.i.i.ph, align 2, !tbaa !57
  %i.evd = zext i16 %i.evc to i32
  %i.eve = shl nuw i32 %i.evd, 16
  %i.evf = bitcast i32 %i.eve to float
  %i.evg = getelementptr inbounds nuw i8, ptr %.229190.i.i.ph, i64 2
  %i.evh = load i16, ptr %.229190.i.i.ph, align 2, !tbaa !57
  %i.evi = zext i16 %i.evh to i32
  %i.evj = shl nuw i32 %i.evi, 16
  %i.evk = bitcast i32 %i.evj to float
  %i.evl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.evf, float %i.evk)
  %i.evm = bitcast float %i.evl to i32
  %i.evn = lshr i32 %i.evm, 16
  %i.evo = trunc nuw i32 %i.evn to i16
  %i.evp = getelementptr inbounds nuw i8, ptr %.232189.i.i.ph, i64 2
  store i16 %i.evo, ptr %.232189.i.i.ph, align 2, !tbaa !57
  %i.evq = add nuw nsw i32 %.226191.i.i.ph, 1
  br label %.lr.ph193.i.i.prol.loopexit

.lr.ph193.i.i.prol.loopexit:                      ; preds = %.lr.ph193.i.i.prol, %.lr.ph193.i.i.preheader
  %.2192.i.i.unr = phi ptr [ %.2192.i.i.ph, %.lr.ph193.i.i.preheader ], [ %i.evb, %.lr.ph193.i.i.prol ]
  %.226191.i.i.unr = phi i32 [ %.226191.i.i.ph, %.lr.ph193.i.i.preheader ], [ %i.evq, %.lr.ph193.i.i.prol ]
  %.229190.i.i.unr = phi ptr [ %.229190.i.i.ph, %.lr.ph193.i.i.preheader ], [ %i.evg, %.lr.ph193.i.i.prol ]
  %.232189.i.i.unr = phi ptr [ %.232189.i.i.ph, %.lr.ph193.i.i.preheader ], [ %i.evp, %.lr.ph193.i.i.prol ]
  %i.evr = icmp eq i32 %i.eqc, %.neg8034
  br i1 %i.evr, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph193.i.i

.lr.ph184.i.i:                                    ; preds = %.preheader172.i.i, %.lr.ph184.i.i
  %.1183.i.i = phi ptr [ %i.eyl, %.lr.ph184.i.i ], [ %.0.lcssa.i.i711, %.preheader172.i.i ] ; 2 uses
  %.125182.i.i = phi i32 [ %i.eyo, %.lr.ph184.i.i ], [ %.024.lcssa.i.i710, %.preheader172.i.i ]
  %.128181.i.i = phi ptr [ %i.eym, %.lr.ph184.i.i ], [ %.027.lcssa.i.i709, %.preheader172.i.i ] ; 2 uses
  %.131180.i.i = phi ptr [ %i.eyn, %.lr.ph184.i.i ], [ %.030.lcssa.i.i708, %.preheader172.i.i ] ; 2 uses
  %i.evs = load i64, ptr %.1183.i.i, align 1, !tbaa !60
  %i.evt = insertelement <2 x i64> poison, i64 %i.evs, i64 0
  %i.evu = bitcast <2 x i64> %i.evt to <8 x i16>
  %i.evv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.evu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.evw = bitcast <8 x i16> %i.evv to <4 x float>
  %i.evx = load i64, ptr %.128181.i.i, align 1, !tbaa !60
  %i.evy = insertelement <2 x i64> poison, i64 %i.evx, i64 0
  %i.evz = bitcast <2 x i64> %i.evy to <8 x i16>
  %i.ewa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.evz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ewb = bitcast <8 x i16> %i.ewa to <4 x float>
  %i.ewc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.evw, <4 x float> splat (float f0x00800000))
  %i.ewd = bitcast <4 x float> %i.ewc to <4 x i32> ; 2 uses
  %i.ewe = lshr <4 x i32> %i.ewd, splat (i32 23)
  %i.ewf = and <4 x i32> %i.ewd, splat (i32 -2139095041)
  %i.ewg = or disjoint <4 x i32> %i.ewf, splat (i32 1056964608)
  %i.ewh = bitcast <4 x i32> %i.ewg to <4 x float> ; 3 uses
  %i.ewi = add nsw <4 x i32> %i.ewe, splat (i32 -127)
  %i.ewj = sitofp fast <4 x i32> %i.ewi to <4 x float> ; 2 uses
  %i.ewk = fadd fast <4 x float> %i.ewj, splat (float 1.000000e+00)
  %i.ewl = fcmp fast olt <4 x float> %i.ewh, splat (float f0x3F3504F3) ; 2 uses
  %i.ewm = select <4 x i1> %i.ewl, <4 x float> %i.ewh, <4 x float> zeroinitializer
  %i.ewn = fadd fast <4 x float> %i.ewh, splat (float -1.000000e+00)
  %i.ewo = select fast <4 x i1> %i.ewl, <4 x float> %i.ewj, <4 x float> %i.ewk ; 2 uses
  %i.ewp = fadd fast <4 x float> %i.ewn, %i.ewm   ; 12 uses
  %i.ewq = fmul fast <4 x float> %i.ewp, %i.ewp   ; 2 uses
  %i.ewr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewp, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ews = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewr, <4 x float> nofpclass(nan inf) %i.ewp, <4 x float> splat (float f0x3DEF251A))
  %i.ewt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ews, <4 x float> nofpclass(nan inf) %i.ewp, <4 x float> splat (float f0xBDFE5D4F))
  %i.ewu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewt, <4 x float> nofpclass(nan inf) %i.ewp, <4 x float> splat (float f0x3E11E9BF))
  %i.ewv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewu, <4 x float> nofpclass(nan inf) %i.ewp, <4 x float> splat (float f0xBE2AAE50))
  %i.eww = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewv, <4 x float> nofpclass(nan inf) %i.ewp, <4 x float> splat (float f0x3E4CCEAC))
  %i.ewx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eww, <4 x float> nofpclass(nan inf) %i.ewp, <4 x float> splat (float f0xBE7FFFFC))
  %i.ewy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewx, <4 x float> nofpclass(nan inf) %i.ewp, <4 x float> splat (float f0x3EAAAAAA))
  %i.ewz = fmul fast <4 x float> %i.ewq, %i.ewp
  %i.exa = fmul fast <4 x float> %i.ewz, %i.ewy
  %i.exb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewo, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.exa)
  %i.exc = fneg fast <4 x float> %i.ewq
  %i.exd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.exc, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.exb)
  %i.exe = fadd fast <4 x float> %i.exd, %i.ewp
  %i.exf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewo, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.exe)
  %i.exg = fmul fast <4 x float> %i.exf, %i.ewb
  %i.exh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.exg, <4 x float> splat (float f0x42B0C0A5))
  %i.exi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.exh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.exj = fmul fast <4 x float> %i.exi, splat (float f0x3FB8AA3B)
  %i.exk = fadd fast <4 x float> %i.exj, splat (float 5.000000e-01) ; 2 uses
  %i.exl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.exk)
  %i.exm = sitofp fast <4 x i32> %i.exl to <4 x float> ; 2 uses
  %i.exn = fcmp fast olt <4 x float> %i.exk, %i.exm
  %i.exo = select <4 x i1> %i.exn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.exp = fsub fast <4 x float> %i.exm, %i.exo   ; 2 uses
  %i.exq = fneg fast <4 x float> %i.exp           ; 2 uses
  %i.exr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.exq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.exi)
  %i.exs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.exq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.exr) ; 8 uses
  %i.ext = fmul fast <4 x float> %i.exs, %i.exs
  %i.exu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exs, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.exv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exu, <4 x float> nofpclass(nan inf) %i.exs, <4 x float> splat (float f0x3C088908))
  %i.exw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exv, <4 x float> nofpclass(nan inf) %i.exs, <4 x float> splat (float f0x3D2AA9C1))
  %i.exx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exw, <4 x float> nofpclass(nan inf) %i.exs, <4 x float> splat (float f0x3E2AAAAA))
  %i.exy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exx, <4 x float> nofpclass(nan inf) %i.exs, <4 x float> splat (float 5.000000e-01))
  %i.exz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exy, <4 x float> nofpclass(nan inf) %i.ext, <4 x float> nofpclass(nan inf) %i.exs)
  %i.eya = fadd fast <4 x float> %i.exz, splat (float 1.000000e+00)
  %i.eyb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.exp)
  %i.eyc = shl <4 x i32> %i.eyb, splat (i32 23)
  %i.eyd = add <4 x i32> %i.eyc, splat (i32 1065353216)
  %i.eye = bitcast <4 x i32> %i.eyd to <4 x float>
  %i.eyf = fmul fast <4 x float> %i.eya, %i.eye
  %i.eyg = bitcast <4 x float> %i.eyf to <4 x i32>
  %i.eyh = lshr <4 x i32> %i.eyg, splat (i32 16)
end_hunk_12
begin_hunk_13_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fn, %.lr.ph165.i.i
  %.018164.i.i = phi ptr [ %1, %.lr.ph165.i.i ], [ %i.gnm, %bb.fn ] ; 2 uses
  %.019163.i.i = phi i32 [ 0, %.lr.ph165.i.i ], [ %i.gno, %bb.fn ]
  %.020162.i.i = phi ptr [ %2, %.lr.ph165.i.i ], [ %i.gnn, %bb.fn ] ; 2 uses
  %i.gmc = load i16, ptr %.018164.i.i, align 2, !tbaa !57
  %i.gmd = zext i16 %i.gmc to i32
  %i.gme = shl nuw i32 %i.gmd, 16
  %i.gmf = insertelement <8 x i32> poison, i32 %i.gme, i64 0
  %i.gmg = bitcast <8 x i32> %i.gmf to <8 x float>
  %i.gmh = shufflevector <8 x float> %i.gmg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gmi = fmul fast <8 x float> %i.gmh, %i.gmb
  %i.gmj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gmi, <8 x float> splat (float f0x42B0C0A5))
  %i.gmk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gmj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gml = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gmk, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gmm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gml, i32 1) ; 2 uses
  %i.gmn = fcmp fast ogt <8 x float> %i.gmm, %i.gml
  %i.gmo = select <8 x i1> %i.gmn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gmp = fsub fast <8 x float> %i.gmm, %i.gmo   ; 2 uses
  %i.gmq = fneg fast <8 x float> %i.gmp           ; 2 uses
  %i.gmr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gmq, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gmk)
  %i.gms = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gmq, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gmr) ; 8 uses
  %i.gmt = fmul fast <8 x float> %i.gms, %i.gms
  %i.gmu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gms, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gmv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gmu, <8 x float> nofpclass(nan inf) %i.gms, <8 x float> splat (float f0x3C088908))
  %i.gmw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gmv, <8 x float> nofpclass(nan inf) %i.gms, <8 x float> splat (float f0x3D2AA9C1))
  %i.gmx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gmw, <8 x float> nofpclass(nan inf) %i.gms, <8 x float> splat (float f0x3E2AAAAA))
  %i.gmy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gmx, <8 x float> nofpclass(nan inf) %i.gms, <8 x float> splat (float 5.000000e-01))
  %i.gmz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gmy, <8 x float> nofpclass(nan inf) %i.gmt, <8 x float> nofpclass(nan inf) %i.gms)
  %i.gna = fadd fast <8 x float> %i.gmz, splat (float 1.000000e+00)
  %i.gnb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gmp)
  %i.gnc = shl <8 x i32> %i.gnb, splat (i32 23)
  %i.gnd = add <8 x i32> %i.gnc, splat (i32 1065353216)
  %i.gne = bitcast <8 x i32> %i.gnd to <8 x float>
  %i.gnf = fmul fast <8 x float> %i.gna, %i.gne
  %i.gng = bitcast <8 x float> %i.gnf to <8 x i32> ; 2 uses
  %i.gnh = shufflevector <8 x i32> %i.gng, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gni = shufflevector <8 x i32> %i.gng, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gnj = lshr <4 x i32> %i.gnh, splat (i32 16)
  %i.gnk = lshr <4 x i32> %i.gni, splat (i32 16)
  %i.gnl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gnj, <4 x i32> %i.gnk)
  store <8 x i16> %i.gnl, ptr %.020162.i.i, align 1, !tbaa !60
  %i.gnm = getelementptr inbounds nuw i8, ptr %.018164.i.i, i64 2
  %i.gnn = getelementptr inbounds nuw i8, ptr %.020162.i.i, i64 16
  %i.gno = add nuw nsw i32 %.019163.i.i, 1        ; 2 uses
  %exitcond167.not.i.i = icmp eq i32 %i.gno, %.sroa.speculated107.i
  br i1 %exitcond167.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.fn, !llvm.loop !781

.lr.ph.i90.i:                                     ; preds = %bb.fm
  %i.gnp = load i64, ptr %0, align 1, !tbaa !60
  %i.gnq = insertelement <2 x i64> poison, i64 %i.gnp, i64 0
  %i.gnr = bitcast <2 x i64> %i.gnq to <8 x i16>
  %i.gns = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gnr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gnt = bitcast <8 x i16> %i.gns to <4 x float>
  %i.gnu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gnt, <4 x float> splat (float f0x00800000))
  %i.gnv = bitcast <4 x float> %i.gnu to <4 x i32> ; 2 uses
  %i.gnw = lshr <4 x i32> %i.gnv, splat (i32 23)
  %i.gnx = and <4 x i32> %i.gnv, splat (i32 -2139095041)
  %i.gny = or disjoint <4 x i32> %i.gnx, splat (i32 1056964608)
  %i.gnz = bitcast <4 x i32> %i.gny to <4 x float> ; 3 uses
  %i.goa = add nsw <4 x i32> %i.gnw, splat (i32 -127)
  %i.gob = sitofp fast <4 x i32> %i.goa to <4 x float> ; 2 uses
  %i.goc = fadd fast <4 x float> %i.gob, splat (float 1.000000e+00)
  %i.god = fcmp fast olt <4 x float> %i.gnz, splat (float f0x3F3504F3) ; 2 uses
  %i.goe = select <4 x i1> %i.god, <4 x float> %i.gnz, <4 x float> zeroinitializer
  %i.gof = fadd fast <4 x float> %i.gnz, splat (float -1.000000e+00)
  %i.gog = select fast <4 x i1> %i.god, <4 x float> %i.gob, <4 x float> %i.goc ; 2 uses
  %i.goh = fadd fast <4 x float> %i.gof, %i.goe   ; 12 uses
  %i.goi = fmul fast <4 x float> %i.goh, %i.goh   ; 2 uses
  %i.goj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.goh, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.gok = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.goj, <4 x float> nofpclass(nan inf) %i.goh, <4 x float> splat (float f0x3DEF251A))
  %i.gol = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gok, <4 x float> nofpclass(nan inf) %i.goh, <4 x float> splat (float f0xBDFE5D4F))
  %i.gom = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gol, <4 x float> nofpclass(nan inf) %i.goh, <4 x float> splat (float f0x3E11E9BF))
  %i.gon = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gom, <4 x float> nofpclass(nan inf) %i.goh, <4 x float> splat (float f0xBE2AAE50))
  %i.goo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gon, <4 x float> nofpclass(nan inf) %i.goh, <4 x float> splat (float f0x3E4CCEAC))
  %i.gop = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.goo, <4 x float> nofpclass(nan inf) %i.goh, <4 x float> splat (float f0xBE7FFFFC))
  %i.goq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gop, <4 x float> nofpclass(nan inf) %i.goh, <4 x float> splat (float f0x3EAAAAAA))
  %i.gor = fmul fast <4 x float> %i.goi, %i.goh
  %i.gos = fmul fast <4 x float> %i.gor, %i.goq
  %i.got = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gog, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gos)
  %i.gou = fneg fast <4 x float> %i.goi
  %i.gov = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gou, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.got)
  %i.gow = fadd fast <4 x float> %i.gov, %i.goh
  %i.gox = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gog, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gow)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %.lr.ph.i90.i
  %.0161.i.i = phi i32 [ 0, %.lr.ph.i90.i ], [ %i.gql, %bb.fo ]
  %.1160.i.i = phi ptr [ %1, %.lr.ph.i90.i ], [ %i.gqj, %bb.fo ] ; 2 uses
  %.121159.i.i = phi ptr [ %2, %.lr.ph.i90.i ], [ %i.gqk, %bb.fo ] ; 2 uses
  %i.goy = load i16, ptr %.1160.i.i, align 2, !tbaa !57
  %i.goz = zext i16 %i.goy to i32
  %i.gpa = shl nuw i32 %i.goz, 16
  %i.gpb = insertelement <4 x i32> poison, i32 %i.gpa, i64 0
  %i.gpc = bitcast <4 x i32> %i.gpb to <4 x float>
  %i.gpd = shufflevector <4 x float> %i.gpc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gpe = fmul fast <4 x float> %i.gpd, %i.gox
  %i.gpf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gpe, <4 x float> splat (float f0x42B0C0A5))
  %i.gpg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gpf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gph = fmul fast <4 x float> %i.gpg, splat (float f0x3FB8AA3B)
  %i.gpi = fadd fast <4 x float> %i.gph, splat (float 5.000000e-01) ; 2 uses
  %i.gpj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gpi)
  %i.gpk = sitofp fast <4 x i32> %i.gpj to <4 x float> ; 2 uses
  %i.gpl = fcmp fast olt <4 x float> %i.gpi, %i.gpk
  %i.gpm = select <4 x i1> %i.gpl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gpn = fsub fast <4 x float> %i.gpk, %i.gpm   ; 2 uses
  %i.gpo = fneg fast <4 x float> %i.gpn           ; 2 uses
  %i.gpp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gpo, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gpg)
  %i.gpq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gpo, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gpp) ; 8 uses
  %i.gpr = fmul fast <4 x float> %i.gpq, %i.gpq
  %i.gps = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gpt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gps, <4 x float> nofpclass(nan inf) %i.gpq, <4 x float> splat (float f0x3C088908))
  %i.gpu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpt, <4 x float> nofpclass(nan inf) %i.gpq, <4 x float> splat (float f0x3D2AA9C1))
  %i.gpv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpu, <4 x float> nofpclass(nan inf) %i.gpq, <4 x float> splat (float f0x3E2AAAAA))
  %i.gpw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpv, <4 x float> nofpclass(nan inf) %i.gpq, <4 x float> splat (float 5.000000e-01))
  %i.gpx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpw, <4 x float> nofpclass(nan inf) %i.gpr, <4 x float> nofpclass(nan inf) %i.gpq)
  %i.gpy = fadd fast <4 x float> %i.gpx, splat (float 1.000000e+00)
  %i.gpz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gpn)
  %i.gqa = shl <4 x i32> %i.gpz, splat (i32 23)
  %i.gqb = add <4 x i32> %i.gqa, splat (i32 1065353216)
  %i.gqc = bitcast <4 x i32> %i.gqb to <4 x float>
  %i.gqd = fmul fast <4 x float> %i.gpy, %i.gqc
  %i.gqe = bitcast <4 x float> %i.gqd to <4 x i32>
  %i.gqf = lshr <4 x i32> %i.gqe, splat (i32 16)
  %i.gqg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gqf, <4 x i32> poison)
  %i.gqh = bitcast <8 x i16> %i.gqg to <2 x i64>
  %i.gqi = extractelement <2 x i64> %i.gqh, i64 0
  store i64 %i.gqi, ptr %.121159.i.i, align 1, !tbaa !60
  %i.gqj = getelementptr inbounds nuw i8, ptr %.1160.i.i, i64 2
  %i.gqk = getelementptr inbounds nuw i8, ptr %.121159.i.i, i64 8
  %i.gql = add nuw nsw i32 %.0161.i.i, 1          ; 2 uses
  %exitcond.not.i91.i = icmp eq i32 %i.gql, %.sroa.speculated107.i
  br i1 %exitcond.not.i91.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.fo, !llvm.loop !782

bb.fp:                                            ; preds = %bb.a
  %.sroa.speculated86.i719 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i720 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.gqm = mul i32 %.sroa.speculated.i720, %.sroa.speculated86.i719 ; 40 uses
  %i.gqn = icmp eq i32 %5, %6
  br i1 %i.gqn, label %bb.fq, label %bb.ge

bb.fq:                                            ; preds = %bb.fp
  %i.gqo = icmp eq i32 %3, %4
  br i1 %i.gqo, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.gqp = icmp sgt i32 %i.gqm, 7
  br i1 %i.gqp, label %.lr.ph.i.i835, label %.preheader46.i.i814

.preheader46.loopexit.i.i840:                     ; preds = %.lr.ph.i.i835
  %i.gqq = and i32 %i.gqm, 2147483640
  br label %.preheader46.i.i814

.preheader46.i.i814:                              ; preds = %.preheader46.loopexit.i.i840, %bb.fr
  %.030.lcssa.i.i815 = phi ptr [ %2, %bb.fr ], [ %i.grm, %.preheader46.loopexit.i.i840 ] ; 2 uses
  %.027.lcssa.i.i816 = phi ptr [ %1, %bb.fr ], [ %i.grl, %.preheader46.loopexit.i.i840 ] ; 2 uses
  %.024.lcssa.i.i817 = phi i32 [ 0, %bb.fr ], [ %i.gqq, %.preheader46.loopexit.i.i840 ] ; 3 uses
  %.0.lcssa.i.i818 = phi ptr [ %0, %bb.fr ], [ %i.grk, %.preheader46.loopexit.i.i840 ] ; 2 uses
  %i.gqr = or disjoint i32 %.024.lcssa.i.i817, 3
  %i.gqs = icmp slt i32 %i.gqr, %i.gqm
  br i1 %i.gqs, label %.lr.ph58.i.i830, label %.preheader.i.i819

.lr.ph.i.i835:                                    ; preds = %bb.fr, %.lr.ph.i.i835
  %.050.i.i836 = phi ptr [ %i.grk, %.lr.ph.i.i835 ], [ %0, %bb.fr ] ; 2 uses
  %.02449.i.i837 = phi i32 [ %i.grn, %.lr.ph.i.i835 ], [ 0, %bb.fr ]
  %.02748.i.i838 = phi ptr [ %i.grl, %.lr.ph.i.i835 ], [ %1, %bb.fr ] ; 2 uses
  %.03047.i.i839 = phi ptr [ %i.grm, %.lr.ph.i.i835 ], [ %2, %bb.fr ] ; 2 uses
  %i.gqt = load <8 x i16>, ptr %.050.i.i836, align 1, !tbaa !60 ; 2 uses
  %i.gqu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gqt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gqv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gqt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gqw = shufflevector <8 x i16> %i.gqu, <8 x i16> %i.gqv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gqx = bitcast <16 x i16> %i.gqw to <8 x float>
  %i.gqy = load <8 x i16>, ptr %.02748.i.i838, align 1, !tbaa !60 ; 2 uses
  %i.gqz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gqy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gra = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gqy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.grb = shufflevector <8 x i16> %i.gqz, <8 x i16> %i.gra, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.grc = bitcast <16 x i16> %i.grb to <8 x float>
  %i.grd = fsub fast <8 x float> %i.grc, %i.gqx
  %i.gre = bitcast <8 x float> %i.grd to <8 x i32> ; 2 uses
  %i.grf = shufflevector <8 x i32> %i.gre, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.grg = shufflevector <8 x i32> %i.gre, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.grh = lshr <4 x i32> %i.grf, splat (i32 16)
  %i.gri = lshr <4 x i32> %i.grg, splat (i32 16)
  %i.grj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.grh, <4 x i32> %i.gri)
  store <8 x i16> %i.grj, ptr %.03047.i.i839, align 1, !tbaa !60
  %i.grk = getelementptr inbounds nuw i8, ptr %.050.i.i836, i64 16 ; 2 uses
  %i.grl = getelementptr inbounds nuw i8, ptr %.02748.i.i838, i64 16 ; 2 uses
  %i.grm = getelementptr inbounds nuw i8, ptr %.03047.i.i839, i64 16 ; 2 uses
  %i.grn = add nuw nsw i32 %.02449.i.i837, 8      ; 2 uses
  %i.gro = or disjoint i32 %i.grn, 7
  %i.grp = icmp slt i32 %i.gro, %i.gqm
  br i1 %i.grp, label %.lr.ph.i.i835, label %.preheader46.loopexit.i.i840, !llvm.loop !783

.preheader.i.i819:                                ; preds = %.lr.ph58.i.i830, %.preheader46.i.i814
  %.131.lcssa.i.i820 = phi ptr [ %.030.lcssa.i.i815, %.preheader46.i.i814 ], [ %i.gus, %.lr.ph58.i.i830 ] ; 7 uses
  %.128.lcssa.i.i821 = phi ptr [ %.027.lcssa.i.i816, %.preheader46.i.i814 ], [ %i.gur, %.lr.ph58.i.i830 ] ; 7 uses
  %.125.lcssa.i.i822 = phi i32 [ %.024.lcssa.i.i817, %.preheader46.i.i814 ], [ %i.gut, %.lr.ph58.i.i830 ] ; 6 uses
  %.1.lcssa.i.i823 = phi ptr [ %.0.lcssa.i.i818, %.preheader46.i.i814 ], [ %i.guq, %.lr.ph58.i.i830 ] ; 7 uses
  %.128.lcssa.i.i8215797 = ptrtoaddr ptr %.128.lcssa.i.i821 to i64
  %.131.lcssa.i.i8205798 = ptrtoaddr ptr %.1.lcssa.i.i823 to i64
  %.1.lcssa.i.i8235799 = ptrtoaddr ptr %.131.lcssa.i.i820 to i64 ; 2 uses
  %i.grq = icmp slt i32 %.125.lcssa.i.i822, %i.gqm
  br i1 %i.grq, label %iter.check5819, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5819:                                   ; preds = %.preheader.i.i819
  %i.grr = xor i32 %.125.lcssa.i.i822, -1
  %i.grs = add i32 %i.gqm, %i.grr                 ; 3 uses
  %i.grt = zext i32 %i.grs to i64
  %i.gru = add nuw nsw i64 %i.grt, 1              ; 5 uses
  %min.iters.check5800 = icmp ult i32 %i.grs, 3
  br i1 %min.iters.check5800, label %.lr.ph67.i.i824.preheader, label %vector.memcheck5801

vector.memcheck5801:                              ; preds = %iter.check5819
  %i.grv = sub i64 %.131.lcssa.i.i8205798, %.1.lcssa.i.i8235799
  %diff.check5802 = icmp ugt i64 %i.grv, -32
  %i.grw = sub i64 %.128.lcssa.i.i8215797, %.1.lcssa.i.i8235799
  %diff.check5803 = icmp ugt i64 %i.grw, -32
  %conflict.rdx5804 = or i1 %diff.check5802, %diff.check5803
  br i1 %conflict.rdx5804, label %.lr.ph67.i.i824.preheader, label %vector.main.loop.iter.check5805

vector.main.loop.iter.check5805:                  ; preds = %vector.memcheck5801
  %min.iters.check5806 = icmp ult i32 %i.grs, 15
  br i1 %min.iters.check5806, label %vec.epilog.ph5823, label %vector.ph5807

vector.ph5807:                                    ; preds = %vector.main.loop.iter.check5805
  %i.grx = and i64 %i.gru, 12
  %n.vec5808 = and i64 %i.gru, 8589934576         ; 5 uses
  %i.gry = shl nuw nsw i64 %n.vec5808, 1          ; 3 uses
  %i.grz = getelementptr i8, ptr %.1.lcssa.i.i823, i64 %i.gry
  %i.gsa = trunc i64 %n.vec5808 to i32
  %i.gsb = add i32 %.125.lcssa.i.i822, %i.gsa
  %i.gsc = getelementptr i8, ptr %.128.lcssa.i.i821, i64 %i.gry
  %i.gsd = getelementptr i8, ptr %.131.lcssa.i.i820, i64 %i.gry
  br label %vector.body5809

vector.body5809:                                  ; preds = %vector.ph5807, %vector.body5809
  %index5810 = phi i64 [ 0, %vector.ph5807 ], [ %index.next5816, %vector.body5809 ] ; 2 uses
  %i.gse = shl i64 %index5810, 1                  ; 3 uses
  %next.gep5811 = getelementptr i8, ptr %.1.lcssa.i.i823, i64 %i.gse
  %next.gep5812 = getelementptr i8, ptr %.128.lcssa.i.i821, i64 %i.gse
  %next.gep5813 = getelementptr i8, ptr %.131.lcssa.i.i820, i64 %i.gse
  %wide.load5814 = load <16 x i16>, ptr %next.gep5811, align 2, !tbaa !57
  %i.gsf = zext <16 x i16> %wide.load5814 to <16 x i32>
  %i.gsg = shl nuw <16 x i32> %i.gsf, splat (i32 16)
  %i.gsh = bitcast <16 x i32> %i.gsg to <16 x float>
  %wide.load5815 = load <16 x i16>, ptr %next.gep5812, align 2, !tbaa !57
  %i.gsi = zext <16 x i16> %wide.load5815 to <16 x i32>
  %i.gsj = shl nuw <16 x i32> %i.gsi, splat (i32 16)
  %i.gsk = bitcast <16 x i32> %i.gsj to <16 x float>
  %i.gsl = fsub fast <16 x float> %i.gsk, %i.gsh
  %i.gsm = bitcast <16 x float> %i.gsl to <16 x i32>
  %i.gsn = lshr <16 x i32> %i.gsm, splat (i32 16)
  %i.gso = trunc nuw <16 x i32> %i.gsn to <16 x i16>
  store <16 x i16> %i.gso, ptr %next.gep5813, align 2, !tbaa !57
  %index.next5816 = add nuw i64 %index5810, 16    ; 2 uses
  %i.gsp = icmp eq i64 %index.next5816, %n.vec5808
  br i1 %i.gsp, label %middle.block5817, label %vector.body5809, !llvm.loop !784

middle.block5817:                                 ; preds = %vector.body5809
  %cmp.n5818 = icmp eq i64 %i.gru, %n.vec5808
  br i1 %cmp.n5818, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5820

vec.epilog.iter.check5820:                        ; preds = %middle.block5817
  %min.epilog.iters.check5822 = icmp eq i64 %i.grx, 0
  br i1 %min.epilog.iters.check5822, label %.lr.ph67.i.i824.preheader, label %vec.epilog.ph5823, !prof !64

vec.epilog.ph5823:                                ; preds = %vector.main.loop.iter.check5805, %vec.epilog.iter.check5820
  %vec.epilog.resume.val5824 = phi i64 [ %n.vec5808, %vec.epilog.iter.check5820 ], [ 0, %vector.main.loop.iter.check5805 ]
  %n.vec5825 = and i64 %i.gru, 8589934588         ; 4 uses
  %i.gsq = shl nuw nsw i64 %n.vec5825, 1          ; 3 uses
  %i.gsr = getelementptr i8, ptr %.1.lcssa.i.i823, i64 %i.gsq
  %i.gss = trunc i64 %n.vec5825 to i32
  %i.gst = add i32 %.125.lcssa.i.i822, %i.gss
  %i.gsu = getelementptr i8, ptr %.128.lcssa.i.i821, i64 %i.gsq
  %i.gsv = getelementptr i8, ptr %.131.lcssa.i.i820, i64 %i.gsq
  br label %vec.epilog.vector.body5826

vec.epilog.vector.body5826:                       ; preds = %vec.epilog.vector.body5826, %vec.epilog.ph5823
  %index5827 = phi i64 [ %vec.epilog.resume.val5824, %vec.epilog.ph5823 ], [ %index.next5833, %vec.epilog.vector.body5826 ] ; 2 uses
  %i.gsw = shl i64 %index5827, 1                  ; 3 uses
  %next.gep5828 = getelementptr i8, ptr %.1.lcssa.i.i823, i64 %i.gsw
  %next.gep5829 = getelementptr i8, ptr %.128.lcssa.i.i821, i64 %i.gsw
  %next.gep5830 = getelementptr i8, ptr %.131.lcssa.i.i820, i64 %i.gsw
  %wide.load5831 = load <4 x i16>, ptr %next.gep5828, align 2, !tbaa !57
  %i.gsx = zext <4 x i16> %wide.load5831 to <4 x i32>
  %i.gsy = shl nuw <4 x i32> %i.gsx, splat (i32 16)
  %i.gsz = bitcast <4 x i32> %i.gsy to <4 x float>
  %wide.load5832 = load <4 x i16>, ptr %next.gep5829, align 2, !tbaa !57
  %i.gta = zext <4 x i16> %wide.load5832 to <4 x i32>
  %i.gtb = shl nuw <4 x i32> %i.gta, splat (i32 16)
  %i.gtc = bitcast <4 x i32> %i.gtb to <4 x float>
  %i.gtd = fsub fast <4 x float> %i.gtc, %i.gsz
  %i.gte = bitcast <4 x float> %i.gtd to <4 x i32>
  %i.gtf = lshr <4 x i32> %i.gte, splat (i32 16)
  %i.gtg = trunc nuw <4 x i32> %i.gtf to <4 x i16>
  store <4 x i16> %i.gtg, ptr %next.gep5830, align 2, !tbaa !57
  %index.next5833 = add nuw i64 %index5827, 4     ; 2 uses
  %i.gth = icmp eq i64 %index.next5833, %n.vec5825
  br i1 %i.gth, label %vec.epilog.middle.block5834, label %vec.epilog.vector.body5826, !llvm.loop !785

vec.epilog.middle.block5834:                      ; preds = %vec.epilog.vector.body5826
  %cmp.n5835 = icmp eq i64 %i.gru, %n.vec5825
  br i1 %cmp.n5835, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i824.preheader

.lr.ph67.i.i824.preheader:                        ; preds = %iter.check5819, %vector.memcheck5801, %vec.epilog.iter.check5820, %vec.epilog.middle.block5834
  %.266.i.i825.ph = phi ptr [ %.1.lcssa.i.i823, %iter.check5819 ], [ %.1.lcssa.i.i823, %vector.memcheck5801 ], [ %i.grz, %vec.epilog.iter.check5820 ], [ %i.gsr, %vec.epilog.middle.block5834 ] ; 3 uses
  %.22665.i.i826.ph = phi i32 [ %.125.lcssa.i.i822, %iter.check5819 ], [ %.125.lcssa.i.i822, %vector.memcheck5801 ], [ %i.gsb, %vec.epilog.iter.check5820 ], [ %i.gst, %vec.epilog.middle.block5834 ] ; 4 uses
  %.22964.i.i827.ph = phi ptr [ %.128.lcssa.i.i821, %iter.check5819 ], [ %.128.lcssa.i.i821, %vector.memcheck5801 ], [ %i.gsc, %vec.epilog.iter.check5820 ], [ %i.gsu, %vec.epilog.middle.block5834 ] ; 3 uses
  %.23263.i.i828.ph = phi ptr [ %.131.lcssa.i.i820, %iter.check5819 ], [ %.131.lcssa.i.i820, %vector.memcheck5801 ], [ %i.gsd, %vec.epilog.iter.check5820 ], [ %i.gsv, %vec.epilog.middle.block5834 ] ; 3 uses
  %i.gti = sub i32 %i.gqm, %.22665.i.i826.ph
  %.neg8030 = add i32 %.22665.i.i826.ph, 1
  %xtraiter7868 = and i32 %i.gti, 1
  %lcmp.mod7869.not = icmp eq i32 %xtraiter7868, 0
  br i1 %lcmp.mod7869.not, label %.lr.ph67.i.i824.prol.loopexit, label %.lr.ph67.i.i824.prol

.lr.ph67.i.i824.prol:                             ; preds = %.lr.ph67.i.i824.preheader
  %i.gtj = getelementptr inbounds nuw i8, ptr %.266.i.i825.ph, i64 2
  %i.gtk = load i16, ptr %.266.i.i825.ph, align 2, !tbaa !57
  %i.gtl = zext i16 %i.gtk to i32
  %i.gtm = shl nuw i32 %i.gtl, 16
  %i.gtn = bitcast i32 %i.gtm to float
  %i.gto = getelementptr inbounds nuw i8, ptr %.22964.i.i827.ph, i64 2
  %i.gtp = load i16, ptr %.22964.i.i827.ph, align 2, !tbaa !57
  %i.gtq = zext i16 %i.gtp to i32
  %i.gtr = shl nuw i32 %i.gtq, 16
  %i.gts = bitcast i32 %i.gtr to float
  %i.gtt = fsub fast float %i.gts, %i.gtn
  %i.gtu = bitcast float %i.gtt to i32
  %i.gtv = lshr i32 %i.gtu, 16
  %i.gtw = trunc nuw i32 %i.gtv to i16
  %i.gtx = getelementptr inbounds nuw i8, ptr %.23263.i.i828.ph, i64 2
  store i16 %i.gtw, ptr %.23263.i.i828.ph, align 2, !tbaa !57
  %i.gty = add nuw nsw i32 %.22665.i.i826.ph, 1
  br label %.lr.ph67.i.i824.prol.loopexit

.lr.ph67.i.i824.prol.loopexit:                    ; preds = %.lr.ph67.i.i824.prol, %.lr.ph67.i.i824.preheader
  %.266.i.i825.unr = phi ptr [ %.266.i.i825.ph, %.lr.ph67.i.i824.preheader ], [ %i.gtj, %.lr.ph67.i.i824.prol ]
  %.22665.i.i826.unr = phi i32 [ %.22665.i.i826.ph, %.lr.ph67.i.i824.preheader ], [ %i.gty, %.lr.ph67.i.i824.prol ]
  %.22964.i.i827.unr = phi ptr [ %.22964.i.i827.ph, %.lr.ph67.i.i824.preheader ], [ %i.gto, %.lr.ph67.i.i824.prol ]
  %.23263.i.i828.unr = phi ptr [ %.23263.i.i828.ph, %.lr.ph67.i.i824.preheader ], [ %i.gtx, %.lr.ph67.i.i824.prol ]
  %i.gtz = icmp eq i32 %i.gqm, %.neg8030
  br i1 %i.gtz, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i824

.lr.ph58.i.i830:                                  ; preds = %.preheader46.i.i814, %.lr.ph58.i.i830
  %.157.i.i831 = phi ptr [ %i.guq, %.lr.ph58.i.i830 ], [ %.0.lcssa.i.i818, %.preheader46.i.i814 ] ; 2 uses
  %.12556.i.i832 = phi i32 [ %i.gut, %.lr.ph58.i.i830 ], [ %.024.lcssa.i.i817, %.preheader46.i.i814 ]
  %.12855.i.i833 = phi ptr [ %i.gur, %.lr.ph58.i.i830 ], [ %.027.lcssa.i.i816, %.preheader46.i.i814 ] ; 2 uses
  %.13154.i.i834 = phi ptr [ %i.gus, %.lr.ph58.i.i830 ], [ %.030.lcssa.i.i815, %.preheader46.i.i814 ] ; 2 uses
  %i.gua = load i64, ptr %.157.i.i831, align 1, !tbaa !60
  %i.gub = insertelement <2 x i64> poison, i64 %i.gua, i64 0
  %i.guc = bitcast <2 x i64> %i.gub to <8 x i16>
  %i.gud = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.guc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gue = bitcast <8 x i16> %i.gud to <4 x float>
  %i.guf = load i64, ptr %.12855.i.i833, align 1, !tbaa !60
  %i.gug = insertelement <2 x i64> poison, i64 %i.guf, i64 0
  %i.guh = bitcast <2 x i64> %i.gug to <8 x i16>
  %i.gui = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.guh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.guj = bitcast <8 x i16> %i.gui to <4 x float>
  %i.guk = fsub fast <4 x float> %i.guj, %i.gue
  %i.gul = bitcast <4 x float> %i.guk to <4 x i32>
  %i.gum = lshr <4 x i32> %i.gul, splat (i32 16)
  %i.gun = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gum, <4 x i32> poison)
  %i.guo = bitcast <8 x i16> %i.gun to <2 x i64>
  %i.gup = extractelement <2 x i64> %i.guo, i64 0
  store i64 %i.gup, ptr %.13154.i.i834, align 1, !tbaa !60
  %i.guq = getelementptr inbounds nuw i8, ptr %.157.i.i831, i64 8 ; 2 uses
  %i.gur = getelementptr inbounds nuw i8, ptr %.12855.i.i833, i64 8 ; 2 uses
  %i.gus = getelementptr inbounds nuw i8, ptr %.13154.i.i834, i64 8 ; 2 uses
  %i.gut = add nuw nsw i32 %.12556.i.i832, 4      ; 3 uses
  %i.guu = or disjoint i32 %i.gut, 3
  %i.guv = icmp slt i32 %i.guu, %i.gqm
  br i1 %i.guv, label %.lr.ph58.i.i830, label %.preheader.i.i819, !llvm.loop !786

.lr.ph67.i.i824:                                  ; preds = %.lr.ph67.i.i824.prol.loopexit, %.lr.ph67.i.i824
  %.266.i.i825 = phi ptr [ %i.gvl, %.lr.ph67.i.i824 ], [ %.266.i.i825.unr, %.lr.ph67.i.i824.prol.loopexit ] ; 3 uses
  %.22665.i.i826 = phi i32 [ %i.gwa, %.lr.ph67.i.i824 ], [ %.22665.i.i826.unr, %.lr.ph67.i.i824.prol.loopexit ]
  %.22964.i.i827 = phi ptr [ %i.gvq, %.lr.ph67.i.i824 ], [ %.22964.i.i827.unr, %.lr.ph67.i.i824.prol.loopexit ] ; 3 uses
  %.23263.i.i828 = phi ptr [ %i.gvz, %.lr.ph67.i.i824 ], [ %.23263.i.i828.unr, %.lr.ph67.i.i824.prol.loopexit ] ; 3 uses
  %i.guw = getelementptr inbounds nuw i8, ptr %.266.i.i825, i64 2
  %i.gux = load i16, ptr %.266.i.i825, align 2, !tbaa !57
  %i.guy = zext i16 %i.gux to i32
  %i.guz = shl nuw i32 %i.guy, 16
  %i.gva = bitcast i32 %i.guz to float
  %i.gvb = getelementptr inbounds nuw i8, ptr %.22964.i.i827, i64 2
  %i.gvc = load i16, ptr %.22964.i.i827, align 2, !tbaa !57
  %i.gvd = zext i16 %i.gvc to i32
  %i.gve = shl nuw i32 %i.gvd, 16
  %i.gvf = bitcast i32 %i.gve to float
  %i.gvg = fsub fast float %i.gvf, %i.gva
  %i.gvh = bitcast float %i.gvg to i32
  %i.gvi = lshr i32 %i.gvh, 16
  %i.gvj = trunc nuw i32 %i.gvi to i16
  %i.gvk = getelementptr inbounds nuw i8, ptr %.23263.i.i828, i64 2
  store i16 %i.gvj, ptr %.23263.i.i828, align 2, !tbaa !57
  %i.gvl = getelementptr inbounds nuw i8, ptr %.266.i.i825, i64 4
  %i.gvm = load i16, ptr %i.guw, align 2, !tbaa !57
  %i.gvn = zext i16 %i.gvm to i32
  %i.gvo = shl nuw i32 %i.gvn, 16
  %i.gvp = bitcast i32 %i.gvo to float
  %i.gvq = getelementptr inbounds nuw i8, ptr %.22964.i.i827, i64 4
  %i.gvr = load i16, ptr %i.gvb, align 2, !tbaa !57
  %i.gvs = zext i16 %i.gvr to i32
  %i.gvt = shl nuw i32 %i.gvs, 16
  %i.gvu = bitcast i32 %i.gvt to float
  %i.gvv = fsub fast float %i.gvu, %i.gvp
  %i.gvw = bitcast float %i.gvv to i32
  %i.gvx = lshr i32 %i.gvw, 16
  %i.gvy = trunc nuw i32 %i.gvx to i16
  %i.gvz = getelementptr inbounds nuw i8, ptr %.23263.i.i828, i64 4
  store i16 %i.gvy, ptr %i.gvk, align 2, !tbaa !57
  %i.gwa = add nuw nsw i32 %.22665.i.i826, 2      ; 2 uses
  %exitcond.not.i.i829.1 = icmp eq i32 %i.gwa, %i.gqm
  br i1 %exitcond.not.i.i829.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i824, !llvm.loop !787

bb.fs:                                            ; preds = %bb.fq
  %i.gwb = icmp eq i32 %4, 1
end_hunk_13
begin_hunk_14_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.hlq = lshr i32 %i.hlp, 16
  %i.hlr = trunc nuw i32 %i.hlq to i16
  %i.hls = getelementptr inbounds nuw i8, ptr %.22725.i.i743, i64 2
  store i16 %i.hlr, ptr %.22725.i.i743, align 2, !tbaa !57
  %i.hlt = getelementptr inbounds nuw i8, ptr %.228.i.i741, i64 4
  %i.hlu = load i16, ptr %i.hlj, align 2, !tbaa !57
  %i.hlv = zext i16 %i.hlu to i32
  %i.hlw = shl nuw i32 %i.hlv, 16
  %i.hlx = bitcast i32 %i.hlw to float
  %i.hly = fsub fast float %i.hhx, %i.hlx
  %i.hlz = bitcast float %i.hly to i32
  %i.hma = lshr i32 %i.hlz, 16
  %i.hmb = trunc nuw i32 %i.hma to i16
  %i.hmc = getelementptr inbounds nuw i8, ptr %.22725.i.i743, i64 4
  store i16 %i.hmb, ptr %i.hls, align 2, !tbaa !57
  %i.hmd = add nuw nsw i32 %.22426.i.i742, 2      ; 2 uses
  %exitcond.not.i72.i744.1 = icmp eq i32 %i.hmd, %i.gqm
  br i1 %exitcond.not.i72.i744.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph29.i.i740, !llvm.loop !804

bb.gj:                                            ; preds = %bb.gh
  %i.hme = icmp eq i32 %3, 1
  br i1 %i.hme, label %bb.gk, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.gk:                                            ; preds = %bb.gj
  switch i32 %.sroa.speculated.i720, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.gl
    i32 4, label %bb.gm
  ]

bb.gl:                                            ; preds = %bb.gk
  %i.hmf = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.hmg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hmf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hmh = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.hmf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hmi = shufflevector <8 x i16> %i.hmg, <8 x i16> %i.hmh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hmj = bitcast <16 x i16> %i.hmi to <8 x float> ; 3 uses
  %xtraiter7857 = and i32 %.sroa.speculated86.i719, 1
  %i.hmk = icmp eq i32 %.sroa.speculated86.i719, 1
  br i1 %i.hmk, label %.lr.ph39.i.i726.epil.preheader, label %.new7856

.new7856:                                         ; preds = %bb.gl
  %unroll_iter7860 = and i32 %.sroa.speculated86.i719, 2147483646
  br label %.lr.ph39.i.i726

.lr.ph39.i.i726:                                  ; preds = %.lr.ph39.i.i726, %.new7856
  %.01838.i.i727 = phi ptr [ %1, %.new7856 ], [ %i.hnn, %.lr.ph39.i.i726 ] ; 3 uses
  %.02036.i.i729 = phi ptr [ %2, %.new7856 ], [ %i.hno, %.lr.ph39.i.i726 ] ; 3 uses
  %niter7861 = phi i32 [ 0, %.new7856 ], [ %niter7861.next.1, %.lr.ph39.i.i726 ]
  %i.hml = load i16, ptr %.01838.i.i727, align 2, !tbaa !57
  %i.hmm = zext i16 %i.hml to i32
  %i.hmn = shl nuw i32 %i.hmm, 16
  %i.hmo = insertelement <8 x i32> poison, i32 %i.hmn, i64 0
  %i.hmp = bitcast <8 x i32> %i.hmo to <8 x float>
  %i.hmq = shufflevector <8 x float> %i.hmp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hmr = fsub fast <8 x float> %i.hmq, %i.hmj
  %i.hms = bitcast <8 x float> %i.hmr to <8 x i32> ; 2 uses
  %i.hmt = shufflevector <8 x i32> %i.hms, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hmu = shufflevector <8 x i32> %i.hms, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hmv = lshr <4 x i32> %i.hmt, splat (i32 16)
  %i.hmw = lshr <4 x i32> %i.hmu, splat (i32 16)
  %i.hmx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hmv, <4 x i32> %i.hmw)
  store <8 x i16> %i.hmx, ptr %.02036.i.i729, align 1, !tbaa !60
  %i.hmy = getelementptr inbounds nuw i8, ptr %.01838.i.i727, i64 2
  %i.hmz = getelementptr inbounds nuw i8, ptr %.02036.i.i729, i64 16
  %i.hna = load i16, ptr %i.hmy, align 2, !tbaa !57
  %i.hnb = zext i16 %i.hna to i32
  %i.hnc = shl nuw i32 %i.hnb, 16
  %i.hnd = insertelement <8 x i32> poison, i32 %i.hnc, i64 0
  %i.hne = bitcast <8 x i32> %i.hnd to <8 x float>
  %i.hnf = shufflevector <8 x float> %i.hne, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hng = fsub fast <8 x float> %i.hnf, %i.hmj
  %i.hnh = bitcast <8 x float> %i.hng to <8 x i32> ; 2 uses
  %i.hni = shufflevector <8 x i32> %i.hnh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hnj = shufflevector <8 x i32> %i.hnh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hnk = lshr <4 x i32> %i.hni, splat (i32 16)
  %i.hnl = lshr <4 x i32> %i.hnj, splat (i32 16)
  %i.hnm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hnk, <4 x i32> %i.hnl)
  store <8 x i16> %i.hnm, ptr %i.hmz, align 1, !tbaa !60
  %i.hnn = getelementptr inbounds nuw i8, ptr %.01838.i.i727, i64 4 ; 2 uses
  %i.hno = getelementptr inbounds nuw i8, ptr %.02036.i.i729, i64 32 ; 2 uses
  %niter7861.next.1 = add i32 %niter7861, 2       ; 2 uses
  %niter7861.ncmp.1 = icmp eq i32 %niter7861.next.1, %unroll_iter7860
  br i1 %niter7861.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7419.unr-lcssa, label %.lr.ph39.i.i726, !llvm.loop !805

bb.gm:                                            ; preds = %bb.gk
  %i.hnp = load i64, ptr %0, align 1, !tbaa !60
  %i.hnq = insertelement <2 x i64> poison, i64 %i.hnp, i64 0
  %i.hnr = bitcast <2 x i64> %i.hnq to <8 x i16>
  %i.hns = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hnr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hnt = bitcast <8 x i16> %i.hns to <4 x float> ; 3 uses
  %xtraiter7851 = and i32 %.sroa.speculated86.i719, 1
  %i.hnu = icmp eq i32 %.sroa.speculated86.i719, 1
  br i1 %i.hnu, label %.lr.ph.i74.i721.epil.preheader, label %.new7850

.new7850:                                         ; preds = %bb.gm
  %unroll_iter7854 = and i32 %.sroa.speculated86.i719, 2147483646
  br label %.lr.ph.i74.i721

.lr.ph.i74.i721:                                  ; preds = %.lr.ph.i74.i721, %.new7850
  %.134.i.i723 = phi ptr [ %1, %.new7850 ], [ %i.hov, %.lr.ph.i74.i721 ] ; 3 uses
  %.12133.i.i724 = phi ptr [ %2, %.new7850 ], [ %i.how, %.lr.ph.i74.i721 ] ; 3 uses
  %niter7855 = phi i32 [ 0, %.new7850 ], [ %niter7855.next.1, %.lr.ph.i74.i721 ]
  %i.hnv = load i16, ptr %.134.i.i723, align 2, !tbaa !57
  %i.hnw = zext i16 %i.hnv to i32
  %i.hnx = shl nuw i32 %i.hnw, 16
  %i.hny = insertelement <4 x i32> poison, i32 %i.hnx, i64 0
  %i.hnz = bitcast <4 x i32> %i.hny to <4 x float>
  %i.hoa = shufflevector <4 x float> %i.hnz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hob = fsub fast <4 x float> %i.hoa, %i.hnt
  %i.hoc = bitcast <4 x float> %i.hob to <4 x i32>
  %i.hod = lshr <4 x i32> %i.hoc, splat (i32 16)
  %i.hoe = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hod, <4 x i32> poison)
  %i.hof = bitcast <8 x i16> %i.hoe to <2 x i64>
  %i.hog = extractelement <2 x i64> %i.hof, i64 0
  store i64 %i.hog, ptr %.12133.i.i724, align 1, !tbaa !60
  %i.hoh = getelementptr inbounds nuw i8, ptr %.134.i.i723, i64 2
  %i.hoi = getelementptr inbounds nuw i8, ptr %.12133.i.i724, i64 8
  %i.hoj = load i16, ptr %i.hoh, align 2, !tbaa !57
  %i.hok = zext i16 %i.hoj to i32
  %i.hol = shl nuw i32 %i.hok, 16
  %i.hom = insertelement <4 x i32> poison, i32 %i.hol, i64 0
  %i.hon = bitcast <4 x i32> %i.hom to <4 x float>
  %i.hoo = shufflevector <4 x float> %i.hon, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hop = fsub fast <4 x float> %i.hoo, %i.hnt
  %i.hoq = bitcast <4 x float> %i.hop to <4 x i32>
  %i.hor = lshr <4 x i32> %i.hoq, splat (i32 16)
  %i.hos = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hor, <4 x i32> poison)
  %i.hot = bitcast <8 x i16> %i.hos to <2 x i64>
  %i.hou = extractelement <2 x i64> %i.hot, i64 0
  store i64 %i.hou, ptr %i.hoi, align 1, !tbaa !60
  %i.hov = getelementptr inbounds nuw i8, ptr %.134.i.i723, i64 4 ; 2 uses
  %i.how = getelementptr inbounds nuw i8, ptr %.12133.i.i724, i64 16 ; 2 uses
  %niter7855.next.1 = add i32 %niter7855, 2       ; 2 uses
  %niter7855.ncmp.1 = icmp eq i32 %niter7855.next.1, %unroll_iter7854
  br i1 %niter7855.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7420.unr-lcssa, label %.lr.ph.i74.i721, !llvm.loop !806

bb.gn:                                            ; preds = %bb.a
  %.sroa.speculated87.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i841 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.hox = mul i32 %.sroa.speculated.i841, %.sroa.speculated87.i ; 40 uses
  %i.hoy = icmp eq i32 %5, %6
  br i1 %i.hoy, label %bb.go, label %bb.hc

bb.go:                                            ; preds = %bb.gn
  %i.hoz = icmp eq i32 %3, %4
  br i1 %i.hoz, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.hpa = icmp sgt i32 %i.hox, 7
  br i1 %i.hpa, label %.lr.ph.i.i954, label %.preheader46.i.i933

.preheader46.loopexit.i.i959:                     ; preds = %.lr.ph.i.i954
  %i.hpb = and i32 %i.hox, 2147483640
  br label %.preheader46.i.i933

.preheader46.i.i933:                              ; preds = %.preheader46.loopexit.i.i959, %bb.gp
  %.030.lcssa.i.i934 = phi ptr [ %2, %bb.gp ], [ %i.hpx, %.preheader46.loopexit.i.i959 ] ; 2 uses
  %.027.lcssa.i.i935 = phi ptr [ %1, %bb.gp ], [ %i.hpw, %.preheader46.loopexit.i.i959 ] ; 2 uses
  %.024.lcssa.i.i936 = phi i32 [ 0, %bb.gp ], [ %i.hpb, %.preheader46.loopexit.i.i959 ] ; 3 uses
  %.0.lcssa.i.i937 = phi ptr [ %0, %bb.gp ], [ %i.hpv, %.preheader46.loopexit.i.i959 ] ; 2 uses
  %i.hpc = or disjoint i32 %.024.lcssa.i.i936, 3
  %i.hpd = icmp slt i32 %i.hpc, %i.hox
  br i1 %i.hpd, label %.lr.ph58.i.i949, label %.preheader.i.i938

.lr.ph.i.i954:                                    ; preds = %bb.gp, %.lr.ph.i.i954
  %.050.i.i955 = phi ptr [ %i.hpv, %.lr.ph.i.i954 ], [ %0, %bb.gp ] ; 2 uses
  %.02449.i.i956 = phi i32 [ %i.hpy, %.lr.ph.i.i954 ], [ 0, %bb.gp ]
  %.02748.i.i957 = phi ptr [ %i.hpw, %.lr.ph.i.i954 ], [ %1, %bb.gp ] ; 2 uses
  %.03047.i.i958 = phi ptr [ %i.hpx, %.lr.ph.i.i954 ], [ %2, %bb.gp ] ; 2 uses
  %i.hpe = load <8 x i16>, ptr %.050.i.i955, align 1, !tbaa !60 ; 2 uses
  %i.hpf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hpe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hpg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.hpe, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hph = shufflevector <8 x i16> %i.hpf, <8 x i16> %i.hpg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hpi = bitcast <16 x i16> %i.hph to <8 x float>
  %i.hpj = load <8 x i16>, ptr %.02748.i.i957, align 1, !tbaa !60 ; 2 uses
  %i.hpk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hpj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hpl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.hpj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hpm = shufflevector <8 x i16> %i.hpk, <8 x i16> %i.hpl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hpn = bitcast <16 x i16> %i.hpm to <8 x float>
  %i.hpo = fdiv fast <8 x float> %i.hpn, %i.hpi
  %i.hpp = bitcast <8 x float> %i.hpo to <8 x i32> ; 2 uses
  %i.hpq = shufflevector <8 x i32> %i.hpp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hpr = shufflevector <8 x i32> %i.hpp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hps = lshr <4 x i32> %i.hpq, splat (i32 16)
  %i.hpt = lshr <4 x i32> %i.hpr, splat (i32 16)
  %i.hpu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hps, <4 x i32> %i.hpt)
  store <8 x i16> %i.hpu, ptr %.03047.i.i958, align 1, !tbaa !60
  %i.hpv = getelementptr inbounds nuw i8, ptr %.050.i.i955, i64 16 ; 2 uses
  %i.hpw = getelementptr inbounds nuw i8, ptr %.02748.i.i957, i64 16 ; 2 uses
  %i.hpx = getelementptr inbounds nuw i8, ptr %.03047.i.i958, i64 16 ; 2 uses
  %i.hpy = add nuw nsw i32 %.02449.i.i956, 8      ; 2 uses
  %i.hpz = or disjoint i32 %i.hpy, 7
  %i.hqa = icmp slt i32 %i.hpz, %i.hox
  br i1 %i.hqa, label %.lr.ph.i.i954, label %.preheader46.loopexit.i.i959, !llvm.loop !807

.preheader.i.i938:                                ; preds = %.lr.ph58.i.i949, %.preheader46.i.i933
  %.131.lcssa.i.i939 = phi ptr [ %.030.lcssa.i.i934, %.preheader46.i.i933 ], [ %i.htd, %.lr.ph58.i.i949 ] ; 7 uses
  %.128.lcssa.i.i940 = phi ptr [ %.027.lcssa.i.i935, %.preheader46.i.i933 ], [ %i.htc, %.lr.ph58.i.i949 ] ; 7 uses
  %.125.lcssa.i.i941 = phi i32 [ %.024.lcssa.i.i936, %.preheader46.i.i933 ], [ %i.hte, %.lr.ph58.i.i949 ] ; 6 uses
  %.1.lcssa.i.i942 = phi ptr [ %.0.lcssa.i.i937, %.preheader46.i.i933 ], [ %i.htb, %.lr.ph58.i.i949 ] ; 7 uses
  %.128.lcssa.i.i9405618 = ptrtoaddr ptr %.128.lcssa.i.i940 to i64
  %.131.lcssa.i.i9395619 = ptrtoaddr ptr %.1.lcssa.i.i942 to i64
  %.1.lcssa.i.i9425620 = ptrtoaddr ptr %.131.lcssa.i.i939 to i64 ; 2 uses
  %i.hqb = icmp slt i32 %.125.lcssa.i.i941, %i.hox
  br i1 %i.hqb, label %iter.check5640, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5640:                                   ; preds = %.preheader.i.i938
  %i.hqc = xor i32 %.125.lcssa.i.i941, -1
  %i.hqd = add i32 %i.hox, %i.hqc                 ; 3 uses
  %i.hqe = zext i32 %i.hqd to i64
  %i.hqf = add nuw nsw i64 %i.hqe, 1              ; 5 uses
  %min.iters.check5621 = icmp ult i32 %i.hqd, 3
  br i1 %min.iters.check5621, label %.lr.ph67.i.i943.preheader, label %vector.memcheck5622

vector.memcheck5622:                              ; preds = %iter.check5640
  %i.hqg = sub i64 %.131.lcssa.i.i9395619, %.1.lcssa.i.i9425620
  %diff.check5623 = icmp ugt i64 %i.hqg, -32
  %i.hqh = sub i64 %.128.lcssa.i.i9405618, %.1.lcssa.i.i9425620
  %diff.check5624 = icmp ugt i64 %i.hqh, -32
  %conflict.rdx5625 = or i1 %diff.check5623, %diff.check5624
  br i1 %conflict.rdx5625, label %.lr.ph67.i.i943.preheader, label %vector.main.loop.iter.check5626

vector.main.loop.iter.check5626:                  ; preds = %vector.memcheck5622
  %min.iters.check5627 = icmp ult i32 %i.hqd, 15
  br i1 %min.iters.check5627, label %vec.epilog.ph5644, label %vector.ph5628

vector.ph5628:                                    ; preds = %vector.main.loop.iter.check5626
  %i.hqi = and i64 %i.hqf, 12
  %n.vec5629 = and i64 %i.hqf, 8589934576         ; 5 uses
  %i.hqj = shl nuw nsw i64 %n.vec5629, 1          ; 3 uses
  %i.hqk = getelementptr i8, ptr %.1.lcssa.i.i942, i64 %i.hqj
  %i.hql = trunc i64 %n.vec5629 to i32
  %i.hqm = add i32 %.125.lcssa.i.i941, %i.hql
  %i.hqn = getelementptr i8, ptr %.128.lcssa.i.i940, i64 %i.hqj
  %i.hqo = getelementptr i8, ptr %.131.lcssa.i.i939, i64 %i.hqj
  br label %vector.body5630

vector.body5630:                                  ; preds = %vector.ph5628, %vector.body5630
  %index5631 = phi i64 [ 0, %vector.ph5628 ], [ %index.next5637, %vector.body5630 ] ; 2 uses
  %i.hqp = shl i64 %index5631, 1                  ; 3 uses
  %next.gep5632 = getelementptr i8, ptr %.1.lcssa.i.i942, i64 %i.hqp
  %next.gep5633 = getelementptr i8, ptr %.128.lcssa.i.i940, i64 %i.hqp
  %next.gep5634 = getelementptr i8, ptr %.131.lcssa.i.i939, i64 %i.hqp
  %wide.load5635 = load <16 x i16>, ptr %next.gep5632, align 2, !tbaa !57
  %i.hqq = zext <16 x i16> %wide.load5635 to <16 x i32>
  %i.hqr = shl nuw <16 x i32> %i.hqq, splat (i32 16)
  %i.hqs = bitcast <16 x i32> %i.hqr to <16 x float>
  %wide.load5636 = load <16 x i16>, ptr %next.gep5633, align 2, !tbaa !57
  %i.hqt = zext <16 x i16> %wide.load5636 to <16 x i32>
  %i.hqu = shl nuw <16 x i32> %i.hqt, splat (i32 16)
  %i.hqv = bitcast <16 x i32> %i.hqu to <16 x float>
  %i.hqw = fdiv fast <16 x float> %i.hqv, %i.hqs
  %i.hqx = bitcast <16 x float> %i.hqw to <16 x i32>
  %i.hqy = lshr <16 x i32> %i.hqx, splat (i32 16)
  %i.hqz = trunc nuw <16 x i32> %i.hqy to <16 x i16>
  store <16 x i16> %i.hqz, ptr %next.gep5634, align 2, !tbaa !57
  %index.next5637 = add nuw i64 %index5631, 16    ; 2 uses
  %i.hra = icmp eq i64 %index.next5637, %n.vec5629
  br i1 %i.hra, label %middle.block5638, label %vector.body5630, !llvm.loop !808

middle.block5638:                                 ; preds = %vector.body5630
  %cmp.n5639 = icmp eq i64 %i.hqf, %n.vec5629
  br i1 %cmp.n5639, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5641

vec.epilog.iter.check5641:                        ; preds = %middle.block5638
  %min.epilog.iters.check5643 = icmp eq i64 %i.hqi, 0
  br i1 %min.epilog.iters.check5643, label %.lr.ph67.i.i943.preheader, label %vec.epilog.ph5644, !prof !64

vec.epilog.ph5644:                                ; preds = %vector.main.loop.iter.check5626, %vec.epilog.iter.check5641
  %vec.epilog.resume.val5645 = phi i64 [ %n.vec5629, %vec.epilog.iter.check5641 ], [ 0, %vector.main.loop.iter.check5626 ]
  %n.vec5646 = and i64 %i.hqf, 8589934588         ; 4 uses
  %i.hrb = shl nuw nsw i64 %n.vec5646, 1          ; 3 uses
  %i.hrc = getelementptr i8, ptr %.1.lcssa.i.i942, i64 %i.hrb
  %i.hrd = trunc i64 %n.vec5646 to i32
  %i.hre = add i32 %.125.lcssa.i.i941, %i.hrd
  %i.hrf = getelementptr i8, ptr %.128.lcssa.i.i940, i64 %i.hrb
  %i.hrg = getelementptr i8, ptr %.131.lcssa.i.i939, i64 %i.hrb
  br label %vec.epilog.vector.body5647

vec.epilog.vector.body5647:                       ; preds = %vec.epilog.vector.body5647, %vec.epilog.ph5644
  %index5648 = phi i64 [ %vec.epilog.resume.val5645, %vec.epilog.ph5644 ], [ %index.next5654, %vec.epilog.vector.body5647 ] ; 2 uses
  %i.hrh = shl i64 %index5648, 1                  ; 3 uses
  %next.gep5649 = getelementptr i8, ptr %.1.lcssa.i.i942, i64 %i.hrh
  %next.gep5650 = getelementptr i8, ptr %.128.lcssa.i.i940, i64 %i.hrh
  %next.gep5651 = getelementptr i8, ptr %.131.lcssa.i.i939, i64 %i.hrh
  %wide.load5652 = load <4 x i16>, ptr %next.gep5649, align 2, !tbaa !57
  %i.hri = zext <4 x i16> %wide.load5652 to <4 x i32>
  %i.hrj = shl nuw <4 x i32> %i.hri, splat (i32 16)
  %i.hrk = bitcast <4 x i32> %i.hrj to <4 x float>
  %wide.load5653 = load <4 x i16>, ptr %next.gep5650, align 2, !tbaa !57
  %i.hrl = zext <4 x i16> %wide.load5653 to <4 x i32>
  %i.hrm = shl nuw <4 x i32> %i.hrl, splat (i32 16)
  %i.hrn = bitcast <4 x i32> %i.hrm to <4 x float>
  %i.hro = fdiv fast <4 x float> %i.hrn, %i.hrk
  %i.hrp = bitcast <4 x float> %i.hro to <4 x i32>
  %i.hrq = lshr <4 x i32> %i.hrp, splat (i32 16)
  %i.hrr = trunc nuw <4 x i32> %i.hrq to <4 x i16>
  store <4 x i16> %i.hrr, ptr %next.gep5651, align 2, !tbaa !57
  %index.next5654 = add nuw i64 %index5648, 4     ; 2 uses
  %i.hrs = icmp eq i64 %index.next5654, %n.vec5646
  br i1 %i.hrs, label %vec.epilog.middle.block5655, label %vec.epilog.vector.body5647, !llvm.loop !809

vec.epilog.middle.block5655:                      ; preds = %vec.epilog.vector.body5647
  %cmp.n5656 = icmp eq i64 %i.hqf, %n.vec5646
  br i1 %cmp.n5656, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i943.preheader

.lr.ph67.i.i943.preheader:                        ; preds = %iter.check5640, %vector.memcheck5622, %vec.epilog.iter.check5641, %vec.epilog.middle.block5655
  %.266.i.i944.ph = phi ptr [ %.1.lcssa.i.i942, %iter.check5640 ], [ %.1.lcssa.i.i942, %vector.memcheck5622 ], [ %i.hqk, %vec.epilog.iter.check5641 ], [ %i.hrc, %vec.epilog.middle.block5655 ] ; 3 uses
  %.22665.i.i945.ph = phi i32 [ %.125.lcssa.i.i941, %iter.check5640 ], [ %.125.lcssa.i.i941, %vector.memcheck5622 ], [ %i.hqm, %vec.epilog.iter.check5641 ], [ %i.hre, %vec.epilog.middle.block5655 ] ; 4 uses
  %.22964.i.i946.ph = phi ptr [ %.128.lcssa.i.i940, %iter.check5640 ], [ %.128.lcssa.i.i940, %vector.memcheck5622 ], [ %i.hqn, %vec.epilog.iter.check5641 ], [ %i.hrf, %vec.epilog.middle.block5655 ] ; 3 uses
  %.23263.i.i947.ph = phi ptr [ %.131.lcssa.i.i939, %iter.check5640 ], [ %.131.lcssa.i.i939, %vector.memcheck5622 ], [ %i.hqo, %vec.epilog.iter.check5641 ], [ %i.hrg, %vec.epilog.middle.block5655 ] ; 3 uses
  %i.hrt = sub i32 %i.hox, %.22665.i.i945.ph
  %.neg8026 = add i32 %.22665.i.i945.ph, 1
  %xtraiter7848 = and i32 %i.hrt, 1
  %lcmp.mod7849.not = icmp eq i32 %xtraiter7848, 0
  br i1 %lcmp.mod7849.not, label %.lr.ph67.i.i943.prol.loopexit, label %.lr.ph67.i.i943.prol

.lr.ph67.i.i943.prol:                             ; preds = %.lr.ph67.i.i943.preheader
  %i.hru = getelementptr inbounds nuw i8, ptr %.266.i.i944.ph, i64 2
  %i.hrv = load i16, ptr %.266.i.i944.ph, align 2, !tbaa !57
  %i.hrw = zext i16 %i.hrv to i32
  %i.hrx = shl nuw i32 %i.hrw, 16
  %i.hry = bitcast i32 %i.hrx to float
  %i.hrz = getelementptr inbounds nuw i8, ptr %.22964.i.i946.ph, i64 2
  %i.hsa = load i16, ptr %.22964.i.i946.ph, align 2, !tbaa !57
  %i.hsb = zext i16 %i.hsa to i32
  %i.hsc = shl nuw i32 %i.hsb, 16
  %i.hsd = bitcast i32 %i.hsc to float
  %i.hse = fdiv fast float %i.hsd, %i.hry
  %i.hsf = bitcast float %i.hse to i32
  %i.hsg = lshr i32 %i.hsf, 16
  %i.hsh = trunc nuw i32 %i.hsg to i16
  %i.hsi = getelementptr inbounds nuw i8, ptr %.23263.i.i947.ph, i64 2
  store i16 %i.hsh, ptr %.23263.i.i947.ph, align 2, !tbaa !57
  %i.hsj = add nuw nsw i32 %.22665.i.i945.ph, 1
  br label %.lr.ph67.i.i943.prol.loopexit

.lr.ph67.i.i943.prol.loopexit:                    ; preds = %.lr.ph67.i.i943.prol, %.lr.ph67.i.i943.preheader
  %.266.i.i944.unr = phi ptr [ %.266.i.i944.ph, %.lr.ph67.i.i943.preheader ], [ %i.hru, %.lr.ph67.i.i943.prol ]
  %.22665.i.i945.unr = phi i32 [ %.22665.i.i945.ph, %.lr.ph67.i.i943.preheader ], [ %i.hsj, %.lr.ph67.i.i943.prol ]
  %.22964.i.i946.unr = phi ptr [ %.22964.i.i946.ph, %.lr.ph67.i.i943.preheader ], [ %i.hrz, %.lr.ph67.i.i943.prol ]
  %.23263.i.i947.unr = phi ptr [ %.23263.i.i947.ph, %.lr.ph67.i.i943.preheader ], [ %i.hsi, %.lr.ph67.i.i943.prol ]
  %i.hsk = icmp eq i32 %i.hox, %.neg8026
  br i1 %i.hsk, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i943

.lr.ph58.i.i949:                                  ; preds = %.preheader46.i.i933, %.lr.ph58.i.i949
  %.157.i.i950 = phi ptr [ %i.htb, %.lr.ph58.i.i949 ], [ %.0.lcssa.i.i937, %.preheader46.i.i933 ] ; 2 uses
  %.12556.i.i951 = phi i32 [ %i.hte, %.lr.ph58.i.i949 ], [ %.024.lcssa.i.i936, %.preheader46.i.i933 ]
  %.12855.i.i952 = phi ptr [ %i.htc, %.lr.ph58.i.i949 ], [ %.027.lcssa.i.i935, %.preheader46.i.i933 ] ; 2 uses
  %.13154.i.i953 = phi ptr [ %i.htd, %.lr.ph58.i.i949 ], [ %.030.lcssa.i.i934, %.preheader46.i.i933 ] ; 2 uses
  %i.hsl = load i64, ptr %.157.i.i950, align 1, !tbaa !60
  %i.hsm = insertelement <2 x i64> poison, i64 %i.hsl, i64 0
  %i.hsn = bitcast <2 x i64> %i.hsm to <8 x i16>
  %i.hso = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hsn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hsp = bitcast <8 x i16> %i.hso to <4 x float>
  %i.hsq = load i64, ptr %.12855.i.i952, align 1, !tbaa !60
  %i.hsr = insertelement <2 x i64> poison, i64 %i.hsq, i64 0
  %i.hss = bitcast <2 x i64> %i.hsr to <8 x i16>
  %i.hst = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hss, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hsu = bitcast <8 x i16> %i.hst to <4 x float>
  %i.hsv = fdiv fast <4 x float> %i.hsu, %i.hsp
  %i.hsw = bitcast <4 x float> %i.hsv to <4 x i32>
  %i.hsx = lshr <4 x i32> %i.hsw, splat (i32 16)
  %i.hsy = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hsx, <4 x i32> poison)
  %i.hsz = bitcast <8 x i16> %i.hsy to <2 x i64>
  %i.hta = extractelement <2 x i64> %i.hsz, i64 0
  store i64 %i.hta, ptr %.13154.i.i953, align 1, !tbaa !60
  %i.htb = getelementptr inbounds nuw i8, ptr %.157.i.i950, i64 8 ; 2 uses
  %i.htc = getelementptr inbounds nuw i8, ptr %.12855.i.i952, i64 8 ; 2 uses
  %i.htd = getelementptr inbounds nuw i8, ptr %.13154.i.i953, i64 8 ; 2 uses
  %i.hte = add nuw nsw i32 %.12556.i.i951, 4      ; 3 uses
  %i.htf = or disjoint i32 %i.hte, 3
  %i.htg = icmp slt i32 %i.htf, %i.hox
  br i1 %i.htg, label %.lr.ph58.i.i949, label %.preheader.i.i938, !llvm.loop !810

.lr.ph67.i.i943:                                  ; preds = %.lr.ph67.i.i943.prol.loopexit, %.lr.ph67.i.i943
  %.266.i.i944 = phi ptr [ %i.htw, %.lr.ph67.i.i943 ], [ %.266.i.i944.unr, %.lr.ph67.i.i943.prol.loopexit ] ; 3 uses
  %.22665.i.i945 = phi i32 [ %i.hul, %.lr.ph67.i.i943 ], [ %.22665.i.i945.unr, %.lr.ph67.i.i943.prol.loopexit ]
  %.22964.i.i946 = phi ptr [ %i.hub, %.lr.ph67.i.i943 ], [ %.22964.i.i946.unr, %.lr.ph67.i.i943.prol.loopexit ] ; 3 uses
  %.23263.i.i947 = phi ptr [ %i.huk, %.lr.ph67.i.i943 ], [ %.23263.i.i947.unr, %.lr.ph67.i.i943.prol.loopexit ] ; 3 uses
  %i.hth = getelementptr inbounds nuw i8, ptr %.266.i.i944, i64 2
  %i.hti = load i16, ptr %.266.i.i944, align 2, !tbaa !57
  %i.htj = zext i16 %i.hti to i32
  %i.htk = shl nuw i32 %i.htj, 16
  %i.htl = bitcast i32 %i.htk to float
  %i.htm = getelementptr inbounds nuw i8, ptr %.22964.i.i946, i64 2
  %i.htn = load i16, ptr %.22964.i.i946, align 2, !tbaa !57
  %i.hto = zext i16 %i.htn to i32
  %i.htp = shl nuw i32 %i.hto, 16
  %i.htq = bitcast i32 %i.htp to float
  %i.htr = fdiv fast float %i.htq, %i.htl
  %i.hts = bitcast float %i.htr to i32
  %i.htt = lshr i32 %i.hts, 16
  %i.htu = trunc nuw i32 %i.htt to i16
  %i.htv = getelementptr inbounds nuw i8, ptr %.23263.i.i947, i64 2
  store i16 %i.htu, ptr %.23263.i.i947, align 2, !tbaa !57
  %i.htw = getelementptr inbounds nuw i8, ptr %.266.i.i944, i64 4
  %i.htx = load i16, ptr %i.hth, align 2, !tbaa !57
  %i.hty = zext i16 %i.htx to i32
  %i.htz = shl nuw i32 %i.hty, 16
  %i.hua = bitcast i32 %i.htz to float
  %i.hub = getelementptr inbounds nuw i8, ptr %.22964.i.i946, i64 4
  %i.huc = load i16, ptr %i.htm, align 2, !tbaa !57
  %i.hud = zext i16 %i.huc to i32
  %i.hue = shl nuw i32 %i.hud, 16
  %i.huf = bitcast i32 %i.hue to float
  %i.hug = fdiv fast float %i.huf, %i.hua
  %i.huh = bitcast float %i.hug to i32
  %i.hui = lshr i32 %i.huh, 16
  %i.huj = trunc nuw i32 %i.hui to i16
  %i.huk = getelementptr inbounds nuw i8, ptr %.23263.i.i947, i64 4
  store i16 %i.huj, ptr %i.htv, align 2, !tbaa !57
  %i.hul = add nuw nsw i32 %.22665.i.i945, 2      ; 2 uses
  %exitcond.not.i.i948.1 = icmp eq i32 %i.hul, %i.hox
  br i1 %exitcond.not.i.i948.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph67.i.i943, !llvm.loop !811

bb.gq:                                            ; preds = %bb.go
  %i.hum = icmp eq i32 %4, 1
end_hunk_14
begin_hunk_15_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.iln = shufflevector <8 x i32> %i.ill, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ilo = lshr <4 x i32> %i.ilm, splat (i32 16)
  %i.ilp = lshr <4 x i32> %i.iln, splat (i32 16)
  %i.ilq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ilo, <4 x i32> %i.ilp)
  store <8 x i16> %i.ilq, ptr %.02036.i.i848, align 1, !tbaa !60
  %i.ilr = getelementptr inbounds nuw i8, ptr %.01838.i.i846, i64 2
  %i.ils = getelementptr inbounds nuw i8, ptr %.02036.i.i848, i64 16
  %i.ilt = load i16, ptr %i.ilr, align 2, !tbaa !57
  %i.ilu = zext i16 %i.ilt to i32
  %i.ilv = shl nuw i32 %i.ilu, 16
  %i.ilw = insertelement <8 x i32> poison, i32 %i.ilv, i64 0
  %i.ilx = bitcast <8 x i32> %i.ilw to <8 x float>
  %i.ily = shufflevector <8 x float> %i.ilx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ilz = fmul fast <8 x float> %i.ily, %i.ild
  %i.ima = bitcast <8 x float> %i.ilz to <8 x i32> ; 2 uses
  %i.imb = shufflevector <8 x i32> %i.ima, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.imc = shufflevector <8 x i32> %i.ima, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.imd = lshr <4 x i32> %i.imb, splat (i32 16)
  %i.ime = lshr <4 x i32> %i.imc, splat (i32 16)
  %i.imf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.imd, <4 x i32> %i.ime)
  store <8 x i16> %i.imf, ptr %i.ils, align 1, !tbaa !60
  %i.img = getelementptr inbounds nuw i8, ptr %.01838.i.i846, i64 4 ; 2 uses
  %i.imh = getelementptr inbounds nuw i8, ptr %.02036.i.i848, i64 32 ; 2 uses
  %niter7841.next.1 = add i32 %niter7841, 2       ; 2 uses
  %niter7841.ncmp.1 = icmp eq i32 %niter7841.next.1, %unroll_iter7840
  br i1 %niter7841.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7449.unr-lcssa, label %.lr.ph39.i.i845, !llvm.loop !829

.lr.ph.preheader.i74.i:                           ; preds = %bb.hi
  %i.imi = load i64, ptr %0, align 1, !tbaa !60
  %i.imj = insertelement <2 x i64> poison, i64 %i.imi, i64 0
  %i.imk = bitcast <2 x i64> %i.imj to <8 x i16>
  %i.iml = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.imk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.imm = bitcast <8 x i16> %i.iml to <4 x float> ; 3 uses
  %xtraiter7832 = and i32 %.sroa.speculated87.i, 1
  %i.imn = icmp eq i32 %.sroa.speculated87.i, 1
  br i1 %i.imn, label %.lr.ph.i75.i.epil.preheader, label %.lr.ph.preheader.i74.i.new

.lr.ph.preheader.i74.i.new:                       ; preds = %.lr.ph.preheader.i74.i
  %unroll_iter7835 = and i32 %.sroa.speculated87.i, 2147483646
  %i.imo = fdiv fast <4 x float> splat (float 1.000000e+00), %i.imm
  %i.imp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.imm
  br label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %.lr.ph.i75.i, %.lr.ph.preheader.i74.i.new
  %.134.i.i843 = phi ptr [ %1, %.lr.ph.preheader.i74.i.new ], [ %i.inq, %.lr.ph.i75.i ] ; 3 uses
  %.12133.i.i844 = phi ptr [ %2, %.lr.ph.preheader.i74.i.new ], [ %i.inr, %.lr.ph.i75.i ] ; 3 uses
  %niter7836 = phi i32 [ 0, %.lr.ph.preheader.i74.i.new ], [ %niter7836.next.1, %.lr.ph.i75.i ]
  %i.imq = load i16, ptr %.134.i.i843, align 2, !tbaa !57
  %i.imr = zext i16 %i.imq to i32
  %i.ims = shl nuw i32 %i.imr, 16
  %i.imt = insertelement <4 x i32> poison, i32 %i.ims, i64 0
  %i.imu = bitcast <4 x i32> %i.imt to <4 x float>
  %i.imv = shufflevector <4 x float> %i.imu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.imw = fmul fast <4 x float> %i.imv, %i.imo
  %i.imx = bitcast <4 x float> %i.imw to <4 x i32>
  %i.imy = lshr <4 x i32> %i.imx, splat (i32 16)
  %i.imz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.imy, <4 x i32> poison)
  %i.ina = bitcast <8 x i16> %i.imz to <2 x i64>
  %i.inb = extractelement <2 x i64> %i.ina, i64 0
  store i64 %i.inb, ptr %.12133.i.i844, align 1, !tbaa !60
  %i.inc = getelementptr inbounds nuw i8, ptr %.134.i.i843, i64 2
  %i.ind = getelementptr inbounds nuw i8, ptr %.12133.i.i844, i64 8
  %i.ine = load i16, ptr %i.inc, align 2, !tbaa !57
  %i.inf = zext i16 %i.ine to i32
  %i.ing = shl nuw i32 %i.inf, 16
  %i.inh = insertelement <4 x i32> poison, i32 %i.ing, i64 0
  %i.ini = bitcast <4 x i32> %i.inh to <4 x float>
  %i.inj = shufflevector <4 x float> %i.ini, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ink = fmul fast <4 x float> %i.inj, %i.imp
  %i.inl = bitcast <4 x float> %i.ink to <4 x i32>
  %i.inm = lshr <4 x i32> %i.inl, splat (i32 16)
  %i.inn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.inm, <4 x i32> poison)
  %i.ino = bitcast <8 x i16> %i.inn to <2 x i64>
  %i.inp = extractelement <2 x i64> %i.ino, i64 0
  store i64 %i.inp, ptr %i.ind, align 1, !tbaa !60
  %i.inq = getelementptr inbounds nuw i8, ptr %.134.i.i843, i64 4 ; 2 uses
  %i.inr = getelementptr inbounds nuw i8, ptr %.12133.i.i844, i64 16 ; 2 uses
  %niter7836.next.1 = add i32 %niter7836, 2       ; 2 uses
  %niter7836.ncmp.1 = icmp eq i32 %niter7836.next.1, %unroll_iter7835
  br i1 %niter7836.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7450.unr-lcssa, label %.lr.ph.i75.i, !llvm.loop !830

bb.hj:                                            ; preds = %bb.a
  %.sroa.speculated136.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 7 uses
  %.sroa.speculated.i960 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.ins = mul i32 %.sroa.speculated.i960, %.sroa.speculated136.i ; 40 uses
  %i.int = icmp eq i32 %5, %6
  br i1 %i.int, label %bb.hk, label %bb.ia

bb.hk:                                            ; preds = %bb.hj
  %i.inu = icmp eq i32 %3, %4
  br i1 %i.inu, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.inv = icmp sgt i32 %i.ins, 7
  br i1 %i.inv, label %.lr.ph.i.i997, label %.preheader159.i.i

.preheader159.loopexit.i.i:                       ; preds = %.lr.ph.i.i997
  %i.inw = and i32 %i.ins, 2147483640
  br label %.preheader159.i.i

.preheader159.i.i:                                ; preds = %.preheader159.loopexit.i.i, %bb.hl
  %.030.lcssa.i.i987 = phi ptr [ %2, %bb.hl ], [ %i.iqu, %.preheader159.loopexit.i.i ] ; 2 uses
  %.027.lcssa.i.i988 = phi ptr [ %1, %bb.hl ], [ %i.iqt, %.preheader159.loopexit.i.i ] ; 2 uses
  %.024.lcssa.i.i989 = phi i32 [ 0, %bb.hl ], [ %i.inw, %.preheader159.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i.i990 = phi ptr [ %0, %bb.hl ], [ %i.iqs, %.preheader159.loopexit.i.i ] ; 2 uses
  %i.inx = or disjoint i32 %.024.lcssa.i.i989, 3
  %i.iny = icmp slt i32 %i.inx, %i.ins
  br i1 %i.iny, label %.lr.ph171.i.i, label %.preheader.i.i991

.lr.ph.i.i997:                                    ; preds = %bb.hl, %.lr.ph.i.i997
  %.0163.i.i = phi ptr [ %i.iqs, %.lr.ph.i.i997 ], [ %0, %bb.hl ] ; 2 uses
  %.024162.i.i = phi i32 [ %i.iqv, %.lr.ph.i.i997 ], [ 0, %bb.hl ]
  %.027161.i.i = phi ptr [ %i.iqt, %.lr.ph.i.i997 ], [ %1, %bb.hl ] ; 2 uses
  %.030160.i.i = phi ptr [ %i.iqu, %.lr.ph.i.i997 ], [ %2, %bb.hl ] ; 2 uses
  %i.inz = load <8 x i16>, ptr %.0163.i.i, align 1, !tbaa !60 ; 2 uses
  %i.ioa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.inz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iob = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.inz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ioc = shufflevector <8 x i16> %i.ioa, <8 x i16> %i.iob, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.iod = bitcast <16 x i16> %i.ioc to <8 x float>
  %i.ioe = load <8 x i16>, ptr %.027161.i.i, align 1, !tbaa !60 ; 2 uses
  %i.iof = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ioe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iog = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ioe, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ioh = shufflevector <8 x i16> %i.iof, <8 x i16> %i.iog, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ioi = bitcast <16 x i16> %i.ioh to <8 x float>
  %i.ioj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ioi, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.iok = bitcast <8 x float> %i.ioj to <8 x i32>
  %i.iol = bitcast <8 x float> %i.ioj to <8 x i32>
  %i.iom = and <8 x i32> %i.iol, splat (i32 -2139095041)
  %i.ion = or disjoint <8 x i32> %i.iom, splat (i32 1056964608)
  %i.ioo = bitcast <8 x i32> %i.ion to <8 x float> ; 3 uses
  %i.iop = lshr <8 x i32> %i.iok, splat (i32 23)
  %i.ioq = add nsw <8 x i32> %i.iop, splat (i32 -127)
  %i.ior = sitofp fast <8 x i32> %i.ioq to <8 x float> ; 2 uses
  %i.ios = fadd fast <8 x float> %i.ior, splat (float 1.000000e+00)
  %i.iot = fcmp fast olt <8 x float> %i.ioo, splat (float f0x3F3504F3) ; 2 uses
  %i.iou = select <8 x i1> %i.iot, <8 x float> %i.ioo, <8 x float> zeroinitializer
  %i.iov = fadd fast <8 x float> %i.ioo, splat (float -1.000000e+00)
  %i.iow = select fast <8 x i1> %i.iot, <8 x float> %i.ior, <8 x float> %i.ios ; 2 uses
  %i.iox = fadd fast <8 x float> %i.iov, %i.iou   ; 12 uses
  %i.ioy = fmul fast <8 x float> %i.iox, %i.iox   ; 2 uses
  %i.ioz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iox, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ipa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ioz, <8 x float> nofpclass(nan inf) %i.iox, <8 x float> splat (float f0x3DEF251A))
  %i.ipb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ipa, <8 x float> nofpclass(nan inf) %i.iox, <8 x float> splat (float f0xBDFE5D4F))
  %i.ipc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ipb, <8 x float> nofpclass(nan inf) %i.iox, <8 x float> splat (float f0x3E11E9BF))
  %i.ipd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ipc, <8 x float> nofpclass(nan inf) %i.iox, <8 x float> splat (float f0xBE2AAE50))
  %i.ipe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ipd, <8 x float> nofpclass(nan inf) %i.iox, <8 x float> splat (float f0x3E4CCEAC))
  %i.ipf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ipe, <8 x float> nofpclass(nan inf) %i.iox, <8 x float> splat (float f0xBE7FFFFC))
  %i.ipg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ipf, <8 x float> nofpclass(nan inf) %i.iox, <8 x float> splat (float f0x3EAAAAAA))
  %i.iph = fmul fast <8 x float> %i.ioy, %i.iox
  %i.ipi = fmul fast <8 x float> %i.iph, %i.ipg
  %i.ipj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iow, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ipi)
  %i.ipk = fneg fast <8 x float> %i.ioy
  %i.ipl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ipk, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ipj)
  %i.ipm = fadd fast <8 x float> %i.ipl, %i.iox
  %i.ipn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iow, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ipm)
  %i.ipo = fmul fast <8 x float> %i.ipn, %i.iod
  %i.ipp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ipo, <8 x float> splat (float f0x42B0C0A5))
  %i.ipq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ipp, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ipr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ipq, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ips = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ipr, i32 1) ; 2 uses
  %i.ipt = fcmp fast ogt <8 x float> %i.ips, %i.ipr
  %i.ipu = select <8 x i1> %i.ipt, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ipv = fsub fast <8 x float> %i.ips, %i.ipu   ; 2 uses
  %i.ipw = fneg fast <8 x float> %i.ipv           ; 2 uses
  %i.ipx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ipw, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ipq)
  %i.ipy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ipw, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ipx) ; 8 uses
  %i.ipz = fmul fast <8 x float> %i.ipy, %i.ipy
  %i.iqa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ipy, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.iqb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iqa, <8 x float> nofpclass(nan inf) %i.ipy, <8 x float> splat (float f0x3C088908))
  %i.iqc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iqb, <8 x float> nofpclass(nan inf) %i.ipy, <8 x float> splat (float f0x3D2AA9C1))
  %i.iqd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iqc, <8 x float> nofpclass(nan inf) %i.ipy, <8 x float> splat (float f0x3E2AAAAA))
  %i.iqe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iqd, <8 x float> nofpclass(nan inf) %i.ipy, <8 x float> splat (float 5.000000e-01))
  %i.iqf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iqe, <8 x float> nofpclass(nan inf) %i.ipz, <8 x float> nofpclass(nan inf) %i.ipy)
  %i.iqg = fadd fast <8 x float> %i.iqf, splat (float 1.000000e+00)
  %i.iqh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ipv)
  %i.iqi = shl <8 x i32> %i.iqh, splat (i32 23)
  %i.iqj = add <8 x i32> %i.iqi, splat (i32 1065353216)
  %i.iqk = bitcast <8 x i32> %i.iqj to <8 x float>
  %i.iql = fmul fast <8 x float> %i.iqg, %i.iqk
  %i.iqm = bitcast <8 x float> %i.iql to <8 x i32> ; 2 uses
  %i.iqn = shufflevector <8 x i32> %i.iqm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.iqo = shufflevector <8 x i32> %i.iqm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.iqp = lshr <4 x i32> %i.iqn, splat (i32 16)
  %i.iqq = lshr <4 x i32> %i.iqo, splat (i32 16)
  %i.iqr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.iqp, <4 x i32> %i.iqq)
  store <8 x i16> %i.iqr, ptr %.030160.i.i, align 1, !tbaa !60
  %i.iqs = getelementptr inbounds nuw i8, ptr %.0163.i.i, i64 16 ; 2 uses
  %i.iqt = getelementptr inbounds nuw i8, ptr %.027161.i.i, i64 16 ; 2 uses
  %i.iqu = getelementptr inbounds nuw i8, ptr %.030160.i.i, i64 16 ; 2 uses
  %i.iqv = add nuw nsw i32 %.024162.i.i, 8        ; 2 uses
  %i.iqw = or disjoint i32 %i.iqv, 7
  %i.iqx = icmp slt i32 %i.iqw, %i.ins
  br i1 %i.iqx, label %.lr.ph.i.i997, label %.preheader159.loopexit.i.i, !llvm.loop !831

.preheader.i.i991:                                ; preds = %.lr.ph171.i.i, %.preheader159.i.i
  %.131.lcssa.i.i992 = phi ptr [ %.030.lcssa.i.i987, %.preheader159.i.i ], [ %i.iwd, %.lr.ph171.i.i ] ; 7 uses
  %.128.lcssa.i.i993 = phi ptr [ %.027.lcssa.i.i988, %.preheader159.i.i ], [ %i.iwc, %.lr.ph171.i.i ] ; 7 uses
  %.125.lcssa.i.i994 = phi i32 [ %.024.lcssa.i.i989, %.preheader159.i.i ], [ %i.iwe, %.lr.ph171.i.i ] ; 6 uses
  %.1.lcssa.i.i995 = phi ptr [ %.0.lcssa.i.i990, %.preheader159.i.i ], [ %i.iwb, %.lr.ph171.i.i ] ; 7 uses
  %.128.lcssa.i.i9935439 = ptrtoaddr ptr %.128.lcssa.i.i993 to i64
  %.131.lcssa.i.i9925440 = ptrtoaddr ptr %.1.lcssa.i.i995 to i64
  %.1.lcssa.i.i9955441 = ptrtoaddr ptr %.131.lcssa.i.i992 to i64 ; 2 uses
  %i.iqy = icmp slt i32 %.125.lcssa.i.i994, %i.ins
  br i1 %i.iqy, label %iter.check5461, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5461:                                   ; preds = %.preheader.i.i991
  %i.iqz = xor i32 %.125.lcssa.i.i994, -1
  %i.ira = add i32 %i.ins, %i.iqz                 ; 3 uses
  %i.irb = zext i32 %i.ira to i64
  %i.irc = add nuw nsw i64 %i.irb, 1              ; 5 uses
  %min.iters.check5442 = icmp ult i32 %i.ira, 3
  br i1 %min.iters.check5442, label %.lr.ph180.i.i.preheader, label %vector.memcheck5443

vector.memcheck5443:                              ; preds = %iter.check5461
  %i.ird = sub i64 %.131.lcssa.i.i9925440, %.1.lcssa.i.i9955441
  %diff.check5444 = icmp ugt i64 %i.ird, -32
  %i.ire = sub i64 %.128.lcssa.i.i9935439, %.1.lcssa.i.i9955441
  %diff.check5445 = icmp ugt i64 %i.ire, -32
  %conflict.rdx5446 = or i1 %diff.check5444, %diff.check5445
  br i1 %conflict.rdx5446, label %.lr.ph180.i.i.preheader, label %vector.main.loop.iter.check5447

vector.main.loop.iter.check5447:                  ; preds = %vector.memcheck5443
  %min.iters.check5448 = icmp ult i32 %i.ira, 15
  br i1 %min.iters.check5448, label %vec.epilog.ph5465, label %vector.ph5449

vector.ph5449:                                    ; preds = %vector.main.loop.iter.check5447
  %i.irf = and i64 %i.irc, 12
  %n.vec5450 = and i64 %i.irc, 8589934576         ; 5 uses
  %i.irg = shl nuw nsw i64 %n.vec5450, 1          ; 3 uses
  %i.irh = getelementptr i8, ptr %.1.lcssa.i.i995, i64 %i.irg
  %i.iri = trunc i64 %n.vec5450 to i32
  %i.irj = add i32 %.125.lcssa.i.i994, %i.iri
  %i.irk = getelementptr i8, ptr %.128.lcssa.i.i993, i64 %i.irg
  %i.irl = getelementptr i8, ptr %.131.lcssa.i.i992, i64 %i.irg
  br label %vector.body5451

vector.body5451:                                  ; preds = %vector.ph5449, %vector.body5451
  %index5452 = phi i64 [ 0, %vector.ph5449 ], [ %index.next5458, %vector.body5451 ] ; 2 uses
  %i.irm = shl i64 %index5452, 1                  ; 3 uses
  %next.gep5453 = getelementptr i8, ptr %.1.lcssa.i.i995, i64 %i.irm
  %next.gep5454 = getelementptr i8, ptr %.128.lcssa.i.i993, i64 %i.irm
  %next.gep5455 = getelementptr i8, ptr %.131.lcssa.i.i992, i64 %i.irm
  %wide.load5456 = load <16 x i16>, ptr %next.gep5453, align 2, !tbaa !57
  %i.irn = zext <16 x i16> %wide.load5456 to <16 x i32>
  %i.iro = shl nuw <16 x i32> %i.irn, splat (i32 16)
  %i.irp = bitcast <16 x i32> %i.iro to <16 x float>
  %wide.load5457 = load <16 x i16>, ptr %next.gep5454, align 2, !tbaa !57
  %i.irq = zext <16 x i16> %wide.load5457 to <16 x i32>
  %i.irr = shl nuw <16 x i32> %i.irq, splat (i32 16)
  %i.irs = bitcast <16 x i32> %i.irr to <16 x float>
  %i.irt = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.irs, <16 x float> %i.irp)
  %i.iru = bitcast <16 x float> %i.irt to <16 x i32>
  %i.irv = lshr <16 x i32> %i.iru, splat (i32 16)
  %i.irw = trunc nuw <16 x i32> %i.irv to <16 x i16>
  store <16 x i16> %i.irw, ptr %next.gep5455, align 2, !tbaa !57
  %index.next5458 = add nuw i64 %index5452, 16    ; 2 uses
  %i.irx = icmp eq i64 %index.next5458, %n.vec5450
  br i1 %i.irx, label %middle.block5459, label %vector.body5451, !llvm.loop !832

middle.block5459:                                 ; preds = %vector.body5451
  %cmp.n5460 = icmp eq i64 %i.irc, %n.vec5450
  br i1 %cmp.n5460, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5462

vec.epilog.iter.check5462:                        ; preds = %middle.block5459
  %min.epilog.iters.check5464 = icmp eq i64 %i.irf, 0
  br i1 %min.epilog.iters.check5464, label %.lr.ph180.i.i.preheader, label %vec.epilog.ph5465, !prof !64

vec.epilog.ph5465:                                ; preds = %vector.main.loop.iter.check5447, %vec.epilog.iter.check5462
  %vec.epilog.resume.val5466 = phi i64 [ %n.vec5450, %vec.epilog.iter.check5462 ], [ 0, %vector.main.loop.iter.check5447 ]
  %n.vec5467 = and i64 %i.irc, 8589934588         ; 4 uses
  %i.iry = shl nuw nsw i64 %n.vec5467, 1          ; 3 uses
  %i.irz = getelementptr i8, ptr %.1.lcssa.i.i995, i64 %i.iry
  %i.isa = trunc i64 %n.vec5467 to i32
  %i.isb = add i32 %.125.lcssa.i.i994, %i.isa
  %i.isc = getelementptr i8, ptr %.128.lcssa.i.i993, i64 %i.iry
  %i.isd = getelementptr i8, ptr %.131.lcssa.i.i992, i64 %i.iry
  br label %vec.epilog.vector.body5468

vec.epilog.vector.body5468:                       ; preds = %vec.epilog.vector.body5468, %vec.epilog.ph5465
  %index5469 = phi i64 [ %vec.epilog.resume.val5466, %vec.epilog.ph5465 ], [ %index.next5475, %vec.epilog.vector.body5468 ] ; 2 uses
  %i.ise = shl i64 %index5469, 1                  ; 3 uses
  %next.gep5470 = getelementptr i8, ptr %.1.lcssa.i.i995, i64 %i.ise
  %next.gep5471 = getelementptr i8, ptr %.128.lcssa.i.i993, i64 %i.ise
  %next.gep5472 = getelementptr i8, ptr %.131.lcssa.i.i992, i64 %i.ise
  %wide.load5473 = load <4 x i16>, ptr %next.gep5470, align 2, !tbaa !57
  %i.isf = zext <4 x i16> %wide.load5473 to <4 x i32>
  %i.isg = shl nuw <4 x i32> %i.isf, splat (i32 16)
  %i.ish = bitcast <4 x i32> %i.isg to <4 x float>
  %wide.load5474 = load <4 x i16>, ptr %next.gep5471, align 2, !tbaa !57
  %i.isi = zext <4 x i16> %wide.load5474 to <4 x i32>
  %i.isj = shl nuw <4 x i32> %i.isi, splat (i32 16)
  %i.isk = bitcast <4 x i32> %i.isj to <4 x float>
  %i.isl = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.isk, <4 x float> %i.ish)
  %i.ism = bitcast <4 x float> %i.isl to <4 x i32>
  %i.isn = lshr <4 x i32> %i.ism, splat (i32 16)
  %i.iso = trunc nuw <4 x i32> %i.isn to <4 x i16>
  store <4 x i16> %i.iso, ptr %next.gep5472, align 2, !tbaa !57
  %index.next5475 = add nuw i64 %index5469, 4     ; 2 uses
  %i.isp = icmp eq i64 %index.next5475, %n.vec5467
  br i1 %i.isp, label %vec.epilog.middle.block5476, label %vec.epilog.vector.body5468, !llvm.loop !833

vec.epilog.middle.block5476:                      ; preds = %vec.epilog.vector.body5468
  %cmp.n5477 = icmp eq i64 %i.irc, %n.vec5467
  br i1 %cmp.n5477, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph180.i.i.preheader

.lr.ph180.i.i.preheader:                          ; preds = %iter.check5461, %vector.memcheck5443, %vec.epilog.iter.check5462, %vec.epilog.middle.block5476
  %.2179.i.i.ph = phi ptr [ %.1.lcssa.i.i995, %iter.check5461 ], [ %.1.lcssa.i.i995, %vector.memcheck5443 ], [ %i.irh, %vec.epilog.iter.check5462 ], [ %i.irz, %vec.epilog.middle.block5476 ] ; 3 uses
  %.226178.i.i.ph = phi i32 [ %.125.lcssa.i.i994, %iter.check5461 ], [ %.125.lcssa.i.i994, %vector.memcheck5443 ], [ %i.irj, %vec.epilog.iter.check5462 ], [ %i.isb, %vec.epilog.middle.block5476 ] ; 4 uses
  %.229177.i.i.ph = phi ptr [ %.128.lcssa.i.i993, %iter.check5461 ], [ %.128.lcssa.i.i993, %vector.memcheck5443 ], [ %i.irk, %vec.epilog.iter.check5462 ], [ %i.isc, %vec.epilog.middle.block5476 ] ; 3 uses
  %.232176.i.i.ph = phi ptr [ %.131.lcssa.i.i992, %iter.check5461 ], [ %.131.lcssa.i.i992, %vector.memcheck5443 ], [ %i.irl, %vec.epilog.iter.check5462 ], [ %i.isd, %vec.epilog.middle.block5476 ] ; 3 uses
  %i.isq = sub i32 %i.ins, %.226178.i.i.ph
  %.neg8022 = add i32 %.226178.i.i.ph, 1
  %xtraiter7830 = and i32 %i.isq, 1
  %lcmp.mod7831.not = icmp eq i32 %xtraiter7830, 0
  br i1 %lcmp.mod7831.not, label %.lr.ph180.i.i.prol.loopexit, label %.lr.ph180.i.i.prol

.lr.ph180.i.i.prol:                               ; preds = %.lr.ph180.i.i.preheader
  %i.isr = getelementptr inbounds nuw i8, ptr %.2179.i.i.ph, i64 2
  %i.iss = load i16, ptr %.2179.i.i.ph, align 2, !tbaa !57
  %i.ist = zext i16 %i.iss to i32
  %i.isu = shl nuw i32 %i.ist, 16
  %i.isv = bitcast i32 %i.isu to float
  %i.isw = getelementptr inbounds nuw i8, ptr %.229177.i.i.ph, i64 2
  %i.isx = load i16, ptr %.229177.i.i.ph, align 2, !tbaa !57
  %i.isy = zext i16 %i.isx to i32
  %i.isz = shl nuw i32 %i.isy, 16
  %i.ita = bitcast i32 %i.isz to float
  %i.itb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ita, float %i.isv)
  %i.itc = bitcast float %i.itb to i32
  %i.itd = lshr i32 %i.itc, 16
  %i.ite = trunc nuw i32 %i.itd to i16
  %i.itf = getelementptr inbounds nuw i8, ptr %.232176.i.i.ph, i64 2
  store i16 %i.ite, ptr %.232176.i.i.ph, align 2, !tbaa !57
  %i.itg = add nuw nsw i32 %.226178.i.i.ph, 1
  br label %.lr.ph180.i.i.prol.loopexit

.lr.ph180.i.i.prol.loopexit:                      ; preds = %.lr.ph180.i.i.prol, %.lr.ph180.i.i.preheader
  %.2179.i.i.unr = phi ptr [ %.2179.i.i.ph, %.lr.ph180.i.i.preheader ], [ %i.isr, %.lr.ph180.i.i.prol ]
  %.226178.i.i.unr = phi i32 [ %.226178.i.i.ph, %.lr.ph180.i.i.preheader ], [ %i.itg, %.lr.ph180.i.i.prol ]
  %.229177.i.i.unr = phi ptr [ %.229177.i.i.ph, %.lr.ph180.i.i.preheader ], [ %i.isw, %.lr.ph180.i.i.prol ]
  %.232176.i.i.unr = phi ptr [ %.232176.i.i.ph, %.lr.ph180.i.i.preheader ], [ %i.itf, %.lr.ph180.i.i.prol ]
  %i.ith = icmp eq i32 %i.ins, %.neg8022
  br i1 %i.ith, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph180.i.i

.lr.ph171.i.i:                                    ; preds = %.preheader159.i.i, %.lr.ph171.i.i
  %.1170.i.i = phi ptr [ %i.iwb, %.lr.ph171.i.i ], [ %.0.lcssa.i.i990, %.preheader159.i.i ] ; 2 uses
  %.125169.i.i = phi i32 [ %i.iwe, %.lr.ph171.i.i ], [ %.024.lcssa.i.i989, %.preheader159.i.i ]
  %.128168.i.i = phi ptr [ %i.iwc, %.lr.ph171.i.i ], [ %.027.lcssa.i.i988, %.preheader159.i.i ] ; 2 uses
  %.131167.i.i = phi ptr [ %i.iwd, %.lr.ph171.i.i ], [ %.030.lcssa.i.i987, %.preheader159.i.i ] ; 2 uses
  %i.iti = load i64, ptr %.1170.i.i, align 1, !tbaa !60
  %i.itj = insertelement <2 x i64> poison, i64 %i.iti, i64 0
  %i.itk = bitcast <2 x i64> %i.itj to <8 x i16>
  %i.itl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.itk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.itm = bitcast <8 x i16> %i.itl to <4 x float>
  %i.itn = load i64, ptr %.128168.i.i, align 1, !tbaa !60
  %i.ito = insertelement <2 x i64> poison, i64 %i.itn, i64 0
  %i.itp = bitcast <2 x i64> %i.ito to <8 x i16>
  %i.itq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.itp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.itr = bitcast <8 x i16> %i.itq to <4 x float>
  %i.its = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.itr, <4 x float> splat (float f0x00800000))
  %i.itt = bitcast <4 x float> %i.its to <4 x i32> ; 2 uses
  %i.itu = lshr <4 x i32> %i.itt, splat (i32 23)
  %i.itv = and <4 x i32> %i.itt, splat (i32 -2139095041)
  %i.itw = or disjoint <4 x i32> %i.itv, splat (i32 1056964608)
  %i.itx = bitcast <4 x i32> %i.itw to <4 x float> ; 3 uses
  %i.ity = add nsw <4 x i32> %i.itu, splat (i32 -127)
  %i.itz = sitofp fast <4 x i32> %i.ity to <4 x float> ; 2 uses
  %i.iua = fadd fast <4 x float> %i.itz, splat (float 1.000000e+00)
  %i.iub = fcmp fast olt <4 x float> %i.itx, splat (float f0x3F3504F3) ; 2 uses
  %i.iuc = select <4 x i1> %i.iub, <4 x float> %i.itx, <4 x float> zeroinitializer
  %i.iud = fadd fast <4 x float> %i.itx, splat (float -1.000000e+00)
  %i.iue = select fast <4 x i1> %i.iub, <4 x float> %i.itz, <4 x float> %i.iua ; 2 uses
  %i.iuf = fadd fast <4 x float> %i.iud, %i.iuc   ; 12 uses
  %i.iug = fmul fast <4 x float> %i.iuf, %i.iuf   ; 2 uses
  %i.iuh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iuf, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.iui = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iuh, <4 x float> nofpclass(nan inf) %i.iuf, <4 x float> splat (float f0x3DEF251A))
  %i.iuj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iui, <4 x float> nofpclass(nan inf) %i.iuf, <4 x float> splat (float f0xBDFE5D4F))
  %i.iuk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iuj, <4 x float> nofpclass(nan inf) %i.iuf, <4 x float> splat (float f0x3E11E9BF))
  %i.iul = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iuk, <4 x float> nofpclass(nan inf) %i.iuf, <4 x float> splat (float f0xBE2AAE50))
  %i.ium = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iul, <4 x float> nofpclass(nan inf) %i.iuf, <4 x float> splat (float f0x3E4CCEAC))
  %i.iun = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ium, <4 x float> nofpclass(nan inf) %i.iuf, <4 x float> splat (float f0xBE7FFFFC))
  %i.iuo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iun, <4 x float> nofpclass(nan inf) %i.iuf, <4 x float> splat (float f0x3EAAAAAA))
  %i.iup = fmul fast <4 x float> %i.iug, %i.iuf
  %i.iuq = fmul fast <4 x float> %i.iup, %i.iuo
  %i.iur = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iue, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.iuq)
  %i.ius = fneg fast <4 x float> %i.iug
  %i.iut = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ius, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.iur)
  %i.iuu = fadd fast <4 x float> %i.iut, %i.iuf
  %i.iuv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iue, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.iuu)
  %i.iuw = fmul fast <4 x float> %i.iuv, %i.itm
  %i.iux = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.iuw, <4 x float> splat (float f0x42B0C0A5))
  %i.iuy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iux, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.iuz = fmul fast <4 x float> %i.iuy, splat (float f0x3FB8AA3B)
  %i.iva = fadd fast <4 x float> %i.iuz, splat (float 5.000000e-01) ; 2 uses
  %i.ivb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iva)
  %i.ivc = sitofp fast <4 x i32> %i.ivb to <4 x float> ; 2 uses
  %i.ivd = fcmp fast olt <4 x float> %i.iva, %i.ivc
  %i.ive = select <4 x i1> %i.ivd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ivf = fsub fast <4 x float> %i.ivc, %i.ive   ; 2 uses
  %i.ivg = fneg fast <4 x float> %i.ivf           ; 2 uses
  %i.ivh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ivg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.iuy)
  %i.ivi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ivg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ivh) ; 8 uses
  %i.ivj = fmul fast <4 x float> %i.ivi, %i.ivi
  %i.ivk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ivi, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ivl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ivk, <4 x float> nofpclass(nan inf) %i.ivi, <4 x float> splat (float f0x3C088908))
  %i.ivm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ivl, <4 x float> nofpclass(nan inf) %i.ivi, <4 x float> splat (float f0x3D2AA9C1))
  %i.ivn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ivm, <4 x float> nofpclass(nan inf) %i.ivi, <4 x float> splat (float f0x3E2AAAAA))
  %i.ivo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ivn, <4 x float> nofpclass(nan inf) %i.ivi, <4 x float> splat (float 5.000000e-01))
  %i.ivp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ivo, <4 x float> nofpclass(nan inf) %i.ivj, <4 x float> nofpclass(nan inf) %i.ivi)
  %i.ivq = fadd fast <4 x float> %i.ivp, splat (float 1.000000e+00)
  %i.ivr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ivf)
  %i.ivs = shl <4 x i32> %i.ivr, splat (i32 23)
  %i.ivt = add <4 x i32> %i.ivs, splat (i32 1065353216)
  %i.ivu = bitcast <4 x i32> %i.ivt to <4 x float>
  %i.ivv = fmul fast <4 x float> %i.ivq, %i.ivu
  %i.ivw = bitcast <4 x float> %i.ivv to <4 x i32>
  %i.ivx = lshr <4 x i32> %i.ivw, splat (i32 16)
end_hunk_15
begin_hunk_16_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.kld = getelementptr inbounds nuw i8, ptr %.020149.i.i, i64 16
  %i.kle = add nuw nsw i32 %.019150.i.i, 1        ; 2 uses
  %exitcond154.not.i.i = icmp eq i32 %i.kle, %.sroa.speculated136.i
  br i1 %exitcond154.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph152.i.i, !llvm.loop !853

bb.ik:                                            ; preds = %bb.ii
  %i.klf = load i64, ptr %0, align 1, !tbaa !60
  %i.klg = insertelement <2 x i64> poison, i64 %i.klf, i64 0
  %i.klh = bitcast <2 x i64> %i.klg to <8 x i16>
  %i.kli = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.klh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.klj = bitcast <8 x i16> %i.kli to <4 x float>
  br label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i, %bb.ik
  %.0148.i.i = phi i32 [ %i.kob, %.lr.ph.i114.i ], [ 0, %bb.ik ]
  %.1147.i.i = phi ptr [ %i.knz, %.lr.ph.i114.i ], [ %1, %bb.ik ] ; 2 uses
  %.121146.i.i = phi ptr [ %i.koa, %.lr.ph.i114.i ], [ %2, %bb.ik ] ; 2 uses
  %i.klk = load i16, ptr %.1147.i.i, align 2, !tbaa !57
  %i.kll = zext i16 %i.klk to i32
  %i.klm = shl nuw i32 %i.kll, 16
  %i.kln = insertelement <4 x i32> poison, i32 %i.klm, i64 0
  %i.klo = bitcast <4 x i32> %i.kln to <4 x float>
  %i.klp = shufflevector <4 x float> %i.klo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.klq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.klp, <4 x float> splat (float f0x00800000))
  %i.klr = bitcast <4 x float> %i.klq to <4 x i32> ; 2 uses
  %i.kls = lshr <4 x i32> %i.klr, splat (i32 23)
  %i.klt = and <4 x i32> %i.klr, splat (i32 -2139095041)
  %i.klu = or disjoint <4 x i32> %i.klt, splat (i32 1056964608)
  %i.klv = bitcast <4 x i32> %i.klu to <4 x float> ; 3 uses
  %i.klw = add nsw <4 x i32> %i.kls, splat (i32 -127)
  %i.klx = sitofp fast <4 x i32> %i.klw to <4 x float> ; 2 uses
  %i.kly = fadd fast <4 x float> %i.klx, splat (float 1.000000e+00)
  %i.klz = fcmp fast olt <4 x float> %i.klv, splat (float f0x3F3504F3) ; 2 uses
  %i.kma = select <4 x i1> %i.klz, <4 x float> %i.klv, <4 x float> zeroinitializer
  %i.kmb = fadd fast <4 x float> %i.klv, splat (float -1.000000e+00)
  %i.kmc = select fast <4 x i1> %i.klz, <4 x float> %i.klx, <4 x float> %i.kly ; 2 uses
  %i.kmd = fadd fast <4 x float> %i.kmb, %i.kma   ; 12 uses
  %i.kme = fmul fast <4 x float> %i.kmd, %i.kmd   ; 2 uses
  %i.kmf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmd, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.kmg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmf, <4 x float> nofpclass(nan inf) %i.kmd, <4 x float> splat (float f0x3DEF251A))
  %i.kmh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmg, <4 x float> nofpclass(nan inf) %i.kmd, <4 x float> splat (float f0xBDFE5D4F))
  %i.kmi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmh, <4 x float> nofpclass(nan inf) %i.kmd, <4 x float> splat (float f0x3E11E9BF))
  %i.kmj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmi, <4 x float> nofpclass(nan inf) %i.kmd, <4 x float> splat (float f0xBE2AAE50))
  %i.kmk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmj, <4 x float> nofpclass(nan inf) %i.kmd, <4 x float> splat (float f0x3E4CCEAC))
  %i.kml = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmk, <4 x float> nofpclass(nan inf) %i.kmd, <4 x float> splat (float f0xBE7FFFFC))
  %i.kmm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kml, <4 x float> nofpclass(nan inf) %i.kmd, <4 x float> splat (float f0x3EAAAAAA))
  %i.kmn = fmul fast <4 x float> %i.kme, %i.kmd
  %i.kmo = fmul fast <4 x float> %i.kmn, %i.kmm
  %i.kmp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.kmo)
  %i.kmq = fneg fast <4 x float> %i.kme
  %i.kmr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.kmq, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.kmp)
  %i.kms = fadd fast <4 x float> %i.kmr, %i.kmd
  %i.kmt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kmc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.kms)
  %i.kmu = fmul fast <4 x float> %i.kmt, %i.klj
  %i.kmv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kmu, <4 x float> splat (float f0x42B0C0A5))
  %i.kmw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kmv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kmx = fmul fast <4 x float> %i.kmw, splat (float f0x3FB8AA3B)
  %i.kmy = fadd fast <4 x float> %i.kmx, splat (float 5.000000e-01) ; 2 uses
  %i.kmz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kmy)
  %i.kna = sitofp fast <4 x i32> %i.kmz to <4 x float> ; 2 uses
  %i.knb = fcmp fast olt <4 x float> %i.kmy, %i.kna
  %i.knc = select <4 x i1> %i.knb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.knd = fsub fast <4 x float> %i.kna, %i.knc   ; 2 uses
  %i.kne = fneg fast <4 x float> %i.knd           ; 2 uses
  %i.knf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.kne, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.kmw)
  %i.kng = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.kne, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.knf) ; 8 uses
  %i.knh = fmul fast <4 x float> %i.kng, %i.kng
  %i.kni = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kng, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.knj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kni, <4 x float> nofpclass(nan inf) %i.kng, <4 x float> splat (float f0x3C088908))
  %i.knk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.knj, <4 x float> nofpclass(nan inf) %i.kng, <4 x float> splat (float f0x3D2AA9C1))
  %i.knl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.knk, <4 x float> nofpclass(nan inf) %i.kng, <4 x float> splat (float f0x3E2AAAAA))
  %i.knm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.knl, <4 x float> nofpclass(nan inf) %i.kng, <4 x float> splat (float 5.000000e-01))
  %i.knn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.knm, <4 x float> nofpclass(nan inf) %i.knh, <4 x float> nofpclass(nan inf) %i.kng)
  %i.kno = fadd fast <4 x float> %i.knn, splat (float 1.000000e+00)
  %i.knp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.knd)
  %i.knq = shl <4 x i32> %i.knp, splat (i32 23)
  %i.knr = add <4 x i32> %i.knq, splat (i32 1065353216)
  %i.kns = bitcast <4 x i32> %i.knr to <4 x float>
  %i.knt = fmul fast <4 x float> %i.kno, %i.kns
  %i.knu = bitcast <4 x float> %i.knt to <4 x i32>
  %i.knv = lshr <4 x i32> %i.knu, splat (i32 16)
  %i.knw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.knv, <4 x i32> poison)
  %i.knx = bitcast <8 x i16> %i.knw to <2 x i64>
  %i.kny = extractelement <2 x i64> %i.knx, i64 0
  store i64 %i.kny, ptr %.121146.i.i, align 1, !tbaa !60
  %i.knz = getelementptr inbounds nuw i8, ptr %.1147.i.i, i64 2
  %i.koa = getelementptr inbounds nuw i8, ptr %.121146.i.i, i64 8
  %i.kob = add nuw nsw i32 %.0148.i.i, 1          ; 2 uses
  %exitcond.not.i115.i = icmp eq i32 %i.kob, %.sroa.speculated136.i
  br i1 %exitcond.not.i115.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i114.i, !llvm.loop !854

bb.il:                                            ; preds = %bb.a
  %.sroa.speculated78.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 7 uses
  %.sroa.speculated.i998 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.koc = mul i32 %.sroa.speculated.i998, %.sroa.speculated78.i ; 40 uses
  %i.kod = icmp eq i32 %5, %6
  br i1 %i.kod, label %bb.im, label %bb.je

bb.im:                                            ; preds = %bb.il
  %i.koe = icmp eq i32 %3, %4
  br i1 %i.koe, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.kof = icmp sgt i32 %i.koc, 7
  br i1 %i.kof, label %.lr.ph.i.i1022, label %.preheader116.i.i

.preheader116.loopexit.i.i:                       ; preds = %.lr.ph.i.i1022
  %i.kog = and i32 %i.koc, 2147483640
  br label %.preheader116.i.i

.preheader116.i.i:                                ; preds = %.preheader116.loopexit.i.i, %bb.in
  %.030.lcssa.i.i1012 = phi ptr [ %2, %bb.in ], [ %i.kqt, %.preheader116.loopexit.i.i ] ; 2 uses
  %.027.lcssa.i.i1013 = phi ptr [ %1, %bb.in ], [ %i.kqs, %.preheader116.loopexit.i.i ] ; 2 uses
  %.024.lcssa.i.i1014 = phi i32 [ 0, %bb.in ], [ %i.kog, %.preheader116.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i.i1015 = phi ptr [ %0, %bb.in ], [ %i.kqr, %.preheader116.loopexit.i.i ] ; 2 uses
  %i.koh = or disjoint i32 %.024.lcssa.i.i1014, 3
  %i.koi = icmp slt i32 %i.koh, %i.koc
  br i1 %i.koi, label %.lr.ph128.i.i, label %.preheader.i.i1016

.lr.ph.i.i1022:                                   ; preds = %bb.in, %.lr.ph.i.i1022
  %.0120.i.i = phi ptr [ %i.kqr, %.lr.ph.i.i1022 ], [ %0, %bb.in ] ; 2 uses
  %.024119.i.i = phi i32 [ %i.kqu, %.lr.ph.i.i1022 ], [ 0, %bb.in ]
  %.027118.i.i = phi ptr [ %i.kqs, %.lr.ph.i.i1022 ], [ %1, %bb.in ] ; 2 uses
  %.030117.i.i = phi ptr [ %i.kqt, %.lr.ph.i.i1022 ], [ %2, %bb.in ] ; 2 uses
  %i.koj = load <8 x i16>, ptr %.0120.i.i, align 1, !tbaa !60 ; 2 uses
  %i.kok = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.koj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kol = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.koj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.kom = shufflevector <8 x i16> %i.kok, <8 x i16> %i.kol, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kon = bitcast <16 x i16> %i.kom to <8 x float> ; 3 uses
  %i.koo = load <8 x i16>, ptr %.027118.i.i, align 1, !tbaa !60 ; 2 uses
  %i.kop = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.koo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.koq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.koo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.kor = shufflevector <8 x i16> %i.kop, <8 x i16> %i.koq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kos = bitcast <16 x i16> %i.kor to <8 x float> ; 3 uses
  %i.kot = fcmp fast ueq <8 x float> %i.kos, zeroinitializer ; 2 uses
  %i.kou = fcmp fast ueq <8 x float> %i.kon, zeroinitializer ; 2 uses
  %.not115.i.i = or <8 x i1> %i.kou, %i.kot
  %i.kov = fcmp fast olt <8 x float> %i.kos, zeroinitializer
  %i.kow = fcmp fast olt <8 x float> %i.kon, zeroinitializer
  %i.kox = select <8 x i1> %i.kow, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.koy = select <8 x i1> %i.kov, <8 x float> %i.kox, <8 x float> zeroinitializer
  %i.koz = fdiv fast <8 x float> %i.kon, %i.kos   ; 2 uses
  %i.kpa = bitcast <8 x float> %i.koz to <8 x i32>
  %i.kpb = and <8 x i32> %i.kpa, splat (i32 -2147483648)
  %i.kpc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.koz) ; 3 uses
  %i.kpd = fcmp fast ogt <8 x float> %i.kpc, splat (float 1.000000e+00) ; 2 uses
  %i.kpe = select <8 x i1> %i.kpd, <8 x float> splat (float -1.000000e+00), <8 x float> %i.kpc
  %i.kpf = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kpc, <8 x float> splat (float 1.000000e+00))
  %i.kpg = fdiv fast <8 x float> %i.kpe, %i.kpf   ; 3 uses
  %i.kph = fmul fast <8 x float> %i.kpg, %i.kpg   ; 3 uses
  %i.kpi = fmul fast <8 x float> %i.kph, %i.kph   ; 7 uses
  %i.kpj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.kpk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) %i.kpj, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.kpl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) %i.kpk, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.kpm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.kpn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) %i.kpm, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.kpo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) %i.kpn, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.kpp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) %i.kpo, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.kpq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kph, <8 x float> nofpclass(nan inf) %i.kpl, <8 x float> nofpclass(nan inf) %i.kpp)
  %i.kpr = fmul fast <8 x float> %i.kpq, %i.kpg
  %i.kps = select <8 x i1> %i.kpd, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.kpt = fadd fast <8 x float> %i.kpr, %i.kps
  %i.kpu = bitcast <8 x float> %i.kpt to <8 x i32>
  %i.kpv = or <8 x i32> %i.kpb, %i.kpu
  %i.kpw = bitcast <8 x i32> %i.kpv to <8 x float>
  %i.kpx = fadd fast <8 x float> %i.koy, %i.kpw
  %i.kpy = bitcast <16 x i16> %i.kor to <8 x i32>
  %i.kpz = and <8 x i32> %i.kpy, splat (i32 -2147483648)
  %i.kqa = or disjoint <8 x i32> %i.kpz, splat (i32 1078530011)
  %i.kqb = bitcast <8 x i32> %i.kqa to <8 x float>
  %i.kqc = fcmp fast uge <8 x float> %i.kqb, zeroinitializer
  %i.kqd = bitcast <16 x i16> %i.kom to <8 x i32>
  %i.kqe = and <8 x i32> %i.kqd, splat (i32 -2147483648)
  %i.kqf = or disjoint <8 x i32> %i.kqe, splat (i32 1070141403)
  %i.kqg = select <8 x i1> %i.kqc, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.kqh = bitcast <8 x float> %i.kpx to <8 x i32>
  %i.kqi = select <8 x i1> %.not115.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.kqh
  %i.kqj = select <8 x i1> %i.kot, <8 x i32> %i.kqf, <8 x i32> zeroinitializer
  %i.kqk = select <8 x i1> %i.kou, <8 x i32> %i.kqg, <8 x i32> %i.kqj
  %i.kql = or <8 x i32> %i.kqi, %i.kqk            ; 2 uses
  %i.kqm = shufflevector <8 x i32> %i.kql, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kqn = shufflevector <8 x i32> %i.kql, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kqo = lshr <4 x i32> %i.kqm, splat (i32 16)
  %i.kqp = lshr <4 x i32> %i.kqn, splat (i32 16)
  %i.kqq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kqo, <4 x i32> %i.kqp)
  store <8 x i16> %i.kqq, ptr %.030117.i.i, align 1, !tbaa !60
  %i.kqr = getelementptr inbounds nuw i8, ptr %.0120.i.i, i64 16 ; 2 uses
  %i.kqs = getelementptr inbounds nuw i8, ptr %.027118.i.i, i64 16 ; 2 uses
  %i.kqt = getelementptr inbounds nuw i8, ptr %.030117.i.i, i64 16 ; 2 uses
  %i.kqu = add nuw nsw i32 %.024119.i.i, 8        ; 2 uses
  %i.kqv = or disjoint i32 %i.kqu, 7
  %i.kqw = icmp slt i32 %i.kqv, %i.koc
  br i1 %i.kqw, label %.lr.ph.i.i1022, label %.preheader116.loopexit.i.i, !llvm.loop !855

.preheader.i.i1016:                               ; preds = %.lr.ph128.i.i, %.preheader116.i.i
  %.131.lcssa.i.i1017 = phi ptr [ %.030.lcssa.i.i1012, %.preheader116.i.i ], [ %i.kvq, %.lr.ph128.i.i ] ; 7 uses
  %.128.lcssa.i.i1018 = phi ptr [ %.027.lcssa.i.i1013, %.preheader116.i.i ], [ %i.kvp, %.lr.ph128.i.i ] ; 7 uses
  %.125.lcssa.i.i1019 = phi i32 [ %.024.lcssa.i.i1014, %.preheader116.i.i ], [ %i.kvr, %.lr.ph128.i.i ] ; 6 uses
  %.1.lcssa.i.i1020 = phi ptr [ %.0.lcssa.i.i1015, %.preheader116.i.i ], [ %i.kvo, %.lr.ph128.i.i ] ; 7 uses
  %.128.lcssa.i.i10185272 = ptrtoaddr ptr %.128.lcssa.i.i1018 to i64
  %.131.lcssa.i.i10175273 = ptrtoaddr ptr %.1.lcssa.i.i1020 to i64
  %.1.lcssa.i.i10205274 = ptrtoaddr ptr %.131.lcssa.i.i1017 to i64 ; 2 uses
  %i.kqx = icmp slt i32 %.125.lcssa.i.i1019, %i.koc
  br i1 %i.kqx, label %iter.check5294, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5294:                                   ; preds = %.preheader.i.i1016
  %i.kqy = xor i32 %.125.lcssa.i.i1019, -1
  %i.kqz = add i32 %i.koc, %i.kqy                 ; 3 uses
  %i.kra = zext i32 %i.kqz to i64
  %i.krb = add nuw nsw i64 %i.kra, 1              ; 5 uses
  %min.iters.check5275 = icmp ult i32 %i.kqz, 3
  br i1 %min.iters.check5275, label %.lr.ph137.i.i.preheader, label %vector.memcheck5276

vector.memcheck5276:                              ; preds = %iter.check5294
  %i.krc = sub i64 %.131.lcssa.i.i10175273, %.1.lcssa.i.i10205274
  %diff.check5277 = icmp ugt i64 %i.krc, -32
  %i.krd = sub i64 %.128.lcssa.i.i10185272, %.1.lcssa.i.i10205274
  %diff.check5278 = icmp ugt i64 %i.krd, -32
  %conflict.rdx5279 = or i1 %diff.check5277, %diff.check5278
  br i1 %conflict.rdx5279, label %.lr.ph137.i.i.preheader, label %vector.main.loop.iter.check5280

vector.main.loop.iter.check5280:                  ; preds = %vector.memcheck5276
  %min.iters.check5281 = icmp ult i32 %i.kqz, 15
  br i1 %min.iters.check5281, label %vec.epilog.ph5298, label %vector.ph5282

vector.ph5282:                                    ; preds = %vector.main.loop.iter.check5280
  %i.kre = and i64 %i.krb, 12
  %n.vec5283 = and i64 %i.krb, 8589934576         ; 5 uses
  %i.krf = shl nuw nsw i64 %n.vec5283, 1          ; 3 uses
  %i.krg = getelementptr i8, ptr %.1.lcssa.i.i1020, i64 %i.krf
  %i.krh = trunc i64 %n.vec5283 to i32
  %i.kri = add i32 %.125.lcssa.i.i1019, %i.krh
  %i.krj = getelementptr i8, ptr %.128.lcssa.i.i1018, i64 %i.krf
  %i.krk = getelementptr i8, ptr %.131.lcssa.i.i1017, i64 %i.krf
  br label %vector.body5284

vector.body5284:                                  ; preds = %vector.ph5282, %vector.body5284
  %index5285 = phi i64 [ 0, %vector.ph5282 ], [ %index.next5291, %vector.body5284 ] ; 2 uses
  %i.krl = shl i64 %index5285, 1                  ; 3 uses
  %next.gep5286 = getelementptr i8, ptr %.1.lcssa.i.i1020, i64 %i.krl
  %next.gep5287 = getelementptr i8, ptr %.128.lcssa.i.i1018, i64 %i.krl
  %next.gep5288 = getelementptr i8, ptr %.131.lcssa.i.i1017, i64 %i.krl
  %wide.load5289 = load <16 x i16>, ptr %next.gep5286, align 2, !tbaa !57
  %i.krm = zext <16 x i16> %wide.load5289 to <16 x i32>
  %i.krn = shl nuw <16 x i32> %i.krm, splat (i32 16)
  %i.kro = bitcast <16 x i32> %i.krn to <16 x float>
  %wide.load5290 = load <16 x i16>, ptr %next.gep5287, align 2, !tbaa !57
  %i.krp = zext <16 x i16> %wide.load5290 to <16 x i32>
  %i.krq = shl nuw <16 x i32> %i.krp, splat (i32 16)
  %i.krr = bitcast <16 x i32> %i.krq to <16 x float>
  %i.krs = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.kro, <16 x float> %i.krr)
  %i.krt = bitcast <16 x float> %i.krs to <16 x i32>
  %i.kru = lshr <16 x i32> %i.krt, splat (i32 16)
  %i.krv = trunc nuw <16 x i32> %i.kru to <16 x i16>
  store <16 x i16> %i.krv, ptr %next.gep5288, align 2, !tbaa !57
  %index.next5291 = add nuw i64 %index5285, 16    ; 2 uses
  %i.krw = icmp eq i64 %index.next5291, %n.vec5283
  br i1 %i.krw, label %middle.block5292, label %vector.body5284, !llvm.loop !856

middle.block5292:                                 ; preds = %vector.body5284
  %cmp.n5293 = icmp eq i64 %i.krb, %n.vec5283
  br i1 %cmp.n5293, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5295

vec.epilog.iter.check5295:                        ; preds = %middle.block5292
  %min.epilog.iters.check5297 = icmp eq i64 %i.kre, 0
  br i1 %min.epilog.iters.check5297, label %.lr.ph137.i.i.preheader, label %vec.epilog.ph5298, !prof !64

vec.epilog.ph5298:                                ; preds = %vector.main.loop.iter.check5280, %vec.epilog.iter.check5295
  %vec.epilog.resume.val5299 = phi i64 [ %n.vec5283, %vec.epilog.iter.check5295 ], [ 0, %vector.main.loop.iter.check5280 ]
  %n.vec5300 = and i64 %i.krb, 8589934588         ; 4 uses
  %i.krx = shl nuw nsw i64 %n.vec5300, 1          ; 3 uses
  %i.kry = getelementptr i8, ptr %.1.lcssa.i.i1020, i64 %i.krx
  %i.krz = trunc i64 %n.vec5300 to i32
  %i.ksa = add i32 %.125.lcssa.i.i1019, %i.krz
  %i.ksb = getelementptr i8, ptr %.128.lcssa.i.i1018, i64 %i.krx
  %i.ksc = getelementptr i8, ptr %.131.lcssa.i.i1017, i64 %i.krx
  br label %vec.epilog.vector.body5301

vec.epilog.vector.body5301:                       ; preds = %vec.epilog.vector.body5301, %vec.epilog.ph5298
  %index5302 = phi i64 [ %vec.epilog.resume.val5299, %vec.epilog.ph5298 ], [ %index.next5308, %vec.epilog.vector.body5301 ] ; 2 uses
  %i.ksd = shl i64 %index5302, 1                  ; 3 uses
  %next.gep5303 = getelementptr i8, ptr %.1.lcssa.i.i1020, i64 %i.ksd
  %next.gep5304 = getelementptr i8, ptr %.128.lcssa.i.i1018, i64 %i.ksd
  %next.gep5305 = getelementptr i8, ptr %.131.lcssa.i.i1017, i64 %i.ksd
  %wide.load5306 = load <4 x i16>, ptr %next.gep5303, align 2, !tbaa !57
  %i.kse = zext <4 x i16> %wide.load5306 to <4 x i32>
  %i.ksf = shl nuw <4 x i32> %i.kse, splat (i32 16)
  %i.ksg = bitcast <4 x i32> %i.ksf to <4 x float>
  %wide.load5307 = load <4 x i16>, ptr %next.gep5304, align 2, !tbaa !57
  %i.ksh = zext <4 x i16> %wide.load5307 to <4 x i32>
  %i.ksi = shl nuw <4 x i32> %i.ksh, splat (i32 16)
  %i.ksj = bitcast <4 x i32> %i.ksi to <4 x float>
  %i.ksk = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ksg, <4 x float> %i.ksj)
  %i.ksl = bitcast <4 x float> %i.ksk to <4 x i32>
  %i.ksm = lshr <4 x i32> %i.ksl, splat (i32 16)
  %i.ksn = trunc nuw <4 x i32> %i.ksm to <4 x i16>
  store <4 x i16> %i.ksn, ptr %next.gep5305, align 2, !tbaa !57
  %index.next5308 = add nuw i64 %index5302, 4     ; 2 uses
  %i.kso = icmp eq i64 %index.next5308, %n.vec5300
  br i1 %i.kso, label %vec.epilog.middle.block5309, label %vec.epilog.vector.body5301, !llvm.loop !857

vec.epilog.middle.block5309:                      ; preds = %vec.epilog.vector.body5301
  %cmp.n5310 = icmp eq i64 %i.krb, %n.vec5300
  br i1 %cmp.n5310, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph137.i.i.preheader

.lr.ph137.i.i.preheader:                          ; preds = %iter.check5294, %vector.memcheck5276, %vec.epilog.iter.check5295, %vec.epilog.middle.block5309
  %.2136.i.i.ph = phi ptr [ %.1.lcssa.i.i1020, %iter.check5294 ], [ %.1.lcssa.i.i1020, %vector.memcheck5276 ], [ %i.krg, %vec.epilog.iter.check5295 ], [ %i.kry, %vec.epilog.middle.block5309 ] ; 3 uses
  %.226135.i.i.ph = phi i32 [ %.125.lcssa.i.i1019, %iter.check5294 ], [ %.125.lcssa.i.i1019, %vector.memcheck5276 ], [ %i.kri, %vec.epilog.iter.check5295 ], [ %i.ksa, %vec.epilog.middle.block5309 ] ; 4 uses
  %.229134.i.i.ph = phi ptr [ %.128.lcssa.i.i1018, %iter.check5294 ], [ %.128.lcssa.i.i1018, %vector.memcheck5276 ], [ %i.krj, %vec.epilog.iter.check5295 ], [ %i.ksb, %vec.epilog.middle.block5309 ] ; 3 uses
  %.232133.i.i.ph = phi ptr [ %.131.lcssa.i.i1017, %iter.check5294 ], [ %.131.lcssa.i.i1017, %vector.memcheck5276 ], [ %i.krk, %vec.epilog.iter.check5295 ], [ %i.ksc, %vec.epilog.middle.block5309 ] ; 3 uses
  %i.ksp = sub i32 %i.koc, %.226135.i.i.ph
  %.neg8018 = add i32 %.226135.i.i.ph, 1
  %xtraiter7822 = and i32 %i.ksp, 1
  %lcmp.mod7823.not = icmp eq i32 %xtraiter7822, 0
  br i1 %lcmp.mod7823.not, label %.lr.ph137.i.i.prol.loopexit, label %.lr.ph137.i.i.prol

.lr.ph137.i.i.prol:                               ; preds = %.lr.ph137.i.i.preheader
  %i.ksq = getelementptr inbounds nuw i8, ptr %.2136.i.i.ph, i64 2
  %i.ksr = load i16, ptr %.2136.i.i.ph, align 2, !tbaa !57
  %i.kss = zext i16 %i.ksr to i32
  %i.kst = shl nuw i32 %i.kss, 16
  %i.ksu = bitcast i32 %i.kst to float
  %i.ksv = getelementptr inbounds nuw i8, ptr %.229134.i.i.ph, i64 2
  %i.ksw = load i16, ptr %.229134.i.i.ph, align 2, !tbaa !57
  %i.ksx = zext i16 %i.ksw to i32
  %i.ksy = shl nuw i32 %i.ksx, 16
  %i.ksz = bitcast i32 %i.ksy to float
  %i.kta = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ksu, float %i.ksz)
  %i.ktb = bitcast float %i.kta to i32
  %i.ktc = lshr i32 %i.ktb, 16
  %i.ktd = trunc nuw i32 %i.ktc to i16
  %i.kte = getelementptr inbounds nuw i8, ptr %.232133.i.i.ph, i64 2
  store i16 %i.ktd, ptr %.232133.i.i.ph, align 2, !tbaa !57
  %i.ktf = add nuw nsw i32 %.226135.i.i.ph, 1
  br label %.lr.ph137.i.i.prol.loopexit

.lr.ph137.i.i.prol.loopexit:                      ; preds = %.lr.ph137.i.i.prol, %.lr.ph137.i.i.preheader
  %.2136.i.i.unr = phi ptr [ %.2136.i.i.ph, %.lr.ph137.i.i.preheader ], [ %i.ksq, %.lr.ph137.i.i.prol ]
  %.226135.i.i.unr = phi i32 [ %.226135.i.i.ph, %.lr.ph137.i.i.preheader ], [ %i.ktf, %.lr.ph137.i.i.prol ]
  %.229134.i.i.unr = phi ptr [ %.229134.i.i.ph, %.lr.ph137.i.i.preheader ], [ %i.ksv, %.lr.ph137.i.i.prol ]
  %.232133.i.i.unr = phi ptr [ %.232133.i.i.ph, %.lr.ph137.i.i.preheader ], [ %i.kte, %.lr.ph137.i.i.prol ]
  %i.ktg = icmp eq i32 %i.koc, %.neg8018
  br i1 %i.ktg, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph137.i.i

.lr.ph128.i.i:                                    ; preds = %.preheader116.i.i, %.lr.ph128.i.i
  %.1127.i.i = phi ptr [ %i.kvo, %.lr.ph128.i.i ], [ %.0.lcssa.i.i1015, %.preheader116.i.i ] ; 2 uses
  %.125126.i.i = phi i32 [ %i.kvr, %.lr.ph128.i.i ], [ %.024.lcssa.i.i1014, %.preheader116.i.i ]
  %.128125.i.i = phi ptr [ %i.kvp, %.lr.ph128.i.i ], [ %.027.lcssa.i.i1013, %.preheader116.i.i ] ; 2 uses
  %.131124.i.i = phi ptr [ %i.kvq, %.lr.ph128.i.i ], [ %.030.lcssa.i.i1012, %.preheader116.i.i ] ; 2 uses
  %i.kth = load i64, ptr %.1127.i.i, align 1, !tbaa !60
  %i.kti = insertelement <2 x i64> poison, i64 %i.kth, i64 0
  %i.ktj = bitcast <2 x i64> %i.kti to <8 x i16>
  %i.ktk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ktj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ktl = bitcast <8 x i16> %i.ktk to <4 x float> ; 3 uses
  %i.ktm = load i64, ptr %.128125.i.i, align 1, !tbaa !60
  %i.ktn = insertelement <2 x i64> poison, i64 %i.ktm, i64 0
  %i.kto = bitcast <2 x i64> %i.ktn to <8 x i16>
  %i.ktp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kto, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ktq = bitcast <8 x i16> %i.ktp to <4 x float> ; 3 uses
  %i.ktr = fcmp fast oeq <4 x float> %i.ktq, zeroinitializer ; 2 uses
  %i.kts = fcmp fast oeq <4 x float> %i.ktl, zeroinitializer ; 2 uses
  %.not112.i.i = or <4 x i1> %i.kts, %i.ktr
  %i.ktt = fcmp fast olt <4 x float> %i.ktq, zeroinitializer
  %i.ktu = fcmp fast olt <4 x float> %i.ktl, zeroinitializer
  %i.ktv = select <4 x i1> %i.ktu, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ktw = select <4 x i1> %i.ktt, <4 x float> %i.ktv, <4 x float> zeroinitializer
  %i.ktx = fdiv fast <4 x float> %i.ktl, %i.ktq   ; 2 uses
  %i.kty = bitcast <4 x float> %i.ktx to <4 x i32>
  %i.ktz = and <4 x i32> %i.kty, splat (i32 -2147483648)
  %i.kua = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ktx) ; 3 uses
  %i.kub = fcmp fast ogt <4 x float> %i.kua, splat (float 1.000000e+00) ; 2 uses
  %i.kuc = select <4 x i1> %i.kub, <4 x float> splat (float -1.000000e+00), <4 x float> %i.kua
  %i.kud = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.kua, <4 x float> splat (float 1.000000e+00))
  %i.kue = fdiv fast <4 x float> %i.kuc, %i.kud   ; 3 uses
  %i.kuf = fmul fast <4 x float> %i.kue, %i.kue   ; 3 uses
  %i.kug = fmul fast <4 x float> %i.kuf, %i.kuf   ; 7 uses
  %i.kuh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kug, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.kui = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kug, <4 x float> nofpclass(nan inf) %i.kuh, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.kuj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kug, <4 x float> nofpclass(nan inf) %i.kui, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.kuk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kug, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.kul = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kug, <4 x float> nofpclass(nan inf) %i.kuk, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.kum = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kug, <4 x float> nofpclass(nan inf) %i.kul, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.kun = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kug, <4 x float> nofpclass(nan inf) %i.kum, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.kuo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kuf, <4 x float> nofpclass(nan inf) %i.kuj, <4 x float> nofpclass(nan inf) %i.kun)
  %i.kup = fmul fast <4 x float> %i.kuo, %i.kue
  %i.kuq = select <4 x i1> %i.kub, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.kur = fadd fast <4 x float> %i.kup, %i.kuq
  %i.kus = bitcast <4 x float> %i.kur to <4 x i32>
  %i.kut = or <4 x i32> %i.ktz, %i.kus
  %i.kuu = bitcast <4 x i32> %i.kut to <4 x float>
  %i.kuv = fadd fast <4 x float> %i.ktw, %i.kuu
  %i.kuw = bitcast <8 x i16> %i.ktp to <4 x i32>
  %i.kux = and <4 x i32> %i.kuw, splat (i32 -2147483648)
  %i.kuy = or disjoint <4 x i32> %i.kux, splat (i32 1078530011)
  %i.kuz = bitcast <4 x i32> %i.kuy to <4 x float>
  %i.kva = fcmp fast uge <4 x float> %i.kuz, zeroinitializer
  %i.kvb = bitcast <8 x i16> %i.ktk to <4 x i32>
  %i.kvc = and <4 x i32> %i.kvb, splat (i32 -2147483648)
  %i.kvd = or disjoint <4 x i32> %i.kvc, splat (i32 1070137344)
  %i.kve = select <4 x i1> %i.kva, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.kvf = bitcast <4 x float> %i.kuv to <4 x i32>
  %i.kvg = select <4 x i1> %.not112.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.kvf
  %i.kvh = select <4 x i1> %i.ktr, <4 x i32> %i.kvd, <4 x i32> zeroinitializer
  %i.kvi = select <4 x i1> %i.kts, <4 x i32> %i.kve, <4 x i32> %i.kvh
  %i.kvj = or <4 x i32> %i.kvg, %i.kvi
  %i.kvk = lshr <4 x i32> %i.kvj, splat (i32 16)
  %i.kvl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kvk, <4 x i32> poison)
  %i.kvm = bitcast <8 x i16> %i.kvl to <2 x i64>
  %i.kvn = extractelement <2 x i64> %i.kvm, i64 0
  store i64 %i.kvn, ptr %.131124.i.i, align 1, !tbaa !60
  %i.kvo = getelementptr inbounds nuw i8, ptr %.1127.i.i, i64 8 ; 2 uses
  %i.kvp = getelementptr inbounds nuw i8, ptr %.128125.i.i, i64 8 ; 2 uses
  %i.kvq = getelementptr inbounds nuw i8, ptr %.131124.i.i, i64 8 ; 2 uses
  %i.kvr = add nuw nsw i32 %.125126.i.i, 4        ; 3 uses
  %i.kvs = or disjoint i32 %i.kvr, 3
  %i.kvt = icmp slt i32 %i.kvs, %i.koc
  br i1 %i.kvt, label %.lr.ph128.i.i, label %.preheader.i.i1016, !llvm.loop !858
end_hunk_16
begin_hunk_17_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %isneg.inv98.i.i = icmp slt <8 x i32> %i.mfg, zeroinitializer
  %i.mfh = select <8 x i1> %isneg.inv98.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.mfi = bitcast <8 x float> %i.mff to <8 x i32>
  %i.mfj = select <8 x i1> %.not100.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.mfi
  %i.mfk = select <8 x i1> %i.mee, <8 x i32> %i.mdx, <8 x i32> zeroinitializer
  %i.mfl = select <8 x i1> %i.mds, <8 x i32> %i.mfh, <8 x i32> %i.mfk
  %i.mfm = or <8 x i32> %i.mfj, %i.mfl            ; 2 uses
  %i.mfn = shufflevector <8 x i32> %i.mfm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mfo = shufflevector <8 x i32> %i.mfm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mfp = lshr <4 x i32> %i.mfn, splat (i32 16)
  %i.mfq = lshr <4 x i32> %i.mfo, splat (i32 16)
  %i.mfr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mfp, <4 x i32> %i.mfq)
  store <8 x i16> %i.mfr, ptr %.020105.i.i, align 1, !tbaa !60
  %i.mfs = getelementptr inbounds nuw i8, ptr %.018107.i.i, i64 2
  %i.mft = getelementptr inbounds nuw i8, ptr %.020105.i.i, i64 16
  %i.mfu = add nuw nsw i32 %.019106.i.i, 1        ; 2 uses
  %exitcond110.not.i.i = icmp eq i32 %i.mfu, %.sroa.speculated78.i
  br i1 %exitcond110.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.jn, !llvm.loop !877

.lr.ph.i65.i:                                     ; preds = %bb.jm
  %i.mfv = load i64, ptr %0, align 1, !tbaa !60
  %i.mfw = insertelement <2 x i64> poison, i64 %i.mfv, i64 0
  %i.mfx = bitcast <2 x i64> %i.mfw to <8 x i16>
  %i.mfy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mfx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.mfz = bitcast <8 x i16> %i.mfy to <4 x float> ; 3 uses
  %i.mga = fcmp fast oeq <4 x float> %i.mfz, zeroinitializer ; 2 uses
  %i.mgb = fcmp fast olt <4 x float> %i.mfz, zeroinitializer
  %i.mgc = select <4 x i1> %i.mgb, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.mgd = bitcast <8 x i16> %i.mfy to <4 x i32>
  %i.mge = and <4 x i32> %i.mgd, splat (i32 -2147483648)
  %i.mgf = or disjoint <4 x i32> %i.mge, splat (i32 1070137344)
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jo, %.lr.ph.i65.i
  %.0104.i.i = phi i32 [ 0, %.lr.ph.i65.i ], [ %i.mib, %bb.jo ]
  %.1103.i.i = phi ptr [ %1, %.lr.ph.i65.i ], [ %i.mhz, %bb.jo ] ; 2 uses
  %.121102.i.i = phi ptr [ %2, %.lr.ph.i65.i ], [ %i.mia, %bb.jo ] ; 2 uses
  %i.mgg = load i16, ptr %.1103.i.i, align 2, !tbaa !57
  %i.mgh = zext i16 %i.mgg to i32
  %i.mgi = shl nuw i32 %i.mgh, 16
  %i.mgj = insertelement <4 x i32> poison, i32 %i.mgi, i64 0
  %i.mgk = bitcast <4 x i32> %i.mgj to <4 x float>
  %i.mgl = shufflevector <4 x float> %i.mgk, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mgm = fcmp fast oeq <4 x float> %i.mgl, zeroinitializer ; 2 uses
  %.not97.i.i = or <4 x i1> %i.mga, %i.mgm
  %i.mgn = fcmp fast olt <4 x float> %i.mgl, zeroinitializer
  %i.mgo = select <4 x i1> %i.mgn, <4 x float> %i.mgc, <4 x float> zeroinitializer
  %i.mgp = fdiv fast <4 x float> %i.mfz, %i.mgl   ; 2 uses
  %i.mgq = bitcast <4 x float> %i.mgp to <4 x i32>
  %i.mgr = and <4 x i32> %i.mgq, splat (i32 -2147483648)
  %i.mgs = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mgp) ; 3 uses
  %i.mgt = fcmp fast ogt <4 x float> %i.mgs, splat (float 1.000000e+00) ; 2 uses
  %i.mgu = select <4 x i1> %i.mgt, <4 x float> splat (float -1.000000e+00), <4 x float> %i.mgs
  %i.mgv = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.mgs, <4 x float> splat (float 1.000000e+00))
  %i.mgw = fdiv fast <4 x float> %i.mgu, %i.mgv   ; 3 uses
  %i.mgx = fmul fast <4 x float> %i.mgw, %i.mgw   ; 3 uses
  %i.mgy = fmul fast <4 x float> %i.mgx, %i.mgx   ; 7 uses
  %i.mgz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mgy, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.mha = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mgy, <4 x float> nofpclass(nan inf) %i.mgz, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.mhb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mgy, <4 x float> nofpclass(nan inf) %i.mha, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.mhc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mgy, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.mhd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mgy, <4 x float> nofpclass(nan inf) %i.mhc, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.mhe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mgy, <4 x float> nofpclass(nan inf) %i.mhd, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.mhf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mgy, <4 x float> nofpclass(nan inf) %i.mhe, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.mhg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mgx, <4 x float> nofpclass(nan inf) %i.mhb, <4 x float> nofpclass(nan inf) %i.mhf)
  %i.mhh = fmul fast <4 x float> %i.mhg, %i.mgw
  %i.mhi = select <4 x i1> %i.mgt, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.mhj = fadd fast <4 x float> %i.mhh, %i.mhi
  %i.mhk = bitcast <4 x float> %i.mhj to <4 x i32>
  %i.mhl = or <4 x i32> %i.mgr, %i.mhk
  %i.mhm = bitcast <4 x i32> %i.mhl to <4 x float>
  %i.mhn = fadd fast <4 x float> %i.mgo, %i.mhm
  %i.mho = bitcast <4 x float> %i.mgl to <4 x i32>
  %isneg.inv.i66.i = icmp slt <4 x i32> %i.mho, zeroinitializer
  %i.mhp = select <4 x i1> %isneg.inv.i66.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.mhq = bitcast <4 x float> %i.mhn to <4 x i32>
  %i.mhr = select <4 x i1> %.not97.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.mhq
  %i.mhs = select <4 x i1> %i.mgm, <4 x i32> %i.mgf, <4 x i32> zeroinitializer
  %i.mht = select <4 x i1> %i.mga, <4 x i32> %i.mhp, <4 x i32> %i.mhs
  %i.mhu = or <4 x i32> %i.mhr, %i.mht
  %i.mhv = lshr <4 x i32> %i.mhu, splat (i32 16)
  %i.mhw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mhv, <4 x i32> poison)
  %i.mhx = bitcast <8 x i16> %i.mhw to <2 x i64>
  %i.mhy = extractelement <2 x i64> %i.mhx, i64 0
  store i64 %i.mhy, ptr %.121102.i.i, align 1, !tbaa !60
  %i.mhz = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 2
  %i.mia = getelementptr inbounds nuw i8, ptr %.121102.i.i, i64 8
  %i.mib = add nuw nsw i32 %.0104.i.i, 1          ; 2 uses
  %exitcond.not.i67.i999 = icmp eq i32 %i.mib, %.sroa.speculated78.i
  br i1 %exitcond.not.i67.i999, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.jo, !llvm.loop !878

bb.jp:                                            ; preds = %bb.a
  %.sroa.speculated75.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 7 uses
  %.sroa.speculated.i1023 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.mic = mul i32 %.sroa.speculated.i1023, %.sroa.speculated75.i ; 40 uses
  %i.mid = icmp eq i32 %5, %6
  br i1 %i.mid, label %bb.jq, label %bb.ki

bb.jq:                                            ; preds = %bb.jp
  %i.mie = icmp eq i32 %3, %4
  br i1 %i.mie, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.mif = icmp sgt i32 %i.mic, 7
  br i1 %i.mif, label %.lr.ph.i.i1100, label %.preheader116.i.i1078

.preheader116.loopexit.i.i1106:                   ; preds = %.lr.ph.i.i1100
  %i.mig = and i32 %i.mic, 2147483640
  br label %.preheader116.i.i1078

.preheader116.i.i1078:                            ; preds = %.preheader116.loopexit.i.i1106, %bb.jr
  %.030.lcssa.i.i1079 = phi ptr [ %2, %bb.jr ], [ %i.mkt, %.preheader116.loopexit.i.i1106 ] ; 2 uses
  %.027.lcssa.i.i1080 = phi ptr [ %1, %bb.jr ], [ %i.mks, %.preheader116.loopexit.i.i1106 ] ; 2 uses
  %.024.lcssa.i.i1081 = phi i32 [ 0, %bb.jr ], [ %i.mig, %.preheader116.loopexit.i.i1106 ] ; 3 uses
  %.0.lcssa.i.i1082 = phi ptr [ %0, %bb.jr ], [ %i.mkr, %.preheader116.loopexit.i.i1106 ] ; 2 uses
  %i.mih = or disjoint i32 %.024.lcssa.i.i1081, 3
  %i.mii = icmp slt i32 %i.mih, %i.mic
  br i1 %i.mii, label %.lr.ph128.i.i1094, label %.preheader.i.i1083

.lr.ph.i.i1100:                                   ; preds = %bb.jr, %.lr.ph.i.i1100
  %.0120.i.i1101 = phi ptr [ %i.mkr, %.lr.ph.i.i1100 ], [ %0, %bb.jr ] ; 2 uses
  %.024119.i.i1102 = phi i32 [ %i.mku, %.lr.ph.i.i1100 ], [ 0, %bb.jr ]
  %.027118.i.i1103 = phi ptr [ %i.mks, %.lr.ph.i.i1100 ], [ %1, %bb.jr ] ; 2 uses
  %.030117.i.i1104 = phi ptr [ %i.mkt, %.lr.ph.i.i1100 ], [ %2, %bb.jr ] ; 2 uses
  %i.mij = load <8 x i16>, ptr %.0120.i.i1101, align 1, !tbaa !60 ; 2 uses
  %i.mik = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mil = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mij, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mim = shufflevector <8 x i16> %i.mik, <8 x i16> %i.mil, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.min = bitcast <16 x i16> %i.mim to <8 x float> ; 3 uses
  %i.mio = load <8 x i16>, ptr %.027118.i.i1103, align 1, !tbaa !60 ; 2 uses
  %i.mip = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mio, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.miq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mio, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mir = shufflevector <8 x i16> %i.mip, <8 x i16> %i.miq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.mis = bitcast <16 x i16> %i.mir to <8 x float> ; 3 uses
  %i.mit = fcmp fast ueq <8 x float> %i.min, zeroinitializer ; 2 uses
  %i.miu = fcmp fast ueq <8 x float> %i.mis, zeroinitializer ; 2 uses
  %.not115.i.i1105 = or <8 x i1> %i.mit, %i.miu
  %i.miv = fcmp fast olt <8 x float> %i.min, zeroinitializer
  %i.miw = fcmp fast olt <8 x float> %i.mis, zeroinitializer
  %i.mix = select <8 x i1> %i.miw, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.miy = select <8 x i1> %i.miv, <8 x float> %i.mix, <8 x float> zeroinitializer
  %i.miz = fdiv fast <8 x float> %i.mis, %i.min   ; 2 uses
  %i.mja = bitcast <8 x float> %i.miz to <8 x i32>
  %i.mjb = and <8 x i32> %i.mja, splat (i32 -2147483648)
  %i.mjc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.miz) ; 3 uses
  %i.mjd = fcmp fast ogt <8 x float> %i.mjc, splat (float 1.000000e+00) ; 2 uses
  %i.mje = select <8 x i1> %i.mjd, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mjc
  %i.mjf = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mjc, <8 x float> splat (float 1.000000e+00))
  %i.mjg = fdiv fast <8 x float> %i.mje, %i.mjf   ; 3 uses
  %i.mjh = fmul fast <8 x float> %i.mjg, %i.mjg   ; 3 uses
  %i.mji = fmul fast <8 x float> %i.mjh, %i.mjh   ; 7 uses
  %i.mjj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mji, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.mjk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mji, <8 x float> nofpclass(nan inf) %i.mjj, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.mjl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mji, <8 x float> nofpclass(nan inf) %i.mjk, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.mjm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mji, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.mjn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mji, <8 x float> nofpclass(nan inf) %i.mjm, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.mjo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mji, <8 x float> nofpclass(nan inf) %i.mjn, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.mjp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mji, <8 x float> nofpclass(nan inf) %i.mjo, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.mjq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mjh, <8 x float> nofpclass(nan inf) %i.mjl, <8 x float> nofpclass(nan inf) %i.mjp)
  %i.mjr = fmul fast <8 x float> %i.mjq, %i.mjg
  %i.mjs = select <8 x i1> %i.mjd, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.mjt = fadd fast <8 x float> %i.mjr, %i.mjs
  %i.mju = bitcast <8 x float> %i.mjt to <8 x i32>
  %i.mjv = or <8 x i32> %i.mjb, %i.mju
  %i.mjw = bitcast <8 x i32> %i.mjv to <8 x float>
  %i.mjx = fadd fast <8 x float> %i.miy, %i.mjw
  %i.mjy = bitcast <16 x i16> %i.mim to <8 x i32>
  %i.mjz = and <8 x i32> %i.mjy, splat (i32 -2147483648)
  %i.mka = or disjoint <8 x i32> %i.mjz, splat (i32 1078530011)
  %i.mkb = bitcast <8 x i32> %i.mka to <8 x float>
  %i.mkc = fcmp fast uge <8 x float> %i.mkb, zeroinitializer
  %i.mkd = bitcast <16 x i16> %i.mir to <8 x i32>
  %i.mke = and <8 x i32> %i.mkd, splat (i32 -2147483648)
  %i.mkf = or disjoint <8 x i32> %i.mke, splat (i32 1070141403)
  %i.mkg = select <8 x i1> %i.mkc, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.mkh = bitcast <8 x float> %i.mjx to <8 x i32>
  %i.mki = select <8 x i1> %.not115.i.i1105, <8 x i32> zeroinitializer, <8 x i32> %i.mkh
  %i.mkj = select <8 x i1> %i.mit, <8 x i32> %i.mkf, <8 x i32> zeroinitializer
  %i.mkk = select <8 x i1> %i.miu, <8 x i32> %i.mkg, <8 x i32> %i.mkj
  %i.mkl = or <8 x i32> %i.mki, %i.mkk            ; 2 uses
  %i.mkm = shufflevector <8 x i32> %i.mkl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mkn = shufflevector <8 x i32> %i.mkl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mko = lshr <4 x i32> %i.mkm, splat (i32 16)
  %i.mkp = lshr <4 x i32> %i.mkn, splat (i32 16)
  %i.mkq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mko, <4 x i32> %i.mkp)
  store <8 x i16> %i.mkq, ptr %.030117.i.i1104, align 1, !tbaa !60
  %i.mkr = getelementptr inbounds nuw i8, ptr %.0120.i.i1101, i64 16 ; 2 uses
  %i.mks = getelementptr inbounds nuw i8, ptr %.027118.i.i1103, i64 16 ; 2 uses
  %i.mkt = getelementptr inbounds nuw i8, ptr %.030117.i.i1104, i64 16 ; 2 uses
  %i.mku = add nuw nsw i32 %.024119.i.i1102, 8    ; 2 uses
  %i.mkv = or disjoint i32 %i.mku, 7
  %i.mkw = icmp slt i32 %i.mkv, %i.mic
  br i1 %i.mkw, label %.lr.ph.i.i1100, label %.preheader116.loopexit.i.i1106, !llvm.loop !879

.preheader.i.i1083:                               ; preds = %.lr.ph128.i.i1094, %.preheader116.i.i1078
  %.131.lcssa.i.i1084 = phi ptr [ %.030.lcssa.i.i1079, %.preheader116.i.i1078 ], [ %i.mpq, %.lr.ph128.i.i1094 ] ; 7 uses
  %.128.lcssa.i.i1085 = phi ptr [ %.027.lcssa.i.i1080, %.preheader116.i.i1078 ], [ %i.mpp, %.lr.ph128.i.i1094 ] ; 7 uses
  %.125.lcssa.i.i1086 = phi i32 [ %.024.lcssa.i.i1081, %.preheader116.i.i1078 ], [ %i.mpr, %.lr.ph128.i.i1094 ] ; 6 uses
  %.1.lcssa.i.i1087 = phi ptr [ %.0.lcssa.i.i1082, %.preheader116.i.i1078 ], [ %i.mpo, %.lr.ph128.i.i1094 ] ; 7 uses
  %.128.lcssa.i.i10855105 = ptrtoaddr ptr %.128.lcssa.i.i1085 to i64
  %.131.lcssa.i.i10845106 = ptrtoaddr ptr %.1.lcssa.i.i1087 to i64
  %.1.lcssa.i.i10875107 = ptrtoaddr ptr %.131.lcssa.i.i1084 to i64 ; 2 uses
  %i.mkx = icmp slt i32 %.125.lcssa.i.i1086, %i.mic
  br i1 %i.mkx, label %iter.check5127, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check5127:                                   ; preds = %.preheader.i.i1083
  %i.mky = xor i32 %.125.lcssa.i.i1086, -1
  %i.mkz = add i32 %i.mic, %i.mky                 ; 3 uses
  %i.mla = zext i32 %i.mkz to i64
  %i.mlb = add nuw nsw i64 %i.mla, 1              ; 5 uses
  %min.iters.check5108 = icmp ult i32 %i.mkz, 3
  br i1 %min.iters.check5108, label %.lr.ph137.i.i1088.preheader, label %vector.memcheck5109

vector.memcheck5109:                              ; preds = %iter.check5127
  %i.mlc = sub i64 %.131.lcssa.i.i10845106, %.1.lcssa.i.i10875107
  %diff.check5110 = icmp ugt i64 %i.mlc, -32
  %i.mld = sub i64 %.128.lcssa.i.i10855105, %.1.lcssa.i.i10875107
  %diff.check5111 = icmp ugt i64 %i.mld, -32
  %conflict.rdx5112 = or i1 %diff.check5110, %diff.check5111
  br i1 %conflict.rdx5112, label %.lr.ph137.i.i1088.preheader, label %vector.main.loop.iter.check5113

vector.main.loop.iter.check5113:                  ; preds = %vector.memcheck5109
  %min.iters.check5114 = icmp ult i32 %i.mkz, 15
  br i1 %min.iters.check5114, label %vec.epilog.ph5131, label %vector.ph5115

vector.ph5115:                                    ; preds = %vector.main.loop.iter.check5113
  %i.mle = and i64 %i.mlb, 12
  %n.vec5116 = and i64 %i.mlb, 8589934576         ; 5 uses
  %i.mlf = shl nuw nsw i64 %n.vec5116, 1          ; 3 uses
  %i.mlg = getelementptr i8, ptr %.1.lcssa.i.i1087, i64 %i.mlf
  %i.mlh = trunc i64 %n.vec5116 to i32
  %i.mli = add i32 %.125.lcssa.i.i1086, %i.mlh
  %i.mlj = getelementptr i8, ptr %.128.lcssa.i.i1085, i64 %i.mlf
  %i.mlk = getelementptr i8, ptr %.131.lcssa.i.i1084, i64 %i.mlf
  br label %vector.body5117

vector.body5117:                                  ; preds = %vector.ph5115, %vector.body5117
  %index5118 = phi i64 [ 0, %vector.ph5115 ], [ %index.next5124, %vector.body5117 ] ; 2 uses
  %i.mll = shl i64 %index5118, 1                  ; 3 uses
  %next.gep5119 = getelementptr i8, ptr %.1.lcssa.i.i1087, i64 %i.mll
  %next.gep5120 = getelementptr i8, ptr %.128.lcssa.i.i1085, i64 %i.mll
  %next.gep5121 = getelementptr i8, ptr %.131.lcssa.i.i1084, i64 %i.mll
  %wide.load5122 = load <16 x i16>, ptr %next.gep5119, align 2, !tbaa !57
  %i.mlm = zext <16 x i16> %wide.load5122 to <16 x i32>
  %i.mln = shl nuw <16 x i32> %i.mlm, splat (i32 16)
  %i.mlo = bitcast <16 x i32> %i.mln to <16 x float>
  %wide.load5123 = load <16 x i16>, ptr %next.gep5120, align 2, !tbaa !57
  %i.mlp = zext <16 x i16> %wide.load5123 to <16 x i32>
  %i.mlq = shl nuw <16 x i32> %i.mlp, splat (i32 16)
  %i.mlr = bitcast <16 x i32> %i.mlq to <16 x float>
  %i.mls = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.mlr, <16 x float> %i.mlo)
  %i.mlt = bitcast <16 x float> %i.mls to <16 x i32>
  %i.mlu = lshr <16 x i32> %i.mlt, splat (i32 16)
  %i.mlv = trunc nuw <16 x i32> %i.mlu to <16 x i16>
  store <16 x i16> %i.mlv, ptr %next.gep5121, align 2, !tbaa !57
  %index.next5124 = add nuw i64 %index5118, 16    ; 2 uses
  %i.mlw = icmp eq i64 %index.next5124, %n.vec5116
  br i1 %i.mlw, label %middle.block5125, label %vector.body5117, !llvm.loop !880

middle.block5125:                                 ; preds = %vector.body5117
  %cmp.n5126 = icmp eq i64 %i.mlb, %n.vec5116
  br i1 %cmp.n5126, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check5128

vec.epilog.iter.check5128:                        ; preds = %middle.block5125
  %min.epilog.iters.check5130 = icmp eq i64 %i.mle, 0
  br i1 %min.epilog.iters.check5130, label %.lr.ph137.i.i1088.preheader, label %vec.epilog.ph5131, !prof !64

vec.epilog.ph5131:                                ; preds = %vector.main.loop.iter.check5113, %vec.epilog.iter.check5128
  %vec.epilog.resume.val5132 = phi i64 [ %n.vec5116, %vec.epilog.iter.check5128 ], [ 0, %vector.main.loop.iter.check5113 ]
  %n.vec5133 = and i64 %i.mlb, 8589934588         ; 4 uses
  %i.mlx = shl nuw nsw i64 %n.vec5133, 1          ; 3 uses
  %i.mly = getelementptr i8, ptr %.1.lcssa.i.i1087, i64 %i.mlx
  %i.mlz = trunc i64 %n.vec5133 to i32
  %i.mma = add i32 %.125.lcssa.i.i1086, %i.mlz
  %i.mmb = getelementptr i8, ptr %.128.lcssa.i.i1085, i64 %i.mlx
  %i.mmc = getelementptr i8, ptr %.131.lcssa.i.i1084, i64 %i.mlx
  br label %vec.epilog.vector.body5134

vec.epilog.vector.body5134:                       ; preds = %vec.epilog.vector.body5134, %vec.epilog.ph5131
  %index5135 = phi i64 [ %vec.epilog.resume.val5132, %vec.epilog.ph5131 ], [ %index.next5141, %vec.epilog.vector.body5134 ] ; 2 uses
  %i.mmd = shl i64 %index5135, 1                  ; 3 uses
  %next.gep5136 = getelementptr i8, ptr %.1.lcssa.i.i1087, i64 %i.mmd
  %next.gep5137 = getelementptr i8, ptr %.128.lcssa.i.i1085, i64 %i.mmd
  %next.gep5138 = getelementptr i8, ptr %.131.lcssa.i.i1084, i64 %i.mmd
  %wide.load5139 = load <4 x i16>, ptr %next.gep5136, align 2, !tbaa !57
  %i.mme = zext <4 x i16> %wide.load5139 to <4 x i32>
  %i.mmf = shl nuw <4 x i32> %i.mme, splat (i32 16)
  %i.mmg = bitcast <4 x i32> %i.mmf to <4 x float>
  %wide.load5140 = load <4 x i16>, ptr %next.gep5137, align 2, !tbaa !57
  %i.mmh = zext <4 x i16> %wide.load5140 to <4 x i32>
  %i.mmi = shl nuw <4 x i32> %i.mmh, splat (i32 16)
  %i.mmj = bitcast <4 x i32> %i.mmi to <4 x float>
  %i.mmk = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.mmj, <4 x float> %i.mmg)
  %i.mml = bitcast <4 x float> %i.mmk to <4 x i32>
  %i.mmm = lshr <4 x i32> %i.mml, splat (i32 16)
  %i.mmn = trunc nuw <4 x i32> %i.mmm to <4 x i16>
  store <4 x i16> %i.mmn, ptr %next.gep5138, align 2, !tbaa !57
  %index.next5141 = add nuw i64 %index5135, 4     ; 2 uses
  %i.mmo = icmp eq i64 %index.next5141, %n.vec5133
  br i1 %i.mmo, label %vec.epilog.middle.block5142, label %vec.epilog.vector.body5134, !llvm.loop !881

vec.epilog.middle.block5142:                      ; preds = %vec.epilog.vector.body5134
  %cmp.n5143 = icmp eq i64 %i.mlb, %n.vec5133
  br i1 %cmp.n5143, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph137.i.i1088.preheader

.lr.ph137.i.i1088.preheader:                      ; preds = %iter.check5127, %vector.memcheck5109, %vec.epilog.iter.check5128, %vec.epilog.middle.block5142
  %.2136.i.i1089.ph = phi ptr [ %.1.lcssa.i.i1087, %iter.check5127 ], [ %.1.lcssa.i.i1087, %vector.memcheck5109 ], [ %i.mlg, %vec.epilog.iter.check5128 ], [ %i.mly, %vec.epilog.middle.block5142 ] ; 3 uses
  %.226135.i.i1090.ph = phi i32 [ %.125.lcssa.i.i1086, %iter.check5127 ], [ %.125.lcssa.i.i1086, %vector.memcheck5109 ], [ %i.mli, %vec.epilog.iter.check5128 ], [ %i.mma, %vec.epilog.middle.block5142 ] ; 4 uses
  %.229134.i.i1091.ph = phi ptr [ %.128.lcssa.i.i1085, %iter.check5127 ], [ %.128.lcssa.i.i1085, %vector.memcheck5109 ], [ %i.mlj, %vec.epilog.iter.check5128 ], [ %i.mmb, %vec.epilog.middle.block5142 ] ; 3 uses
  %.232133.i.i1092.ph = phi ptr [ %.131.lcssa.i.i1084, %iter.check5127 ], [ %.131.lcssa.i.i1084, %vector.memcheck5109 ], [ %i.mlk, %vec.epilog.iter.check5128 ], [ %i.mmc, %vec.epilog.middle.block5142 ] ; 3 uses
  %i.mmp = sub i32 %i.mic, %.226135.i.i1090.ph
  %.neg8014 = add i32 %.226135.i.i1090.ph, 1
  %xtraiter7814 = and i32 %i.mmp, 1
  %lcmp.mod7815.not = icmp eq i32 %xtraiter7814, 0
  br i1 %lcmp.mod7815.not, label %.lr.ph137.i.i1088.prol.loopexit, label %.lr.ph137.i.i1088.prol

.lr.ph137.i.i1088.prol:                           ; preds = %.lr.ph137.i.i1088.preheader
  %i.mmq = getelementptr inbounds nuw i8, ptr %.2136.i.i1089.ph, i64 2
  %i.mmr = load i16, ptr %.2136.i.i1089.ph, align 2, !tbaa !57
  %i.mms = zext i16 %i.mmr to i32
  %i.mmt = shl nuw i32 %i.mms, 16
  %i.mmu = bitcast i32 %i.mmt to float
  %i.mmv = getelementptr inbounds nuw i8, ptr %.229134.i.i1091.ph, i64 2
  %i.mmw = load i16, ptr %.229134.i.i1091.ph, align 2, !tbaa !57
  %i.mmx = zext i16 %i.mmw to i32
  %i.mmy = shl nuw i32 %i.mmx, 16
  %i.mmz = bitcast i32 %i.mmy to float
  %i.mna = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.mmz, float %i.mmu)
  %i.mnb = bitcast float %i.mna to i32
  %i.mnc = lshr i32 %i.mnb, 16
  %i.mnd = trunc nuw i32 %i.mnc to i16
  %i.mne = getelementptr inbounds nuw i8, ptr %.232133.i.i1092.ph, i64 2
  store i16 %i.mnd, ptr %.232133.i.i1092.ph, align 2, !tbaa !57
  %i.mnf = add nuw nsw i32 %.226135.i.i1090.ph, 1
  br label %.lr.ph137.i.i1088.prol.loopexit

.lr.ph137.i.i1088.prol.loopexit:                  ; preds = %.lr.ph137.i.i1088.prol, %.lr.ph137.i.i1088.preheader
  %.2136.i.i1089.unr = phi ptr [ %.2136.i.i1089.ph, %.lr.ph137.i.i1088.preheader ], [ %i.mmq, %.lr.ph137.i.i1088.prol ]
  %.226135.i.i1090.unr = phi i32 [ %.226135.i.i1090.ph, %.lr.ph137.i.i1088.preheader ], [ %i.mnf, %.lr.ph137.i.i1088.prol ]
  %.229134.i.i1091.unr = phi ptr [ %.229134.i.i1091.ph, %.lr.ph137.i.i1088.preheader ], [ %i.mmv, %.lr.ph137.i.i1088.prol ]
  %.232133.i.i1092.unr = phi ptr [ %.232133.i.i1092.ph, %.lr.ph137.i.i1088.preheader ], [ %i.mne, %.lr.ph137.i.i1088.prol ]
  %i.mng = icmp eq i32 %i.mic, %.neg8014
  br i1 %i.mng, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph137.i.i1088

.lr.ph128.i.i1094:                                ; preds = %.preheader116.i.i1078, %.lr.ph128.i.i1094
  %.1127.i.i1095 = phi ptr [ %i.mpo, %.lr.ph128.i.i1094 ], [ %.0.lcssa.i.i1082, %.preheader116.i.i1078 ] ; 2 uses
  %.125126.i.i1096 = phi i32 [ %i.mpr, %.lr.ph128.i.i1094 ], [ %.024.lcssa.i.i1081, %.preheader116.i.i1078 ]
  %.128125.i.i1097 = phi ptr [ %i.mpp, %.lr.ph128.i.i1094 ], [ %.027.lcssa.i.i1080, %.preheader116.i.i1078 ] ; 2 uses
  %.131124.i.i1098 = phi ptr [ %i.mpq, %.lr.ph128.i.i1094 ], [ %.030.lcssa.i.i1079, %.preheader116.i.i1078 ] ; 2 uses
  %i.mnh = load i64, ptr %.1127.i.i1095, align 1, !tbaa !60
  %i.mni = insertelement <2 x i64> poison, i64 %i.mnh, i64 0
  %i.mnj = bitcast <2 x i64> %i.mni to <8 x i16>
  %i.mnk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mnj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.mnl = bitcast <8 x i16> %i.mnk to <4 x float> ; 3 uses
  %i.mnm = load i64, ptr %.128125.i.i1097, align 1, !tbaa !60
  %i.mnn = insertelement <2 x i64> poison, i64 %i.mnm, i64 0
  %i.mno = bitcast <2 x i64> %i.mnn to <8 x i16>
  %i.mnp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mno, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.mnq = bitcast <8 x i16> %i.mnp to <4 x float> ; 3 uses
  %i.mnr = fcmp fast oeq <4 x float> %i.mnl, zeroinitializer ; 2 uses
  %i.mns = fcmp fast oeq <4 x float> %i.mnq, zeroinitializer ; 2 uses
  %.not112.i.i1099 = or <4 x i1> %i.mnr, %i.mns
  %i.mnt = fcmp fast olt <4 x float> %i.mnl, zeroinitializer
  %i.mnu = fcmp fast olt <4 x float> %i.mnq, zeroinitializer
  %i.mnv = select <4 x i1> %i.mnu, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.mnw = select <4 x i1> %i.mnt, <4 x float> %i.mnv, <4 x float> zeroinitializer
  %i.mnx = fdiv fast <4 x float> %i.mnq, %i.mnl   ; 2 uses
  %i.mny = bitcast <4 x float> %i.mnx to <4 x i32>
  %i.mnz = and <4 x i32> %i.mny, splat (i32 -2147483648)
  %i.moa = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mnx) ; 3 uses
  %i.mob = fcmp fast ogt <4 x float> %i.moa, splat (float 1.000000e+00) ; 2 uses
  %i.moc = select <4 x i1> %i.mob, <4 x float> splat (float -1.000000e+00), <4 x float> %i.moa
  %i.mod = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.moa, <4 x float> splat (float 1.000000e+00))
  %i.moe = fdiv fast <4 x float> %i.moc, %i.mod   ; 3 uses
  %i.mof = fmul fast <4 x float> %i.moe, %i.moe   ; 3 uses
  %i.mog = fmul fast <4 x float> %i.mof, %i.mof   ; 7 uses
  %i.moh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mog, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.moi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mog, <4 x float> nofpclass(nan inf) %i.moh, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.moj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mog, <4 x float> nofpclass(nan inf) %i.moi, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.mok = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mog, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.mol = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mog, <4 x float> nofpclass(nan inf) %i.mok, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.mom = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mog, <4 x float> nofpclass(nan inf) %i.mol, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.mon = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mog, <4 x float> nofpclass(nan inf) %i.mom, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.moo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mof, <4 x float> nofpclass(nan inf) %i.moj, <4 x float> nofpclass(nan inf) %i.mon)
  %i.mop = fmul fast <4 x float> %i.moo, %i.moe
  %i.moq = select <4 x i1> %i.mob, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.mor = fadd fast <4 x float> %i.mop, %i.moq
  %i.mos = bitcast <4 x float> %i.mor to <4 x i32>
  %i.mot = or <4 x i32> %i.mnz, %i.mos
  %i.mou = bitcast <4 x i32> %i.mot to <4 x float>
  %i.mov = fadd fast <4 x float> %i.mnw, %i.mou
  %i.mow = bitcast <8 x i16> %i.mnk to <4 x i32>
  %i.mox = and <4 x i32> %i.mow, splat (i32 -2147483648)
  %i.moy = or disjoint <4 x i32> %i.mox, splat (i32 1078530011)
  %i.moz = bitcast <4 x i32> %i.moy to <4 x float>
  %i.mpa = fcmp fast uge <4 x float> %i.moz, zeroinitializer
  %i.mpb = bitcast <8 x i16> %i.mnp to <4 x i32>
  %i.mpc = and <4 x i32> %i.mpb, splat (i32 -2147483648)
  %i.mpd = or disjoint <4 x i32> %i.mpc, splat (i32 1070137344)
  %i.mpe = select <4 x i1> %i.mpa, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.mpf = bitcast <4 x float> %i.mov to <4 x i32>
  %i.mpg = select <4 x i1> %.not112.i.i1099, <4 x i32> zeroinitializer, <4 x i32> %i.mpf
  %i.mph = select <4 x i1> %i.mnr, <4 x i32> %i.mpd, <4 x i32> zeroinitializer
  %i.mpi = select <4 x i1> %i.mns, <4 x i32> %i.mpe, <4 x i32> %i.mph
  %i.mpj = or <4 x i32> %i.mpg, %i.mpi
  %i.mpk = lshr <4 x i32> %i.mpj, splat (i32 16)
  %i.mpl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mpk, <4 x i32> poison)
  %i.mpm = bitcast <8 x i16> %i.mpl to <2 x i64>
  %i.mpn = extractelement <2 x i64> %i.mpm, i64 0
  store i64 %i.mpn, ptr %.131124.i.i1098, align 1, !tbaa !60
  %i.mpo = getelementptr inbounds nuw i8, ptr %.1127.i.i1095, i64 8 ; 2 uses
  %i.mpp = getelementptr inbounds nuw i8, ptr %.128125.i.i1097, i64 8 ; 2 uses
  %i.mpq = getelementptr inbounds nuw i8, ptr %.131124.i.i1098, i64 8 ; 2 uses
  %i.mpr = add nuw nsw i32 %.125126.i.i1096, 4    ; 3 uses
  %i.mps = or disjoint i32 %i.mpr, 3
  %i.mpt = icmp slt i32 %i.mps, %i.mic
  br i1 %i.mpt, label %.lr.ph128.i.i1094, label %.preheader.i.i1083, !llvm.loop !882
end_hunk_17
begin_hunk_18_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.nyp = load i16, ptr %.018108.i.i, align 2, !tbaa !57
  %i.nyq = zext i16 %i.nyp to i32
  %i.nyr = shl nuw i32 %i.nyq, 16
  %i.nys = insertelement <8 x i32> poison, i32 %i.nyr, i64 0
  %i.nyt = bitcast <8 x i32> %i.nys to <8 x float>
  %i.nyu = shufflevector <8 x float> %i.nyt, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.nyv = fcmp fast ueq <8 x float> %i.nyu, zeroinitializer ; 2 uses
  %.not101.i.i1024 = or <8 x i1> %i.nyg, %i.nyv
  %i.nyw = bitcast <8 x float> %i.nyu to <8 x i32>
  %i.nyx = and <8 x i32> %i.nyw, splat (i32 -2147483648)
  %i.nyy = fcmp fast olt <8 x float> %i.nyu, zeroinitializer
  %i.nyz = select <8 x i1> %i.nyy, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.nza = select <8 x i1> %i.nyh, <8 x float> %i.nyz, <8 x float> zeroinitializer
  %i.nzb = fmul fast <8 x float> %i.nyu, %i.nyo   ; 2 uses
  %i.nzc = bitcast <8 x float> %i.nzb to <8 x i32>
  %i.nzd = and <8 x i32> %i.nzc, splat (i32 -2147483648)
  %i.nze = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nzb) ; 3 uses
  %i.nzf = fcmp fast ogt <8 x float> %i.nze, splat (float 1.000000e+00) ; 2 uses
  %i.nzg = select <8 x i1> %i.nzf, <8 x float> splat (float -1.000000e+00), <8 x float> %i.nze
  %i.nzh = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nze, <8 x float> splat (float 1.000000e+00))
  %i.nzi = fdiv fast <8 x float> %i.nzg, %i.nzh   ; 3 uses
  %i.nzj = fmul fast <8 x float> %i.nzi, %i.nzi   ; 3 uses
  %i.nzk = fmul fast <8 x float> %i.nzj, %i.nzj   ; 7 uses
  %i.nzl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nzm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzl, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nzn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzm, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nzo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nzp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzo, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nzq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzp, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.nzr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzk, <8 x float> nofpclass(nan inf) %i.nzq, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.nzs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nzj, <8 x float> nofpclass(nan inf) %i.nzn, <8 x float> nofpclass(nan inf) %i.nzr)
  %i.nzt = fmul fast <8 x float> %i.nzs, %i.nzi
  %i.nzu = select <8 x i1> %i.nzf, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.nzv = fadd fast <8 x float> %i.nzt, %i.nzu
  %i.nzw = bitcast <8 x float> %i.nzv to <8 x i32>
  %i.nzx = or <8 x i32> %i.nzd, %i.nzw
  %i.nzy = bitcast <8 x i32> %i.nzx to <8 x float>
  %i.nzz = fadd fast <8 x float> %i.nza, %i.nzy
  %i.oaa = or disjoint <8 x i32> %i.nyx, splat (i32 1070141403)
  %i.oab = bitcast <8 x float> %i.nzz to <8 x i32>
  %i.oac = select <8 x i1> %.not101.i.i1024, <8 x i32> zeroinitializer, <8 x i32> %i.oab
  %i.oad = select <8 x i1> %i.nyg, <8 x i32> %i.oaa, <8 x i32> zeroinitializer
  %i.oae = select <8 x i1> %i.nyv, <8 x i32> %i.nyn, <8 x i32> %i.oad
  %i.oaf = or <8 x i32> %i.oac, %i.oae            ; 2 uses
  %i.oag = shufflevector <8 x i32> %i.oaf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oah = shufflevector <8 x i32> %i.oaf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.oai = lshr <4 x i32> %i.oag, splat (i32 16)
  %i.oaj = lshr <4 x i32> %i.oah, splat (i32 16)
  %i.oak = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.oai, <4 x i32> %i.oaj)
  store <8 x i16> %i.oak, ptr %.020106.i.i, align 1, !tbaa !60
  %i.oal = getelementptr inbounds nuw i8, ptr %.018108.i.i, i64 2
  %i.oam = getelementptr inbounds nuw i8, ptr %.020106.i.i, i64 16
  %i.oan = add nuw nsw i32 %.019107.i.i, 1        ; 2 uses
  %exitcond111.not.i.i = icmp eq i32 %i.oan, %.sroa.speculated75.i
  br i1 %exitcond111.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.kr, !llvm.loop !901

.lr.ph.i63.i:                                     ; preds = %bb.kq
  %i.oao = load i64, ptr %0, align 1, !tbaa !60
  %i.oap = insertelement <2 x i64> poison, i64 %i.oao, i64 0
  %i.oaq = bitcast <2 x i64> %i.oap to <8 x i16>
  %i.oar = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oaq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.oas = bitcast <8 x i16> %i.oar to <4 x float> ; 3 uses
  %i.oat = fcmp fast oeq <4 x float> %i.oas, zeroinitializer ; 2 uses
  %i.oau = fcmp fast olt <4 x float> %i.oas, zeroinitializer
  %i.oav = bitcast <8 x i16> %i.oar to <4 x i32>
  %i.oaw = and <4 x i32> %i.oav, splat (i32 -2147483648)
  %i.oax = or disjoint <4 x i32> %i.oaw, splat (i32 1078530011)
  %i.oay = bitcast <4 x i32> %i.oax to <4 x float>
  %i.oaz = fcmp fast uge <4 x float> %i.oay, zeroinitializer
  %i.oba = select <4 x i1> %i.oaz, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.obb = fdiv fast <4 x float> splat (float 1.000000e+00), %i.oas
  br label %bb.ks

bb.ks:                                            ; preds = %bb.ks, %.lr.ph.i63.i
  %.0105.i.i = phi i32 [ 0, %.lr.ph.i63.i ], [ %i.ocz, %bb.ks ]
  %.1104.i.i = phi ptr [ %1, %.lr.ph.i63.i ], [ %i.ocx, %bb.ks ] ; 2 uses
  %.121103.i.i = phi ptr [ %2, %.lr.ph.i63.i ], [ %i.ocy, %bb.ks ] ; 2 uses
  %i.obc = load i16, ptr %.1104.i.i, align 2, !tbaa !57
  %i.obd = zext i16 %i.obc to i32
  %i.obe = shl nuw i32 %i.obd, 16
  %i.obf = insertelement <4 x i32> poison, i32 %i.obe, i64 0
  %i.obg = bitcast <4 x i32> %i.obf to <4 x float>
  %i.obh = shufflevector <4 x float> %i.obg, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.obi = fcmp fast oeq <4 x float> %i.obh, zeroinitializer ; 2 uses
  %.not98.i.i = or <4 x i1> %i.oat, %i.obi
  %i.obj = bitcast <4 x float> %i.obh to <4 x i32>
  %i.obk = and <4 x i32> %i.obj, splat (i32 -2147483648)
  %i.obl = fcmp fast olt <4 x float> %i.obh, zeroinitializer
  %i.obm = select <4 x i1> %i.obl, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.obn = select <4 x i1> %i.oau, <4 x float> %i.obm, <4 x float> zeroinitializer
  %i.obo = fmul fast <4 x float> %i.obh, %i.obb   ; 2 uses
  %i.obp = bitcast <4 x float> %i.obo to <4 x i32>
  %i.obq = and <4 x i32> %i.obp, splat (i32 -2147483648)
  %i.obr = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.obo) ; 3 uses
  %i.obs = fcmp fast ogt <4 x float> %i.obr, splat (float 1.000000e+00) ; 2 uses
  %i.obt = select <4 x i1> %i.obs, <4 x float> splat (float -1.000000e+00), <4 x float> %i.obr
  %i.obu = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.obr, <4 x float> splat (float 1.000000e+00))
  %i.obv = fdiv fast <4 x float> %i.obt, %i.obu   ; 3 uses
  %i.obw = fmul fast <4 x float> %i.obv, %i.obv   ; 3 uses
  %i.obx = fmul fast <4 x float> %i.obw, %i.obw   ; 7 uses
  %i.oby = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obx, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.obz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obx, <4 x float> nofpclass(nan inf) %i.oby, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.oca = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obx, <4 x float> nofpclass(nan inf) %i.obz, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ocb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obx, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.occ = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obx, <4 x float> nofpclass(nan inf) %i.ocb, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ocd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obx, <4 x float> nofpclass(nan inf) %i.occ, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.oce = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obx, <4 x float> nofpclass(nan inf) %i.ocd, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ocf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obw, <4 x float> nofpclass(nan inf) %i.oca, <4 x float> nofpclass(nan inf) %i.oce)
  %i.ocg = fmul fast <4 x float> %i.ocf, %i.obv
  %i.och = select <4 x i1> %i.obs, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.oci = fadd fast <4 x float> %i.ocg, %i.och
  %i.ocj = bitcast <4 x float> %i.oci to <4 x i32>
  %i.ock = or <4 x i32> %i.obq, %i.ocj
  %i.ocl = bitcast <4 x i32> %i.ock to <4 x float>
  %i.ocm = fadd fast <4 x float> %i.obn, %i.ocl
  %i.ocn = or disjoint <4 x i32> %i.obk, splat (i32 1070137344)
  %i.oco = bitcast <4 x float> %i.ocm to <4 x i32>
  %i.ocp = select <4 x i1> %.not98.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.oco
  %i.ocq = select <4 x i1> %i.oat, <4 x i32> %i.ocn, <4 x i32> zeroinitializer
  %i.ocr = select <4 x i1> %i.obi, <4 x i32> %i.oba, <4 x i32> %i.ocq
  %i.ocs = or <4 x i32> %i.ocp, %i.ocr
  %i.oct = lshr <4 x i32> %i.ocs, splat (i32 16)
  %i.ocu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.oct, <4 x i32> poison)
  %i.ocv = bitcast <8 x i16> %i.ocu to <2 x i64>
  %i.ocw = extractelement <2 x i64> %i.ocv, i64 0
  store i64 %i.ocw, ptr %.121103.i.i, align 1, !tbaa !60
  %i.ocx = getelementptr inbounds nuw i8, ptr %.1104.i.i, i64 2
  %i.ocy = getelementptr inbounds nuw i8, ptr %.121103.i.i, i64 8
  %i.ocz = add nuw nsw i32 %.0105.i.i, 1          ; 2 uses
  %exitcond.not.i64.i = icmp eq i32 %i.ocz, %.sroa.speculated75.i
  br i1 %exitcond.not.i64.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.ks, !llvm.loop !902

bb.kt:                                            ; preds = %bb.a
  %.sroa.speculated87.i1107 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 7 uses
  %.sroa.speculated.i1108 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.oda = mul i32 %.sroa.speculated.i1108, %.sroa.speculated87.i1107 ; 38 uses
  %i.odb = icmp eq i32 %5, %6
  br i1 %i.odb, label %bb.ku, label %bb.li

bb.ku:                                            ; preds = %bb.kt
  %i.odc = icmp eq i32 %3, %4
  br i1 %i.odc, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.odd = icmp sgt i32 %i.oda, 7
  br i1 %i.odd, label %.lr.ph.i.i1162, label %.preheader52.i.i

.preheader52.loopexit.i.i:                        ; preds = %.lr.ph.i.i1162
  %i.ode = and i32 %i.oda, 2147483640
  br label %.preheader52.i.i

.preheader52.i.i:                                 ; preds = %.preheader52.loopexit.i.i, %bb.kv
  %.030.lcssa.i.i1152 = phi ptr [ %2, %bb.kv ], [ %i.oed, %.preheader52.loopexit.i.i ] ; 2 uses
  %.027.lcssa.i.i1153 = phi ptr [ %1, %bb.kv ], [ %i.oec, %.preheader52.loopexit.i.i ] ; 2 uses
  %.024.lcssa.i.i1154 = phi i32 [ 0, %bb.kv ], [ %i.ode, %.preheader52.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i.i1155 = phi ptr [ %0, %bb.kv ], [ %i.oeb, %.preheader52.loopexit.i.i ] ; 2 uses
  %i.odf = or disjoint i32 %.024.lcssa.i.i1154, 3
  %i.odg = icmp slt i32 %i.odf, %i.oda
  br i1 %i.odg, label %.lr.ph64.i.i, label %.preheader.i.i1156

.lr.ph.i.i1162:                                   ; preds = %bb.kv, %.lr.ph.i.i1162
  %.056.i.i = phi ptr [ %i.oeb, %.lr.ph.i.i1162 ], [ %0, %bb.kv ] ; 2 uses
  %.02455.i.i = phi i32 [ %i.oee, %.lr.ph.i.i1162 ], [ 0, %bb.kv ]
  %.02754.i.i = phi ptr [ %i.oec, %.lr.ph.i.i1162 ], [ %1, %bb.kv ] ; 2 uses
  %.03053.i.i = phi ptr [ %i.oed, %.lr.ph.i.i1162 ], [ %2, %bb.kv ] ; 2 uses
  %i.odh = load <8 x i16>, ptr %.056.i.i, align 1, !tbaa !60 ; 2 uses
  %i.odi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.odh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.odj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.odh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.odk = shufflevector <8 x i16> %i.odi, <8 x i16> %i.odj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.odl = bitcast <16 x i16> %i.odk to <8 x float> ; 2 uses
  %i.odm = load <8 x i16>, ptr %.02754.i.i, align 1, !tbaa !60 ; 2 uses
  %i.odn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.odm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.odo = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.odm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.odp = shufflevector <8 x i16> %i.odn, <8 x i16> %i.odo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.odq = bitcast <16 x i16> %i.odp to <8 x float> ; 2 uses
  %i.odr = fdiv fast <8 x float> %i.odl, %i.odq
  %i.ods = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.odr)
  %i.odt = fmul fast <8 x float> %i.ods, %i.odq
  %i.odu = fsub fast <8 x float> %i.odl, %i.odt
  %i.odv = bitcast <8 x float> %i.odu to <8 x i32> ; 2 uses
  %i.odw = shufflevector <8 x i32> %i.odv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.odx = shufflevector <8 x i32> %i.odv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ody = lshr <4 x i32> %i.odw, splat (i32 16)
  %i.odz = lshr <4 x i32> %i.odx, splat (i32 16)
  %i.oea = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ody, <4 x i32> %i.odz)
  store <8 x i16> %i.oea, ptr %.03053.i.i, align 1, !tbaa !60
  %i.oeb = getelementptr inbounds nuw i8, ptr %.056.i.i, i64 16 ; 2 uses
  %i.oec = getelementptr inbounds nuw i8, ptr %.02754.i.i, i64 16 ; 2 uses
  %i.oed = getelementptr inbounds nuw i8, ptr %.03053.i.i, i64 16 ; 2 uses
  %i.oee = add nuw nsw i32 %.02455.i.i, 8         ; 2 uses
  %i.oef = or disjoint i32 %i.oee, 7
  %i.oeg = icmp slt i32 %i.oef, %i.oda
  br i1 %i.oeg, label %.lr.ph.i.i1162, label %.preheader52.loopexit.i.i, !llvm.loop !903

.preheader.i.i1156:                               ; preds = %.lr.ph64.i.i, %.preheader52.i.i
  %.131.lcssa.i.i1157 = phi ptr [ %.030.lcssa.i.i1152, %.preheader52.i.i ], [ %i.ogv, %.lr.ph64.i.i ] ; 7 uses
  %.128.lcssa.i.i1158 = phi ptr [ %.027.lcssa.i.i1153, %.preheader52.i.i ], [ %i.ogu, %.lr.ph64.i.i ] ; 7 uses
  %.125.lcssa.i.i1159 = phi i32 [ %.024.lcssa.i.i1154, %.preheader52.i.i ], [ %i.ogw, %.lr.ph64.i.i ] ; 6 uses
  %.1.lcssa.i.i1160 = phi ptr [ %.0.lcssa.i.i1155, %.preheader52.i.i ], [ %i.ogt, %.lr.ph64.i.i ] ; 7 uses
  %.128.lcssa.i.i11584938 = ptrtoaddr ptr %.128.lcssa.i.i1158 to i64
  %.131.lcssa.i.i11574939 = ptrtoaddr ptr %.1.lcssa.i.i1160 to i64
  %.1.lcssa.i.i11604940 = ptrtoaddr ptr %.131.lcssa.i.i1157 to i64 ; 2 uses
  %i.oeh = icmp slt i32 %.125.lcssa.i.i1159, %i.oda
  br i1 %i.oeh, label %iter.check4960, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check4960:                                   ; preds = %.preheader.i.i1156
  %i.oei = xor i32 %.125.lcssa.i.i1159, -1
  %i.oej = add i32 %i.oda, %i.oei                 ; 3 uses
  %i.oek = zext i32 %i.oej to i64
  %i.oel = add nuw nsw i64 %i.oek, 1              ; 5 uses
  %min.iters.check4941 = icmp ult i32 %i.oej, 3
  br i1 %min.iters.check4941, label %.lr.ph73.i.i.preheader, label %vector.memcheck4942

vector.memcheck4942:                              ; preds = %iter.check4960
  %i.oem = sub i64 %.131.lcssa.i.i11574939, %.1.lcssa.i.i11604940
  %diff.check4943 = icmp ugt i64 %i.oem, -32
  %i.oen = sub i64 %.128.lcssa.i.i11584938, %.1.lcssa.i.i11604940
  %diff.check4944 = icmp ugt i64 %i.oen, -32
  %conflict.rdx4945 = or i1 %diff.check4943, %diff.check4944
  br i1 %conflict.rdx4945, label %.lr.ph73.i.i.preheader, label %vector.main.loop.iter.check4946

vector.main.loop.iter.check4946:                  ; preds = %vector.memcheck4942
  %min.iters.check4947 = icmp ult i32 %i.oej, 15
  br i1 %min.iters.check4947, label %vec.epilog.ph4964, label %vector.ph4948

vector.ph4948:                                    ; preds = %vector.main.loop.iter.check4946
  %i.oeo = and i64 %i.oel, 12
  %n.vec4949 = and i64 %i.oel, 8589934576         ; 5 uses
  %i.oep = shl nuw nsw i64 %n.vec4949, 1          ; 3 uses
  %i.oeq = getelementptr i8, ptr %.1.lcssa.i.i1160, i64 %i.oep
  %i.oer = trunc i64 %n.vec4949 to i32
  %i.oes = add i32 %.125.lcssa.i.i1159, %i.oer
  %i.oet = getelementptr i8, ptr %.128.lcssa.i.i1158, i64 %i.oep
  %i.oeu = getelementptr i8, ptr %.131.lcssa.i.i1157, i64 %i.oep
  br label %vector.body4950

vector.body4950:                                  ; preds = %vector.ph4948, %vector.body4950
  %index4951 = phi i64 [ 0, %vector.ph4948 ], [ %index.next4957, %vector.body4950 ] ; 2 uses
  %i.oev = shl i64 %index4951, 1                  ; 3 uses
  %next.gep4952 = getelementptr i8, ptr %.1.lcssa.i.i1160, i64 %i.oev
  %next.gep4953 = getelementptr i8, ptr %.128.lcssa.i.i1158, i64 %i.oev
  %next.gep4954 = getelementptr i8, ptr %.131.lcssa.i.i1157, i64 %i.oev
  %wide.load4955 = load <16 x i16>, ptr %next.gep4952, align 2, !tbaa !57
  %i.oew = zext <16 x i16> %wide.load4955 to <16 x i32>
  %i.oex = shl nuw <16 x i32> %i.oew, splat (i32 16)
  %i.oey = bitcast <16 x i32> %i.oex to <16 x float>
  %wide.load4956 = load <16 x i16>, ptr %next.gep4953, align 2, !tbaa !57
  %i.oez = zext <16 x i16> %wide.load4956 to <16 x i32>
  %i.ofa = shl nuw <16 x i32> %i.oez, splat (i32 16)
  %i.ofb = bitcast <16 x i32> %i.ofa to <16 x float>
  %i.ofc = frem fast <16 x float> %i.oey, %i.ofb
  %i.ofd = bitcast <16 x float> %i.ofc to <16 x i32>
  %i.ofe = lshr <16 x i32> %i.ofd, splat (i32 16)
  %i.off = trunc nuw <16 x i32> %i.ofe to <16 x i16>
  store <16 x i16> %i.off, ptr %next.gep4954, align 2, !tbaa !57
  %index.next4957 = add nuw i64 %index4951, 16    ; 2 uses
  %i.ofg = icmp eq i64 %index.next4957, %n.vec4949
  br i1 %i.ofg, label %middle.block4958, label %vector.body4950, !llvm.loop !904

middle.block4958:                                 ; preds = %vector.body4950
  %cmp.n4959 = icmp eq i64 %i.oel, %n.vec4949
  br i1 %cmp.n4959, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check4961

vec.epilog.iter.check4961:                        ; preds = %middle.block4958
  %min.epilog.iters.check4963 = icmp eq i64 %i.oeo, 0
  br i1 %min.epilog.iters.check4963, label %.lr.ph73.i.i.preheader, label %vec.epilog.ph4964, !prof !64

vec.epilog.ph4964:                                ; preds = %vector.main.loop.iter.check4946, %vec.epilog.iter.check4961
  %vec.epilog.resume.val4965 = phi i64 [ %n.vec4949, %vec.epilog.iter.check4961 ], [ 0, %vector.main.loop.iter.check4946 ]
  %n.vec4966 = and i64 %i.oel, 8589934588         ; 4 uses
  %i.ofh = shl nuw nsw i64 %n.vec4966, 1          ; 3 uses
  %i.ofi = getelementptr i8, ptr %.1.lcssa.i.i1160, i64 %i.ofh
  %i.ofj = trunc i64 %n.vec4966 to i32
  %i.ofk = add i32 %.125.lcssa.i.i1159, %i.ofj
  %i.ofl = getelementptr i8, ptr %.128.lcssa.i.i1158, i64 %i.ofh
  %i.ofm = getelementptr i8, ptr %.131.lcssa.i.i1157, i64 %i.ofh
  br label %vec.epilog.vector.body4967

vec.epilog.vector.body4967:                       ; preds = %vec.epilog.vector.body4967, %vec.epilog.ph4964
  %index4968 = phi i64 [ %vec.epilog.resume.val4965, %vec.epilog.ph4964 ], [ %index.next4974, %vec.epilog.vector.body4967 ] ; 2 uses
  %i.ofn = shl i64 %index4968, 1                  ; 3 uses
  %next.gep4969 = getelementptr i8, ptr %.1.lcssa.i.i1160, i64 %i.ofn
  %next.gep4970 = getelementptr i8, ptr %.128.lcssa.i.i1158, i64 %i.ofn
  %next.gep4971 = getelementptr i8, ptr %.131.lcssa.i.i1157, i64 %i.ofn
  %wide.load4972 = load <4 x i16>, ptr %next.gep4969, align 2, !tbaa !57
  %i.ofo = zext <4 x i16> %wide.load4972 to <4 x i32>
  %i.ofp = shl nuw <4 x i32> %i.ofo, splat (i32 16)
  %i.ofq = bitcast <4 x i32> %i.ofp to <4 x float>
  %wide.load4973 = load <4 x i16>, ptr %next.gep4970, align 2, !tbaa !57
  %i.ofr = zext <4 x i16> %wide.load4973 to <4 x i32>
  %i.ofs = shl nuw <4 x i32> %i.ofr, splat (i32 16)
  %i.oft = bitcast <4 x i32> %i.ofs to <4 x float>
  %i.ofu = frem fast <4 x float> %i.ofq, %i.oft
  %i.ofv = bitcast <4 x float> %i.ofu to <4 x i32>
  %i.ofw = lshr <4 x i32> %i.ofv, splat (i32 16)
  %i.ofx = trunc nuw <4 x i32> %i.ofw to <4 x i16>
  store <4 x i16> %i.ofx, ptr %next.gep4971, align 2, !tbaa !57
  %index.next4974 = add nuw i64 %index4968, 4     ; 2 uses
  %i.ofy = icmp eq i64 %index.next4974, %n.vec4966
  br i1 %i.ofy, label %vec.epilog.middle.block4975, label %vec.epilog.vector.body4967, !llvm.loop !905

vec.epilog.middle.block4975:                      ; preds = %vec.epilog.vector.body4967
  %cmp.n4976 = icmp eq i64 %i.oel, %n.vec4966
  br i1 %cmp.n4976, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph73.i.i.preheader

.lr.ph73.i.i.preheader:                           ; preds = %iter.check4960, %vector.memcheck4942, %vec.epilog.iter.check4961, %vec.epilog.middle.block4975
  %.272.i.i.ph = phi ptr [ %.1.lcssa.i.i1160, %iter.check4960 ], [ %.1.lcssa.i.i1160, %vector.memcheck4942 ], [ %i.oeq, %vec.epilog.iter.check4961 ], [ %i.ofi, %vec.epilog.middle.block4975 ]
  %.22671.i.i.ph = phi i32 [ %.125.lcssa.i.i1159, %iter.check4960 ], [ %.125.lcssa.i.i1159, %vector.memcheck4942 ], [ %i.oes, %vec.epilog.iter.check4961 ], [ %i.ofk, %vec.epilog.middle.block4975 ]
  %.22970.i.i.ph = phi ptr [ %.128.lcssa.i.i1158, %iter.check4960 ], [ %.128.lcssa.i.i1158, %vector.memcheck4942 ], [ %i.oet, %vec.epilog.iter.check4961 ], [ %i.ofl, %vec.epilog.middle.block4975 ]
  %.23269.i.i.ph = phi ptr [ %.131.lcssa.i.i1157, %iter.check4960 ], [ %.131.lcssa.i.i1157, %vector.memcheck4942 ], [ %i.oeu, %vec.epilog.iter.check4961 ], [ %i.ofm, %vec.epilog.middle.block4975 ]
  br label %.lr.ph73.i.i

.lr.ph64.i.i:                                     ; preds = %.preheader52.i.i, %.lr.ph64.i.i
  %.163.i.i = phi ptr [ %i.ogt, %.lr.ph64.i.i ], [ %.0.lcssa.i.i1155, %.preheader52.i.i ] ; 2 uses
  %.12562.i.i = phi i32 [ %i.ogw, %.lr.ph64.i.i ], [ %.024.lcssa.i.i1154, %.preheader52.i.i ]
  %.12861.i.i = phi ptr [ %i.ogu, %.lr.ph64.i.i ], [ %.027.lcssa.i.i1153, %.preheader52.i.i ] ; 2 uses
  %.13160.i.i = phi ptr [ %i.ogv, %.lr.ph64.i.i ], [ %.030.lcssa.i.i1152, %.preheader52.i.i ] ; 2 uses
  %i.ofz = load i64, ptr %.163.i.i, align 1, !tbaa !60
  %i.oga = insertelement <2 x i64> poison, i64 %i.ofz, i64 0
  %i.ogb = bitcast <2 x i64> %i.oga to <8 x i16>
  %i.ogc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ogb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ogd = bitcast <8 x i16> %i.ogc to <4 x float> ; 2 uses
  %i.oge = load i64, ptr %.12861.i.i, align 1, !tbaa !60
  %i.ogf = insertelement <2 x i64> poison, i64 %i.oge, i64 0
  %i.ogg = bitcast <2 x i64> %i.ogf to <8 x i16>
  %i.ogh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ogg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ogi = bitcast <8 x i16> %i.ogh to <4 x float> ; 2 uses
  %i.ogj = fdiv fast <4 x float> %i.ogd, %i.ogi
  %i.ogk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ogj)
  %i.ogl = sitofp fast <4 x i32> %i.ogk to <4 x float>
  %i.ogm = fmul fast <4 x float> %i.ogi, %i.ogl
  %i.ogn = fsub fast <4 x float> %i.ogd, %i.ogm
  %i.ogo = bitcast <4 x float> %i.ogn to <4 x i32>
  %i.ogp = lshr <4 x i32> %i.ogo, splat (i32 16)
  %i.ogq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ogp, <4 x i32> poison)
  %i.ogr = bitcast <8 x i16> %i.ogq to <2 x i64>
  %i.ogs = extractelement <2 x i64> %i.ogr, i64 0
  store i64 %i.ogs, ptr %.13160.i.i, align 1, !tbaa !60
  %i.ogt = getelementptr inbounds nuw i8, ptr %.163.i.i, i64 8 ; 2 uses
  %i.ogu = getelementptr inbounds nuw i8, ptr %.12861.i.i, i64 8 ; 2 uses
  %i.ogv = getelementptr inbounds nuw i8, ptr %.13160.i.i, i64 8 ; 2 uses
  %i.ogw = add nuw nsw i32 %.12562.i.i, 4         ; 3 uses
  %i.ogx = or disjoint i32 %i.ogw, 3
  %i.ogy = icmp slt i32 %i.ogx, %i.oda
  br i1 %i.ogy, label %.lr.ph64.i.i, label %.preheader.i.i1156, !llvm.loop !906

.lr.ph73.i.i:                                     ; preds = %.lr.ph73.i.i.preheader, %.lr.ph73.i.i
  %.272.i.i = phi ptr [ %i.ogz, %.lr.ph73.i.i ], [ %.272.i.i.ph, %.lr.ph73.i.i.preheader ] ; 2 uses
  %.22671.i.i = phi i32 [ %i.oho, %.lr.ph73.i.i ], [ %.22671.i.i.ph, %.lr.ph73.i.i.preheader ]
  %.22970.i.i = phi ptr [ %i.ohe, %.lr.ph73.i.i ], [ %.22970.i.i.ph, %.lr.ph73.i.i.preheader ] ; 2 uses
  %.23269.i.i = phi ptr [ %i.ohn, %.lr.ph73.i.i ], [ %.23269.i.i.ph, %.lr.ph73.i.i.preheader ] ; 2 uses
  %i.ogz = getelementptr inbounds nuw i8, ptr %.272.i.i, i64 2
  %i.oha = load i16, ptr %.272.i.i, align 2, !tbaa !57
  %i.ohb = zext i16 %i.oha to i32
  %i.ohc = shl nuw i32 %i.ohb, 16
  %i.ohd = bitcast i32 %i.ohc to float
  %i.ohe = getelementptr inbounds nuw i8, ptr %.22970.i.i, i64 2
  %i.ohf = load i16, ptr %.22970.i.i, align 2, !tbaa !57
  %i.ohg = zext i16 %i.ohf to i32
  %i.ohh = shl nuw i32 %i.ohg, 16
  %i.ohi = bitcast i32 %i.ohh to float
  %i.ohj = frem fast float %i.ohd, %i.ohi
  %i.ohk = bitcast float %i.ohj to i32
  %i.ohl = lshr i32 %i.ohk, 16
  %i.ohm = trunc nuw i32 %i.ohl to i16
  %i.ohn = getelementptr inbounds nuw i8, ptr %.23269.i.i, i64 2
  store i16 %i.ohm, ptr %.23269.i.i, align 2, !tbaa !57
  %i.oho = add nuw nsw i32 %.22671.i.i, 1         ; 2 uses
  %exitcond.not.i.i1161 = icmp eq i32 %i.oho, %i.oda
  br i1 %exitcond.not.i.i1161, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph73.i.i, !llvm.loop !907

bb.kw:                                            ; preds = %bb.ku
  %i.ohp = icmp eq i32 %4, 1
  br i1 %i.ohp, label %bb.kx, label %bb.lc

bb.kx:                                            ; preds = %bb.kw
  %i.ohq = load i16, ptr %1, align 2, !tbaa !57
  %i.ohr = zext i16 %i.ohq to i32
  %i.ohs = shl nuw i32 %i.ohr, 16
  %i.oht = bitcast i32 %i.ohs to float            ; 6 uses
  %i.ohu = icmp eq i32 %.sroa.speculated.i1108, 4
  br i1 %i.ohu, label %.thread.i.i1151, label %bb.ky

.thread.i.i1151:                                  ; preds = %bb.kx
  %i.ohv = load i64, ptr %1, align 2, !tbaa !60
  %i.ohw = insertelement <2 x i64> poison, i64 %i.ohv, i64 0
  %i.ohx = bitcast <2 x i64> %i.ohw to <8 x i16>
  %i.ohy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ohx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ohz = bitcast <8 x i16> %i.ohy to <4 x float>
  br label %bb.la

bb.ky:                                            ; preds = %bb.kx
  %i.oia = insertelement <4 x float> poison, float %i.oht, i64 0
  %i.oib = shufflevector <4 x float> %i.oia, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.oic = icmp eq i32 %.sroa.speculated.i1108, 8
  br i1 %i.oic, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.oid = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.oie = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oid, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oif = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.oid, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.oig = shufflevector <8 x i16> %i.oie, <8 x i16> %i.oif, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oih = bitcast <16 x i16> %i.oig to <8 x float>
  br label %bb.lb

bb.la:                                            ; preds = %bb.ky, %.thread.i.i1151
  %i.oii = phi <4 x float> [ %i.ohz, %.thread.i.i1151 ], [ %i.oib, %bb.ky ] ; 2 uses
  %i.oij = shufflevector <4 x float> %i.oii, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %i.oik = phi <4 x float> [ %i.oib, %bb.kz ], [ %i.oii, %bb.la ] ; 2 uses
  %i.oil = phi fast <8 x float> [ %i.oih, %bb.kz ], [ %i.oij, %bb.la ] ; 2 uses
  %i.oim = icmp sgt i32 %i.oda, 7
  br i1 %i.oim, label %.lr.ph.i39.i1150.preheader, label %.preheader52.i34.i

.lr.ph.i39.i1150.preheader:                       ; preds = %bb.lb
end_hunk_18
begin_hunk_19_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.oxk = insertelement <2 x i64> poison, i64 %i.oxj, i64 0
  %i.oxl = bitcast <2 x i64> %i.oxk to <8 x i16>
  %i.oxm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oxl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oxn = bitcast <8 x i16> %i.oxm to <4 x float> ; 2 uses
  %i.oxo = fmul fast <4 x float> %i.oxn, %i.ovm
  %i.oxp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oxo)
  %i.oxq = sitofp fast <4 x i32> %i.oxp to <4 x float>
  %i.oxr = fmul fast <4 x float> %i.ovj, %i.oxq
  %i.oxs = fsub fast <4 x float> %i.oxn, %i.oxr
  %i.oxt = bitcast <4 x float> %i.oxs to <4 x i32>
  %i.oxu = lshr <4 x i32> %i.oxt, splat (i32 16)
  %i.oxv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.oxu, <4 x i32> poison)
  %i.oxw = bitcast <8 x i16> %i.oxv to <2 x i64>
  %i.oxx = extractelement <2 x i64> %i.oxw, i64 0
  store i64 %i.oxx, ptr %.12623.i.i, align 1, !tbaa !60
  %i.oxy = getelementptr inbounds nuw i8, ptr %.125.i.i, i64 8 ; 2 uses
  %i.oxz = getelementptr inbounds nuw i8, ptr %.12623.i.i, i64 8 ; 2 uses
  %i.oya = add nuw nsw i32 %.12324.i.i, 4         ; 3 uses
  %i.oyb = or disjoint i32 %i.oya, 3
  %i.oyc = icmp slt i32 %i.oyb, %i.oda
  br i1 %i.oyc, label %.lr.ph27.i.i1123, label %.preheader.i69.i1118, !llvm.loop !923

.lr.ph34.i.i:                                     ; preds = %.lr.ph34.i.i.prol.loopexit, %.lr.ph34.i.i
  %.233.i.i = phi ptr [ %i.oyn, %.lr.ph34.i.i ], [ %.233.i.i.unr, %.lr.ph34.i.i.prol.loopexit ] ; 3 uses
  %.22432.i.i = phi i32 [ %i.oyx, %.lr.ph34.i.i ], [ %.22432.i.i.unr, %.lr.ph34.i.i.prol.loopexit ]
  %.22731.i.i = phi ptr [ %i.oyw, %.lr.ph34.i.i ], [ %.22731.i.i.unr, %.lr.ph34.i.i.prol.loopexit ] ; 3 uses
  %i.oyd = getelementptr inbounds nuw i8, ptr %.233.i.i, i64 2
  %i.oye = load i16, ptr %.233.i.i, align 2, !tbaa !57
  %i.oyf = zext i16 %i.oye to i32
  %i.oyg = shl nuw i32 %i.oyf, 16
  %i.oyh = bitcast i32 %i.oyg to float
  %i.oyi = frem fast float %i.oyh, %i.oui
  %i.oyj = bitcast float %i.oyi to i32
  %i.oyk = lshr i32 %i.oyj, 16
  %i.oyl = trunc nuw i32 %i.oyk to i16
  %i.oym = getelementptr inbounds nuw i8, ptr %.22731.i.i, i64 2
  store i16 %i.oyl, ptr %.22731.i.i, align 2, !tbaa !57
  %i.oyn = getelementptr inbounds nuw i8, ptr %.233.i.i, i64 4
  %i.oyo = load i16, ptr %i.oyd, align 2, !tbaa !57
  %i.oyp = zext i16 %i.oyo to i32
  %i.oyq = shl nuw i32 %i.oyp, 16
  %i.oyr = bitcast i32 %i.oyq to float
  %i.oys = frem fast float %i.oyr, %i.oui
  %i.oyt = bitcast float %i.oys to i32
  %i.oyu = lshr i32 %i.oyt, 16
  %i.oyv = trunc nuw i32 %i.oyu to i16
  %i.oyw = getelementptr inbounds nuw i8, ptr %.22731.i.i, i64 4
  store i16 %i.oyv, ptr %i.oym, align 2, !tbaa !57
  %i.oyx = add nuw nsw i32 %.22432.i.i, 2         ; 2 uses
  %exitcond.not.i72.i1122.1 = icmp eq i32 %i.oyx, %i.oda
  br i1 %exitcond.not.i72.i1122.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph34.i.i, !llvm.loop !924

bb.ln:                                            ; preds = %bb.ll
  %i.oyy = icmp eq i32 %3, 1
  br i1 %i.oyy, label %bb.lo, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.lo:                                            ; preds = %bb.ln
  switch i32 %.sroa.speculated.i1108, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.lp
    i32 4, label %bb.lq
  ]

bb.lp:                                            ; preds = %bb.lo
  %i.oyz = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.oza = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oyz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ozb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.oyz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ozc = shufflevector <8 x i16> %i.oza, <8 x i16> %i.ozb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ozd = bitcast <16 x i16> %i.ozc to <8 x float> ; 2 uses
  br label %.lr.ph45.i.i

.lr.ph45.i.i:                                     ; preds = %.lr.ph45.i.i, %bb.lp
  %.01844.i.i = phi ptr [ %i.ozu, %.lr.ph45.i.i ], [ %1, %bb.lp ] ; 2 uses
  %.01943.i.i = phi i32 [ %i.ozw, %.lr.ph45.i.i ], [ 0, %bb.lp ]
  %.02042.i.i = phi ptr [ %i.ozv, %.lr.ph45.i.i ], [ %2, %bb.lp ] ; 2 uses
  %i.oze = load i16, ptr %.01844.i.i, align 2, !tbaa !57
  %i.ozf = zext i16 %i.oze to i32
  %i.ozg = shl nuw i32 %i.ozf, 16
  %i.ozh = insertelement <8 x i32> poison, i32 %i.ozg, i64 0
  %i.ozi = bitcast <8 x i32> %i.ozh to <8 x float>
  %i.ozj = shufflevector <8 x float> %i.ozi, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ozk = fdiv fast <8 x float> %i.ozd, %i.ozj
  %i.ozl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.ozk)
  %i.ozm = fmul fast <8 x float> %i.ozl, %i.ozj
  %i.ozn = fsub fast <8 x float> %i.ozd, %i.ozm
  %i.ozo = bitcast <8 x float> %i.ozn to <8 x i32> ; 2 uses
  %i.ozp = shufflevector <8 x i32> %i.ozo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ozq = shufflevector <8 x i32> %i.ozo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ozr = lshr <4 x i32> %i.ozp, splat (i32 16)
  %i.ozs = lshr <4 x i32> %i.ozq, splat (i32 16)
  %i.ozt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ozr, <4 x i32> %i.ozs)
  store <8 x i16> %i.ozt, ptr %.02042.i.i, align 1, !tbaa !60
  %i.ozu = getelementptr inbounds nuw i8, ptr %.01844.i.i, i64 2
  %i.ozv = getelementptr inbounds nuw i8, ptr %.02042.i.i, i64 16
  %i.ozw = add nuw nsw i32 %.01943.i.i, 1         ; 2 uses
  %exitcond47.not.i.i = icmp eq i32 %i.ozw, %.sroa.speculated87.i1107
  br i1 %exitcond47.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph45.i.i, !llvm.loop !925

bb.lq:                                            ; preds = %bb.lo
  %i.ozx = load i64, ptr %0, align 1, !tbaa !60
  %i.ozy = insertelement <2 x i64> poison, i64 %i.ozx, i64 0
  %i.ozz = bitcast <2 x i64> %i.ozy to <8 x i16>
  %i.paa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ozz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pab = bitcast <8 x i16> %i.paa to <4 x float> ; 2 uses
  br label %.lr.ph.i75.i1109

.lr.ph.i75.i1109:                                 ; preds = %.lr.ph.i75.i1109, %bb.lq
  %.041.i.i1110 = phi i32 [ %i.pau, %.lr.ph.i75.i1109 ], [ 0, %bb.lq ]
  %.140.i.i1111 = phi ptr [ %i.pas, %.lr.ph.i75.i1109 ], [ %1, %bb.lq ] ; 2 uses
  %.12139.i.i = phi ptr [ %i.pat, %.lr.ph.i75.i1109 ], [ %2, %bb.lq ] ; 2 uses
  %i.pac = load i16, ptr %.140.i.i1111, align 2, !tbaa !57
  %i.pad = zext i16 %i.pac to i32
  %i.pae = shl nuw i32 %i.pad, 16
  %i.paf = insertelement <4 x i32> poison, i32 %i.pae, i64 0
  %i.pag = bitcast <4 x i32> %i.paf to <4 x float>
  %i.pah = shufflevector <4 x float> %i.pag, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pai = fdiv fast <4 x float> %i.pab, %i.pah
  %i.paj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pai)
  %i.pak = sitofp fast <4 x i32> %i.paj to <4 x float>
  %i.pal = fmul fast <4 x float> %i.pah, %i.pak
  %i.pam = fsub fast <4 x float> %i.pab, %i.pal
  %i.pan = bitcast <4 x float> %i.pam to <4 x i32>
  %i.pao = lshr <4 x i32> %i.pan, splat (i32 16)
  %i.pap = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.pao, <4 x i32> poison)
  %i.paq = bitcast <8 x i16> %i.pap to <2 x i64>
  %i.par = extractelement <2 x i64> %i.paq, i64 0
  store i64 %i.par, ptr %.12139.i.i, align 1, !tbaa !60
  %i.pas = getelementptr inbounds nuw i8, ptr %.140.i.i1111, i64 2
  %i.pat = getelementptr inbounds nuw i8, ptr %.12139.i.i, i64 8
  %i.pau = add nuw nsw i32 %.041.i.i1110, 1       ; 2 uses
  %exitcond.not.i76.i1112 = icmp eq i32 %i.pau, %.sroa.speculated87.i1107
  br i1 %exitcond.not.i76.i1112, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i75.i1109, !llvm.loop !926

bb.lr:                                            ; preds = %bb.a
  %.sroa.speculated87.i1163 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 7 uses
  %.sroa.speculated.i1164 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.pav = mul i32 %.sroa.speculated.i1164, %.sroa.speculated87.i1163 ; 38 uses
  %i.paw = icmp eq i32 %5, %6
  br i1 %i.paw, label %bb.ls, label %bb.mg

bb.ls:                                            ; preds = %bb.lr
  %i.pax = icmp eq i32 %3, %4
  br i1 %i.pax, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.pay = icmp sgt i32 %i.pav, 7
  br i1 %i.pay, label %.lr.ph.i.i1280, label %.preheader52.i.i1259

.preheader52.loopexit.i.i1285:                    ; preds = %.lr.ph.i.i1280
  %i.paz = and i32 %i.pav, 2147483640
  br label %.preheader52.i.i1259

.preheader52.i.i1259:                             ; preds = %.preheader52.loopexit.i.i1285, %bb.lt
  %.030.lcssa.i.i1260 = phi ptr [ %2, %bb.lt ], [ %i.pby, %.preheader52.loopexit.i.i1285 ] ; 2 uses
  %.027.lcssa.i.i1261 = phi ptr [ %1, %bb.lt ], [ %i.pbx, %.preheader52.loopexit.i.i1285 ] ; 2 uses
  %.024.lcssa.i.i1262 = phi i32 [ 0, %bb.lt ], [ %i.paz, %.preheader52.loopexit.i.i1285 ] ; 3 uses
  %.0.lcssa.i.i1263 = phi ptr [ %0, %bb.lt ], [ %i.pbw, %.preheader52.loopexit.i.i1285 ] ; 2 uses
  %i.pba = or disjoint i32 %.024.lcssa.i.i1262, 3
  %i.pbb = icmp slt i32 %i.pba, %i.pav
  br i1 %i.pbb, label %.lr.ph64.i.i1275, label %.preheader.i.i1264

.lr.ph.i.i1280:                                   ; preds = %bb.lt, %.lr.ph.i.i1280
  %.056.i.i1281 = phi ptr [ %i.pbw, %.lr.ph.i.i1280 ], [ %0, %bb.lt ] ; 2 uses
  %.02455.i.i1282 = phi i32 [ %i.pbz, %.lr.ph.i.i1280 ], [ 0, %bb.lt ]
  %.02754.i.i1283 = phi ptr [ %i.pbx, %.lr.ph.i.i1280 ], [ %1, %bb.lt ] ; 2 uses
  %.03053.i.i1284 = phi ptr [ %i.pby, %.lr.ph.i.i1280 ], [ %2, %bb.lt ] ; 2 uses
  %i.pbc = load <8 x i16>, ptr %.056.i.i1281, align 1, !tbaa !60 ; 2 uses
  %i.pbd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pbc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pbe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pbc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pbf = shufflevector <8 x i16> %i.pbd, <8 x i16> %i.pbe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pbg = bitcast <16 x i16> %i.pbf to <8 x float> ; 2 uses
  %i.pbh = load <8 x i16>, ptr %.02754.i.i1283, align 1, !tbaa !60 ; 2 uses
  %i.pbi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pbh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pbj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pbh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pbk = shufflevector <8 x i16> %i.pbi, <8 x i16> %i.pbj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pbl = bitcast <16 x i16> %i.pbk to <8 x float> ; 2 uses
  %i.pbm = fdiv fast <8 x float> %i.pbl, %i.pbg
  %i.pbn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.pbm)
  %i.pbo = fmul fast <8 x float> %i.pbn, %i.pbg
  %i.pbp = fsub fast <8 x float> %i.pbl, %i.pbo
  %i.pbq = bitcast <8 x float> %i.pbp to <8 x i32> ; 2 uses
  %i.pbr = shufflevector <8 x i32> %i.pbq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pbs = shufflevector <8 x i32> %i.pbq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.pbt = lshr <4 x i32> %i.pbr, splat (i32 16)
  %i.pbu = lshr <4 x i32> %i.pbs, splat (i32 16)
  %i.pbv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.pbt, <4 x i32> %i.pbu)
  store <8 x i16> %i.pbv, ptr %.03053.i.i1284, align 1, !tbaa !60
  %i.pbw = getelementptr inbounds nuw i8, ptr %.056.i.i1281, i64 16 ; 2 uses
  %i.pbx = getelementptr inbounds nuw i8, ptr %.02754.i.i1283, i64 16 ; 2 uses
  %i.pby = getelementptr inbounds nuw i8, ptr %.03053.i.i1284, i64 16 ; 2 uses
  %i.pbz = add nuw nsw i32 %.02455.i.i1282, 8     ; 2 uses
  %i.pca = or disjoint i32 %i.pbz, 7
  %i.pcb = icmp slt i32 %i.pca, %i.pav
  br i1 %i.pcb, label %.lr.ph.i.i1280, label %.preheader52.loopexit.i.i1285, !llvm.loop !927

.preheader.i.i1264:                               ; preds = %.lr.ph64.i.i1275, %.preheader52.i.i1259
  %.131.lcssa.i.i1265 = phi ptr [ %.030.lcssa.i.i1260, %.preheader52.i.i1259 ], [ %i.peq, %.lr.ph64.i.i1275 ] ; 7 uses
  %.128.lcssa.i.i1266 = phi ptr [ %.027.lcssa.i.i1261, %.preheader52.i.i1259 ], [ %i.pep, %.lr.ph64.i.i1275 ] ; 7 uses
  %.125.lcssa.i.i1267 = phi i32 [ %.024.lcssa.i.i1262, %.preheader52.i.i1259 ], [ %i.per, %.lr.ph64.i.i1275 ] ; 6 uses
  %.1.lcssa.i.i1268 = phi ptr [ %.0.lcssa.i.i1263, %.preheader52.i.i1259 ], [ %i.peo, %.lr.ph64.i.i1275 ] ; 7 uses
  %.128.lcssa.i.i12664759 = ptrtoaddr ptr %.128.lcssa.i.i1266 to i64
  %.131.lcssa.i.i12654760 = ptrtoaddr ptr %.1.lcssa.i.i1268 to i64
  %.1.lcssa.i.i12684761 = ptrtoaddr ptr %.131.lcssa.i.i1265 to i64 ; 2 uses
  %i.pcc = icmp slt i32 %.125.lcssa.i.i1267, %i.pav
  br i1 %i.pcc, label %iter.check4781, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check4781:                                   ; preds = %.preheader.i.i1264
  %i.pcd = xor i32 %.125.lcssa.i.i1267, -1
  %i.pce = add i32 %i.pav, %i.pcd                 ; 3 uses
  %i.pcf = zext i32 %i.pce to i64
  %i.pcg = add nuw nsw i64 %i.pcf, 1              ; 5 uses
  %min.iters.check4762 = icmp ult i32 %i.pce, 3
  br i1 %min.iters.check4762, label %.lr.ph73.i.i1269.preheader, label %vector.memcheck4763

vector.memcheck4763:                              ; preds = %iter.check4781
  %i.pch = sub i64 %.131.lcssa.i.i12654760, %.1.lcssa.i.i12684761
  %diff.check4764 = icmp ugt i64 %i.pch, -32
  %i.pci = sub i64 %.128.lcssa.i.i12664759, %.1.lcssa.i.i12684761
  %diff.check4765 = icmp ugt i64 %i.pci, -32
  %conflict.rdx4766 = or i1 %diff.check4764, %diff.check4765
  br i1 %conflict.rdx4766, label %.lr.ph73.i.i1269.preheader, label %vector.main.loop.iter.check4767

vector.main.loop.iter.check4767:                  ; preds = %vector.memcheck4763
  %min.iters.check4768 = icmp ult i32 %i.pce, 15
  br i1 %min.iters.check4768, label %vec.epilog.ph4785, label %vector.ph4769

vector.ph4769:                                    ; preds = %vector.main.loop.iter.check4767
  %i.pcj = and i64 %i.pcg, 12
  %n.vec4770 = and i64 %i.pcg, 8589934576         ; 5 uses
  %i.pck = shl nuw nsw i64 %n.vec4770, 1          ; 3 uses
  %i.pcl = getelementptr i8, ptr %.1.lcssa.i.i1268, i64 %i.pck
  %i.pcm = trunc i64 %n.vec4770 to i32
  %i.pcn = add i32 %.125.lcssa.i.i1267, %i.pcm
  %i.pco = getelementptr i8, ptr %.128.lcssa.i.i1266, i64 %i.pck
  %i.pcp = getelementptr i8, ptr %.131.lcssa.i.i1265, i64 %i.pck
  br label %vector.body4771

vector.body4771:                                  ; preds = %vector.ph4769, %vector.body4771
  %index4772 = phi i64 [ 0, %vector.ph4769 ], [ %index.next4778, %vector.body4771 ] ; 2 uses
  %i.pcq = shl i64 %index4772, 1                  ; 3 uses
  %next.gep4773 = getelementptr i8, ptr %.1.lcssa.i.i1268, i64 %i.pcq
  %next.gep4774 = getelementptr i8, ptr %.128.lcssa.i.i1266, i64 %i.pcq
  %next.gep4775 = getelementptr i8, ptr %.131.lcssa.i.i1265, i64 %i.pcq
  %wide.load4776 = load <16 x i16>, ptr %next.gep4773, align 2, !tbaa !57
  %i.pcr = zext <16 x i16> %wide.load4776 to <16 x i32>
  %i.pcs = shl nuw <16 x i32> %i.pcr, splat (i32 16)
  %i.pct = bitcast <16 x i32> %i.pcs to <16 x float>
  %wide.load4777 = load <16 x i16>, ptr %next.gep4774, align 2, !tbaa !57
  %i.pcu = zext <16 x i16> %wide.load4777 to <16 x i32>
  %i.pcv = shl nuw <16 x i32> %i.pcu, splat (i32 16)
  %i.pcw = bitcast <16 x i32> %i.pcv to <16 x float>
  %i.pcx = frem fast <16 x float> %i.pcw, %i.pct
  %i.pcy = bitcast <16 x float> %i.pcx to <16 x i32>
  %i.pcz = lshr <16 x i32> %i.pcy, splat (i32 16)
  %i.pda = trunc nuw <16 x i32> %i.pcz to <16 x i16>
  store <16 x i16> %i.pda, ptr %next.gep4775, align 2, !tbaa !57
  %index.next4778 = add nuw i64 %index4772, 16    ; 2 uses
  %i.pdb = icmp eq i64 %index.next4778, %n.vec4770
  br i1 %i.pdb, label %middle.block4779, label %vector.body4771, !llvm.loop !928

middle.block4779:                                 ; preds = %vector.body4771
  %cmp.n4780 = icmp eq i64 %i.pcg, %n.vec4770
  br i1 %cmp.n4780, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check4782

vec.epilog.iter.check4782:                        ; preds = %middle.block4779
  %min.epilog.iters.check4784 = icmp eq i64 %i.pcj, 0
  br i1 %min.epilog.iters.check4784, label %.lr.ph73.i.i1269.preheader, label %vec.epilog.ph4785, !prof !64

vec.epilog.ph4785:                                ; preds = %vector.main.loop.iter.check4767, %vec.epilog.iter.check4782
  %vec.epilog.resume.val4786 = phi i64 [ %n.vec4770, %vec.epilog.iter.check4782 ], [ 0, %vector.main.loop.iter.check4767 ]
  %n.vec4787 = and i64 %i.pcg, 8589934588         ; 4 uses
  %i.pdc = shl nuw nsw i64 %n.vec4787, 1          ; 3 uses
  %i.pdd = getelementptr i8, ptr %.1.lcssa.i.i1268, i64 %i.pdc
  %i.pde = trunc i64 %n.vec4787 to i32
  %i.pdf = add i32 %.125.lcssa.i.i1267, %i.pde
  %i.pdg = getelementptr i8, ptr %.128.lcssa.i.i1266, i64 %i.pdc
  %i.pdh = getelementptr i8, ptr %.131.lcssa.i.i1265, i64 %i.pdc
  br label %vec.epilog.vector.body4788

vec.epilog.vector.body4788:                       ; preds = %vec.epilog.vector.body4788, %vec.epilog.ph4785
  %index4789 = phi i64 [ %vec.epilog.resume.val4786, %vec.epilog.ph4785 ], [ %index.next4795, %vec.epilog.vector.body4788 ] ; 2 uses
  %i.pdi = shl i64 %index4789, 1                  ; 3 uses
  %next.gep4790 = getelementptr i8, ptr %.1.lcssa.i.i1268, i64 %i.pdi
  %next.gep4791 = getelementptr i8, ptr %.128.lcssa.i.i1266, i64 %i.pdi
  %next.gep4792 = getelementptr i8, ptr %.131.lcssa.i.i1265, i64 %i.pdi
  %wide.load4793 = load <4 x i16>, ptr %next.gep4790, align 2, !tbaa !57
  %i.pdj = zext <4 x i16> %wide.load4793 to <4 x i32>
  %i.pdk = shl nuw <4 x i32> %i.pdj, splat (i32 16)
  %i.pdl = bitcast <4 x i32> %i.pdk to <4 x float>
  %wide.load4794 = load <4 x i16>, ptr %next.gep4791, align 2, !tbaa !57
  %i.pdm = zext <4 x i16> %wide.load4794 to <4 x i32>
  %i.pdn = shl nuw <4 x i32> %i.pdm, splat (i32 16)
  %i.pdo = bitcast <4 x i32> %i.pdn to <4 x float>
  %i.pdp = frem fast <4 x float> %i.pdo, %i.pdl
  %i.pdq = bitcast <4 x float> %i.pdp to <4 x i32>
  %i.pdr = lshr <4 x i32> %i.pdq, splat (i32 16)
  %i.pds = trunc nuw <4 x i32> %i.pdr to <4 x i16>
  store <4 x i16> %i.pds, ptr %next.gep4792, align 2, !tbaa !57
  %index.next4795 = add nuw i64 %index4789, 4     ; 2 uses
  %i.pdt = icmp eq i64 %index.next4795, %n.vec4787
  br i1 %i.pdt, label %vec.epilog.middle.block4796, label %vec.epilog.vector.body4788, !llvm.loop !929

vec.epilog.middle.block4796:                      ; preds = %vec.epilog.vector.body4788
  %cmp.n4797 = icmp eq i64 %i.pcg, %n.vec4787
  br i1 %cmp.n4797, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph73.i.i1269.preheader

.lr.ph73.i.i1269.preheader:                       ; preds = %iter.check4781, %vector.memcheck4763, %vec.epilog.iter.check4782, %vec.epilog.middle.block4796
  %.272.i.i1270.ph = phi ptr [ %.1.lcssa.i.i1268, %iter.check4781 ], [ %.1.lcssa.i.i1268, %vector.memcheck4763 ], [ %i.pcl, %vec.epilog.iter.check4782 ], [ %i.pdd, %vec.epilog.middle.block4796 ]
  %.22671.i.i1271.ph = phi i32 [ %.125.lcssa.i.i1267, %iter.check4781 ], [ %.125.lcssa.i.i1267, %vector.memcheck4763 ], [ %i.pcn, %vec.epilog.iter.check4782 ], [ %i.pdf, %vec.epilog.middle.block4796 ]
  %.22970.i.i1272.ph = phi ptr [ %.128.lcssa.i.i1266, %iter.check4781 ], [ %.128.lcssa.i.i1266, %vector.memcheck4763 ], [ %i.pco, %vec.epilog.iter.check4782 ], [ %i.pdg, %vec.epilog.middle.block4796 ]
  %.23269.i.i1273.ph = phi ptr [ %.131.lcssa.i.i1265, %iter.check4781 ], [ %.131.lcssa.i.i1265, %vector.memcheck4763 ], [ %i.pcp, %vec.epilog.iter.check4782 ], [ %i.pdh, %vec.epilog.middle.block4796 ]
  br label %.lr.ph73.i.i1269

.lr.ph64.i.i1275:                                 ; preds = %.preheader52.i.i1259, %.lr.ph64.i.i1275
  %.163.i.i1276 = phi ptr [ %i.peo, %.lr.ph64.i.i1275 ], [ %.0.lcssa.i.i1263, %.preheader52.i.i1259 ] ; 2 uses
  %.12562.i.i1277 = phi i32 [ %i.per, %.lr.ph64.i.i1275 ], [ %.024.lcssa.i.i1262, %.preheader52.i.i1259 ]
  %.12861.i.i1278 = phi ptr [ %i.pep, %.lr.ph64.i.i1275 ], [ %.027.lcssa.i.i1261, %.preheader52.i.i1259 ] ; 2 uses
  %.13160.i.i1279 = phi ptr [ %i.peq, %.lr.ph64.i.i1275 ], [ %.030.lcssa.i.i1260, %.preheader52.i.i1259 ] ; 2 uses
  %i.pdu = load i64, ptr %.163.i.i1276, align 1, !tbaa !60
  %i.pdv = insertelement <2 x i64> poison, i64 %i.pdu, i64 0
  %i.pdw = bitcast <2 x i64> %i.pdv to <8 x i16>
  %i.pdx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pdw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pdy = bitcast <8 x i16> %i.pdx to <4 x float> ; 2 uses
  %i.pdz = load i64, ptr %.12861.i.i1278, align 1, !tbaa !60
  %i.pea = insertelement <2 x i64> poison, i64 %i.pdz, i64 0
  %i.peb = bitcast <2 x i64> %i.pea to <8 x i16>
  %i.pec = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.peb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ped = bitcast <8 x i16> %i.pec to <4 x float> ; 2 uses
  %i.pee = fdiv fast <4 x float> %i.ped, %i.pdy
  %i.pef = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pee)
  %i.peg = sitofp fast <4 x i32> %i.pef to <4 x float>
  %i.peh = fmul fast <4 x float> %i.pdy, %i.peg
  %i.pei = fsub fast <4 x float> %i.ped, %i.peh
  %i.pej = bitcast <4 x float> %i.pei to <4 x i32>
  %i.pek = lshr <4 x i32> %i.pej, splat (i32 16)
  %i.pel = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.pek, <4 x i32> poison)
  %i.pem = bitcast <8 x i16> %i.pel to <2 x i64>
  %i.pen = extractelement <2 x i64> %i.pem, i64 0
  store i64 %i.pen, ptr %.13160.i.i1279, align 1, !tbaa !60
  %i.peo = getelementptr inbounds nuw i8, ptr %.163.i.i1276, i64 8 ; 2 uses
  %i.pep = getelementptr inbounds nuw i8, ptr %.12861.i.i1278, i64 8 ; 2 uses
  %i.peq = getelementptr inbounds nuw i8, ptr %.13160.i.i1279, i64 8 ; 2 uses
  %i.per = add nuw nsw i32 %.12562.i.i1277, 4     ; 3 uses
  %i.pes = or disjoint i32 %i.per, 3
  %i.pet = icmp slt i32 %i.pes, %i.pav
  br i1 %i.pet, label %.lr.ph64.i.i1275, label %.preheader.i.i1264, !llvm.loop !930

.lr.ph73.i.i1269:                                 ; preds = %.lr.ph73.i.i1269.preheader, %.lr.ph73.i.i1269
  %.272.i.i1270 = phi ptr [ %i.peu, %.lr.ph73.i.i1269 ], [ %.272.i.i1270.ph, %.lr.ph73.i.i1269.preheader ] ; 2 uses
  %.22671.i.i1271 = phi i32 [ %i.pfj, %.lr.ph73.i.i1269 ], [ %.22671.i.i1271.ph, %.lr.ph73.i.i1269.preheader ]
  %.22970.i.i1272 = phi ptr [ %i.pez, %.lr.ph73.i.i1269 ], [ %.22970.i.i1272.ph, %.lr.ph73.i.i1269.preheader ] ; 2 uses
  %.23269.i.i1273 = phi ptr [ %i.pfi, %.lr.ph73.i.i1269 ], [ %.23269.i.i1273.ph, %.lr.ph73.i.i1269.preheader ] ; 2 uses
  %i.peu = getelementptr inbounds nuw i8, ptr %.272.i.i1270, i64 2
  %i.pev = load i16, ptr %.272.i.i1270, align 2, !tbaa !57
  %i.pew = zext i16 %i.pev to i32
  %i.pex = shl nuw i32 %i.pew, 16
  %i.pey = bitcast i32 %i.pex to float
  %i.pez = getelementptr inbounds nuw i8, ptr %.22970.i.i1272, i64 2
  %i.pfa = load i16, ptr %.22970.i.i1272, align 2, !tbaa !57
  %i.pfb = zext i16 %i.pfa to i32
  %i.pfc = shl nuw i32 %i.pfb, 16
  %i.pfd = bitcast i32 %i.pfc to float
  %i.pfe = frem fast float %i.pfd, %i.pey
  %i.pff = bitcast float %i.pfe to i32
  %i.pfg = lshr i32 %i.pff, 16
  %i.pfh = trunc nuw i32 %i.pfg to i16
  %i.pfi = getelementptr inbounds nuw i8, ptr %.23269.i.i1273, i64 2
  store i16 %i.pfh, ptr %.23269.i.i1273, align 2, !tbaa !57
  %i.pfj = add nuw nsw i32 %.22671.i.i1271, 1     ; 2 uses
  %exitcond.not.i.i1274 = icmp eq i32 %i.pfj, %i.pav
  br i1 %exitcond.not.i.i1274, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph73.i.i1269, !llvm.loop !931

bb.lu:                                            ; preds = %bb.ls
  %i.pfk = icmp eq i32 %4, 1
  br i1 %i.pfk, label %bb.lv, label %bb.ma

bb.lv:                                            ; preds = %bb.lu
  %i.pfl = load i16, ptr %1, align 2, !tbaa !57
  %i.pfm = zext i16 %i.pfl to i32
  %i.pfn = shl nuw i32 %i.pfm, 16
  %i.pfo = bitcast i32 %i.pfn to float            ; 6 uses
  %i.pfp = icmp eq i32 %.sroa.speculated.i1164, 4
  br i1 %i.pfp, label %.thread.i.i1258, label %bb.lw

.thread.i.i1258:                                  ; preds = %bb.lv
  %i.pfq = load i64, ptr %1, align 2, !tbaa !60
  %i.pfr = insertelement <2 x i64> poison, i64 %i.pfq, i64 0
  %i.pfs = bitcast <2 x i64> %i.pfr to <8 x i16>
  %i.pft = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pfs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pfu = bitcast <8 x i16> %i.pft to <4 x float>
  br label %bb.ly

bb.lw:                                            ; preds = %bb.lv
  %i.pfv = insertelement <4 x float> poison, float %i.pfo, i64 0
  %i.pfw = shufflevector <4 x float> %i.pfv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pfx = icmp eq i32 %.sroa.speculated.i1164, 8
  br i1 %i.pfx, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  %i.pfy = load <8 x i16>, ptr %1, align 2, !tbaa !60 ; 2 uses
  %i.pfz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pfy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pga = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pfy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pgb = shufflevector <8 x i16> %i.pfz, <8 x i16> %i.pga, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pgc = bitcast <16 x i16> %i.pgb to <8 x float>
  br label %bb.lz

bb.ly:                                            ; preds = %bb.lw, %.thread.i.i1258
  %i.pgd = phi <4 x float> [ %i.pfu, %.thread.i.i1258 ], [ %i.pfw, %bb.lw ] ; 2 uses
  %i.pge = shufflevector <4 x float> %i.pgd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx
  %i.pgf = phi <4 x float> [ %i.pfw, %bb.lx ], [ %i.pgd, %bb.ly ] ; 2 uses
  %i.pgg = phi fast <8 x float> [ %i.pgc, %bb.lx ], [ %i.pge, %bb.ly ] ; 2 uses
  %i.pgh = icmp sgt i32 %i.pav, 7
  br i1 %i.pgh, label %.lr.ph.i39.i1253, label %.preheader52.i34.i1236

.preheader52.loopexit.i40.i1257:                  ; preds = %.lr.ph.i39.i1253
end_hunk_19
begin_hunk_20_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.rkg = or disjoint <8 x i32> %i.rkf, splat (i32 1056964608)
  %i.rkh = bitcast <8 x i32> %i.rkg to <8 x float> ; 3 uses
  %i.rki = lshr <8 x i32> %i.rkd, splat (i32 23)
  %i.rkj = add nsw <8 x i32> %i.rki, splat (i32 -127)
  %i.rkk = sitofp fast <8 x i32> %i.rkj to <8 x float> ; 2 uses
  %i.rkl = fadd fast <8 x float> %i.rkk, splat (float 1.000000e+00)
  %i.rkm = fcmp fast olt <8 x float> %i.rkh, splat (float f0x3F3504F3) ; 2 uses
  %i.rkn = select <8 x i1> %i.rkm, <8 x float> %i.rkh, <8 x float> zeroinitializer
  %i.rko = fadd fast <8 x float> %i.rkh, splat (float -1.000000e+00)
  %i.rkp = select fast <8 x i1> %i.rkm, <8 x float> %i.rkk, <8 x float> %i.rkl ; 2 uses
  %i.rkq = fadd fast <8 x float> %i.rko, %i.rkn   ; 12 uses
  %i.rkr = fmul fast <8 x float> %i.rkq, %i.rkq   ; 2 uses
  %i.rks = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rkq, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.rkt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rks, <8 x float> nofpclass(nan inf) %i.rkq, <8 x float> splat (float f0x3DEF251A))
  %i.rku = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rkt, <8 x float> nofpclass(nan inf) %i.rkq, <8 x float> splat (float f0xBDFE5D4F))
  %i.rkv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rku, <8 x float> nofpclass(nan inf) %i.rkq, <8 x float> splat (float f0x3E11E9BF))
  %i.rkw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rkv, <8 x float> nofpclass(nan inf) %i.rkq, <8 x float> splat (float f0xBE2AAE50))
  %i.rkx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rkw, <8 x float> nofpclass(nan inf) %i.rkq, <8 x float> splat (float f0x3E4CCEAC))
  %i.rky = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rkx, <8 x float> nofpclass(nan inf) %i.rkq, <8 x float> splat (float f0xBE7FFFFC))
  %i.rkz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rky, <8 x float> nofpclass(nan inf) %i.rkq, <8 x float> splat (float f0x3EAAAAAA))
  %i.rla = fmul fast <8 x float> %i.rkr, %i.rkq
  %i.rlb = fmul fast <8 x float> %i.rla, %i.rkz
  %i.rlc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rkp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.rlb)
  %i.rld = fneg fast <8 x float> %i.rkr
  %i.rle = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.rld, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.rlc)
  %i.rlf = fadd fast <8 x float> %i.rle, %i.rkq
  %i.rlg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rkp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.rlf)
  %i.rlh = select <8 x i1> %i.rkb, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.rlg
  %i.rli = fadd fast <8 x float> %i.rlh, %i.rja
  %i.rlj = bitcast <8 x float> %i.rli to <8 x i32> ; 2 uses
  %i.rlk = shufflevector <8 x i32> %i.rlj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rll = shufflevector <8 x i32> %i.rlj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.rlm = lshr <4 x i32> %i.rlk, splat (i32 16)
  %i.rln = lshr <4 x i32> %i.rll, splat (i32 16)
  %i.rlo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.rlm, <4 x i32> %i.rln)
  store <8 x i16> %i.rlo, ptr %.020155.i.i, align 1, !tbaa !60
  %i.rlp = getelementptr inbounds nuw i8, ptr %.018157.i.i, i64 2
  %i.rlq = getelementptr inbounds nuw i8, ptr %.020155.i.i, i64 16
  %i.rlr = add nuw nsw i32 %.019156.i.i, 1        ; 2 uses
  %exitcond160.not.i.i = icmp eq i32 %i.rlr, %.sroa.speculated140.i
  br i1 %exitcond160.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph158.i.i, !llvm.loop !965

bb.nm:                                            ; preds = %bb.nk
  %i.rls = load i64, ptr %0, align 1, !tbaa !60
  %i.rlt = insertelement <2 x i64> poison, i64 %i.rls, i64 0
  %i.rlu = bitcast <2 x i64> %i.rlt to <8 x i16>
  %i.rlv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rlu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rlw = bitcast <8 x i16> %i.rlv to <4 x float> ; 2 uses
  br label %.lr.ph.i118.i

.lr.ph.i118.i:                                    ; preds = %.lr.ph.i118.i, %bb.nm
  %.0154.i.i1287 = phi i32 [ %i.rou, %.lr.ph.i118.i ], [ 0, %bb.nm ]
  %.1153.i.i1288 = phi ptr [ %i.ros, %.lr.ph.i118.i ], [ %1, %bb.nm ] ; 2 uses
  %.121152.i.i = phi ptr [ %i.rot, %.lr.ph.i118.i ], [ %2, %bb.nm ] ; 2 uses
  %i.rlx = load i16, ptr %.1153.i.i1288, align 2, !tbaa !57
  %i.rly = zext i16 %i.rlx to i32
  %i.rlz = shl nuw i32 %i.rly, 16
  %i.rma = insertelement <4 x i32> poison, i32 %i.rlz, i64 0
  %i.rmb = bitcast <4 x i32> %i.rma to <4 x float>
  %i.rmc = shufflevector <4 x float> %i.rmb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rmd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rlw, <4 x float> nofpclass(nan inf) %i.rmc) ; 2 uses
  %i.rme = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rlw, <4 x float> nofpclass(nan inf) %i.rmc)
  %i.rmf = fsub fast <4 x float> %i.rme, %i.rmd
  %i.rmg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rmf, <4 x float> splat (float f0x42B0C0A5))
  %i.rmh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rmg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rmi = fmul fast <4 x float> %i.rmh, splat (float f0x3FB8AA3B)
  %i.rmj = fadd fast <4 x float> %i.rmi, splat (float 5.000000e-01) ; 2 uses
  %i.rmk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rmj)
  %i.rml = sitofp fast <4 x i32> %i.rmk to <4 x float> ; 2 uses
  %i.rmm = fcmp fast olt <4 x float> %i.rmj, %i.rml
  %i.rmn = select <4 x i1> %i.rmm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rmo = fsub fast <4 x float> %i.rml, %i.rmn   ; 2 uses
  %i.rmp = fneg fast <4 x float> %i.rmo           ; 2 uses
  %i.rmq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.rmp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.rmh)
  %i.rmr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.rmp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.rmq) ; 8 uses
  %i.rms = fmul fast <4 x float> %i.rmr, %i.rmr
  %i.rmt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rmr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.rmu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rmt, <4 x float> nofpclass(nan inf) %i.rmr, <4 x float> splat (float f0x3C088908))
  %i.rmv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rmu, <4 x float> nofpclass(nan inf) %i.rmr, <4 x float> splat (float f0x3D2AA9C1))
  %i.rmw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rmv, <4 x float> nofpclass(nan inf) %i.rmr, <4 x float> splat (float f0x3E2AAAAA))
  %i.rmx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rmw, <4 x float> nofpclass(nan inf) %i.rmr, <4 x float> splat (float 5.000000e-01))
  %i.rmy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rmx, <4 x float> nofpclass(nan inf) %i.rms, <4 x float> nofpclass(nan inf) %i.rmr)
  %i.rmz = fadd fast <4 x float> %i.rmy, splat (float 1.000000e+00)
  %i.rna = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rmo)
  %i.rnb = shl <4 x i32> %i.rna, splat (i32 23)
  %i.rnc = add <4 x i32> %i.rnb, splat (i32 1065353216)
  %i.rnd = bitcast <4 x i32> %i.rnc to <4 x float>
  %i.rne = fmul fast <4 x float> %i.rmz, %i.rnd
  %i.rnf = fadd fast <4 x float> %i.rne, splat (float 1.000000e+00) ; 2 uses
  %i.rng = fcmp fast ole <4 x float> %i.rnf, zeroinitializer
  %i.rnh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rnf, <4 x float> splat (float f0x00800000))
  %i.rni = bitcast <4 x float> %i.rnh to <4 x i32> ; 2 uses
  %i.rnj = lshr <4 x i32> %i.rni, splat (i32 23)
  %i.rnk = and <4 x i32> %i.rni, splat (i32 -2139095041)
  %i.rnl = or disjoint <4 x i32> %i.rnk, splat (i32 1056964608)
  %i.rnm = bitcast <4 x i32> %i.rnl to <4 x float> ; 3 uses
  %i.rnn = add nsw <4 x i32> %i.rnj, splat (i32 -127)
  %i.rno = sitofp fast <4 x i32> %i.rnn to <4 x float> ; 2 uses
  %i.rnp = fadd fast <4 x float> %i.rno, splat (float 1.000000e+00)
  %i.rnq = fcmp fast olt <4 x float> %i.rnm, splat (float f0x3F3504F3) ; 2 uses
  %i.rnr = select <4 x i1> %i.rnq, <4 x float> %i.rnm, <4 x float> zeroinitializer
  %i.rns = fadd fast <4 x float> %i.rnm, splat (float -1.000000e+00)
  %i.rnt = select fast <4 x i1> %i.rnq, <4 x float> %i.rno, <4 x float> %i.rnp ; 2 uses
  %i.rnu = fadd fast <4 x float> %i.rns, %i.rnr   ; 12 uses
  %i.rnv = fmul fast <4 x float> %i.rnu, %i.rnu   ; 2 uses
  %i.rnw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rnu, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.rnx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rnw, <4 x float> nofpclass(nan inf) %i.rnu, <4 x float> splat (float f0x3DEF251A))
  %i.rny = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rnx, <4 x float> nofpclass(nan inf) %i.rnu, <4 x float> splat (float f0xBDFE5D4F))
  %i.rnz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rny, <4 x float> nofpclass(nan inf) %i.rnu, <4 x float> splat (float f0x3E11E9BF))
  %i.roa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rnz, <4 x float> nofpclass(nan inf) %i.rnu, <4 x float> splat (float f0xBE2AAE50))
  %i.rob = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.roa, <4 x float> nofpclass(nan inf) %i.rnu, <4 x float> splat (float f0x3E4CCEAC))
  %i.roc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rob, <4 x float> nofpclass(nan inf) %i.rnu, <4 x float> splat (float f0xBE7FFFFC))
  %i.rod = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.roc, <4 x float> nofpclass(nan inf) %i.rnu, <4 x float> splat (float f0x3EAAAAAA))
  %i.roe = fmul fast <4 x float> %i.rnv, %i.rnu
  %i.rof = fmul fast <4 x float> %i.roe, %i.rod
  %i.rog = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rnt, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.rof)
  %i.roh = fneg fast <4 x float> %i.rnv
  %i.roi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.roh, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.rog)
  %i.roj = fadd fast <4 x float> %i.roi, %i.rnu
  %i.rok = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rnt, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.roj)
  %i.rol = select <4 x i1> %i.rng, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.rok
  %i.rom = fadd fast <4 x float> %i.rol, %i.rmd
  %i.ron = bitcast <4 x float> %i.rom to <4 x i32>
  %i.roo = lshr <4 x i32> %i.ron, splat (i32 16)
  %i.rop = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.roo, <4 x i32> poison)
  %i.roq = bitcast <8 x i16> %i.rop to <2 x i64>
  %i.ror = extractelement <2 x i64> %i.roq, i64 0
  store i64 %i.ror, ptr %.121152.i.i, align 1, !tbaa !60
  %i.ros = getelementptr inbounds nuw i8, ptr %.1153.i.i1288, i64 2
  %i.rot = getelementptr inbounds nuw i8, ptr %.121152.i.i, i64 8
  %i.rou = add nuw nsw i32 %.0154.i.i1287, 1      ; 2 uses
  %exitcond.not.i119.i = icmp eq i32 %i.rou, %.sroa.speculated140.i
  br i1 %exitcond.not.i119.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i118.i, !llvm.loop !966

bb.nn:                                            ; preds = %bb.a
  %.sroa.speculated86.i1323 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i1324 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.rov = mul i32 %.sroa.speculated.i1324, %.sroa.speculated86.i1323 ; 40 uses
  %i.row = icmp eq i32 %5, %6
  br i1 %i.row, label %bb.no, label %bb.oc

bb.no:                                            ; preds = %bb.nn
  %i.rox = icmp eq i32 %3, %4
  br i1 %i.rox, label %bb.np, label %bb.nq

bb.np:                                            ; preds = %bb.no
  %i.roy = icmp sgt i32 %i.rov, 7
  br i1 %i.roy, label %.lr.ph.i.i1380, label %.preheader47.i.i

.preheader47.loopexit.i.i:                        ; preds = %.lr.ph.i.i1380
  %i.roz = and i32 %i.rov, 2147483640
  br label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %.preheader47.loopexit.i.i, %bb.np
  %.030.lcssa.i.i1368 = phi ptr [ %2, %bb.np ], [ %i.rpw, %.preheader47.loopexit.i.i ] ; 2 uses
  %.027.lcssa.i.i1369 = phi ptr [ %1, %bb.np ], [ %i.rpv, %.preheader47.loopexit.i.i ] ; 2 uses
  %.024.lcssa.i.i1370 = phi i32 [ 0, %bb.np ], [ %i.roz, %.preheader47.loopexit.i.i ] ; 3 uses
  %.0.lcssa.i.i1371 = phi ptr [ %0, %bb.np ], [ %i.rpu, %.preheader47.loopexit.i.i ] ; 2 uses
  %i.rpa = or disjoint i32 %.024.lcssa.i.i1370, 3
  %i.rpb = icmp slt i32 %i.rpa, %i.rov
  br i1 %i.rpb, label %.lr.ph59.i.i, label %.preheader.i.i1372

.lr.ph.i.i1380:                                   ; preds = %bb.np, %.lr.ph.i.i1380
  %.051.i.i = phi ptr [ %i.rpu, %.lr.ph.i.i1380 ], [ %0, %bb.np ] ; 2 uses
  %.02450.i.i = phi i32 [ %i.rpx, %.lr.ph.i.i1380 ], [ 0, %bb.np ]
  %.02749.i.i = phi ptr [ %i.rpv, %.lr.ph.i.i1380 ], [ %1, %bb.np ] ; 2 uses
  %.03048.i.i = phi ptr [ %i.rpw, %.lr.ph.i.i1380 ], [ %2, %bb.np ] ; 2 uses
  %i.rpc = load <8 x i16>, ptr %.051.i.i, align 1, !tbaa !60 ; 2 uses
  %i.rpd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rpc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rpe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rpc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rpf = shufflevector <8 x i16> %i.rpd, <8 x i16> %i.rpe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rpg = bitcast <16 x i16> %i.rpf to <8 x float>
  %i.rph = load <8 x i16>, ptr %.02749.i.i, align 1, !tbaa !60 ; 2 uses
  %i.rpi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rph, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rpj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rph, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rpk = shufflevector <8 x i16> %i.rpi, <8 x i16> %i.rpj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rpl = bitcast <16 x i16> %i.rpk to <8 x float>
  %i.rpm = fdiv fast <8 x float> %i.rpg, %i.rpl
  %i.rpn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.rpm, i32 1)
  %i.rpo = bitcast <8 x float> %i.rpn to <8 x i32> ; 2 uses
  %i.rpp = shufflevector <8 x i32> %i.rpo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rpq = shufflevector <8 x i32> %i.rpo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.rpr = lshr <4 x i32> %i.rpp, splat (i32 16)
  %i.rps = lshr <4 x i32> %i.rpq, splat (i32 16)
  %i.rpt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.rpr, <4 x i32> %i.rps)
  store <8 x i16> %i.rpt, ptr %.03048.i.i, align 1, !tbaa !60
  %i.rpu = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 16 ; 2 uses
  %i.rpv = getelementptr inbounds nuw i8, ptr %.02749.i.i, i64 16 ; 2 uses
  %i.rpw = getelementptr inbounds nuw i8, ptr %.03048.i.i, i64 16 ; 2 uses
  %i.rpx = add nuw nsw i32 %.02450.i.i, 8         ; 2 uses
  %i.rpy = or disjoint i32 %i.rpx, 7
  %i.rpz = icmp slt i32 %i.rpy, %i.rov
  br i1 %i.rpz, label %.lr.ph.i.i1380, label %.preheader47.loopexit.i.i, !llvm.loop !967

.preheader.i.i1372:                               ; preds = %.lr.ph59.i.i, %.preheader47.i.i
  %.131.lcssa.i.i1373 = phi ptr [ %.030.lcssa.i.i1368, %.preheader47.i.i ], [ %i.rtg, %.lr.ph59.i.i ] ; 7 uses
  %.128.lcssa.i.i1374 = phi ptr [ %.027.lcssa.i.i1369, %.preheader47.i.i ], [ %i.rtf, %.lr.ph59.i.i ] ; 7 uses
  %.125.lcssa.i.i1375 = phi i32 [ %.024.lcssa.i.i1370, %.preheader47.i.i ], [ %i.rth, %.lr.ph59.i.i ] ; 6 uses
  %.1.lcssa.i.i1376 = phi ptr [ %.0.lcssa.i.i1371, %.preheader47.i.i ], [ %i.rte, %.lr.ph59.i.i ] ; 7 uses
  %.128.lcssa.i.i13744580 = ptrtoaddr ptr %.128.lcssa.i.i1374 to i64
  %.131.lcssa.i.i13734581 = ptrtoaddr ptr %.1.lcssa.i.i1376 to i64
  %.1.lcssa.i.i13764582 = ptrtoaddr ptr %.131.lcssa.i.i1373 to i64 ; 2 uses
  %i.rqa = icmp slt i32 %.125.lcssa.i.i1375, %i.rov
  br i1 %i.rqa, label %iter.check4602, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check4602:                                   ; preds = %.preheader.i.i1372
  %i.rqb = xor i32 %.125.lcssa.i.i1375, -1
  %i.rqc = add i32 %i.rov, %i.rqb                 ; 3 uses
  %i.rqd = zext i32 %i.rqc to i64
  %i.rqe = add nuw nsw i64 %i.rqd, 1              ; 5 uses
  %min.iters.check4583 = icmp ult i32 %i.rqc, 3
  br i1 %min.iters.check4583, label %.lr.ph68.i.i1377.preheader, label %vector.memcheck4584

vector.memcheck4584:                              ; preds = %iter.check4602
  %i.rqf = sub i64 %.131.lcssa.i.i13734581, %.1.lcssa.i.i13764582
  %diff.check4585 = icmp ugt i64 %i.rqf, -32
  %i.rqg = sub i64 %.128.lcssa.i.i13744580, %.1.lcssa.i.i13764582
  %diff.check4586 = icmp ugt i64 %i.rqg, -32
  %conflict.rdx4587 = or i1 %diff.check4585, %diff.check4586
  br i1 %conflict.rdx4587, label %.lr.ph68.i.i1377.preheader, label %vector.main.loop.iter.check4588

vector.main.loop.iter.check4588:                  ; preds = %vector.memcheck4584
  %min.iters.check4589 = icmp ult i32 %i.rqc, 15
  br i1 %min.iters.check4589, label %vec.epilog.ph4606, label %vector.ph4590

vector.ph4590:                                    ; preds = %vector.main.loop.iter.check4588
  %i.rqh = and i64 %i.rqe, 12
  %n.vec4591 = and i64 %i.rqe, 8589934576         ; 5 uses
  %i.rqi = shl nuw nsw i64 %n.vec4591, 1          ; 3 uses
  %i.rqj = getelementptr i8, ptr %.1.lcssa.i.i1376, i64 %i.rqi
  %i.rqk = trunc i64 %n.vec4591 to i32
  %i.rql = add i32 %.125.lcssa.i.i1375, %i.rqk
  %i.rqm = getelementptr i8, ptr %.128.lcssa.i.i1374, i64 %i.rqi
  %i.rqn = getelementptr i8, ptr %.131.lcssa.i.i1373, i64 %i.rqi
  br label %vector.body4592

vector.body4592:                                  ; preds = %vector.ph4590, %vector.body4592
  %index4593 = phi i64 [ 0, %vector.ph4590 ], [ %index.next4599, %vector.body4592 ] ; 2 uses
  %i.rqo = shl i64 %index4593, 1                  ; 3 uses
  %next.gep4594 = getelementptr i8, ptr %.1.lcssa.i.i1376, i64 %i.rqo
  %next.gep4595 = getelementptr i8, ptr %.128.lcssa.i.i1374, i64 %i.rqo
  %next.gep4596 = getelementptr i8, ptr %.131.lcssa.i.i1373, i64 %i.rqo
  %wide.load4597 = load <16 x i16>, ptr %next.gep4594, align 2, !tbaa !57
  %i.rqp = zext <16 x i16> %wide.load4597 to <16 x i32>
  %i.rqq = shl nuw <16 x i32> %i.rqp, splat (i32 16)
  %i.rqr = bitcast <16 x i32> %i.rqq to <16 x float>
  %wide.load4598 = load <16 x i16>, ptr %next.gep4595, align 2, !tbaa !57
  %i.rqs = zext <16 x i16> %wide.load4598 to <16 x i32>
  %i.rqt = shl nuw <16 x i32> %i.rqs, splat (i32 16)
  %i.rqu = bitcast <16 x i32> %i.rqt to <16 x float>
  %i.rqv = fdiv fast <16 x float> %i.rqr, %i.rqu
  %i.rqw = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.rqv)
  %i.rqx = bitcast <16 x float> %i.rqw to <16 x i32>
  %i.rqy = lshr <16 x i32> %i.rqx, splat (i32 16)
  %i.rqz = trunc nuw <16 x i32> %i.rqy to <16 x i16>
  store <16 x i16> %i.rqz, ptr %next.gep4596, align 2, !tbaa !57
  %index.next4599 = add nuw i64 %index4593, 16    ; 2 uses
  %i.rra = icmp eq i64 %index.next4599, %n.vec4591
  br i1 %i.rra, label %middle.block4600, label %vector.body4592, !llvm.loop !968

middle.block4600:                                 ; preds = %vector.body4592
  %cmp.n4601 = icmp eq i64 %i.rqe, %n.vec4591
  br i1 %cmp.n4601, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check4603

vec.epilog.iter.check4603:                        ; preds = %middle.block4600
  %min.epilog.iters.check4605 = icmp eq i64 %i.rqh, 0
  br i1 %min.epilog.iters.check4605, label %.lr.ph68.i.i1377.preheader, label %vec.epilog.ph4606, !prof !64

vec.epilog.ph4606:                                ; preds = %vector.main.loop.iter.check4588, %vec.epilog.iter.check4603
  %vec.epilog.resume.val4607 = phi i64 [ %n.vec4591, %vec.epilog.iter.check4603 ], [ 0, %vector.main.loop.iter.check4588 ]
  %n.vec4608 = and i64 %i.rqe, 8589934588         ; 4 uses
  %i.rrb = shl nuw nsw i64 %n.vec4608, 1          ; 3 uses
  %i.rrc = getelementptr i8, ptr %.1.lcssa.i.i1376, i64 %i.rrb
  %i.rrd = trunc i64 %n.vec4608 to i32
  %i.rre = add i32 %.125.lcssa.i.i1375, %i.rrd
  %i.rrf = getelementptr i8, ptr %.128.lcssa.i.i1374, i64 %i.rrb
  %i.rrg = getelementptr i8, ptr %.131.lcssa.i.i1373, i64 %i.rrb
  br label %vec.epilog.vector.body4609

vec.epilog.vector.body4609:                       ; preds = %vec.epilog.vector.body4609, %vec.epilog.ph4606
  %index4610 = phi i64 [ %vec.epilog.resume.val4607, %vec.epilog.ph4606 ], [ %index.next4616, %vec.epilog.vector.body4609 ] ; 2 uses
  %i.rrh = shl i64 %index4610, 1                  ; 3 uses
  %next.gep4611 = getelementptr i8, ptr %.1.lcssa.i.i1376, i64 %i.rrh
  %next.gep4612 = getelementptr i8, ptr %.128.lcssa.i.i1374, i64 %i.rrh
  %next.gep4613 = getelementptr i8, ptr %.131.lcssa.i.i1373, i64 %i.rrh
  %wide.load4614 = load <4 x i16>, ptr %next.gep4611, align 2, !tbaa !57
  %i.rri = zext <4 x i16> %wide.load4614 to <4 x i32>
  %i.rrj = shl nuw <4 x i32> %i.rri, splat (i32 16)
  %i.rrk = bitcast <4 x i32> %i.rrj to <4 x float>
  %wide.load4615 = load <4 x i16>, ptr %next.gep4612, align 2, !tbaa !57
  %i.rrl = zext <4 x i16> %wide.load4615 to <4 x i32>
  %i.rrm = shl nuw <4 x i32> %i.rrl, splat (i32 16)
  %i.rrn = bitcast <4 x i32> %i.rrm to <4 x float>
  %i.rro = fdiv fast <4 x float> %i.rrk, %i.rrn
  %i.rrp = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.rro)
  %i.rrq = bitcast <4 x float> %i.rrp to <4 x i32>
  %i.rrr = lshr <4 x i32> %i.rrq, splat (i32 16)
  %i.rrs = trunc nuw <4 x i32> %i.rrr to <4 x i16>
  store <4 x i16> %i.rrs, ptr %next.gep4613, align 2, !tbaa !57
  %index.next4616 = add nuw i64 %index4610, 4     ; 2 uses
  %i.rrt = icmp eq i64 %index.next4616, %n.vec4608
  br i1 %i.rrt, label %vec.epilog.middle.block4617, label %vec.epilog.vector.body4609, !llvm.loop !969

vec.epilog.middle.block4617:                      ; preds = %vec.epilog.vector.body4609
  %cmp.n4618 = icmp eq i64 %i.rqe, %n.vec4608
  br i1 %cmp.n4618, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i1377.preheader

.lr.ph68.i.i1377.preheader:                       ; preds = %iter.check4602, %vector.memcheck4584, %vec.epilog.iter.check4603, %vec.epilog.middle.block4617
  %.267.i.i1378.ph = phi ptr [ %.1.lcssa.i.i1376, %iter.check4602 ], [ %.1.lcssa.i.i1376, %vector.memcheck4584 ], [ %i.rqj, %vec.epilog.iter.check4603 ], [ %i.rrc, %vec.epilog.middle.block4617 ] ; 3 uses
  %.22666.i.i.ph = phi i32 [ %.125.lcssa.i.i1375, %iter.check4602 ], [ %.125.lcssa.i.i1375, %vector.memcheck4584 ], [ %i.rql, %vec.epilog.iter.check4603 ], [ %i.rre, %vec.epilog.middle.block4617 ] ; 4 uses
  %.22965.i.i.ph = phi ptr [ %.128.lcssa.i.i1374, %iter.check4602 ], [ %.128.lcssa.i.i1374, %vector.memcheck4584 ], [ %i.rqm, %vec.epilog.iter.check4603 ], [ %i.rrf, %vec.epilog.middle.block4617 ] ; 3 uses
  %.23264.i.i.ph = phi ptr [ %.131.lcssa.i.i1373, %iter.check4602 ], [ %.131.lcssa.i.i1373, %vector.memcheck4584 ], [ %i.rqn, %vec.epilog.iter.check4603 ], [ %i.rrg, %vec.epilog.middle.block4617 ] ; 3 uses
  %i.rru = sub i32 %i.rov, %.22666.i.i.ph
  %.neg8004 = add i32 %.22666.i.i.ph, 1
  %xtraiter7794 = and i32 %i.rru, 1
  %lcmp.mod7795.not = icmp eq i32 %xtraiter7794, 0
  br i1 %lcmp.mod7795.not, label %.lr.ph68.i.i1377.prol.loopexit, label %.lr.ph68.i.i1377.prol

.lr.ph68.i.i1377.prol:                            ; preds = %.lr.ph68.i.i1377.preheader
  %i.rrv = getelementptr inbounds nuw i8, ptr %.267.i.i1378.ph, i64 2
  %i.rrw = load i16, ptr %.267.i.i1378.ph, align 2, !tbaa !57
  %i.rrx = zext i16 %i.rrw to i32
  %i.rry = shl nuw i32 %i.rrx, 16
  %i.rrz = bitcast i32 %i.rry to float
  %i.rsa = getelementptr inbounds nuw i8, ptr %.22965.i.i.ph, i64 2
  %i.rsb = load i16, ptr %.22965.i.i.ph, align 2, !tbaa !57
  %i.rsc = zext i16 %i.rsb to i32
  %i.rsd = shl nuw i32 %i.rsc, 16
  %i.rse = bitcast i32 %i.rsd to float
  %i.rsf = fdiv fast float %i.rrz, %i.rse
  %i.rsg = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.rsf)
  %i.rsh = bitcast float %i.rsg to i32
  %i.rsi = lshr i32 %i.rsh, 16
  %i.rsj = trunc nuw i32 %i.rsi to i16
  %i.rsk = getelementptr inbounds nuw i8, ptr %.23264.i.i.ph, i64 2
  store i16 %i.rsj, ptr %.23264.i.i.ph, align 2, !tbaa !57
  %i.rsl = add nuw nsw i32 %.22666.i.i.ph, 1
  br label %.lr.ph68.i.i1377.prol.loopexit

.lr.ph68.i.i1377.prol.loopexit:                   ; preds = %.lr.ph68.i.i1377.prol, %.lr.ph68.i.i1377.preheader
  %.267.i.i1378.unr = phi ptr [ %.267.i.i1378.ph, %.lr.ph68.i.i1377.preheader ], [ %i.rrv, %.lr.ph68.i.i1377.prol ]
  %.22666.i.i.unr = phi i32 [ %.22666.i.i.ph, %.lr.ph68.i.i1377.preheader ], [ %i.rsl, %.lr.ph68.i.i1377.prol ]
  %.22965.i.i.unr = phi ptr [ %.22965.i.i.ph, %.lr.ph68.i.i1377.preheader ], [ %i.rsa, %.lr.ph68.i.i1377.prol ]
  %.23264.i.i.unr = phi ptr [ %.23264.i.i.ph, %.lr.ph68.i.i1377.preheader ], [ %i.rsk, %.lr.ph68.i.i1377.prol ]
  %i.rsm = icmp eq i32 %i.rov, %.neg8004
  br i1 %i.rsm, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i1377

.lr.ph59.i.i:                                     ; preds = %.preheader47.i.i, %.lr.ph59.i.i
  %.158.i.i = phi ptr [ %i.rte, %.lr.ph59.i.i ], [ %.0.lcssa.i.i1371, %.preheader47.i.i ] ; 2 uses
  %.12557.i.i = phi i32 [ %i.rth, %.lr.ph59.i.i ], [ %.024.lcssa.i.i1370, %.preheader47.i.i ]
  %.12856.i.i = phi ptr [ %i.rtf, %.lr.ph59.i.i ], [ %.027.lcssa.i.i1369, %.preheader47.i.i ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.rtg, %.lr.ph59.i.i ], [ %.030.lcssa.i.i1368, %.preheader47.i.i ] ; 2 uses
  %i.rsn = load i64, ptr %.158.i.i, align 1, !tbaa !60
  %i.rso = insertelement <2 x i64> poison, i64 %i.rsn, i64 0
  %i.rsp = bitcast <2 x i64> %i.rso to <8 x i16>
  %i.rsq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rsp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rsr = bitcast <8 x i16> %i.rsq to <4 x float>
  %i.rss = load i64, ptr %.12856.i.i, align 1, !tbaa !60
  %i.rst = insertelement <2 x i64> poison, i64 %i.rss, i64 0
  %i.rsu = bitcast <2 x i64> %i.rst to <8 x i16>
  %i.rsv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rsu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rsw = bitcast <8 x i16> %i.rsv to <4 x float>
  %i.rsx = fdiv fast <4 x float> %i.rsr, %i.rsw
  %i.rsy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.rsx, i32 1)
  %i.rsz = bitcast <4 x float> %i.rsy to <4 x i32>
  %i.rta = lshr <4 x i32> %i.rsz, splat (i32 16)
  %i.rtb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.rta, <4 x i32> poison)
  %i.rtc = bitcast <8 x i16> %i.rtb to <2 x i64>
  %i.rtd = extractelement <2 x i64> %i.rtc, i64 0
  store i64 %i.rtd, ptr %.13155.i.i, align 1, !tbaa !60
  %i.rte = getelementptr inbounds nuw i8, ptr %.158.i.i, i64 8 ; 2 uses
  %i.rtf = getelementptr inbounds nuw i8, ptr %.12856.i.i, i64 8 ; 2 uses
  %i.rtg = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8 ; 2 uses
  %i.rth = add nuw nsw i32 %.12557.i.i, 4         ; 3 uses
  %i.rti = or disjoint i32 %i.rth, 3
  %i.rtj = icmp slt i32 %i.rti, %i.rov
  br i1 %i.rtj, label %.lr.ph59.i.i, label %.preheader.i.i1372, !llvm.loop !970

.lr.ph68.i.i1377:                                 ; preds = %.lr.ph68.i.i1377.prol.loopexit, %.lr.ph68.i.i1377
  %.267.i.i1378 = phi ptr [ %i.rua, %.lr.ph68.i.i1377 ], [ %.267.i.i1378.unr, %.lr.ph68.i.i1377.prol.loopexit ] ; 3 uses
  %.22666.i.i = phi i32 [ %i.ruq, %.lr.ph68.i.i1377 ], [ %.22666.i.i.unr, %.lr.ph68.i.i1377.prol.loopexit ]
  %.22965.i.i = phi ptr [ %i.ruf, %.lr.ph68.i.i1377 ], [ %.22965.i.i.unr, %.lr.ph68.i.i1377.prol.loopexit ] ; 3 uses
  %.23264.i.i = phi ptr [ %i.rup, %.lr.ph68.i.i1377 ], [ %.23264.i.i.unr, %.lr.ph68.i.i1377.prol.loopexit ] ; 3 uses
  %i.rtk = getelementptr inbounds nuw i8, ptr %.267.i.i1378, i64 2
  %i.rtl = load i16, ptr %.267.i.i1378, align 2, !tbaa !57
  %i.rtm = zext i16 %i.rtl to i32
  %i.rtn = shl nuw i32 %i.rtm, 16
  %i.rto = bitcast i32 %i.rtn to float
  %i.rtp = getelementptr inbounds nuw i8, ptr %.22965.i.i, i64 2
  %i.rtq = load i16, ptr %.22965.i.i, align 2, !tbaa !57
  %i.rtr = zext i16 %i.rtq to i32
  %i.rts = shl nuw i32 %i.rtr, 16
  %i.rtt = bitcast i32 %i.rts to float
  %i.rtu = fdiv fast float %i.rto, %i.rtt
  %i.rtv = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.rtu)
  %i.rtw = bitcast float %i.rtv to i32
  %i.rtx = lshr i32 %i.rtw, 16
  %i.rty = trunc nuw i32 %i.rtx to i16
  %i.rtz = getelementptr inbounds nuw i8, ptr %.23264.i.i, i64 2
  store i16 %i.rty, ptr %.23264.i.i, align 2, !tbaa !57
  %i.rua = getelementptr inbounds nuw i8, ptr %.267.i.i1378, i64 4
  %i.rub = load i16, ptr %i.rtk, align 2, !tbaa !57
  %i.ruc = zext i16 %i.rub to i32
  %i.rud = shl nuw i32 %i.ruc, 16
  %i.rue = bitcast i32 %i.rud to float
  %i.ruf = getelementptr inbounds nuw i8, ptr %.22965.i.i, i64 4
  %i.rug = load i16, ptr %i.rtp, align 2, !tbaa !57
  %i.ruh = zext i16 %i.rug to i32
  %i.rui = shl nuw i32 %i.ruh, 16
  %i.ruj = bitcast i32 %i.rui to float
  %i.ruk = fdiv fast float %i.rue, %i.ruj
  %i.rul = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.ruk)
  %i.rum = bitcast float %i.rul to i32
  %i.run = lshr i32 %i.rum, 16
  %i.ruo = trunc nuw i32 %i.run to i16
  %i.rup = getelementptr inbounds nuw i8, ptr %.23264.i.i, i64 4
  store i16 %i.ruo, ptr %i.rtz, align 2, !tbaa !57
end_hunk_20
begin_hunk_21_@_ZN4ncnnL22binary_op_vector_bf16sEPKtS1_Ptiiiii:bb.a
  %i.slr = zext i16 %i.slq to i32
  %i.sls = shl nuw i32 %i.slr, 16
  %i.slt = bitcast i32 %i.sls to float
  %i.slu = fmul fast float %i.slt, %i.skm
  %i.slv = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.slu)
  %i.slw = bitcast float %i.slv to i32
  %i.slx = lshr i32 %i.slw, 16
  %i.sly = trunc nuw i32 %i.slx to i16
  %i.slz = getelementptr inbounds nuw i8, ptr %.22726.i.i, i64 4
  store i16 %i.sly, ptr %i.slo, align 2, !tbaa !57
  %i.sma = add nuw nsw i32 %.22427.i.i, 2         ; 2 uses
  %exitcond.not.i72.i1340.1 = icmp eq i32 %i.sma, %i.rov
  br i1 %exitcond.not.i72.i1340.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph29.i.i1338, !llvm.loop !988

bb.oh:                                            ; preds = %bb.of
  %i.smb = icmp eq i32 %3, 1
  br i1 %i.smb, label %bb.oi, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.oi:                                            ; preds = %bb.oh
  switch i32 %.sroa.speculated.i1324, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 8, label %bb.oj
    i32 4, label %bb.ok
  ]

bb.oj:                                            ; preds = %bb.oi
  %i.smc = load <8 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.smd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.smc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sme = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.smc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.smf = shufflevector <8 x i16> %i.smd, <8 x i16> %i.sme, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.smg = bitcast <16 x i16> %i.smf to <8 x float> ; 3 uses
  %xtraiter7783 = and i32 %.sroa.speculated86.i1323, 1
  %i.smh = icmp eq i32 %.sroa.speculated86.i1323, 1
  br i1 %i.smh, label %.lr.ph40.i.i.epil.preheader, label %.new7782

.new7782:                                         ; preds = %bb.oj
  %unroll_iter7786 = and i32 %.sroa.speculated86.i1323, 2147483646
  br label %.lr.ph40.i.i

.lr.ph40.i.i:                                     ; preds = %.lr.ph40.i.i, %.new7782
  %.01839.i.i = phi ptr [ %1, %.new7782 ], [ %i.snm, %.lr.ph40.i.i ] ; 3 uses
  %.02037.i.i = phi ptr [ %2, %.new7782 ], [ %i.snn, %.lr.ph40.i.i ] ; 3 uses
  %niter7787 = phi i32 [ 0, %.new7782 ], [ %niter7787.next.1, %.lr.ph40.i.i ]
  %i.smi = load i16, ptr %.01839.i.i, align 2, !tbaa !57
  %i.smj = zext i16 %i.smi to i32
  %i.smk = shl nuw i32 %i.smj, 16
  %i.sml = insertelement <8 x i32> poison, i32 %i.smk, i64 0
  %i.smm = bitcast <8 x i32> %i.sml to <8 x float>
  %i.smn = shufflevector <8 x float> %i.smm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.smo = fdiv fast <8 x float> %i.smg, %i.smn
  %i.smp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.smo, i32 1)
  %i.smq = bitcast <8 x float> %i.smp to <8 x i32> ; 2 uses
  %i.smr = shufflevector <8 x i32> %i.smq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sms = shufflevector <8 x i32> %i.smq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.smt = lshr <4 x i32> %i.smr, splat (i32 16)
  %i.smu = lshr <4 x i32> %i.sms, splat (i32 16)
  %i.smv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.smt, <4 x i32> %i.smu)
  store <8 x i16> %i.smv, ptr %.02037.i.i, align 1, !tbaa !60
  %i.smw = getelementptr inbounds nuw i8, ptr %.01839.i.i, i64 2
  %i.smx = getelementptr inbounds nuw i8, ptr %.02037.i.i, i64 16
  %i.smy = load i16, ptr %i.smw, align 2, !tbaa !57
  %i.smz = zext i16 %i.smy to i32
  %i.sna = shl nuw i32 %i.smz, 16
  %i.snb = insertelement <8 x i32> poison, i32 %i.sna, i64 0
  %i.snc = bitcast <8 x i32> %i.snb to <8 x float>
  %i.snd = shufflevector <8 x float> %i.snc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sne = fdiv fast <8 x float> %i.smg, %i.snd
  %i.snf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.sne, i32 1)
  %i.sng = bitcast <8 x float> %i.snf to <8 x i32> ; 2 uses
  %i.snh = shufflevector <8 x i32> %i.sng, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sni = shufflevector <8 x i32> %i.sng, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.snj = lshr <4 x i32> %i.snh, splat (i32 16)
  %i.snk = lshr <4 x i32> %i.sni, splat (i32 16)
  %i.snl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.snj, <4 x i32> %i.snk)
  store <8 x i16> %i.snl, ptr %i.smx, align 1, !tbaa !60
  %i.snm = getelementptr inbounds nuw i8, ptr %.01839.i.i, i64 4 ; 2 uses
  %i.snn = getelementptr inbounds nuw i8, ptr %.02037.i.i, i64 32 ; 2 uses
  %niter7787.next.1 = add i32 %niter7787, 2       ; 2 uses
  %niter7787.ncmp.1 = icmp eq i32 %niter7787.next.1, %unroll_iter7786
  br i1 %niter7787.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7659.unr-lcssa, label %.lr.ph40.i.i, !llvm.loop !989

bb.ok:                                            ; preds = %bb.oi
  %i.sno = load i64, ptr %0, align 1, !tbaa !60
  %i.snp = insertelement <2 x i64> poison, i64 %i.sno, i64 0
  %i.snq = bitcast <2 x i64> %i.snp to <8 x i16>
  %i.snr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.snq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sns = bitcast <8 x i16> %i.snr to <4 x float> ; 3 uses
  %xtraiter7777 = and i32 %.sroa.speculated86.i1323, 1
  %i.snt = icmp eq i32 %.sroa.speculated86.i1323, 1
  br i1 %i.snt, label %.lr.ph.i74.i1325.epil.preheader, label %.new7776

.new7776:                                         ; preds = %bb.ok
  %unroll_iter7780 = and i32 %.sroa.speculated86.i1323, 2147483646
  br label %.lr.ph.i74.i1325

.lr.ph.i74.i1325:                                 ; preds = %.lr.ph.i74.i1325, %.new7776
  %.135.i.i = phi ptr [ %1, %.new7776 ], [ %i.sow, %.lr.ph.i74.i1325 ] ; 3 uses
  %.12134.i.i = phi ptr [ %2, %.new7776 ], [ %i.sox, %.lr.ph.i74.i1325 ] ; 3 uses
  %niter7781 = phi i32 [ 0, %.new7776 ], [ %niter7781.next.1, %.lr.ph.i74.i1325 ]
  %i.snu = load i16, ptr %.135.i.i, align 2, !tbaa !57
  %i.snv = zext i16 %i.snu to i32
  %i.snw = shl nuw i32 %i.snv, 16
  %i.snx = insertelement <4 x i32> poison, i32 %i.snw, i64 0
  %i.sny = bitcast <4 x i32> %i.snx to <4 x float>
  %i.snz = shufflevector <4 x float> %i.sny, <4 x float> poison, <4 x i32> zeroinitializer
  %i.soa = fdiv fast <4 x float> %i.sns, %i.snz
  %i.sob = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.soa, i32 1)
  %i.soc = bitcast <4 x float> %i.sob to <4 x i32>
  %i.sod = lshr <4 x i32> %i.soc, splat (i32 16)
  %i.soe = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sod, <4 x i32> poison)
  %i.sof = bitcast <8 x i16> %i.soe to <2 x i64>
  %i.sog = extractelement <2 x i64> %i.sof, i64 0
  store i64 %i.sog, ptr %.12134.i.i, align 1, !tbaa !60
  %i.soh = getelementptr inbounds nuw i8, ptr %.135.i.i, i64 2
  %i.soi = getelementptr inbounds nuw i8, ptr %.12134.i.i, i64 8
  %i.soj = load i16, ptr %i.soh, align 2, !tbaa !57
  %i.sok = zext i16 %i.soj to i32
  %i.sol = shl nuw i32 %i.sok, 16
  %i.som = insertelement <4 x i32> poison, i32 %i.sol, i64 0
  %i.son = bitcast <4 x i32> %i.som to <4 x float>
  %i.soo = shufflevector <4 x float> %i.son, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sop = fdiv fast <4 x float> %i.sns, %i.soo
  %i.soq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.sop, i32 1)
  %i.sor = bitcast <4 x float> %i.soq to <4 x i32>
  %i.sos = lshr <4 x i32> %i.sor, splat (i32 16)
  %i.sot = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sos, <4 x i32> poison)
  %i.sou = bitcast <8 x i16> %i.sot to <2 x i64>
  %i.sov = extractelement <2 x i64> %i.sou, i64 0
  store i64 %i.sov, ptr %i.soi, align 1, !tbaa !60
  %i.sow = getelementptr inbounds nuw i8, ptr %.135.i.i, i64 4 ; 2 uses
  %i.sox = getelementptr inbounds nuw i8, ptr %.12134.i.i, i64 16 ; 2 uses
  %niter7781.next.1 = add i32 %niter7781, 2       ; 2 uses
  %niter7781.ncmp.1 = icmp eq i32 %niter7781.next.1, %unroll_iter7780
  br i1 %niter7781.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit7660.unr-lcssa, label %.lr.ph.i74.i1325, !llvm.loop !990

bb.ol:                                            ; preds = %bb.a
  %.sroa.speculated87.i1381 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 13 uses
  %.sroa.speculated.i1382 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 7 uses
  %i.soy = mul i32 %.sroa.speculated.i1382, %.sroa.speculated87.i1381 ; 40 uses
  %i.soz = icmp eq i32 %5, %6
  br i1 %i.soz, label %bb.om, label %bb.pa

bb.om:                                            ; preds = %bb.ol
  %i.spa = icmp eq i32 %3, %4
  br i1 %i.spa, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.spb = icmp sgt i32 %i.soy, 7
  br i1 %i.spb, label %.lr.ph.i.i1499, label %.preheader47.i.i1478

.preheader47.loopexit.i.i1504:                    ; preds = %.lr.ph.i.i1499
  %i.spc = and i32 %i.soy, 2147483640
  br label %.preheader47.i.i1478

.preheader47.i.i1478:                             ; preds = %.preheader47.loopexit.i.i1504, %bb.on
  %.030.lcssa.i.i1479 = phi ptr [ %2, %bb.on ], [ %i.spz, %.preheader47.loopexit.i.i1504 ] ; 2 uses
  %.027.lcssa.i.i1480 = phi ptr [ %1, %bb.on ], [ %i.spy, %.preheader47.loopexit.i.i1504 ] ; 2 uses
  %.024.lcssa.i.i1481 = phi i32 [ 0, %bb.on ], [ %i.spc, %.preheader47.loopexit.i.i1504 ] ; 3 uses
  %.0.lcssa.i.i1482 = phi ptr [ %0, %bb.on ], [ %i.spx, %.preheader47.loopexit.i.i1504 ] ; 2 uses
  %i.spd = or disjoint i32 %.024.lcssa.i.i1481, 3
  %i.spe = icmp slt i32 %i.spd, %i.soy
  br i1 %i.spe, label %.lr.ph59.i.i1494, label %.preheader.i.i1483

.lr.ph.i.i1499:                                   ; preds = %bb.on, %.lr.ph.i.i1499
  %.051.i.i1500 = phi ptr [ %i.spx, %.lr.ph.i.i1499 ], [ %0, %bb.on ] ; 2 uses
  %.02450.i.i1501 = phi i32 [ %i.sqa, %.lr.ph.i.i1499 ], [ 0, %bb.on ]
  %.02749.i.i1502 = phi ptr [ %i.spy, %.lr.ph.i.i1499 ], [ %1, %bb.on ] ; 2 uses
  %.03048.i.i1503 = phi ptr [ %i.spz, %.lr.ph.i.i1499 ], [ %2, %bb.on ] ; 2 uses
  %i.spf = load <8 x i16>, ptr %.051.i.i1500, align 1, !tbaa !60 ; 2 uses
  %i.spg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.spf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sph = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.spf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.spi = shufflevector <8 x i16> %i.spg, <8 x i16> %i.sph, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.spj = bitcast <16 x i16> %i.spi to <8 x float>
  %i.spk = load <8 x i16>, ptr %.02749.i.i1502, align 1, !tbaa !60 ; 2 uses
  %i.spl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.spk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.spm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.spk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.spn = shufflevector <8 x i16> %i.spl, <8 x i16> %i.spm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.spo = bitcast <16 x i16> %i.spn to <8 x float>
  %i.spp = fdiv fast <8 x float> %i.spo, %i.spj
  %i.spq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.spp, i32 1)
  %i.spr = bitcast <8 x float> %i.spq to <8 x i32> ; 2 uses
  %i.sps = shufflevector <8 x i32> %i.spr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.spt = shufflevector <8 x i32> %i.spr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.spu = lshr <4 x i32> %i.sps, splat (i32 16)
  %i.spv = lshr <4 x i32> %i.spt, splat (i32 16)
  %i.spw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.spu, <4 x i32> %i.spv)
  store <8 x i16> %i.spw, ptr %.03048.i.i1503, align 1, !tbaa !60
  %i.spx = getelementptr inbounds nuw i8, ptr %.051.i.i1500, i64 16 ; 2 uses
  %i.spy = getelementptr inbounds nuw i8, ptr %.02749.i.i1502, i64 16 ; 2 uses
  %i.spz = getelementptr inbounds nuw i8, ptr %.03048.i.i1503, i64 16 ; 2 uses
  %i.sqa = add nuw nsw i32 %.02450.i.i1501, 8     ; 2 uses
  %i.sqb = or disjoint i32 %i.sqa, 7
  %i.sqc = icmp slt i32 %i.sqb, %i.soy
  br i1 %i.sqc, label %.lr.ph.i.i1499, label %.preheader47.loopexit.i.i1504, !llvm.loop !991

.preheader.i.i1483:                               ; preds = %.lr.ph59.i.i1494, %.preheader47.i.i1478
  %.131.lcssa.i.i1484 = phi ptr [ %.030.lcssa.i.i1479, %.preheader47.i.i1478 ], [ %i.stj, %.lr.ph59.i.i1494 ] ; 7 uses
  %.128.lcssa.i.i1485 = phi ptr [ %.027.lcssa.i.i1480, %.preheader47.i.i1478 ], [ %i.sti, %.lr.ph59.i.i1494 ] ; 7 uses
  %.125.lcssa.i.i1486 = phi i32 [ %.024.lcssa.i.i1481, %.preheader47.i.i1478 ], [ %i.stk, %.lr.ph59.i.i1494 ] ; 6 uses
  %.1.lcssa.i.i1487 = phi ptr [ %.0.lcssa.i.i1482, %.preheader47.i.i1478 ], [ %i.sth, %.lr.ph59.i.i1494 ] ; 7 uses
  %.128.lcssa.i.i14854402 = ptrtoaddr ptr %.128.lcssa.i.i1485 to i64
  %.131.lcssa.i.i14844403 = ptrtoaddr ptr %.1.lcssa.i.i1487 to i64
  %.1.lcssa.i.i14874404 = ptrtoaddr ptr %.131.lcssa.i.i1484 to i64 ; 2 uses
  %i.sqd = icmp slt i32 %.125.lcssa.i.i1486, %i.soy
  br i1 %i.sqd, label %iter.check4423, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check4423:                                   ; preds = %.preheader.i.i1483
  %i.sqe = xor i32 %.125.lcssa.i.i1486, -1
  %i.sqf = add i32 %i.soy, %i.sqe                 ; 3 uses
  %i.sqg = zext i32 %i.sqf to i64
  %i.sqh = add nuw nsw i64 %i.sqg, 1              ; 5 uses
  %min.iters.check4405 = icmp ult i32 %i.sqf, 3
  br i1 %min.iters.check4405, label %.lr.ph68.i.i1488.preheader, label %vector.memcheck4406

vector.memcheck4406:                              ; preds = %iter.check4423
  %i.sqi = sub i64 %.131.lcssa.i.i14844403, %.1.lcssa.i.i14874404
  %diff.check4407 = icmp ugt i64 %i.sqi, -32
  %i.sqj = sub i64 %.128.lcssa.i.i14854402, %.1.lcssa.i.i14874404
  %diff.check4408 = icmp ugt i64 %i.sqj, -32
  %conflict.rdx = or i1 %diff.check4407, %diff.check4408
  br i1 %conflict.rdx, label %.lr.ph68.i.i1488.preheader, label %vector.main.loop.iter.check4409

vector.main.loop.iter.check4409:                  ; preds = %vector.memcheck4406
  %min.iters.check4410 = icmp ult i32 %i.sqf, 15
  br i1 %min.iters.check4410, label %vec.epilog.ph4427, label %vector.ph4411

vector.ph4411:                                    ; preds = %vector.main.loop.iter.check4409
  %i.sqk = and i64 %i.sqh, 12
  %n.vec4412 = and i64 %i.sqh, 8589934576         ; 5 uses
  %i.sql = shl nuw nsw i64 %n.vec4412, 1          ; 3 uses
  %i.sqm = getelementptr i8, ptr %.1.lcssa.i.i1487, i64 %i.sql
  %i.sqn = trunc i64 %n.vec4412 to i32
  %i.sqo = add i32 %.125.lcssa.i.i1486, %i.sqn
  %i.sqp = getelementptr i8, ptr %.128.lcssa.i.i1485, i64 %i.sql
  %i.sqq = getelementptr i8, ptr %.131.lcssa.i.i1484, i64 %i.sql
  br label %vector.body4413

vector.body4413:                                  ; preds = %vector.ph4411, %vector.body4413
  %index4414 = phi i64 [ 0, %vector.ph4411 ], [ %index.next4420, %vector.body4413 ] ; 2 uses
  %i.sqr = shl i64 %index4414, 1                  ; 3 uses
  %next.gep4415 = getelementptr i8, ptr %.1.lcssa.i.i1487, i64 %i.sqr
  %next.gep4416 = getelementptr i8, ptr %.128.lcssa.i.i1485, i64 %i.sqr
  %next.gep4417 = getelementptr i8, ptr %.131.lcssa.i.i1484, i64 %i.sqr
  %wide.load4418 = load <16 x i16>, ptr %next.gep4415, align 2, !tbaa !57
  %i.sqs = zext <16 x i16> %wide.load4418 to <16 x i32>
  %i.sqt = shl nuw <16 x i32> %i.sqs, splat (i32 16)
  %i.squ = bitcast <16 x i32> %i.sqt to <16 x float>
  %wide.load4419 = load <16 x i16>, ptr %next.gep4416, align 2, !tbaa !57
  %i.sqv = zext <16 x i16> %wide.load4419 to <16 x i32>
  %i.sqw = shl nuw <16 x i32> %i.sqv, splat (i32 16)
  %i.sqx = bitcast <16 x i32> %i.sqw to <16 x float>
  %i.sqy = fdiv fast <16 x float> %i.sqx, %i.squ
  %i.sqz = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.sqy)
  %i.sra = bitcast <16 x float> %i.sqz to <16 x i32>
  %i.srb = lshr <16 x i32> %i.sra, splat (i32 16)
  %i.src = trunc nuw <16 x i32> %i.srb to <16 x i16>
  store <16 x i16> %i.src, ptr %next.gep4417, align 2, !tbaa !57
  %index.next4420 = add nuw i64 %index4414, 16    ; 2 uses
  %i.srd = icmp eq i64 %index.next4420, %n.vec4412
  br i1 %i.srd, label %middle.block4421, label %vector.body4413, !llvm.loop !992

middle.block4421:                                 ; preds = %vector.body4413
  %cmp.n4422 = icmp eq i64 %i.sqh, %n.vec4412
  br i1 %cmp.n4422, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check4424

vec.epilog.iter.check4424:                        ; preds = %middle.block4421
  %min.epilog.iters.check4426 = icmp eq i64 %i.sqk, 0
  br i1 %min.epilog.iters.check4426, label %.lr.ph68.i.i1488.preheader, label %vec.epilog.ph4427, !prof !64

vec.epilog.ph4427:                                ; preds = %vector.main.loop.iter.check4409, %vec.epilog.iter.check4424
  %vec.epilog.resume.val4428 = phi i64 [ %n.vec4412, %vec.epilog.iter.check4424 ], [ 0, %vector.main.loop.iter.check4409 ]
  %n.vec4429 = and i64 %i.sqh, 8589934588         ; 4 uses
  %i.sre = shl nuw nsw i64 %n.vec4429, 1          ; 3 uses
  %i.srf = getelementptr i8, ptr %.1.lcssa.i.i1487, i64 %i.sre
  %i.srg = trunc i64 %n.vec4429 to i32
  %i.srh = add i32 %.125.lcssa.i.i1486, %i.srg
  %i.sri = getelementptr i8, ptr %.128.lcssa.i.i1485, i64 %i.sre
  %i.srj = getelementptr i8, ptr %.131.lcssa.i.i1484, i64 %i.sre
  br label %vec.epilog.vector.body4430

vec.epilog.vector.body4430:                       ; preds = %vec.epilog.vector.body4430, %vec.epilog.ph4427
  %index4431 = phi i64 [ %vec.epilog.resume.val4428, %vec.epilog.ph4427 ], [ %index.next4437, %vec.epilog.vector.body4430 ] ; 2 uses
  %i.srk = shl i64 %index4431, 1                  ; 3 uses
  %next.gep4432 = getelementptr i8, ptr %.1.lcssa.i.i1487, i64 %i.srk
  %next.gep4433 = getelementptr i8, ptr %.128.lcssa.i.i1485, i64 %i.srk
  %next.gep4434 = getelementptr i8, ptr %.131.lcssa.i.i1484, i64 %i.srk
  %wide.load4435 = load <4 x i16>, ptr %next.gep4432, align 2, !tbaa !57
  %i.srl = zext <4 x i16> %wide.load4435 to <4 x i32>
  %i.srm = shl nuw <4 x i32> %i.srl, splat (i32 16)
  %i.srn = bitcast <4 x i32> %i.srm to <4 x float>
  %wide.load4436 = load <4 x i16>, ptr %next.gep4433, align 2, !tbaa !57
  %i.sro = zext <4 x i16> %wide.load4436 to <4 x i32>
  %i.srp = shl nuw <4 x i32> %i.sro, splat (i32 16)
  %i.srq = bitcast <4 x i32> %i.srp to <4 x float>
  %i.srr = fdiv fast <4 x float> %i.srq, %i.srn
  %i.srs = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.srr)
  %i.srt = bitcast <4 x float> %i.srs to <4 x i32>
  %i.sru = lshr <4 x i32> %i.srt, splat (i32 16)
  %i.srv = trunc nuw <4 x i32> %i.sru to <4 x i16>
  store <4 x i16> %i.srv, ptr %next.gep4434, align 2, !tbaa !57
  %index.next4437 = add nuw i64 %index4431, 4     ; 2 uses
  %i.srw = icmp eq i64 %index.next4437, %n.vec4429
  br i1 %i.srw, label %vec.epilog.middle.block4438, label %vec.epilog.vector.body4430, !llvm.loop !993

vec.epilog.middle.block4438:                      ; preds = %vec.epilog.vector.body4430
  %cmp.n4439 = icmp eq i64 %i.sqh, %n.vec4429
  br i1 %cmp.n4439, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i1488.preheader

.lr.ph68.i.i1488.preheader:                       ; preds = %iter.check4423, %vector.memcheck4406, %vec.epilog.iter.check4424, %vec.epilog.middle.block4438
  %.267.i.i1489.ph = phi ptr [ %.1.lcssa.i.i1487, %iter.check4423 ], [ %.1.lcssa.i.i1487, %vector.memcheck4406 ], [ %i.sqm, %vec.epilog.iter.check4424 ], [ %i.srf, %vec.epilog.middle.block4438 ] ; 3 uses
  %.22666.i.i1490.ph = phi i32 [ %.125.lcssa.i.i1486, %iter.check4423 ], [ %.125.lcssa.i.i1486, %vector.memcheck4406 ], [ %i.sqo, %vec.epilog.iter.check4424 ], [ %i.srh, %vec.epilog.middle.block4438 ] ; 4 uses
  %.22965.i.i1491.ph = phi ptr [ %.128.lcssa.i.i1485, %iter.check4423 ], [ %.128.lcssa.i.i1485, %vector.memcheck4406 ], [ %i.sqp, %vec.epilog.iter.check4424 ], [ %i.sri, %vec.epilog.middle.block4438 ] ; 3 uses
  %.23264.i.i1492.ph = phi ptr [ %.131.lcssa.i.i1484, %iter.check4423 ], [ %.131.lcssa.i.i1484, %vector.memcheck4406 ], [ %i.sqq, %vec.epilog.iter.check4424 ], [ %i.srj, %vec.epilog.middle.block4438 ] ; 3 uses
  %i.srx = sub i32 %i.soy, %.22666.i.i1490.ph
  %.neg8000 = add i32 %.22666.i.i1490.ph, 1
  %xtraiter7774 = and i32 %i.srx, 1
  %lcmp.mod7775.not = icmp eq i32 %xtraiter7774, 0
  br i1 %lcmp.mod7775.not, label %.lr.ph68.i.i1488.prol.loopexit, label %.lr.ph68.i.i1488.prol

.lr.ph68.i.i1488.prol:                            ; preds = %.lr.ph68.i.i1488.preheader
  %i.sry = getelementptr inbounds nuw i8, ptr %.267.i.i1489.ph, i64 2
  %i.srz = load i16, ptr %.267.i.i1489.ph, align 2, !tbaa !57
  %i.ssa = zext i16 %i.srz to i32
  %i.ssb = shl nuw i32 %i.ssa, 16
  %i.ssc = bitcast i32 %i.ssb to float
  %i.ssd = getelementptr inbounds nuw i8, ptr %.22965.i.i1491.ph, i64 2
  %i.sse = load i16, ptr %.22965.i.i1491.ph, align 2, !tbaa !57
  %i.ssf = zext i16 %i.sse to i32
  %i.ssg = shl nuw i32 %i.ssf, 16
  %i.ssh = bitcast i32 %i.ssg to float
  %i.ssi = fdiv fast float %i.ssh, %i.ssc
  %i.ssj = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.ssi)
  %i.ssk = bitcast float %i.ssj to i32
  %i.ssl = lshr i32 %i.ssk, 16
  %i.ssm = trunc nuw i32 %i.ssl to i16
  %i.ssn = getelementptr inbounds nuw i8, ptr %.23264.i.i1492.ph, i64 2
  store i16 %i.ssm, ptr %.23264.i.i1492.ph, align 2, !tbaa !57
  %i.sso = add nuw nsw i32 %.22666.i.i1490.ph, 1
  br label %.lr.ph68.i.i1488.prol.loopexit

.lr.ph68.i.i1488.prol.loopexit:                   ; preds = %.lr.ph68.i.i1488.prol, %.lr.ph68.i.i1488.preheader
  %.267.i.i1489.unr = phi ptr [ %.267.i.i1489.ph, %.lr.ph68.i.i1488.preheader ], [ %i.sry, %.lr.ph68.i.i1488.prol ]
  %.22666.i.i1490.unr = phi i32 [ %.22666.i.i1490.ph, %.lr.ph68.i.i1488.preheader ], [ %i.sso, %.lr.ph68.i.i1488.prol ]
  %.22965.i.i1491.unr = phi ptr [ %.22965.i.i1491.ph, %.lr.ph68.i.i1488.preheader ], [ %i.ssd, %.lr.ph68.i.i1488.prol ]
  %.23264.i.i1492.unr = phi ptr [ %.23264.i.i1492.ph, %.lr.ph68.i.i1488.preheader ], [ %i.ssn, %.lr.ph68.i.i1488.prol ]
  %i.ssp = icmp eq i32 %i.soy, %.neg8000
  br i1 %i.ssp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_24BinaryOp_x86_fma_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph68.i.i1488

.lr.ph59.i.i1494:                                 ; preds = %.preheader47.i.i1478, %.lr.ph59.i.i1494
  %.158.i.i1495 = phi ptr [ %i.sth, %.lr.ph59.i.i1494 ], [ %.0.lcssa.i.i1482, %.preheader47.i.i1478 ] ; 2 uses
  %.12557.i.i1496 = phi i32 [ %i.stk, %.lr.ph59.i.i1494 ], [ %.024.lcssa.i.i1481, %.preheader47.i.i1478 ]
  %.12856.i.i1497 = phi ptr [ %i.sti, %.lr.ph59.i.i1494 ], [ %.027.lcssa.i.i1480, %.preheader47.i.i1478 ] ; 2 uses
  %.13155.i.i1498 = phi ptr [ %i.stj, %.lr.ph59.i.i1494 ], [ %.030.lcssa.i.i1479, %.preheader47.i.i1478 ] ; 2 uses
  %i.ssq = load i64, ptr %.158.i.i1495, align 1, !tbaa !60
  %i.ssr = insertelement <2 x i64> poison, i64 %i.ssq, i64 0
  %i.sss = bitcast <2 x i64> %i.ssr to <8 x i16>
  %i.sst = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sss, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ssu = bitcast <8 x i16> %i.sst to <4 x float>
  %i.ssv = load i64, ptr %.12856.i.i1497, align 1, !tbaa !60
  %i.ssw = insertelement <2 x i64> poison, i64 %i.ssv, i64 0
  %i.ssx = bitcast <2 x i64> %i.ssw to <8 x i16>
  %i.ssy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ssx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ssz = bitcast <8 x i16> %i.ssy to <4 x float>
  %i.sta = fdiv fast <4 x float> %i.ssz, %i.ssu
  %i.stb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.sta, i32 1)
  %i.stc = bitcast <4 x float> %i.stb to <4 x i32>
  %i.std = lshr <4 x i32> %i.stc, splat (i32 16)
  %i.ste = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.std, <4 x i32> poison)
  %i.stf = bitcast <8 x i16> %i.ste to <2 x i64>
  %i.stg = extractelement <2 x i64> %i.stf, i64 0
  store i64 %i.stg, ptr %.13155.i.i1498, align 1, !tbaa !60
  %i.sth = getelementptr inbounds nuw i8, ptr %.158.i.i1495, i64 8 ; 2 uses
  %i.sti = getelementptr inbounds nuw i8, ptr %.12856.i.i1497, i64 8 ; 2 uses
  %i.stj = getelementptr inbounds nuw i8, ptr %.13155.i.i1498, i64 8 ; 2 uses
  %i.stk = add nuw nsw i32 %.12557.i.i1496, 4     ; 3 uses
  %i.stl = or disjoint i32 %i.stk, 3
  %i.stm = icmp slt i32 %i.stl, %i.soy
  br i1 %i.stm, label %.lr.ph59.i.i1494, label %.preheader.i.i1483, !llvm.loop !994

.lr.ph68.i.i1488:                                 ; preds = %.lr.ph68.i.i1488.prol.loopexit, %.lr.ph68.i.i1488
  %.267.i.i1489 = phi ptr [ %i.sud, %.lr.ph68.i.i1488 ], [ %.267.i.i1489.unr, %.lr.ph68.i.i1488.prol.loopexit ] ; 3 uses
  %.22666.i.i1490 = phi i32 [ %i.sut, %.lr.ph68.i.i1488 ], [ %.22666.i.i1490.unr, %.lr.ph68.i.i1488.prol.loopexit ]
  %.22965.i.i1491 = phi ptr [ %i.sui, %.lr.ph68.i.i1488 ], [ %.22965.i.i1491.unr, %.lr.ph68.i.i1488.prol.loopexit ] ; 3 uses
  %.23264.i.i1492 = phi ptr [ %i.sus, %.lr.ph68.i.i1488 ], [ %.23264.i.i1492.unr, %.lr.ph68.i.i1488.prol.loopexit ] ; 3 uses
  %i.stn = getelementptr inbounds nuw i8, ptr %.267.i.i1489, i64 2
  %i.sto = load i16, ptr %.267.i.i1489, align 2, !tbaa !57
  %i.stp = zext i16 %i.sto to i32
  %i.stq = shl nuw i32 %i.stp, 16
  %i.str = bitcast i32 %i.stq to float
  %i.sts = getelementptr inbounds nuw i8, ptr %.22965.i.i1491, i64 2
  %i.stt = load i16, ptr %.22965.i.i1491, align 2, !tbaa !57
  %i.stu = zext i16 %i.stt to i32
  %i.stv = shl nuw i32 %i.stu, 16
  %i.stw = bitcast i32 %i.stv to float
  %i.stx = fdiv fast float %i.stw, %i.str
  %i.sty = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.stx)
  %i.stz = bitcast float %i.sty to i32
  %i.sua = lshr i32 %i.stz, 16
  %i.sub = trunc nuw i32 %i.sua to i16
  %i.suc = getelementptr inbounds nuw i8, ptr %.23264.i.i1492, i64 2
  store i16 %i.sub, ptr %.23264.i.i1492, align 2, !tbaa !57
  %i.sud = getelementptr inbounds nuw i8, ptr %.267.i.i1489, i64 4
  %i.sue = load i16, ptr %i.stn, align 2, !tbaa !57
  %i.suf = zext i16 %i.sue to i32
  %i.sug = shl nuw i32 %i.suf, 16
  %i.suh = bitcast i32 %i.sug to float
  %i.sui = getelementptr inbounds nuw i8, ptr %.22965.i.i1491, i64 4
  %i.suj = load i16, ptr %i.sts, align 2, !tbaa !57
  %i.suk = zext i16 %i.suj to i32
  %i.sul = shl nuw i32 %i.suk, 16
  %i.sum = bitcast i32 %i.sul to float
  %i.sun = fdiv fast float %i.sum, %i.suh
  %i.suo = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.sun)
  %i.sup = bitcast float %i.suo to i32
  %i.suq = lshr i32 %i.sup, 16
  %i.sur = trunc nuw i32 %i.suq to i16
  %i.sus = getelementptr inbounds nuw i8, ptr %.23264.i.i1492, i64 4
  store i16 %i.sur, ptr %i.suc, align 2, !tbaa !57
end_hunk_21
