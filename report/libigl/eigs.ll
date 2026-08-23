Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_ZN7Spectra7LanczosIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE14factorize_fromEllRl:bb.a
  %i.du = load i64, ptr %i.cj, align 8, !tbaa !858
  %i.dv = sub nsw i64 %i.du, %1                   ; 6 uses
  %i.dw = load ptr, ptr %i.ci, align 8, !tbaa !82, !noalias !905
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %1 ; 13 uses
  %i.dy = load i64, ptr %i.cp, align 8, !tbaa !83 ; 13 uses
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eg, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.eh = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ei = mul nsw i64 %i.eh, %i.dy
  %i.ej = getelementptr [8 x i8], ptr %i.dx, i64 %i.ei
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ej, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.ek = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.el = mul nsw i64 %i.ek, %i.dy
  %i.em = getelementptr [8 x i8], ptr %i.dx, i64 %i.el
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.em, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.en = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.eo = mul nsw i64 %i.en, %i.dy
  %i.ep = getelementptr [8 x i8], ptr %i.dx, i64 %i.eo
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ep, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.eq = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.er = mul nsw i64 %i.eq, %i.dy
  %i.es = getelementptr [8 x i8], ptr %i.dx, i64 %i.er
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.es, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.et = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.eu = mul nsw i64 %i.et, %i.dy
  %i.ev = getelementptr [8 x i8], ptr %i.dx, i64 %i.eu
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ev, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.ew = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.ex = mul nsw i64 %i.ew, %i.dy
  %i.ey = getelementptr [8 x i8], ptr %i.dx, i64 %i.ex
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ey, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.ez = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.fa = mul nsw i64 %i.ez, %i.dy
  %i.fb = getelementptr [8 x i8], ptr %i.dx, i64 %i.fa
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.fc = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.loopexit694.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !908

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
  store double 0.000000e+00, ptr %i.fn, align 8, !tbaa !9
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i145, i8 0, i64 %i.fx, i1 false), !tbaa !92
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep3.i, i8 0, i64 %i.gf, i1 false), !tbaa !9
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i144:           ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = add nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, %i.fd
  %i.gh = srem i64 %i.gg, 2
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.dv, i64 %i.gh)
  %i.gi = add nuw nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gi, %1
  br i1 %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %bb.z, !llvm.loop !909

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
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gk, i8 0, i64 %i.ed, i1 false), !tbaa !9
  %i.gl = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !910

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
  store i64 %2, ptr %i.b, align 8, !tbaa !901
  call void @free(ptr noundef %.sroa.0396.0) #33
  call void @free(ptr noundef %.sroa.0404.0) #33
  br label %bb.cr

bb.aa:                                            ; preds = %.lr.ph, %.critedge
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.critedge ] ; 5 uses
  %.055452 = phi i64 [ %1, %.lr.ph ], [ %i.yd, %.critedge ] ; 29 uses
  %19 = add i64 %i.hm, %indvar
  %i.hp = add i64 %1, %indvar
  %i.hq = shl i64 %i.hp, 3
  %20 = add i64 %1, %indvar
  %i.hr = shl i64 %20, 3
  %i.hs = add i64 %1, %indvar
  %i.ht = shl i64 %i.hs, 3
  %i.hu = add i64 %i.ht, -8
  %i.hv = load double, ptr %i.gm, align 8, !tbaa !911 ; 2 uses
  %i.hw = fcmp olt double %i.hv, f0x0044000000000000 ; 3 uses
  %.pre483 = load i64, ptr %i.bq, align 8, !tbaa !857 ; 2 uses
  br i1 %i.hw, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.hx = load ptr, ptr %i.gn, align 8, !tbaa !82
  store ptr %i.hx, ptr %15, align 8, !tbaa !912
  store i64 %.pre483, ptr %i.go, align 8, !tbaa !120
  store i64 %.055452, ptr %i.gp, align 8, !tbaa !120
  %i.hy = shl nsw i64 %.055452, 1
  invoke void @_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE12expand_basisERNS6_3MapIKS8_Li0ENS6_6StrideILi0ELi0EEEEElRS9_RdRl(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(26) %15, i64 noundef %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %.pre = load i64, ptr %i.bq, align 8, !tbaa !857
  %.pre484 = load double, ptr %i.gm, align 8, !tbaa !9, !noalias !914
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.cs

bb.ae:                                            ; preds = %bb.aa, %bb.ac
  %i.ia = phi double [ %i.hv, %bb.aa ], [ %.pre484, %bb.ac ] ; 13 uses
  %i.ib = phi i64 [ %.pre483, %bb.aa ], [ %.pre, %bb.ac ] ; 11 uses
  %i.ic = load ptr, ptr %i.gn, align 8, !tbaa !82 ; 2 uses
  %i.id = ptrtoaddr ptr %i.ic to i64              ; 2 uses
  %i.ie = load i64, ptr %i.gr, align 8, !tbaa !83 ; 3 uses
  %i.if = mul nsw i64 %i.ie, %.055452
  %i.ig = getelementptr [8 x i8], ptr %i.ic, i64 %i.if ; 31 uses
  %i.ih = load ptr, ptr %i.gq, align 8, !tbaa !73 ; 14 uses
  %i.ii = ptrtoaddr ptr %i.ih to i64              ; 2 uses
  %.sroa.7.16.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ij = ptrtoint ptr %i.ig to i64               ; 3 uses
  %i.ik = and i64 %i.ij, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.af, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.il = lshr exact i64 %i.ij, 3
  %i.im = and i64 %i.il, 1
  %i.in = call i64 @llvm.smin.i64(i64 %i.im, i64 %i.ib)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i64 [ %i.in, %bb.af ], [ %i.ib, %bb.ae ] ; 11 uses
  %i.io = sub nsw i64 %i.ib, %.0.i.i.i.i.i.i      ; 2 uses
  %i.ip = sdiv i64 %i.io, 2
  %i.iq = shl nsw i64 %i.ip, 1                    ; 2 uses
  %i.ir = add nsw i64 %i.iq, %.0.i.i.i.i.i.i      ; 6 uses
  %i.is = icmp sgt i64 %.0.i.i.i.i.i.i, 0
  br i1 %i.is, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %min.iters.check648 = icmp eq i64 %.0.i.i.i.i.i.i, 1
  br i1 %min.iters.check648, label %.lr.ph.i.i.i.i.i.i.preheader675, label %vector.memcheck645

vector.memcheck645:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.it = mul i64 %i.ie, %i.hq
  %i.iu = add i64 %i.it, %i.id
  %i.iv = sub i64 %i.ii, %i.iu
  %diff.check646 = icmp ugt i64 %i.iv, -16
  br i1 %diff.check646, label %.lr.ph.i.i.i.i.i.i.preheader675, label %vector.ph649

vector.ph649:                                     ; preds = %vector.memcheck645
  %n.vec650 = and i64 %.0.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert651 = insertelement <2 x double> poison, double %i.ia, i64 0
  %broadcast.splat652 = shufflevector <2 x double> %broadcast.splatinsert651, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph649
  %index654 = phi i64 [ 0, %vector.ph649 ], [ %index.next656, %vector.body653 ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index654
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %index654
  %wide.load655 = load <2 x double>, ptr %i.ix, align 8, !tbaa !9
  %i.iy = fdiv <2 x double> %wide.load655, %broadcast.splat652
  store <2 x double> %i.iy, ptr %i.iw, align 8, !tbaa !9
  %index.next656 = add nuw i64 %index654, 2       ; 2 uses
  %i.iz = icmp eq i64 %index.next656, %n.vec650
  br i1 %i.iz, label %middle.block657, label %vector.body653, !llvm.loop !917

middle.block657:                                  ; preds = %vector.body653
  %cmp.n658 = icmp eq i64 %.0.i.i.i.i.i.i, %n.vec650
  br i1 %cmp.n658, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader675

.lr.ph.i.i.i.i.i.i.preheader675:                  ; preds = %vector.memcheck645, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block657
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck645 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec650, %middle.block657 ] ; 4 uses
  %i.ja = sub nsw i64 %.0.i.i.i.i.i.i, %.05.i.i.i.i.i.i.ph
  %xtraiter696 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader675, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.jf, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader675 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader675 ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i.prol
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05.i.i.i.i.i.i.prol
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !9
  %i.je = fdiv double %i.jd, %i.ia
  store double %i.je, ptr %i.jb, align 8, !tbaa !9
  %i.jf = add nuw nsw i64 %.05.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter696
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !918

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader675
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader675 ], [ %i.jf, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.jg = sub nsw i64 %.05.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i
  %i.jh = icmp ugt i64 %i.jg, -4
  br i1 %i.jh, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.kb, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05.i.i.i.i.i.i
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !9
  %i.jl = fdiv double %i.jk, %i.ia
  store double %i.jl, ptr %i.ji, align 8, !tbaa !9
  %i.jm = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jm
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jm
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !9
  %i.jq = fdiv double %i.jp, %i.ia
  store double %i.jq, ptr %i.jn, align 8, !tbaa !9
  %i.jr = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jr
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jr
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !9
  %i.jv = fdiv double %i.ju, %i.ia
  store double %i.jv, ptr %i.js, align 8, !tbaa !9
  %i.jw = add nuw nsw i64 %.05.i.i.i.i.i.i, 3     ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jw
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !9
  %i.ka = fdiv double %i.jz, %i.ia
  store double %i.ka, ptr %i.jx, align 8, !tbaa !9
  %i.kb = add nuw nsw i64 %.05.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.kb, %.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !919

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block657, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i
  %i.kc = icmp sgt i64 %i.io, 1
  br i1 %i.kc, label %.lr.ph.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.kd = shufflevector <2 x double> %.sroa.7.16.vec.insert.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS8_KNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESG_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i
  %i.ke = icmp slt i64 %i.ir, %i.ib
  br i1 %i.ke, label %.lr.ph.i17.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i
  %i.kf = add i64 %.0.i.i.i.i.i.i, %i.iq
  %i.kg = sub i64 %i.ib, %i.kf                    ; 3 uses
  %min.iters.check633 = icmp ult i64 %i.kg, 2
  br i1 %min.iters.check633, label %.lr.ph.i17.i.i.i.i.i.preheader674, label %vector.memcheck630

vector.memcheck630:                               ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.kh = mul i64 %i.ie, %i.hr
  %i.ki = add i64 %i.kh, %i.id
  %i.kj = sub i64 %i.ii, %i.ki
  %diff.check631 = icmp ugt i64 %i.kj, -16
  br i1 %diff.check631, label %.lr.ph.i17.i.i.i.i.i.preheader674, label %vector.ph634

vector.ph634:                                     ; preds = %vector.memcheck630
  %n.vec635 = and i64 %i.kg, -2                   ; 3 uses
  %i.kk = add i64 %i.ir, %n.vec635
  %broadcast.splatinsert636 = insertelement <2 x double> poison, double %i.ia, i64 0
  %broadcast.splat637 = shufflevector <2 x double> %broadcast.splatinsert636, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body638

vector.body638:                                   ; preds = %vector.body638, %vector.ph634
  %index639 = phi i64 [ 0, %vector.ph634 ], [ %index.next641, %vector.body638 ] ; 2 uses
  %i.kl = add i64 %i.ir, %index639                ; 2 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.kl
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.kl
  %wide.load640 = load <2 x double>, ptr %i.kn, align 8, !tbaa !9
  %i.ko = fdiv <2 x double> %wide.load640, %broadcast.splat637
  store <2 x double> %i.ko, ptr %i.km, align 8, !tbaa !9
  %index.next641 = add nuw i64 %index639, 2       ; 2 uses
  %i.kp = icmp eq i64 %index.next641, %n.vec635
  br i1 %i.kp, label %middle.block642, label %vector.body638, !llvm.loop !920

middle.block642:                                  ; preds = %vector.body638
  %cmp.n643 = icmp eq i64 %i.kg, %n.vec635
  br i1 %cmp.n643, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS3_KNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEESE_EEEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.preheader674

.lr.ph.i17.i.i.i.i.i.preheader674:                ; preds = %vector.memcheck630, %.lr.ph.i17.i.i.i.i.i.preheader, %middle.block642
  %.05.i18.i.i.i.i.i.ph = phi i64 [ %i.ir, %vector.memcheck630 ], [ %i.ir, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %i.kk, %middle.block642 ] ; 4 uses
  %i.kq = sub i64 %i.ib, %.05.i18.i.i.i.i.i.ph
  %xtraiter698 = and i64 %i.kq, 3                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7Spectra7LanczosIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE14factorize_fromEllRl:bb.a

.lr.ph85.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph85.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.prol = phi i64 [ %i.wu, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ %i.ve, %.lr.ph85.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.prol = phi double [ %i.wt, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ %i.wl, %.lr.ph85.i.i.i.i.i.i.i.preheader ]
  %prol.iter712 = phi i64 [ %prol.iter712.next, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.preheader ]
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.uz, i64 %.05283.i.i.i.i.i.i.i.prol
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.va, i64 %.05283.i.i.i.i.i.i.i.prol
  %i.wq = load double, ptr %i.wo, align 8, !tbaa !9
  %i.wr = load double, ptr %i.wp, align 8, !tbaa !9
  %i.ws = fmul double %i.wq, %i.wr
  %i.wt = fadd double %.182.i.i.i.i.i.i.i.prol, %i.ws ; 3 uses
  %i.wu = add nsw i64 %.05283.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter712.next = add i64 %prol.iter712, 1   ; 2 uses
  %prol.iter712.cmp.not = icmp eq i64 %prol.iter712.next, %xtraiter710
  br i1 %prol.iter712.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.prol, !llvm.loop !950

.lr.ph85.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.preheader
  %.lcssa680.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.wt, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.unr = phi i64 [ %i.ve, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.wu, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.unr = phi double [ %i.wl, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.wt, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %i.wv = sub i64 %i.ve, %i.ux
  %i.ww = icmp ugt i64 %i.wv, -4
  br i1 %i.ww, label %.loopexit428, label %.lr.ph85.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i:                           ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i = phi i64 [ %i.xy, %.lr.ph85.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i = phi double [ %i.xx, %.lr.ph85.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ]
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.uz, i64 %.05283.i.i.i.i.i.i.i
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.va, i64 %.05283.i.i.i.i.i.i.i
  %i.wz = load double, ptr %i.wx, align 8, !tbaa !9
  %i.xa = load double, ptr %i.wy, align 8, !tbaa !9
  %i.xb = fmul double %i.wz, %i.xa
  %i.xc = fadd double %.182.i.i.i.i.i.i.i, %i.xb
  %i.xd = add nsw i64 %.05283.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.xe = getelementptr inbounds [8 x i8], ptr %i.uz, i64 %i.xd
  %i.xf = getelementptr inbounds [8 x i8], ptr %i.va, i64 %i.xd
  %i.xg = load double, ptr %i.xe, align 8, !tbaa !9
  %i.xh = load double, ptr %i.xf, align 8, !tbaa !9
  %i.xi = fmul double %i.xg, %i.xh
  %i.xj = fadd double %i.xc, %i.xi
  %i.xk = add nsw i64 %.05283.i.i.i.i.i.i.i, 2    ; 2 uses
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.uz, i64 %i.xk
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.va, i64 %i.xk
  %i.xn = load double, ptr %i.xl, align 8, !tbaa !9
  %i.xo = load double, ptr %i.xm, align 8, !tbaa !9
  %i.xp = fmul double %i.xn, %i.xo
  %i.xq = fadd double %i.xj, %i.xp
  %i.xr = add nsw i64 %.05283.i.i.i.i.i.i.i, 3    ; 2 uses
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.uz, i64 %i.xr
  %i.xt = getelementptr inbounds [8 x i8], ptr %i.va, i64 %i.xr
  %i.xu = load double, ptr %i.xs, align 8, !tbaa !9
  %i.xv = load double, ptr %i.xt, align 8, !tbaa !9
  %i.xw = fmul double %i.xu, %i.xv
  %i.xx = fadd double %i.xq, %i.xw                ; 2 uses
  %i.xy = add nsw i64 %.05283.i.i.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.xy, %i.ux
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %.loopexit428, label %.lr.ph85.i.i.i.i.i.i.i, !llvm.loop !951

bb.ax:                                            ; preds = %bb.as
  %i.xz = load double, ptr %i.uz, align 8, !tbaa !9
  %i.ya = load double, ptr %i.va, align 8, !tbaa !9
  %i.yb = fmul double %i.xz, %i.ya
  br label %.loopexit428

.loopexit428:                                     ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i, %.noexc166, %bb.aw, %bb.ax
  %.0.i.i.i.i.i = phi double [ 0.000000e+00, %.noexc166 ], [ %i.wl, %bb.aw ], [ %i.yb, %bb.ax ], [ %.lcssa680.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ], [ %i.xx, %.lr.ph85.i.i.i.i.i.i.i ]
  %i.yc = call noundef double @sqrt(double noundef %.0.i.i.i.i.i) #33
  store double %i.yc, ptr %i.gm, align 8, !tbaa !911
  %i.yd = add i64 %.055452, 1                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  %i.ye = load ptr, ptr %i.gn, align 8, !tbaa !82
  %i.yf = load i64, ptr %i.bq, align 8, !tbaa !857
  store ptr %i.ye, ptr %16, align 8, !tbaa !952
  store i64 %i.yf, ptr %i.hd, align 8, !tbaa !120
  store i64 %i.yd, ptr %i.he, align 8, !tbaa !120
  store ptr %.sroa.0404.0, ptr %17, align 8, !tbaa !272
  store i64 %i.yd, ptr %i.hf, align 8, !tbaa !120
  invoke void @_ZNK7Spectra9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E13trans_productINS5_3MapIS7_Li0ENS5_6StrideILi0ELi0EEEEES8_EEvRKSF_RKSK_NS5_3RefIS8_Li0ENS5_11InnerStrideILi1EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(26) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dead_on_return %17)
          to label %bb.ay unwind label %bb.bi

bb.ay:                                            ; preds = %.loopexit428
  %i.yg = sdiv i64 %i.yd, 4
  %i.yh = shl nsw i64 %i.yg, 2                    ; 6 uses
  %i.yi = sdiv i64 %i.yd, 2
  %i.yj = shl nsw i64 %i.yi, 1                    ; 12 uses
  %.off.i.i.i.i = add i64 %.055452, 2
  %.not.i.i.i.i167 = icmp ult i64 %.off.i.i.i.i, 3 ; 2 uses
  br i1 %.not.i.i.i.i167, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.yk = load <2 x double>, ptr %.sroa.0404.0, align 1 ; 2 uses
  %i.yl = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yk) ; 3 uses
  %i.ym = icmp sgt i64 %.055452, 2
  %i.yn = extractelement <2 x double> %i.yk, i64 0 ; 3 uses
  br i1 %i.ym, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.yo = load <2 x double>, ptr %i.hg, align 1, !tbaa !92
  %i.yp = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yo) ; 2 uses
  %i.yq = icmp samesign ugt i64 %.055452, 6
  br i1 %i.yq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.ba
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.yp, %bb.ba ], [ %i.zb, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.yl, %bb.ba ], [ %i.yw, %.lr.ph.i.i.i.i ]
  %i.yr = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.072.lcssa.i.i.i.i, <2 x double> %.075.lcssa.i.i.i.i) #20, !srcloc !954 ; 2 uses
  %i.ys = icmp sgt i64 %i.yj, %i.yh
  br i1 %i.ys, label %bb.bb, label %bb.bc

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.ba ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.ba ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.yw, %.lr.ph.i.i.i.i ], [ %i.yl, %bb.ba ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.zb, %.lr.ph.i.i.i.i ], [ %i.yp, %bb.ba ]
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0404.0, i64 %.05480.i.i.i.i
  %i.yu = load <2 x double>, ptr %i.yt, align 1, !tbaa !92
  %i.yv = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yu)
  %i.yw = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07278.i.i.i.i, <2 x double> %i.yv) #20, !srcloc !954 ; 2 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0404.0, i64 %.054.in79.i.i.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 48
  %i.yz = load <2 x double>, ptr %i.yy, align 1, !tbaa !92
  %i.za = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yz)
  %i.zb = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07577.i.i.i.i, <2 x double> %i.za) #20, !srcloc !954 ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.zc = icmp slt i64 %.054.i.i.i.i, %i.yh
  br i1 %i.zc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !955

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0404.0, i64 %i.yh
  %i.ze = load <2 x double>, ptr %i.zd, align 1, !tbaa !92
  %i.zf = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ze)
  %i.zg = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.yr, <2 x double> %i.zf) #20, !srcloc !954
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i, %bb.az
  %.274.i.i.i.i = phi <2 x double> [ %i.yl, %bb.az ], [ %i.zg, %bb.bb ], [ %i.yr, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 1 ; 2 uses
  %i.zh = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.zi = select i1 %i.zh, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 4 uses
  %.not424 = icmp sgt i64 %i.yj, %.055452
  br i1 %.not424, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i.preheader

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.bc
  %i.zj = and i64 %.055452, 1
  %lcmp.mod714.not.not = icmp eq i64 %i.zj, 0
  br i1 %lcmp.mod714.not.not, label %.lr.ph85.i.i.i.i.prol, label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader
  %i.zk = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %i.yj
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !9
  %i.zm = call noundef double @llvm.fabs.f64(double %i.zl) ; 2 uses
  %i.zn = fcmp olt double %i.zi, %i.zm
  %i.zo = select i1 %i.zn, double %i.zm, double %i.zi ; 2 uses
  %i.zp = or disjoint i64 %i.yj, 1
  br label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa683.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.zo, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.yj, %.lr.ph85.i.i.i.i.preheader ], [ %i.zp, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.zi, %.lr.ph85.i.i.i.i.preheader ], [ %i.zo, %.lr.ph85.i.i.i.i.prol ]
  %i.zq = icmp eq i64 %.055452, %i.yj
  br i1 %i.zq, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.aac, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i = phi double [ %i.aab, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.zr = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %.05283.i.i.i.i
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !9
  %i.zt = call noundef double @llvm.fabs.f64(double %i.zs) ; 2 uses
  %i.zu = fcmp olt double %.182.i.i.i.i, %i.zt
  %i.zv = select i1 %i.zu, double %i.zt, double %.182.i.i.i.i ; 2 uses
  %i.zw = add nsw i64 %.05283.i.i.i.i, 1          ; 2 uses
  %i.zx = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %i.zw
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !9
  %i.zz = call noundef double @llvm.fabs.f64(double %i.zy) ; 2 uses
  %i.aaa = fcmp olt double %i.zv, %i.zz
  %i.aab = select i1 %i.aaa, double %i.zz, double %i.zv ; 2 uses
  %i.aac = add nsw i64 %.05283.i.i.i.i, 2
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.zw, %.055452
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !956

bb.bd:                                            ; preds = %bb.ay
  %i.aad = load double, ptr %.sroa.0404.0, align 8, !tbaa !9 ; 2 uses
  %i.aae = call noundef double @llvm.fabs.f64(double %i.aad)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.bd, %bb.bc
  %i.aaf = phi double [ %i.yn, %bb.bc ], [ %i.aad, %bb.bd ], [ %i.yn, %.lr.ph85.i.i.i.i ], [ %i.yn, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %.3.i.i.i.i = phi double [ %i.zi, %bb.bc ], [ %i.aae, %bb.bd ], [ %.lcssa683.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.aab, %.lr.ph85.i.i.i.i ]
  %i.aag = icmp eq i64 %i.yd, 0
  %i.aah = icmp sgt i64 %.055452, 0
  %i.aai = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %i.ma
  %i.aaj = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %.055452
  %i.aak = icmp sgt i64 %.055452, 2
  %i.aal = icmp samesign ugt i64 %.055452, 6
  %i.aam = icmp sgt i64 %i.yj, %i.yh
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0404.0, i64 %i.yh
  %.not425 = icmp sgt i64 %i.yj, %.055452
  %xtraiter716 = and i64 %.055452, 3              ; 3 uses
  %i.aao = icmp ult i64 %19, 3
  %unroll_iter721 = and i64 %.055452, 9223372036854775804
  %lcmp.mod718.not = icmp eq i64 %xtraiter716, 0
  %lcmp.mod720 = icmp ne i64 %xtraiter716, 0
  %i.aap = and i64 %.055452, 1
  %lcmp.mod736.not.not = icmp eq i64 %i.aap, 0
  %i.aaq = getelementptr inbounds [8 x i8], ptr %.sroa.0404.0, i64 %i.yj
  %i.aar = or disjoint i64 %i.yj, 1
  %i.aas = icmp eq i64 %.055452, %i.yj
  br label %bb.be

bb.be:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit211
  %i.aat = phi double [ %i.aaf, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %i.aul, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit211 ]
  %.0450 = phi i32 [ 0, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %i.aum, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit211 ]
  %.053449 = phi double [ %.3.i.i.i.i, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit ], [ %.3.i.i.i.i197, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit211 ]
  %i.aau = load double, ptr %i.gm, align 8, !tbaa !911 ; 2 uses
  %i.aav = fmul double %i.aau, f0x3CB0000000000000
  %i.aaw = fcmp ogt double %.053449, %i.aav
  br i1 %i.aaw, label %bb.bf, label %.critedge

bb.bf:                                            ; preds = %bb.be
  %i.aax = fcmp olt double %i.aau, %i.bu
  br i1 %i.aax, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.aay = load i64, ptr %i.gs, align 8, !tbaa !103 ; 2 uses
  %i.aaz = icmp slt i64 %i.aay, 1
  br i1 %i.aaz, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.bg
  %i.aba = load ptr, ptr %i.gq, align 8, !tbaa !73
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aay, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aba, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !9
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %bb.bg
  store double 0.000000e+00, ptr %i.gm, align 8, !tbaa !911
  br label %.critedge

bb.bh:                                            ; preds = %thread-pre-split.i.i.i.i
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.bi:                                            ; preds = %.loopexit428
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %.body216

bb.bj:                                            ; preds = %bb.bf
  %.sroa.0288.0.copyload = load ptr, ptr %16, align 8 ; 7 uses
  %.sroa.5289.0.copyload = load i64, ptr %i.hd, align 8 ; 3 uses
  %i.abd = icmp eq i64 %.sroa.5289.0.copyload, 1
  br i1 %i.abd, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.aag, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.abe = load double, ptr %.sroa.0288.0.copyload, align 8, !tbaa !9
  %i.abf = fmul double %i.abe, %i.aat             ; 3 uses
  br i1 %i.aah, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.bl
  br i1 %i.aao, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01724.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ach, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.acg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %niter722 = phi i64 [ %niter722.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.abg = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !9
  %i.abi = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !9
  %i.abk = fmul double %i.abh, %i.abj
  %i.abl = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i, %i.abk
  %i.abm = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.abn = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %i.abm
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !9
  %i.abp = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %i.abm
  %i.abq = load double, ptr %i.abp, align 8, !tbaa !9
  %i.abr = fmul double %i.abo, %i.abq
  %i.abs = fadd double %i.abl, %i.abr
  %i.abt = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.abu = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %i.abt
  %i.abv = load double, ptr %i.abu, align 8, !tbaa !9
  %i.abw = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %i.abt
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !9
  %i.aby = fmul double %i.abv, %i.abx
  %i.abz = fadd double %i.abs, %i.aby
  %i.aca = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.acb = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %i.aca
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !9
  %i.acd = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %i.aca
  %i.ace = load double, ptr %i.acd, align 8, !tbaa !9
  %i.acf = fmul double %i.acc, %i.ace
  %i.acg = fadd double %i.abz, %i.acf             ; 3 uses
  %i.ach = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter722.next.3 = add nuw i64 %niter722, 4     ; 2 uses
  %niter722.ncmp.3 = icmp eq i64 %niter722.next.3, %unroll_iter721
  br i1 %niter722.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !957

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod718.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ach, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.abf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.acg, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod720)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.aco, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.acn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter717 = phi i64 [ %epil.iter717.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.aci = getelementptr [8 x i8], ptr %.sroa.0288.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.acj = load double, ptr %i.aci, align 8, !tbaa !9
  %i.ack = getelementptr [8 x i8], ptr %.sroa.0404.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.acl = load double, ptr %i.ack, align 8, !tbaa !9
  %i.acm = fmul double %i.acj, %i.acl
  %i.acn = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.epil, %i.acm ; 2 uses
  %i.aco = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter717.next = add i64 %epil.iter717, 1   ; 2 uses
  %epil.iter717.cmp.not = icmp eq i64 %epil.iter717.next, %xtraiter716
  br i1 %epil.iter717.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !958

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.bk ], [ %i.abf, %bb.bl ], [ %i.acg, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.acn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.acp = load ptr, ptr %i.gq, align 8, !tbaa !73 ; 3 uses
  %i.acq = load double, ptr %i.acp, align 8, !tbaa !9
  %i.acr = fsub double %i.acq, %.0.i.i.i.i.i.i.i.i.i
  store double %i.acr, ptr %i.acp, align 8, !tbaa !9
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  %.sroa.6290.0.copyload = load i64, ptr %i.he, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %.sroa.0288.0.copyload, ptr %5, align 8, !tbaa !462
  store i64 %.sroa.5289.0.copyload, ptr %i.hh, align 8, !tbaa !464
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr %.sroa.0404.0, ptr %6, align 8, !tbaa !465
  store i64 1, ptr %i.hi, align 8, !tbaa !467
  %i.acs = load ptr, ptr %i.gq, align 8, !tbaa !73
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %.sroa.5289.0.copyload, i64 noundef %.sroa.6290.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.acs, i64 noundef 1, double noundef -1.000000e+00)
          to label %.noexc168 unwind label %bb.cp

.noexc168:                                        ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %.pre485 = load ptr, ptr %i.gq, align 8, !tbaa !73
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc168, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i
  %i.act = phi ptr [ %.pre485, %.noexc168 ], [ %i.acp, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSH_17scalar_product_opIdSL_EEE10ReturnTypeERKNS0_ISJ_EE.exit.i.i.i.i.i.i ] ; 2 uses
  %i.acu = load double, ptr %i.aai, align 8, !tbaa !9
  %i.acv = load ptr, ptr %i.ci, align 8, !tbaa !82 ; 2 uses
  %i.acw = load i64, ptr %i.cp, align 8, !tbaa !83 ; 2 uses
  %i.acx = mul nsw i64 %i.acw, %.055452           ; 2 uses
  %i.acy = getelementptr [8 x i8], ptr %i.acv, i64 %i.ma
  %i.acz = getelementptr [8 x i8], ptr %i.acy, i64 %i.acx ; 2 uses
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !9
  %i.adb = fadd double %i.acu, %i.ada             ; 2 uses
  store double %i.adb, ptr %i.acz, align 8, !tbaa !9
  %i.adc = mul nsw i64 %i.acw, %i.ma
  %i.add = getelementptr [8 x i8], ptr %i.acv, i64 %.055452 ; 2 uses
  %i.ade = getelementptr [8 x i8], ptr %i.add, i64 %i.adc
  store double %i.adb, ptr %i.ade, align 8, !tbaa !9
  %i.adf = load double, ptr %i.aaj, align 8, !tbaa !9
  %i.adg = getelementptr [8 x i8], ptr %i.add, i64 %i.acx ; 2 uses
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !9
  %i.adi = fadd double %i.adf, %i.adh
  store double %i.adi, ptr %i.adg, align 8, !tbaa !9
  %i.adj = load ptr, ptr %i.ha, align 8, !tbaa !942, !nonnull !51, !align !119
  %i.adk = load ptr, ptr %i.hb, align 8, !tbaa !73 ; 4 uses
  %i.adl = load ptr, ptr %i.adj, align 8, !tbaa !959, !nonnull !51, !align !119 ; 6 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !145 ; 7 uses
  %i.adp = icmp sgt i64 %i.ado, 0
  br i1 %i.adp, label %bb.bo, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.adq = icmp samesign ugt i64 %i.ado, 2305843009213693951
  br i1 %i.adq, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.bo
  %i.adr = shl nuw i64 %i.ado, 3
  %calloc557 = call ptr @calloc(i64 1, i64 %i.adr) ; 2 uses
  %i.ads = icmp eq ptr %calloc557, null
  br i1 %i.ads, label %.invoke, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.bo
  %i.adt = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.adt, align 8, !tbaa !79
  invoke void @__cxa_throw(ptr nonnull %i.adt, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.bp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.bn
end_hunk_1
begin_hunk_2_@_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE14factorize_fromEllRl:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.dp, i1 false), !tbaa !92
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.dv, i1 false), !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.dw = load i64, ptr %i.cl, align 8, !tbaa !858
  %i.dx = sub nsw i64 %i.dw, %1                   ; 6 uses
  %i.dy = load ptr, ptr %i.ck, align 8, !tbaa !82, !noalias !975
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %1 ; 13 uses
  %i.ea = load i64, ptr %i.cr, align 8, !tbaa !83 ; 13 uses
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ei, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.ej = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ek = mul nsw i64 %i.ej, %i.ea
  %i.el = getelementptr [8 x i8], ptr %i.dz, i64 %i.ek
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.el, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.em = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.en = mul nsw i64 %i.em, %i.ea
  %i.eo = getelementptr [8 x i8], ptr %i.dz, i64 %i.en
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eo, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.ep = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.eq = mul nsw i64 %i.ep, %i.ea
  %i.er = getelementptr [8 x i8], ptr %i.dz, i64 %i.eq
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.er, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.es = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.et = mul nsw i64 %i.es, %i.ea
  %i.eu = getelementptr [8 x i8], ptr %i.dz, i64 %i.et
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eu, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.ev = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.ew = mul nsw i64 %i.ev, %i.ea
  %i.ex = getelementptr [8 x i8], ptr %i.dz, i64 %i.ew
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ex, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.ey = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.ez = mul nsw i64 %i.ey, %i.ea
  %i.fa = getelementptr [8 x i8], ptr %i.dz, i64 %i.ez
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fa, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.fb = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.fc = mul nsw i64 %i.fb, %i.ea
  %i.fd = getelementptr [8 x i8], ptr %i.dz, i64 %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fd, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.fe = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.loopexit740.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !908

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
  store double 0.000000e+00, ptr %i.fp, align 8, !tbaa !9
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i125, i8 0, i64 %i.fz, i1 false), !tbaa !92
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep3.i, i8 0, i64 %i.gh, i1 false), !tbaa !9
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i124:           ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gi = add nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i.i.i, %i.ff
  %i.gj = srem i64 %i.gi, 2
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.dx, i64 %i.gj)
  %i.gk = add nuw nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gk, %1
  br i1 %exitcond54.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %bb.aa, !llvm.loop !909

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
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gm, i8 0, i64 %i.ef, i1 false), !tbaa !9
  %i.gn = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !978

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
  %25 = shl nsw i64 %1, 3                         ; 2 uses
  %i.hn = add i64 %1, -1                          ; 2 uses
  %26 = getelementptr i8, ptr %.sroa.0377.0, i64 %25
  %27 = getelementptr i8, ptr %26, i64 8
  br label %bb.ab

._crit_edge:                                      ; preds = %.critedge
  %.pre456 = load ptr, ptr %19, align 8, !tbaa !73
  store i64 %2, ptr %i.b, align 8, !tbaa !901
  call void @free(ptr noundef %.pre456) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @free(ptr noundef %.sroa.0377.0) #33
  br label %bb.cy

bb.ab:                                            ; preds = %.lr.ph, %.critedge
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.critedge ] ; 7 uses
  %.037423 = phi i64 [ %1, %.lr.ph ], [ %i.na, %.critedge ] ; 30 uses
  %i.ho = add i64 %i.hn, %indvar
  %i.hp = add i64 %i.hn, %indvar
  %28 = add i64 %1, %indvar
  %i.hq = shl i64 %28, 3
  %29 = add i64 %1, %indvar
  %i.hr = shl i64 %29, 3
  %i.hs = add i64 %1, %indvar
  %30 = shl i64 %i.hs, 3
  %i.ht = shl i64 %indvar, 3                      ; 2 uses
  %31 = add i64 %25, %i.ht                        ; 2 uses
  %scevgep619 = getelementptr i8, ptr %27, i64 %i.ht
  %i.hu = load double, ptr %i.go, align 8, !tbaa !911 ; 2 uses
  %i.hv = fcmp olt double %i.hu, f0x0044000000000000 ; 2 uses
  br i1 %i.hv, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %i.hw = load ptr, ptr %i.gp, align 8, !tbaa !82
  %i.hx = load i64, ptr %i.bq, align 8, !tbaa !857
  store ptr %i.hw, ptr %20, align 8, !tbaa !912
  store i64 %i.hx, ptr %i.gq, align 8, !tbaa !120
  store i64 %.037423, ptr %i.gr, align 8, !tbaa !120
  %i.hy = shl nsw i64 %.037423, 1
  invoke void @_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE12expand_basisERNS6_3MapIKS8_Li0ENS6_6StrideILi0ELi0EEEEElRS9_RdRl(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(26) %20, i64 noundef %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  %.pre = load double, ptr %i.go, align 8, !tbaa !9, !noalias !979
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.cz

bb.af:                                            ; preds = %bb.ab, %bb.ad
  %i.ia = phi double [ %i.hu, %bb.ab ], [ %.pre, %bb.ad ] ; 13 uses
  %i.ib = load ptr, ptr %i.gp, align 8, !tbaa !82, !noalias !982 ; 2 uses
  %i.ic = ptrtoaddr ptr %i.ib to i64              ; 2 uses
  %i.id = load i64, ptr %i.gu, align 8, !tbaa !83, !noalias !982 ; 11 uses
  %i.ie = mul nsw i64 %i.id, %.037423
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.ie ; 14 uses
  %i.ig = load ptr, ptr %i.gs, align 8, !tbaa !73 ; 14 uses
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
  %i.is = mul i64 %i.id, %i.hq
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
  %wide.load691 = load <2 x double>, ptr %i.iw, align 8, !tbaa !9
  %i.ix = fdiv <2 x double> %wide.load691, %broadcast.splat688
  store <2 x double> %i.ix, ptr %i.iv, align 8, !tbaa !9
  %index.next692 = add nuw i64 %index690, 2       ; 2 uses
  %i.iy = icmp eq i64 %index.next692, %n.vec686
  br i1 %i.iy, label %middle.block693, label %vector.body689, !llvm.loop !985

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
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !9
  %i.jd = fdiv double %i.jc, %i.ia
  store double %i.jd, ptr %i.ja, align 8, !tbaa !9
  %i.je = add nuw nsw i64 %.05.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter742
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !986

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader720
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader720 ], [ %i.je, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.jf = sub nsw i64 %.05.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.ka, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.05.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !9
  %i.jk = fdiv double %i.jj, %i.ia
  store double %i.jk, ptr %i.jh, align 8, !tbaa !9
  %i.jl = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jl
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !9
  %i.jp = fdiv double %i.jo, %i.ia
  store double %i.jp, ptr %i.jm, align 8, !tbaa !9
  %i.jq = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jq
  %i.jt = load double, ptr %i.js, align 8, !tbaa !9
  %i.ju = fdiv double %i.jt, %i.ia
  store double %i.ju, ptr %i.jr, align 8, !tbaa !9
  %i.jv = add nuw nsw i64 %.05.i.i.i.i.i.i, 3     ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.jv
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.jv
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !9
  %i.jz = fdiv double %i.jy, %i.ia
  store double %i.jz, ptr %i.jw, align 8, !tbaa !9
  %i.ka = add nuw nsw i64 %.05.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ka, %.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEESF_EEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !987

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
  %i.kg = mul i64 %i.id, %i.hr
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
  %wide.load676 = load <2 x double>, ptr %i.km, align 8, !tbaa !9
  %i.kn = fdiv <2 x double> %wide.load676, %broadcast.splat
  store <2 x double> %i.kn, ptr %i.kl, align 8, !tbaa !9
  %index.next677 = add nuw i64 %index675, 2       ; 2 uses
  %i.ko = icmp eq i64 %index.next677, %n.vec673
  br i1 %i.ko, label %middle.block678, label %vector.body674, !llvm.loop !988

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
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !9
  %i.kt = fdiv double %i.ks, %i.ia
  store double %i.kt, ptr %i.kq, align 8, !tbaa !9
  %i.ku = add nsw i64 %.05.i18.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter746.next = add i64 %prol.iter746, 1   ; 2 uses
  %prol.iter746.cmp.not = icmp eq i64 %prol.iter746.next, %xtraiter744
  br i1 %prol.iter746.cmp.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol, !llvm.loop !989

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader719
  %.05.i18.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.preheader719 ], [ %i.ku, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.kv = sub i64 %.05.i18.i.i.i.i.i.ph, %i.id
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %.05.i18.i.i.i.i.i = phi i64 [ %i.lq, %.lr.ph.i17.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.05.i18.i.i.i.i.i
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %.05.i18.i.i.i.i.i
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !9
  %i.la = fdiv double %i.kz, %i.ia
  store double %i.la, ptr %i.kx, align 8, !tbaa !9
  %i.lb = add nsw i64 %.05.i18.i.i.i.i.i, 1       ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.lb
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.lb
  %i.le = load double, ptr %i.ld, align 8, !tbaa !9
  %i.lf = fdiv double %i.le, %i.ia
  store double %i.lf, ptr %i.lc, align 8, !tbaa !9
  %i.lg = add nsw i64 %.05.i18.i.i.i.i.i, 2       ; 2 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.lg
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.lg
  %i.lj = load double, ptr %i.li, align 8, !tbaa !9
  %i.lk = fdiv double %i.lj, %i.ia
  store double %i.lk, ptr %i.lh, align 8, !tbaa !9
  %i.ll = add nsw i64 %.05.i18.i.i.i.i.i, 3       ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.ll
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.ll
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !9
  %i.lp = fdiv double %i.lo, %i.ia
  store double %i.lp, ptr %i.lm, align 8, !tbaa !9
  %i.lq = add nsw i64 %.05.i18.i.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.3 = icmp eq i64 %i.lq, %i.id
  br i1 %exitcond.not.i19.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !990

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.lv, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.021.i.i.i.i.i
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %.021.i.i.i.i.i
  %i.lt = load <2 x double>, ptr %i.ls, align 1, !tbaa !92
  %i.lu = fdiv <2 x double> %i.lt, %i.kc
  store <2 x double> %i.lu, ptr %i.lr, align 16, !tbaa !92
  %i.lv = add nsw i64 %.021.i.i.i.i.i, 2          ; 2 uses
  %i.lw = icmp slt i64 %i.lv, %i.iq
  br i1 %i.lw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !991

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block678, %._crit_edge.i.i.i.i.i
  br i1 %i.hv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit
  %i.lx = load double, ptr %i.go, align 8, !tbaa !911
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit
  %i.ly = phi double [ %i.lx, %bb.ah ], [ 0.000000e+00, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEESD_EEEEEERS4_RKNS5_IT_EE.exit ]
  %i.lz = add nsw i64 %.037423, -1
  %i.ma = load ptr, ptr %i.ck, align 8, !tbaa !82
  %i.mb = load i64, ptr %i.cr, align 8, !tbaa !83
  %i.mc = mul nsw i64 %i.mb, %i.lz
  %i.md = getelementptr [8 x i8], ptr %i.ma, i64 %.037423
  %i.me = getelementptr [8 x i8], ptr %i.md, i64 %i.mc
  store double %i.ly, ptr %i.me, align 8, !tbaa !9
  %i.mf = load ptr, ptr %i.gp, align 8, !tbaa !82
  %i.mg = load i64, ptr %i.gu, align 8, !tbaa !83
  %i.mh = mul nsw i64 %i.mg, %.037423
  %i.mi = getelementptr [8 x i8], ptr %i.mf, i64 %i.mh
  %i.mj = load ptr, ptr %19, align 8, !tbaa !73
  %i.mk = load ptr, ptr %i.gv, align 8, !tbaa !924, !nonnull !51, !align !119 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !925, !nonnull !51, !align !119
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !73
  invoke void @_ZZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS2_8SparseLUINS2_12SparseMatrixIdLi0EiEENS2_14COLAMDOrderingIiEEEEEEbRKNS7_IT_Li0EiEESF_iSC_RNS2_15PlainObjectBaseIT0_EERNSG_IT1_EEENK13SparseMatProd10perform_opEPKdPd(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef nonnull %i.mi, ptr noundef %i.mo)
          to label %.noexc unwind label %bb.bb

.noexc:                                           ; preds = %bb.ai
  %i.mp = load ptr, ptr %i.mk, align 8, !tbaa !855, !nonnull !51, !align !119 ; 2 uses
  %i.mq = load ptr, ptr %i.mn, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !144, !nonnull !51, !align !119 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !132
  store ptr %i.mq, ptr %11, align 8, !tbaa !926
  store i64 %i.mt, ptr %i.gw, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !145
  store ptr %i.mj, ptr %12, align 8, !tbaa !621
  store i64 %i.mv, ptr %i.gx, align 8, !tbaa !120
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mx = invoke noundef zeroext i1 @_ZNK5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS7_IS9_Li0ESC_EEEEbRKNS_10MatrixBaseIT_EERNSF_IT0_EE(ptr noundef nonnull align 8 dereferenceable(584) %i.mw, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(19) %12)
          to label %bb.aj unwind label %bb.bb     ; 0 uses

bb.aj:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.my = load i64, ptr %3, align 8, !tbaa !153
  %i.mz = add nsw i64 %i.my, 1
  store i64 %i.mz, ptr %3, align 8, !tbaa !153
  %i.na = add i64 %.037423, 1                     ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  %i.nb = load ptr, ptr %i.gp, align 8, !tbaa !82
  %i.nc = load i64, ptr %i.bq, align 8, !tbaa !857
  store ptr %i.nb, ptr %21, align 8, !tbaa !912
  store i64 %i.nc, ptr %i.gy, align 8, !tbaa !120
  store i64 %i.na, ptr %i.gz, align 8, !tbaa !120
  %i.nd = load ptr, ptr %i.ck, align 8, !tbaa !82 ; 4 uses
  %i.ne = load i64, ptr %i.cr, align 8, !tbaa !83 ; 4 uses
  %i.nf = mul i64 %i.ne, %.037423
  %i.ng = getelementptr [8 x i8], ptr %i.nd, i64 %i.nf ; 35 uses
  store ptr %i.ng, ptr %22, align 8, !tbaa !272
  store i64 %i.na, ptr %i.ha, align 8, !tbaa !120
  invoke void @_ZNK7Spectra9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi1ELi0ELin1ELi1EEENS5_8SparseLUINS5_12SparseMatrixIdLi0EiEENS5_14COLAMDOrderingIiEEEEEEbRKNSA_IT_Li0EiEESI_iSF_RNS5_15PlainObjectBaseIT0_EERNSJ_IT1_EEE11ShiftInvertZNS4_IdS7_S8_SE_EEbSI_SI_iSF_SM_SP_E13SparseMatProdEESR_E13trans_productINS5_3MapIKS7_Li0ENS5_6StrideILi0ELi0EEEEES8_EEvRKSF_RKSK_NS5_3RefIS8_Li0ENS5_11InnerStrideILi1EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, ptr noundef nonnull align 8 dereferenceable(26) %21, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dead_on_return %22)
          to label %bb.ak unwind label %bb.bc

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0334.0.copyload = load ptr, ptr %21, align 8 ; 7 uses
  %.sroa.5335.0.copyload = load i64, ptr %i.gy, align 8 ; 3 uses
  %.sroa.6336.0.copyload = load i64, ptr %i.gz, align 8
  %i.nh = load ptr, ptr %19, align 8, !tbaa !73   ; 8 uses
  %i.ni = ptrtoaddr ptr %i.nh to i64
  %i.nj = load i64, ptr %i.cj, align 8, !tbaa !103 ; 3 uses
  %i.nk = load i64, ptr %i.gt, align 8, !tbaa !103
  %.not.i.i.i.i.i = icmp eq i64 %i.nk, %i.nj
  br i1 %.not.i.i.i.i.i, label %bb.al, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.ak
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 noundef %i.nj, i64 noundef 1)
          to label %.noexc218 unwind label %bb.bd

.noexc218:                                        ; preds = %thread-pre-split.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.gt, align 8, !tbaa !103
  br label %bb.al

bb.al:                                            ; preds = %.noexc218, %bb.ak
  %i.nl = phi i64 [ %.pr.i.i.i.i, %.noexc218 ], [ %i.nj, %bb.ak ] ; 7 uses
  %i.nm = load ptr, ptr %i.gs, align 8, !tbaa !73 ; 8 uses
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
  %i.wh = load double, ptr %i.wf, align 8, !tbaa !9
  %i.wi = load double, ptr %i.wg, align 8, !tbaa !9
  %i.wj = fmul double %i.wh, %i.wi
  %i.wk = fadd double %.182.i.i.i.i.i.i.i136, %i.wj
  %i.wl = add nsw i64 %.05283.i.i.i.i.i.i.i135, 1 ; 2 uses
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.wl
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %i.wl
  %i.wo = load double, ptr %i.wm, align 8, !tbaa !9
  %i.wp = load double, ptr %i.wn, align 8, !tbaa !9
  %i.wq = fmul double %i.wo, %i.wp
  %i.wr = fadd double %i.wk, %i.wq
  %i.ws = add nsw i64 %.05283.i.i.i.i.i.i.i135, 2 ; 2 uses
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.ws
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %i.ws
  %i.wv = load double, ptr %i.wt, align 8, !tbaa !9
  %i.ww = load double, ptr %i.wu, align 8, !tbaa !9
  %i.wx = fmul double %i.wv, %i.ww
  %i.wy = fadd double %i.wr, %i.wx
  %i.wz = add nsw i64 %.05283.i.i.i.i.i.i.i135, 3 ; 2 uses
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.wz
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %i.wz
  %i.xc = load double, ptr %i.xa, align 8, !tbaa !9
  %i.xd = load double, ptr %i.xb, align 8, !tbaa !9
  %i.xe = fmul double %i.xc, %i.xd
  %i.xf = fadd double %i.wy, %i.xe                ; 2 uses
  %i.xg = add nsw i64 %.05283.i.i.i.i.i.i.i135, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i137.3 = icmp eq i64 %i.xg, %i.ug
  br i1 %exitcond.not.i.i.i.i.i.i.i137.3, label %.loopexit398, label %.lr.ph85.i.i.i.i.i.i.i134, !llvm.loop !945

bb.ba:                                            ; preds = %bb.av
  %i.xh = load double, ptr %i.ng, align 8, !tbaa !9
  %i.xi = load double, ptr %i.ui, align 8, !tbaa !9
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
  store ptr %.sroa.0377.0, ptr %23, align 8, !tbaa !272
  store i64 %i.na, ptr %i.hg, align 8, !tbaa !120
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
  %i.xy = load <2 x double>, ptr %i.hh, align 1, !tbaa !92
  %i.xz = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.xy) ; 2 uses
  %i.ya = icmp samesign ugt i64 %.037423, 6
  br i1 %i.ya, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.bh
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.xz, %bb.bh ], [ %i.yl, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.xv, %bb.bh ], [ %i.yg, %.lr.ph.i.i.i.i ]
  %i.yb = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.072.lcssa.i.i.i.i, <2 x double> %.075.lcssa.i.i.i.i) #20, !srcloc !954 ; 2 uses
  %i.yc = icmp sgt i64 %i.xt, %i.xr
  br i1 %i.yc, label %bb.bi, label %bb.bj

.lr.ph.i.i.i.i:                                   ; preds = %bb.bh, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.bh ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.bh ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.yg, %.lr.ph.i.i.i.i ], [ %i.xv, %bb.bh ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.yl, %.lr.ph.i.i.i.i ], [ %i.xz, %bb.bh ]
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %.05480.i.i.i.i
  %i.ye = load <2 x double>, ptr %i.yd, align 1, !tbaa !92
  %i.yf = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ye)
  %i.yg = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07278.i.i.i.i, <2 x double> %i.yf) #20, !srcloc !954 ; 2 uses
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %.054.in79.i.i.i.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 48
  %i.yj = load <2 x double>, ptr %i.yi, align 1, !tbaa !92
  %i.yk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yj)
  %i.yl = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07577.i.i.i.i, <2 x double> %i.yk) #20, !srcloc !954 ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ym = icmp slt i64 %.054.i.i.i.i, %i.xr
  br i1 %i.ym, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !955

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0377.0, i64 %i.xr
  %i.yo = load <2 x double>, ptr %i.yn, align 1, !tbaa !92
  %i.yp = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yo)
  %i.yq = call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.yb, <2 x double> %i.yp) #20, !srcloc !954
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
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !9
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
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !9
  %i.zd = call noundef double @llvm.fabs.f64(double %i.zc) ; 2 uses
  %i.ze = fcmp olt double %.182.i.i.i.i, %i.zd
  %i.zf = select i1 %i.ze, double %i.zd, double %.182.i.i.i.i ; 2 uses
  %i.zg = add nsw i64 %.05283.i.i.i.i, 1          ; 2 uses
  %i.zh = getelementptr inbounds [8 x i8], ptr %.sroa.0377.0, i64 %i.zg
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !9
  %i.zj = call noundef double @llvm.fabs.f64(double %i.zi) ; 2 uses
  %i.zk = fcmp olt double %i.zf, %i.zj
  %i.zl = select i1 %i.zk, double %i.zj, double %i.zf ; 2 uses
  %i.zm = add nsw i64 %.05283.i.i.i.i, 2
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.zg, %.037423
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !956

bb.bk:                                            ; preds = %bb.bf
  %i.zn = load double, ptr %.sroa.0377.0, align 8, !tbaa !9 ; 2 uses
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
  %i.aah = mul i64 %i.ne, %31
  %i.aai = shl i64 %i.aac, 4                      ; 2 uses
  %i.aaj = shl i64 %spec.select, 3                ; 2 uses
  %i.aak = getelementptr i8, ptr %i.nd, i64 %i.aah
  %i.aal = getelementptr i8, ptr %i.aak, i64 %i.aai
  %scevgep = getelementptr i8, ptr %i.aal, i64 %i.aaj
  %scevgep616 = getelementptr i8, ptr %i.nd, i64 8
  %i.aam = add i64 %i.ne, 1
  %i.aan = mul i64 %31, %i.aam
  %scevgep617 = getelementptr i8, ptr %scevgep616, i64 %i.aan
  %i.aao = getelementptr i8, ptr %.sroa.0377.0, i64 %i.aai
  %scevgep618 = getelementptr i8, ptr %i.aao, i64 %i.aaj
  %i.aap = mul i64 %i.ne, %30
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
  %i.abb = load double, ptr %i.go, align 8, !tbaa !911 ; 2 uses
  %i.abc = fmul double %i.abb, f0x3CB0000000000000
  %i.abd = fcmp ogt double %.035420, %i.abc
  br i1 %i.abd, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.abe = fcmp olt double %i.abb, %i.bu
  br i1 %i.abe, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.abf = load i64, ptr %i.gt, align 8, !tbaa !103 ; 2 uses
  %i.abg = icmp slt i64 %i.abf, 1
  br i1 %i.abg, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.bn
  %i.abh = load ptr, ptr %i.gs, align 8, !tbaa !73
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.abf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abh, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !9
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %bb.bn
  store double 0.000000e+00, ptr %i.go, align 8, !tbaa !911
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
  %i.abk = load double, ptr %.sroa.0295.0.copyload, align 8, !tbaa !9
  %i.abl = fmul double %i.abk, %i.aba             ; 3 uses
  br i1 %i.zr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.br
  br i1 %i.aas, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.01724.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.acn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.acm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %niter772 = phi i64 [ %niter772.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.abm = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !9
  %i.abo = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !9
  %i.abq = fmul double %i.abn, %i.abp
  %i.abr = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i, %i.abq
  %i.abs = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.abt = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %i.abs
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !9
  %i.abv = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %i.abs
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !9
  %i.abx = fmul double %i.abu, %i.abw
  %i.aby = fadd double %i.abr, %i.abx
  %i.abz = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aca = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %i.abz
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !9
  %i.acc = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %i.abz
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !9
  %i.ace = fmul double %i.acb, %i.acd
  %i.acf = fadd double %i.aby, %i.ace
  %i.acg = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ach = getelementptr [8 x i8], ptr %.sroa.0295.0.copyload, i64 %i.acg
  %i.aci = load double, ptr %i.ach, align 8, !tbaa !9
  %i.acj = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %i.acg
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !9
  %i.acl = fmul double %i.aci, %i.ack
  %i.acm = fadd double %i.acf, %i.acl             ; 3 uses
  %i.acn = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter772.next.3 = add nuw i64 %niter772, 4     ; 2 uses
  %niter772.ncmp.3 = icmp eq i64 %niter772.next.3, %unroll_iter771
  br i1 %niter772.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !999

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
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !9
  %i.acq = getelementptr [8 x i8], ptr %.sroa.0377.0, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !9
  %i.acs = fmul double %i.acp, %i.acr
  %i.act = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.epil, %i.acs ; 2 uses
  %i.acu = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter767.next = add i64 %epil.iter767, 1   ; 2 uses
  %epil.iter767.cmp.not = icmp eq i64 %epil.iter767.next, %xtraiter766
  br i1 %epil.iter767.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1000

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.br, %bb.bq
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.bq ], [ %i.abl, %bb.br ], [ %i.acm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSI_17scalar_product_opIdSM_EEE10ReturnTypeERKNS0_ISK_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.act, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.acv = load ptr, ptr %i.gs, align 8, !tbaa !73 ; 2 uses
  %i.acw = load double, ptr %i.acv, align 8, !tbaa !9
  %i.acx = fsub double %i.acw, %.0.i.i.i.i.i.i.i.i.i
  store double %i.acx, ptr %i.acv, align 8, !tbaa !9
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i151

bb.bs:                                            ; preds = %bb.bp
  %.sroa.6297.0.copyload = load i64, ptr %i.gz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store ptr %.sroa.0295.0.copyload, ptr %9, align 8, !tbaa !462
  store i64 %.sroa.5296.0.copyload, ptr %i.hi, align 8, !tbaa !464
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr %.sroa.0377.0, ptr %10, align 8, !tbaa !465
  store i64 1, ptr %i.hj, align 8, !tbaa !467
  %i.acy = load ptr, ptr %i.gs, align 8, !tbaa !73
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
  %wide.load646 = load <2 x double>, ptr %i.ada, align 8, !tbaa !9, !alias.scope !1001
  %wide.load647 = load <2 x double>, ptr %i.adb, align 8, !tbaa !9, !alias.scope !1001
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 16 ; 2 uses
  %wide.load648 = load <2 x double>, ptr %i.acz, align 8, !tbaa !9, !alias.scope !1004, !noalias !1001
  %wide.load649 = load <2 x double>, ptr %i.adc, align 8, !tbaa !9, !alias.scope !1004, !noalias !1001
  %i.add = fadd <2 x double> %wide.load646, %wide.load648
  %i.ade = fadd <2 x double> %wide.load647, %wide.load649
  store <2 x double> %i.add, ptr %i.acz, align 8, !tbaa !9, !alias.scope !1004, !noalias !1001
  store <2 x double> %i.ade, ptr %i.adc, align 8, !tbaa !9, !alias.scope !1004, !noalias !1001
  %index.next650 = add nuw i64 %index645, 4       ; 2 uses
  %i.adf = icmp eq i64 %index.next650, %n.vec643
  br i1 %i.adf, label %middle.block651, label %vector.body644, !llvm.loop !1006

middle.block651:                                  ; preds = %vector.body644
  br i1 %cmp.n652, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockIS8_Lin1ELi1ELb0EEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i159.preheader717

.lr.ph.i.i.i.i.i.i159.preheader717:               ; preds = %.lr.ph.i.i.i.i.i.i159.preheader, %middle.block651
  %.05.i.i.i.i.i.i160.ph = phi i64 [ %n.vec643, %middle.block651 ], [ 0, %.lr.ph.i.i.i.i.i.i159.preheader ] ; 3 uses
  br i1 %lcmp.mod774.not, label %.lr.ph.i.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i.i159.prol

end_hunk_3
