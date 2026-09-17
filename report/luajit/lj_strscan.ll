Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_strscan?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lj_strscan_scan:bb.a
bb.bl:                                            ; preds = %bb.bk, %bb.at
  %.18 = phi ptr [ %.17, %bb.bk ], [ %.12, %bb.at ]
  %.6 = phi i32 [ %.5208, %bb.bk ], [ %.1204, %bb.at ] ; 6 uses
  %i.fl = icmp ult ptr %.18, %i.b
  br i1 %i.fl, label %.thread272, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fm = icmp eq i32 %.6, 3
  %i.fn = icmp eq i32 %.1200, 10
  %or.cond4 = and i1 %i.fm, %i.fn
  br i1 %or.cond4, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  %i.fo = icmp ult i32 %.3194, 10
  br i1 %i.fo, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fp = icmp eq i32 %.3194, 10
  br i1 %i.fp, label %bb.bp, label %.thread279

bb.bp:                                            ; preds = %bb.bo
  %i.fq = icmp ult i8 %i.by, 51
  %i.fr = or disjoint i32 %.1212, -2147483648
  %i.fs = icmp ult i32 %.0186, %i.fr
  %or.cond267 = select i1 %i.fq, i1 %i.fs, i1 false
  br i1 %or.cond267, label %bb.bq, label %.thread279

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.ft = and i32 %3, 2
  %.not253 = icmp eq i32 %i.ft, 0
  br i1 %.not253, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not254 = icmp eq i32 %.1212, 0
  %i.fu = uitofp i32 %.0186 to double             ; 2 uses
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
  %.not79 = icmp eq i32 %6, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = tail call i32 @llvm.umin.i32(i32 %6, i32 16) ; 3 uses
  %xtraiter = and i32 %i.a, 1
  %i.b = icmp eq i32 %6, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.a, 30
  br label %.lr.ph

.preheader.unr-lcssa:                             ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.unr-lcssa, %.lr.ph.preheader
  %.05481.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %.preheader.unr-lcssa ]
  %.05780.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.al, %.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.c = load i8, ptr %.05780.epil.init, align 1, !tbaa !9 ; 2 uses
  %.not74.epil = icmp eq i8 %i.c, 46
  br i1 %.not74.epil, label %bb.b, label %.preheader.epilog-lcssa

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %.05780.epil.init, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  br label %.preheader.epilog-lcssa

.preheader.epilog-lcssa:                          ; preds = %bb.b, %.lr.ph.epil.preheader
  %.158.epil = phi ptr [ %i.d, %bb.b ], [ %.05780.epil.init, %.lr.ph.epil.preheader ]
  %.in75.epil = phi i8 [ %i.e, %bb.b ], [ %i.c, %.lr.ph.epil.preheader ] ; 2 uses
  %i.f = zext i8 %.in75.epil to i64               ; 2 uses
  %i.g = icmp ugt i8 %.in75.epil, 57
  %i.h = add nuw nsw i64 %i.f, 9
  %spec.select.epil = select i1 %i.g, i64 %i.h, i64 %i.f
  %i.i = shl i64 %.05481.epil.init, 4
  %i.j = and i64 %spec.select.epil, 15
  %i.k = or disjoint i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.158.epil, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.preheader.epilog-lcssa
  %.lcssa105 = phi i64 [ %i.ak, %.preheader.unr-lcssa ], [ %i.k, %.preheader.epilog-lcssa ] ; 3 uses
  %.lcssa104 = phi ptr [ %i.al, %.preheader.unr-lcssa ], [ %i.l, %.preheader.epilog-lcssa ] ; 2 uses
  %7 = icmp ugt i32 %6, 16
  br i1 %7, label %.lr.ph88.preheader, label %._crit_edge

.lr.ph88.preheader:                               ; preds = %.preheader
  %xtraiter109 = and i32 %6, 1
  %i.m = icmp eq i32 %6, 17
  br i1 %i.m, label %.lr.ph88.epil.preheader, label %.lr.ph88.preheader.new

.lr.ph88.preheader.new:                           ; preds = %.lr.ph88.preheader
  %i.n = and i32 %6, -2
  %i.o = add i32 %i.n, -18
  br label %.lr.ph88

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %.05481 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ak, %bb.e ]
  %.05780 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.al, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.p = load i8, ptr %.05780, align 1, !tbaa !9  ; 2 uses
  %.not74 = icmp eq i8 %i.p, 46
  br i1 %.not74, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.05780, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %.158 = phi ptr [ %i.q, %bb.c ], [ %.05780, %.lr.ph ] ; 3 uses
  %.in75 = phi i8 [ %i.r, %bb.c ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.s = zext i8 %.in75 to i64
  %i.t = icmp ugt i8 %.in75, 57
  %i.u = getelementptr inbounds nuw i8, ptr %.158, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9     ; 2 uses
  %.not74.1 = icmp eq i8 %i.v, 46
  br i1 %.not74.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.1
  %i.w = getelementptr inbounds nuw i8, ptr %.158, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %i.y = phi i64 [ 2, %bb.d ], [ 1, %.lr.ph.1 ]
  %.in75.1 = phi i8 [ %i.x, %bb.d ], [ %i.v, %.lr.ph.1 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.158, i64 %i.y
  %i.aa = zext i8 %.in75.1 to i64                 ; 2 uses
  %i.ab = icmp ugt i8 %.in75.1, 57
  %i.ac = add nuw nsw i64 %i.aa, 9
  %spec.select.1 = select i1 %i.ab, i64 %i.ac, i64 %i.aa
  %i.ad = shl i64 %.05481, 8
  %i.ae = shl nuw nsw i64 %i.s, 4                 ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 144
  %i.ag = select i1 %i.t, i64 %i.af, i64 %i.ae
  %i.ah = and i64 %i.ag, 240
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = and i64 %spec.select.1, 15
  %i.ak = or disjoint i64 %i.aj, %i.ai            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !18

.lr.ph88:                                         ; preds = %bb.h, %.lr.ph88.preheader.new
  %.15586 = phi i64 [ %.lcssa105, %.lr.ph88.preheader.new ], [ %i.ba, %bb.h ]
  %.25985 = phi ptr [ %.lcssa104, %.lr.ph88.preheader.new ], [ %i.bb, %bb.h ] ; 3 uses
  %niter114 = phi i32 [ 0, %.lr.ph88.preheader.new ], [ %niter114.next.1, %bb.h ] ; 2 uses
  %i.am = load i8, ptr %.25985, align 1, !tbaa !9 ; 2 uses
  %.not73 = icmp eq i8 %i.am, 46
  br i1 %.not73, label %bb.f, label %.lr.ph88.1

bb.f:                                             ; preds = %.lr.ph88
  %i.an = getelementptr inbounds nuw i8, ptr %.25985, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  br label %.lr.ph88.1

.lr.ph88.1:                                       ; preds = %.lr.ph88, %bb.f
  %.3 = phi ptr [ %i.an, %bb.f ], [ %.25985, %.lr.ph88 ] ; 3 uses
  %.in = phi i8 [ %i.ao, %bb.f ], [ %i.am, %.lr.ph88 ]
  %i.ap = icmp ne i8 %.in, 48
  %i.aq = zext i1 %i.ap to i64
  %i.ar = or i64 %.15586, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9   ; 2 uses
  %.not73.1 = icmp eq i8 %i.at, 46
  br i1 %.not73.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph88.1
  %i.au = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph88.1
  %i.aw = phi i64 [ 2, %bb.g ], [ 1, %.lr.ph88.1 ]
  %.in.1 = phi i8 [ %i.av, %bb.g ], [ %i.at, %.lr.ph88.1 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.3, i64 %i.aw
  %i.ay = icmp ne i8 %.in.1, 48
  %i.az = zext i1 %i.ay to i64
  %i.ba = or i64 %i.ar, %i.az                     ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %niter114.next.1 = add i32 %niter114, 2
  %niter114.ncmp.1 = icmp eq i32 %niter114, %i.o
  br i1 %niter114.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph88, !llvm.loop !19

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod110.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %._crit_edge.loopexit, label %.lr.ph88.epil.preheader

.lr.ph88.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph88.preheader
  %.15586.epil.init = phi i64 [ %.lcssa105, %.lr.ph88.preheader ], [ %i.ba, %._crit_edge.loopexit.unr-lcssa ]
  %.25985.epil.init = phi ptr [ %.lcssa104, %.lr.ph88.preheader ], [ %i.bb, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i32 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.bc = load i8, ptr %.25985.epil.init, align 1, !tbaa !9 ; 2 uses
  %.not73.epil = icmp eq i8 %i.bc, 46
  br i1 %.not73.epil, label %bb.i, label %._crit_edge.loopexit.epilog-lcssa

bb.i:                                             ; preds = %.lr.ph88.epil.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %.25985.epil.init, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.i, %.lr.ph88.epil.preheader
  %.in.epil = phi i8 [ %i.be, %bb.i ], [ %i.bc, %.lr.ph88.epil.preheader ]
  %i.bf = icmp ne i8 %.in.epil, 48
  %i.bg = zext i1 %i.bf to i64
  %i.bh = or i64 %.15586.epil.init, %i.bg
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge.loopexit.epilog-lcssa
  %.lcssa = phi i64 [ %i.ba, %._crit_edge.loopexit.unr-lcssa ], [ %i.bh, %._crit_edge.loopexit.epilog-lcssa ]
  %i.bi = shl i32 %6, 2
  %i.bj = add i32 %4, %i.bi
  %i.bk = add i32 %i.bj, -64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a, %.preheader
  %8 = phi i1 [ false, %.preheader ], [ false, %bb.a ], [ true, %._crit_edge.loopexit ]
  %.060.lcssa = phi i32 [ %4, %.preheader ], [ %4, %bb.a ], [ %i.bk, %._crit_edge.loopexit ] ; 2 uses
  %.155.lcssa = phi i64 [ %.lcssa105, %.preheader ], [ 0, %bb.a ], [ %.lcssa, %._crit_edge.loopexit ] ; 10 uses
  switch i32 %2, label %bb.r [
    i32 3, label %bb.j
    i32 4, label %bb.n
    i32 5, label %bb.p
    i32 6, label %bb.p
  ]

bb.j:                                             ; preds = %._crit_edge
  %i.bl = and i32 %3, 2
  %.not69 = icmp eq i32 %i.bl, 0
  %i.bm = or disjoint i32 %5, -2147483648
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp ult i64 %.155.lcssa, %i.bn
  %or.cond78 = select i1 %.not69, i1 %i.bo, i1 false
  br i1 %or.cond78, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %.155.lcssa, 0
  %i.bq = icmp ne i32 %5, 0                       ; 2 uses
  %or.cond = and i1 %i.bq, %i.bp
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = trunc nuw i64 %.155.lcssa to i32        ; 2 uses
  %i.bs = sub i32 0, %i.br
  %i.bt = select i1 %i.bq, i32 %i.bs, i32 %i.br
  store i32 %i.bt, ptr %1, align 8, !tbaa !9
  br label %bb.y

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bu = and i32 %3, 16
  %.not70 = icmp eq i32 %i.bu, 0
  br i1 %.not70, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.bv = icmp ugt i32 %6, 8
  br i1 %i.bv, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not71 = icmp eq i32 %5, 0
  %i.bw = trunc i64 %.155.lcssa to i32            ; 2 uses
  %i.bx = sub i32 0, %i.bw
  %i.by = select i1 %.not71, i32 %i.bw, i32 %i.bx
  store i32 %i.by, ptr %1, align 8, !tbaa !9
  br label %bb.y

bb.p:                                             ; preds = %._crit_edge, %._crit_edge
  br i1 %8, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not68 = icmp eq i32 %5, 0
  %i.bz = sub i64 0, %.155.lcssa
  %i.ca = select i1 %.not68, i64 %.155.lcssa, i64 %i.bz
  store i64 %i.ca, ptr %1, align 8, !tbaa !9
  br label %bb.y

bb.r:                                             ; preds = %bb.m, %._crit_edge
  %.062 = phi i32 [ %2, %._crit_edge ], [ 1, %bb.m ]
  %.not72 = icmp ult i64 %.155.lcssa, 4611686018427387904 ; 2 uses
  %i.cb = lshr i64 %.155.lcssa, 2
  %i.cc = and i64 %.155.lcssa, 3
  %i.cd = or i64 %i.cb, %i.cc
  %i.ce = add nsw i32 %.060.lcssa, 2
  %.161 = select i1 %.not72, i32 %.060.lcssa, i32 %i.ce ; 5 uses
  %.2 = select i1 %.not72, i64 %.155.lcssa, i64 %i.cd ; 8 uses
  %i.cf = icmp slt i32 %.161, -1074
  %i.cg = icmp ne i64 %.2, 0
  %i.ch = and i1 %i.cf, %i.cg
  br i1 %i.ch, label %bb.s, label %bb.w, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = xor i32 %i.cj, 63
  %i.cl = add nsw i32 %.161, 1075
  %i.cm = add nsw i32 %i.cl, %i.ck
  %or.cond.i = icmp ult i32 %i.cm, 53
  br i1 %or.cond.i, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.cn = sub nuw nsw i32 -1075, %.161
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.cp = shl nuw i64 1, %i.co                    ; 2 uses
  %i.cq = and i64 %i.cp, %.2
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = shl i64 2, %i.co                        ; 2 uses
  %i.cs = add i64 %i.cp, -1
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = and i64 %i.ct, %.2
  %.not33.i = icmp eq i64 %i.cu, 0
  %i.cv = select i1 %.not33.i, i64 0, i64 %i.cr
  %spec.select.i = add i64 %i.cv, %.2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.027.i = phi i64 [ %.2, %bb.t ], [ %spec.select.i, %bb.u ]
  %.neg.i = shl i64 -2, %i.co
  %i.cw = and i64 %.027.i, %.neg.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.v, %bb.s
  %.2.ph.i = phi i64 [ %.2, %bb.s ], [ %i.cw, %bb.v ]
  %i.cx = sitofp i64 %.2.ph.i to double           ; 2 uses
  %.not3437.i = icmp eq i32 %5, 0
  %i.cy = fneg double %i.cx
  %.038.i = select i1 %.not3437.i, double %i.cx, double %i.cy
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.cz = sitofp i64 %.2 to double                ; 2 uses
  %.not34.i = icmp eq i32 %5, 0
  %i.da = fneg double %i.cz
  %.0.i = select i1 %.not34.i, double %i.cz, double %i.da ; 2 uses
  %.not35.i = icmp eq i32 %.161, 0
  br i1 %.not35.i, label %strscan_double.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread.i
  %.040.i = phi double [ %.038.i, %.thread.i ], [ %.0.i, %bb.w ]
  %i.db = tail call double @ldexp(double noundef %.040.i, i32 noundef %.161) #12
  br label %strscan_double.exit

strscan_double.exit:                              ; preds = %bb.w, %bb.x
  %.1.i = phi double [ %i.db, %bb.x ], [ %.0.i, %bb.w ]
  store double %.1.i, ptr %1, align 8, !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %bb.p, %bb.n, %strscan_double.exit, %bb.q, %bb.o, %bb.l
  %.056 = phi i32 [ %.062, %strscan_double.exit ], [ %2, %bb.q ], [ 4, %bb.o ], [ 3, %bb.l ], [ 0, %bb.n ], [ 0, %bb.p ]
  ret i32 %.056
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc noundef i32 @strscan_bin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = icmp ne i32 %4, 0
  %i.b = icmp ugt i32 %6, 64
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not56 = icmp eq i32 %6, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.059 = phi i32 [ %i.j, %bb.b ], [ %6, %.preheader ]
  %.03858 = phi i64 [ %i.i, %bb.b ], [ 0, %.preheader ]
  %.04057 = phi ptr [ %i.k, %bb.b ], [ %0, %.preheader ] ; 2 uses
  %i.c = load i8, ptr %.04057, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = and i32 %i.d, 254
  %.not51 = icmp eq i32 %i.e, 48
  br i1 %.not51, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = shl i64 %.03858, 1
  %i.g = and i32 %i.d, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = or disjoint i64 %i.f, %i.h               ; 2 uses
  %i.j = add nsw i32 %.059, -1                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.04057, i64 1
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.038.lcssa = phi i64 [ 0, %.preheader ], [ %i.i, %bb.b ] ; 9 uses
  switch i32 %2, label %bb.i [
    i32 3, label %bb.c
    i32 4, label %bb.f
    i32 5, label %bb.h
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.l = and i32 %3, 2
  %.not46 = icmp eq i32 %i.l, 0
  %i.m = or disjoint i32 %5, -2147483648
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ult i64 %.038.lcssa, %i.n
  %or.cond54 = select i1 %.not46, i1 %i.o, i1 false
  br i1 %or.cond54, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i32 %5, 0
  %i.p = trunc nuw i64 %.038.lcssa to i32         ; 2 uses
  %i.q = sub i32 0, %i.p
  %i.r = select i1 %.not47, i32 %i.p, i32 %i.q
  store i32 %i.r, ptr %1, align 8, !tbaa !9
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = and i32 %3, 16
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.t = icmp ugt i32 %6, 32
  br i1 %i.t, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not49 = icmp eq i32 %5, 0
  %i.u = trunc i64 %.038.lcssa to i32             ; 2 uses
  %i.v = sub i32 0, %i.u
  %i.w = select i1 %.not49, i32 %i.u, i32 %i.v
  store i32 %i.w, ptr %1, align 8, !tbaa !9
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  %.not45 = icmp eq i32 %5, 0
  %i.x = sub i64 0, %.038.lcssa
  %i.y = select i1 %.not45, i64 %.038.lcssa, i64 %i.x
  store i64 %i.y, ptr %1, align 8, !tbaa !9
  br label %.loopexit

bb.i:                                             ; preds = %bb.e, %._crit_edge
  %.042 = phi i32 [ %2, %._crit_edge ], [ 1, %bb.e ]
  %.not50 = icmp ult i64 %.038.lcssa, 4611686018427387904 ; 2 uses
  %i.z = lshr i64 %.038.lcssa, 2
  %i.aa = and i64 %.038.lcssa, 3
  %i.ab = or i64 %i.z, %i.aa
  %.1 = select i1 %.not50, i64 %.038.lcssa, i64 %i.ab
  %i.ac = uitofp nneg i64 %.1 to double           ; 2 uses
  %.not34.i = icmp eq i32 %5, 0
  %i.ad = fneg double %i.ac
  %.0.i = select i1 %.not34.i, double %i.ac, double %i.ad ; 2 uses
  br i1 %.not50, label %strscan_double.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call double @ldexp(double noundef %.0.i, i32 noundef 2) #12
  br label %strscan_double.exit

strscan_double.exit:                              ; preds = %bb.i, %bb.j
  %.1.i = phi double [ %i.ae, %bb.j ], [ %.0.i, %bb.i ]
  store double %.1.i, ptr %1, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.a, %strscan_double.exit, %bb.h, %bb.g, %bb.d
  %.039 = phi i32 [ %2, %bb.h ], [ 0, %bb.a ], [ %.042, %strscan_double.exit ], [ 0, %bb.f ], [ 4, %bb.g ], [ 3, %bb.d ], [ 0, %.lr.ph ]
  ret i32 %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i32 @strscan_dec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
end_hunk_0
begin_hunk_1_@strscan_dec:bb.a
  %i.bg = load i8, ptr %.7243, align 1, !tbaa !9  ; 2 uses
  %.not270 = icmp eq i8 %i.bg, 46
  br i1 %.not270, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader334
  %i.bh = getelementptr inbounds nuw i8, ptr %.7243, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %.preheader334, %bb.o
  %.8 = phi ptr [ %i.bh, %bb.o ], [ %.7243, %.preheader334 ]
  %.in271 = phi i8 [ %i.bi, %bb.o ], [ %i.bg, %.preheader334 ]
  %.not272 = icmp eq i8 %.in271, 48
  br i1 %.not272, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds i8, ptr %.2218.ptr, i64 -1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bl = or i8 %i.bk, 1
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !9
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.8, i64 1
  %i.bn = add i32 %.1223, -1                      ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, 800
  br i1 %i.bo, label %.preheader334, label %.thread, !llvm.loop !22

.loopexit336:                                     ; preds = %.lr.ph349.preheader, %.preheader335
  %.4235 = phi i32 [ %i.bd, %.lr.ph349.preheader ], [ %.1232, %.preheader335 ] ; 2 uses
  %.4226 = phi i32 [ %i.bf, %.lr.ph349.preheader ], [ %.0222, %.preheader335 ] ; 2 uses
  %.5221.idx = phi i64 [ %i.ay, %.lr.ph349.preheader ], [ %.2218.idx, %.preheader335 ] ; 2 uses
  %.5221.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5221.idx ; 5 uses
  %i.bp = icmp samesign ult i32 %.4226, 21
  %i.bq = icmp eq i32 %.4235, 0
  %or.cond = and i1 %i.bq, %i.bp
  br i1 %or.cond, label %bb.s, label %.thread

._crit_edge358.thread:                            ; preds = %bb.a
  store i8 0, ptr %i.a, align 16, !tbaa !9
  br label %bb.u

bb.s:                                             ; preds = %.loopexit336
  %i.br = load i8, ptr %i.a, align 16, !tbaa !9   ; 2 uses
  %i.bs = zext i8 %i.br to i64                    ; 2 uses
  %i.bt = icmp sgt i64 %.5221.idx, 1
  br i1 %i.bt, label %.lr.ph357.preheader, label %._crit_edge358

.lr.ph357.preheader:                              ; preds = %bb.s
  %.0212353 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %.lr.ph357

.lr.ph357:                                        ; preds = %.lr.ph357.preheader, %.lr.ph357
  %.0212355 = phi ptr [ %.0212, %.lr.ph357 ], [ %.0212353, %.lr.ph357.preheader ] ; 2 uses
  %.0211354 = phi i64 [ %i.bx, %.lr.ph357 ], [ %i.bs, %.lr.ph357.preheader ]
  %i.bu = mul i64 %.0211354, 100
  %i.bv = load i8, ptr %.0212355, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i64
  %i.bx = add i64 %i.bu, %i.bw                    ; 2 uses
  %.0212 = getelementptr inbounds nuw i8, ptr %.0212355, i64 1 ; 2 uses
  %i.by = icmp ult ptr %.0212, %.5221.ptr
  br i1 %i.by, label %.lr.ph357, label %._crit_edge358, !llvm.loop !23

._crit_edge358:                                   ; preds = %.lr.ph357, %bb.s
  %.0211.lcssa = phi i64 [ %i.bs, %bb.s ], [ %i.bx, %.lr.ph357 ] ; 3 uses
  %i.bz = icmp eq i32 %.4226, 20
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge358
  %i.ca = icmp ugt i8 %i.br, 18
  %i.cb = icmp sgt i64 %.0211.lcssa, -1
  %or.cond4 = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond4, label %.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge358.thread, %bb.t, %._crit_edge358
  %.0211.lcssa464 = phi i64 [ 0, %._crit_edge358.thread ], [ %.0211.lcssa, %bb.t ], [ %.0211.lcssa, %._crit_edge358 ] ; 8 uses
  %.5221.ptr453458463 = phi ptr [ %i.a, %._crit_edge358.thread ], [ %.5221.ptr, %bb.t ], [ %.5221.ptr, %._crit_edge358 ]
  switch i32 %2, label %bb.ab [
    i32 3, label %bb.v
    i32 4, label %bb.y
    i32 5, label %bb.aa
    i32 6, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  %i.cc = and i32 %3, 2
  %.not274 = icmp eq i32 %i.cc, 0
  %i.cd = or disjoint i32 %5, -2147483648
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp ult i64 %.0211.lcssa464, %i.ce
  %or.cond295 = select i1 %.not274, i1 %i.cf, i1 false
  br i1 %or.cond295, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not275 = icmp eq i32 %5, 0
  %i.cg = trunc nuw i64 %.0211.lcssa464 to i32    ; 2 uses
  %i.ch = sub i32 0, %i.cg
  %i.ci = select i1 %.not275, i32 %i.cg, i32 %i.ch
  store i32 %i.ci, ptr %1, align 8, !tbaa !9
  br label %.thread305

bb.x:                                             ; preds = %bb.v
  %i.cj = and i32 %3, 16
  %.not276 = icmp eq i32 %i.cj, 0
  br i1 %.not276, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.not277 = icmp ult i64 %.0211.lcssa464, 4294967296
  br i1 %.not277, label %bb.z, label %.thread305

bb.z:                                             ; preds = %bb.y
  %.not278 = icmp eq i32 %5, 0
  %i.ck = trunc nuw i64 %.0211.lcssa464 to i32    ; 2 uses
  %i.cl = sub i32 0, %i.ck
  %i.cm = select i1 %.not278, i32 %i.ck, i32 %i.cl
  store i32 %i.cm, ptr %1, align 8, !tbaa !9
  br label %.thread305

bb.aa:                                            ; preds = %bb.u, %bb.u
  %.not273 = icmp eq i32 %5, 0
  %i.cn = sub i64 0, %.0211.lcssa464
  %i.co = select i1 %.not273, i64 %.0211.lcssa464, i64 %i.cn
  store i64 %i.co, ptr %1, align 8, !tbaa !9
  br label %.thread305

bb.ab:                                            ; preds = %bb.x, %bb.u
  %.0244 = phi i32 [ %2, %bb.u ], [ 1, %bb.x ]    ; 2 uses
  %i.cp = icmp slt i64 %.0211.lcssa464, 0
  br i1 %i.cp, label %.thread309, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = uitofp nneg i64 %.0211.lcssa464 to double ; 2 uses
  %.not279 = icmp eq i32 %5, 0
  %i.cr = fneg double %i.cq
  %.0210 = select i1 %.not279, double %i.cq, double %i.cr
  store double %.0210, ptr %1, align 8, !tbaa !9
  br label %.thread305

.thread:                                          ; preds = %bb.r, %bb.q, %bb.t, %.loopexit336
  %.5221303 = phi ptr [ %.5221.ptr, %bb.t ], [ %.5221.ptr, %.loopexit336 ], [ %.2218.ptr, %bb.q ], [ %.2218.ptr, %bb.r ] ; 2 uses
  %.4235302 = phi i32 [ 0, %bb.t ], [ %.4235, %.loopexit336 ], [ %.1232, %bb.q ], [ %.1232, %bb.r ] ; 2 uses
  %i.cs = icmp eq i32 %2, 3
  br i1 %i.cs, label %bb.ad, label %.thread309

bb.ad:                                            ; preds = %.thread
  %i.ct = and i32 %3, 16
  %.not280 = icmp eq i32 %i.ct, 0
  br i1 %.not280, label %bb.ae, label %.thread305

.thread309:                                       ; preds = %bb.ab, %.thread
  %.3247318 = phi i32 [ %2, %.thread ], [ %.0244, %bb.ab ] ; 2 uses
  %.4235302317 = phi i32 [ %.4235302, %.thread ], [ 0, %bb.ab ]
  %.5221303315 = phi ptr [ %.5221303, %.thread ], [ %.5221.ptr453458463, %bb.ab ]
  %i.cu = icmp ugt i32 %.3247318, 3
  br i1 %i.cu, label %.thread305, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread309
  %.4235302316 = phi i32 [ %.4235302317, %.thread309 ], [ %.4235302, %bb.ad ]
  %.5221303314 = phi ptr [ %.5221303315, %.thread309 ], [ %.5221303, %bb.ad ]
  %.4248 = phi i32 [ %.3247318, %.thread309 ], [ 1, %bb.ad ] ; 3 uses
  %i.cv = ptrtoint ptr %.5221303314 to i64
  %i.cw = ptrtoint ptr %i.a to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = trunc i64 %i.cx to i32                  ; 4 uses
  %i.cz = ashr i32 %.4235302316, 1
  %i.da = add nsw i32 %i.cz, %i.cy                ; 6 uses
  %i.db = icmp sgt i32 %i.da, 155
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.not287 = icmp eq i32 %5, 0
  %. = select i1 %.not287, i64 9218868437227405312, i64 -4503599627370496
  store i64 %., ptr %1, align 8, !tbaa !9
  br label %.thread305

bb.ag:                                            ; preds = %bb.ae
  %i.dc = icmp slt i32 %i.da, -163
  br i1 %i.dc, label %bb.ah, label %.preheader333

.preheader333:                                    ; preds = %bb.ag
  %i.dd = icmp slt i32 %i.da, 9
  br i1 %i.dd, label %.lr.ph373, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %.not286 = icmp eq i32 %5, 0
  %i.de = select i1 %.not286, double 0.000000e+00, double -0.000000e+00
  store double %i.de, ptr %1, align 8, !tbaa !9
  br label %.thread305

.lr.ph373:                                        ; preds = %.preheader333, %bb.an
  %.0189372 = phi i32 [ %.1190, %bb.an ], [ %i.da, %.preheader333 ] ; 4 uses
  %.0192371 = phi i32 [ %7, %bb.an ], [ 0, %.preheader333 ] ; 2 uses
  %.0195370 = phi i32 [ %.5200, %bb.an ], [ %i.cy, %.preheader333 ] ; 5 uses
  %.0202369 = phi i32 [ %.1203, %bb.an ], [ 0, %.preheader333 ] ; 6 uses
  %i.df = sub i32 %.0195370, %.0202369
  %i.dg = and i32 %i.df, 511
  %i.dh = icmp slt i32 %.0189372, %i.dg
  br i1 %i.dh, label %bb.ai, label %._crit_edge393

bb.ai:                                            ; preds = %.lr.ph373
  %i.di = add i32 %.0195370, 511
  %.0188360 = and i32 %i.di, 511                  ; 3 uses
  %i.dj = zext nneg i32 %.0188360 to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dj ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !9
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = shl nuw nsw i32 %i.dm, 6
  %i.do = mul nuw nsw i32 %i.dm, 83888
  %i.dp = lshr i32 %i.do, 17                      ; 3 uses
  %.neg361 = mul nsw i32 %i.dp, -100
  %i.dq = add nsw i32 %.neg361, %i.dn             ; 2 uses
  %i.dr = trunc i32 %i.dq to i8
  store i8 %i.dr, ptr %i.dk, align 1, !tbaa !9
  %i.ds = icmp eq i32 %.0188360, %.0202369
  br i1 %i.ds, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.ai, %.lr.ph365
  %i.dt = phi i32 [ %i.ek, %.lr.ph365 ], [ %i.dq, %bb.ai ]
  %i.du = phi i32 [ %i.ej, %.lr.ph365 ], [ %i.dp, %bb.ai ]
  %.0188363 = phi i32 [ %.0188, %.lr.ph365 ], [ %.0188360, %bb.ai ] ; 3 uses
  %.1196362 = phi i32 [ %.3198.ph, %.lr.ph365 ], [ %.0195370, %bb.ai ] ; 2 uses
  %i.dv = icmp eq i32 %i.dt, 0
  %i.dw = add i32 %.1196362, 511
  %i.dx = and i32 %i.dw, 511
  %i.dy = icmp eq i32 %.0188363, %i.dx
  %i.dz = select i1 %i.dv, i1 %i.dy, i1 false
  %.3198.ph = select i1 %i.dz, i32 %.0188363, i32 %.1196362 ; 2 uses
  %i.ea = add nuw nsw i32 %.0188363, 511
  %.0188 = and i32 %i.ea, 511                     ; 3 uses
  %i.eb = zext nneg i32 %.0188 to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eb ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !9
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 6
  %i.eg = add nuw nsw i32 %i.ef, %i.du            ; 2 uses
  %i.eh = lshr i32 %i.eg, 2
  %i.ei = mul nuw nsw i32 %i.eh, 5243
  %i.ej = lshr i32 %i.ei, 17                      ; 3 uses
  %.neg = mul nsw i32 %i.ej, -100
  %i.ek = add nsw i32 %.neg, %i.eg                ; 2 uses
  %i.el = trunc i32 %i.ek to i8
  store i8 %i.el, ptr %i.ec, align 1, !tbaa !9
  %i.em = icmp eq i32 %.0188, %.0202369
  br i1 %i.em, label %._crit_edge366, label %.lr.ph365

._crit_edge366:                                   ; preds = %.lr.ph365, %bb.ai
  %.1196.lcssa = phi i32 [ %.0195370, %bb.ai ], [ %.3198.ph, %.lr.ph365 ] ; 5 uses
  %.lcssa340 = phi i32 [ %i.dp, %bb.ai ], [ %i.ej, %.lr.ph365 ] ; 2 uses
  %7 = add nsw i32 %.0192371, -6                  ; 2 uses
  %.not285 = icmp eq i32 %.lcssa340, 0
  br i1 %.not285, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge366
  %i.en = add nuw nsw i32 %.0202369, 511
  %i.eo = and i32 %i.en, 511                      ; 3 uses
  %i.ep = add i32 %.1196.lcssa, 511
  %i.eq = and i32 %i.ep, 511                      ; 3 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !9   ; 2 uses
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = icmp eq i32 %i.eo, %.1196.lcssa
  br i1 %i.ev, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ew = add nuw nsw i32 %.1196.lcssa, 510
  %i.ex = and i32 %i.ew, 511
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !9
  %i.fb = or i8 %i.fa, %i.et
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ak, %bb.al
  %.4199 = phi i32 [ %.1196.lcssa, %bb.ak ], [ %i.eq, %bb.al ], [ %i.eq, %bb.aj ]
  %i.fc = trunc nuw i32 %.lcssa340 to i8
  %i.fd = zext nneg i32 %i.eo to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fd
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !9
  %i.ff = add nsw i32 %.0189372, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge366
  %.1203 = phi i32 [ %i.eo, %bb.am ], [ %.0202369, %._crit_edge366 ] ; 2 uses
  %.5200 = phi i32 [ %.4199, %bb.am ], [ %.1196.lcssa, %._crit_edge366 ] ; 2 uses
  %.1190 = phi i32 [ %i.ff, %bb.am ], [ %.0189372, %._crit_edge366 ] ; 2 uses
  %i.fg = icmp slt i32 %.1190, 9
  br i1 %i.fg, label %.lr.ph373, label %._crit_edge393, !llvm.loop !24

.critedge:                                        ; preds = %.preheader333
  %.not483 = icmp eq i32 %i.da, 9
  br i1 %.not483, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %.critedge, %.loopexit332
  %.2191391 = phi i32 [ %.4, %.loopexit332 ], [ %i.da, %.critedge ]
  %.1193390 = phi i32 [ %i.fx, %.loopexit332 ], [ 0, %.critedge ]
  %.6201389 = phi i32 [ %.7339, %.loopexit332 ], [ %i.cy, %.critedge ] ; 3 uses
  %.2204388 = phi i32 [ %.4206, %.loopexit332 ], [ 0, %.critedge ] ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph392
  %.3205 = phi i32 [ %.2204388, %.lr.ph392 ], [ %.4206, %bb.ao ] ; 3 uses
  %.3 = phi i32 [ %.2191391, %.lr.ph392 ], [ %.4, %bb.ao ]
  %.0186 = phi i32 [ %.2204388, %.lr.ph392 ], [ %i.fw, %bb.ao ] ; 3 uses
  %.0184 = phi i32 [ 0, %.lr.ph392 ], [ %i.fp, %bb.ao ]
  %i.fh = zext i32 %.0186 to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %i.fk = zext i8 %i.fj to i32
  %i.fl = add nuw nsw i32 %.0184, %i.fk           ; 2 uses
  %i.fm = lshr i32 %i.fl, 6                       ; 2 uses
  %i.fn = trunc nuw nsw i32 %i.fm to i8
  store i8 %i.fn, ptr %i.fi, align 1, !tbaa !9
  %i.fo = and i32 %i.fl, 63                       ; 2 uses
  %i.fp = mul nuw nsw i32 %i.fo, 100              ; 2 uses
  %i.fq = icmp eq i32 %i.fm, 0
  %i.fr = icmp eq i32 %.0186, %.3205
  %or.cond296 = select i1 %i.fq, i1 %i.fr, i1 false ; 2 uses
  %i.fs = add i32 %.3205, 1
  %i.ft = and i32 %i.fs, 511
  %.4206 = select i1 %or.cond296, i32 %i.ft, i32 %.3205 ; 6 uses
  %i.fu = sext i1 %or.cond296 to i32
  %.4 = add nsw i32 %.3, %i.fu                    ; 4 uses
  %i.fv = add nuw i32 %.0186, 1
  %i.fw = and i32 %i.fv, 511                      ; 2 uses
  %.not283 = icmp eq i32 %i.fw, %.6201389
  br i1 %.not283, label %.preheader331, label %bb.ao, !llvm.loop !25

.preheader331:                                    ; preds = %bb.ao
  %i.fx = add nuw nsw i32 %.1193390, 6            ; 2 uses
  %.not284383 = icmp eq i32 %i.fo, 0
  br i1 %.not284383, label %.loopexit332, label %.lr.ph386

.lr.ph386:                                        ; preds = %.preheader331, %bb.aq
  %.1185385 = phi i32 [ %i.gm, %bb.aq ], [ %i.fp, %.preheader331 ] ; 2 uses
  %.7384 = phi i32 [ %i.gk, %bb.aq ], [ %.6201389, %.preheader331 ] ; 3 uses
  %i.fy = icmp eq i32 %.4206, %.7384
  br i1 %i.fy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph386
  %i.fz = add nuw nsw i32 %.4206, 511
  %i.ga = and i32 %i.fz, 511
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gb ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !9
  %i.ge = or i8 %i.gd, 1
  store i8 %i.ge, ptr %i.gc, align 1, !tbaa !9
  br label %.loopexit332

bb.aq:                                            ; preds = %.lr.ph386
  %i.gf = lshr i32 %.1185385, 6
  %i.gg = trunc nuw nsw i32 %i.gf to i8
  %i.gh = zext i32 %.7384 to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gh
  store i8 %i.gg, ptr %i.gi, align 1, !tbaa !9
  %i.gj = add nuw i32 %.7384, 1
  %i.gk = and i32 %i.gj, 511                      ; 2 uses
  %i.gl = and i32 %.1185385, 60                   ; 2 uses
  %i.gm = mul nuw nsw i32 %i.gl, 100
  %.not284 = icmp eq i32 %i.gl, 0
  br i1 %.not284, label %.loopexit332, label %.lr.ph386, !llvm.loop !26

.loopexit332:                                     ; preds = %bb.aq, %.preheader331, %bb.ap
  %.7339 = phi i32 [ %.4206, %bb.ap ], [ %.6201389, %.preheader331 ], [ %i.gk, %bb.aq ] ; 2 uses
  %i.gn = icmp sgt i32 %.4, 9
  br i1 %i.gn, label %.lr.ph392, label %._crit_edge393, !llvm.loop !27

._crit_edge393:                                   ; preds = %.loopexit332, %bb.an, %.lr.ph373, %.critedge
  %.2204.lcssa = phi i32 [ 0, %.critedge ], [ %.1203, %bb.an ], [ %.0202369, %.lr.ph373 ], [ %.4206, %.loopexit332 ] ; 2 uses
  %.6201.lcssa = phi i32 [ %i.cy, %.critedge ], [ %.5200, %bb.an ], [ %.0195370, %.lr.ph373 ], [ %.7339, %.loopexit332 ] ; 4 uses
  %.1193.lcssa = phi i32 [ 0, %.critedge ], [ %7, %bb.an ], [ %.0192371, %.lr.ph373 ], [ %i.fx, %.loopexit332 ] ; 4 uses
  %.2191.lcssa = phi i32 [ 9, %.critedge ], [ 9, %bb.an ], [ %.0189372, %.lr.ph373 ], [ %.4, %.loopexit332 ] ; 2 uses
  %i.go = zext i32 %.2204.lcssa to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gr = zext i8 %i.gq to i64                    ; 2 uses
  %.0.in398 = add i32 %.2204.lcssa, 1
  %.0399 = and i32 %.0.in398, 511                 ; 3 uses
  %i.gs = add nsw i32 %.2191.lcssa, -1            ; 2 uses
  %i.gt = icmp sgt i32 %.2191.lcssa, 1
  %i.gu = icmp ne i32 %.0399, %.6201.lcssa
  %i.gv = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %i.gv, label %.lr.ph403, label %._crit_edge404

.lr.ph403:                                        ; preds = %._crit_edge393, %.lr.ph403
  %i.gw = phi i32 [ %i.hd, %.lr.ph403 ], [ %i.gs, %._crit_edge393 ] ; 2 uses
  %.0401 = phi i32 [ %.0, %.lr.ph403 ], [ %.0399, %._crit_edge393 ] ; 2 uses
  %.0182400 = phi i64 [ %i.hc, %.lr.ph403 ], [ %i.gr, %._crit_edge393 ]
  %i.gx = mul i64 %.0182400, 100
  %i.gy = zext nneg i32 %.0401 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.hb = zext i8 %i.ha to i64
  %i.hc = add i64 %i.gx, %i.hb                    ; 2 uses
  %.0.in = add nuw nsw i32 %.0401, 1
  %.0 = and i32 %.0.in, 511                       ; 3 uses
  %i.hd = add nsw i32 %i.gw, -1                   ; 2 uses
  %i.he = icmp samesign ugt i32 %i.gw, 1
  %i.hf = icmp ne i32 %.0, %.6201.lcssa
  %i.hg = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %i.hg, label %.lr.ph403, label %._crit_edge404, !llvm.loop !28

._crit_edge404:                                   ; preds = %.lr.ph403, %._crit_edge393
  %.0182.lcssa = phi i64 [ %i.gr, %._crit_edge393 ], [ %i.hc, %.lr.ph403 ] ; 4 uses
  %.0.lcssa = phi i32 [ %.0399, %._crit_edge393 ], [ %.0, %.lr.ph403 ] ; 2 uses
  %.lcssa = phi i32 [ %i.gs, %._crit_edge393 ], [ %i.hd, %.lr.ph403 ] ; 5 uses
  %i.hh = icmp eq i32 %.0.lcssa, %.6201.lcssa
  br i1 %i.hh, label %.preheader, label %bb.ar

.preheader:                                       ; preds = %._crit_edge404
  %i.hi = icmp sgt i32 %.lcssa, 0
  br i1 %i.hi, label %.lr.ph410.preheader, label %.loopexit

.lr.ph410.preheader:                              ; preds = %.preheader
  %xtraiter = and i32 %.lcssa, 7                  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph410.prol.loopexit, label %.lr.ph410.prol

.lr.ph410.prol:                                   ; preds = %.lr.ph410.preheader, %.lr.ph410.prol
  %.1183409.prol = phi i64 [ %i.hk, %.lr.ph410.prol ], [ %.0182.lcssa, %.lr.ph410.preheader ]
  %.6408.prol = phi i32 [ %i.hj, %.lr.ph410.prol ], [ %.lcssa, %.lr.ph410.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph410.prol ], [ 0, %.lr.ph410.preheader ]
  %i.hj = add nsw i32 %.6408.prol, -1             ; 2 uses
  %i.hk = mul i64 %.1183409.prol, 100             ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph410.prol.loopexit, label %.lr.ph410.prol, !llvm.loop !29

.lr.ph410.prol.loopexit:                          ; preds = %.lr.ph410.prol, %.lr.ph410.preheader
  %.1183409.unr = phi i64 [ %.0182.lcssa, %.lr.ph410.preheader ], [ %i.hk, %.lr.ph410.prol ]
  %.6408.unr = phi i32 [ %.lcssa, %.lr.ph410.preheader ], [ %i.hj, %.lr.ph410.prol ]
  %.lcssa498.unr = phi i64 [ poison, %.lr.ph410.preheader ], [ %i.hk, %.lr.ph410.prol ]
  %i.hl = icmp ult i32 %.lcssa, 8
  br i1 %i.hl, label %.loopexit, label %.lr.ph410

.lr.ph410:                                        ; preds = %.lr.ph410.prol.loopexit, %.lr.ph410
  %.1183409 = phi i64 [ %i.hn, %.lr.ph410 ], [ %.1183409.unr, %.lr.ph410.prol.loopexit ]
  %.6408 = phi i32 [ %i.hm, %.lr.ph410 ], [ %.6408.unr, %.lr.ph410.prol.loopexit ] ; 2 uses
  %i.hm = add nsw i32 %.6408, -8
  %i.hn = mul i64 %.1183409, 10000000000000000    ; 2 uses
  %i.ho = icmp sgt i32 %.6408, 8
  br i1 %i.ho, label %.lr.ph410, label %.loopexit, !llvm.loop !30

bb.ar:                                            ; preds = %._crit_edge404
  %i.hp = shl i64 %.0182.lcssa, 1                 ; 2 uses
end_hunk_1
