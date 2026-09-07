Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/expression?download=true
inline.NumInlined: 7296
inline.NumDeleted: 3037
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 43
begin_hunk_0_@"_ZSt12__move_mergeIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZZNS1_12CanonicalizeES2_PNS1_11ExecContextEENK3$_1clES2_E3$_0EEET0_T_SI_SI_SI_SH_T1_":bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 8 ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.i

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclIPS4_SB_EEbT_T0_.exit"
  %i.x = load <2 x ptr>, ptr %.01640, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01640, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !130  ; 8 uses
  store <2 x ptr> %i.x, ptr %.sroa.0.039, align 8, !tbaa !138
  %.not.i.i.i.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i18, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.z, align 8, !tbaa !132
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !133
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31, !inline_history !17
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31, !inline_history !17
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i.i19 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.f ], [ %i.am, %bb.g ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.h, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit, !prof !137

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit

_ZN5arrow7compute10ExpressionaSEOS1_.exit:        ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.01640, i64 16
  br label %bb.p

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclIPS4_SB_EEbT_T0_.exit"
  %i.ap = load <2 x ptr>, ptr %.041, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.041, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !130 ; 8 uses
  store <2 x ptr> %i.ap, ptr %.sroa.0.039, align 8, !tbaa !138
  %.not.i.i.i.i.i20 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i20, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 8, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !133
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !135
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #31, !inline_history !17
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !135
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #31, !inline_history !17
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit24

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i22

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i22: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i23 = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i23, 1
  br i1 %i.bf, label %bb.o, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit24, !prof !137

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i22
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit24

_ZN5arrow7compute10ExpressionaSEOS1_.exit24:      ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i22, %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.041, i64 16
  br label %bb.p

bb.p:                                             ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit24, %_ZN5arrow7compute10ExpressionaSEOS1_.exit
  %.117 = phi ptr [ %i.ao, %_ZN5arrow7compute10ExpressionaSEOS1_.exit ], [ %.01640, %_ZN5arrow7compute10ExpressionaSEOS1_.exit24 ] ; 3 uses
  %.1 = phi ptr [ %.041, %_ZN5arrow7compute10ExpressionaSEOS1_.exit ], [ %i.bg, %_ZN5arrow7compute10ExpressionaSEOS1_.exit24 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 16 ; 2 uses
  %i.bi = icmp ne ptr %.1, %1
  %i.bj = icmp ne ptr %.117, %3
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !1706

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bh, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = ptrtoint ptr %.0.lcssa to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 4                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ck, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i ], [ %i.bo, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cj, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ci, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.br = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !130 ; 8 uses
  store <2 x ptr> %i.br, ptr %.0811.i.i.i.i.i, align 8, !tbaa !138
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bt, align 8, !tbaa !132
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !133
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !135
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31, !inline_history !59
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !135
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31, !inline_history !59
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.t ], [ %i.cg, %bb.u ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.v, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i, !prof !137

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i

_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, !llvm.loop !47

_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.cj, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i ]
  %i.cm = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.cn = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.co ; 2 uses
  %i.cq = ptrtoint ptr %3 to i64
  %i.cr = ptrtoint ptr %.016.lcssa to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 4                 ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i26, label %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit35

.lr.ph.i.i.i.i.i26:                               ; preds = %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34
  %.012.i.i.i.i.i27 = phi i64 [ %i.dp, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34 ], [ %i.ct, %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.do, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34 ], [ %i.cp, %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ] ; 3 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.dn, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34 ], [ %.016.lcssa, %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.cw = load <2 x ptr>, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i29, i8 0, i64 16, i1 false)
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !130 ; 8 uses
  store <2 x ptr> %i.cw, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !138
  %.not.i.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i30, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cy, align 8, !tbaa !132
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !133
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !135
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #31, !inline_history !59
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !135
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #31, !inline_history !59
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34

bb.y:                                             ; preds = %bb.w
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i.i.i.i.i.i.i31 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i32

bb.aa:                                            ; preds = %bb.y
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i32: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i.i.i.i.i33 = phi i32 [ %i.db, %bb.z ], [ %i.dl, %bb.aa ]
  %i.dm = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i33, 1
  br i1 %i.dm, label %bb.ab, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34, !prof !137

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i32
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34

_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i32, %bb.x, %.lr.ph.i.i.i.i.i26
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16 ; 2 uses
  %i.dp = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.dq = icmp sgt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i26, label %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit35.loopexit, !llvm.loop !47

_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit35.loopexit: ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i34
  %5 = ptrtoint ptr %i.do to i64
  br label %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit35

_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit35: ; preds = %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit35.loopexit, %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.08.lcssa.i.i.i.i.i25 = phi i64 [ %i.cm, %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %5, %_ZSt4moveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit35.loopexit ]
  %i.dr = sub i64 %.08.lcssa.i.i.i.i.i25, %i.cm
  %i.ds = getelementptr inbounds i8, ptr %i.cp, i64 %i.dr
  ret ptr %i.ds
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_SH_T0_SI_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond73 = or i1 %i.a, %i.b
  br i1 %or.cond73, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr7077 = phi i64 [ %i.by, %tailrecurse ], [ %4, %bb.a ] ; 4 uses
  %.tr6976 = phi i64 [ %i.bx, %tailrecurse ], [ %3, %bb.a ] ; 4 uses
  %.tr6775 = phi ptr [ %.sroa.0.0, %tailrecurse ], [ %1, %bb.a ] ; 11 uses
  %.tr74 = phi ptr [ %i.bw, %tailrecurse ], [ %0, %bb.a ] ; 10 uses
  %i.c = add nsw i64 %.tr7077, %.tr6976
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr %.tr6775, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i", label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i.i

_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load i8, ptr %i.f, align 8, !tbaa !122
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_ZNK5arrow7compute10Expression7literalEv.exit.i.i.i.i, label %"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i"

_ZNK5arrow7compute10Expression7literalEv.exit.i.i.i.i: ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i.i
  %i.i = tail call noundef i64 @_ZNK5arrow5Datum10null_countEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.j = tail call noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i", label %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i.i.i

_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i.i.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i.i.i.i
  %.pr.pre.i.i.i = load ptr, ptr %.tr6775, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i", label %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i._ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i_crit_edge.i.i

_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i._ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i_crit_edge.i.i: ; preds = %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 144
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !122
  %i.l = icmp eq i8 %.pre.i.i, 0
  %i.m = select i1 %i.l, i32 1, i32 2
  br label %"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i"

"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i": ; preds = %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i._ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i_crit_edge.i.i, %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i.i.i, %_ZNK5arrow7compute10Expression7literalEv.exit.i.i.i.i, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i.i, %bb.b
  %.0.i.i.i = phi i32 [ 0, %_ZNK5arrow7compute10Expression7literalEv.exit.i.i.i.i ], [ 2, %bb.b ], [ 2, %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i.i.i ], [ %i.m, %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i._ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i_crit_edge.i.i ], [ 2, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i.i ]
  %i.n = load ptr, ptr %.tr74, align 8, !tbaa !119 ; 4 uses
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i3.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESG_EEbT_T0_.exit", label %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i4.i.i

_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i4.i.i: ; preds = %"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i"
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load i8, ptr %i.o, align 8, !tbaa !122
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %_ZNK5arrow7compute10Expression7literalEv.exit.i.i9.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESG_EEbT_T0_.exit"

_ZNK5arrow7compute10Expression7literalEv.exit.i.i9.i.i: ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i4.i.i
  %i.r = tail call noundef i64 @_ZNK5arrow5Datum10null_countEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  %i.s = tail call noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESG_EEbT_T0_.exit", label %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10.i.i

_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10.i.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i.i9.i.i
  %.pr.pre.i11.i.i = load ptr, ptr %.tr74, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i12.i.i = icmp eq ptr %.pr.pre.i11.i.i, null
  br i1 %.not.i.i.i12.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESG_EEbT_T0_.exit", label %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10._ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i5_crit_edge.i.i

_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10._ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i5_crit_edge.i.i: ; preds = %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10.i.i
  %.phi.trans.insert1.i.i = getelementptr inbounds nuw i8, ptr %.pr.pre.i11.i.i, i64 144
  %.pre2.i.i = load i8, ptr %.phi.trans.insert1.i.i, align 8, !tbaa !122
  %i.u = icmp eq i8 %.pre2.i.i, 0
  %i.v = select i1 %i.u, i32 1, i32 2
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESG_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESG_EEbT_T0_.exit": ; preds = %"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i", %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i4.i.i, %_ZNK5arrow7compute10Expression7literalEv.exit.i.i9.i.i, %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10.i.i, %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10._ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i5_crit_edge.i.i
  %.0.i8.i.i = phi i32 [ 0, %_ZNK5arrow7compute10Expression7literalEv.exit.i.i9.i.i ], [ 2, %"_ZZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_ENK3$_08PriorityERKS1_.exit.i.i" ], [ 2, %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10.i.i ], [ %i.v, %_ZNK5arrow7compute10Expression13IsNullLiteralEv.exit.i10._ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i5_crit_edge.i.i ], [ 2, %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i4.i.i ]
  %i.w = icmp samesign ult i32 %.0.i.i.i, %.0.i8.i.i
  br i1 %i.w, label %bb.c, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESG_EEbT_T0_.exit"
  %i.x = getelementptr inbounds nuw i8, ptr %.tr74, i64 8
  %i.y = load <2 x ptr>, ptr %.tr74, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr74, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.tr6775, i64 8
  %i.aa = load <2 x ptr>, ptr %.tr6775, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr6775, i8 0, i64 16, i1 false)
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !130 ; 8 uses
  store <2 x ptr> %i.aa, ptr %.tr74, align 8, !tbaa !138
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ac, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !133
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31, !inline_history !60
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !135
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31, !inline_history !60
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.i, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i, !prof !137

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i

_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i:    ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e, %bb.c
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !130 ; 8 uses
  store <2 x ptr> %i.y, ptr %.tr6775, align 8, !tbaa !138
  %.not.i.i.i.i.i4.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i4.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.as, align 8, !tbaa !132
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !133
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !135
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31, !inline_history !60
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !135
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31, !inline_history !60
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit

bb.l:                                             ; preds = %bb.j
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !136
  %.not.i.i.i.i.i.i5.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i5.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i.i

bb.n:                                             ; preds = %bb.l
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i7.i.i = phi i32 [ %i.av, %bb.m ], [ %i.bf, %bb.n ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i.i7.i.i, 1
  br i1 %i.bg, label %bb.o, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit, !prof !137

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i6.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bh = icmp sgt i64 %.tr6976, %.tr7077
  br i1 %i.bh, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.p
  %i.bi = sdiv i64 %.tr6976, 2                    ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %.tr74, i64 %i.bi ; 2 uses
  %i.bk = tail call fastcc ptr @"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEET_SH_SH_RKT0_T1_"(ptr %.tr6775, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bj) ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
end_hunk_0
