Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/bignum_core?download=true
inline.NumInlined: 59
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_:bb.a
  %reverse56 = or <2 x i64> %i.bt, %i.bu
  store <2 x i64> %reverse55, ptr %i.bn, align 8, !tbaa !9
  store <2 x i64> %reverse56, ptr %i.bo, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %i.bq, i64 1
  br i1 %cmp.n, label %_Z24mbedtls_mpi_core_shift_rPmmm.exit, label %.lr.ph52.i.preheader69

.lr.ph52.i.preheader69:                           ; preds = %.lr.ph52.i.preheader, %middle.block
  %.051.i.ph = phi i64 [ 0, %.lr.ph52.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.250.i.ph = phi i64 [ %3, %.lr.ph52.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader69, %.lr.ph52.i
  %.051.i = phi i64 [ %i.bz, %.lr.ph52.i ], [ %.051.i.ph, %.lr.ph52.i.preheader69 ]
  %.250.i = phi i64 [ %i.cc, %.lr.ph52.i ], [ %.250.i.ph, %.lr.ph52.i.preheader69 ] ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %0, i64 %.250.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8     ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !9  ; 2 uses
  %i.bz = shl i64 %i.by, %i.an
  %i.ca = lshr i64 %i.by, %i.ah
  %i.cb = or i64 %i.ca, %.051.i
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !9
  %i.cc = add i64 %.250.i, -1                     ; 2 uses
  %.not42.i = icmp eq i64 %i.cc, 0
  br i1 %.not42.i, label %_Z24mbedtls_mpi_core_shift_rPmmm.exit, label %.lr.ph52.i, !llvm.loop !50

_Z24mbedtls_mpi_core_shift_rPmmm.exit:            ; preds = %.lr.ph52.i, %middle.block, %bb.e, %.loopexit44.i
  %i.cd = add nsw i32 %.0, -1                     ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_.exit.split, label %bb.g

bb.g:                                             ; preds = %_Z24mbedtls_mpi_core_shift_rPmmm.exit
  %i.cf = load i64, ptr %0, align 8, !tbaa !9
  %i.cg = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ch = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ci = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 2 uses
  %i.cj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ck = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 2 uses
  %i.cl = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 3 uses
  br i1 %i.ap, label %.lr.ph.i27.preheader, label %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit

.lr.ph.i27.preheader:                             ; preds = %bb.g
  br i1 %i.av, label %.lr.ph.i27.epil.preheader, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27
  %.011.i = phi i64 [ %i.df, %.lr.ph.i27 ], [ 1, %.lr.ph.i27.preheader ] ; 3 uses
  %.0910.i = phi i64 [ %i.de, %.lr.ph.i27 ], [ %i.cl, %.lr.ph.i27.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i27 ], [ 0, %.lr.ph.i27.preheader ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.011.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !9
  %i.co = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.cp = xor i64 %i.co, %i.cn                    ; 2 uses
  %i.cq = sub i64 0, %i.cp
  %i.cr = lshr i64 %i.cp, 1
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = or i64 %i.cs, %i.cq
  %.neg.i.i = ashr i64 %i.ct, 63
  %i.cu = or i64 %.neg.i.i, %.0910.i
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.011.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !9
  %i.cy = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.cz = xor i64 %i.cy, %i.cx                    ; 2 uses
  %i.da = sub i64 0, %i.cz
  %i.db = lshr i64 %i.cz, 1
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = or i64 %i.dc, %i.da
  %.neg.i.i.1 = ashr i64 %i.dd, 63
  %i.de = or i64 %.neg.i.i.1, %i.cu               ; 3 uses
  %i.df = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit.loopexit.unr-lcssa, label %.lr.ph.i27, !llvm.loop !12

_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i27
  br i1 %lcmp.mod.not, label %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit, label %.lr.ph.i27.epil.preheader

.lr.ph.i27.epil.preheader:                        ; preds = %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit.loopexit.unr-lcssa, %.lr.ph.i27.preheader
  %.011.i.epil.init = phi i64 [ 1, %.lr.ph.i27.preheader ], [ %i.df, %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit.loopexit.unr-lcssa ]
  %.0910.i.epil.init = phi i64 [ %i.cl, %.lr.ph.i27.preheader ], [ %i.de, %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.011.i.epil.init
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !9
  %i.di = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.dj = xor i64 %i.di, %i.dh                    ; 2 uses
  %i.dk = sub i64 0, %i.dj
  %i.dl = lshr i64 %i.dj, 1
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = or i64 %i.dm, %i.dk
  %.neg.i.i.epil = ashr i64 %i.dn, 63
  %i.do = or i64 %.neg.i.i.epil, %.0910.i.epil.init
  br label %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit

_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit:       ; preds = %.lr.ph.i27.epil.preheader, %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit.loopexit.unr-lcssa, %bb.g
  %.09.lcssa.i = phi i64 [ %i.cl, %bb.g ], [ %i.de, %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit.loopexit.unr-lcssa ], [ %i.do, %.lr.ph.i27.epil.preheader ]
  %i.dp = xor i64 %i.cg, %i.cf                    ; 2 uses
  %i.dq = xor i64 %i.ch, %1                       ; 3 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = xor i64 %i.dq, %i.dp
  %i.dt = lshr i64 %i.ds, 63
  %i.du = xor i64 %i.dt, %i.ci
  %i.dv = sub i64 0, %i.du
  %i.dw = lshr i64 %i.ci, 1
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = or i64 %i.dv, %i.dx
  %.neg.i.i.i.i = ashr i64 %i.dy, 63              ; 2 uses
  %i.dz = xor i64 %i.cj, %.neg.i.i.i.i
  %i.ea = xor i64 %i.dz, -1
  %i.eb = and i64 %i.dr, %i.ea
  %i.ec = and i64 %.neg.i.i.i.i, %i.dq
  %i.ed = or i64 %i.eb, %i.ec
  %i.ee = lshr i64 %i.ed, 63
  %i.ef = xor i64 %i.ee, %i.ck
  %i.eg = sub i64 0, %i.ef
  %i.eh = lshr i64 %i.ck, 1
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = or i64 %i.eg, %i.ei
  %isnotneg.i.i = icmp sgt i64 %i.ej, -1
  %i.ek = select i1 %isnotneg.i.i, i64 -1, i64 %.09.lcssa.i
  %i.el = tail call noundef i64 @_Z22mbedtls_mpi_core_lt_ctPKmS0_m(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3)
  %i.em = and i64 %i.el, %i.ek
  %i.en = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.eo = icmp eq i64 %i.em, %i.en
  br i1 %i.eo, label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread.split, label %_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_.exit.split, !llvm.loop !51

_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_.exit.split: ; preds = %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit, %_Z24mbedtls_mpi_core_shift_rPmmm.exit, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread.split, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread
  %.022.split = phi i32 [ -4, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread ], [ -14, %_Z24mbedtls_mpi_core_shift_rPmmm.exit ], [ 0, %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit ], [ %i.aw, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread.split ]
  ret i32 %.022.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_Z38mbedtls_mpi_core_exp_mod_working_limbsmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %1, 6
  %i.b = icmp ugt i64 %i.a, 79
  %i.c = select i1 %i.b, i64 3, i64 1
  %i.d = shl i64 %0, %i.c
  %i.e = shl i64 %0, 1
  %i.f = add i64 %0, 1
  %i.g = add i64 %i.f, %i.e
  %i.h = add i64 %i.g, %i.d
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24mbedtls_mpi_core_exp_modPmPKmS1_mS1_mS1_S_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #8 {
bb.a:
  tail call fastcc void @_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef 0, ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i32 noundef range(i32 0, 707406379) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %6, 707406378                ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %5 to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i

.lr.ph:                                           ; preds = %bb.b
  %i.d = and i64 %5, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.e = trunc nuw i64 %i.g to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i, !llvm.loop !7

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.i.i90 = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %bb.c ]
  %i.g = add nsw i64 %indvars.iv.i.i90, -1        ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9    ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.g, 6
  %reass.sub.i.i = add nuw nsw i64 %i.k, 64
  %i.l = sub nuw nsw i64 %reass.sub.i.i, %i.j
  br label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i

_Z23mbedtls_mpi_core_bitlenPKmm.exit.i:           ; preds = %bb.c, %bb.b, %bb.e
  %.09.i.i = phi i64 [ %i.l, %bb.e ], [ 1, %bb.b ], [ 1, %bb.c ] ; 2 uses
  %i.m = lshr i64 %.09.i.i, 6
  %i.n = and i64 %.09.i.i, 63
  br label %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit

_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit: ; preds = %bb.a, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i
  %.2 = phi i64 [ %i.m, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i ], [ %5, %bb.a ] ; 3 uses
  %storemerge.i = phi i64 [ %i.n, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = shl i64 %.2, 6
  %9 = icmp ugt i64 %i.o, 79                      ; 2 uses
  %i.p = select i1 %9, i64 3, i64 1               ; 4 uses
  %i.q = shl nuw nsw i64 1, %i.p
  %10 = freeze i64 %i.q                           ; 5 uses
  %i.r = shl i64 %3, %i.p
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.r ; 11 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %3 ; 6 uses
  %i.u = load i64, ptr %2, align 8, !tbaa !9      ; 6 uses
  %i.v = shl i64 %i.u, 1
  %i.w = add i64 %i.v, 4
  %i.x = and i64 %i.w, 8
  %i.y = add i64 %i.x, %i.u                       ; 2 uses
  %i.z = mul i64 %i.y, %i.u
  %i.aa = sub i64 2, %i.z
  %i.ab = mul i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = mul i64 %i.ab, %i.u
  %i.ad = sub i64 2, %i.ac
  %i.ae = mul i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = mul i64 %i.ae, %i.u
  %i.ag = sub i64 2, %i.af
  %i.ah = mul i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = mul i64 %i.ah, %i.u
  %.neg.i = add i64 %i.ai, -2
  %.neg11.i = mul i64 %.neg.i, %i.ah              ; 6 uses
  %i.aj = shl i64 %3, 3                           ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %i.aj, i1 false)
  store i64 1, ptr %8, align 8, !tbaa !9
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef readonly %7, i64 noundef %3, ptr noundef nonnull readonly %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.t)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %3 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr readonly align 8 %1, i64 %i.aj, i1 false)
  br i1 %9, label %.lr.ph.i, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit

.lr.ph.i:                                         ; preds = %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit, %.lr.ph.i
  %.032.i = phi i64 [ %i.am, %.lr.ph.i ], [ 2, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit ]
  %.03031.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.ak, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.03031.i, i64 %3 ; 2 uses
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %i.al, ptr noundef %.03031.i, ptr noundef nonnull %i.ak, i64 noundef %3, ptr noundef nonnull readonly %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.t)
  %i.am = add nuw nsw i64 %.032.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %10
  br i1 %exitcond.not.i, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit, label %.lr.ph.i, !llvm.loop !52

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit: ; preds = %.lr.ph.i, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 8 %8, i64 %i.aj, i1 false)
  %.not.i.i60 = icmp eq i64 %3, 0
  br i1 %i.a, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit
  %i.an = add i64 %3, -1                          ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.ao = icmp eq i64 %i.an, 0
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod97 = trunc i64 %3 to i1
  %xtraiter98 = and i64 %3, 1
  %i.ap = icmp eq i64 %i.an, 0
  %unroll_iter101 = and i64 %3, -2
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  %lcmp.mod100 = trunc i64 %3 to i1
  %11 = add i64 %10, -1
  %xtraiter103 = and i64 %10, 3                   ; 3 uses
  %12 = icmp ult i64 %11, 3
  %unroll_iter106 = and i64 %10, -4
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  %lcmp.mod105 = icmp ne i64 %xtraiter103, 0
  br label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit, %bb.f
  %.067.us = phi i64 [ %.168.us, %bb.f ], [ %.2, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit ]
  %.066.us = phi i64 [ %storemerge.us, %bb.f ], [ %storemerge.i, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit ] ; 2 uses
  %.053.us = phi i64 [ %.154.us, %bb.f ], [ 0, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit ]
  %.0.us = phi i64 [ %.1.us, %bb.f ], [ 0, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit ]
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef %0, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.t)
  %i.aq = icmp eq i64 %.066.us, 0                 ; 2 uses
  %i.ar = add i64 %.066.us, -1
  %i.as = sext i1 %i.aq to i64
  %.168.us = add i64 %.067.us, %i.as              ; 3 uses
  %storemerge.us = select i1 %i.aq, i64 63, i64 %i.ar ; 3 uses
  %i.at = add i64 %.053.us, 1                     ; 2 uses
  %i.au = shl i64 %.0.us, 1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.168.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9
  %i.ax = lshr i64 %i.aw, %storemerge.us
  %i.ay = and i64 %i.ax, 1
  %i.az = or disjoint i64 %i.ay, %i.au            ; 2 uses
  %i.ba = icmp eq i64 %i.at, %i.p
  %i.bb = or i64 %.168.us, %storemerge.us
  %or.cond.us = icmp eq i64 %i.bb, 0              ; 2 uses
  %or.cond59.us = or i1 %i.ba, %or.cond.us
  br i1 %or.cond59.us, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us, label %bb.f

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us
  %i.bc = mul i64 %i.az, %3
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.bd, i64 %i.aj, i1 false)
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.s, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.t)
  br label %bb.f

bb.f:                                             ; preds = %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us
  %.154.us = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us ], [ %i.at, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us ]
  %.1.us = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us ], [ %i.az, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us ]
  br i1 %or.cond.us, label %.split.us, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us, !llvm.loop !53

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader, %bb.h
  %.067 = phi i64 [ %.168, %bb.h ], [ %.2, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ]
  %.066 = phi i64 [ %storemerge, %bb.h ], [ %storemerge.i, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ] ; 2 uses
  %.053 = phi i64 [ %.154, %bb.h ], [ 0, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ]
  %.0 = phi i64 [ %.1, %bb.h ], [ 0, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ]
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef %0, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.t)
  %i.be = icmp eq i64 %.066, 0                    ; 2 uses
  %i.bf = add i64 %.066, -1
  %i.bg = sext i1 %i.be to i64
  %.168 = add i64 %.067, %i.bg                    ; 3 uses
  %storemerge = select i1 %i.be, i64 63, i64 %i.bf ; 3 uses
  %i.bh = add i64 %.053, 1                        ; 2 uses
  %i.bi = shl i64 %.0, 1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.168
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9
  %i.bl = lshr i64 %i.bk, %storemerge
  %i.bm = and i64 %i.bl, 1
  %i.bn = or disjoint i64 %i.bm, %i.bi            ; 2 uses
  %i.bo = icmp eq i64 %i.bh, %i.p
  %i.bp = or i64 %.168, %storemerge
  %or.cond = icmp eq i64 %i.bp, 0                 ; 2 uses
  %or.cond59 = or i1 %i.bo, %or.cond
  br i1 %or.cond59, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split
  br i1 %.not.i.i60, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader, label %.split.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader: ; preds = %bb.g
  br i1 %12, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i
  %niter107 = phi i64 [ %niter107.next.3, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i ], [ 0, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader ]
  %i.bq = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.br = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bs = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bt = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bu = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bw = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bx = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.by = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.bz = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.ca = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.cb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %niter107.next.3 = add i64 %niter107, 4         ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i, !llvm.loop !54

.split.i.i:                                       ; preds = %bb.g, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i
  %.012.i.i = phi ptr [ %i.dz, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i ], [ %8, %bb.g ] ; 5 uses
  %.01011.i.i = phi i64 [ %i.dy, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.cc = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.cd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.ce = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.not16.i.i = icmp eq ptr %i.s, %.012.i.i
  br i1 %.not16.i.i, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.split.i.i
  %i.cf = xor i64 %i.cc, %i.cd
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = xor i64 %i.cg, %i.bn
  %i.ci = xor i64 %i.ch, %.01011.i.i              ; 2 uses
  %i.cj = lshr i64 %i.ci, 1
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = sub i64 0, %i.ci
  %i.cm = or i64 %i.ck, %i.cl
  %.fr.i.i = freeze i64 %i.cm
  %isnotneg.i.i.i = icmp slt i64 %.fr.i.i, 0
  br i1 %isnotneg.i.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.us.i.i.preheader

.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph.i.preheader.i.i
  br i1 %i.ao, label %.lr.ph.i.us.i.i.epil.preheader, label %.lr.ph.i.us.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.preheader.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.preheader, %.lr.ph.i.us.i.i
  %.013.i.us.i.i = phi i64 [ %i.dc, %.lr.ph.i.us.i.i ], [ 0, %.lr.ph.i.us.i.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us.i.i ], [ 0, %.lr.ph.i.us.i.i.preheader ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %.013.i.us.i.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !9
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.013.i.us.i.i ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !9
  %i.cr = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.cs = and i64 %i.cr, %i.cq
  %i.ct = or i64 %i.cs, %i.co
  store i64 %i.ct, ptr %i.cp, align 8, !tbaa !9
  %i.cu = or disjoint i64 %.013.i.us.i.i, 1       ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cu ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !9
  %i.cz = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.da = and i64 %i.cz, %i.cy
  %i.db = or i64 %i.da, %i.cw
  store i64 %i.db, ptr %i.cx, align 8, !tbaa !9
  %i.dc = add nuw i64 %.013.i.us.i.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa, label %.lr.ph.i.us.i.i, !llvm.loop !14

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %niter102 = phi i64 [ %niter102.next.1, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.013.i.i.i ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !9
  %i.df = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.i.i.i = xor i64 %i.df, -1
  %i.dg = and i64 %i.de, %.reass.i.i.i
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.013.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !9
  %i.dk = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.i.i.i.1 = xor i64 %i.dk, -1
  %i.dl = and i64 %i.dj, %.reass.i.i.i.1
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !9
  %i.dm = add nuw i64 %.013.i.i.i, 2              ; 2 uses
  %niter102.next.1 = add nuw i64 %niter102, 2     ; 2 uses
  %niter102.ncmp.1 = icmp eq i64 %niter102.next.1, %unroll_iter101
  br i1 %niter102.ncmp.1, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !14

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  br i1 %lcmp.mod99.not, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.013.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.dm, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.013.i.i.i.epil.init ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !9
  %i.dp = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %.reass.i.i.i.epil = xor i64 %i.dp, -1
  %i.dq = and i64 %i.do, %.reass.i.i.i.epil
  store i64 %i.dq, ptr %i.dn, align 8, !tbaa !9
  br label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa: ; preds = %.lr.ph.i.us.i.i
  br i1 %lcmp.mod.not, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, label %.lr.ph.i.us.i.i.epil.preheader

.lr.ph.i.us.i.i.epil.preheader:                   ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa, %.lr.ph.i.us.i.i.preheader
  %.013.i.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.us.i.i.preheader ], [ %i.dc, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %.013.i.us.i.i.epil.init
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !9
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.013.i.us.i.i.epil.init ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !9
  %i.dv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.dw = and i64 %i.dv, %i.du
  %i.dx = or i64 %i.dw, %i.ds
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !9
  br label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i: ; preds = %.lr.ph.i.us.i.i.epil.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa, %.lr.ph.i.i.i.epil.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa, %.split.i.i
  %i.dy = add nuw nsw i64 %.01011.i.i, 1          ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %3
  %exitcond.not.i.i = icmp eq i64 %i.dy, %10
  br i1 %exitcond.not.i.i, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %.split.i.i, !llvm.loop !54

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i
  br i1 %lcmp.mod104.not, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader: ; preds = %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader
  %epil.iter = phi i64 [ 0, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader ], [ %epil.iter.next, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil ]
  %13 = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %14 = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %15 = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
  br i1 %epil.iter.cmp.not, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil, !llvm.loop !55

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.s, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.t)
  br label %bb.h

bb.h:                                             ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit
  %.154 = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit ], [ %i.bh, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split ]
  %.1 = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit ], [ %i.bn, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split ]
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
end_hunk_0
