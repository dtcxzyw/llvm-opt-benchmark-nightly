inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
.lr.ph.i.preheader.i.i:                           ; preds = %.split.i.i
  %i.cj = xor i64 %i.cg, %i.ch
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = xor i64 %i.ck, %i.br
  %i.cm = xor i64 %i.cl, %.01011.i.i              ; 2 uses
  %i.cn = lshr i64 %i.cm, 1
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = sub i64 0, %i.cm
  %i.cq = or i64 %i.co, %i.cp
  %.fr.i.i = freeze i64 %i.cq
  %isnotneg.i.i.i = icmp slt i64 %.fr.i.i, 0
  br i1 %isnotneg.i.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.us.i.i.preheader

.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph.i.preheader.i.i
  br i1 %i.aq, label %.lr.ph.i.us.i.i.epil.preheader, label %.lr.ph.i.us.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.preheader.i.i
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.preheader, %.lr.ph.i.us.i.i
  %.013.i.us.i.i = phi i64 [ %i.dg, %.lr.ph.i.us.i.i ], [ 0, %.lr.ph.i.us.i.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us.i.i ], [ 0, %.lr.ph.i.us.i.i.preheader ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %.013.i.us.i.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !9
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.013.i.us.i.i ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !9
  %i.cv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.cw = and i64 %i.cv, %i.cu
  %i.cx = or i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.ct, align 8, !tbaa !9
  %i.cy = or disjoint i64 %.013.i.us.i.i, 1       ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cy ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !9
  %i.dd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.de = and i64 %i.dd, %i.dc
  %i.df = or i64 %i.de, %i.da
  store i64 %i.df, ptr %i.db, align 8, !tbaa !9
  %i.dg = add nuw i64 %.013.i.us.i.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa, label %.lr.ph.i.us.i.i, !llvm.loop !14

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %niter102 = phi i64 [ %niter102.next.1, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.013.i.i.i ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !9
  %i.dj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.i.i.i = xor i64 %i.dj, -1
  %i.dk = and i64 %i.di, %.reass.i.i.i
  store i64 %i.dk, ptr %i.dh, align 8, !tbaa !9
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.013.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !9
  %i.do = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.i.i.i.1 = xor i64 %i.do, -1
  %i.dp = and i64 %i.dn, %.reass.i.i.i.1
  store i64 %i.dp, ptr %i.dm, align 8, !tbaa !9
  %i.dq = add nuw i64 %.013.i.i.i, 2              ; 2 uses
  %niter102.next.1 = add i64 %niter102, 2         ; 2 uses
  %niter102.ncmp.1 = icmp eq i64 %niter102.next.1, %unroll_iter101
  br i1 %niter102.ncmp.1, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !14

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  br i1 %lcmp.mod99.not, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.013.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.dq, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.013.i.i.i.epil.init ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !9
  %i.dt = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.i.i.i.epil = xor i64 %i.dt, -1
  %i.du = and i64 %i.ds, %.reass.i.i.i.epil
  store i64 %i.du, ptr %i.dr, align 8, !tbaa !9
  br label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa: ; preds = %.lr.ph.i.us.i.i
  br i1 %lcmp.mod.not, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, label %.lr.ph.i.us.i.i.epil.preheader

.lr.ph.i.us.i.i.epil.preheader:                   ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa, %.lr.ph.i.us.i.i.preheader
  %.013.i.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.us.i.i.preheader ], [ %i.dg, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %.013.i.us.i.i.epil.init
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !9
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.013.i.us.i.i.epil.init ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !9
  %i.dz = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ea = and i64 %i.dz, %i.dy
  %i.eb = or i64 %i.ea, %i.dw
  store i64 %i.eb, ptr %i.dx, align 8, !tbaa !9
  br label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i: ; preds = %.lr.ph.i.us.i.i.epil.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa, %.lr.ph.i.i.i.epil.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa, %.split.i.i
  %i.ec = add nuw nsw i64 %.01011.i.i, 1          ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %3
  %exitcond.not.i.i = icmp eq i64 %i.ec, %i.s
  br i1 %exitcond.not.i.i, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %.split.i.i, !llvm.loop !54

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i
  br i1 %lcmp.mod104.not, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader: ; preds = %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader
  %epil.iter = phi i64 [ 0, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader ], [ %epil.iter.next, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil ]
  %i.ee = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.ef = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.eg = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
  br i1 %epil.iter.cmp.not, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil, !llvm.loop !55

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.u, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.v)
  br label %bb.h

bb.h:                                             ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit
  %.154 = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit ], [ %i.bl, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split ]
  %.1 = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit ], [ %i.br, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split ]
  br i1 %or.cond, label %.split.us, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split, !llvm.loop !53

.split.us:                                        ; preds = %bb.h, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z31mbedtls_mpi_core_exp_mod_unsafePmPKmS1_mS1_mS1_S_(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5, ptr noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #8 {
bb.a:
  tail call fastcc void @_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef 707406378, ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_Z24mbedtls_mpi_core_sub_intPmPKmmm(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1
  %i.a = icmp eq i64 %3, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.014.epil.init = phi i64 [ %2, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01213.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01213.epil.init
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = sub i64 %i.c, %.014.epil.init
  %i.e = icmp ugt i64 %.014.epil.init, %i.c
  %i.f = zext i1 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01213.epil.init
  store i64 %i.d, ptr %i.g, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil.preheader ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.014 = phi i64 [ %2, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 2 uses
  %.01213 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01213
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9    ; 2 uses
  %i.j = sub i64 %i.i, %.014
  %i.k = icmp ugt i64 %.014, %i.i
  %i.l = zext i1 %i.k to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01213
  store i64 %i.j, ptr %i.m, align 8, !tbaa !9
  %i.n = or disjoint i64 %.01213, 1               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9    ; 2 uses
  %i.q = sub i64 %i.p, %i.l
  %i.r = icmp ult i64 %i.p, %i.l
  %i.s = zext i1 %i.r to i64                      ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  store i64 %i.q, ptr %i.t, align 8, !tbaa !9
  %i.u = add nuw i64 %.01213, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i64 -1, 1) i64 @_Z30mbedtls_mpi_core_check_zero_ctPKmm(ptr noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.a = icmp ult i64 %1, 8
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.09.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.09.epil = phi i64 [ %i.e, %.lr.ph.epil ], [ %.09.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.078.epil = phi i64 [ %i.d, %.lr.ph.epil ], [ %.078.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.epil
  %i.c = load volatile i64, ptr %i.b, align 8, !tbaa !9
  %i.d = or i64 %i.c, %.078.epil                  ; 2 uses
  %i.e = add nuw i64 %.09.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.epil ]
  %i.f = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.g = xor i64 %i.f, %.07.lcssa                 ; 2 uses
  %i.h = sub i64 0, %i.g
  %i.i = lshr i64 %i.g, 1
  %i.j = sub nsw i64 0, %i.i
  %i.k = or i64 %i.j, %i.h
  %.neg.i = ashr i64 %i.k, 63
  ret i64 %.neg.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.09 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ] ; 9 uses
  %.078 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.m = load volatile i64, ptr %i.l, align 8, !tbaa !9
  %i.n = or i64 %i.m, %.078
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load volatile i64, ptr %i.p, align 8, !tbaa !9
  %i.r = or i64 %i.q, %i.n
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load volatile i64, ptr %i.t, align 8, !tbaa !9
  %i.v = or i64 %i.u, %i.r
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !9
  %i.z = or i64 %i.y, %i.v
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load volatile i64, ptr %i.ab, align 8, !tbaa !9
  %i.ad = or i64 %i.ac, %i.z
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load volatile i64, ptr %i.af, align 8, !tbaa !9
  %i.ah = or i64 %i.ag, %i.ad
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load volatile i64, ptr %i.aj, align 8, !tbaa !9
  %i.al = or i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load volatile i64, ptr %i.an, align 8, !tbaa !9
  %i.ap = or i64 %i.ao, %i.al                     ; 3 uses
  %i.aq = add nuw i64 %.09, 8                     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !58
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z28mbedtls_mpi_core_to_mont_repPmPKmS1_mmS1_S_(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #8 {
bb.a:
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %1, ptr noundef %5, i64 noundef %3, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z30mbedtls_mpi_core_from_mont_repPmPKmS1_mmS_(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 1, ptr %i.a, align 8, !tbaa !9
  call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = !{!5, !5, i64 0}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !8, !24, !23}
!26 = distinct !{!26, !8, !23, !24}
!27 = distinct !{!27, !8, !24, !23}
!28 = distinct !{!28, !8, !23, !24}
!29 = distinct !{!29, !8, !24, !23}
!30 = distinct !{!30, !8, !23, !24}
!31 = distinct !{!31, !8, !24, !23}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = !{!42, !45, i64 10}
!42 = !{!"_ZTS11mbedtls_mpi", !43, i64 0, !45, i64 8, !45, i64 10}
!43 = !{!"p1 long", !44, i64 0}
!44 = !{!"any pointer", !5, i64 0}
!45 = !{!"short", !5, i64 0}
!46 = !{ptr @_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_}
!47 = distinct !{!47, !8, !23, !24}
!48 = distinct !{!48, !8, !24, !23}
!49 = distinct !{!49, !8, !23, !24}
!50 = distinct !{!50, !8, !24, !23}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !8}
end_hunk_0
