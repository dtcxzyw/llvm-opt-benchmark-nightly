Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/coder?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@Ptngc_unpack_array:bb.a
  %i.dk = load i8, ptr %.5.us.1.i.1, align 1, !tbaa !16
  %i.dl = zext i8 %i.dk to i32
  %i.dm = and i32 %.563.us.1.i.1, %i.dl
  %.not69.us.1.i.2.not = icmp eq i32 %i.dm, 0
  %i.dn = lshr i32 %.563.us.1.i.1, 1              ; 2 uses
  %.not70.us.1.i.2 = icmp eq i32 %i.dn, 0         ; 2 uses
  %.563.us.1.i.2 = select i1 %.not70.us.1.i.2, i32 128, i32 %i.dn ; 2 uses
  %.5.idx.us.1.i.2 = zext i1 %.not70.us.1.i.2 to i64
  %.5.us.1.i.2 = getelementptr inbounds nuw i8, ptr %.5.us.1.i.1, i64 %.5.idx.us.1.i.2 ; 2 uses
  %i.do = load i8, ptr %.5.us.1.i.2, align 1, !tbaa !16
  %i.dp = zext i8 %i.do to i32
  %i.dq = and i32 %.563.us.1.i.2, %i.dp
  %i.dr = shl i32 %spec.select73.us.1.i.1, 2
  %i.ds = select i1 %.not69.us.1.i.2.not, i32 0, i32 2
  %i.dt = or disjoint i32 %i.dr, %i.ds
  %.not69.us.1.i.3 = icmp ne i32 %i.dq, 0         ; 2 uses
  %i.du = zext i1 %.not69.us.1.i.3 to i32
  %spec.select73.us.1.i.3 = or disjoint i32 %i.dt, %i.du ; 3 uses
  %i.dv = lshr i32 %.563.us.1.i.2, 1              ; 2 uses
  %.not70.us.1.i.3 = icmp eq i32 %i.dv, 0         ; 2 uses
  %.563.us.1.i.3 = select i1 %.not70.us.1.i.3, i32 128, i32 %i.dv ; 3 uses
  %.5.idx.us.1.i.3 = zext i1 %.not70.us.1.i.3 to i64
  %.5.us.1.i.3 = getelementptr inbounds nuw i8, ptr %.5.us.1.i.2, i64 %.5.idx.us.1.i.3 ; 3 uses
  %niter171.next.3 = add i32 %niter171, 4         ; 2 uses
  %niter171.ncmp.3 = icmp eq i32 %niter171.next.3, %unroll_iter170
  br i1 %niter171.ncmp.3, label %._crit_edge14.us.1.i.unr-lcssa, label %bb.g, !llvm.loop !71

._crit_edge14.us.1.i.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod164.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %._crit_edge14.us.1.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge14.us.1.i.unr-lcssa, %._crit_edge14.us.i
  %.012.us.1.i.epil.init = phi i32 [ 0, %._crit_edge14.us.i ], [ %spec.select73.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ]
  %.410.us.1.i.epil.init = phi ptr [ %.5.us.i.lcssa, %._crit_edge14.us.i ], [ %.5.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ]
  %.4629.us.1.i.epil.init = phi i32 [ %.563.us.i.lcssa, %._crit_edge14.us.i ], [ %.563.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ]
  %lcmp.mod169 = icmp ne i32 %xtraiter162, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.012.us.1.i.epil = phi i32 [ %.012.us.1.i.epil.init, %.epil.preheader ], [ %spec.select73.us.1.i.epil, %bb.h ]
  %.410.us.1.i.epil = phi ptr [ %.410.us.1.i.epil.init, %.epil.preheader ], [ %.5.us.1.i.epil, %bb.h ] ; 2 uses
  %.4629.us.1.i.epil = phi i32 [ %.4629.us.1.i.epil.init, %.epil.preheader ], [ %.563.us.1.i.epil, %bb.h ] ; 2 uses
  %epil.iter163 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter163.next, %bb.h ]
  %i.dw = load i8, ptr %.410.us.1.i.epil, align 1, !tbaa !16
  %i.dx = zext i8 %i.dw to i32
  %i.dy = and i32 %.4629.us.1.i.epil, %i.dx
  %i.dz = shl i32 %.012.us.1.i.epil, 1
  %.not69.us.1.i.epil = icmp ne i32 %i.dy, 0      ; 2 uses
  %i.ea = zext i1 %.not69.us.1.i.epil to i32
  %spec.select73.us.1.i.epil = or disjoint i32 %i.dz, %i.ea ; 2 uses
  %i.eb = lshr i32 %.4629.us.1.i.epil, 1          ; 2 uses
  %.not70.us.1.i.epil = icmp eq i32 %i.eb, 0      ; 2 uses
  %.563.us.1.i.epil = select i1 %.not70.us.1.i.epil, i32 128, i32 %i.eb ; 2 uses
  %.5.idx.us.1.i.epil = zext i1 %.not70.us.1.i.epil to i64
  %.5.us.1.i.epil = getelementptr inbounds nuw i8, ptr %.410.us.1.i.epil, i64 %.5.idx.us.1.i.epil ; 2 uses
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %._crit_edge14.us.1.i, label %bb.h, !llvm.loop !73

._crit_edge14.us.1.i:                             ; preds = %bb.h, %._crit_edge14.us.1.i.unr-lcssa
  %.not69.us.1.i.lcssa = phi i1 [ %.not69.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ], [ %.not69.us.1.i.epil, %bb.h ]
  %spec.select73.us.1.i.lcssa = phi i32 [ %spec.select73.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ], [ %spec.select73.us.1.i.epil, %bb.h ]
  %.563.us.1.i.lcssa = phi i32 [ %.563.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ], [ %.563.us.1.i.epil, %bb.h ] ; 2 uses
  %.5.us.1.i.lcssa = phi ptr [ %.5.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ], [ %.5.us.1.i.epil, %bb.h ] ; 2 uses
  %i.ec = add i32 %spec.select73.us.1.i.lcssa, 1
  %i.ed = lshr i32 %i.ec, 1                       ; 2 uses
  %i.ee = sub nsw i32 0, %i.ed
  %spec.select74.us.1.i = select i1 %.not69.us.1.i.lcssa, i32 %i.ed, i32 %i.ee
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %spec.select74.us.1.i, ptr %i.ef, align 4, !tbaa !19
  %xtraiter173 = and i32 %.051.i, 3               ; 3 uses
  %i.eg = icmp ult i32 %.051.i, 4
  br i1 %i.eg, label %.epil.preheader172, label %._crit_edge14.us.1.i.new

._crit_edge14.us.1.i.new:                         ; preds = %._crit_edge14.us.1.i
  %unroll_iter181 = and i32 %.051.i, -4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge14.us.1.i.new
  %.012.us.2.i = phi i32 [ 0, %._crit_edge14.us.1.i.new ], [ %spec.select73.us.2.i.3, %bb.i ]
  %.410.us.2.i = phi ptr [ %.5.us.1.i.lcssa, %._crit_edge14.us.1.i.new ], [ %.5.us.2.i.3, %bb.i ] ; 2 uses
  %.4629.us.2.i = phi i32 [ %.563.us.1.i.lcssa, %._crit_edge14.us.1.i.new ], [ %.563.us.2.i.3, %bb.i ] ; 2 uses
  %niter182 = phi i32 [ 0, %._crit_edge14.us.1.i.new ], [ %niter182.next.3, %bb.i ]
  %i.eh = load i8, ptr %.410.us.2.i, align 1, !tbaa !16
  %i.ei = zext i8 %i.eh to i32
  %i.ej = and i32 %.4629.us.2.i, %i.ei
  %.not69.us.2.i.not = icmp eq i32 %i.ej, 0
  %i.ek = lshr i32 %.4629.us.2.i, 1               ; 2 uses
  %.not70.us.2.i = icmp eq i32 %i.ek, 0           ; 2 uses
  %.563.us.2.i = select i1 %.not70.us.2.i, i32 128, i32 %i.ek ; 2 uses
  %.5.idx.us.2.i = zext i1 %.not70.us.2.i to i64
  %.5.us.2.i = getelementptr inbounds nuw i8, ptr %.410.us.2.i, i64 %.5.idx.us.2.i ; 2 uses
  %i.el = load i8, ptr %.5.us.2.i, align 1, !tbaa !16
  %i.em = zext i8 %i.el to i32
  %i.en = and i32 %.563.us.2.i, %i.em
  %i.eo = shl i32 %.012.us.2.i, 2
  %i.ep = select i1 %.not69.us.2.i.not, i32 0, i32 2
  %i.eq = or disjoint i32 %i.eo, %i.ep
  %.not69.us.2.i.1 = icmp ne i32 %i.en, 0
  %i.er = zext i1 %.not69.us.2.i.1 to i32
  %spec.select73.us.2.i.1 = or disjoint i32 %i.eq, %i.er
  %i.es = lshr i32 %.563.us.2.i, 1                ; 2 uses
  %.not70.us.2.i.1 = icmp eq i32 %i.es, 0         ; 2 uses
  %.563.us.2.i.1 = select i1 %.not70.us.2.i.1, i32 128, i32 %i.es ; 2 uses
  %.5.idx.us.2.i.1 = zext i1 %.not70.us.2.i.1 to i64
  %.5.us.2.i.1 = getelementptr inbounds nuw i8, ptr %.5.us.2.i, i64 %.5.idx.us.2.i.1 ; 2 uses
  %i.et = load i8, ptr %.5.us.2.i.1, align 1, !tbaa !16
  %i.eu = zext i8 %i.et to i32
  %i.ev = and i32 %.563.us.2.i.1, %i.eu
  %.not69.us.2.i.2.not = icmp eq i32 %i.ev, 0
  %i.ew = lshr i32 %.563.us.2.i.1, 1              ; 2 uses
  %.not70.us.2.i.2 = icmp eq i32 %i.ew, 0         ; 2 uses
  %.563.us.2.i.2 = select i1 %.not70.us.2.i.2, i32 128, i32 %i.ew ; 2 uses
  %.5.idx.us.2.i.2 = zext i1 %.not70.us.2.i.2 to i64
  %.5.us.2.i.2 = getelementptr inbounds nuw i8, ptr %.5.us.2.i.1, i64 %.5.idx.us.2.i.2 ; 2 uses
  %i.ex = load i8, ptr %.5.us.2.i.2, align 1, !tbaa !16
  %i.ey = zext i8 %i.ex to i32
  %i.ez = and i32 %.563.us.2.i.2, %i.ey
  %i.fa = shl i32 %spec.select73.us.2.i.1, 2
  %i.fb = select i1 %.not69.us.2.i.2.not, i32 0, i32 2
  %i.fc = or disjoint i32 %i.fa, %i.fb
  %.not69.us.2.i.3 = icmp ne i32 %i.ez, 0         ; 2 uses
  %i.fd = zext i1 %.not69.us.2.i.3 to i32
  %spec.select73.us.2.i.3 = or disjoint i32 %i.fc, %i.fd ; 3 uses
  %i.fe = lshr i32 %.563.us.2.i.2, 1              ; 2 uses
  %.not70.us.2.i.3 = icmp eq i32 %i.fe, 0         ; 2 uses
  %.563.us.2.i.3 = select i1 %.not70.us.2.i.3, i32 128, i32 %i.fe ; 3 uses
  %.5.idx.us.2.i.3 = zext i1 %.not70.us.2.i.3 to i64
  %.5.us.2.i.3 = getelementptr inbounds nuw i8, ptr %.5.us.2.i.2, i64 %.5.idx.us.2.i.3 ; 3 uses
  %niter182.next.3 = add i32 %niter182, 4         ; 2 uses
  %niter182.ncmp.3 = icmp eq i32 %niter182.next.3, %unroll_iter181
  br i1 %niter182.ncmp.3, label %._crit_edge14.us.2.i.unr-lcssa, label %bb.i, !llvm.loop !71

._crit_edge14.us.2.i.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod175.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %._crit_edge14.us.2.i, label %.epil.preheader172

.epil.preheader172:                               ; preds = %._crit_edge14.us.2.i.unr-lcssa, %._crit_edge14.us.1.i
  %.012.us.2.i.epil.init = phi i32 [ 0, %._crit_edge14.us.1.i ], [ %spec.select73.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ]
  %.410.us.2.i.epil.init = phi ptr [ %.5.us.1.i.lcssa, %._crit_edge14.us.1.i ], [ %.5.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ]
  %.4629.us.2.i.epil.init = phi i32 [ %.563.us.1.i.lcssa, %._crit_edge14.us.1.i ], [ %.563.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ]
  %lcmp.mod180 = icmp ne i32 %xtraiter173, 0
  tail call void @llvm.assume(i1 %lcmp.mod180)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader172
  %.012.us.2.i.epil = phi i32 [ %.012.us.2.i.epil.init, %.epil.preheader172 ], [ %spec.select73.us.2.i.epil, %bb.j ]
  %.410.us.2.i.epil = phi ptr [ %.410.us.2.i.epil.init, %.epil.preheader172 ], [ %.5.us.2.i.epil, %bb.j ] ; 2 uses
  %.4629.us.2.i.epil = phi i32 [ %.4629.us.2.i.epil.init, %.epil.preheader172 ], [ %.563.us.2.i.epil, %bb.j ] ; 2 uses
  %epil.iter174 = phi i32 [ 0, %.epil.preheader172 ], [ %epil.iter174.next, %bb.j ]
  %i.ff = load i8, ptr %.410.us.2.i.epil, align 1, !tbaa !16
  %i.fg = zext i8 %i.ff to i32
  %i.fh = and i32 %.4629.us.2.i.epil, %i.fg
  %i.fi = shl i32 %.012.us.2.i.epil, 1
  %.not69.us.2.i.epil = icmp ne i32 %i.fh, 0      ; 2 uses
  %i.fj = zext i1 %.not69.us.2.i.epil to i32
  %spec.select73.us.2.i.epil = or disjoint i32 %i.fi, %i.fj ; 2 uses
  %i.fk = lshr i32 %.4629.us.2.i.epil, 1          ; 2 uses
  %.not70.us.2.i.epil = icmp eq i32 %i.fk, 0      ; 2 uses
  %.563.us.2.i.epil = select i1 %.not70.us.2.i.epil, i32 128, i32 %i.fk ; 2 uses
  %.5.idx.us.2.i.epil = zext i1 %.not70.us.2.i.epil to i64
  %.5.us.2.i.epil = getelementptr inbounds nuw i8, ptr %.410.us.2.i.epil, i64 %.5.idx.us.2.i.epil ; 2 uses
  %epil.iter174.next = add i32 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i32 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %._crit_edge14.us.2.i, label %bb.j, !llvm.loop !74

._crit_edge14.us.2.i:                             ; preds = %bb.j, %._crit_edge14.us.2.i.unr-lcssa
  %.not69.us.2.i.lcssa = phi i1 [ %.not69.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ], [ %.not69.us.2.i.epil, %bb.j ]
  %spec.select73.us.2.i.lcssa = phi i32 [ %spec.select73.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ], [ %spec.select73.us.2.i.epil, %bb.j ]
  %.563.us.2.i.lcssa = phi i32 [ %.563.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ], [ %.563.us.2.i.epil, %bb.j ]
  %.5.us.2.i.lcssa = phi ptr [ %.5.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ], [ %.5.us.2.i.epil, %bb.j ]
  %i.fl = add i32 %spec.select73.us.2.i.lcssa, 1
  %i.fm = lshr i32 %i.fl, 1                       ; 2 uses
  %i.fn = sub nsw i32 0, %i.fm
  %spec.select74.us.2.i = select i1 %.not69.us.2.i.lcssa, i32 %i.fm, i32 %i.fn
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %spec.select74.us.2.i, ptr %i.fo, align 4, !tbaa !19
  br label %.split22.us.i

.split22.us.i:                                    ; preds = %._crit_edge14.us.2.i, %.preheader.preheader.i45
  %.us-phi.i = phi i32 [ %.260.1.i, %.preheader.preheader.i45 ], [ %.563.us.2.i.lcssa, %._crit_edge14.us.2.i ]
  %.us-phi23.i = phi ptr [ %.2.1.i, %.preheader.preheader.i45 ], [ %.5.us.2.i.lcssa, %._crit_edge14.us.2.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i43
  br i1 %exitcond34.not.i, label %unpack_array_stop_bits.exit, label %.preheader1.i, !llvm.loop !75

bb.k:                                             ; preds = %bb.a
  %i.fp = tail call i32 @Ptngc_unpack_array_xtc2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  br label %unpack_array_stop_bits.exit

bb.l:                                             ; preds = %bb.a
  %i.fq = and i32 %4, -2
  %or.cond7 = icmp eq i32 %i.fq, 8
  br i1 %or.cond7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = sext i32 %3 to i64
  %i.fs = shl nsw i64 %i.fr, 2
  %i.ft = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.fs, ptr noundef nonnull @.str, i32 noundef 570) #11 ; 26 uses
  %7 = sdiv i32 %3, %6                            ; 5 uses
  %i.fu = load i32, ptr %1, align 1               ; 18 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.fv, i32 noundef %3, ptr noundef %i.ft) #11
  %8 = icmp sgt i32 %6, 0
  %9 = icmp sgt i32 %7, 2
  %or.cond.i = and i1 %8, %9
  br i1 %or.cond.i, label %.preheader1.us.preheader.i, label %unpack_array_bwlzh.exit

.preheader1.us.preheader.i:                       ; preds = %bb.m
  %i.fw = udiv i32 %7, 3
  %wide.trip.count.i47 = zext nneg i32 %i.fw to i64 ; 20 uses
  %i.fx = add nsw i64 %wide.trip.count.i47, -1    ; 3 uses
  %i.fy = mul i32 %6, 3                           ; 3 uses
  %i.fz = mul i32 %6, -3
  %i.ga = shl nuw nsw i64 %wide.trip.count.i47, 2
  %i.gb = sext i32 %i.fy to i64
  %i.gc = mul nsw i64 %i.fx, %i.gb
  %i.gd = shl i64 %i.gc, 2
  %scevgep64 = getelementptr i8, ptr %2, i64 %i.gd
  %i.ge = add nsw i64 %wide.trip.count.i47, -1    ; 5 uses
  %i.gf = mul i32 %6, 3                           ; 5 uses
  %i.gg = mul i32 %6, -3
  %i.gh = shl nuw nsw i64 %wide.trip.count.i47, 2
  %i.gi = sext i32 %i.gf to i64
  %i.gj = mul nsw i64 %i.ge, %i.gi
  %i.gk = shl i64 %i.gj, 2                        ; 2 uses
  %scevgep80 = getelementptr i8, ptr %2, i64 %i.gk
  %i.gl = mul i32 %6, -3
  %i.gm = shl nuw nsw i64 %wide.trip.count.i47, 2
  %scevgep116 = getelementptr i8, ptr %i.ft, i64 %i.gm
  %scevgep118 = getelementptr i8, ptr %2, i64 %i.gk
  %min.iters.check128 = icmp ult i32 %7, 72
  %i.gn = icmp slt i32 %i.gf, 0                   ; 2 uses
  %i.go = select i1 %i.gn, i32 %i.gl, i32 %i.gf
  %i.gp = trunc nsw i64 %i.ge to i32
  %mul111 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.go, i32 %i.gp) ; 2 uses
  %mul.result112 = extractvalue { i32, i1 } %mul111, 0 ; 2 uses
  %mul.overflow113 = extractvalue { i32, i1 } %mul111, 1
  %i.gq = icmp ugt i64 %i.ge, 4294967295
  %invariant.op = or i1 %mul.overflow113, %i.gq
  %n.vec130 = and i64 %wide.trip.count.i47, 1073741816 ; 5 uses
  %broadcast.splatinsert133 = insertelement <8 x i32> poison, i32 %i.fu, i64 0
  %broadcast.splat134 = shufflevector <8 x i32> %broadcast.splatinsert133, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat136 = shufflevector <8 x i32> %broadcast.splatinsert135, <8 x i32> poison, <8 x i32> zeroinitializer
  %ind.escape145 = add nsw i64 %n.vec130, -1
  %cmp.n146 = icmp eq i64 %n.vec130, %wide.trip.count.i47
  %xtraiter192 = and i64 %wide.trip.count.i47, 3  ; 2 uses
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  %min.iters.check90 = icmp ult i32 %7, 72
  %i.gr = icmp slt i32 %i.gf, 0                   ; 2 uses
  %i.gs = select i1 %i.gr, i32 %i.gg, i32 %i.gf
  %i.gt = trunc nsw i64 %i.ge to i32
  %mul74 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.gs, i32 %i.gt) ; 2 uses
  %mul.result75 = extractvalue { i32, i1 } %mul74, 0 ; 2 uses
  %mul.overflow76 = extractvalue { i32, i1 } %mul74, 1
  %i.gu = icmp ugt i64 %i.ge, 4294967295
  %invariant.op201 = or i1 %mul.overflow76, %i.gu
  %invariant.gep = getelementptr i8, ptr %i.ft, i64 %i.gh
  %n.vec92 = and i64 %wide.trip.count.i47, 1073741816 ; 5 uses
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %i.fu, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> poison, <8 x i32> zeroinitializer
  %ind.escape = add nsw i64 %n.vec92, -1
  %cmp.n107 = icmp eq i64 %n.vec92, %wide.trip.count.i47
  %xtraiter194 = and i64 %wide.trip.count.i47, 3  ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %min.iters.check = icmp ult i32 %7, 72
  %i.gv = icmp slt i32 %i.fy, 0                   ; 2 uses
  %i.gw = select i1 %i.gv, i32 %i.fz, i32 %i.fy
  %i.gx = trunc nsw i64 %i.fx to i32
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.gw, i32 %i.gx) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.gy = icmp ugt i64 %i.fx, 4294967295
  %invariant.op203 = or i1 %mul.overflow, %i.gy
  %n.vec = and i64 %wide.trip.count.i47, 1073741816 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.fu, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert68 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat69 = shufflevector <8 x i32> %broadcast.splatinsert68, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i47
  %xtraiter197 = and i64 %wide.trip.count.i47, 3  ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br label %.preheader1.us.i

.preheader1.us.i:                                 ; preds = %._crit_edge.us.us.2.i, %.preheader1.us.preheader.i
  %.07.us.i = phi i32 [ %i.pj, %._crit_edge.us.us.2.i ], [ 0, %.preheader1.us.preheader.i ] ; 24 uses
  %.0286.us.i = phi i64 [ %indvars.iv.next.2.i.lcssa, %._crit_edge.us.us.2.i ], [ 0, %.preheader1.us.preheader.i ] ; 8 uses
  %i.gz = mul i32 %.07.us.i, 3
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 2                    ; 2 uses
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.hb ; 4 uses
  %scevgep120 = getelementptr i8, ptr %2, i64 %i.hb ; 4 uses
  %i.hc = icmp ult ptr %scevgep119, %scevgep120
  %umin121 = select i1 %i.hc, ptr %scevgep119, ptr %scevgep120
  %i.hd = icmp ugt ptr %scevgep119, %scevgep120
  %umax122 = select i1 %i.hd, ptr %scevgep119, ptr %scevgep120
  %scevgep123 = getelementptr i8, ptr %umax122, i64 4
  %i.he = mul i32 %.07.us.i, 3                    ; 5 uses
  %i.hf = add i32 %i.he, 1
  %i.hg = sext i32 %i.hf to i64
  %i.hh = shl nsw i64 %i.hg, 2                    ; 2 uses
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.hh ; 4 uses
  %scevgep82 = getelementptr i8, ptr %2, i64 %i.hh ; 4 uses
  %i.hi = icmp ult ptr %scevgep81, %scevgep82
  %umin83 = select i1 %i.hi, ptr %scevgep81, ptr %scevgep82
  %i.hj = icmp ugt ptr %scevgep81, %scevgep82
  %umax84 = select i1 %i.hj, ptr %scevgep81, ptr %scevgep82
  %scevgep85 = getelementptr i8, ptr %umax84, i64 4
  %i.hk = mul i32 %.07.us.i, 3
  %i.hl = add i32 %i.hk, 1                        ; 4 uses
  %i.hm = mul i32 %.07.us.i, 3
  %i.hn = add i32 %i.hm, 2
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 2                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %scevgep64, i64 %i.hp ; 4 uses
  %scevgep66 = getelementptr i8, ptr %2, i64 %i.hp ; 4 uses
  %i.hq = icmp ult ptr %scevgep65, %scevgep66
  %umin = select i1 %i.hq, ptr %scevgep65, ptr %scevgep66
  %i.hr = icmp ugt ptr %scevgep65, %scevgep66
  %umax = select i1 %i.hr, ptr %scevgep65, ptr %scevgep66
  %scevgep67 = getelementptr i8, ptr %umax, i64 4
  %i.hs = mul i32 %.07.us.i, 3
  %i.ht = add i32 %i.hs, 2                        ; 4 uses
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.scevcheck110

vector.scevcheck110:                              ; preds = %.preheader1.us.i
  %i.hu = add i32 %i.he, %mul.result112
  %i.hv = sub i32 %i.he, %mul.result112
  %i.hw = icmp slt i32 %i.hu, %i.he
  %i.hx = icmp sgt i32 %i.hv, %i.he
  %i.hy = select i1 %i.gn, i1 %i.hx, i1 %i.hw
  %.reass = or i1 %i.hy, %invariant.op
  br i1 %.reass, label %scalar.ph127.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %vector.scevcheck110
  %i.hz = shl i64 %.0286.us.i, 2                  ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.ft, i64 %i.hz
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.hz
  %bound0124 = icmp ult ptr %scevgep115, %scevgep123
  %bound1125 = icmp ult ptr %umin121, %scevgep117
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck114
  %i.ia = add i64 %.0286.us.i, %n.vec130          ; 2 uses
  %broadcast.splatinsert131 = insertelement <8 x i32> poison, i32 %.07.us.i, i64 0
  %broadcast.splat132 = shufflevector <8 x i32> %broadcast.splatinsert131, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ib = getelementptr [4 x i8], ptr %i.ft, i64 %.0286.us.i
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph129
  %index138 = phi i64 [ 0, %vector.ph129 ], [ %index.next142, %vector.body137 ] ; 2 uses
  %vec.ind139 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph129 ], [ %vec.ind.next143, %vector.body137 ] ; 2 uses
  %i.ic = getelementptr [4 x i8], ptr %i.ib, i64 %index138
  %wide.load140 = load <8 x i32>, ptr %i.ic, align 4, !tbaa !19, !alias.scope !95, !noalias !96
  %i.id = sub nsw <8 x i32> %wide.load140, %broadcast.splat134
  %i.ie = mul <8 x i32> %broadcast.splat136, %vec.ind139
  %i.if = add <8 x i32> %i.ie, %broadcast.splat132
  %i.ig = mul <8 x i32> %i.if, splat (i32 3)
  %i.ih = sext <8 x i32> %i.ig to <8 x i64>
  %wide.gep141 = getelementptr inbounds [4 x i8], ptr %2, <8 x i64> %i.ih
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.id, <8 x ptr> align 4 %wide.gep141, <8 x i1> splat (i1 true)), !tbaa !19, !alias.scope !96
  %index.next142 = add nuw i64 %index138, 8       ; 2 uses
  %vec.ind.next143 = add <8 x i32> %vec.ind139, splat (i32 8)
  %i.ii = icmp eq i64 %index.next142, %n.vec130
  br i1 %i.ii, label %middle.block144, label %vector.body137, !llvm.loop !79

middle.block144:                                  ; preds = %vector.body137
  br i1 %cmp.n146, label %._crit_edge.us.us.i.preheader, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %vector.memcheck114, %vector.scevcheck110, %.preheader1.us.i, %middle.block144
  %indvars.iv9.i.ph = phi i64 [ 0, %vector.memcheck114 ], [ 0, %vector.scevcheck110 ], [ 0, %.preheader1.us.i ], [ %n.vec130, %middle.block144 ] ; 3 uses
  %indvars.iv.i48.ph = phi i64 [ %.0286.us.i, %vector.memcheck114 ], [ %.0286.us.i, %vector.scevcheck110 ], [ %.0286.us.i, %.preheader1.us.i ], [ %i.ia, %middle.block144 ] ; 2 uses
  br i1 %lcmp.mod193.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol

scalar.ph127.prol:                                ; preds = %scalar.ph127.preheader, %scalar.ph127.prol
  %indvars.iv9.i.prol = phi i64 [ %indvars.iv.next10.i.prol, %scalar.ph127.prol ], [ %indvars.iv9.i.ph, %scalar.ph127.preheader ] ; 3 uses
  %indvars.iv.i48.prol = phi i64 [ %indvars.iv.next.i49.prol, %scalar.ph127.prol ], [ %indvars.iv.i48.ph, %scalar.ph127.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph127.prol ], [ 0, %scalar.ph127.preheader ]
  %indvars.iv.next.i49.prol = add nsw i64 %indvars.iv.i48.prol, 1 ; 3 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.i48.prol
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !19
  %i.il = sub nsw i32 %i.ik, %i.fu
  %i.im = trunc nuw nsw i64 %indvars.iv9.i.prol to i32
  %i.in = mul i32 %6, %i.im
  %reass.add.us.us.i.prol = add i32 %i.in, %.07.us.i
  %reass.mul.us.us.i.prol = mul i32 %reass.add.us.us.i.prol, 3
  %i.io = sext i32 %reass.mul.us.us.i.prol to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %2, i64 %i.io
  store i32 %i.il, ptr %i.ip, align 4, !tbaa !19
  %indvars.iv.next10.i.prol = add nuw nsw i64 %indvars.iv9.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter192
  br i1 %prol.iter.cmp.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol, !llvm.loop !80

scalar.ph127.prol.loopexit:                       ; preds = %scalar.ph127.prol, %scalar.ph127.preheader
  %indvars.iv9.i.lcssa152.unr = phi i64 [ poison, %scalar.ph127.preheader ], [ %indvars.iv9.i.prol, %scalar.ph127.prol ]
  %indvars.iv.next.i49.lcssa151.unr = phi i64 [ poison, %scalar.ph127.preheader ], [ %indvars.iv.next.i49.prol, %scalar.ph127.prol ]
  %indvars.iv9.i.unr = phi i64 [ %indvars.iv9.i.ph, %scalar.ph127.preheader ], [ %indvars.iv.next10.i.prol, %scalar.ph127.prol ]
  %indvars.iv.i48.unr = phi i64 [ %indvars.iv.i48.ph, %scalar.ph127.preheader ], [ %indvars.iv.next.i49.prol, %scalar.ph127.prol ]
  %i.iq = sub nsw i64 %indvars.iv9.i.ph, %wide.trip.count.i47
  %i.ir = icmp ugt i64 %i.iq, -4
  br i1 %i.ir, label %._crit_edge.us.us.i.preheader, label %scalar.ph127

scalar.ph127:                                     ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i.3, %scalar.ph127 ], [ %indvars.iv9.i.unr, %scalar.ph127.prol.loopexit ] ; 5 uses
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49.3, %scalar.ph127 ], [ %indvars.iv.i48.unr, %scalar.ph127.prol.loopexit ] ; 5 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.i48
  %i.it = load i32, ptr %i.is, align 4, !tbaa !19
  %i.iu = sub nsw i32 %i.it, %i.fu
  %i.iv = trunc nuw nsw i64 %indvars.iv9.i to i32
  %i.iw = mul i32 %6, %i.iv
  %reass.add.us.us.i = add i32 %i.iw, %.07.us.i
  %reass.mul.us.us.i = mul i32 %reass.add.us.us.i, 3
  %i.ix = sext i32 %reass.mul.us.us.i to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ix
  store i32 %i.iu, ptr %i.iy, align 4, !tbaa !19
  %i.iz = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i48
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !19
  %i.jc = sub nsw i32 %i.jb, %i.fu
  %i.jd = trunc i64 %indvars.iv9.i to i32
  %i.je = add i32 %i.jd, 1
  %i.jf = mul i32 %6, %i.je
  %reass.add.us.us.i.1 = add i32 %i.jf, %.07.us.i
  %reass.mul.us.us.i.1 = mul i32 %reass.add.us.us.i.1, 3
  %i.jg = sext i32 %reass.mul.us.us.i.1 to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jg
  store i32 %i.jc, ptr %i.jh, align 4, !tbaa !19
  %i.ji = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i48
  %i.jj = getelementptr i8, ptr %i.ji, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !19
  %i.jl = sub nsw i32 %i.jk, %i.fu
  %i.jm = trunc i64 %indvars.iv9.i to i32
  %i.jn = add i32 %i.jm, 2
  %i.jo = mul i32 %6, %i.jn
  %reass.add.us.us.i.2 = add i32 %i.jo, %.07.us.i
  %reass.mul.us.us.i.2 = mul i32 %reass.add.us.us.i.2, 3
  %i.jp = sext i32 %reass.mul.us.us.i.2 to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jp
  store i32 %i.jl, ptr %i.jq, align 4, !tbaa !19
  %indvars.iv.next10.i.2 = add nuw nsw i64 %indvars.iv9.i, 3 ; 2 uses
  %indvars.iv.next.i49.3 = add nsw i64 %indvars.iv.i48, 4 ; 2 uses
  %i.jr = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i48
  %i.js = getelementptr i8, ptr %i.jr, i64 12
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !19
  %i.ju = sub nsw i32 %i.jt, %i.fu
  %i.jv = trunc nuw nsw i64 %indvars.iv.next10.i.2 to i32
  %i.jw = mul i32 %6, %i.jv
  %reass.add.us.us.i.3 = add i32 %i.jw, %.07.us.i
  %reass.mul.us.us.i.3 = mul i32 %reass.add.us.us.i.3, 3
  %i.jx = sext i32 %reass.mul.us.us.i.3 to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jx
  store i32 %i.ju, ptr %i.jy, align 4, !tbaa !19
  %indvars.iv.next10.i.3 = add nuw nsw i64 %indvars.iv9.i, 4 ; 2 uses
  %exitcond.not.i50.3 = icmp eq i64 %indvars.iv.next10.i.3, %wide.trip.count.i47
  br i1 %exitcond.not.i50.3, label %._crit_edge.us.us.i.preheader, label %scalar.ph127, !llvm.loop !81

._crit_edge.us.us.i.preheader:                    ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127, %middle.block144
  %indvars.iv9.i.lcssa = phi i64 [ %ind.escape145, %middle.block144 ], [ %indvars.iv9.i.lcssa152.unr, %scalar.ph127.prol.loopexit ], [ %indvars.iv.next10.i.2, %scalar.ph127 ] ; 2 uses
  %indvars.iv.next.i49.lcssa = phi i64 [ %i.ia, %middle.block144 ], [ %indvars.iv.next.i49.lcssa151.unr, %scalar.ph127.prol.loopexit ], [ %indvars.iv.next.i49.3, %scalar.ph127 ] ; 5 uses
  br i1 %min.iters.check90, label %._crit_edge.us.us.i.preheader150, label %vector.scevcheck73

vector.scevcheck73:                               ; preds = %._crit_edge.us.us.i.preheader
  %i.jz = add i32 %i.hl, %mul.result75
  %i.ka = sub i32 %i.hl, %mul.result75
end_hunk_0
