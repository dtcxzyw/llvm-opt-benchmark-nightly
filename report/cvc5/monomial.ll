inline.NumInlined: 1981
inline.NumDeleted: 696
begin_hunk_0_@_ZN4cvc58internal6theory5arith2nl10MonomialDb16registerMonomialENS0_12NodeTemplateILb1EEE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.x = add nsw i64 %.052.i.i.i, -1
  %i.y = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.y, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !59

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.e, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.z = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.k

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !15
  %i.ab = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge.i.i.i
  %i.ae = phi ptr [ %i.ab, %bb.h ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.af = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !15
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge57.i.i.i
  %i.ai = phi ptr [ %i.ae, %bb.j ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !15
  %i.ak = icmp eq ptr %i.aj, %i.ai
  %spec.select.i.i.i = select i1 %i.ak, ptr %.sroa.032.2.i.i.i, ptr %i.d
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit335: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit337: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit335, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit337, %bb.g, %bb.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.i ], [ %spec.select.i.i.i, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %bb.g ], [ %i.an, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit337 ], [ %i.am, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit335 ], [ %i.al, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.b ]
  %.not268 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.d
  br i1 %.not268, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.d, %i.ap
  br i1 %.not.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  %i.aq = load ptr, ptr %1, align 8, !tbaa !15    ; 5 uses
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !15
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = lshr i64 %i.ar, 40
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 1048575                  ; 3 uses
  %i.av = icmp samesign ult i32 %i.au, 1048574
  br i1 %i.av, label %bb.m, label %bb.n, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.aw = add nuw nsw i32 %i.au, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 40
  %i.az = and i64 %i.ar, -1152920405095219201
  %i.ba = or i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.aq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bb = icmp eq i32 %i.au, 1048574
  br i1 %i.bb, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.bc = or i64 %i.ar, 1152920405095219200
  store i64 %i.bc, ptr %i.aq, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.c, align 8, !tbaa !37
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  tail call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.p
  %i.bf = load ptr, ptr %1, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 1023
  %i.bj = icmp eq i64 %i.bi, 42
  br i1 %i.bj, label %bb.q, label %bb.bj

bb.q:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.bk = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 42)
  %i.bl = icmp eq i32 %i.bk, 2
  %i.bm = load i64, ptr %i.bg, align 8
  %i.bn = lshr i64 %i.bm, 32
  %i.bo = and i64 %i.bn, 67108863
  %i.bp = sext i1 %i.bl to i64
  %i.bq = add nsw i64 %i.bo, %i.bp                ; 2 uses
  %i.br = trunc nsw i64 %i.bq to i32              ; 3 uses
  %.not279 = icmp eq i64 %i.bq, 0
  br i1 %.not279, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.t

._crit_edge:                                      ; preds = %bb.bi, %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !8  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge
  %i.cc = load ptr, ptr %1, align 8, !tbaa !15
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = and i64 %i.cd, 1099511627775            ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.r ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.r ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i64 %i.ch, 1099511627775
  %i.cj = icmp samesign ult i64 %i.ci, %i.ce      ; 2 uses
  %.19.i.i.i.i = select i1 %i.cj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.cj, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i, label %bb.r, !llvm.loop !29

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i: ; preds = %bb.r
  %i.ck = icmp eq ptr %.19.i.i.i.i, %i.cb
  br i1 %i.ck, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !15
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = and i64 %i.cn, 1099511627775
  %i.cp = icmp samesign ult i64 %i.ce, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.s, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i, %._crit_edge
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.s ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i ], [ %i.cb, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  store ptr %1, ptr %28, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.cq = call ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEEixERS7_.exit

bb.t:                                             ; preds = %.lr.ph, %bb.bi
  %.028278 = phi i32 [ 0, %.lr.ph ], [ %i.ky, %bb.bi ] ; 6 uses
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !8  ; 2 uses
  %.not10.i.i.i.i36 = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i.i36, label %.critedge.i46, label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %bb.t
  %i.cs = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = and i64 %i.ct, 1099511627775            ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i37
  %.012.i.i.i.i38 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i37 ], [ %.1.i.i.i.i43, %bb.u ] ; 3 uses
  %.0811.i.i.i.i39 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i37 ], [ %.19.i.i.i.i40, %bb.u ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = and i64 %i.cx, 1099511627775
  %i.cz = icmp samesign ult i64 %i.cy, %i.cu      ; 2 uses
  %.19.i.i.i.i40 = select i1 %i.cz, ptr %.0811.i.i.i.i39, ptr %.012.i.i.i.i38 ; 6 uses
  %.1.in.v.i.i.i.i41 = select i1 %i.cz, i64 24, i64 16
  %.1.in.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 %.1.in.v.i.i.i.i41
  %.1.i.i.i.i43 = load ptr, ptr %.1.in.i.i.i.i42, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %.1.i.i.i.i43, null
  br i1 %.not.i.i.i.i44, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i, label %bb.u, !llvm.loop !60

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i: ; preds = %bb.u
  %i.da = icmp eq ptr %.19.i.i.i.i40, %i.bu
  br i1 %i.da, label %.critedge.i46, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i40, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = and i64 %i.dd, 1099511627775
  %i.df = icmp samesign ult i64 %i.cu, %i.de
  br i1 %i.df, label %.critedge.i46, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEEixERS7_.exit

.critedge.i46:                                    ; preds = %bb.v, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i, %bb.t
  %.08.lcssa.i.i.i11.i47 = phi ptr [ %.19.i.i.i.i40, %bb.v ], [ %.19.i.i.i.i40, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEE11lower_boundERS7_.exit.i ], [ %i.bu, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  store ptr %1, ptr %26, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.dg = call ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St3mapIS3_jSt4lessIS3_ESaIS4_IS5_jEEEESt10_Select1stISC_ES8_SaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr %.08.lcssa.i.i.i11.i47, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 1 dereferenceable(1) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %.pre = load ptr, ptr %1, align 8, !tbaa !15, !noalias !61
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEEixERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEEixERS7_.exit: ; preds = %bb.v, %.critedge.i46
  %i.dh = phi ptr [ %.pre, %.critedge.i46 ], [ %i.cs, %bb.v ] ; 2 uses
  %.sroa.06.0.i45 = phi ptr [ %i.dg, %.critedge.i46 ], [ %.19.i.i.i.i40, %bb.v ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i45, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !61
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 1023                     ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 1023
  %i.do = select i1 %i.dn, i32 -1, i32 %i.dm
  %i.dp = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.do), !noalias !61
  %i.dq = icmp eq i32 %i.dp, 2
  %i.dr = zext i1 %i.dq to i32
  %spec.select.i.i = add nuw nsw i32 %.028278, %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dt = sext i32 %spec.select.i.i to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !58, !noalias !61 ; 5 uses
  store ptr %i.dv, ptr %30, align 8, !tbaa !15, !alias.scope !61
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !61 ; 3 uses
  %i.dx = lshr i64 %i.dw, 40
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 1048575                  ; 3 uses
  %i.ea = icmp samesign ult i32 %i.dz, 1048574
  br i1 %i.ea, label %bb.w, label %bb.x, !prof !27

bb.w:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEEixERS7_.exit
  %i.eb = add nuw nsw i32 %i.dz, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 40
  %i.ee = and i64 %i.dw, -1152920405095219201
  %i.ef = or i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.dv, align 8, !noalias !61
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.x:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_IS3_jSt4lessIS3_ESaISt4pairIKS3_jEEES5_SaIS6_IS7_SA_EEEixERS7_.exit
  %i.eg = icmp eq i32 %i.dz, 1048574
  br i1 %i.eg, label %bb.y, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !28

bb.y:                                             ; preds = %bb.x
  %i.eh = or i64 %i.dw, 1152920405095219200
  store i64 %i.eh, ptr %i.dv, align 8, !noalias !61
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dv), !noalias !61
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.w, %bb.x, %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i45, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !8  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i45, i64 48 ; 3 uses
  %.not10.i.i.i.i48 = icmp eq ptr %i.ej, null
  br i1 %.not10.i.i.i.i48, label %.critedge.i59, label %.lr.ph.i.i.i.i49

.lr.ph.i.i.i.i49:                                 ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.el = load ptr, ptr %30, align 8, !tbaa !15   ; 2 uses
  %i.em = load i64, ptr %i.el, align 8
  %i.en = and i64 %i.em, 1099511627775            ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i49
  %.012.i.i.i.i50 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i49 ], [ %.1.i.i.i.i55, %bb.z ] ; 3 uses
  %.0811.i.i.i.i51 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i49 ], [ %.19.i.i.i.i52, %bb.z ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !15
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = and i64 %i.eq, 1099511627775
  %i.es = icmp samesign ult i64 %i.er, %i.en      ; 2 uses
  %.19.i.i.i.i52 = select i1 %i.es, ptr %.0811.i.i.i.i51, ptr %.012.i.i.i.i50 ; 6 uses
  %.1.in.v.i.i.i.i53 = select i1 %i.es, i64 24, i64 16
  %.1.in.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 %.1.in.v.i.i.i.i53
  %.1.i.i.i.i55 = load ptr, ptr %.1.in.i.i.i.i54, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %.1.i.i.i.i55, null
  br i1 %.not.i.i.i.i56, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i57, label %bb.z, !llvm.loop !29

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i57: ; preds = %bb.z
  %i.et = icmp eq ptr %.19.i.i.i.i52, %i.ek
  br i1 %i.et, label %.critedge.i59, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i57
  %i.eu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i52, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !15
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = and i64 %i.ew, 1099511627775
  %i.ey = icmp samesign ult i64 %i.en, %i.ex
  br i1 %i.ey, label %.critedge.i59, label %bb.ab

.critedge.i59:                                    ; preds = %bb.aa, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i57, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %.08.lcssa.i.i.i11.i60 = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %.19.i.i.i.i52, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i57 ], [ %i.ek, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store ptr %30, ptr %24, align 8, !tbaa !30, !alias.scope !64
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.ez = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr %.08.lcssa.i.i.i11.i60, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.critedge.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %.pre284 = load ptr, ptr %30, align 8, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc, %bb.aa
  %i.fa = phi ptr [ %.pre284, %.noexc ], [ %i.el, %bb.aa ] ; 3 uses
  %.sroa.06.0.i58 = phi ptr [ %i.ez, %.noexc ], [ %.19.i.i.i.i52, %bb.aa ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i58, i64 40 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !32
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !32
  %i.fe = load i64, ptr %i.fa, align 8            ; 3 uses
  %i.ff = and i64 %i.fe, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ff, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ac, !prof !28

bb.ac:                                            ; preds = %bb.ab
  %i.fg = add i64 %i.fe, 1152920405095219200
  %i.fh = and i64 %i.fg, 1152920405095219200      ; 2 uses
  %i.fi = and i64 %i.fe, -1152920405095219201
  %i.fj = or disjoint i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %i.fa, align 8
  %i.fk = icmp eq i64 %i.fh, 0
  br i1 %i.fk, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !28

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %.not = icmp eq i32 %.028278, 0
  br i1 %.not, label %.critedge33.thread, label %bb.af

bb.af:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.fn = load ptr, ptr %1, align 8, !tbaa !15, !noalias !67 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !67
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = and i32 %i.fq, 1023                     ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 1023
  %i.ft = select i1 %i.fs, i32 -1, i32 %i.fr
  %i.fu = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ft), !noalias !67
  %i.fv = icmp eq i32 %i.fu, 2
  %i.fw = zext i1 %i.fv to i32
  %spec.select.i.i61 = add nsw i32 %.028278, %i.fw
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fy = sext i32 %spec.select.i.i61 to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !58, !noalias !67 ; 9 uses
  store ptr %i.ga, ptr %31, align 8, !tbaa !15, !alias.scope !67
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !67 ; 3 uses
  %i.gc = lshr i64 %i.gb, 40
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %i.ge = and i32 %i.gd, 1048575                  ; 3 uses
  %i.gf = icmp samesign ult i32 %i.ge, 1048574
  br i1 %i.gf, label %bb.ag, label %bb.ah, !prof !27

bb.ag:                                            ; preds = %bb.af
  %i.gg = add nuw nsw i32 %i.ge, 1
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 40
  %i.gj = and i64 %i.gb, -1152920405095219201
  %i.gk = or i64 %i.gi, %i.gj
  store i64 %i.gk, ptr %i.ga, align 8, !noalias !67
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit62

bb.ah:                                            ; preds = %bb.af
  %i.gl = icmp eq i32 %i.ge, 1048574
  br i1 %i.gl, label %bb.ai, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit62, !prof !28

bb.ai:                                            ; preds = %bb.ah
  %i.gm = or i64 %i.gb, 1152920405095219200
  store i64 %i.gm, ptr %i.ga, align 8, !noalias !67
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ga), !noalias !67
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit62

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit62: ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.gn = load ptr, ptr %1, align 8, !tbaa !15, !noalias !70 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !noalias !70
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = and i32 %i.gq, 1023                     ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 1023
  %i.gt = select i1 %i.gs, i32 -1, i32 %i.gr
  %i.gu = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.gt)
          to label %.noexc64 unwind label %bb.bg

.noexc64:                                         ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit62
  %34 = add i32 %.028278, -1
  %35 = icmp eq i32 %i.gu, 2
  %36 = zext i1 %35 to i32
  %spec.select.i.i63 = add nuw nsw i32 %34, %36
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %37 = sext i32 %spec.select.i.i63 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %37
  %i.gw = load ptr, ptr %38, align 8, !tbaa !58, !noalias !70 ; 8 uses
  %i.gx = load i64, ptr %i.gw, align 8, !noalias !70 ; 4 uses
  %i.gy = lshr i64 %i.gx, 40
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = and i32 %i.gz, 1048575                  ; 3 uses
  %i.hb = icmp samesign ult i32 %i.ha, 1048574
  br i1 %i.hb, label %bb.aj, label %bb.ak, !prof !27

bb.aj:                                            ; preds = %.noexc64
  %i.hc = add nuw nsw i32 %i.ha, 1
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 40
  %i.hf = and i64 %i.gx, -1152920405095219201
  %i.hg = or i64 %i.he, %i.hf                     ; 2 uses
  store i64 %i.hg, ptr %i.gw, align 8, !noalias !70
  br label %.critedge

bb.ak:                                            ; preds = %.noexc64
  %i.hh = icmp eq i32 %i.ha, 1048574
  br i1 %i.hh, label %bb.al, label %.critedge, !prof !28

bb.al:                                            ; preds = %bb.ak
  %i.hi = or i64 %i.gx, 1152920405095219200
  store i64 %i.hi, ptr %i.gw, align 8, !noalias !70
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %..critedge_crit_edge unwind label %bb.bg

..critedge_crit_edge:                             ; preds = %bb.al
  %.pre285 = load i64, ptr %i.gw, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ak, %bb.aj
  %i.hj = phi i64 [ %.pre285, %..critedge_crit_edge ], [ %i.gx, %bb.ak ], [ %i.hg, %bb.aj ] ; 3 uses
  %.not269 = icmp eq ptr %i.ga, %i.gw
  %i.hk = and i64 %i.hj, 1152920405095219200
  %.not.i.i67 = icmp eq i64 %i.hk, 1152920405095219200
  br i1 %.not.i.i67, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit68, label %bb.am, !prof !28

bb.am:                                            ; preds = %.critedge
  %i.hl = add i64 %i.hj, 1152920405095219200
  %i.hm = and i64 %i.hl, 1152920405095219200      ; 2 uses
  %i.hn = and i64 %i.hj, -1152920405095219201
  %i.ho = or disjoint i64 %i.hm, %i.hn
  store i64 %i.ho, ptr %i.gw, align 8
  %i.hp = icmp eq i64 %i.hm, 0
  br i1 %i.hp, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit68, !prof !28

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit68 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit68: ; preds = %.critedge, %bb.am, %bb.an
  %i.hs = load i64, ptr %i.ga, align 8            ; 3 uses
  %i.ht = and i64 %i.hs, 1152920405095219200
  %.not.i.i69 = icmp eq i64 %i.ht, 1152920405095219200
  br i1 %.not.i.i69, label %.critedge33, label %bb.ap, !prof !28

bb.ap:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit68
  %i.hu = add i64 %i.hs, 1152920405095219200
  %i.hv = and i64 %i.hu, 1152920405095219200      ; 2 uses
  %i.hw = and i64 %i.hs, -1152920405095219201
  %i.hx = or disjoint i64 %i.hv, %i.hw
  store i64 %i.hx, ptr %i.ga, align 8
  %i.hy = icmp eq i64 %i.hv, 0
  br i1 %i.hy, label %bb.aq, label %.critedge33, !prof !28

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ga)
          to label %.critedge33 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #25
  unreachable

.critedge33:                                      ; preds = %bb.aq, %bb.ap, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  br i1 %.not269, label %bb.bi, label %.critedge33.thread

.critedge33.thread:                               ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %.critedge33
  %i.ib = load ptr, ptr %i.bw, align 8, !tbaa !8  ; 2 uses
  %.not10.i.i.i.i71 = icmp eq ptr %i.ib, null
  br i1 %.not10.i.i.i.i71, label %.critedge.i81, label %.lr.ph.i.i.i.i72

.lr.ph.i.i.i.i72:                                 ; preds = %.critedge33.thread
  %i.ic = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = and i64 %i.id, 1099511627775            ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i.i.i72
  %.012.i.i.i.i73 = phi ptr [ %i.ib, %.lr.ph.i.i.i.i72 ], [ %.1.i.i.i.i78, %bb.as ] ; 3 uses
  %.0811.i.i.i.i74 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i72 ], [ %.19.i.i.i.i75, %bb.as ]
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i73, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !15
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = and i64 %i.ih, 1099511627775
  %i.ij = icmp samesign ult i64 %i.ii, %i.ie      ; 2 uses
  %.19.i.i.i.i75 = select i1 %i.ij, ptr %.0811.i.i.i.i74, ptr %.012.i.i.i.i73 ; 6 uses
  %.1.in.v.i.i.i.i76 = select i1 %i.ij, i64 24, i64 16
  %.1.in.i.i.i.i77 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i73, i64 %.1.in.v.i.i.i.i76
  %.1.i.i.i.i78 = load ptr, ptr %.1.in.i.i.i.i77, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %.1.i.i.i.i78, null
  br i1 %.not.i.i.i.i79, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, label %bb.as, !llvm.loop !49

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i: ; preds = %bb.as
  %i.ik = icmp eq ptr %.19.i.i.i.i75, %i.bx
  br i1 %i.ik, label %.critedge.i81, label %bb.at

bb.at:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i
  %i.il = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i75, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !15
  %i.in = load i64, ptr %i.im, align 8
  %i.io = and i64 %i.in, 1099511627775
  %i.ip = icmp samesign ult i64 %i.ie, %i.io
  br i1 %i.ip, label %.critedge.i81, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit

.critedge.i81:                                    ; preds = %bb.at, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, %.critedge33.thread
  %.08.lcssa.i.i.i11.i82 = phi ptr [ %.19.i.i.i.i75, %bb.at ], [ %.19.i.i.i.i75, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i ], [ %i.bx, %.critedge33.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  store ptr %1, ptr %22, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.iq = call ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr %.08.lcssa.i.i.i11.i82, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 1 dereferenceable(1) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %.pre286 = load ptr, ptr %1, align 8, !tbaa !15, !noalias !73
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit: ; preds = %bb.at, %.critedge.i81
  %i.ir = phi ptr [ %.pre286, %.critedge.i81 ], [ %i.ic, %bb.at ] ; 2 uses
  %.sroa.06.0.i80 = phi ptr [ %i.iq, %.critedge.i81 ], [ %.19.i.i.i.i75, %bb.at ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i80, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !noalias !73
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = and i32 %i.iv, 1023                     ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 1023
  %i.iy = select i1 %i.ix, i32 -1, i32 %i.iw
  %i.iz = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.iy), !noalias !73
  %i.ja = icmp eq i32 %i.iz, 2
  %i.jb = zext i1 %i.ja to i32
  %spec.select.i.i83 = add nsw i32 %.028278, %i.jb
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.jd = sext i32 %spec.select.i.i83 to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !58, !noalias !73 ; 5 uses
  store ptr %i.jf, ptr %32, align 8, !tbaa !15, !alias.scope !73
  %i.jg = load i64, ptr %i.jf, align 8, !noalias !73 ; 3 uses
  %i.jh = lshr i64 %i.jg, 40
  %i.ji = trunc nuw nsw i64 %i.jh to i32
  %i.jj = and i32 %i.ji, 1048575                  ; 3 uses
  %i.jk = icmp samesign ult i32 %i.jj, 1048574
  br i1 %i.jk, label %bb.au, label %bb.av, !prof !27

bb.au:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit
  %i.jl = add nuw nsw i32 %i.jj, 1
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = shl nuw nsw i64 %i.jm, 40
  %i.jo = and i64 %i.jg, -1152920405095219201
  %i.jp = or i64 %i.jn, %i.jo
  store i64 %i.jp, ptr %i.jf, align 8, !noalias !73
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit84

bb.av:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEEixERSA_.exit
  %i.jq = icmp eq i32 %i.jj, 1048574
  br i1 %i.jq, label %bb.aw, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit84, !prof !28

bb.aw:                                            ; preds = %bb.av
  %i.jr = or i64 %i.jg, 1152920405095219200
  store i64 %i.jr, ptr %i.jf, align 8, !noalias !73
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jf), !noalias !73
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit84

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit84: ; preds = %bb.au, %bb.av, %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i80, i64 48 ; 3 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !37 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i80, i64 56
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !39
  %.not.i.i85 = icmp eq ptr %i.jt, %i.jv
  br i1 %.not.i.i85, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit84
  %i.jw = load ptr, ptr %32, align 8, !tbaa !15   ; 5 uses
  store ptr %i.jw, ptr %i.jt, align 8, !tbaa !15
  %i.jx = load i64, ptr %i.jw, align 8            ; 3 uses
  %i.jy = lshr i64 %i.jx, 40
  %i.jz = trunc nuw nsw i64 %i.jy to i32
  %i.ka = and i32 %i.jz, 1048575                  ; 3 uses
  %i.kb = icmp samesign ult i32 %i.ka, 1048574
  br i1 %i.kb, label %bb.ay, label %bb.az, !prof !27
end_hunk_0
