Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Linter?download=true
inline.NumInlined: 2493
inline.NumDeleted: 1089
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv:bb.a
  %i.k = icmp ult i64 %spec.select, 4
  br i1 %i.k, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.07.i.i = phi i64 [ 0, %.new ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 56, i1 false)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %i.j, ptr %i.o, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i8 0, i64 56, i1 false)
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store i64 %i.j, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i8 0, i64 56, i1 false)
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  store i64 %i.j, ptr %i.u, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.w = add nuw i64 %.07.i.i, 4                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !579

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa, %bb.b
  %.07.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.w, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.z, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.07.i.i.epil ; 2 uses
  store i64 %i.j, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = add nuw i64 %.07.i.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !580

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !139
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit, %bb.a
  %i.aa = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %._crit_edge24.thread, label %.lr.ph23

.lr.ph23:                                         ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit
  %i.ab = add i64 %spec.select, -1                ; 3 uses
  br label %bb.e

._crit_edge24:                                    ; preds = %bb.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !582   ; 4 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !582
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !32
  %.not.i14 = icmp eq ptr %i.ac, null
  br i1 %.not.i14, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit, label %bb.c

._crit_edge24.thread:                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !582   ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !582
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !32
  %.not.i1445 = icmp eq ptr %i.ad, null
  br i1 %.not.i1445, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i

bb.c:                                             ; preds = %._crit_edge24
  %.not.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN4Luau15LintGlobalLocal6GlobalD2Ev.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.am, %_ZN4Luau15LintGlobalLocal6GlobalD2Ev.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.04.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4Luau15LintGlobalLocal6GlobalD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !141
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #29
  br label %_ZN4Luau15LintGlobalLocal6GlobalD2Ev.exit.i.i.i

_ZN4Luau15LintGlobalLocal6GlobalD2Ev.exit.i.i.i:  ; preds = %bb.d, %.lr.ph.i.i.i
  %i.am = add nuw i64 %.04.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.bz
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i: ; preds = %_ZN4Luau15LintGlobalLocal6GlobalD2Ev.exit.i.i.i, %._crit_edge24.thread, %bb.c
  %i.an = phi ptr [ %i.ad, %._crit_edge24.thread ], [ %i.ac, %bb.c ], [ %i.ac, %_ZN4Luau15LintGlobalLocal6GlobalD2Ev.exit.i.i.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #25
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit: ; preds = %._crit_edge24.thread, %._crit_edge24, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit.i
  ret void

bb.e:                                             ; preds = %.lr.ph23, %bb.h
  %i.ao = phi i64 [ %i.aa, %.lr.ph23 ], [ %i.bz, %bb.h ]
  %.01122 = phi i64 [ 0, %.lr.ph23 ], [ %i.ca, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !138
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %.01122 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = ptrtoint ptr %i.ar to i64               ; 4 uses
  br i1 %i.at, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = lshr i64 %i.au, 4
  %i.aw = lshr i64 %i.au, 9
  %i.ax = xor i64 %i.av, %i.aw
  %.02131.i19 = and i64 %i.ax, %i.ab              ; 2 uses
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0, i64 %.02131.i19 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !73 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.g
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.bb = icmp eq ptr %i.az, %i.ar
  br i1 %i.bb, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph59

._crit_edge:                                      ; preds = %.lr.ph59, %bb.f
  %.lcssa = phi ptr [ %i.ay, %bb.f ], [ %i.bf, %.lr.ph59 ] ; 2 uses
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !56
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph59
  %i.bc = icmp eq ptr %i.bg, %i.ar
  br i1 %i.bc, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2058 = phi i64 [ %i.bd, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2157 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i19, %.lr.ph.preheader ]
  %i.bd = add i64 %.02030.i2058, 1                ; 3 uses
  %i.be = add i64 %i.bd, %.02131.i2157
  %.not.i15 = icmp ule i64 %i.bd, %i.ab
  tail call void @llvm.assume(i1 %.not.i15)
  %.02131.i = and i64 %i.be, %i.ab                ; 2 uses
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !73 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.g
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.bi = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ay, %.lr.ph.preheader ], [ %i.bf, %.lr.ph ] ; 6 uses
  store i64 %i.au, ptr %i.bi, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !140 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !583
  store <2 x ptr> %i.br, ptr %i.bk, align 8, !tbaa !583
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bt = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !584
  store <2 x ptr> %i.bt, ptr %i.bo, align 8, !tbaa !584
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.bn, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZNSt4pairIN4Luau7AstNameENS0_15LintGlobalLocal6GlobalEEaSEOS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bn to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bw) #29
  br label %_ZNSt4pairIN4Luau7AstNameENS0_15LintGlobalLocal6GlobalEEaSEOS4_.exit

_ZNSt4pairIN4Luau7AstNameENS0_15LintGlobalLocal6GlobalEEaSEOS4_.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_15LintGlobalLocal6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %.pre33 = load i64, ptr %i.a, align 8, !tbaa !139
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt4pairIN4Luau7AstNameENS0_15LintGlobalLocal6GlobalEEaSEOS4_.exit, %bb.e
  %i.bz = phi i64 [ %.pre33, %_ZNSt4pairIN4Luau7AstNameENS0_15LintGlobalLocal6GlobalEEaSEOS4_.exit ], [ %i.ao, %bb.e ] ; 4 uses
  %i.ca = add nuw i64 %.01122, 1                  ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  br i1 %i.cb, label %bb.e, label %._crit_edge24, !llvm.loop !581
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau22LintMultiLineStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau22LintMultiLineStatementE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau22LintMultiLineStatementD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau22LintMultiLineStatementE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau22LintMultiLineStatementD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29, !inline_history !151
  br label %_ZN4Luau22LintMultiLineStatementD2Ev.exit

_ZN4Luau22LintMultiLineStatementD2Ev.exit:        ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau22LintMultiLineStatement5visitEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.Luau::Location", align 4   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !585  ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !587, !range !93, !noundef !94
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !317
  %i.g = load i32, ptr %2, align 4, !tbaa !320    ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !588
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.h, align 4, !tbaa !588
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !589
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !590
  %.not = icmp ugt i32 %i.l, %i.n
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !148
  call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.p, i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull @.str.73)
  store i8 1, ptr %i.c, align 4, !tbaa !587
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau22LintMultiLineStatement5visitEPNS_12AstExprTableE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau22LintMultiLineStatement5visitEPNS_12AstStatBlockE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0 = alloca %"struct.Luau::Location", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !324
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !596
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE9push_backERKS2_.exit, %bb.a
  ret i1 false

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE9push_backERKS2_.exit
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.am, %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.an, %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.013
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !326  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !317
  %i.l = load i32, ptr %i.k, align 4, !tbaa !274  ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !150
  %.not.i = icmp eq ptr %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %i.l, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !30
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !327
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !596
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.e, align 8, !tbaa !596
  br label %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !149  ; 5 uses
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #27
  unreachable

_ZNKSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.u = sdiv exact i64 %i.s, 24                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 384307168202282325)
  %i.y = select i1 %i.w, i64 384307168202282325, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = mul nuw nsw i64 %i.y, 24
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !597
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.l, ptr %.sroa.5.0..sroa_idx8, align 4, !tbaa !30
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx10, align 4, !tbaa !327
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !597, !alias.scope !598
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !594

_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !150
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !149
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !596
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !150
  br label %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4Luau22LintMultiLineStatement9StatementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef nonnull %0)
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !596
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -24 ; 2 uses
  store ptr %i.am, ptr %i.e, align 8, !tbaa !596
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.an = add nuw i64 %.013, 1                    ; 2 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !324
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !595
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau22LintMultiLineStatement5visitEPNS_13AstStatRepeatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(49) %i.b, ptr noundef nonnull %0)
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau21LintSameLineStatementD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau21LintSameLineStatement5visitEPNS_12AstStatBlockE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !324  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.g = phi i64 [ %i.b, %.lr.ph ], [ %i.af, %bb.h ] ; 4 uses
  %.019 = phi i64 [ 1, %.lr.ph ], [ %i.ag, %bb.h ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !325
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %.019 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !326  ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !326  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !320  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !328
  %.not = icmp eq i32 %i.n, %i.p
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.e, align 8, !tbaa !154
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !308
  %i.u = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatLocalEE5valueE, align 4, !tbaa !30
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !308
  %i.y = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatBlockEE5valueE, align 4, !tbaa !30
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !600, !range !93, !noundef !94
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !153
  tail call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.ad, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull @.str.74)
  %i.ae = load i32, ptr %i.m, align 4, !tbaa !320
  store i32 %i.ae, ptr %i.e, align 8, !tbaa !154
  %.pre = load i64, ptr %i.a, align 8, !tbaa !324
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.g
  %i.af = phi i64 [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.b ], [ %.pre, %bb.g ] ; 2 uses
  %i.ag = add nuw i64 %.019, 1                    ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !599
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashMapINS_7AstNameENS_16LintLocalHygiene6GlobalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !329  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !330  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !73     ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = lshr i64 %i.m, 9
  %i.p = xor i64 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !170
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !10

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !330
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = lshr i64 %i.aa, 9
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = load ptr, ptr %0, align 8, !tbaa !170   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_16LintLocalHygiene6GlobalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt4swapIN4Luau11LintWarningEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !215
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !97   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !95
  %i.k = load i64, ptr %i.e, align 8, !tbaa !59
  store i64 %i.k, ptr %i.c, align 8, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !97
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !97
  store ptr %i.e, ptr %i.b, align 8, !tbaa !95
  store i64 0, ptr %i.m, align 8, !tbaa !97
  store i8 0, ptr %i.e, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 20, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !97   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZN4Luau11LintWarningaSEOS0_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %bb.c
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.p, align 1, !tbaa !59
  store i8 %i.v, ptr %i.e, align 8, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !97   ; 2 uses
  store i64 %i.w, ptr %i.m, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.w
  store i8 0, ptr %i.x, align 1, !tbaa !59
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !95
  br label %_ZN4Luau11LintWarningaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  store ptr %i.p, ptr %i.b, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !97
  store i64 %i.z, ptr %i.m, align 8, !tbaa !97
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !59
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !59
  store ptr %i.q, ptr %i.o, align 8, !tbaa !95
  br label %_ZN4Luau11LintWarningaSEOS0_.exit

_ZN4Luau11LintWarningaSEOS0_.exit:                ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g
  %i.ab = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.q, %bb.g ], [ %i.p, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !97
  store i8 0, ptr %i.ab, align 1, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 20, i1 false)
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !95  ; 6 uses
  %i.ae = icmp eq ptr %i.ad, %i.q
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !95  ; 5 uses
  %i.ag = icmp eq ptr %i.af, %i.c                 ; 2 uses
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN4Luau11LintWarningaSEOS0_.exit
  br i1 %i.ag, label %bb.h, label %.thread.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5: ; preds = %_ZN4Luau11LintWarningaSEOS0_.exit
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !97  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  switch i64 %i.ah, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !59
  store i8 %i.aj, ptr %i.ad, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9: ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !97  ; 2 uses
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !97
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !59
  %.pre.i.i10 = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %_ZN4Luau11LintWarningaSEOS0_.exit13

.thread.i.i12:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  store ptr %i.af, ptr %i.o, align 8, !tbaa !95
  %i.an = load <2 x i64>, ptr %i.n, align 8, !tbaa !59
  store <2 x i64> %i.an, ptr %i.ac, align 8, !tbaa !59
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !59
  store ptr %i.af, ptr %i.o, align 8, !tbaa !95
  %i.ap = load <2 x i64>, ptr %i.n, align 8, !tbaa !59
  store <2 x i64> %i.ap, ptr %i.ac, align 8, !tbaa !59
  %.not.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !95
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !59
  br label %_ZN4Luau11LintWarningaSEOS0_.exit13

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6, %.thread.i.i12
  store ptr %i.c, ptr %i.a, align 8, !tbaa !95
  br label %_ZN4Luau11LintWarningaSEOS0_.exit13

_ZN4Luau11LintWarningaSEOS0_.exit13:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9, %bb.k, %bb.l
  %i.aq = phi ptr [ %i.ad, %bb.k ], [ %i.c, %bb.l ], [ %.pre.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9 ]
  store i64 0, ptr %i.n, align 8, !tbaa !97
  store i8 0, ptr %i.aq, align 1, !tbaa !59
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZN4Luau11LintWarningD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4Luau11LintWarningaSEOS0_.exit13
  %i.at = load i64, ptr %i.c, align 8, !tbaa !59
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #29
  br label %_ZN4Luau11LintWarningD2Ev.exit

_ZN4Luau11LintWarningD2Ev.exit:                   ; preds = %_ZN4Luau11LintWarningaSEOS0_.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau11LintWarningESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_17WarningComparatorEEEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::LintWarning", align 8 ; 8 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit23, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.024 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not25 = icmp eq ptr %.sroa.0.024, %1
  br i1 %.not25, label %.loopexit23, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not21.i.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.027 = phi ptr [ %.sroa.0.024, %.lr.ph ], [ %.sroa.0.0, %bb.t ] ; 7 uses
  %.pn26 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.027, %bb.t ] ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn26, i64 60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !503  ; 2 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !503  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, %i.o
  br i1 %.not.i.i.i.i, label %bb.c, label %.split20

.split20:                                         ; preds = %bb.b
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pn26, i64 64
  %i.r = load i32, ptr %i.q, align 4, !tbaa !504  ; 2 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !504  ; 2 uses
  %.not12.i.i.i.i = icmp eq i32 %i.r, %i.s
  br i1 %.not12.i.i.i.i, label %bb.d, label %.split21

.split21:                                         ; preds = %bb.c
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %bb.f, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn26, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !503  ; 2 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !503  ; 2 uses
  %.not.i15.i.i.i = icmp eq i32 %i.v, %i.w
  br i1 %.not.i15.i.i.i, label %bb.e, label %.split22

.split22:                                         ; preds = %bb.d
  %i.x = icmp ult i32 %i.v, %i.w
  br i1 %i.x, label %bb.f, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.pn26, i64 72
  %i.z = load i32, ptr %i.y, align 4, !tbaa !504  ; 2 uses
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !504 ; 2 uses
  %.not12.i17.i.i.i = icmp eq i32 %i.z, %i.aa
  br i1 %.not12.i17.i.i.i, label %.split, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4Luau17WarningComparatorEEclINS_17__normal_iteratorIPNS2_11LintWarningESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit

.split:                                           ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.0.027, align 8, !tbaa !316
  %i.ac = load i32, ptr %0, align 8, !tbaa !316
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.s

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4Luau17WarningComparatorEEclINS_17__normal_iteratorIPNS2_11LintWarningESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.e
  %i.ae = icmp ult i32 %i.z, %i.aa
  br i1 %i.ae, label %bb.f, label %bb.s

bb.f:                                             ; preds = %.split22, %.split21, %.split20, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4Luau17WarningComparatorEEclINS_17__normal_iteratorIPNS2_11LintWarningESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.027, i64 20, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.pn26, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !215
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !95 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn26, i64 96 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn26, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !97 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZN4Luau11LintWarningC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !95
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !59
  store i64 %i.an, ptr %i.g, align 8, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn26, i64 88
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !97
  br label %_ZN4Luau11LintWarningC2EOS0_.exit

_ZN4Luau11LintWarningC2EOS0_.exit:                ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %3 = phi i64 [ %i.ak, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.pn26, i64 88
  store i64 %3, ptr %i.h, align 8, !tbaa !97
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !95
  store i64 0, ptr %4, align 8, !tbaa !97
  store i8 0, ptr %i.ah, align 8, !tbaa !59
  %i.ao = ptrtoint ptr %.sroa.0.027 to i64
  %i.ap = sub i64 %i.ao, %i.i                     ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4Luau11LintWarningC2EOS0_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn26, i64 112
  %i.as = udiv exact i64 %i.ap, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bw, %_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.au, %_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.at, %_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.027, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.au, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 20, i1 false)
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !95 ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !95 ; 5 uses
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb                ; 2 uses
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bc, label %bb.h, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bc, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !97 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  switch i64 %i.be, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !59
  store i8 %i.bg, ptr %i.ax, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ba, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !97 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !95
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !59
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !95
  br label %_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !95
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !97
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !97
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !59
  store i64 %i.bo, ptr %i.ay, align 8, !tbaa !59
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.bp = load i64, ptr %i.ay, align 8, !tbaa !59
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !95
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !97
  %i.bs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !97
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !59
  store i64 %i.bt, ptr %i.ay, align 8, !tbaa !59
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !95
  store i64 %i.bp, ptr %i.bb, align 8, !tbaa !59
  br label %_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !95
  br label %_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i

_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i:      ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.bu = phi ptr [ %i.ax, %bb.k ], [ %i.bb, %bb.l ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.bv, align 8, !tbaa !97
  store i8 0, ptr %i.bu, align 1, !tbaa !59
  %i.bw = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bx = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !888

.loopexit:                                        ; preds = %_ZN4Luau11LintWarningaSEOS0_.exit.i.i.i.i.i, %_ZN4Luau11LintWarningC2EOS0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 20, i1 false)
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !95  ; 6 uses
  %i.bz = icmp eq ptr %i.by, %i.k
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !95  ; 6 uses
  %i.cb = icmp eq ptr %i.ca, %i.g                 ; 2 uses
  %.pre28 = load i64, ptr %i.h, align 8, !tbaa !97 ; 5 uses
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %.loopexit
  br i1 %i.cb, label %bb.m, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.loopexit
  br i1 %i.cb, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.cc = icmp ult i64 %.pre28, 16
  call void @llvm.assume(i1 %i.cc)
  br i1 %.not21.i.i, label %_ZN4Luau11LintWarningaSEOS0_.exit, label %bb.n, !prof !65

bb.n:                                             ; preds = %bb.m
  switch i64 %.pre28, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cd = load i8, ptr %i.ca, align 1, !tbaa !59
  store i8 %i.cd, ptr %i.by, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.ca, i64 %.pre28, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.ce = load i64, ptr %i.h, align 8, !tbaa !97  ; 2 uses
  store i64 %i.ce, ptr %i.l, align 8, !tbaa !97
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 0, ptr %i.cg, align 1, !tbaa !59
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !95
  br label %_ZN4Luau11LintWarningaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  store ptr %i.ca, ptr %i.j, align 8, !tbaa !95
  store i64 %.pre28, ptr %i.l, align 8, !tbaa !97
  %i.ch = load i64, ptr %i.g, align 8, !tbaa !59
  store i64 %i.ch, ptr %i.k, align 8, !tbaa !59
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ci = load i64, ptr %i.k, align 8, !tbaa !59
  store ptr %i.ca, ptr %i.j, align 8, !tbaa !95
  store i64 %.pre28, ptr %i.l, align 8, !tbaa !97
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !59
  store i64 %i.cj, ptr %i.k, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.by, ptr %i.f, align 8, !tbaa !95
  store i64 %i.ci, ptr %i.g, align 8, !tbaa !59
  br label %_ZN4Luau11LintWarningaSEOS0_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.g, ptr %i.f, align 8, !tbaa !95
  br label %_ZN4Luau11LintWarningaSEOS0_.exit

_ZN4Luau11LintWarningaSEOS0_.exit:                ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.q, %bb.r
  %i.ck = phi ptr [ %i.by, %bb.q ], [ %i.g, %bb.r ], [ %i.ca, %bb.m ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.h, align 8, !tbaa !97
  store i8 0, ptr %i.ck, align 1, !tbaa !59
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !95  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.g
  br i1 %i.cm, label %_ZN4Luau11LintWarningD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4Luau11LintWarningaSEOS0_.exit
  %i.cn = load i64, ptr %i.g, align 8, !tbaa !59
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #29
  br label %_ZN4Luau11LintWarningD2Ev.exit

_ZN4Luau11LintWarningD2Ev.exit:                   ; preds = %_ZN4Luau11LintWarningaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.t

bb.s:                                             ; preds = %.split22, %.split21, %.split20, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4Luau17WarningComparatorEEclINS_17__normal_iteratorIPNS2_11LintWarningESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau11LintWarningESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_17WarningComparatorEEEEvT_T0_(ptr nonnull %.sroa.0.027)
  br label %bb.t

bb.t:                                             ; preds = %_ZN4Luau11LintWarningD2Ev.exit, %bb.s
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 56 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit23, label %bb.b, !llvm.loop !889

.loopexit23:                                      ; preds = %bb.t, %.preheader, %bb.a
end_hunk_1
