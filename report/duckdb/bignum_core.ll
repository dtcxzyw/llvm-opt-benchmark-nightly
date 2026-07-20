inline.NumInlined: 59
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z28mbedtls_mpi_core_uint_le_mpimPKmm:bb.a
  %i.m = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.n = xor i64 %i.m, %i.l                       ; 2 uses
  %i.o = sub i64 0, %i.n
  %i.p = lshr i64 %i.n, 1
  %i.q = sub nsw i64 0, %i.p
  %i.r = or i64 %i.q, %i.o
  %.neg.i.epil = ashr i64 %i.r, 63
  %i.s = or i64 %.neg.i.epil, %.0910.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.09.lcssa = phi i64 [ %i.g, %bb.a ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ]
  %i.t = xor i64 %i.b, %i.a                       ; 2 uses
  %i.u = xor i64 %i.c, %0                         ; 3 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = xor i64 %i.u, %i.t
  %i.x = lshr i64 %i.w, 63
  %i.y = xor i64 %i.x, %i.d
  %i.z = sub i64 0, %i.y
  %i.aa = lshr i64 %i.d, 1
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = or i64 %i.z, %i.ab
  %.neg.i.i.i = ashr i64 %i.ac, 63                ; 2 uses
  %i.ad = xor i64 %i.e, %.neg.i.i.i
  %i.ae = xor i64 %i.ad, -1
  %i.af = and i64 %i.v, %i.ae
  %i.ag = and i64 %.neg.i.i.i, %i.u
  %i.ah = or i64 %i.af, %i.ag
  %i.ai = lshr i64 %i.ah, 63
  %i.aj = xor i64 %i.ai, %i.f
  %i.ak = sub i64 0, %i.aj
  %i.al = lshr i64 %i.f, 1
  %i.am = sub nsw i64 0, %i.al
  %i.an = or i64 %i.ak, %i.am
  %isnotneg.i = icmp sgt i64 %i.an, -1
  %i.ao = select i1 %isnotneg.i, i64 -1, i64 %.09.lcssa
  ret i64 %i.ao

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.bi, %.lr.ph ] ; 3 uses
  %.0910 = phi i64 [ %i.g, %.lr.ph.preheader.new ], [ %i.bh, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.011
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !9
  %i.ar = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.as = xor i64 %i.ar, %i.aq                    ; 2 uses
  %i.at = sub i64 0, %i.as
  %i.au = lshr i64 %i.as, 1
  %i.av = sub nsw i64 0, %i.au
  %i.aw = or i64 %i.av, %i.at
  %.neg.i = ashr i64 %i.aw, 63
  %i.ax = or i64 %.neg.i, %.0910
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.011
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9
  %i.bb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.bc = xor i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = sub i64 0, %i.bc
  %i.be = lshr i64 %i.bc, 1
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = or i64 %i.bf, %i.bd
  %.neg.i.1 = ashr i64 %i.bg, 63
  %i.bh = or i64 %.neg.i.1, %i.ax                 ; 3 uses
  %i.bi = add nuw i64 %.011, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define hidden noundef i64 @_Z22mbedtls_mpi_core_lt_ctPKmS0_m(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 2 uses
  %i.b = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.c = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.not22 = icmp eq i64 %2, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.019.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.bl, %.lr.ph ]
  ret i64 %.019.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.025 = phi i64 [ %i.d, %.lr.ph ], [ %2, %bb.a ]
  %.01824 = phi i64 [ %i.bm, %.lr.ph ], [ %i.c, %bb.a ]
  %.01923 = phi i64 [ %i.bl, %.lr.ph ], [ %i.a, %bb.a ]
  %i.d = add i64 %.025, -1                        ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %i.i = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.j = xor i64 %i.i, %i.f                       ; 2 uses
  %i.k = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.l = xor i64 %i.k, %i.h                       ; 3 uses
  %i.m = xor i64 %i.l, %i.j
  %i.n = lshr i64 %i.m, 63
  %i.o = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 2 uses
  %i.p = xor i64 %i.n, %i.o
  %i.q = sub i64 0, %i.p
  %i.r = lshr i64 %i.o, 1
  %i.s = sub nsw i64 0, %i.r
  %i.t = or i64 %i.q, %i.s
  %.neg.i.i = ashr i64 %i.t, 63                   ; 2 uses
  %i.u = sub i64 %i.j, %i.l
  %i.v = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.w = xor i64 %i.v, %.neg.i.i
  %i.x = xor i64 %i.w, -1
  %i.y = and i64 %.neg.i.i, %i.l
  %i.z = and i64 %i.u, %i.x
  %i.aa = or i64 %i.z, %i.y
  %i.ab = lshr i64 %i.aa, 63
  %i.ac = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 2 uses
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = sub i64 0, %i.ad
  %i.af = lshr i64 %i.ac, 1
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = or i64 %i.ae, %i.ag
  %.neg.i10.i = ashr i64 %i.ah, 63
  %i.ai = or i64 %.neg.i10.i, %.01824             ; 2 uses
  %i.aj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ak = xor i64 %i.aj, %i.h                     ; 2 uses
  %i.al = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.am = xor i64 %i.al, %i.f                     ; 3 uses
  %i.an = xor i64 %i.am, %i.ak
  %i.ao = lshr i64 %i.an, 63
  %i.ap = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 2 uses
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = sub i64 0, %i.aq
  %i.as = lshr i64 %i.ap, 1
  %i.at = sub nsw i64 0, %i.as
  %i.au = or i64 %i.ar, %i.at
  %.neg.i.i20 = ashr i64 %i.au, 63                ; 2 uses
  %i.av = sub i64 %i.ak, %i.am
  %i.aw = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ax = xor i64 %i.aw, %.neg.i.i20
  %i.ay = xor i64 %i.ax, -1
  %i.az = and i64 %.neg.i.i20, %i.am
  %i.ba = and i64 %i.av, %i.ay
  %i.bb = or i64 %i.ba, %i.az
  %i.bc = lshr i64 %i.bb, 63
  %i.bd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 2 uses
  %i.be = xor i64 %i.bc, %i.bd
  %i.bf = sub i64 0, %i.be
  %i.bg = lshr i64 %i.bd, 1
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = or i64 %i.bf, %i.bh
  %.neg.i10.i21 = ashr i64 %i.bi, 63              ; 2 uses
  %i.bj = xor i64 %i.ai, -1
  %i.bk = and i64 %.neg.i10.i21, %i.bj
  %i.bl = or i64 %i.bk, %.01923                   ; 2 uses
  %i.bm = or i64 %.neg.i10.i21, %i.ai
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z28mbedtls_mpi_core_cond_assignPmPKmmm(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  %invariant.op = xor i64 %3, -1
  %invariant.op17 = xor i64 %3, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.reass = xor i64 %i.h, %invariant.op
  %i.i = and i64 %i.e, %3
  %i.j = and i64 %i.g, %.reass.reass
  %i.k = or i64 %i.j, %i.i
  store i64 %i.k, ptr %i.f, align 8, !tbaa !9
  %i.l = or disjoint i64 %.013, 1                 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9
  %i.q = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.1.reass = xor i64 %i.q, %invariant.op17
  %i.r = and i64 %i.n, %3
  %i.s = and i64 %i.p, %.reass.1.reass
  %i.t = or i64 %i.s, %i.r
  store i64 %i.t, ptr %i.o, align 8, !tbaa !9
  %i.u = add nuw i64 %.013, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !14

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.epil.init
  %i.w = load i64, ptr %i.v, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.epil.init ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9
  %i.z = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.aa = xor i64 %3, %i.z
  %.reass.epil = xor i64 %i.aa, -1
  %i.ab = and i64 %i.w, %3
  %i.ac = and i64 %i.y, %.reass.epil
  %i.ad = or i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z26mbedtls_mpi_core_cond_swapPmS_mm(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %invariant.op = xor i64 %3, -1
  %invariant.op26 = xor i64 %3, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.021 = phi i64 [ %i.p, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.021 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.021 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.reass = xor i64 %i.g, %invariant.op
  %i.h = and i64 %i.f, %3
  %i.i = and i64 %i.d, %.reass.reass
  %i.j = or i64 %i.i, %i.h
  store i64 %i.j, ptr %i.c, align 8, !tbaa !9
  %i.k = load i64, ptr %i.e, align 8, !tbaa !9
  %i.l = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass25.reass = xor i64 %i.l, %invariant.op26
  %i.m = and i64 %i.d, %3
  %i.n = and i64 %i.k, %.reass25.reass
  %i.o = or i64 %i.n, %i.m
  store i64 %i.o, ptr %i.e, align 8, !tbaa !9
  %i.p = add nuw i64 %.021, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 -8, 1) i32 @_Z24mbedtls_mpi_core_read_lePmmPKhm(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %3, 3
  %i.b = and i64 %3, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %i.g, i1 false)
  %.not20 = icmp eq i64 %3, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01619 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.i = shl i64 %.01619, 3
  %i.j = and i64 %i.i, 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.01619
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, %i.j
  %i.o = lshr i64 %.01619, 3
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = or i64 %i.n, %i.q
  store i64 %i.r, ptr %i.p, align 8, !tbaa !9
  %i.s = or disjoint i64 %.01619, 1               ; 2 uses
  %i.t = shl i64 %i.s, 3
  %i.u = and i64 %i.t, 56
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw i64 %i.x, %i.u
  %i.z = lshr i64 %.01619, 3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9
  %i.ac = or i64 %i.y, %i.ab
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !9
  %i.ad = add nuw i64 %.01619, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !17

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01619.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod24 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.ae = shl i64 %.01619.epil.init, 3
  %i.af = and i64 %i.ae, 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.01619.epil.init
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw i64 %i.ai, %i.af
  %i.ak = lshr i64 %.01619.epil.init, 3
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9
  %i.an = or i64 %i.aj, %i.am
  store i64 %i.an, ptr %i.al, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -8, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph.epil.preheader ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 -8, 1) i32 @_Z24mbedtls_mpi_core_read_bePmmPKhm(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %3, 3
  %i.b = and i64 %3, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl i64 %1, 3                            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.h, i1 false)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sub i64 %i.h, %3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr [8 x i8], ptr %0, i64 %1
  %.01214.i = getelementptr i8, ptr %i.k, i64 -8  ; 2 uses
  %.not15.i = icmp ugt ptr %0, %.01214.i
  br i1 %.not15.i, label %_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.01217.i = phi ptr [ %.012.i, %.lr.ph.i ], [ %.01214.i, %bb.e ] ; 3 uses
  %.016.i = phi ptr [ %i.p, %.lr.ph.i ], [ %0, %bb.e ] ; 3 uses
  %i.l = load i64, ptr %.016.i, align 8, !tbaa !9
  %i.m = tail call noundef i64 @llvm.bswap.i64(i64 %i.l)
  %i.n = load i64, ptr %.01217.i, align 8, !tbaa !9
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  store i64 %i.o, ptr %.016.i, align 8, !tbaa !9
  store i64 %i.m, ptr %.01217.i, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i, i64 8 ; 2 uses
  %.012.i = getelementptr i8, ptr %.01217.i, i64 -8 ; 2 uses
  %.not.i = icmp ugt ptr %i.p, %.012.i
  br i1 %.not.i, label %_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit, label %.lr.ph.i, !llvm.loop !11

_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit:   ; preds = %.lr.ph.i, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ -8, %bb.a ], [ 0, %bb.e ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 -8, 1) i32 @_Z25mbedtls_mpi_core_write_lePKmmPhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i64 %1, 3                            ; 6 uses
  %i.b = icmp ult i64 %i.a, %3                    ; 2 uses
  br i1 %i.b, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not3536 = icmp ult i64 %3, %i.a
  br i1 %.not3536, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.c = add i64 %.02837, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !18

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.02837 = phi i64 [ %i.c, %bb.b ], [ %3, %.preheader ] ; 3 uses
  %i.d = lshr i64 %.02837, 3
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = shl i64 %.02837, 3
  %i.h = and i64 %i.g, 56
  %i.i = shl nuw i64 255, %i.h
  %i.j = and i64 %i.f, %i.i
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %.loopexit

.critedge:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.029 = phi i64 [ %i.a, %bb.a ], [ %3, %.preheader ], [ %3, %bb.b ] ; 5 uses
  %.not40 = icmp eq i64 %.029, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.critedge
  %xtraiter = and i64 %.029, 1
  %i.k = icmp eq i64 %.029, 1
  br i1 %i.k, label %.lr.ph39.epil.preheader, label %.lr.ph39.preheader.new

.lr.ph39.preheader.new:                           ; preds = %.lr.ph39.preheader
  %unroll_iter = and i64 %.029, -2
  br label %.lr.ph39

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph39.epil.preheader

.lr.ph39.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph39.preheader
  %.038.epil.init = phi i64 [ 0, %.lr.ph39.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod46 = trunc i64 %.029 to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.l = lshr i64 %.038.epil.init, 3
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = shl i64 %.038.epil.init, 3
  %i.p = and i64 %i.o, 56
  %i.q = lshr i64 %i.n, %i.p
  %i.r = trunc i64 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.038.epil.init
  store i8 %i.r, ptr %i.s, align 1, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph39.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge
  br i1 %i.b, label %bb.c, label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph39, %.lr.ph39.preheader.new
  %.038 = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %i.ak, %.lr.ph39 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %niter.next.1, %.lr.ph39 ]
  %i.t = lshr i64 %.038, 3
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9
  %i.w = shl i64 %.038, 3
  %i.x = and i64 %i.w, 48
  %i.y = lshr i64 %i.v, %i.x
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.038
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !16
  %i.ab = or disjoint i64 %.038, 1                ; 2 uses
  %i.ac = lshr i64 %.038, 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9
  %i.af = shl i64 %i.ab, 3
  %i.ag = and i64 %i.af, 56
  %i.ah = lshr i64 %i.ae, %i.ag
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !16
  %i.ak = add nuw i64 %.038, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph39, !llvm.loop !19

bb.c:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  %i.am = sub nuw i64 %3, %i.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 0, i64 %i.am, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.c
  %.1 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.c ], [ -8, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 -8, 1) i32 @_Z25mbedtls_mpi_core_write_bePKmmPhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i64 %1, 3                            ; 6 uses
  %i.b = icmp ult i64 %i.a, %3
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not3840 = icmp ult i64 %3, %i.a
  br i1 %.not3840, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.d = sub i64 0, %i.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d
  %i.f = sub nuw i64 %3, %i.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.f, i1 false)
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.g = add i64 %.03041, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !20

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.03041 = phi i64 [ %i.g, %bb.c ], [ %3, %.preheader ] ; 3 uses
  %i.h = lshr i64 %.03041, 3
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = shl i64 %.03041, 3
  %i.l = and i64 %i.k, 56
  %i.m = shl nuw i64 255, %i.l
  %i.n = and i64 %i.j, %i.m
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.c, label %.loopexit

.critedge:                                        ; preds = %bb.c, %.preheader, %bb.b
  %.032 = phi i64 [ %i.a, %bb.b ], [ %3, %.preheader ], [ %3, %bb.c ] ; 6 uses
  %.031 = phi ptr [ %i.e, %bb.b ], [ %2, %.preheader ], [ %2, %bb.c ]
  %.not44 = icmp eq i64 %.032, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.critedge
  %i.o = getelementptr i8, ptr %.031, i64 %.032   ; 3 uses
  %xtraiter = and i64 %.032, 1
  %i.p = icmp eq i64 %.032, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43
  %unroll_iter = and i64 %.032, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph43.new
  %.042 = phi i64 [ 0, %.lr.ph43.new ], [ %i.aj, %bb.d ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph43.new ], [ %niter.next.1, %bb.d ]
  %i.q = lshr i64 %.042, 3
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9
  %i.t = shl i64 %.042, 3
  %i.u = and i64 %i.t, 48
  %i.v = lshr i64 %i.s, %i.u
  %i.w = trunc i64 %i.v to i8
  %i.x = xor i64 %.042, -1
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  store i8 %i.w, ptr %i.y, align 1, !tbaa !16
  %i.z = lshr i64 %.042, 3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9
  %i.ac = shl i64 %.042, 3
  %i.ad = and i64 %i.ac, 48
  %i.ae = or disjoint i64 %i.ad, 8
  %i.af = lshr i64 %i.ab, %i.ae
  %i.ag = trunc i64 %i.af to i8
  %i.ah = xor i64 %.042, -2
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ah
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !16
  %i.aj = add nuw i64 %.042, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !21

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph43
  %.042.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod54 = trunc i64 %.032 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.ak = lshr i64 %.042.epil.init, 3
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9
  %i.an = shl i64 %.042.epil.init, 3
  %i.ao = and i64 %i.an, 56
  %i.ap = lshr i64 %i.am, %i.ao
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = xor i64 %.042.epil.init, -1
  %i.as = getelementptr i8, ptr %i.o, i64 %i.ar
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ 0, %.epil.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ -8, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %2, 6                           ; 8 uses
  %i.b = and i64 %2, 63                           ; 4 uses
  %i.c = icmp ugt i64 %i.a, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.a, %1                     ; 2 uses
  %i.e = icmp ne i64 %i.b, 0                      ; 2 uses
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.f, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit44, label %.preheader45

.preheader45:                                     ; preds = %bb.d
  %i.g = sub i64 %1, %i.a                         ; 5 uses
  br i1 %i.d, label %.preheader43, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.a ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !9
  %wide.load60 = load <2 x i64>, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr i8, ptr %i.h, i64 16
  store <2 x i64> %wide.load, ptr %i.h, align 8, !tbaa !9
  store <2 x i64> %wide.load60, ptr %i.k, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.preheader43, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %.lr.ph.preheader, %middle.block
  %.046.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader43:                                     ; preds = %.lr.ph, %middle.block, %.preheader45
  %.not59 = icmp ugt i64 %i.a, %1
  br i1 %.not59, label %.loopexit44, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.preheader43
  %i.m = shl i64 %i.g, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.m
  %i.n = shl nuw nsw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.n, i1 false), !tbaa !9
  br label %.loopexit44

.lr.ph:                                           ; preds = %.lr.ph.preheader79, %.lr.ph
  %.046 = phi i64 [ %i.r, %.lr.ph ], [ %.046.ph, %.lr.ph.preheader79 ] ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %0, i64 %.046 ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  store i64 %i.q, ptr %i.o, align 8, !tbaa !9
  %i.r = add nuw i64 %.046, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.g
  br i1 %exitcond.not, label %.preheader43, label %.lr.ph, !llvm.loop !25

.loopexit44:                                      ; preds = %.lr.ph48.preheader, %.preheader43, %bb.d
  %.not4249 = icmp ne i64 %1, 0
  %or.cond54.not = and i1 %.not4249, %i.e
  br i1 %or.cond54.not, label %.lr.ph52, label %.loopexit

.lr.ph52:                                         ; preds = %.loopexit44
  %i.s = sub nuw nsw i64 64, %i.b                 ; 2 uses
  %min.iters.check62 = icmp ult i64 %1, 6
  br i1 %min.iters.check62, label %scalar.ph61.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph52
  %n.vec65 = and i64 %1, -4                       ; 2 uses
  %i.t = and i64 %1, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert66 = insertelement <2 x i64> poison, i64 %i.b, i64 0 ; 2 uses
  %i.u = shufflevector <2 x i64> %broadcast.splatinsert66, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x i64> %broadcast.splatinsert66, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph63
  %index69 = phi i64 [ 0, %vector.ph63 ], [ %index.next75, %vector.body68 ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph63 ], [ %i.ab, %vector.body68 ]
  %i.w = sub i64 %1, %index69
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -16      ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 -32      ; 2 uses
  %wide.load70 = load <2 x i64>, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %wide.load71 = load <2 x i64>, ptr %i.z, align 8, !tbaa !9 ; 2 uses
  %reverse = shufflevector <2 x i64> %wide.load70, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse72 = shufflevector <2 x i64> %wide.load71, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aa = shl <2 x i64> %reverse, %broadcast.splat ; 2 uses
  %i.ab = shl <2 x i64> %reverse72, %broadcast.splat ; 3 uses
  %i.ac = lshr <2 x i64> %wide.load70, %i.u
  %i.ad = shufflevector <2 x i64> %i.aa, <2 x i64> %vector.recur, <2 x i32> <i32 0, i32 3>
  %reverse73 = or <2 x i64> %i.ac, %i.ad
  %i.ae = lshr <2 x i64> %wide.load71, %i.v
  %i.af = shufflevector <2 x i64> %i.ab, <2 x i64> %i.aa, <2 x i32> <i32 0, i32 3>
  %reverse74 = or <2 x i64> %i.ae, %i.af
  store <2 x i64> %reverse73, ptr %i.y, align 8, !tbaa !9
  store <2 x i64> %reverse74, ptr %i.z, align 8, !tbaa !9
  %index.next75 = add nuw i64 %index69, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next75, %n.vec65
  br i1 %i.ag, label %middle.block76, label %vector.body68, !llvm.loop !26

middle.block76:                                   ; preds = %vector.body68
  %vector.recur.extract = extractelement <2 x i64> %i.ab, i64 1
  %cmp.n77 = icmp eq i64 %1, %n.vec65
  br i1 %cmp.n77, label %.loopexit, label %scalar.ph61.preheader

scalar.ph61.preheader:                            ; preds = %.lr.ph52, %middle.block76
  %.251.ph = phi i64 [ %1, %.lr.ph52 ], [ %i.t, %middle.block76 ]
  %.03850.ph = phi i64 [ 0, %.lr.ph52 ], [ %vector.recur.extract, %middle.block76 ]
  br label %scalar.ph61

scalar.ph61:                                      ; preds = %scalar.ph61.preheader, %scalar.ph61
  %.251 = phi i64 [ %i.an, %scalar.ph61 ], [ %.251.ph, %scalar.ph61.preheader ] ; 2 uses
  %.03850 = phi i64 [ %i.ak, %scalar.ph61 ], [ %.03850.ph, %scalar.ph61.preheader ]
  %i.ah = getelementptr [8 x i8], ptr %0, i64 %.251
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8     ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !9  ; 2 uses
  %i.ak = shl i64 %i.aj, %i.s
  %i.al = lshr i64 %i.aj, %i.b
  %i.am = or i64 %i.al, %.03850
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !9
  %i.an = add i64 %.251, -1                       ; 2 uses
  %.not42 = icmp eq i64 %i.an, 0
  br i1 %.not42, label %.loopexit, label %scalar.ph61, !llvm.loop !27

.loopexit:                                        ; preds = %scalar.ph61, %middle.block76, %.loopexit44, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z24mbedtls_mpi_core_shift_lPmmm(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %2, 6                           ; 10 uses
  %i.b = and i64 %2, 63                           ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit36, label %.preheader37

.preheader37:                                     ; preds = %bb.a
  %i.c = icmp ugt i64 %1, %i.a
  br i1 %i.c, label %.lr.ph, label %.preheader35

.lr.ph:                                           ; preds = %.preheader37
  %i.d = xor i64 %i.a, -1                         ; 2 uses
  %i.e = sub nuw i64 %1, %i.a                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, -4                       ; 3 uses
  %i.f = sub i64 %1, %n.vec                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = sub i64 %1, %index
  %i.h = getelementptr [8 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.d ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = getelementptr i8, ptr %i.i, i64 -24
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !tbaa !9
  %wide.load52 = load <2 x i64>, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr i8, ptr %i.h, i64 -16
  %i.m = getelementptr i8, ptr %i.h, i64 -32
  store <2 x i64> %wide.load, ptr %i.l, align 8, !tbaa !9
  store <2 x i64> %wide.load52, ptr %i.m, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.lr.ph41.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.038.ph = phi i64 [ %1, %.lr.ph ], [ %i.f, %middle.block ]
  br label %scalar.ph

.preheader35:                                     ; preds = %.preheader37
  %.not3339 = icmp eq i64 %1, 0
  br i1 %.not3339, label %.loopexit36, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %scalar.ph, %middle.block, %.preheader35
  %.0.lcssa51 = phi i64 [ %1, %.preheader35 ], [ %i.f, %middle.block ], [ %i.t, %scalar.ph ]
  %i.o = shl nuw nsw i64 %.0.lcssa51, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.o, i1 false), !tbaa !9
  br label %.loopexit36

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.038 = phi i64 [ %i.t, %scalar.ph ], [ %.038.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %0, i64 %.038 ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %i.d
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = getelementptr i8, ptr %i.p, i64 -8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !9
  %i.t = add i64 %.038, -1                        ; 3 uses
  %i.u = icmp ugt i64 %i.t, %i.a
  br i1 %i.u, label %scalar.ph, label %.lr.ph41.preheader, !llvm.loop !29

.loopexit36:                                      ; preds = %.lr.ph41.preheader, %.preheader35, %bb.a
  %.not34 = icmp ne i64 %i.b, 0
  %i.v = icmp ult i64 %i.a, %1
  %or.cond = and i1 %.not34, %i.v
  br i1 %or.cond, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %.loopexit36
  %i.w = sub nuw nsw i64 64, %i.b                 ; 2 uses
  %i.x = sub nuw i64 %1, %i.a                     ; 3 uses
  %min.iters.check54 = icmp ult i64 %i.x, 4
  br i1 %min.iters.check54, label %scalar.ph53.preheader, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph44
  %n.vec57 = and i64 %i.x, -4                     ; 3 uses
  %i.y = add i64 %i.a, %n.vec57
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert58 = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat59 = shufflevector <2 x i64> %broadcast.splatinsert58, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %0, i64 %i.a
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph55
  %index61 = phi i64 [ 0, %vector.ph55 ], [ %index.next64, %vector.body60 ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph55 ], [ %i.ad, %vector.body60 ]
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %index61 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load62 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !9 ; 2 uses
  %wide.load63 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !9 ; 2 uses
  %i.ac = lshr <2 x i64> %wide.load62, %broadcast.splat ; 2 uses
  %i.ad = lshr <2 x i64> %wide.load63, %broadcast.splat ; 3 uses
  %i.ae = shufflevector <2 x i64> %vector.recur, <2 x i64> %i.ac, <2 x i32> <i32 1, i32 2>
  %i.af = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.ag = shl <2 x i64> %wide.load62, %broadcast.splat59
  %i.ah = shl <2 x i64> %wide.load63, %broadcast.splat59
  %i.ai = or <2 x i64> %i.ag, %i.ae
  %i.aj = or <2 x i64> %i.ah, %i.af
  store <2 x i64> %i.ai, ptr %i.aa, align 8, !tbaa !9
  store <2 x i64> %i.aj, ptr %i.ab, align 8, !tbaa !9
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.ak, label %middle.block65, label %vector.body60, !llvm.loop !30

middle.block65:                                   ; preds = %vector.body60
  %vector.recur.extract = extractelement <2 x i64> %i.ad, i64 1
  %cmp.n66 = icmp eq i64 %i.x, %n.vec57
  br i1 %cmp.n66, label %.loopexit, label %scalar.ph53.preheader

scalar.ph53.preheader:                            ; preds = %.lr.ph44, %middle.block65
  %.243.ph = phi i64 [ %i.a, %.lr.ph44 ], [ %i.y, %middle.block65 ]
  %.03042.ph = phi i64 [ 0, %.lr.ph44 ], [ %vector.recur.extract, %middle.block65 ]
  br label %scalar.ph53

scalar.ph53:                                      ; preds = %scalar.ph53.preheader, %scalar.ph53
  %.243 = phi i64 [ %i.aq, %scalar.ph53 ], [ %.243.ph, %scalar.ph53.preheader ] ; 2 uses
  %.03042 = phi i64 [ %i.an, %scalar.ph53 ], [ %.03042.ph, %scalar.ph53.preheader ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.243 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9  ; 2 uses
  %i.an = lshr i64 %i.am, %i.w
  %i.ao = shl i64 %i.am, %i.b
  %i.ap = or i64 %i.ao, %.03042
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !9
  %i.aq = add nuw i64 %.243, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %1
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph53, !llvm.loop !31

.loopexit:                                        ; preds = %scalar.ph53, %middle.block65, %.loopexit36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 0, 3) i64 @_Z20mbedtls_mpi_core_addPmPKmS1_m(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
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
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %.01920.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod23 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01920.epil.init
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = add i64 %i.c, %.021.epil.init            ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  %i.f = zext i1 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01920.epil.init
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %i.i = add i64 %i.d, %i.h                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, %i.f
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01920.epil.init
  store i64 %i.i, ptr %i.m, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %.01920 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01920
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9    ; 2 uses
  %i.p = add i64 %i.o, %.021                      ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01920
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9    ; 2 uses
  %i.u = add i64 %i.p, %i.t                       ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, %i.r
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01920
  store i64 %i.u, ptr %i.y, align 8, !tbaa !9
  %i.z = or disjoint i64 %.01920, 1               ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9  ; 2 uses
  %i.ac = add i64 %i.ab, %i.x                     ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !9  ; 2 uses
  %i.ah = add i64 %i.ac, %i.ag                    ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, %i.ae            ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !9
  %i.am = add nuw i64 %.01920, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i64 0, 3) i64 @_Z23mbedtls_mpi_core_add_ifPmPKmmj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %3 to i64
  %i.c = xor i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = sub nsw i64 0, %i.d
  %i.f = sub i64 0, %i.c
  %i.g = or i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %isneg = icmp slt i64 %.fr, 0
  br i1 %isneg, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %2, 1
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter35 = and i64 %2, 1
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter39 = and i64 %2, -2
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.023.us = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %i.af, %.lr.ph.split.us ]
  %.02122.us = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %i.ag, %.lr.ph.split.us ] ; 4 uses
  %niter40 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter40.next.1, %.lr.ph.split.us ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02122.us
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9    ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02122.us ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9    ; 2 uses
  %i.n = add i64 %i.m, %.023.us                   ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %i.n, %i.k                       ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.k
  %i.s = zext i1 %i.r to i64
  %i.t = add nuw nsw i64 %i.s, %i.p
  store i64 %i.q, ptr %i.l, align 8, !tbaa !9
  %i.u = or disjoint i64 %.02122.us, 1            ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !9    ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9    ; 2 uses
  %i.z = add i64 %i.y, %i.t                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = zext i1 %i.aa to i64
  %i.ac = add i64 %i.z, %i.w                      ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.w
  %i.ae = zext i1 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, %i.ab            ; 3 uses
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !9
  %i.ag = add nuw i64 %.02122.us, 2               ; 2 uses
  %niter40.next.1 = add nuw i64 %niter40, 2       ; 2 uses
  %niter40.ncmp.1 = icmp eq i64 %niter40.next.1, %unroll_iter39
  br i1 %niter40.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !33

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.023.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %.02122.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02122.us.epil.init
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02122.us.epil.init ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9  ; 2 uses
  %i.al = add i64 %i.ak, %.023.us.epil.init       ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = zext i1 %i.am to i64
  %i.ao = add i64 %i.al, %i.ai                    ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.ai
  %i.aq = zext i1 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.aq, %i.an
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge.loopexit31.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit31.unr-lcssa, %.lr.ph.split.preheader
  %.023.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.bh, %._crit_edge.loopexit31.unr-lcssa ]
  %.02122.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.bi, %._crit_edge.loopexit31.unr-lcssa ]
  %lcmp.mod34 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02122.epil.init ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !9  ; 2 uses
  %i.au = add i64 %i.at, %.023.epil.init          ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = zext i1 %i.av to i64
  store i64 %i.au, ptr %i.as, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit31.unr-lcssa, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ar, %.lr.ph.split.us.epil.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.bh, %._crit_edge.loopexit31.unr-lcssa ], [ %i.aw, %.lr.ph.split.epil.preheader ]
  ret i64 %.0.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.023 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.bh, %.lr.ph.split ]
  %.02122 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.bi, %.lr.ph.split ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02122 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !9  ; 2 uses
  %i.az = add i64 %i.ay, %.023                    ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = zext i1 %i.ba to i64
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02122
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9  ; 2 uses
  %i.bf = add i64 %i.be, %i.bb                    ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = zext i1 %i.bg to i64                    ; 3 uses
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !9
  %i.bi = add nuw i64 %.02122, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit31.unr-lcssa, label %.lr.ph.split, !llvm.loop !33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 0, 3) i64 @_Z20mbedtls_mpi_core_subPmPKmS1_m(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
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
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01819.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod22 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01819.epil.init
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = icmp ult i64 %i.c, %.020.epil.init
  %i.e = zext i1 %i.d to i64
  %i.f = sub i64 %i.c, %.020.epil.init            ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01819.epil.init
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %i.i = icmp ult i64 %i.f, %i.h
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.j, %i.e
  %i.l = sub i64 %i.f, %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01819.epil.init
  store i64 %i.l, ptr %i.m, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.01819 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01819
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9    ; 2 uses
  %i.p = icmp ult i64 %i.o, %.020
  %i.q = zext i1 %i.p to i64
  %i.r = sub i64 %i.o, %.020                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01819
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9    ; 2 uses
  %i.u = icmp ult i64 %i.r, %i.t
  %i.v = zext i1 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, %i.q               ; 2 uses
  %i.x = sub i64 %i.r, %i.t
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01819
  store i64 %i.x, ptr %i.y, align 8, !tbaa !9
  %i.z = or disjoint i64 %.01819, 1               ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9  ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.w
  %i.ad = zext i1 %i.ac to i64
  %i.ae = sub i64 %i.ab, %i.w                     ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !9  ; 2 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, %i.ad            ; 3 uses
  %i.ak = sub i64 %i.ae, %i.ag
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !9
  %i.am = add nuw i64 %.01819, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_Z20mbedtls_mpi_core_mlaPmmPKmmm(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %3) ; 4 uses
  %i.a = sub i64 %1, %spec.select                 ; 4 uses
  %i.b = lshr i64 %spec.select, 3                 ; 2 uses
  %i.c = and i64 %spec.select, 7                  ; 7 uses
  %.not182 = icmp eq i64 %i.b, 0
  br i1 %.not182, label %.preheader181, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext i64 %4 to i128                      ; 8 uses
  br label %bb.b

.preheader181:                                    ; preds = %bb.b, %bb.a
  %.0171.lcssa = phi i64 [ 0, %bb.a ], [ %i.fa, %bb.b ] ; 3 uses
  %.0168.lcssa = phi ptr [ %2, %bb.a ], [ %i.el, %bb.b ] ; 7 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.fb, %bb.b ] ; 10 uses
  %.not179189 = icmp eq i64 %i.c, 0
  br i1 %.not179189, label %.preheader, label %.lr.ph194

.lr.ph194:                                        ; preds = %.preheader181
  %i.e = zext i64 %4 to i128                      ; 7 uses
  %i.f = load i64, ptr %.0168.lcssa, align 8, !tbaa !9
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, %i.e                  ; 2 uses
  %i.i = trunc i128 %i.h to i64
  %i.j = lshr i128 %i.h, 64
  %i.k = trunc nuw i128 %i.j to i64
  %i.l = add i64 %.0171.lcssa, %i.i               ; 2 uses
  %i.m = icmp ult i64 %i.l, %.0171.lcssa
  %i.n = zext i1 %i.m to i64
  %i.o = add nuw i64 %i.n, %i.k
  %i.p = load i64, ptr %.0.lcssa, align 8, !tbaa !9 ; 2 uses
  %i.q = add i64 %i.l, %i.p                       ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = zext i1 %i.r to i64
  %i.t = add i64 %i.o, %i.s                       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 3 uses
  store i64 %i.q, ptr %.0.lcssa, align 8, !tbaa !9
  %.not179 = icmp eq i64 %i.c, 1
  br i1 %.not179, label %.preheader, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0186 = phi ptr [ %0, %.lr.ph ], [ %i.fb, %bb.b ] ; 10 uses
  %.0168185 = phi ptr [ %2, %.lr.ph ], [ %i.el, %bb.b ] ; 9 uses
  %.0171184 = phi i64 [ 0, %.lr.ph ], [ %i.fa, %bb.b ] ; 2 uses
  %.0175183 = phi i64 [ %i.b, %.lr.ph ], [ %i.v, %bb.b ]
  %i.v = add nsw i64 %.0175183, -1                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0168185, i64 8
  %i.x = load i64, ptr %.0168185, align 8, !tbaa !9
  %i.y = zext i64 %i.x to i128
  %i.z = mul nuw i128 %i.y, %i.d                  ; 2 uses
  %i.aa = trunc i128 %i.z to i64
  %i.ab = lshr i128 %i.z, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = add i64 %.0171184, %i.aa                ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %.0171184
  %i.af = zext i1 %i.ae to i64
  %i.ag = add nuw i64 %i.af, %i.ac
  %i.ah = load i64, ptr %.0186, align 8, !tbaa !9 ; 2 uses
  %i.ai = add i64 %i.ad, %i.ah                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = zext i1 %i.aj to i64
  %i.al = add i64 %i.ag, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0186, i64 8 ; 2 uses
  store i64 %i.ai, ptr %.0186, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %.0168185, i64 16
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !9
  %i.ap = zext i64 %i.ao to i128
  %i.aq = mul nuw i128 %i.ap, %i.d                ; 2 uses
  %i.ar = trunc i128 %i.aq to i64
  %i.as = lshr i128 %i.aq, 64
  %i.at = trunc nuw i128 %i.as to i64
  %i.au = add i64 %i.al, %i.ar                    ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.al
  %i.aw = zext i1 %i.av to i64
  %i.ax = add nuw i64 %i.aw, %i.at
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !9  ; 2 uses
  %i.az = add i64 %i.au, %i.ay                    ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add i64 %i.ax, %i.bb                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0186, i64 16 ; 2 uses
  store i64 %i.az, ptr %i.am, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %.0168185, i64 24
  %i.bf = load i64, ptr %i.an, align 8, !tbaa !9
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, %i.d                ; 2 uses
  %i.bi = trunc i128 %i.bh to i64
  %i.bj = lshr i128 %i.bh, 64
  %i.bk = trunc nuw i128 %i.bj to i64
  %i.bl = add i64 %i.bc, %i.bi                    ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bc
  %i.bn = zext i1 %i.bm to i64
  %i.bo = add nuw i64 %i.bn, %i.bk
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !9  ; 2 uses
  %i.bq = add i64 %i.bl, %i.bp                    ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = zext i1 %i.br to i64
  %i.bt = add i64 %i.bo, %i.bs                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0186, i64 24 ; 2 uses
  store i64 %i.bq, ptr %i.bd, align 8, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %.0168185, i64 32
  %i.bw = load i64, ptr %i.be, align 8, !tbaa !9
  %i.bx = zext i64 %i.bw to i128
  %i.by = mul nuw i128 %i.bx, %i.d                ; 2 uses
  %i.bz = trunc i128 %i.by to i64
  %i.ca = lshr i128 %i.by, 64
  %i.cb = trunc nuw i128 %i.ca to i64
  %i.cc = add i64 %i.bt, %i.bz                    ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.bt
  %i.ce = zext i1 %i.cd to i64
  %i.cf = add nuw i64 %i.ce, %i.cb
  %i.cg = load i64, ptr %i.bu, align 8, !tbaa !9  ; 2 uses
  %i.ch = add i64 %i.cc, %i.cg                    ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = zext i1 %i.ci to i64
  %i.ck = add i64 %i.cf, %i.cj                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0186, i64 32 ; 2 uses
  store i64 %i.ch, ptr %i.bu, align 8, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %.0168185, i64 40
  %i.cn = load i64, ptr %i.bv, align 8, !tbaa !9
  %i.co = zext i64 %i.cn to i128
  %i.cp = mul nuw i128 %i.co, %i.d                ; 2 uses
  %i.cq = trunc i128 %i.cp to i64
  %i.cr = lshr i128 %i.cp, 64
  %i.cs = trunc nuw i128 %i.cr to i64
  %i.ct = add i64 %i.ck, %i.cq                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.ck
  %i.cv = zext i1 %i.cu to i64
  %i.cw = add nuw i64 %i.cv, %i.cs
  %i.cx = load i64, ptr %i.cl, align 8, !tbaa !9  ; 2 uses
  %i.cy = add i64 %i.ct, %i.cx                    ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = zext i1 %i.cz to i64
  %i.db = add i64 %i.cw, %i.da                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0186, i64 40 ; 2 uses
  store i64 %i.cy, ptr %i.cl, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %.0168185, i64 48
  %i.de = load i64, ptr %i.cm, align 8, !tbaa !9
  %i.df = zext i64 %i.de to i128
  %i.dg = mul nuw i128 %i.df, %i.d                ; 2 uses
  %i.dh = trunc i128 %i.dg to i64
  %i.di = lshr i128 %i.dg, 64
  %i.dj = trunc nuw i128 %i.di to i64
  %i.dk = add i64 %i.db, %i.dh                    ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.db
  %i.dm = zext i1 %i.dl to i64
  %i.dn = add nuw i64 %i.dm, %i.dj
  %i.do = load i64, ptr %i.dc, align 8, !tbaa !9  ; 2 uses
  %i.dp = add i64 %i.dk, %i.do                    ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = zext i1 %i.dq to i64
  %i.ds = add i64 %i.dn, %i.dr                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0186, i64 48 ; 2 uses
  store i64 %i.dp, ptr %i.dc, align 8, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %.0168185, i64 56
  %i.dv = load i64, ptr %i.dd, align 8, !tbaa !9
  %i.dw = zext i64 %i.dv to i128
  %i.dx = mul nuw i128 %i.dw, %i.d                ; 2 uses
  %i.dy = trunc i128 %i.dx to i64
  %i.dz = lshr i128 %i.dx, 64
  %i.ea = trunc nuw i128 %i.dz to i64
  %i.eb = add i64 %i.ds, %i.dy                    ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ds
  %i.ed = zext i1 %i.ec to i64
  %i.ee = add nuw i64 %i.ed, %i.ea
  %i.ef = load i64, ptr %i.dt, align 8, !tbaa !9  ; 2 uses
  %i.eg = add i64 %i.eb, %i.ef                    ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add i64 %i.ee, %i.ei                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0186, i64 56 ; 2 uses
  store i64 %i.eg, ptr %i.dt, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %.0168185, i64 64 ; 2 uses
  %i.em = load i64, ptr %i.du, align 8, !tbaa !9
  %i.en = zext i64 %i.em to i128
  %i.eo = mul nuw i128 %i.en, %i.d                ; 2 uses
  %i.ep = trunc i128 %i.eo to i64
  %i.eq = lshr i128 %i.eo, 64
  %i.er = trunc nuw i128 %i.eq to i64
  %i.es = add i64 %i.ej, %i.ep                    ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.ej
  %i.eu = zext i1 %i.et to i64
  %i.ev = add nuw i64 %i.eu, %i.er
  %i.ew = load i64, ptr %i.ek, align 8, !tbaa !9  ; 2 uses
  %i.ex = add i64 %i.es, %i.ew                    ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = zext i1 %i.ey to i64
  %i.fa = add i64 %i.ev, %i.ez                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0186, i64 64 ; 2 uses
  store i64 %i.ex, ptr %i.ek, align 8, !tbaa !9
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %.preheader181, label %bb.b, !llvm.loop !35

end_hunk_0
begin_hunk_1_@_Z20mbedtls_mpi_core_mlaPmmPKmmm:bb.a
  %i.hv = add i64 %i.hq, %i.hu                    ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.hu
  %i.hx = zext i1 %i.hw to i64
  %i.hy = add i64 %i.ht, %i.hx                    ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 40 ; 3 uses
  store i64 %i.hv, ptr %i.hi, align 8, !tbaa !9
  %.not179.4 = icmp eq i64 %i.c, 5
  br i1 %.not179.4, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ia = getelementptr inbounds nuw i8, ptr %.0168.lcssa, i64 40
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !9
  %i.ic = zext i64 %i.ib to i128
  %i.id = mul nuw i128 %i.ic, %i.e                ; 2 uses
  %i.ie = trunc i128 %i.id to i64
  %i.if = lshr i128 %i.id, 64
  %i.ig = trunc nuw i128 %i.if to i64
  %i.ih = add i64 %i.hy, %i.ie                    ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.hy
  %i.ij = zext i1 %i.ii to i64
  %i.ik = add nuw i64 %i.ij, %i.ig
  %i.il = load i64, ptr %i.hz, align 8, !tbaa !9  ; 2 uses
  %i.im = add i64 %i.ih, %i.il                    ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.il
  %i.io = zext i1 %i.in to i64
  %i.ip = add i64 %i.ik, %i.io                    ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 48 ; 3 uses
  store i64 %i.im, ptr %i.hz, align 8, !tbaa !9
  %.not179.5 = icmp eq i64 %i.c, 6
  br i1 %.not179.5, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ir = getelementptr inbounds nuw i8, ptr %.0168.lcssa, i64 48
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !9
  %i.it = zext i64 %i.is to i128
  %i.iu = mul nuw i128 %i.it, %i.e                ; 2 uses
  %i.iv = trunc i128 %i.iu to i64
  %i.iw = lshr i128 %i.iu, 64
  %i.ix = trunc nuw i128 %i.iw to i64
  %i.iy = add i64 %i.ip, %i.iv                    ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.ip
  %i.ja = zext i1 %i.iz to i64
  %i.jb = add nuw i64 %i.ja, %i.ix
  %i.jc = load i64, ptr %i.iq, align 8, !tbaa !9  ; 2 uses
  %i.jd = add i64 %i.iy, %i.jc                    ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = zext i1 %i.je to i64
  %i.jg = add i64 %i.jb, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 56
  store i64 %i.jd, ptr %i.iq, align 8, !tbaa !9
  br label %.preheader

.lr.ph201:                                        ; preds = %.lr.ph201.prol.loopexit, %.lr.ph201
  %.2200 = phi ptr [ %i.kc, %.lr.ph201 ], [ %.2200.unr, %.lr.ph201.prol.loopexit ] ; 6 uses
  %.2173199 = phi i64 [ %i.kb, %.lr.ph201 ], [ %.2173199.unr, %.lr.ph201.prol.loopexit ] ; 2 uses
  %.0174198 = phi i64 [ %i.jx, %.lr.ph201 ], [ %.0174198.unr, %.lr.ph201.prol.loopexit ]
  %i.ji = load i64, ptr %.2200, align 8, !tbaa !9
  %i.jj = add i64 %i.ji, %.2173199                ; 2 uses
  store i64 %i.jj, ptr %.2200, align 8, !tbaa !9
  %i.jk = icmp ult i64 %i.jj, %.2173199
  %i.jl = zext i1 %i.jk to i64                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.2200, i64 8 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !9
  %i.jo = add i64 %i.jn, %i.jl                    ; 2 uses
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !9
  %i.jp = icmp ult i64 %i.jo, %i.jl
  %i.jq = zext i1 %i.jp to i64                    ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.2200, i64 16 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !9
  %i.jt = add i64 %i.js, %i.jq                    ; 2 uses
  store i64 %i.jt, ptr %i.jr, align 8, !tbaa !9
  %i.ju = icmp ult i64 %i.jt, %i.jq
  %i.jv = zext i1 %i.ju to i64                    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.2200, i64 24 ; 2 uses
  %i.jx = add i64 %.0174198, -4                   ; 2 uses
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !9
  %i.jz = add i64 %i.jy, %i.jv                    ; 2 uses
  store i64 %i.jz, ptr %i.jw, align 8, !tbaa !9
  %i.ka = icmp ult i64 %i.jz, %i.jv
  %i.kb = zext i1 %i.ka to i64                    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.2200, i64 32
  %.not180.3 = icmp eq i64 %i.jx, 0
  br i1 %.not180.3, label %._crit_edge, label %.lr.ph201, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph201.prol.loopexit, %.lr.ph201, %.preheader
  %.2173.lcssa = phi i64 [ %.1172.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph201.prol.loopexit ], [ %i.kb, %.lr.ph201 ]
  ret i64 %.2173.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z20mbedtls_mpi_core_mulPmPKmmS1_m(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %4, %2
  %i.b = shl i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.b, i1 false)
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = add i64 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.012 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.012
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.012
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = tail call noundef i64 @_Z20mbedtls_mpi_core_mlaPmmPKmmm(ptr noundef %i.d, i64 noundef %i.c, ptr noundef %1, i64 noundef %2, i64 noundef %i.f) ; 0 uses
  %i.h = add nuw i64 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_Z29mbedtls_mpi_core_montmul_initPKm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !9      ; 6 uses
  %i.b = shl i64 %i.a, 1
  %i.c = add i64 %i.b, 4
  %i.d = and i64 %i.c, 8
  %i.e = add i64 %i.d, %i.a                       ; 2 uses
  %i.f = mul i64 %i.e, %i.a
  %i.g = sub i64 2, %i.f
  %i.h = mul i64 %i.g, %i.e                       ; 2 uses
  %i.i = mul i64 %i.h, %i.a
  %i.j = sub i64 2, %i.i
  %i.k = mul i64 %i.j, %i.h                       ; 2 uses
  %i.l = mul i64 %i.k, %i.a
  %i.m = sub i64 2, %i.l
  %i.n = mul i64 %i.m, %i.k                       ; 2 uses
  %i.o = mul i64 %i.n, %i.a
  %.neg = add i64 %i.o, -2
  %.neg11 = mul i64 %.neg, %i.n
  ret i64 %.neg11
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #8 {
bb.a:
  %i.a = shl i64 %5, 4
  %i.b = or disjoint i64 %i.a, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, i8 0, i64 %i.b, i1 false)
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %5
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  br label %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i64 %5, 2                            ; 2 uses
  br label %bb.b

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %5
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %xtraiter = and i64 %5, 1
  %i.h = icmp eq i64 %5, 1
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.020.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %.01819.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.01819.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %i.k = icmp ult i64 %i.j, %.020.i
  %i.l = zext i1 %i.k to i64
  %i.m = sub i64 %i.j, %.020.i                    ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01819.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9    ; 2 uses
  %i.p = icmp ult i64 %i.m, %i.o
  %i.q = zext i1 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, %i.l               ; 2 uses
  %i.s = sub i64 %i.m, %i.o
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01819.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !9
  %i.u = or disjoint i64 %.01819.i, 1             ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !9    ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.r
  %i.y = zext i1 %i.x to i64
  %i.z = sub i64 %i.w, %i.r                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.u
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9  ; 2 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  %i.ad = zext i1 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, %i.y             ; 3 uses
  %i.af = sub i64 %i.z, %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !9
  %i.ah = add nuw i64 %.01819.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34

_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.020.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ae, %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01819.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod43 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.01819.i.epil.init
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !9  ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %.020.i.epil.init
  %i.al = zext i1 %i.ak to i64
  %i.am = sub i64 %i.aj, %.020.i.epil.init        ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.01819.i.epil.init
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !9  ; 2 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  %i.aq = zext i1 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.aq, %i.al
  %i.as = sub i64 %i.am, %i.ao
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01819.i.epil.init
  store i64 %i.as, ptr %i.at, align 8, !tbaa !9
  br label %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit

_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit:  ; preds = %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i64 [ %i.ae, %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %i.au = xor i64 %.lcssa, %i.g
  br label %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit

_Z20mbedtls_mpi_core_subPmPKmS1_m.exit:           ; preds = %._crit_edge.thread, %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit
  %.0.lcssa38 = phi ptr [ %7, %._crit_edge.thread ], [ %i.bl, %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit ]
  %.0.lcssa.i = phi i64 [ %i.d, %._crit_edge.thread ], [ %i.au, %_Z20mbedtls_mpi_core_subPmPKmS1_m.exit.loopexit ]
  %i.av = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.aw = xor i64 %.0.lcssa.i, %i.av              ; 2 uses
  %i.ax = sub i64 0, %i.aw
  %i.ay = lshr i64 %i.aw, 1
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = or i64 %i.az, %i.ax
  %.neg.i = ashr i64 %i.ba, 63
  %i.bb = shl i64 %5, 3
  tail call void @_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m(i64 noundef %.neg.i, ptr noundef %0, ptr noundef nonnull %.0.lcssa38, ptr noundef null, i64 noundef %i.bb)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.035 = phi ptr [ %7, %.lr.ph ], [ %i.bl, %bb.b ] ; 4 uses
  %.03234 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %bb.b ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03234
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !9  ; 2 uses
  %i.be = load i64, ptr %.035, align 8, !tbaa !9
  %i.bf = load i64, ptr %2, align 8, !tbaa !9
  %i.bg = mul i64 %i.bf, %i.bd
  %i.bh = add i64 %i.bg, %i.be
  %i.bi = mul i64 %i.bh, %6
  %i.bj = tail call noundef i64 @_Z20mbedtls_mpi_core_mlaPmmPKmmm(ptr noundef nonnull %.035, i64 noundef %i.e, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %i.bd) ; 0 uses
  %i.bk = tail call noundef i64 @_Z20mbedtls_mpi_core_mlaPmmPKmmm(ptr noundef nonnull %.035, i64 noundef %i.e, ptr noundef %4, i64 noundef %5, i64 noundef %i.bi) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 6 uses
  %i.bm = add nuw i64 %.03234, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %5
  br i1 %exitcond.not, label %.lr.ph.i.preheader, label %bb.b, !llvm.loop !40
}

declare void @_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z35mbedtls_mpi_core_get_mont_r2_unsafeP11mbedtls_mpiPKS_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @mbedtls_mpi_lset(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !41
  %i.d = zext i16 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 7
  %i.f = tail call i32 @mbedtls_mpi_shift_l(ptr noundef %0, i64 noundef %i.e) ; 2 uses
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @mbedtls_mpi_mod_mpi(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %1) ; 2 uses
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i16, ptr %i.b, align 2, !tbaa !41
  %i.i = zext i16 %i.h to i64
  %i.j = tail call i32 @mbedtls_mpi_shrink(ptr noundef %0, i64 noundef %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  ret i32 %.0
}

declare i32 @mbedtls_mpi_lset(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @mbedtls_mpi_shift_l(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @mbedtls_mpi_mod_mpi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @mbedtls_mpi_shrink(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = lshr i64 %2, 3
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 4 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %i.e, 3                          ; 2 uses
  %i.h = sub i64 %i.g, %2                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.j = sub nuw i64 %1, %i.e
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.m = tail call noundef i32 %3(ptr noundef %4, ptr noundef %i.l, i64 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %2, 0
  %i.o = getelementptr [8 x i8], ptr %0, i64 %i.e
  %.01214.i = getelementptr i8, ptr %i.o, i64 -8  ; 2 uses
  %.not15.i = icmp ugt ptr %0, %.01214.i
  %or.cond.i = or i1 %i.n, %.not15.i
  br i1 %or.cond.i, label %_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.01217.i = phi ptr [ %.012.i, %.lr.ph.i ], [ %.01214.i, %bb.c ] ; 3 uses
  %.016.i = phi ptr [ %i.t, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  %i.p = load i64, ptr %.016.i, align 8, !tbaa !9
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = load i64, ptr %.01217.i, align 8, !tbaa !9
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  store i64 %i.s, ptr %.016.i, align 8, !tbaa !9
  store i64 %i.q, ptr %.01217.i, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i, i64 8 ; 2 uses
  %.012.i = getelementptr i8, ptr %.01217.i, i64 -8 ; 2 uses
  %.not.i = icmp ugt ptr %i.t, %.012.i
  br i1 %.not.i, label %_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit, label %.lr.ph.i, !llvm.loop !11

_Z34mbedtls_mpi_core_bigendian_to_hostPmm.exit:   ; preds = %.lr.ph.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -4, %bb.a ], [ %i.m, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.b = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.c = trunc i64 %3 to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = and i64 %3, 2147483647
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = trunc nuw i64 %i.h to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread, !llvm.loop !7

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.i51 = phi i64 [ %i.e, %.lr.ph ], [ %i.h, %bb.b ]
  %i.h = add nsw i64 %indvars.iv.i51, -1          ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.b, label %_Z23mbedtls_mpi_core_bitlenPKmm.exit, !llvm.loop !7

_Z23mbedtls_mpi_core_bitlenPKmm.exit:             ; preds = %bb.c
  %i.k = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = shl i64 %i.h, 6
  %reass.sub.i = add i64 %i.l, 64
  %i.m = sub i64 %reass.sub.i, %i.k               ; 3 uses
  %i.n = add nuw nsw i64 %i.m, 7                  ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = icmp ugt i64 %i.m, 32
  %spec.select = select i1 %i.p, i32 30, i32 250
  %i.q = and i64 %i.n, 274877906936
  %i.r = sub nsw i64 %i.q, %i.m
  br label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread

_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread:      ; preds = %bb.b, %bb.a, %_Z23mbedtls_mpi_core_bitlenPKmm.exit
  %i.s = phi i64 [ %i.o, %_Z23mbedtls_mpi_core_bitlenPKmm.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 4 uses
  %i.t = phi i32 [ %spec.select, %_Z23mbedtls_mpi_core_bitlenPKmm.exit ], [ 250, %bb.a ], [ 250, %bb.b ]
  %i.u = phi i64 [ %i.r, %_Z23mbedtls_mpi_core_bitlenPKmm.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  %i.o = shl i64 %.2, 6
  %i.p = icmp ugt i64 %i.o, 79                    ; 2 uses
  %i.q = select i1 %i.p, i64 3, i64 1             ; 4 uses
  %i.r = shl nuw nsw i64 1, %i.q
  %i.s = freeze i64 %i.r                          ; 5 uses
  %i.t = shl i64 %3, %i.q
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.t ; 11 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %3 ; 6 uses
  %i.w = load i64, ptr %2, align 8, !tbaa !9      ; 6 uses
  %i.x = shl i64 %i.w, 1
  %i.y = add i64 %i.x, 4
  %i.z = and i64 %i.y, 8
  %i.aa = add i64 %i.z, %i.w                      ; 2 uses
  %i.ab = mul i64 %i.aa, %i.w
  %i.ac = sub i64 2, %i.ab
  %i.ad = mul i64 %i.ac, %i.aa                    ; 2 uses
  %i.ae = mul i64 %i.ad, %i.w
  %i.af = sub i64 2, %i.ae
  %i.ag = mul i64 %i.af, %i.ad                    ; 2 uses
  %i.ah = mul i64 %i.ag, %i.w
  %i.ai = sub i64 2, %i.ah
  %i.aj = mul i64 %i.ai, %i.ag                    ; 2 uses
  %i.ak = mul i64 %i.aj, %i.w
  %.neg.i = add i64 %i.ak, -2
  %.neg11.i = mul i64 %.neg.i, %i.aj              ; 6 uses
  %i.al = shl i64 %3, 3                           ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %i.al, i1 false)
  store i64 1, ptr %8, align 8, !tbaa !9
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef readonly %7, i64 noundef %3, ptr noundef nonnull readonly %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.v)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %3 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr readonly align 8 %1, i64 %i.al, i1 false)
  br i1 %i.p, label %.lr.ph.i, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit

.lr.ph.i:                                         ; preds = %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit, %.lr.ph.i
  %.032.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.am, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit ] ; 2 uses
  %.03031.i = phi i64 [ %i.ao, %.lr.ph.i ], [ 2, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.032.i, i64 %3 ; 2 uses
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %i.an, ptr noundef %.032.i, ptr noundef nonnull %i.am, i64 noundef %3, ptr noundef nonnull readonly %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.v)
  %i.ao = add nuw nsw i64 %.03031.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.s
  br i1 %exitcond.not.i, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit, label %.lr.ph.i, !llvm.loop !52

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit: ; preds = %.lr.ph.i, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 8 %8, i64 %i.al, i1 false)
  %.not.i.i60 = icmp eq i64 %3, 0
  br i1 %i.a, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit
  %i.ap = add i64 %3, -1                          ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.aq = icmp eq i64 %i.ap, 0
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod97 = trunc i64 %3 to i1
  %xtraiter98 = and i64 %3, 1
  %i.ar = icmp eq i64 %i.ap, 0
  %unroll_iter101 = and i64 %3, -2
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  %lcmp.mod100 = trunc i64 %3 to i1
  %i.as = add i64 %i.s, -1
  %xtraiter103 = and i64 %i.s, 3                  ; 3 uses
  %i.at = icmp ult i64 %i.as, 3
  %unroll_iter106 = and i64 %i.s, -4
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  %lcmp.mod105 = icmp ne i64 %xtraiter103, 0
  br label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit, %bb.f
  %.067.us = phi i64 [ %.168.us, %bb.f ], [ %.2, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit ]
  %.066.us = phi i64 [ %storemerge.us, %bb.f ], [ %storemerge.i, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit ] ; 2 uses
  %.053.us = phi i64 [ %.154.us, %bb.f ], [ 0, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit ]
  %.0.us = phi i64 [ %.1.us, %bb.f ], [ 0, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit ]
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef %0, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.v)
  %i.au = icmp eq i64 %.066.us, 0                 ; 2 uses
  %i.av = add i64 %.066.us, -1
  %i.aw = sext i1 %i.au to i64
  %.168.us = add i64 %.067.us, %i.aw              ; 3 uses
  %storemerge.us = select i1 %i.au, i64 63, i64 %i.av ; 3 uses
  %i.ax = add i64 %.053.us, 1                     ; 2 uses
  %i.ay = shl i64 %.0.us, 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.168.us
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9
  %i.bb = lshr i64 %i.ba, %storemerge.us
  %i.bc = and i64 %i.bb, 1
  %i.bd = or disjoint i64 %i.bc, %i.ay            ; 2 uses
  %i.be = icmp eq i64 %i.ax, %i.q
  %i.bf = or i64 %.168.us, %storemerge.us
  %or.cond.us = icmp eq i64 %i.bf, 0              ; 2 uses
  %or.cond59.us = or i1 %i.be, %or.cond.us
  br i1 %or.cond59.us, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us, label %bb.f

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us
  %i.bg = mul i64 %i.bd, %3
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.bh, i64 %i.al, i1 false)
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.u, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.v)
  br label %bb.f

bb.f:                                             ; preds = %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us
  %.154.us = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us ], [ %i.ax, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us ]
  %.1.us = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us ], [ %i.bd, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us ]
  br i1 %or.cond.us, label %.split.us, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us, !llvm.loop !53

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader, %bb.h
  %.067 = phi i64 [ %.168, %bb.h ], [ %.2, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ]
  %.066 = phi i64 [ %storemerge, %bb.h ], [ %storemerge.i, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ] ; 2 uses
  %.053 = phi i64 [ %.154, %bb.h ], [ 0, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ]
  %.0 = phi i64 [ %.1, %bb.h ], [ 0, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ]
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef %0, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.v)
  %i.bi = icmp eq i64 %.066, 0                    ; 2 uses
  %i.bj = add i64 %.066, -1
  %i.bk = sext i1 %i.bi to i64
  %.168 = add i64 %.067, %i.bk                    ; 3 uses
  %storemerge = select i1 %i.bi, i64 63, i64 %i.bj ; 3 uses
  %i.bl = add i64 %.053, 1                        ; 2 uses
  %i.bm = shl i64 %.0, 1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.168
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9
  %i.bp = lshr i64 %i.bo, %storemerge
  %i.bq = and i64 %i.bp, 1
  %i.br = or disjoint i64 %i.bq, %i.bm            ; 2 uses
  %i.bs = icmp eq i64 %i.bl, %i.q
  %i.bt = or i64 %.168, %storemerge
  %or.cond = icmp eq i64 %i.bt, 0                 ; 2 uses
  %or.cond59 = or i1 %i.bs, %or.cond
  br i1 %or.cond59, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split
  br i1 %.not.i.i60, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader, label %.split.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader: ; preds = %bb.g
  br i1 %i.at, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i
  %niter107 = phi i64 [ %niter107.next.3, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i ], [ 0, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader ]
  %i.bu = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bw = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bx = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.by = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bz = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.ca = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.cb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.cc = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.cd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.ce = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.cf = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %niter107.next.3 = add i64 %niter107, 4         ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i, !llvm.loop !54

.split.i.i:                                       ; preds = %bb.g, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i
  %.012.i.i = phi ptr [ %i.ed, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i ], [ %8, %bb.g ] ; 5 uses
  %.01011.i.i = phi i64 [ %i.ec, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.cg = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ch = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ci = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.not16.i.i = icmp eq ptr %i.u, %.012.i.i
  br i1 %.not16.i.i, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, label %.lr.ph.i.preheader.i.i

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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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
  %niter102.next.1 = add nuw i64 %niter102, 2     ; 2 uses
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
define hidden void @_Z31mbedtls_mpi_core_exp_mod_unsafePmPKmS1_mS1_mS1_S_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #8 {
bb.a:
  tail call fastcc void @_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef 707406378, ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_Z24mbedtls_mpi_core_sub_intPmPKmmm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i64 -1, 1) i64 @_Z30mbedtls_mpi_core_check_zero_ctPKmm(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #6 {
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !58
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z28mbedtls_mpi_core_to_mont_repPmPKmS1_mmS1_S_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #8 {
bb.a:
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %1, ptr noundef %5, i64 noundef %3, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z30mbedtls_mpi_core_from_mont_repPmPKmS1_mmS_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #8 {
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
end_hunk_2
