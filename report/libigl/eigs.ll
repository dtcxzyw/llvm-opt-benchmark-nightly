Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 189
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN7Spectra7LanczosIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE14factorize_fromEllRl:bb.a
  %i.du = load i64, ptr %i.cj, align 8, !tbaa !249
  %i.dv = sub nsw i64 %i.du, %1                   ; 6 uses
  %i.dw = load ptr, ptr %i.ci, align 8, !tbaa !124, !noalias !1036
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %1 ; 13 uses
  %i.dy = load i64, ptr %i.cp, align 8, !tbaa !125 ; 13 uses
  %i.dz = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ea = and i64 %i.dz, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i143, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = icmp sgt i64 %1, 0
  %i.ec = icmp sgt i64 %i.dv, 0
  %or.cond421 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond421, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %.lr.ph

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:   ; preds = %bb.y
  %i.ed = shl nuw i64 %i.dv, 3                    ; 9 uses
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.ee = icmp ult i64 %1, 8
  br i1 %i.ee, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %unroll_iter = and i64 %1, 9223372036854775800
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new ], [ %i.fc, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new ], [ %niter.next.7, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ef = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dy
  %i.eg = getelementptr [8 x i8], ptr %i.dx, i64 %i.ef
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eg, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.eh = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ei = mul nsw i64 %i.eh, %i.dy
  %i.ej = getelementptr [8 x i8], ptr %i.dx, i64 %i.ei
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ej, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.ek = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.el = mul nsw i64 %i.ek, %i.dy
  %i.em = getelementptr [8 x i8], ptr %i.dx, i64 %i.el
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.em, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.en = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.eo = mul nsw i64 %i.en, %i.dy
  %i.ep = getelementptr [8 x i8], ptr %i.dx, i64 %i.eo
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ep, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.eq = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.er = mul nsw i64 %i.eq, %i.dy
  %i.es = getelementptr [8 x i8], ptr %i.dx, i64 %i.er
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.es, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.et = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.eu = mul nsw i64 %i.et, %i.dy
  %i.ev = getelementptr [8 x i8], ptr %i.dx, i64 %i.eu
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ev, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.ew = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.ex = mul nsw i64 %i.ew, %i.dy
  %i.ey = getelementptr [8 x i8], ptr %i.dx, i64 %i.ex
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ey, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.ez = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.fa = mul nsw i64 %i.ez, %i.dy
  %i.fb = getelementptr [8 x i8], ptr %i.dx, i64 %i.fa
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.fc = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.loopexit694.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i143: ; preds = %bb.x
  %i.fd = and i64 %i.dy, 1
  %i.fe = icmp sgt i64 %1, 0
  br i1 %i.fe, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i143
  %i.ff = lshr exact i64 %i.dz, 3
  %i.fg = and i64 %i.ff, 1
  %i.fh = tail call i64 @llvm.smin.i64(i64 %i.fg, i64 %i.dv)
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i
  %.03451.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gi, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144 ] ; 4 uses
  %.03550.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144 ] ; 8 uses
  %i.fi = sub i64 %i.dv, %.03550.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.fj = and i64 %i.fi, -2
  %i.fk = add i64 %i.fj, %.03550.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fl = icmp sgt i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fl, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.z
  %i.fm = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.dy
  %i.fn = getelementptr [8 x i8], ptr %i.dx, i64 %i.fm
  store double 0.000000e+00, ptr %i.fn, align 8, !tbaa !56
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z
  %i.fo = icmp sgt i64 %i.fi, 1
  br i1 %i.fo, label %.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.dy
  %i.fq = getelementptr [8 x i8], ptr %i.dx, i64 %i.fp
  %i.fr = shl i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i145 = getelementptr i8, ptr %i.fq, i64 %i.fr
  %i.fs = add nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i146 = tail call i64 @llvm.smax.i64(i64 %i.fk, i64 %i.fs)
  %i.ft = xor i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.fu = add i64 %smax.i146, %i.ft
  %i.fv = shl i64 %i.fu, 3
  %i.fw = and i64 %i.fv, -16
  %i.fx = add i64 %i.fw, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i145, i8 0, i64 %i.fx, i1 false), !tbaa !131
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fy = icmp slt i64 %i.fk, %i.dv
  br i1 %i.fy, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144

.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fz = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.dy
  %i.ga = getelementptr [8 x i8], ptr %i.dx, i64 %i.fz
  %i.gb = and i64 %i.fi, 2305843009213693950
  %i.gc = add nsw i64 %i.gb, %.03550.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gd = shl i64 %i.gc, 3
  %scevgep3.i = getelementptr i8, ptr %i.ga, i64 %i.gd
  %i.ge = shl i64 %i.fi, 3
  %i.gf = and i64 %i.ge, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep3.i, i8 0, i64 %i.gf, i1 false), !tbaa !56
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144:           ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = add nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, %i.fd
  %i.gh = srem i64 %i.gg, 2
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.dv, i64 %i.gh)
  %i.gi = add nuw nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gi, %1
  br i1 %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %bb.z, !llvm.loop !10

.lr.ph.loopexit694.unr-lcssa:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.lr.ph.loopexit694.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ %i.fc, %.lr.ph.loopexit694.unr-lcssa ]
  %lcmp.mod695 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod695)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.gl, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.gj = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.dy
  %i.gk = getelementptr [8 x i8], ptr %i.dx, i64 %i.gj
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gk, i8 0, i64 %i.ed, i1 false), !tbaa !56
  %i.gl = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1002

.lr.ph:                                           ; preds = %.lr.ph.loopexit694.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144, %bb.y, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i143
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 8 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 12 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gw = sdiv i64 %i.br, 2                       ; 2 uses
  %i.gx = shl nsw i64 %i.gw, 1                    ; 7 uses
  %i.gy = icmp sgt i64 %i.br, 1
  %i.gz = icmp slt i64 %i.gx, %i.br
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0404.0, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hk = shl i64 %i.gw, 4                        ; 2 uses
  %scevgep608 = getelementptr i8, ptr %.sroa.0396.0, i64 %i.hk
  %i.hl = shl i64 %i.br, 3                        ; 2 uses
  %scevgep609 = getelementptr i8, ptr %.sroa.0396.0, i64 %i.hl
  %i.hm = add i64 %1, -1
  %i.hn = sub i64 %i.br, %i.gx                    ; 3 uses
  %min.iters.check615 = icmp ult i64 %i.hn, 4
  %n.vec617 = and i64 %i.hn, -4                   ; 3 uses
  %i.ho = add i64 %i.gx, %n.vec617
  %cmp.n628 = icmp eq i64 %i.hn, %n.vec617
  br label %bb.aa

._crit_edge:                                      ; preds = %.critedge
  store i64 %2, ptr %i.b, align 8, !tbaa !253
  call void @free(ptr noundef %.sroa.0396.0) #33
  call void @free(ptr noundef %.sroa.0404.0) #33
  br label %bb.cr

bb.aa:                                            ; preds = %.lr.ph, %.critedge
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.critedge ] ; 3 uses
  %.055452 = phi i64 [ %1, %.lr.ph ], [ %i.yg, %.critedge ] ; 32 uses
  %i.hp = add i64 %i.hm, %indvar
  %i.hq = shl i64 %.055452, 3
  %i.hr = shl i64 %.055452, 3
  %i.hs = add i64 %1, %indvar
  %i.ht = shl i64 %i.hs, 3
  %i.hu = add i64 %i.ht, -8
  %i.hv = shl i64 %.055452, 3
  %i.hw = load double, ptr %i.gm, align 8, !tbaa !254 ; 2 uses
  %i.hx = fcmp olt double %i.hw, f0x0044000000000000 ; 3 uses
  %.pre483 = load i64, ptr %i.bq, align 8, !tbaa !248 ; 2 uses
  br i1 %i.hx, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.hy = load ptr, ptr %i.gn, align 8, !tbaa !124
  store ptr %i.hy, ptr %15, align 8, !tbaa !256
  store i64 %.pre483, ptr %i.go, align 8, !tbaa !139
  store i64 %.055452, ptr %i.gp, align 8, !tbaa !139
  %i.hz = shl nsw i64 %.055452, 1
  invoke void @_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE12expand_basisERNS6_3MapIKS8_Li0ENS6_6StrideILi0ELi0EEEEElRS9_RdRl(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(26) %15, i64 noundef %i.hz, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %.pre = load i64, ptr %i.bq, align 8, !tbaa !248
  %.pre484 = load double, ptr %i.gm, align 8, !tbaa !56, !noalias !1037
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.cs

bb.ae:                                            ; preds = %bb.aa, %bb.ac
  %i.ib = phi double [ %i.hw, %bb.aa ], [ %.pre484, %bb.ac ] ; 13 uses
  %i.ic = phi i64 [ %.pre483, %bb.aa ], [ %.pre, %bb.ac ] ; 11 uses
  %i.id = load ptr, ptr %i.gn, align 8, !tbaa !124 ; 2 uses
  %i.ie = ptrtoaddr ptr %i.id to i64              ; 3 uses
  %i.if = load i64, ptr %i.gr, align 8, !tbaa !125 ; 4 uses
  %i.ig = mul nsw i64 %i.if, %.055452
  %i.ih = getelementptr [8 x i8], ptr %i.id, i64 %i.ig ; 31 uses
  %i.ii = load ptr, ptr %i.gq, align 8, !tbaa !119 ; 14 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64              ; 2 uses
  %.sroa.7.16.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.ik = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.il = and i64 %i.ik, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.il, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.af, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.im = lshr exact i64 %i.ik, 3
  %i.in = and i64 %i.im, 1
  %i.io = call i64 @llvm.smin.i64(i64 %i.in, i64 %i.ic)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i64 [ %i.io, %bb.af ], [ %i.ic, %bb.ae ] ; 11 uses
  %i.ip = sub nsw i64 %i.ic, %.0.i.i.i.i.i.i      ; 2 uses
  %i.iq = sdiv i64 %i.ip, 2
  %i.ir = shl nsw i64 %i.iq, 1                    ; 2 uses
  %i.is = add nsw i64 %i.ir, %.0.i.i.i.i.i.i      ; 6 uses
  %i.it = icmp sgt i64 %.0.i.i.i.i.i.i, 0
  br i1 %i.it, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %min.iters.check648 = icmp eq i64 %.0.i.i.i.i.i.i, 1
  br i1 %min.iters.check648, label %.lr.ph.i.i.i.i.i.i.preheader675, label %vector.memcheck645

vector.memcheck645:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.iu = mul i64 %i.if, %i.hq
  %i.iv = add i64 %i.iu, %i.ie
  %i.iw = sub i64 %i.ij, %i.iv
  %diff.check646 = icmp ugt i64 %i.iw, -16
  br i1 %diff.check646, label %.lr.ph.i.i.i.i.i.i.preheader675, label %vector.ph649

vector.ph649:                                     ; preds = %vector.memcheck645
  %n.vec650 = and i64 %.0.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert651 = insertelement <2 x double> poison, double %i.ib, i64 0
  %broadcast.splat652 = shufflevector <2 x double> %broadcast.splatinsert651, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph649
  %index654 = phi i64 [ 0, %vector.ph649 ], [ %index.next656, %vector.body653 ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %index654
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %index654
  %wide.load655 = load <2 x double>, ptr %i.iy, align 8, !tbaa !56
  %i.iz = fdiv <2 x double> %wide.load655, %broadcast.splat652
  store <2 x double> %i.iz, ptr %i.ix, align 8, !tbaa !56
  %index.next656 = add nuw i64 %index654, 2       ; 2 uses
  %i.ja = icmp eq i64 %index.next656, %n.vec650
  br i1 %i.ja, label %middle.block657, label %vector.body653, !llvm.loop !1005

middle.block657:                                  ; preds = %vector.body653
  %cmp.n658 = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec650
  br i1 %cmp.n658, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader675

.lr.ph.i.i.i.i.i.i.preheader675:                  ; preds = %vector.memcheck645, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block657
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck645 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec650, %middle.block657 ] ; 4 uses
  %i.jb = sub nsw i64 %.0.i.i.i.i.i.i, %.05.i.i.i.i.i.i.ph
  %xtraiter696 = and i64 %i.jb, 3                 ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader675, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader675 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader675 ]
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05.i.i.i.i.i.i.prol
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.05.i.i.i.i.i.i.prol
  %i.je = load double, ptr %i.jd, align 8, !tbaa !56
  %i.jf = fdiv double %i.je, %i.ib
  store double %i.jf, ptr %i.jc, align 8, !tbaa !56
  %i.jg = add nuw nsw i64 %.05.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter696
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1006

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader675
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader675 ], [ %i.jg, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.jh = sub nsw i64 %.05.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i
  %i.ji = icmp ugt i64 %i.jh, -4
  br i1 %i.ji, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.kc, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05.i.i.i.i.i.i
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.05.i.i.i.i.i.i
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !56
  %i.jm = fdiv double %i.jl, %i.ib
  store double %i.jm, ptr %i.jj, align 8, !tbaa !56
  %i.jn = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jn
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !56
  %i.jr = fdiv double %i.jq, %i.ib
  store double %i.jr, ptr %i.jo, align 8, !tbaa !56
  %i.js = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.js
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.js
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !56
  %i.jw = fdiv double %i.jv, %i.ib
  store double %i.jw, ptr %i.jt, align 8, !tbaa !56
  %i.jx = add nuw nsw i64 %.05.i.i.i.i.i.i, 3     ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jx
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.jx
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !56
  %i.kb = fdiv double %i.ka, %i.ib
  store double %i.kb, ptr %i.jy, align 8, !tbaa !56
  %i.kc = add nuw nsw i64 %.05.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.kc, %.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1007

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block657, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %i.kd = icmp sgt i64 %i.ip, 1
  br i1 %i.kd, label %.lr.ph.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.ke = shufflevector <2 x double> %.sroa.7.16.vec.insert.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.kf = icmp slt i64 %i.is, %i.ic
  br i1 %i.kf, label %.lr.ph.i17.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i
  %i.kg = add i64 %.0.i.i.i.i.i.i, %i.ir
  %i.kh = sub i64 %i.ic, %i.kg                    ; 3 uses
  %min.iters.check633 = icmp ult i64 %i.kh, 2
  br i1 %min.iters.check633, label %.lr.ph.i17.i.i.i.i.i.preheader674, label %vector.memcheck630

vector.memcheck630:                               ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.ki = mul i64 %i.if, %i.hr
  %i.kj = add i64 %i.ki, %i.ie
  %i.kk = sub i64 %i.ij, %i.kj
  %diff.check631 = icmp ugt i64 %i.kk, -16
  br i1 %diff.check631, label %.lr.ph.i17.i.i.i.i.i.preheader674, label %vector.ph634

vector.ph634:                                     ; preds = %vector.memcheck630
  %n.vec635 = and i64 %i.kh, -2                   ; 3 uses
  %i.kl = add i64 %i.is, %n.vec635
  %broadcast.splatinsert636 = insertelement <2 x double> poison, double %i.ib, i64 0
  %broadcast.splat637 = shufflevector <2 x double> %broadcast.splatinsert636, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body638

vector.body638:                                   ; preds = %vector.body638, %vector.ph634
  %index639 = phi i64 [ 0, %vector.ph634 ], [ %index.next641, %vector.body638 ] ; 2 uses
  %i.km = add i64 %i.is, %index639                ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.km
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.km
  %wide.load640 = load <2 x double>, ptr %i.ko, align 8, !tbaa !56
  %i.kp = fdiv <2 x double> %wide.load640, %broadcast.splat637
  store <2 x double> %i.kp, ptr %i.kn, align 8, !tbaa !56
  %index.next641 = add nuw i64 %index639, 2       ; 2 uses
  %i.kq = icmp eq i64 %index.next641, %n.vec635
  br i1 %i.kq, label %middle.block642, label %vector.body638, !llvm.loop !1008

middle.block642:                                  ; preds = %vector.body638
  %cmp.n643 = icmp eq i64 %i.kh, %n.vec635
  br i1 %cmp.n643, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.preheader674

.lr.ph.i17.i.i.i.i.i.preheader674:                ; preds = %vector.memcheck630, %.lr.ph.i17.i.i.i.i.i.preheader, %middle.block642
  %.05.i18.i.i.i.i.i.ph = phi i64 [ %i.is, %vector.memcheck630 ], [ %i.is, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %i.kl, %middle.block642 ] ; 4 uses
  %i.kr = sub i64 %i.ic, %.05.i18.i.i.i.i.i.ph
  %xtraiter698 = and i64 %i.kr, 3                 ; 2 uses
  %lcmp.mod699.not = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod699.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader674, %.lr.ph.i17.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.prol = phi i64 [ %i.kw, %.lr.ph.i17.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader674 ] ; 3 uses
  %prol.iter700 = phi i64 [ %prol.iter700.next, %.lr.ph.i17.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.preheader674 ]
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.05.i18.i.i.i.i.i.prol
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %.05.i18.i.i.i.i.i.prol
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !56
  %i.kv = fdiv double %i.ku, %i.ib
  store double %i.kv, ptr %i.ks, align 8, !tbaa !56
  %i.kw = add nsw i64 %.05.i18.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter700.next = add i64 %prol.iter700, 1   ; 2 uses
  %prol.iter700.cmp.not = icmp eq i64 %prol.iter700.next, %xtraiter698
  br i1 %prol.iter700.cmp.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol, !llvm.loop !1009

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader674
  %.05.i18.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader674 ], [ %i.kw, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.kx = sub i64 %.05.i18.i.i.i.i.i.ph, %i.ic
  %i.ky = icmp ugt i64 %i.kx, -4
  br i1 %i.ky, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %.05.i18.i.i.i.i.i = phi i64 [ %i.ls, %.lr.ph.i17.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.05.i18.i.i.i.i.i
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %.05.i18.i.i.i.i.i
  %i.lb = load double, ptr %i.la, align 8, !tbaa !56
  %i.lc = fdiv double %i.lb, %i.ib
  store double %i.lc, ptr %i.kz, align 8, !tbaa !56
  %i.ld = add nsw i64 %.05.i18.i.i.i.i.i, 1       ; 2 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.ld
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.ld
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !56
  %i.lh = fdiv double %i.lg, %i.ib
  store double %i.lh, ptr %i.le, align 8, !tbaa !56
  %i.li = add nsw i64 %.05.i18.i.i.i.i.i, 2       ; 2 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.li
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.li
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !56
  %i.lm = fdiv double %i.ll, %i.ib
  store double %i.lm, ptr %i.lj, align 8, !tbaa !56
  %i.ln = add nsw i64 %.05.i18.i.i.i.i.i, 3       ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.ln
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.ln
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !56
  %i.lr = fdiv double %i.lq, %i.ib
  store double %i.lr, ptr %i.lo, align 8, !tbaa !56
  %i.ls = add nsw i64 %.05.i18.i.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.3 = icmp eq i64 %i.ls, %i.ic
  br i1 %exitcond.not.i19.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !1010

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.lx, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.021.i.i.i.i.i
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %.021.i.i.i.i.i
  %i.lv = load <2 x double>, ptr %i.lu, align 1, !tbaa !131
  %i.lw = fdiv <2 x double> %i.lv, %i.ke
  store <2 x double> %i.lw, ptr %i.lt, align 16, !tbaa !131
  %i.lx = add nsw i64 %.021.i.i.i.i.i, 2          ; 2 uses
  %i.ly = icmp slt i64 %i.lx, %i.is
  br i1 %i.ly, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1011

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block642, %._crit_edge.i.i.i.i.i
  br i1 %i.hx, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit
  %i.lz = load double, ptr %i.gm, align 8, !tbaa !254
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit, %bb.ag
  %i.ma = phi double [ %i.lz, %bb.ag ], [ 0.000000e+00, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit ] ; 2 uses
  %i.mb = add nsw i64 %.055452, -1                ; 7 uses
  %i.mc = load ptr, ptr %i.ci, align 8, !tbaa !124 ; 2 uses
  %i.md = load i64, ptr %i.cp, align 8, !tbaa !125 ; 2 uses
  %i.me = mul nsw i64 %i.md, %i.mb
  %i.mf = getelementptr [8 x i8], ptr %i.mc, i64 %.055452
  %i.mg = getelementptr [8 x i8], ptr %i.mf, i64 %i.me
  store double %i.ma, ptr %i.mg, align 8, !tbaa !56
  %i.mh = mul nsw i64 %i.md, %.055452
  %i.mi = getelementptr [8 x i8], ptr %i.mc, i64 %i.mb
  %i.mj = getelementptr [8 x i8], ptr %i.mi, i64 %i.mh
  store double %i.ma, ptr %i.mj, align 8, !tbaa !56
  %i.mk = load ptr, ptr %i.gt, align 8, !tbaa !257, !nonnull !97, !align !138 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !258, !nonnull !97, !align !138
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !119
  invoke void @_ZZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS2_8SparseLUINS2_12SparseMatrixIdLi0EiEENS2_14COLAMDOrderingIiEEEEEEbRKNS7_IT_Li0EiEESF_iSC_RNS2_15PlainObjectBaseIT0_EERNSG_IT1_EEENK13SparseMatProd10perform_opEPKdPd(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef %i.ih, ptr noundef %i.mo)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.ah
  %i.mp = load ptr, ptr %i.mk, align 8, !tbaa !247, !nonnull !97, !align !138 ; 2 uses
  %i.mq = load ptr, ptr %i.mn, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !156, !nonnull !97, !align !138 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !147
  store ptr %i.mq, ptr %7, align 8, !tbaa !260
  store i64 %i.mt, ptr %i.gu, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !157
  store ptr %.sroa.0396.0, ptr %8, align 8, !tbaa !228
  store i64 %i.mv, ptr %i.gv, align 8, !tbaa !139
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mx = invoke noundef zeroext i1 @_ZNK5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS7_IS9_Li0ESC_EEEEbRKNS_10MatrixBaseIT_EERNSF_IT0_EE(ptr noundef nonnull align 8 dereferenceable(584) %i.mw, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(19) %8)
          to label %bb.ai unwind label %bb.ak     ; 0 uses

bb.ai:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.my = load i64, ptr %3, align 8, !tbaa !161
  %i.mz = add nsw i64 %i.my, 1
  store i64 %i.mz, ptr %3, align 8, !tbaa !161
  br i1 %i.hx, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS2_RKNS3_IT_EE.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.na = load ptr, ptr %i.ci, align 8, !tbaa !124
  %i.nb = load i64, ptr %i.cp, align 8, !tbaa !125
  %i.nc = mul nsw i64 %i.nb, %i.mb
  %i.nd = getelementptr [8 x i8], ptr %i.na, i64 %.055452
  %i.ne = getelementptr [8 x i8], ptr %i.nd, i64 %i.nc
  %i.nf = load ptr, ptr %i.gn, align 8, !tbaa !124, !noalias !1038 ; 3 uses
  %i.ng = load i64, ptr %i.gr, align 8, !tbaa !125, !noalias !1038 ; 2 uses
  %i.nh = mul nsw i64 %i.ng, %i.mb
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.nh ; 5 uses
  %i.nj = load double, ptr %i.ne, align 8, !tbaa !56, !noalias !1039 ; 5 uses
  br i1 %i.gy, label %.lr.ph.i.preheader.i.i.i.i152, label %._crit_edge.i.i.i.i.i148

.lr.ph.i.preheader.i.i.i.i152:                    ; preds = %bb.aj
  %.sroa.3.8.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.nk = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i153

._crit_edge.i.i.i.i.i148:                         ; preds = %.lr.ph.i.i.i.i.i153, %bb.aj
  br i1 %i.gz, label %.lr.ph.i.i.i.i.i.i149.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS2_RKNS3_IT_EE.exit

.lr.ph.i.i.i.i.i.i149.preheader:                  ; preds = %._crit_edge.i.i.i.i.i148
  br i1 %min.iters.check615, label %.lr.ph.i.i.i.i.i.i149.preheader673, label %vector.memcheck607

vector.memcheck607:                               ; preds = %.lr.ph.i.i.i.i.i.i149.preheader
  %scevgep610 = getelementptr i8, ptr %i.nf, i64 %i.hk
  %i.nl = mul i64 %i.ng, %i.hu                    ; 2 uses
  %scevgep611 = getelementptr i8, ptr %scevgep610, i64 %i.nl
  %scevgep612 = getelementptr i8, ptr %i.nf, i64 %i.hl
  %scevgep613 = getelementptr i8, ptr %scevgep612, i64 %i.nl
  %bound0 = icmp ult ptr %scevgep608, %scevgep613
  %bound1 = icmp ult ptr %scevgep611, %scevgep609
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i149.preheader673, label %vector.ph616

vector.ph616:                                     ; preds = %vector.memcheck607
  %broadcast.splatinsert618 = insertelement <2 x double> poison, double %i.nj, i64 0
  %broadcast.splat619 = shufflevector <2 x double> %broadcast.splatinsert618, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body620

vector.body620:                                   ; preds = %vector.body620, %vector.ph616
  %index621 = phi i64 [ 0, %vector.ph616 ], [ %index.next626, %vector.body620 ] ; 2 uses
  %i.nm = add i64 %i.gx, %index621                ; 2 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %.sroa.0396.0, i64 %i.nm ; 3 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.nm ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %wide.load622 = load <2 x double>, ptr %i.no, align 8, !tbaa !56, !alias.scope !1040
  %wide.load623 = load <2 x double>, ptr %i.np, align 8, !tbaa !56, !alias.scope !1040
  %i.nq = fmul <2 x double> %broadcast.splat619, %wide.load622
  %i.nr = fmul <2 x double> %broadcast.splat619, %wide.load623
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 16 ; 2 uses
  %wide.load624 = load <2 x double>, ptr %i.nn, align 8, !tbaa !56, !alias.scope !1041, !noalias !1040
  %wide.load625 = load <2 x double>, ptr %i.ns, align 8, !tbaa !56, !alias.scope !1041, !noalias !1040
  %i.nt = fsub <2 x double> %wide.load624, %i.nq
  %i.nu = fsub <2 x double> %wide.load625, %i.nr
  store <2 x double> %i.nt, ptr %i.nn, align 8, !tbaa !56, !alias.scope !1041, !noalias !1040
  store <2 x double> %i.nu, ptr %i.ns, align 8, !tbaa !56, !alias.scope !1041, !noalias !1040
  %index.next626 = add nuw i64 %index621, 4       ; 2 uses
  %i.nv = icmp eq i64 %index.next626, %n.vec617
  br i1 %i.nv, label %middle.block627, label %vector.body620, !llvm.loop !1019

middle.block627:                                  ; preds = %vector.body620
  br i1 %cmp.n628, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i149.preheader673

.lr.ph.i.i.i.i.i.i149.preheader673:               ; preds = %vector.memcheck607, %.lr.ph.i.i.i.i.i.i149.preheader, %middle.block627
  %.05.i.i.i.i.i.i150.ph = phi i64 [ %i.gx, %vector.memcheck607 ], [ %i.gx, %.lr.ph.i.i.i.i.i.i149.preheader ], [ %i.ho, %middle.block627 ] ; 6 uses
  %i.nw = sub i64 %i.br, %.05.i.i.i.i.i.i150.ph
  %.neg = add i64 %.05.i.i.i.i.i.i150.ph, 1
  %xtraiter701 = and i64 %i.nw, 1
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  br i1 %lcmp.mod702.not, label %.lr.ph.i.i.i.i.i.i149.prol.loopexit, label %.lr.ph.i.i.i.i.i.i149.prol

.lr.ph.i.i.i.i.i.i149.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i149.preheader673
  %i.nx = getelementptr inbounds [8 x i8], ptr %.sroa.0396.0, i64 %.05.i.i.i.i.i.i150.ph ; 2 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %.05.i.i.i.i.i.i150.ph
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !56
  %i.oa = fmul double %i.nj, %i.nz
  %i.ob = load double, ptr %i.nx, align 8, !tbaa !56
  %i.oc = fsub double %i.ob, %i.oa
  store double %i.oc, ptr %i.nx, align 8, !tbaa !56
  %i.od = add nsw i64 %.05.i.i.i.i.i.i150.ph, 1
  br label %.lr.ph.i.i.i.i.i.i149.prol.loopexit

.lr.ph.i.i.i.i.i.i149.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i149.prol, %.lr.ph.i.i.i.i.i.i149.preheader673
  %.05.i.i.i.i.i.i150.unr = phi i64 [ %.05.i.i.i.i.i.i150.ph, %.lr.ph.i.i.i.i.i.i149.preheader673 ], [ %i.od, %.lr.ph.i.i.i.i.i.i149.prol ]
  %i.oe = icmp eq i64 %i.br, %.neg
  br i1 %i.oe, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i149

.lr.ph.i.i.i.i.i.i149:                            ; preds = %.lr.ph.i.i.i.i.i.i149.prol.loopexit, %.lr.ph.i.i.i.i.i.i149
  %.05.i.i.i.i.i.i150 = phi i64 [ %i.os, %.lr.ph.i.i.i.i.i.i149 ], [ %.05.i.i.i.i.i.i150.unr, %.lr.ph.i.i.i.i.i.i149.prol.loopexit ] ; 4 uses
  %i.of = getelementptr inbounds [8 x i8], ptr %.sroa.0396.0, i64 %.05.i.i.i.i.i.i150 ; 2 uses
  %i.og = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %.05.i.i.i.i.i.i150
  %i.oh = load double, ptr %i.og, align 8, !tbaa !56
  %i.oi = fmul double %i.nj, %i.oh
  %i.oj = load double, ptr %i.of, align 8, !tbaa !56
  %i.ok = fsub double %i.oj, %i.oi
  store double %i.ok, ptr %i.of, align 8, !tbaa !56
  %i.ol = add nsw i64 %.05.i.i.i.i.i.i150, 1      ; 2 uses
  %i.om = getelementptr inbounds [8 x i8], ptr %.sroa.0396.0, i64 %i.ol ; 2 uses
  %i.on = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.ol
  %i.oo = load double, ptr %i.on, align 8, !tbaa !56
  %i.op = fmul double %i.nj, %i.oo
  %i.oq = load double, ptr %i.om, align 8, !tbaa !56
  %i.or = fsub double %i.oq, %i.op
  store double %i.or, ptr %i.om, align 8, !tbaa !56
  %i.os = add nsw i64 %.05.i.i.i.i.i.i150, 2      ; 2 uses
  %exitcond.not.i.i.i.i.i.i151.1 = icmp eq i64 %i.os, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i151.1, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i149, !llvm.loop !1020

.lr.ph.i.i.i.i.i153:                              ; preds = %.lr.ph.i.i.i.i.i153, %.lr.ph.i.preheader.i.i.i.i152
  %.011.i.i.i.i.i = phi i64 [ %i.oz, %.lr.ph.i.i.i.i.i153 ], [ 0, %.lr.ph.i.preheader.i.i.i.i152 ] ; 3 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0396.0, i64 %.011.i.i.i.i.i ; 2 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %.011.i.i.i.i.i
  %i.ov = load <2 x double>, ptr %i.ou, align 1, !tbaa !131
  %i.ow = fmul <2 x double> %i.nk, %i.ov
  %i.ox = load <2 x double>, ptr %i.ot, align 16, !tbaa !131
  %i.oy = fsub <2 x double> %i.ox, %i.ow
  store <2 x double> %i.oy, ptr %i.ot, align 16, !tbaa !131
  %i.oz = add nuw nsw i64 %.011.i.i.i.i.i, 2      ; 2 uses
  %i.pa = icmp slt i64 %i.oz, %i.gx
  br i1 %i.pa, label %.lr.ph.i.i.i.i.i153, label %._crit_edge.i.i.i.i.i148, !llvm.loop !1021

bb.ak:                                            ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS6_INS7_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEESA_EEKNS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEEEEERS2_RKNS3_IT_EE.exit, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS2_RKNS3_IT_EE.exit, %.noexc, %bb.ah
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS2_RKNS3_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i149.prol.loopexit, %.lr.ph.i.i.i.i.i.i149, %middle.block627, %._crit_edge.i.i.i.i.i148, %bb.ai
  %i.pc = load ptr, ptr %i.ha, align 8, !tbaa !261, !nonnull !97, !align !138
  %i.pd = load ptr, ptr %i.hb, align 8, !tbaa !119
  invoke void @_ZZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS2_8SparseLUINS2_12SparseMatrixIdLi0EiEENS2_14COLAMDOrderingIiEEEEEEbRKNS7_IT_Li0EiEESF_iSC_RNS2_15PlainObjectBaseIT0_EERNSG_IT1_EEENK13SparseMatProd10perform_opEPKdPd(ptr noundef nonnull align 8 dereferenceable(8) %i.pc, ptr noundef %.sroa.0396.0, ptr noundef %i.pd)
          to label %.noexc157 unwind label %bb.ak

.noexc157:                                        ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS2_RKNS3_IT_EE.exit
  %i.pe = load i64, ptr %i.hc, align 8, !tbaa !135 ; 10 uses
  %i.pf = icmp eq i64 %i.pe, 0
  br i1 %i.pf, label %.loopexit429, label %bb.al

bb.al:                                            ; preds = %.noexc157
  %i.pg = load ptr, ptr %i.hb, align 8, !tbaa !119 ; 11 uses
  %i.ph = sdiv i64 %i.pe, 4
  %i.pi = shl nsw i64 %i.ph, 2                    ; 4 uses
  %i.pj = sdiv i64 %i.pe, 2
  %i.pk = shl nsw i64 %i.pj, 1                    ; 6 uses
  %.off.i.i.i.i.i.i = add i64 %i.pe, 1
  %.not.i.i.i.i.i.i154 = icmp ult i64 %.off.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i154, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pl = load <2 x double>, ptr %i.ih, align 1, !tbaa !131
  %i.pm = load <2 x double>, ptr %i.pg, align 1, !tbaa !131
  %i.pn = fmul <2 x double> %i.pl, %i.pm          ; 3 uses
  %i.po = icmp sgt i64 %i.pe, 3
  br i1 %i.po, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.pq = load <2 x double>, ptr %i.pp, align 1, !tbaa !131
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.ps = load <2 x double>, ptr %i.pr, align 1, !tbaa !131
  %i.pt = fmul <2 x double> %i.pq, %i.ps          ; 2 uses
  %i.pu = icmp samesign ugt i64 %i.pe, 7
  br i1 %i.pu, label %.lr.ph.i.i.i.i.i.i156, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i156, %bb.an
  %.075.lcssa.i.i.i.i.i.i = phi <2 x double> [ %i.pt, %bb.an ], [ %i.qj, %.lr.ph.i.i.i.i.i.i156 ]
  %.072.lcssa.i.i.i.i.i.i = phi <2 x double> [ %i.pn, %bb.an ], [ %i.qc, %.lr.ph.i.i.i.i.i.i156 ]
  %i.pv = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i ; 2 uses
  %i.pw = icmp sgt i64 %i.pk, %i.pi
  br i1 %i.pw, label %bb.ao, label %bb.ap

.lr.ph.i.i.i.i.i.i156:                            ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i156
  %.05480.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i156 ], [ 4, %bb.an ] ; 4 uses
  %.054.in79.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i156 ], [ 0, %bb.an ]
  %.07278.i.i.i.i.i.i = phi <2 x double> [ %i.qc, %.lr.ph.i.i.i.i.i.i156 ], [ %i.pn, %bb.an ]
  %.07577.i.i.i.i.i.i = phi <2 x double> [ %i.qj, %.lr.ph.i.i.i.i.i.i156 ], [ %i.pt, %bb.an ]
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05480.i.i.i.i.i.i
  %i.py = load <2 x double>, ptr %i.px, align 1, !tbaa !131
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %.05480.i.i.i.i.i.i
  %i.qa = load <2 x double>, ptr %i.pz, align 1, !tbaa !131
  %i.qb = fmul <2 x double> %i.py, %i.qa
  %i.qc = fadd <2 x double> %.07278.i.i.i.i.i.i, %i.qb ; 2 uses
  %i.qd = add nuw nsw i64 %.054.in79.i.i.i.i.i.i, 6 ; 2 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.qd
  %i.qf = load <2 x double>, ptr %i.qe, align 1, !tbaa !131
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.qd
  %i.qh = load <2 x double>, ptr %i.qg, align 1, !tbaa !131
  %i.qi = fmul <2 x double> %i.qf, %i.qh
  %i.qj = fadd <2 x double> %.07577.i.i.i.i.i.i, %i.qi ; 2 uses
  %.054.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i, 4 ; 2 uses
  %i.qk = icmp slt i64 %.054.i.i.i.i.i.i, %i.pi
  br i1 %i.qk, label %.lr.ph.i.i.i.i.i.i156, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !11

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.pi
  %i.qm = load <2 x double>, ptr %i.ql, align 1, !tbaa !131
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.pi
  %i.qo = load <2 x double>, ptr %i.qn, align 1, !tbaa !131
  %i.qp = fmul <2 x double> %i.qm, %i.qo
  %i.qq = fadd <2 x double> %i.pv, %i.qp
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge.i.i.i.i.i.i, %bb.am
  %.274.i.i.i.i.i.i = phi <2 x double> [ %i.pn, %bb.am ], [ %i.qq, %bb.ao ], [ %i.pv, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i, %shift
  %i.qr = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.qs = icmp slt i64 %i.pk, %i.pe
  br i1 %i.qs, label %.lr.ph85.i.i.i.i.i.i.preheader, label %.loopexit429

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.ap
  %i.qt = sub i64 %i.pe, %i.pk
  %xtraiter704 = and i64 %i.qt, 3                 ; 2 uses
  %lcmp.mod705.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.prol = phi i64 [ %i.ra, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.pk, %.lr.ph85.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.prol = phi double [ %i.qz, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.qr, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %prol.iter706 = phi i64 [ %prol.iter706.next, %.lr.ph85.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.05283.i.i.i.i.i.i.prol
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %.05283.i.i.i.i.i.i.prol
  %i.qw = load double, ptr %i.qu, align 8, !tbaa !56
  %i.qx = load double, ptr %i.qv, align 8, !tbaa !56
  %i.qy = fmul double %i.qw, %i.qx
  %i.qz = fadd double %.182.i.i.i.i.i.i.prol, %i.qy ; 3 uses
  %i.ra = add nsw i64 %.05283.i.i.i.i.i.i.prol, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7Spectra7LanczosIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE14factorize_fromEllRl:bb.a

.lr.ph85.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph85.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.prol = phi i64 [ %i.wx, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ %i.vh, %.lr.ph85.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.prol = phi double [ %i.ww, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ %i.wo, %.lr.ph85.i.i.i.i.i.i.i.preheader ]
  %prol.iter712 = phi i64 [ %prol.iter712.next, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.preheader ]
  %i.wr = getelementptr inbounds [8 x i8], ptr %i.vc, i64 %.05283.i.i.i.i.i.i.i.prol
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %.05283.i.i.i.i.i.i.i.prol
  %i.wt = load double, ptr %i.wr, align 8, !tbaa !56
  %i.wu = load double, ptr %i.ws, align 8, !tbaa !56
  %i.wv = fmul double %i.wt, %i.wu
  %i.ww = fadd double %.182.i.i.i.i.i.i.i.prol, %i.wv ; 3 uses
  %i.wx = add nsw i64 %.05283.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter712.next = add i64 %prol.iter712, 1   ; 2 uses
  %prol.iter712.cmp.not = icmp eq i64 %prol.iter712.next, %xtraiter710
  br i1 %prol.iter712.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.prol, !llvm.loop !1026

.lr.ph85.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.preheader
  %.lcssa680.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.ww, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.unr = phi i64 [ %i.vh, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.wx, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.unr = phi double [ %i.wo, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.ww, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %i.wy = sub i64 %i.vh, %i.va
  %i.wz = icmp ugt i64 %i.wy, -4
  br i1 %i.wz, label %.loopexit428, label %.lr.ph85.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i:                           ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i = phi i64 [ %i.yb, %.lr.ph85.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i = phi double [ %i.ya, %.lr.ph85.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ]
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.vc, i64 %.05283.i.i.i.i.i.i.i
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %.05283.i.i.i.i.i.i.i
  %i.xc = load double, ptr %i.xa, align 8, !tbaa !56
  %i.xd = load double, ptr %i.xb, align 8, !tbaa !56
  %i.xe = fmul double %i.xc, %i.xd
  %i.xf = fadd double %.182.i.i.i.i.i.i.i, %i.xe
  %i.xg = add nsw i64 %.05283.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.vc, i64 %i.xg
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %i.xg
  %i.xj = load double, ptr %i.xh, align 8, !tbaa !56
  %i.xk = load double, ptr %i.xi, align 8, !tbaa !56
  %i.xl = fmul double %i.xj, %i.xk
  %i.xm = fadd double %i.xf, %i.xl
  %i.xn = add nsw i64 %.05283.i.i.i.i.i.i.i, 2    ; 2 uses
  %i.xo = getelementptr inbounds [8 x i8], ptr %i.vc, i64 %i.xn
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %i.xn
  %i.xq = load double, ptr %i.xo, align 8, !tbaa !56
  %i.xr = load double, ptr %i.xp, align 8, !tbaa !56
  %i.xs = fmul double %i.xq, %i.xr
  %i.xt = fadd double %i.xm, %i.xs
  %i.xu = add nsw i64 %.05283.i.i.i.i.i.i.i, 3    ; 2 uses
  %i.xv = getelementptr inbounds [8 x i8], ptr %i.vc, i64 %i.xu
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %i.xu
  %i.xx = load double, ptr %i.xv, align 8, !tbaa !56
  %i.xy = load double, ptr %i.xw, align 8, !tbaa !56
  %i.xz = fmul double %i.xx, %i.xy
  %i.ya = fadd double %i.xt, %i.xz                ; 2 uses
  %i.yb = add nsw i64 %.05283.i.i.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.yb, %i.va
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %.loopexit428, label %.lr.ph85.i.i.i.i.i.i.i, !llvm.loop !14

bb.ax:                                            ; preds = %bb.as
  %i.yc = load double, ptr %i.vc, align 8, !tbaa !56
  %i.yd = load double, ptr %i.vd, align 8, !tbaa !56
  %i.ye = fmul double %i.yc, %i.yd
  br label %.loopexit428

.loopexit428:                                     ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i, %.noexc166, %bb.aw, %bb.ax
  %.0.i.i.i.i.i = phi double [ 0.000000e+00, %.noexc166 ], [ %i.wo, %bb.aw ], [ %i.ye, %bb.ax ], [ %.lcssa680.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ya, %.lr.ph85.i.i.i.i.i.i.i ]
  %i.yf = call noundef double @sqrt(double noundef %.0.i.i.i.i.i) #33
  store double %i.yf, ptr %i.gm, align 8, !tbaa !254
  %i.yg = add i64 %.055452, 1                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  %i.yh = load ptr, ptr %i.gn, align 8, !tbaa !124
  %i.yi = load i64, ptr %i.bq, align 8, !tbaa !248
  store ptr %i.yh, ptr %16, align 8, !tbaa !1043
  store i64 %i.yi, ptr %i.hd, align 8, !tbaa !139
  store i64 %i.yg, ptr %i.he, align 8, !tbaa !139
  store ptr %.sroa.0404.0, ptr %17, align 8, !tbaa !184
  store i64 %i.yg, ptr %i.hf, align 8, !tbaa !139
  invoke void @_ZNK7Spectra9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E13trans_productINS5_3MapIS7_Li0ENS5_6StrideILi0ELi0EEEEES8_EEvRKSF_RKSK_NS5_3RefIS8_Li0ENS5_11InnerStrideILi1EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(26) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dead_on_return %17)
          to label %bb.ay unwind label %bb.bi

bb.ay:                                            ; preds = %.loopexit428
  %i.yj = sdiv i64 %i.yg, 4
  %i.yk = shl nsw i64 %i.yj, 2                    ; 6 uses
  %i.yl = sdiv i64 %i.yg, 2
  %i.ym = shl nsw i64 %i.yl, 1                    ; 12 uses
  %.off.i.i.i.i = add i64 %.055452, 2
  %.not.i.i.i.i167 = icmp ult i64 %.off.i.i.i.i, 3 ; 2 uses
  br i1 %.not.i.i.i.i167, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.yn = load <2 x double>, ptr %.sroa.0404.0, align 1 ; 2 uses
  %i.yo = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yn) ; 3 uses
  %i.yp = icmp sgt i64 %.055452, 2
  %i.yq = extractelement <2 x double> %i.yn, i64 0 ; 3 uses
  br i1 %i.yp, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.yr = load <2 x double>, ptr %i.hg, align 1, !tbaa !131
  %i.ys = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yr) ; 2 uses
  %i.yt = icmp samesign ugt i64 %.055452, 6
  br i1 %i.yt, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.ba
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.ys, %bb.ba ], [ %i.ze, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.yo, %bb.ba ], [ %i.yz, %.lr.ph.i.i.i.i ]
  %i.yu = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.072.lcssa.i.i.i.i, <2 x double> %.075.lcssa.i.i.i.i) #20, !srcloc !262 ; 2 uses
  %i.yv = icmp sgt i64 %i.ym, %i.yk
  br i1 %i.yv, label %bb.bb, label %bb.bc

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.ba ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.ba ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.yz, %.lr.ph.i.i.i.i ], [ %i.yo, %bb.ba ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.ze, %.lr.ph.i.i.i.i ], [ %i.ys, %bb.ba ]
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0404.0, i64 %.05480.i.i.i.i
  %i.yx = load <2 x double>, ptr %i.yw, align 1, !tbaa !131
  %i.yy = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yx)
  %i.yz = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07278.i.i.i.i, <2 x double> %i.yy) #20, !srcloc !262 ; 2 uses
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0404.0, i64 %.054.in79.i.i.i.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 48
  %i.zc = load <2 x double>, ptr %i.zb, align 1, !tbaa !131
  %i.zd = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.zc)
  %i.ze = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07577.i.i.i.i, <2 x double> %i.zd) #20, !srcloc !262 ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.zf = icmp slt i64 %.054.i.i.i.i, %i.yk
  br i1 %i.zf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !15

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0404.0, i64 %i.yk
  %i.zh = load <2 x double>, ptr %i.zg, align 1, !tbaa !131
  %i.zi = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.zh)
  %i.zj = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.yu, <2 x double> %i.zi) #20, !srcloc !262
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i, %bb.az
  %.274.i.i.i.i = phi <2 x double> [ %i.yo, %bb.az ], [ %i.zj, %bb.bb ], [ %i.yu, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 1 ; 2 uses
  %i.zk = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.zl = select i1 %i.zk, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 4 uses
  %.not424 = icmp sgt i64 %i.ym, %.055452
  br i1 %.not424, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i.preheader

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.bc
  %i.zm = and i64 %.055452, 1
  %lcmp.mod714.not.not = icmp eq i64 %i.zm, 0
  br i1 %lcmp.mod714.not.not, label %.lr.ph85.i.i.i.i.prol, label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader
  %i.zn = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %i.ym
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !56
  %i.zp = call noundef double @llvm.fabs.f64(double %i.zo) ; 2 uses
  %i.zq = fcmp olt double %i.zl, %i.zp
  %i.zr = select i1 %i.zq, double %i.zp, double %i.zl ; 2 uses
  %i.zs = or disjoint i64 %i.ym, 1
  br label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa683.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.zr, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.ym, %.lr.ph85.i.i.i.i.preheader ], [ %i.zs, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.zl, %.lr.ph85.i.i.i.i.preheader ], [ %i.zr, %.lr.ph85.i.i.i.i.prol ]
  %i.zt = icmp eq i64 %.055452, %i.ym
  br i1 %i.zt, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.aaf, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i = phi double [ %i.aae, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.zu = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %.05283.i.i.i.i
  %i.zv = load double, ptr %i.zu, align 8, !tbaa !56
  %i.zw = call noundef double @llvm.fabs.f64(double %i.zv) ; 2 uses
  %i.zx = fcmp olt double %.182.i.i.i.i, %i.zw
  %i.zy = select i1 %i.zx, double %i.zw, double %.182.i.i.i.i ; 2 uses
  %i.zz = add nsw i64 %.05283.i.i.i.i, 1          ; 2 uses
  %i.aaa = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %i.zz
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !56
  %i.aac = call noundef double @llvm.fabs.f64(double %i.aab) ; 2 uses
  %i.aad = fcmp olt double %i.zy, %i.aac
  %i.aae = select i1 %i.aad, double %i.aac, double %i.zy ; 2 uses
  %i.aaf = add nsw i64 %.05283.i.i.i.i, 2
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.zz, %.055452
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !16

bb.bd:                                            ; preds = %bb.ay
  %i.aag = load double, ptr %.sroa.0404.0, align 8, !tbaa !56 ; 2 uses
  %i.aah = call noundef double @llvm.fabs.f64(double %i.aag)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.bd, %bb.bc
  %i.aai = phi double [ %i.yq, %bb.bc ], [ %i.aag, %bb.bd ], [ %i.yq, %.lr.ph85.i.i.i.i ], [ %i.yq, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %.3.i.i.i.i = phi double [ %i.zl, %bb.bc ], [ %i.aah, %bb.bd ], [ %.lcssa683.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.aae, %.lr.ph85.i.i.i.i ]
  %i.aaj = icmp eq i64 %i.yg, 0
  %i.aak = icmp sgt i64 %.055452, 0
  %i.aal = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %i.mb
  %i.aam = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %.055452
  %i.aan = icmp sgt i64 %.055452, 2
  %i.aao = icmp samesign ugt i64 %.055452, 6
  %i.aap = icmp sgt i64 %i.ym, %i.yk
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0404.0, i64 %i.yk
  %.not425 = icmp sgt i64 %i.ym, %.055452
  %xtraiter716 = and i64 %.055452, 3              ; 3 uses
  %i.aar = icmp ult i64 %i.hp, 3
  %unroll_iter721 = and i64 %.055452, 9223372036854775804
  %lcmp.mod718.not = icmp eq i64 %xtraiter716, 0
  %lcmp.mod720 = icmp ne i64 %xtraiter716, 0
  %i.aas = and i64 %.055452, 1
  %lcmp.mod736.not.not = icmp eq i64 %i.aas, 0
  %i.aat = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %i.ym
  %i.aau = or disjoint i64 %i.ym, 1
  %i.aav = icmp eq i64 %.055452, %i.ym
  br label %bb.be

bb.be:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit211
  %i.aaw = phi double [ %i.aai, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %i.auo, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit211 ]
  %.0450 = phi i32 [ 0, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %i.aup, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit211 ]
  %.053449 = phi double [ %.3.i.i.i.i, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %.3.i.i.i.i197, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit211 ]
  %i.aax = load double, ptr %i.gm, align 8, !tbaa !254 ; 2 uses
  %i.aay = fmul double %i.aax, f0x3CB0000000000000
  %i.aaz = fcmp ogt double %.053449, %i.aay
  br i1 %i.aaz, label %bb.bf, label %.critedge

bb.bf:                                            ; preds = %bb.be
  %i.aba = fcmp olt double %i.aax, %i.bu
  br i1 %i.aba, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.abb = load i64, ptr %i.gs, align 8, !tbaa !135 ; 2 uses
  %i.abc = icmp slt i64 %i.abb, 1
  br i1 %i.abc, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.bg
  %i.abd = load ptr, ptr %i.gq, align 8, !tbaa !119
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.abb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abd, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !56
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %bb.bg
  store double 0.000000e+00, ptr %i.gm, align 8, !tbaa !254
  br label %.critedge

bb.bh:                                            ; preds = %thread-pre-split.i.i.i.i
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.bi:                                            ; preds = %.loopexit428
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %.body216

bb.bj:                                            ; preds = %bb.bf
  %.sroa.0288.0.copyload = load ptr, ptr %16, align 8 ; 7 uses
  %.sroa.5289.0.copyload = load i64, ptr %i.hd, align 8 ; 3 uses
  %i.abg = icmp eq i64 %.sroa.5289.0.copyload, 1
  br i1 %i.abg, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.aaj, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.abh = load double, ptr %.sroa.0288.0.copyload, align 8, !tbaa !56
  %i.abi = fmul double %i.abh, %i.aaw             ; 3 uses
  br i1 %i.aak, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.bl
  br i1 %i.aar, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01724.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ack, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.acj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %niter722 = phi i64 [ %niter722.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.abj = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !56
  %i.abl = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !56
  %i.abn = fmul double %i.abk, %i.abm
  %i.abo = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i, %i.abn
  %i.abp = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.abq = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %i.abp
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !56
  %i.abs = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %i.abp
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !56
  %i.abu = fmul double %i.abr, %i.abt
  %i.abv = fadd double %i.abo, %i.abu
  %i.abw = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.abx = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %i.abw
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !56
  %i.abz = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %i.abw
  %i.aca = load double, ptr %i.abz, align 8, !tbaa !56
  %i.acb = fmul double %i.aby, %i.aca
  %i.acc = fadd double %i.abv, %i.acb
  %i.acd = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ace = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %i.acd
  %i.acf = load double, ptr %i.ace, align 8, !tbaa !56
  %i.acg = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %i.acd
  %i.ach = load double, ptr %i.acg, align 8, !tbaa !56
  %i.aci = fmul double %i.acf, %i.ach
  %i.acj = fadd double %i.acc, %i.aci             ; 3 uses
  %i.ack = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter722.next.3 = add nuw i64 %niter722, 4     ; 2 uses
  %niter722.ncmp.3 = icmp eq i64 %niter722.next.3, %unroll_iter721
  br i1 %niter722.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1027

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod718.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ack, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.abi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.acj, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod720)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.acr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.acq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter717 = phi i64 [ %epil.iter717.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.acl = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !56
  %i.acn = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !56
  %i.acp = fmul double %i.acm, %i.aco
  %i.acq = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.epil, %i.acp ; 2 uses
  %i.acr = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter717.next = add i64 %epil.iter717, 1   ; 2 uses
  %epil.iter717.cmp.not = icmp eq i64 %epil.iter717.next, %xtraiter716
  br i1 %epil.iter717.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1028

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.bk ], [ %i.abi, %bb.bl ], [ %i.acj, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.acq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.acs = load ptr, ptr %i.gq, align 8, !tbaa !119 ; 3 uses
  %i.act = load double, ptr %i.acs, align 8, !tbaa !56
  %i.acu = fsub double %i.act, %.0.i.i.i.i.i.i.i.i.i
  store double %i.acu, ptr %i.acs, align 8, !tbaa !56
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  %.sroa.6290.0.copyload = load i64, ptr %i.he, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %.sroa.0288.0.copyload, ptr %5, align 8, !tbaa !222
  store i64 %.sroa.5289.0.copyload, ptr %i.hh, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr %.sroa.0404.0, ptr %6, align 8, !tbaa !225
  store i64 1, ptr %i.hi, align 8, !tbaa !226
  %i.acv = load ptr, ptr %i.gq, align 8, !tbaa !119
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.5289.0.copyload, i64 noundef %.sroa.6290.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.acv, i64 noundef 1, double noundef -1.000000e+00)
          to label %.noexc168 unwind label %bb.cp

.noexc168:                                        ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %.pre485 = load ptr, ptr %i.gq, align 8, !tbaa !119
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc168, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i
  %i.acw = phi ptr [ %.pre485, %.noexc168 ], [ %i.acs, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i ] ; 2 uses
  %i.acx = load double, ptr %i.aal, align 8, !tbaa !56
  %i.acy = load ptr, ptr %i.ci, align 8, !tbaa !124 ; 2 uses
  %i.acz = load i64, ptr %i.cp, align 8, !tbaa !125 ; 2 uses
  %i.ada = mul nsw i64 %i.acz, %.055452           ; 2 uses
  %i.adb = getelementptr [8 x i8], ptr %i.acy, i64 %i.mb
  %i.adc = getelementptr [8 x i8], ptr %i.adb, i64 %i.ada ; 2 uses
  %i.add = load double, ptr %i.adc, align 8, !tbaa !56
  %i.ade = fadd double %i.acx, %i.add             ; 2 uses
  store double %i.ade, ptr %i.adc, align 8, !tbaa !56
  %i.adf = mul nsw i64 %i.acz, %i.mb
  %i.adg = getelementptr [8 x i8], ptr %i.acy, i64 %.055452 ; 2 uses
  %i.adh = getelementptr [8 x i8], ptr %i.adg, i64 %i.adf
  store double %i.ade, ptr %i.adh, align 8, !tbaa !56
  %i.adi = load double, ptr %i.aam, align 8, !tbaa !56
  %i.adj = getelementptr [8 x i8], ptr %i.adg, i64 %i.ada ; 2 uses
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !56
  %i.adl = fadd double %i.adi, %i.adk
  store double %i.adl, ptr %i.adj, align 8, !tbaa !56
  %i.adm = load ptr, ptr %i.ha, align 8, !tbaa !261, !nonnull !97, !align !138
  %i.adn = load ptr, ptr %i.hb, align 8, !tbaa !119 ; 4 uses
  %i.ado = load ptr, ptr %i.adm, align 8, !tbaa !264, !nonnull !97, !align !138 ; 6 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !157 ; 7 uses
  %i.ads = icmp sgt i64 %i.adr, 0
  br i1 %i.ads, label %bb.bo, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.adt = icmp samesign ugt i64 %i.adr, 2305843009213693951
  br i1 %i.adt, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.bo
  %i.adu = shl nuw i64 %i.adr, 3
  %calloc557 = call ptr @calloc(i64 1, i64 %i.adu) ; 2 uses
  %i.adv = icmp eq ptr %calloc557, null
  br i1 %i.adv, label %.invoke, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.bo
  %i.adw = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.adw, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.adw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.bp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.bn
end_hunk_1
begin_hunk_2_@_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE14factorize_fromEllRl:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.dp, i1 false), !tbaa !131
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dq = icmp slt i64 %i.df, %i.cw
  br i1 %i.dq, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %bb.y

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dr = shl i64 %i.dd, 4
  %i.ds = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.dt = getelementptr i8, ptr %i.cv, i64 %i.dr
  %scevgep1.i = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.du = sub i64 %i.dc, %i.de
  %i.dv = shl nuw i64 %i.du, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.dv, i1 false), !tbaa !56
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.dw = load i64, ptr %i.cl, align 8, !tbaa !249
  %i.dx = sub nsw i64 %i.dw, %1                   ; 6 uses
  %i.dy = load ptr, ptr %i.ck, align 8, !tbaa !124, !noalias !1102
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %1 ; 13 uses
  %i.ea = load i64, ptr %i.cr, align 8, !tbaa !125 ; 13 uses
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = and i64 %i.eb, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i123, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = icmp sgt i64 %1, 0
  %i.ee = icmp sgt i64 %i.dx, 0
  %or.cond392 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond392, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %.lr.ph

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:   ; preds = %bb.z
  %i.ef = shl nuw i64 %i.dx, 3                    ; 9 uses
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.eg = icmp ult i64 %1, 8
  br i1 %i.eg, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %unroll_iter = and i64 %1, 9223372036854775800
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new ], [ %i.fe, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.new ], [ %niter.next.7, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.eh = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ea
  %i.ei = getelementptr [8 x i8], ptr %i.dz, i64 %i.eh
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ei, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.ej = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ek = mul nsw i64 %i.ej, %i.ea
  %i.el = getelementptr [8 x i8], ptr %i.dz, i64 %i.ek
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.el, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.em = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.en = mul nsw i64 %i.em, %i.ea
  %i.eo = getelementptr [8 x i8], ptr %i.dz, i64 %i.en
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eo, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.ep = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.eq = mul nsw i64 %i.ep, %i.ea
  %i.er = getelementptr [8 x i8], ptr %i.dz, i64 %i.eq
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.er, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.es = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.et = mul nsw i64 %i.es, %i.ea
  %i.eu = getelementptr [8 x i8], ptr %i.dz, i64 %i.et
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eu, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.ev = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.ew = mul nsw i64 %i.ev, %i.ea
  %i.ex = getelementptr [8 x i8], ptr %i.dz, i64 %i.ew
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ex, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.ey = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.ez = mul nsw i64 %i.ey, %i.ea
  %i.fa = getelementptr [8 x i8], ptr %i.dz, i64 %i.ez
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fa, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.fb = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.fc = mul nsw i64 %i.fb, %i.ea
  %i.fd = getelementptr [8 x i8], ptr %i.dz, i64 %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fd, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.fe = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.loopexit740.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i123: ; preds = %bb.y
  %i.ff = and i64 %i.ea, 1
  %i.fg = icmp sgt i64 %1, 0
  br i1 %i.fg, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i123
  %i.fh = lshr exact i64 %i.eb, 3
  %i.fi = and i64 %i.fh, 1
  %i.fj = tail call i64 @llvm.smin.i64(i64 %i.fi, i64 %i.dx)
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i
  %.03451.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gk, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124 ] ; 4 uses
  %.03550.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fj, %.lr.ph52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124 ] ; 8 uses
  %i.fk = sub i64 %i.dx, %.03550.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.fl = and i64 %i.fk, -2
  %i.fm = add i64 %i.fl, %.03550.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fn = icmp sgt i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fn, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.aa
  %i.fo = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.ea
  %i.fp = getelementptr [8 x i8], ptr %i.dz, i64 %i.fo
  store double 0.000000e+00, ptr %i.fp, align 8, !tbaa !56
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aa
  %i.fq = icmp sgt i64 %i.fk, 1
  br i1 %i.fq, label %.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fr = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.ea
  %i.fs = getelementptr [8 x i8], ptr %i.dz, i64 %i.fr
  %i.ft = shl i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i125 = getelementptr i8, ptr %i.fs, i64 %i.ft
  %i.fu = add nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i126 = tail call i64 @llvm.smax.i64(i64 %i.fm, i64 %i.fu)
  %i.fv = xor i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.fw = add i64 %smax.i126, %i.fv
  %i.fx = shl i64 %i.fw, 3
  %i.fy = and i64 %i.fx, -16
  %i.fz = add i64 %i.fy, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i125, i8 0, i64 %i.fz, i1 false), !tbaa !131
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = icmp slt i64 %i.fm, %i.dx
  br i1 %i.ga, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124

.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gb = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, %i.ea
  %i.gc = getelementptr [8 x i8], ptr %i.dz, i64 %i.gb
  %i.gd = and i64 %i.fk, 2305843009213693950
  %i.ge = add nsw i64 %i.gd, %.03550.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = shl i64 %i.ge, 3
  %scevgep3.i = getelementptr i8, ptr %i.gc, i64 %i.gf
  %i.gg = shl i64 %i.fk, 3
  %i.gh = and i64 %i.gg, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep3.i, i8 0, i64 %i.gh, i1 false), !tbaa !56
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124:           ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gi = add nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, %i.ff
  %i.gj = srem i64 %i.gi, 2
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.dx, i64 %i.gj)
  %i.gk = add nuw nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gk, %1
  br i1 %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %bb.aa, !llvm.loop !10

.lr.ph.loopexit740.unr-lcssa:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.lr.ph.loopexit740.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ %i.fe, %.lr.ph.loopexit740.unr-lcssa ]
  %lcmp.mod741 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod741)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.gn, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.gl = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.ea
  %i.gm = getelementptr [8 x i8], ptr %i.dz, i64 %i.gl
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gm, i8 0, i64 %i.ef, i1 false), !tbaa !56
  %i.gn = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1049

.lr.ph:                                           ; preds = %.lr.ph.loopexit740.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124, %bb.z, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i123
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 8 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 14 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0377.0, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hn = add i64 %1, -1                          ; 2 uses
  br label %bb.ab

._crit_edge:                                      ; preds = %.critedge
  %.pre456 = load ptr, ptr %19, align 8, !tbaa !119
  store i64 %2, ptr %i.b, align 8, !tbaa !253
  call void @free(ptr noundef %.pre456) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @free(ptr noundef %.sroa.0377.0) #33
  br label %bb.cy

bb.ab:                                            ; preds = %.lr.ph, %.critedge
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.critedge ] ; 4 uses
  %.037423 = phi i64 [ %1, %.lr.ph ], [ %i.na, %.critedge ] ; 34 uses
  %i.ho = add i64 %i.hn, %indvar
  %i.hp = add i64 %i.hn, %indvar
  %25 = shl i64 %.037423, 3
  %i.hq = shl i64 %.037423, 3
  %26 = shl i64 %.037423, 3
  %i.hr = shl i64 %.037423, 3                     ; 2 uses
  %i.hs = add i64 %1, %indvar
  %i.ht = shl i64 %i.hs, 3
  %27 = getelementptr i8, ptr %.sroa.0377.0, i64 %i.ht
  %scevgep619 = getelementptr i8, ptr %27, i64 8
  %i.hu = load double, ptr %i.go, align 8, !tbaa !254 ; 2 uses
  %i.hv = fcmp olt double %i.hu, f0x0044000000000000 ; 2 uses
  br i1 %i.hv, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %i.hw = load ptr, ptr %i.gp, align 8, !tbaa !124
  %i.hx = load i64, ptr %i.bq, align 8, !tbaa !248
  store ptr %i.hw, ptr %20, align 8, !tbaa !256
  store i64 %i.hx, ptr %i.gq, align 8, !tbaa !139
  store i64 %.037423, ptr %i.gr, align 8, !tbaa !139
  %i.hy = shl nsw i64 %.037423, 1
  invoke void @_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE12expand_basisERNS6_3MapIKS8_Li0ENS6_6StrideILi0ELi0EEEEElRS9_RdRl(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(26) %20, i64 noundef %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  %.pre = load double, ptr %i.go, align 8, !tbaa !56, !noalias !1103
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.cz

bb.af:                                            ; preds = %bb.ab, %bb.ad
  %i.ia = phi double [ %i.hu, %bb.ab ], [ %.pre, %bb.ad ] ; 13 uses
  %i.ib = load ptr, ptr %i.gp, align 8, !tbaa !124, !noalias !1104 ; 2 uses
  %i.ic = ptrtoaddr ptr %i.ib to i64              ; 2 uses
  %i.id = load i64, ptr %i.gu, align 8, !tbaa !125, !noalias !1104 ; 11 uses
  %i.ie = mul nsw i64 %i.id, %.037423
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.ie ; 14 uses
  %i.ig = load ptr, ptr %i.gs, align 8, !tbaa !119 ; 14 uses
  %i.ih = ptrtoaddr ptr %i.ig to i64              ; 2 uses
  %.sroa.7.16.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ii = ptrtoint ptr %i.if to i64               ; 2 uses
  %i.ij = and i64 %i.ii, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ik = lshr exact i64 %i.ii, 3
  %i.il = and i64 %i.ik, 1
  %i.im = call i64 @llvm.smin.i64(i64 %i.il, i64 %i.id)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i = phi i64 [ %i.im, %bb.ag ], [ %i.id, %bb.af ] ; 11 uses
  %i.in = sub nsw i64 %i.id, %.0.i.i.i.i.i.i      ; 2 uses
  %i.io = sdiv i64 %i.in, 2
  %i.ip = shl nsw i64 %i.io, 1                    ; 2 uses
  %i.iq = add nsw i64 %i.ip, %.0.i.i.i.i.i.i      ; 6 uses
  %i.ir = icmp sgt i64 %.0.i.i.i.i.i.i, 0
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %min.iters.check684 = icmp eq i64 %.0.i.i.i.i.i.i, 1
  br i1 %min.iters.check684, label %.lr.ph.i.i.i.i.i.i.preheader720, label %vector.memcheck681

vector.memcheck681:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.is = mul i64 %i.id, %25
  %i.it = add i64 %i.is, %i.ic
  %i.iu = sub i64 %i.ih, %i.it
  %diff.check682 = icmp ugt i64 %i.iu, -16
  br i1 %diff.check682, label %.lr.ph.i.i.i.i.i.i.preheader720, label %vector.ph685

vector.ph685:                                     ; preds = %vector.memcheck681
  %n.vec686 = and i64 %.0.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert687 = insertelement <2 x double> poison, double %i.ia, i64 0
  %broadcast.splat688 = shufflevector <2 x double> %broadcast.splatinsert687, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body689

vector.body689:                                   ; preds = %vector.body689, %vector.ph685
  %index690 = phi i64 [ 0, %vector.ph685 ], [ %index.next692, %vector.body689 ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index690
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index690
  %wide.load691 = load <2 x double>, ptr %i.iw, align 8, !tbaa !56
  %i.ix = fdiv <2 x double> %wide.load691, %broadcast.splat688
  store <2 x double> %i.ix, ptr %i.iv, align 8, !tbaa !56
  %index.next692 = add nuw i64 %index690, 2       ; 2 uses
  %i.iy = icmp eq i64 %index.next692, %n.vec686
  br i1 %i.iy, label %middle.block693, label %vector.body689, !llvm.loop !1054

middle.block693:                                  ; preds = %vector.body689
  %cmp.n694 = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec686
  br i1 %cmp.n694, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader720

.lr.ph.i.i.i.i.i.i.preheader720:                  ; preds = %vector.memcheck681, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block693
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck681 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec686, %middle.block693 ] ; 4 uses
  %i.iz = sub nsw i64 %.0.i.i.i.i.i.i, %.05.i.i.i.i.i.i.ph
  %xtraiter742 = and i64 %i.iz, 3                 ; 2 uses
  %lcmp.mod743.not = icmp eq i64 %xtraiter742, 0
  br i1 %lcmp.mod743.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader720, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.je, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader720 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader720 ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.05.i.i.i.i.i.i.prol
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i.prol
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !56
  %i.jd = fdiv double %i.jc, %i.ia
  store double %i.jd, ptr %i.ja, align 8, !tbaa !56
  %i.je = add nuw nsw i64 %.05.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter742
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1055

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader720
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader720 ], [ %i.je, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.jf = sub nsw i64 %.05.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.ka, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.05.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !56
  %i.jk = fdiv double %i.jj, %i.ia
  store double %i.jk, ptr %i.jh, align 8, !tbaa !56
  %i.jl = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jl
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !56
  %i.jp = fdiv double %i.jo, %i.ia
  store double %i.jp, ptr %i.jm, align 8, !tbaa !56
  %i.jq = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jq
  %i.jt = load double, ptr %i.js, align 8, !tbaa !56
  %i.ju = fdiv double %i.jt, %i.ia
  store double %i.ju, ptr %i.jr, align 8, !tbaa !56
  %i.jv = add nuw nsw i64 %.05.i.i.i.i.i.i, 3     ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jv
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jv
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !56
  %i.jz = fdiv double %i.jy, %i.ia
  store double %i.jz, ptr %i.jw, align 8, !tbaa !56
  %i.ka = add nuw nsw i64 %.05.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ka, %.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1056

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block693, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %i.kb = icmp sgt i64 %i.in, 1
  br i1 %i.kb, label %.lr.ph.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.kc = shufflevector <2 x double> %.sroa.7.16.vec.insert.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.kd = icmp slt i64 %i.iq, %i.id
  br i1 %i.kd, label %.lr.ph.i17.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i
  %i.ke = add i64 %.0.i.i.i.i.i.i, %i.ip
  %i.kf = sub i64 %i.id, %i.ke                    ; 3 uses
  %min.iters.check671 = icmp ult i64 %i.kf, 2
  br i1 %min.iters.check671, label %.lr.ph.i17.i.i.i.i.i.preheader719, label %vector.memcheck668

vector.memcheck668:                               ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.kg = mul i64 %i.id, %i.hq
  %i.kh = add i64 %i.kg, %i.ic
  %i.ki = sub i64 %i.ih, %i.kh
  %diff.check669 = icmp ugt i64 %i.ki, -16
  br i1 %diff.check669, label %.lr.ph.i17.i.i.i.i.i.preheader719, label %vector.ph672

vector.ph672:                                     ; preds = %vector.memcheck668
  %n.vec673 = and i64 %i.kf, -2                   ; 3 uses
  %i.kj = add i64 %i.iq, %n.vec673
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ia, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body674

vector.body674:                                   ; preds = %vector.body674, %vector.ph672
  %index675 = phi i64 [ 0, %vector.ph672 ], [ %index.next677, %vector.body674 ] ; 2 uses
  %i.kk = add i64 %i.iq, %index675                ; 2 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.kk
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.kk
  %wide.load676 = load <2 x double>, ptr %i.km, align 8, !tbaa !56
  %i.kn = fdiv <2 x double> %wide.load676, %broadcast.splat
  store <2 x double> %i.kn, ptr %i.kl, align 8, !tbaa !56
  %index.next677 = add nuw i64 %index675, 2       ; 2 uses
  %i.ko = icmp eq i64 %index.next677, %n.vec673
  br i1 %i.ko, label %middle.block678, label %vector.body674, !llvm.loop !1057

middle.block678:                                  ; preds = %vector.body674
  %cmp.n679 = icmp eq i64 %i.kf, %n.vec673
  br i1 %cmp.n679, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.preheader719

.lr.ph.i17.i.i.i.i.i.preheader719:                ; preds = %vector.memcheck668, %.lr.ph.i17.i.i.i.i.i.preheader, %middle.block678
  %.05.i18.i.i.i.i.i.ph = phi i64 [ %i.iq, %vector.memcheck668 ], [ %i.iq, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %i.kj, %middle.block678 ] ; 4 uses
  %i.kp = sub i64 %i.id, %.05.i18.i.i.i.i.i.ph
  %xtraiter744 = and i64 %i.kp, 3                 ; 2 uses
  %lcmp.mod745.not = icmp eq i64 %xtraiter744, 0
  br i1 %lcmp.mod745.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader719, %.lr.ph.i17.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.prol = phi i64 [ %i.ku, %.lr.ph.i17.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader719 ] ; 3 uses
  %prol.iter746 = phi i64 [ %prol.iter746.next, %.lr.ph.i17.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.preheader719 ]
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.05.i18.i.i.i.i.i.prol
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %.05.i18.i.i.i.i.i.prol
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !56
  %i.kt = fdiv double %i.ks, %i.ia
  store double %i.kt, ptr %i.kq, align 8, !tbaa !56
  %i.ku = add nsw i64 %.05.i18.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter746.next = add i64 %prol.iter746, 1   ; 2 uses
  %prol.iter746.cmp.not = icmp eq i64 %prol.iter746.next, %xtraiter744
  br i1 %prol.iter746.cmp.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol, !llvm.loop !1058

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader719
  %.05.i18.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader719 ], [ %i.ku, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.kv = sub i64 %.05.i18.i.i.i.i.i.ph, %i.id
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %.05.i18.i.i.i.i.i = phi i64 [ %i.lq, %.lr.ph.i17.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.05.i18.i.i.i.i.i
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %.05.i18.i.i.i.i.i
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !56
  %i.la = fdiv double %i.kz, %i.ia
  store double %i.la, ptr %i.kx, align 8, !tbaa !56
  %i.lb = add nsw i64 %.05.i18.i.i.i.i.i, 1       ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.lb
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.lb
  %i.le = load double, ptr %i.ld, align 8, !tbaa !56
  %i.lf = fdiv double %i.le, %i.ia
  store double %i.lf, ptr %i.lc, align 8, !tbaa !56
  %i.lg = add nsw i64 %.05.i18.i.i.i.i.i, 2       ; 2 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.lg
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.lg
  %i.lj = load double, ptr %i.li, align 8, !tbaa !56
  %i.lk = fdiv double %i.lj, %i.ia
  store double %i.lk, ptr %i.lh, align 8, !tbaa !56
  %i.ll = add nsw i64 %.05.i18.i.i.i.i.i, 3       ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.ll
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.ll
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !56
  %i.lp = fdiv double %i.lo, %i.ia
  store double %i.lp, ptr %i.lm, align 8, !tbaa !56
  %i.lq = add nsw i64 %.05.i18.i.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.3 = icmp eq i64 %i.lq, %i.id
  br i1 %exitcond.not.i19.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !1059

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.lv, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.021.i.i.i.i.i
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %.021.i.i.i.i.i
  %i.lt = load <2 x double>, ptr %i.ls, align 1, !tbaa !131
  %i.lu = fdiv <2 x double> %i.lt, %i.kc
  store <2 x double> %i.lu, ptr %i.lr, align 16, !tbaa !131
  %i.lv = add nsw i64 %.021.i.i.i.i.i, 2          ; 2 uses
  %i.lw = icmp slt i64 %i.lv, %i.iq
  br i1 %i.lw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1060

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block678, %._crit_edge.i.i.i.i.i
  br i1 %i.hv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit
  %i.lx = load double, ptr %i.go, align 8, !tbaa !254
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit
  %i.ly = phi double [ %i.lx, %bb.ah ], [ 0.000000e+00, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit ]
  %i.lz = add nsw i64 %.037423, -1
  %i.ma = load ptr, ptr %i.ck, align 8, !tbaa !124
  %i.mb = load i64, ptr %i.cr, align 8, !tbaa !125
  %i.mc = mul nsw i64 %i.mb, %i.lz
  %i.md = getelementptr [8 x i8], ptr %i.ma, i64 %.037423
  %i.me = getelementptr [8 x i8], ptr %i.md, i64 %i.mc
  store double %i.ly, ptr %i.me, align 8, !tbaa !56
  %i.mf = load ptr, ptr %i.gp, align 8, !tbaa !124
  %i.mg = load i64, ptr %i.gu, align 8, !tbaa !125
  %i.mh = mul nsw i64 %i.mg, %.037423
  %i.mi = getelementptr [8 x i8], ptr %i.mf, i64 %i.mh
  %i.mj = load ptr, ptr %19, align 8, !tbaa !119
  %i.mk = load ptr, ptr %i.gv, align 8, !tbaa !257, !nonnull !97, !align !138 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !258, !nonnull !97, !align !138
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !119
  invoke void @_ZZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS2_8SparseLUINS2_12SparseMatrixIdLi0EiEENS2_14COLAMDOrderingIiEEEEEEbRKNS7_IT_Li0EiEESF_iSC_RNS2_15PlainObjectBaseIT0_EERNSG_IT1_EEENK13SparseMatProd10perform_opEPKdPd(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef nonnull %i.mi, ptr noundef %i.mo)
          to label %.noexc unwind label %bb.bb

.noexc:                                           ; preds = %bb.ai
  %i.mp = load ptr, ptr %i.mk, align 8, !tbaa !247, !nonnull !97, !align !138 ; 2 uses
  %i.mq = load ptr, ptr %i.mn, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !156, !nonnull !97, !align !138 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !147
  store ptr %i.mq, ptr %11, align 8, !tbaa !260
  store i64 %i.mt, ptr %i.gw, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !157
  store ptr %i.mj, ptr %12, align 8, !tbaa !228
  store i64 %i.mv, ptr %i.gx, align 8, !tbaa !139
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mx = invoke noundef zeroext i1 @_ZNK5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS7_IS9_Li0ESC_EEEEbRKNS_10MatrixBaseIT_EERNSF_IT0_EE(ptr noundef nonnull align 8 dereferenceable(584) %i.mw, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(19) %12)
          to label %bb.aj unwind label %bb.bb     ; 0 uses

bb.aj:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.my = load i64, ptr %3, align 8, !tbaa !161
  %i.mz = add nsw i64 %i.my, 1
  store i64 %i.mz, ptr %3, align 8, !tbaa !161
  %i.na = add i64 %.037423, 1                     ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  %i.nb = load ptr, ptr %i.gp, align 8, !tbaa !124
  %i.nc = load i64, ptr %i.bq, align 8, !tbaa !248
  store ptr %i.nb, ptr %21, align 8, !tbaa !256
  store i64 %i.nc, ptr %i.gy, align 8, !tbaa !139
  store i64 %i.na, ptr %i.gz, align 8, !tbaa !139
  %i.nd = load ptr, ptr %i.ck, align 8, !tbaa !124 ; 4 uses
  %i.ne = load i64, ptr %i.cr, align 8, !tbaa !125 ; 4 uses
  %i.nf = mul i64 %i.ne, %.037423
  %i.ng = getelementptr [8 x i8], ptr %i.nd, i64 %i.nf ; 35 uses
  store ptr %i.ng, ptr %22, align 8, !tbaa !184
  store i64 %i.na, ptr %i.ha, align 8, !tbaa !139
  invoke void @_ZNK7Spectra9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E13trans_productINS5_3MapIKS7_Li0ENS5_6StrideILi0ELi0EEEEES8_EEvRKSF_RKSK_NS5_3RefIS8_Li0ENS5_11InnerStrideILi1EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(26) %21, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dead_on_return %22)
          to label %bb.ak unwind label %bb.bc

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0334.0.copyload = load ptr, ptr %21, align 8 ; 7 uses
  %.sroa.5335.0.copyload = load i64, ptr %i.gy, align 8 ; 3 uses
  %.sroa.6336.0.copyload = load i64, ptr %i.gz, align 8
  %i.nh = load ptr, ptr %19, align 8, !tbaa !119  ; 8 uses
  %i.ni = ptrtoaddr ptr %i.nh to i64
  %i.nj = load i64, ptr %i.cj, align 8, !tbaa !135 ; 3 uses
  %i.nk = load i64, ptr %i.gt, align 8, !tbaa !135
  %.not.i.i.i.i.i = icmp eq i64 %i.nk, %i.nj
  br i1 %.not.i.i.i.i.i, label %bb.al, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.ak
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 noundef %i.nj, i64 noundef 1)
          to label %.noexc218 unwind label %bb.bd

.noexc218:                                        ; preds = %thread-pre-split.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.gt, align 8, !tbaa !135
  br label %bb.al

bb.al:                                            ; preds = %.noexc218, %bb.ak
  %i.nl = phi i64 [ %.pr.i.i.i.i, %.noexc218 ], [ %i.nj, %bb.ak ] ; 7 uses
  %i.nm = load ptr, ptr %i.gs, align 8, !tbaa !119 ; 8 uses
  %i.nn = ptrtoaddr ptr %i.nm to i64
  %i.no = sdiv i64 %i.nl, 2
  %i.np = shl nsw i64 %i.no, 1                    ; 6 uses
  %i.nq = icmp sgt i64 %i.nl, 1
  br i1 %i.nq, label %.lr.ph.i.i.i.i.i217, label %._crit_edge.i.i.i.i.i205

._crit_edge.i.i.i.i.i205:                         ; preds = %.lr.ph.i.i.i.i.i217, %bb.al
  %i.nr = icmp slt i64 %i.np, %i.nl
  br i1 %i.nr, label %.lr.ph.i.i.i.i.i.i214.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i

.lr.ph.i.i.i.i.i.i214.preheader:                  ; preds = %._crit_edge.i.i.i.i.i205
  %i.ns = sub i64 %i.nl, %i.np                    ; 3 uses
  %min.iters.check657 = icmp ult i64 %i.ns, 4
  %i.nt = sub i64 %i.ni, %i.nn
  %diff.check655 = icmp ugt i64 %i.nt, -32
end_hunk_2
begin_hunk_3_@_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE14factorize_fromEllRl:bb.a

.lr.ph85.i.i.i.i.i.i.i134:                        ; preds = %.lr.ph85.i.i.i.i.i.i.i134.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i134
  %.05283.i.i.i.i.i.i.i135 = phi i64 [ %i.xg, %.lr.ph85.i.i.i.i.i.i.i134 ], [ %.05283.i.i.i.i.i.i.i135.unr, %.lr.ph85.i.i.i.i.i.i.i134.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i136 = phi double [ %i.xf, %.lr.ph85.i.i.i.i.i.i.i134 ], [ %.182.i.i.i.i.i.i.i136.unr, %.lr.ph85.i.i.i.i.i.i.i134.prol.loopexit ]
  %i.wf = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %.05283.i.i.i.i.i.i.i135
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %.05283.i.i.i.i.i.i.i135
  %i.wh = load double, ptr %i.wf, align 8, !tbaa !56
  %i.wi = load double, ptr %i.wg, align 8, !tbaa !56
  %i.wj = fmul double %i.wh, %i.wi
  %i.wk = fadd double %.182.i.i.i.i.i.i.i136, %i.wj
  %i.wl = add nsw i64 %.05283.i.i.i.i.i.i.i135, 1 ; 2 uses
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.wl
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %i.wl
  %i.wo = load double, ptr %i.wm, align 8, !tbaa !56
  %i.wp = load double, ptr %i.wn, align 8, !tbaa !56
  %i.wq = fmul double %i.wo, %i.wp
  %i.wr = fadd double %i.wk, %i.wq
  %i.ws = add nsw i64 %.05283.i.i.i.i.i.i.i135, 2 ; 2 uses
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.ws
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %i.ws
  %i.wv = load double, ptr %i.wt, align 8, !tbaa !56
  %i.ww = load double, ptr %i.wu, align 8, !tbaa !56
  %i.wx = fmul double %i.wv, %i.ww
  %i.wy = fadd double %i.wr, %i.wx
  %i.wz = add nsw i64 %.05283.i.i.i.i.i.i.i135, 3 ; 2 uses
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.wz
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %i.wz
  %i.xc = load double, ptr %i.xa, align 8, !tbaa !56
  %i.xd = load double, ptr %i.xb, align 8, !tbaa !56
  %i.xe = fmul double %i.xc, %i.xd
  %i.xf = fadd double %i.wy, %i.xe                ; 2 uses
  %i.xg = add nsw i64 %.05283.i.i.i.i.i.i.i135, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i137.3 = icmp eq i64 %i.xg, %i.ug
  br i1 %exitcond.not.i.i.i.i.i.i.i137.3, label %.loopexit398, label %.lr.ph85.i.i.i.i.i.i.i134, !llvm.loop !12

bb.ba:                                            ; preds = %bb.av
  %i.xh = load double, ptr %i.ng, align 8, !tbaa !56
  %i.xi = load double, ptr %i.ui, align 8, !tbaa !56
  %i.xj = fmul double %i.xh, %i.xi
  br label %.loopexit398

.loopexit398:                                     ; preds = %.lr.ph85.i.i.i.i.i.i.i134.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i134, %bb.ba, %bb.az, %.noexc147
  %.0.i.i.i.i.i133 = phi double [ 0.000000e+00, %.noexc147 ], [ %i.vt, %bb.az ], [ %i.xj, %bb.ba ], [ %.lcssa726.unr, %.lr.ph85.i.i.i.i.i.i.i134.prol.loopexit ], [ %i.xf, %.lr.ph85.i.i.i.i.i.i.i134 ]
  %i.xk = call noundef double @sqrt(double noundef %.0.i.i.i.i.i133) #33
  %i.xl = fmul double %i.xk, 7.170000e-01
  %i.xm = fcmp ogt double %i.ue, %i.xl
  br i1 %i.xm, label %.critedge, label %bb.be

bb.bb:                                            ; preds = %.noexc, %bb.ai
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bc:                                            ; preds = %.loopexit399, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_7ProductINS_3MapIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENSC_IS2_Li0ESG_EELi0EEEEEEERS2_RKNS3_IT_EE.exit, %bb.aj
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %.body224

bb.bd:                                            ; preds = %bb.ao, %thread-pre-split.i.i.i.i
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %.body224

bb.be:                                            ; preds = %.loopexit398
  store ptr %.sroa.0377.0, ptr %23, align 8, !tbaa !184
  store i64 %i.na, ptr %i.hg, align 8, !tbaa !139
  invoke void @_ZNK7Spectra9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E13trans_productINS5_3MapIKS7_Li0ENS5_6StrideILi0ELi0EEEEES8_EEvRKSF_RKSK_NS5_3RefIS8_Li0ENS5_11InnerStrideILi1EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(26) %21, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dead_on_return %23)
          to label %bb.bf unwind label %bb.bo

bb.bf:                                            ; preds = %bb.be
  %i.xq = sdiv i64 %i.na, 4
  %i.xr = shl nsw i64 %i.xq, 2                    ; 6 uses
  %i.xs = sdiv i64 %i.na, 2
  %i.xt = shl nsw i64 %i.xs, 1                    ; 12 uses
  %.off.i.i.i.i = add i64 %.037423, 2
  %.not.i.i.i.i148 = icmp ult i64 %.off.i.i.i.i, 3 ; 2 uses
  br i1 %.not.i.i.i.i148, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.xu = load <2 x double>, ptr %.sroa.0377.0, align 1 ; 2 uses
  %i.xv = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.xu) ; 3 uses
  %i.xw = icmp sgt i64 %.037423, 2
  %i.xx = extractelement <2 x double> %i.xu, i64 0 ; 3 uses
  br i1 %i.xw, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.xy = load <2 x double>, ptr %i.hh, align 1, !tbaa !131
  %i.xz = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.xy) ; 2 uses
  %i.ya = icmp samesign ugt i64 %.037423, 6
  br i1 %i.ya, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.bh
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.xz, %bb.bh ], [ %i.yl, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.xv, %bb.bh ], [ %i.yg, %.lr.ph.i.i.i.i ]
  %i.yb = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.072.lcssa.i.i.i.i, <2 x double> %.075.lcssa.i.i.i.i) #20, !srcloc !262 ; 2 uses
  %i.yc = icmp sgt i64 %i.xt, %i.xr
  br i1 %i.yc, label %bb.bi, label %bb.bj

.lr.ph.i.i.i.i:                                   ; preds = %bb.bh, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.bh ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.bh ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.yg, %.lr.ph.i.i.i.i ], [ %i.xv, %bb.bh ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.yl, %.lr.ph.i.i.i.i ], [ %i.xz, %bb.bh ]
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %.05480.i.i.i.i
  %i.ye = load <2 x double>, ptr %i.yd, align 1, !tbaa !131
  %i.yf = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ye)
  %i.yg = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07278.i.i.i.i, <2 x double> %i.yf) #20, !srcloc !262 ; 2 uses
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %.054.in79.i.i.i.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 48
  %i.yj = load <2 x double>, ptr %i.yi, align 1, !tbaa !131
  %i.yk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yj)
  %i.yl = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07577.i.i.i.i, <2 x double> %i.yk) #20, !srcloc !262 ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ym = icmp slt i64 %.054.i.i.i.i, %i.xr
  br i1 %i.ym, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !15

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %i.xr
  %i.yo = load <2 x double>, ptr %i.yn, align 1, !tbaa !131
  %i.yp = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yo)
  %i.yq = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.yb, <2 x double> %i.yp) #20, !srcloc !262
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge.i.i.i.i, %bb.bg
  %.274.i.i.i.i = phi <2 x double> [ %i.xv, %bb.bg ], [ %i.yq, %bb.bi ], [ %i.yb, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 1 ; 2 uses
  %i.yr = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.ys = select i1 %i.yr, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 4 uses
  %.not393 = icmp sgt i64 %i.xt, %.037423
  br i1 %.not393, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i.preheader

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.bj
  %i.yt = and i64 %.037423, 1
  %lcmp.mod764.not.not = icmp eq i64 %i.yt, 0
  br i1 %lcmp.mod764.not.not, label %.lr.ph85.i.i.i.i.prol, label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader
  %i.yu = getelementptr inbounds [8 x i8], ptr %.sroa.0377.0, i64 %i.xt
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !56
  %i.yw = call noundef double @llvm.fabs.f64(double %i.yv) ; 2 uses
  %i.yx = fcmp olt double %i.ys, %i.yw
  %i.yy = select i1 %i.yx, double %i.yw, double %i.ys ; 2 uses
  %i.yz = or disjoint i64 %i.xt, 1
  br label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa729.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.yy, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.xt, %.lr.ph85.i.i.i.i.preheader ], [ %i.yz, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.ys, %.lr.ph85.i.i.i.i.preheader ], [ %i.yy, %.lr.ph85.i.i.i.i.prol ]
  %i.za = icmp eq i64 %.037423, %i.xt
  br i1 %i.za, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.zm, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i = phi double [ %i.zl, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.zb = getelementptr inbounds [8 x i8], ptr %.sroa.0377.0, i64 %.05283.i.i.i.i
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !56
  %i.zd = call noundef double @llvm.fabs.f64(double %i.zc) ; 2 uses
  %i.ze = fcmp olt double %.182.i.i.i.i, %i.zd
  %i.zf = select i1 %i.ze, double %i.zd, double %.182.i.i.i.i ; 2 uses
  %i.zg = add nsw i64 %.05283.i.i.i.i, 1          ; 2 uses
  %i.zh = getelementptr inbounds [8 x i8], ptr %.sroa.0377.0, i64 %i.zg
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !56
  %i.zj = call noundef double @llvm.fabs.f64(double %i.zi) ; 2 uses
  %i.zk = fcmp olt double %i.zf, %i.zj
  %i.zl = select i1 %i.zk, double %i.zj, double %i.zf ; 2 uses
  %i.zm = add nsw i64 %.05283.i.i.i.i, 2
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.zg, %.037423
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !16

bb.bk:                                            ; preds = %bb.bf
  %i.zn = load double, ptr %.sroa.0377.0, align 8, !tbaa !56 ; 2 uses
  %i.zo = call noundef double @llvm.fabs.f64(double %i.zn)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.bk, %bb.bj
  %i.zp = phi double [ %i.xx, %bb.bj ], [ %i.zn, %bb.bk ], [ %i.xx, %.lr.ph85.i.i.i.i ], [ %i.xx, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %.3.i.i.i.i = phi double [ %i.ys, %bb.bj ], [ %i.zo, %bb.bk ], [ %.lcssa729.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.zl, %.lr.ph85.i.i.i.i ]
  %i.zq = icmp eq i64 %i.na, 0
  %i.zr = icmp sgt i64 %.037423, 0
  %i.zs = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.zt = and i64 %i.zs, 7
  %.not.i.i.i.i.i.i150 = icmp eq i64 %i.zt, 0
  %i.zu = lshr exact i64 %i.zs, 3
  %i.zv = and i64 %i.zu, 1
  %i.zw = call i64 @llvm.smin.i64(i64 %i.zv, i64 %i.na)
  %i.zx = icmp sgt i64 %.037423, 2
  %i.zy = icmp samesign ugt i64 %.037423, 6
  %i.zz = icmp sgt i64 %i.xt, %i.xr
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %i.xr
  %.not395 = icmp sgt i64 %i.xt, %.037423
  %spec.select = select i1 %.not.i.i.i.i.i.i150, i64 %i.zw, i64 %i.na ; 13 uses
  %i.aab = sub nsw i64 %i.na, %spec.select        ; 2 uses
  %i.aac = sdiv i64 %i.aab, 2                     ; 2 uses
  %i.aad = shl nsw i64 %i.aac, 1                  ; 2 uses
  %i.aae = add nsw i64 %i.aad, %spec.select       ; 5 uses
  %i.aaf = icmp sgt i64 %spec.select, 0
  %i.aag = icmp sgt i64 %i.aab, 1
  %.not394 = icmp sgt i64 %i.aae, %.037423
  %i.aah = mul i64 %i.ne, %i.hr
  %i.aai = shl i64 %i.aac, 4                      ; 2 uses
  %i.aaj = shl i64 %spec.select, 3                ; 2 uses
  %i.aak = getelementptr i8, ptr %i.nd, i64 %i.aah
  %i.aal = getelementptr i8, ptr %i.aak, i64 %i.aai
  %scevgep = getelementptr i8, ptr %i.aal, i64 %i.aaj
  %scevgep616 = getelementptr i8, ptr %i.nd, i64 8
  %i.aam = add i64 %i.ne, 1
  %i.aan = mul i64 %i.hr, %i.aam
  %scevgep617 = getelementptr i8, ptr %scevgep616, i64 %i.aan
  %i.aao = getelementptr i8, ptr %.sroa.0377.0, i64 %i.aai
  %scevgep618 = getelementptr i8, ptr %i.aao, i64 %i.aaj
  %i.aap = mul i64 %i.ne, %26
  %i.aaq = shl i64 %spec.select, 3                ; 2 uses
  %i.aar = getelementptr i8, ptr %i.nd, i64 %i.aap
  %scevgep635 = getelementptr i8, ptr %i.aar, i64 %i.aaq
  %scevgep636 = getelementptr i8, ptr %.sroa.0377.0, i64 %i.aaq
  %xtraiter766 = and i64 %.037423, 3              ; 3 uses
  %i.aas = icmp ult i64 %i.ho, 3
  %unroll_iter771 = and i64 %.037423, 9223372036854775804
  %lcmp.mod768.not = icmp eq i64 %xtraiter766, 0
  %lcmp.mod770 = icmp ne i64 %xtraiter766, 0
  %min.iters.check641 = icmp ult i64 %spec.select, 4
  %bound0637 = icmp ult ptr %i.ng, %scevgep636
  %bound1638 = icmp ult ptr %.sroa.0377.0, %scevgep635
  %found.conflict639 = and i1 %bound0637, %bound1638
  %n.vec643 = and i64 %spec.select, 9223372036854775804 ; 3 uses
  %cmp.n652 = icmp eq i64 %spec.select, %n.vec643
  %xtraiter773 = and i64 %spec.select, 3          ; 2 uses
  %lcmp.mod774.not = icmp eq i64 %xtraiter773, 0
  %i.aat = add i64 %spec.select, %i.aad
  %i.aau = sub i64 %i.na, %i.aat                  ; 3 uses
  %min.iters.check621 = icmp ult i64 %i.aau, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep619
  %bound1 = icmp ult ptr %scevgep618, %scevgep617
  %found.conflict = and i1 %bound0, %bound1
  %n.vec623 = and i64 %i.aau, -4                  ; 3 uses
  %i.aav = add i64 %i.aae, %n.vec623
  %cmp.n632 = icmp eq i64 %i.aau, %n.vec623
  %i.aaw = and i64 %.037423, 1
  %lcmp.mod804.not.not = icmp eq i64 %i.aaw, 0
  %i.aax = getelementptr inbounds [8 x i8], ptr %.sroa.0377.0, i64 %i.xt
  %i.aay = or disjoint i64 %i.xt, 1
  %i.aaz = icmp eq i64 %.037423, %i.xt
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit204
  %i.aba = phi double [ %i.zp, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %i.bbp, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit204 ]
  %.0421 = phi i32 [ 0, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %i.bbq, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit204 ]
  %.035420 = phi double [ %.3.i.i.i.i, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %.3.i.i.i.i190, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit204 ]
  %i.abb = load double, ptr %i.go, align 8, !tbaa !254 ; 2 uses
  %i.abc = fmul double %i.abb, f0x3CB0000000000000
  %i.abd = fcmp ogt double %.035420, %i.abc
  br i1 %i.abd, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.abe = fcmp olt double %i.abb, %i.bu
  br i1 %i.abe, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.abf = load i64, ptr %i.gt, align 8, !tbaa !135 ; 2 uses
  %i.abg = icmp slt i64 %i.abf, 1
  br i1 %i.abg, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.bn
  %i.abh = load ptr, ptr %i.gs, align 8, !tbaa !119
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.abf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abh, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !56
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %bb.bn
  store double 0.000000e+00, ptr %i.go, align 8, !tbaa !254
  br label %.critedge

bb.bo:                                            ; preds = %bb.be
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %.body224

bb.bp:                                            ; preds = %bb.bm
  %.sroa.0295.0.copyload = load ptr, ptr %21, align 8 ; 7 uses
  %.sroa.5296.0.copyload = load i64, ptr %i.gy, align 8 ; 3 uses
  %i.abj = icmp eq i64 %.sroa.5296.0.copyload, 1
  br i1 %i.abj, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.zq, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.abk = load double, ptr %.sroa.0295.0.copyload, align 8, !tbaa !56
  %i.abl = fmul double %i.abk, %i.aba             ; 3 uses
  br i1 %i.zr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.br
  br i1 %i.aas, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01724.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.acn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.acm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %niter772 = phi i64 [ %niter772.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.abm = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !56
  %i.abo = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !56
  %i.abq = fmul double %i.abn, %i.abp
  %i.abr = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i, %i.abq
  %i.abs = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.abt = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %i.abs
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !56
  %i.abv = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %i.abs
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !56
  %i.abx = fmul double %i.abu, %i.abw
  %i.aby = fadd double %i.abr, %i.abx
  %i.abz = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aca = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %i.abz
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !56
  %i.acc = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %i.abz
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !56
  %i.ace = fmul double %i.acb, %i.acd
  %i.acf = fadd double %i.aby, %i.ace
  %i.acg = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ach = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %i.acg
  %i.aci = load double, ptr %i.ach, align 8, !tbaa !56
  %i.acj = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %i.acg
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !56
  %i.acl = fmul double %i.aci, %i.ack
  %i.acm = fadd double %i.acf, %i.acl             ; 3 uses
  %i.acn = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter772.next.3 = add nuw i64 %niter772, 4     ; 2 uses
  %niter772.ncmp.3 = icmp eq i64 %niter772.next.3, %unroll_iter771
  br i1 %niter772.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1068

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod768.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.acn, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.abl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.acm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod770)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.acu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.act, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter767 = phi i64 [ %epil.iter767.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.aco = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !56
  %i.acq = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !56
  %i.acs = fmul double %i.acp, %i.acr
  %i.act = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.epil, %i.acs ; 2 uses
  %i.acu = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter767.next = add i64 %epil.iter767, 1   ; 2 uses
  %epil.iter767.cmp.not = icmp eq i64 %epil.iter767.next, %xtraiter766
  br i1 %epil.iter767.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1069

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.br, %bb.bq
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.bq ], [ %i.abl, %bb.br ], [ %i.acm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.act, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.acv = load ptr, ptr %i.gs, align 8, !tbaa !119 ; 2 uses
  %i.acw = load double, ptr %i.acv, align 8, !tbaa !56
  %i.acx = fsub double %i.acw, %.0.i.i.i.i.i.i.i.i.i
  store double %i.acx, ptr %i.acv, align 8, !tbaa !56
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i151

bb.bs:                                            ; preds = %bb.bp
  %.sroa.6297.0.copyload = load i64, ptr %i.gz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store ptr %.sroa.0295.0.copyload, ptr %9, align 8, !tbaa !222
  store i64 %.sroa.5296.0.copyload, ptr %i.hi, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr %.sroa.0377.0, ptr %10, align 8, !tbaa !225
  store i64 1, ptr %i.hj, align 8, !tbaa !226
  %i.acy = load ptr, ptr %i.gs, align 8, !tbaa !119
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.5296.0.copyload, i64 noundef %.sroa.6297.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.acy, i64 noundef 1, double noundef -1.000000e+00)
          to label %.noexc149 unwind label %bb.cw

.noexc149:                                        ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i151

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i151: ; preds = %.noexc149, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i
  br i1 %i.aaf, label %.lr.ph.i.i.i.i.i.i159.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockIS8_Lin1ELi1ELb0EEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i159.preheader:                  ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i151
  %brmerge = select i1 %min.iters.check641, i1 true, i1 %found.conflict639
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i159.preheader717, label %vector.body644

vector.body644:                                   ; preds = %.lr.ph.i.i.i.i.i.i159.preheader, %vector.body644
  %index645 = phi i64 [ %index.next650, %vector.body644 ], [ 0, %.lr.ph.i.i.i.i.i.i159.preheader ] ; 3 uses
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %index645 ; 3 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %index645 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %wide.load646 = load <2 x double>, ptr %i.ada, align 8, !tbaa !56, !alias.scope !1105
  %wide.load647 = load <2 x double>, ptr %i.adb, align 8, !tbaa !56, !alias.scope !1105
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 16 ; 2 uses
  %wide.load648 = load <2 x double>, ptr %i.acz, align 8, !tbaa !56, !alias.scope !1106, !noalias !1105
  %wide.load649 = load <2 x double>, ptr %i.adc, align 8, !tbaa !56, !alias.scope !1106, !noalias !1105
  %i.add = fadd <2 x double> %wide.load646, %wide.load648
  %i.ade = fadd <2 x double> %wide.load647, %wide.load649
  store <2 x double> %i.add, ptr %i.acz, align 8, !tbaa !56, !alias.scope !1106, !noalias !1105
  store <2 x double> %i.ade, ptr %i.adc, align 8, !tbaa !56, !alias.scope !1106, !noalias !1105
  %index.next650 = add nuw i64 %index645, 4       ; 2 uses
  %i.adf = icmp eq i64 %index.next650, %n.vec643
  br i1 %i.adf, label %middle.block651, label %vector.body644, !llvm.loop !1073

middle.block651:                                  ; preds = %vector.body644
  br i1 %cmp.n652, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockIS8_Lin1ELi1ELb0EEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i159.preheader717

.lr.ph.i.i.i.i.i.i159.preheader717:               ; preds = %.lr.ph.i.i.i.i.i.i159.preheader, %middle.block651
  %.05.i.i.i.i.i.i160.ph = phi i64 [ %n.vec643, %middle.block651 ], [ 0, %.lr.ph.i.i.i.i.i.i159.preheader ] ; 3 uses
  br i1 %lcmp.mod774.not, label %.lr.ph.i.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i.i159.prol

end_hunk_3
