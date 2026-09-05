Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_strscan?download=true
begin_hunk_0_@lj_strscan_scan:bb.a
  %i.fv = fneg double %i.fu
  %i.fw = select i1 %.not254, double %i.fu, double %i.fv
  store double %i.fw, ptr %2, align 8, !tbaa !9
  br label %.thread272

bb.bs:                                            ; preds = %bb.bq
  %i.fx = icmp eq i32 %.0186, 0
  %i.fy = icmp ne i32 %.1212, 0                   ; 2 uses
  %or.cond6 = and i1 %i.fy, %i.fx
  br i1 %or.cond6, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store double -0.000000e+00, ptr %2, align 8, !tbaa !9
  br label %.thread272

bb.bu:                                            ; preds = %bb.bs
  %i.fz = sub i32 0, %.0186
  %i.ga = select i1 %i.fy, i32 %i.fz, i32 %.0186
  store i32 %i.ga, ptr %2, align 8, !tbaa !9
  br label %.thread272

bb.bv:                                            ; preds = %bb.bm
  %i.gb = icmp ne i32 %.1200, 0
  %i.gc = icmp slt i32 %.6, 3
  %or.cond10 = or i1 %i.gb, %i.gc
  br i1 %or.cond10, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gd = tail call fastcc i32 @strscan_oct(ptr noundef nonnull %.7226, ptr noundef %2, i32 noundef %.6, i32 noundef %.1212, i32 noundef %.3194)
  br label %.thread272

bb.bx:                                            ; preds = %bb.bv
  switch i32 %.1200, label %.thread279 [
    i32 16, label %bb.by
    i32 2, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.ge = tail call fastcc i32 @strscan_hex(ptr noundef nonnull %.7226, ptr noundef %2, i32 noundef %.6, i32 noundef %3, i32 noundef %.3, i32 noundef %.1212, i32 noundef %.3194)
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.gf = tail call fastcc i32 @strscan_bin(ptr noundef nonnull %.7226, ptr noundef %2, i32 noundef %.6, i32 noundef %3, i32 noundef %.3, i32 noundef %.1212, i32 noundef %.3194)
  br label %bb.ca

.thread279:                                       ; preds = %bb.bp, %bb.bo, %bb.bx
  %i.gg = tail call fastcc i32 @strscan_dec(ptr noundef nonnull %.7226, ptr noundef %2, i32 noundef %.6, i32 noundef %3, i32 noundef %.3, i32 noundef %.1212, i32 noundef %.3194)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.thread279, %bb.by
  %.7 = phi i32 [ %i.ge, %bb.by ], [ %i.gf, %bb.bz ], [ %i.gg, %.thread279 ] ; 2 uses
  %i.gh = icmp ne i32 %.7, 1
  %i.gi = and i32 %3, 1
  %.not251 = icmp eq i32 %i.gi, 0
  %or.cond268 = or i1 %.not251, %i.gh
  br i1 %or.cond268, label %.thread272, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gj = load double, ptr %2, align 8, !tbaa !9
  %i.gk = tail call i64 @lj_vm_num2int_check(double noundef %i.gj) #11 ; 2 uses
  %i.gl = icmp slt i64 %i.gk, 0
  br i1 %i.gl, label %.thread280, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gm = trunc i64 %i.gk to i32
  store i32 %i.gm, ptr %2, align 8, !tbaa !9
  %i.gn = load i64, ptr %2, align 8, !tbaa !9
  %i.go = icmp eq i64 %i.gn, -9223372036854775808
  br i1 %i.go, label %.thread280, label %.thread272

.thread280:                                       ; preds = %bb.cc, %bb.cb
  br label %.thread272

.thread272:                                       ; preds = %bb.x, %bb.ac, %bb.ar, %bb.ao, %bb.ca, %.thread280, %bb.cc, %bb.br, %bb.bt, %bb.bu, %bb.bw, %bb.ae, %bb.ag, %.critedge, %bb.av, %bb.bb, %bb.bh, %bb.bg, %bb.bk, %bb.bl, %bb.q, %bb.p
  %.5218 = phi i32 [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %bb.ac ], [ 0, %bb.ar ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.bg ], [ 0, %bb.bk ], [ 1, %bb.br ], [ 1, %bb.bt ], [ 3, %bb.bu ], [ 3, %bb.cc ], [ 0, %bb.bl ], [ %i.gd, %bb.bw ], [ 0, %.critedge ], [ 0, %bb.bb ], [ 0, %bb.av ], [ %.7, %bb.ca ], [ 0, %bb.bh ], [ 1, %.thread280 ], [ 0, %bb.ao ], [ 0, %bb.x ]
  ret i32 %.5218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @strscan_oct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %4, 22
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.lr.ph.preheader [
    i32 22, label %bb.c
    i32 0, label %._crit_edge
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1, !tbaa !9
  %i.c = icmp ugt i8 %i.b, 49
  br i1 %i.c, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.in = phi i32 [ %i.f, %bb.d ], [ %4, %.lr.ph.preheader ]
  %.036 = phi i64 [ %i.k, %bb.d ], [ 0, %.lr.ph.preheader ]
  %.02435 = phi ptr [ %i.h, %bb.d ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.d = load i8, ptr %.02435, align 1, !tbaa !9  ; 2 uses
  %i.e = and i8 %i.d, -8
  %or.cond = icmp eq i8 %i.e, 48
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.f = add nsw i32 %.in, -1                     ; 2 uses
  %i.g = shl i64 %.036, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.02435, i64 1
  %i.i = and i8 %i.d, 7
  %i.j = zext nneg i8 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j               ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 5 uses
  switch i32 %2, label %bb.h [
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.l = or disjoint i32 %3, -2147483648
  %i.m = zext i32 %i.l to i64
  %.not29 = icmp ult i64 %.0.lcssa, %i.m
  %spec.select = select i1 %.not29, i32 3, i32 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.023 = phi i32 [ %2, %._crit_edge ], [ %spec.select, %bb.e ]
  %.not30 = icmp ult i64 %.0.lcssa, 4294967296
  br i1 %.not30, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %.not31 = icmp eq i32 %3, 0
  %i.n = trunc nuw i64 %.0.lcssa to i32           ; 2 uses
  %i.o = sub i32 0, %i.n
  %i.p = select i1 %.not31, i32 %i.n, i32 %i.o
  store i32 %i.p, ptr %1, align 8, !tbaa !9
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  %.not32 = icmp eq i32 %3, 0
  %i.q = sub i64 0, %.0.lcssa
  %i.r = select i1 %.not32, i64 %.0.lcssa, i64 %i.q
  store i64 %i.r, ptr %1, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.h, %bb.f, %bb.a, %bb.c
  %.022 = phi i32 [ %.023, %bb.g ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.c ], [ %2, %bb.h ], [ 0, %.lr.ph ]
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc noundef i32 @strscan_hex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i32 %6, 16                      ; 2 uses
  %.not79 = icmp eq i32 %6, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = tail call i32 @llvm.umin.i32(i32 %6, i32 16) ; 3 uses
  %xtraiter = and i32 %i.b, 1
  %i.c = icmp eq i32 %6, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.b, 30
  br label %.lr.ph

.preheader.unr-lcssa:                             ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.unr-lcssa, %.lr.ph.preheader
  %.05481.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %.preheader.unr-lcssa ]
  %.05780.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ab, %.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.d = load i8, ptr %.05780.epil.init, align 1, !tbaa !9 ; 2 uses
  %.not74.epil = icmp eq i8 %i.d, 46
  br i1 %.not74.epil, label %bb.b, label %.preheader.epilog-lcssa

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.05780.epil.init, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  br label %.preheader.epilog-lcssa

.preheader.epilog-lcssa:                          ; preds = %bb.b, %.lr.ph.epil.preheader
  %.158.epil = phi ptr [ %i.e, %bb.b ], [ %.05780.epil.init, %.lr.ph.epil.preheader ]
  %.in75.epil = phi i8 [ %i.f, %bb.b ], [ %i.d, %.lr.ph.epil.preheader ] ; 2 uses
  %7 = zext i8 %.in75.epil to i32                 ; 2 uses
  %i.g = icmp ugt i8 %.in75.epil, 57
  %8 = add nuw nsw i32 %7, 9
  %spec.select.epil = select i1 %i.g, i32 %8, i32 %7
  %i.h = shl i64 %.05481.epil.init, 4
  %9 = and i32 %spec.select.epil, 15
  %10 = zext nneg i32 %9 to i64
  %i.i = or disjoint i64 %i.h, %10
  %i.j = getelementptr inbounds nuw i8, ptr %.158.epil, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.preheader.epilog-lcssa
  %.lcssa105 = phi i64 [ %i.aa, %.preheader.unr-lcssa ], [ %i.i, %.preheader.epilog-lcssa ] ; 3 uses
  %.lcssa104 = phi ptr [ %i.ab, %.preheader.unr-lcssa ], [ %i.j, %.preheader.epilog-lcssa ] ; 2 uses
  br i1 %i.a, label %.lr.ph88.preheader, label %._crit_edge

.lr.ph88.preheader:                               ; preds = %.preheader
  %xtraiter109 = and i32 %6, 1
  %i.k = icmp eq i32 %6, 17
  br i1 %i.k, label %.lr.ph88.epil.preheader, label %.lr.ph88.preheader.new

.lr.ph88.preheader.new:                           ; preds = %.lr.ph88.preheader
  %i.l = and i32 %6, -2
  %i.m = add i32 %i.l, -18
  br label %.lr.ph88

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %.05481 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aa, %bb.e ]
  %.05780 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ab, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.n = load i8, ptr %.05780, align 1, !tbaa !9  ; 2 uses
  %.not74 = icmp eq i8 %i.n, 46
  br i1 %.not74, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.05780, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %.158 = phi ptr [ %i.o, %bb.c ], [ %.05780, %.lr.ph ] ; 3 uses
  %.in75 = phi i8 [ %i.p, %bb.c ], [ %i.n, %.lr.ph ] ; 2 uses
  %11 = zext i8 %.in75 to i32
  %i.q = icmp ugt i8 %.in75, 57
  %i.r = getelementptr inbounds nuw i8, ptr %.158, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9     ; 2 uses
  %.not74.1 = icmp eq i8 %i.s, 46
  br i1 %.not74.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.1
  %i.t = getelementptr inbounds nuw i8, ptr %.158, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %i.v = phi i64 [ 2, %bb.d ], [ 1, %.lr.ph.1 ]
  %.in75.1 = phi i8 [ %i.u, %bb.d ], [ %i.s, %.lr.ph.1 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.158, i64 %i.v
  %12 = zext i8 %.in75.1 to i32                   ; 2 uses
  %i.x = icmp ugt i8 %.in75.1, 57
  %13 = add nuw nsw i32 %12, 9
  %spec.select.1 = select i1 %i.x, i32 %13, i32 %12
  %i.y = shl i64 %.05481, 8
  %14 = shl nuw nsw i32 %11, 4                    ; 2 uses
  %15 = add nuw nsw i32 %14, 144
  %16 = select i1 %i.q, i32 %15, i32 %14
  %17 = and i32 %16, 240
  %18 = zext nneg i32 %17 to i64
  %i.z = or disjoint i64 %i.y, %18
  %19 = and i32 %spec.select.1, 15
  %20 = zext nneg i32 %19 to i64
  %i.aa = or disjoint i64 %i.z, %20               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !18

.lr.ph88:                                         ; preds = %bb.h, %.lr.ph88.preheader.new
  %.15586 = phi i64 [ %.lcssa105, %.lr.ph88.preheader.new ], [ %i.aq, %bb.h ]
  %.25985 = phi ptr [ %.lcssa104, %.lr.ph88.preheader.new ], [ %i.ar, %bb.h ] ; 3 uses
  %niter114 = phi i32 [ 0, %.lr.ph88.preheader.new ], [ %niter114.next.1, %bb.h ] ; 2 uses
  %i.ac = load i8, ptr %.25985, align 1, !tbaa !9 ; 2 uses
  %.not73 = icmp eq i8 %i.ac, 46
  br i1 %.not73, label %bb.f, label %.lr.ph88.1

bb.f:                                             ; preds = %.lr.ph88
  %i.ad = getelementptr inbounds nuw i8, ptr %.25985, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  br label %.lr.ph88.1

.lr.ph88.1:                                       ; preds = %.lr.ph88, %bb.f
  %.3 = phi ptr [ %i.ad, %bb.f ], [ %.25985, %.lr.ph88 ] ; 3 uses
  %.in = phi i8 [ %i.ae, %bb.f ], [ %i.ac, %.lr.ph88 ]
  %i.af = icmp ne i8 %.in, 48
  %i.ag = zext i1 %i.af to i64
  %i.ah = or i64 %.15586, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9   ; 2 uses
  %.not73.1 = icmp eq i8 %i.aj, 46
  br i1 %.not73.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph88.1
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph88.1
  %i.am = phi i64 [ 2, %bb.g ], [ 1, %.lr.ph88.1 ]
  %.in.1 = phi i8 [ %i.al, %bb.g ], [ %i.aj, %.lr.ph88.1 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 %i.am
  %i.ao = icmp ne i8 %.in.1, 48
  %i.ap = zext i1 %i.ao to i64
  %i.aq = or i64 %i.ah, %i.ap                     ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %niter114.next.1 = add i32 %niter114, 2
  %niter114.ncmp.1 = icmp eq i32 %niter114, %i.m
  br i1 %niter114.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph88, !llvm.loop !19

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod110.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %._crit_edge.loopexit, label %.lr.ph88.epil.preheader

.lr.ph88.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph88.preheader
  %.15586.epil.init = phi i64 [ %.lcssa105, %.lr.ph88.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %.25985.epil.init = phi ptr [ %.lcssa104, %.lr.ph88.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i32 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.as = load i8, ptr %.25985.epil.init, align 1, !tbaa !9 ; 2 uses
  %.not73.epil = icmp eq i8 %i.as, 46
  br i1 %.not73.epil, label %bb.i, label %._crit_edge.loopexit.epilog-lcssa

bb.i:                                             ; preds = %.lr.ph88.epil.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %.25985.epil.init, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.i, %.lr.ph88.epil.preheader
  %.in.epil = phi i8 [ %i.au, %bb.i ], [ %i.as, %.lr.ph88.epil.preheader ]
  %i.av = icmp ne i8 %.in.epil, 48
  %i.aw = zext i1 %i.av to i64
  %i.ax = or i64 %.15586.epil.init, %i.aw
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge.loopexit.epilog-lcssa
  %.lcssa = phi i64 [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ax, %._crit_edge.loopexit.epilog-lcssa ]
  %i.ay = shl i32 %6, 2
  %i.az = add i32 %4, %i.ay
  %i.ba = add i32 %i.az, -64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.preheader
  %.060.lcssa = phi i32 [ %4, %.preheader ], [ %i.ba, %._crit_edge.loopexit ], [ %4, %bb.a ] ; 2 uses
  %.155.lcssa = phi i64 [ %.lcssa105, %.preheader ], [ %.lcssa, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 10 uses
  switch i32 %2, label %bb.r [
    i32 3, label %bb.j
    i32 4, label %bb.n
    i32 5, label %bb.p
    i32 6, label %bb.p
  ]

bb.j:                                             ; preds = %._crit_edge
  %i.bb = and i32 %3, 2
  %.not69 = icmp eq i32 %i.bb, 0
  %i.bc = or disjoint i32 %5, -2147483648
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp ult i64 %.155.lcssa, %i.bd
  %or.cond78 = select i1 %.not69, i1 %i.be, i1 false
  br i1 %or.cond78, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bf = icmp eq i64 %.155.lcssa, 0
  %i.bg = icmp ne i32 %5, 0                       ; 2 uses
  %or.cond = and i1 %i.bg, %i.bf
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = trunc nuw i64 %.155.lcssa to i32        ; 2 uses
  %i.bi = sub i32 0, %i.bh
  %i.bj = select i1 %i.bg, i32 %i.bi, i32 %i.bh
  store i32 %i.bj, ptr %1, align 8, !tbaa !9
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bk = and i32 %3, 16
  %.not70 = icmp eq i32 %i.bk, 0
  br i1 %.not70, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.bl = icmp ugt i32 %6, 8
  br i1 %i.bl, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not71 = icmp eq i32 %5, 0
  %i.bm = trunc i64 %.155.lcssa to i32            ; 2 uses
  %i.bn = sub i32 0, %i.bm
  %i.bo = select i1 %.not71, i32 %i.bm, i32 %i.bn
  store i32 %i.bo, ptr %1, align 8, !tbaa !9
  br label %bb.y

bb.p:                                             ; preds = %._crit_edge, %._crit_edge
  br i1 %i.a, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not68 = icmp eq i32 %5, 0
  %i.bp = sub i64 0, %.155.lcssa
  %i.bq = select i1 %.not68, i64 %.155.lcssa, i64 %i.bp
  store i64 %i.bq, ptr %1, align 8, !tbaa !9
  br label %bb.y

bb.r:                                             ; preds = %bb.m, %._crit_edge
  %.062 = phi i32 [ %2, %._crit_edge ], [ 1, %bb.m ]
  %.not72 = icmp ult i64 %.155.lcssa, 4611686018427387904 ; 2 uses
  %i.br = lshr i64 %.155.lcssa, 2
  %i.bs = and i64 %.155.lcssa, 3
  %i.bt = or i64 %i.br, %i.bs
  %i.bu = add nsw i32 %.060.lcssa, 2
  %.161 = select i1 %.not72, i32 %.060.lcssa, i32 %i.bu ; 5 uses
  %.2 = select i1 %.not72, i64 %.155.lcssa, i64 %i.bt ; 8 uses
  %i.bv = icmp slt i32 %.161, -1074
  %i.bw = icmp ne i64 %.2, 0
  %i.bx = and i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.s, label %bb.w, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = xor i32 %i.bz, 63
  %i.cb = add nsw i32 %.161, 1075
  %i.cc = add nsw i32 %i.cb, %i.ca
  %or.cond.i = icmp ult i32 %i.cc, 53
  br i1 %or.cond.i, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.cd = sub nuw nsw i32 -1075, %.161
  %i.ce = zext nneg i32 %i.cd to i64              ; 3 uses
  %i.cf = shl nuw i64 1, %i.ce                    ; 2 uses
  %i.cg = and i64 %i.cf, %.2
  %.not.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = shl i64 2, %i.ce                        ; 2 uses
  %i.ci = add i64 %i.cf, -1
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = and i64 %i.cj, %.2
  %.not33.i = icmp eq i64 %i.ck, 0
  %i.cl = select i1 %.not33.i, i64 0, i64 %i.ch
  %spec.select.i = add i64 %i.cl, %.2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.027.i = phi i64 [ %.2, %bb.t ], [ %spec.select.i, %bb.u ]
  %.neg.i = shl i64 -2, %i.ce
  %i.cm = and i64 %.027.i, %.neg.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.v, %bb.s
  %.2.ph.i = phi i64 [ %.2, %bb.s ], [ %i.cm, %bb.v ]
  %i.cn = sitofp i64 %.2.ph.i to double           ; 2 uses
  %.not3437.i = icmp eq i32 %5, 0
  %i.co = fneg double %i.cn
  %.038.i = select i1 %.not3437.i, double %i.cn, double %i.co
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.cp = sitofp i64 %.2 to double                ; 2 uses
  %.not34.i = icmp eq i32 %5, 0
  %i.cq = fneg double %i.cp
  %.0.i = select i1 %.not34.i, double %i.cp, double %i.cq ; 2 uses
  %.not35.i = icmp eq i32 %.161, 0
  br i1 %.not35.i, label %strscan_double.exit, label %bb.x

end_hunk_0
