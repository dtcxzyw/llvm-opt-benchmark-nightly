Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/path_builder?download=true
inline.NumInlined: 1874
inline.NumDeleted: 920
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZSt12__move_mergeIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS1_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET0_T_SG_SG_SG_SF_T1_":bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !304
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !306
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !call_target !311, !inline_history !206
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !306
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !call_target !313, !inline_history !206
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !314
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !315
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit, !prof !316

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit

_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit:  ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.01637, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01637, i64 32
  br label %bb.p

bb.i:                                             ; preds = %.lr.ph
  %i.z = load <2 x ptr>, ptr %.038, align 8, !tbaa !300
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.038, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !301 ; 8 uses
  store <2 x ptr> %i.z, ptr %.sroa.0.036, align 8, !tbaa !300
  %.not.i.i.i.i.i19 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i19, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !303
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !304
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !306
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26, !call_target !311, !inline_history !206
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !306
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26, !call_target !313, !inline_history !206
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit23

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !314
  %.not.i.i.i.i.i.i20 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !315
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i22 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i22, 1
  br i1 %i.ap, label %bb.o, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit23, !prof !316

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit23

_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit23: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21, %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.038, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.038, i64 32
  br label %bb.p

bb.p:                                             ; preds = %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit23, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit
  %.117 = phi ptr [ %i.y, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit ], [ %.01637, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit23 ] ; 3 uses
  %.1 = phi ptr [ %.038, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit ], [ %i.as, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit23 ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 32 ; 2 uses
  %i.au = icmp ne ptr %.1, %1
  %i.av = icmp ne ptr %.117, %3
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !9685

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.at, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = ptrtoint ptr %.0.lcssa to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 5                 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.by, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i ], [ %i.ba, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bx, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bw, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !300
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !301 ; 8 uses
  store <2 x ptr> %i.bd, ptr %.0811.i.i.i.i.i, align 8, !tbaa !300
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bf, align 8, !tbaa !303
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !304
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !306
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26, !call_target !311, !inline_history !9686
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !306
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26, !call_target !313, !inline_history !9686
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !314
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !315
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.t ], [ %i.bs, %bb.u ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.v, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i, !prof !316

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i

_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bu, ptr noundef nonnull align 8 dereferenceable(12) %i.bv, i64 12, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.by = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bz = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, !llvm.loop !212

_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.bx, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i ]
  %i.ca = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.cb = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.cc ; 3 uses
  %i.ce = ptrtoint ptr %3 to i64
  %i.cf = ptrtoint ptr %.016.lcssa to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 5                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit34

.lr.ph.i.i.i.i.i25:                               ; preds = %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33
  %.012.i.i.i.i.i26 = phi i64 [ %i.df, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33 ], [ %i.ch, %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.de, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33 ], [ %i.cd, %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ] ; 4 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.dd, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33 ], [ %.016.lcssa, %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 8
  %i.ck = load <2 x ptr>, ptr %.0910.i.i.i.i.i28, align 8, !tbaa !300
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0910.i.i.i.i.i28, i8 0, i64 16, i1 false)
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !301 ; 8 uses
  store <2 x ptr> %i.ck, ptr %.0811.i.i.i.i.i27, align 8, !tbaa !300
  %.not.i.i.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i29, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cm, align 8, !tbaa !303
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !304
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !306
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #26, !call_target !311, !inline_history !9686
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !306
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #26, !call_target !313, !inline_history !9686
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33

bb.y:                                             ; preds = %bb.w
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !314
  %.not.i.i.i.i.i.i.i.i.i.i.i30 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i30, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !315
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31

bb.aa:                                            ; preds = %bb.y
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i.i.i.i.i32 = phi i32 [ %i.cp, %bb.z ], [ %i.cz, %bb.aa ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i32, 1
  br i1 %i.da, label %bb.ab, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33, !prof !316

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #26
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33

_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i31, %bb.x, %.lr.ph.i.i.i.i.i25
  %i.db = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.db, ptr noundef nonnull align 8 dereferenceable(12) %i.dc, i64 12, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 32 ; 2 uses
  %i.df = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.dg = icmp sgt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit34, !llvm.loop !212

_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit34: ; preds = %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33, %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.08.lcssa.i.i.i.i.i24 = phi ptr [ %i.cd, %_ZSt4moveIPN4bssl12_GLOBAL__N_111IssuerEntryEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %i.de, %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i.i.i.i.i33 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i24 to i64
  %i.dh = sub i64 %5, %i.ca
  %i.di = getelementptr inbounds i8, ptr %i.cd, i64 %i.dh
  ret ptr %i.di
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEEvT_SF_SF_T0_SG_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond84 = or i1 %i.a, %i.b
  br i1 %or.cond84, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8190 = phi i64 [ %4, %.lr.ph ], [ %i.an, %tailrecurse ] ; 4 uses
  %.tr8089 = phi i64 [ %3, %.lr.ph ], [ %i.am, %tailrecurse ] ; 4 uses
  %.tr7887 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr85 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr8190, %.tr8089
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef zeroext i1 @"_ZZN4bssl12_GLOBAL__N_115CertIssuersIter20SortRemainingIssuersEvENK3$_0clERKNS0_11IssuerEntryES5_"(ptr noundef nonnull readonly align 8 dereferenceable(28) %.tr7887, ptr noundef nonnull readonly align 8 dereferenceable(28) %.tr85)
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES9_EvT_T0_(ptr nonnull %.tr85, ptr nonnull %.tr7887)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp sgt i64 %.tr8089, %.tr8190
  %i.h = ptrtoint ptr %.tr7887 to i64             ; 4 uses
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit58

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.i = sdiv i64 %.tr8089, 2                     ; 2 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %.tr85, i64 %i.i ; 2 uses
  %i.k = sub i64 %i.c, %i.h
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7887, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.n = lshr i64 %.017.i, 1                      ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.016.i, i64 %i.n ; 2 uses
  %i.p = tail call fastcc noundef zeroext i1 @"_ZZN4bssl12_GLOBAL__N_115CertIssuersIter20SortRemainingIssuersEvENK3$_0clERKNS0_11IssuerEntryES5_"(ptr noundef nonnull readonly align 8 dereferenceable(28) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(28) %i.j) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = xor i64 %i.n, -1
  %i.s = add nsw i64 %.017.i, %i.r
  %.sroa.012.1.i = select i1 %i.p, ptr %i.q, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.p, i64 %i.s, i64 %i.n      ; 2 uses
  %i.t = icmp sgt i64 %.1.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", !llvm.loop !214

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %.tr7887, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.u = sub i64 %.pre-phi, %i.h
  %i.v = ashr exact i64 %i.u, 5
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit58: ; preds = %bb.e
  %i.w = sdiv i64 %.tr8190, 2                     ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %.tr7887, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %.tr85 to i64               ; 3 uses
  %i.z = sub i64 %i.h, %i.y
  %i.aa = ashr exact i64 %i.z, 5                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60
  %.017.i61 = phi i64 [ %.1.i66, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60 ], [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit58 ] ; 2 uses
  %.sroa.012.016.i62 = phi ptr [ %.sroa.012.1.i65, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60 ], [ %.tr85, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit58 ] ; 2 uses
  %i.ac = lshr i64 %.017.i61, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.016.i62, i64 %i.ac ; 2 uses
  %i.ae = tail call fastcc noundef zeroext i1 @"_ZZN4bssl12_GLOBAL__N_115CertIssuersIter20SortRemainingIssuersEvENK3$_0clERKNS0_11IssuerEntryES5_"(ptr noundef nonnull readonly align 8 dereferenceable(28) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(28) %i.ad) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = xor i64 %i.ac, -1
  %i.ah = add nsw i64 %.017.i61, %i.ag
  %.sroa.012.1.i65 = select i1 %i.ae, ptr %.sroa.012.016.i62, ptr %i.af ; 3 uses
  %.1.i66 = select i1 %i.ae, i64 %i.ac, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i66, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", !llvm.loop !215

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i60
  %.pre93 = ptrtoint ptr %.sroa.012.1.i65 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit58
  %.pre-phi94 = phi i64 [ %.pre93, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit58 ]
  %.sroa.012.0.lcssa.i59 = phi ptr [ %.sroa.012.1.i65, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %.tr85, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit58 ]
  %i.aj = sub i64 %.pre-phi94, %i.y
  %i.ak = ashr exact i64 %i.aj, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit"
  %.sroa.068.0 = phi ptr [ %i.j, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %.sroa.012.0.lcssa.i59, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.x, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.v, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.w, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.ak, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %i.al = tail call fastcc ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_(ptr %.sroa.068.0, ptr %.tr7887, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15CertIssuersIter20SortRemainingIssuersEvE3$_0EEEvT_SF_SF_T0_SG_T1_"(ptr %.tr85, ptr %.sroa.068.0, ptr %i.al, i64 noundef %.0, i64 noundef %.047)
  %i.am = sub nsw i64 %.tr8089, %.0               ; 2 uses
  %i.an = sub nsw i64 %.tr8190, %.047             ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = icmp eq i64 %i.an, 0
  %or.cond = or i1 %i.ao, %i.ap
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bssl12_GLOBAL__N_111IssuerEntryESt6vectorIS4_SaIS4_EEEES9_EvT_T0_(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9.i = alloca <{ %"struct.bssl::CertificateTrust", i32 }>, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %0, align 8, !tbaa !300
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !300
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %1, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !301  ; 8 uses
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !300
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !303
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !304
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !306
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #26, !call_target !311, !inline_history !9687
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !306
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #26, !call_target !313, !inline_history !9687
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !314
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !315
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #26
  br label %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i

_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !301  ; 8 uses
  store <2 x ptr> %i.b, ptr %1, align 8, !tbaa !300
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt4swapIN4bssl12_GLOBAL__N_111IssuerEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4bssl12_GLOBAL__N_111IssuerEntryaSEOS1_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

end_hunk_0
