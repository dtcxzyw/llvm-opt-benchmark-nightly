Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/beta_reduce_converter?download=true
inline.NumInlined: 382
inline.NumDeleted: 211
begin_hunk_0_@_ZNK4cvc58internal12NodeTemplateILb1EE10substituteIN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESA_EES2_T_SB_T0_SC_RSt13unordered_mapINS1_ILb0EEESE_St4hashISE_ESt8equal_toISE_ESaISt4pairIKSE_SE_EEE
define linkonce_odr hidden void @_ZNK4cvc58internal12NodeTemplateILb1EE10substituteIN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESA_EES2_T_SB_T0_SC_RSt13unordered_mapINS1_ILb0EEESE_St4hashISE_ESt8equal_toISE_ESaISt4pairIKSE_SE_EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(56) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cvc5::internal::NodeTemplate.33", align 8 ; 6 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.33", align 8 ; 5 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.33", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.33", align 8 ; 2 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.33", align 8 ; 2 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.33", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !44 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = icmp eq ptr %i.a, %i.f
  br i1 %i.g, label %.loopexit85, label %bb.c, !llvm.loop !72

.noexc:                                           ; preds = %bb.a
  %i.h = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb0EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = urem i64 %i.h, %i.j                      ; 2 uses
  %i.l = load ptr, ptr %6, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 4 uses
  %i.p = load ptr, ptr %7, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !74
  %i.t = icmp eq i64 %i.h, %i.s
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = icmp eq ptr %i.p, %i.u
  %i.w = select i1 %i.t, i1 %i.v, i1 false
  br i1 %i.w, label %.loopexit85, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.y = icmp eq i64 %i.h, %i.ae
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = icmp eq ptr %i.p, %i.z
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %.loopexit85, label %.lr.ph.i.i.i.i, !llvm.loop !76

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.o, %bb.e ]
  %i.ac = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !44 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !74 ; 2 uses
  %i.af = urem i64 %i.ae, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.af, %i.k
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !76

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit, !llvm.loop !76

.loopexit85:                                      ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.o, %bb.e ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 5 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !8
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = lshr i64 %i.ai, 40
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1048575                  ; 3 uses
  %i.am = icmp samesign ult i32 %i.al, 1048574
  br i1 %i.am, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %.loopexit85
  %i.an = add nuw nsw i32 %i.al, 1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 40
  %i.aq = and i64 %i.ai, -1152920405095219201
  %i.ar = or i64 %i.ap, %i.aq
  store i64 %i.ar, ptr %i.ah, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.i:                                             ; preds = %.loopexit85
  %i.as = icmp eq i32 %i.al, 1048574
  br i1 %i.as, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.at = or i64 %i.ai, 1152920405095219200
  store i64 %i.at, ptr %i.ah, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.au = load ptr, ptr %1, align 8, !tbaa !8     ; 8 uses
  %i.av = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.aw = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = ashr i64 %i.ax, 5                       ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit
  %i.ba = and i64 %i.ax, -32
  %scevgep.i.i.i = getelementptr i8, ptr %2, i64 %i.ba ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %i.bn, %bb.o ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i ], [ %i.bm, %bb.o ] ; 9 uses
  %i.bb = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !8
  %i.bc = icmp eq ptr %i.bb, %i.au
  br i1 %i.bc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bf = icmp eq ptr %i.be, %i.au
  br i1 %i.bf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit132, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8
  %i.bi = icmp eq ptr %i.bh, %i.au
  br i1 %i.bi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit130, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8
  %i.bl = icmp eq ptr %i.bk, %i.au
  br i1 %i.bl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.bn = add nsw i64 %.052.i.i.i, -1
  %i.bo = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bo, label %bb.k, label %._crit_edge.loopexit.i.i.i, !llvm.loop !77

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.o
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.av, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.loopexit
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ax, %.loopexit ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %2, %.loopexit ] ; 5 uses
  %i.bp = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.bp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.thread [
    i64 3, label %bb.p
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bq = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !8
  %i.br = icmp eq ptr %i.bq, %i.au
  br i1 %i.br, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.q
  %.sroa.032.1.i.i.i = phi ptr [ %i.bs, %bb.q ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bt = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !8
  %i.bu = icmp eq ptr %i.bt, %i.au
  br i1 %i.bu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.r
  %.sroa.032.2.i.i.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bw = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !8
  %i.bx = icmp eq ptr %i.bw, %i.au
  %spec.select.i.i.i = select i1 %i.bx, ptr %.sroa.032.2.i.i.i, ptr %3
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit130: ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit132: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit: ; preds = %bb.k, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit130, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit132, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.p
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.p ], [ %i.ca, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit132 ], [ %i.bz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit130 ], [ %i.by, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.k ] ; 2 uses
  %.not = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %3
  br i1 %.not, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.thread, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit
  %i.cb = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.cc = sub i64 %i.cb, %i.aw
  %i.cd = getelementptr inbounds i8, ptr %4, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8  ; 5 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !8
  %i.cf = load i64, ptr %i.ce, align 8            ; 3 uses
  %i.cg = lshr i64 %i.cf, 40
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 1048575                  ; 3 uses
  %i.cj = icmp samesign ult i32 %i.ci, 1048574
  br i1 %i.cj, label %bb.s, label %bb.t, !prof !17

bb.s:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ck = add nuw nsw i32 %i.ci, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 40
  %i.cn = and i64 %i.cf, -1152920405095219201
  %i.co = or i64 %i.cm, %i.cn
  store i64 %i.co, ptr %i.ce, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.t:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cp = icmp eq i32 %i.ci, 1048574
  br i1 %i.cp, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !12

bb.u:                                             ; preds = %bb.t
  %i.cq = or i64 %i.cf, 1152920405095219200
  store i64 %i.cq, ptr %i.ce, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.cr = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %i.cr, ptr %8, align 8, !tbaa !51
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_S4_ESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixEOS3_.exit unwind label %bb.w ; 2 uses

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !51
  %i.cu = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit, label %bb.v, !prof !12

bb.v:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixEOS3_.exit
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !51
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixEOS3_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  br label %bb.bp

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = and i32 %i.cy, 1023                     ; 2 uses
  %i.da = icmp eq i32 %i.cz, 1023
  %i.db = select i1 %i.da, i32 -1, i32 %i.cz
  %i.dc = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.db)
  %i.dd = icmp eq i32 %i.dc, 2
  %i.de = load i64, ptr %i.cw, align 8
  %i.df = lshr i64 %i.de, 32
  %i.dg = and i64 %i.df, 67108863
  %i.dh = sext i1 %i.dd to i64
  %i.di = add nsw i64 %i.dg, %i.dh
  %i.dj = and i64 %i.di, 4294967295
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixEOS3_.exit47, label %bb.ab

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixEOS3_.exit47: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.dl = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %i.dl, ptr %9, align 8, !tbaa !51
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_S4_ESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !51
  %i.do = load ptr, ptr %1, align 8, !tbaa !8     ; 7 uses
  %.not.i48 = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i48, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit49, label %bb.x, !prof !12

bb.x:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixEOS3_.exit47
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !51
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit49

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit49: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEEixEOS3_.exit47, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  store ptr %i.do, ptr %0, align 8, !tbaa !8
  %i.dp = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dq = lshr i64 %i.dp, 40
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 1048575                  ; 3 uses
  %i.dt = icmp samesign ult i32 %i.ds, 1048574
  br i1 %i.dt, label %bb.y, label %bb.z, !prof !17

bb.y:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit49
  %i.du = add nuw nsw i32 %i.ds, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 40
  %i.dx = and i64 %i.dp, -1152920405095219201
  %i.dy = or i64 %i.dw, %i.dx
  store i64 %i.dy, ptr %i.do, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit49
  %i.dz = icmp eq i32 %i.ds, 1048574
  br i1 %i.dz, label %bb.aa, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !12

bb.aa:                                            ; preds = %bb.z
  %i.ea = or i64 %i.dp, 1152920405095219200
  store i64 %i.ea, ptr %i.do, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.do)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.ab:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS4_ILb0EEEET_SC_SC_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.eb = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = and i32 %i.eg, 1023
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef %i.ed, i32 noundef %i.eh)
  %i.ei = load ptr, ptr %1, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = trunc i64 %i.ek to i32
  %i.em = and i32 %i.el, 1023
  %i.en = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.em)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE11getMetaKindEv.exit unwind label %bb.am

_ZNK4cvc58internal12NodeTemplateILb1EE11getMetaKindEv.exit: ; preds = %bb.ab
  %i.eo = icmp eq i32 %i.en, 2
  br i1 %i.eo, label %bb.ac, label %bb.as

bb.ac:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE11getMetaKindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE10substituteIN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESA_EES2_T_SB_T0_SC_RSt13unordered_mapINS1_ILb0EEESE_St4hashISE_ESt8equal_toISE_ESaISt4pairIKSE_SE_EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %12, align 8, !tbaa !8
  store ptr %i.ep, ptr %11, align 8, !tbaa !51
  %i.eq = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull align 8 %11)
          to label %bb.af unwind label %bb.ap     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.er = load ptr, ptr %12, align 8, !tbaa !8    ; 3 uses
  %i.es = load i64, ptr %i.er, align 8            ; 3 uses
  %i.et = and i64 %i.es, 1152920405095219200
  %.not.i.i52 = icmp eq i64 %i.et, 1152920405095219200
  br i1 %.not.i.i52, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ag, !prof !12

bb.ag:                                            ; preds = %bb.af
  %i.eu = add i64 %i.es, 1152920405095219200
  %i.ev = and i64 %i.eu, 1152920405095219200      ; 2 uses
  %i.ew = and i64 %i.es, -1152920405095219201
  %i.ex = or disjoint i64 %i.ev, %i.ew
  store i64 %i.ex, ptr %i.er, align 8
  %i.ey = icmp eq i64 %i.ev, 0
  br i1 %i.ey, label %bb.ah, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !12

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #16
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.af, %bb.ag, %bb.ah
  %i.fb = load ptr, ptr %13, align 8, !tbaa !8    ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8            ; 3 uses
  %i.fd = and i64 %i.fc, 1152920405095219200
  %.not.i.i53 = icmp eq i64 %i.fd, 1152920405095219200
  br i1 %.not.i.i53, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54, label %bb.aj, !prof !12

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.fe = add i64 %i.fc, 1152920405095219200
  %i.ff = and i64 %i.fe, 1152920405095219200      ; 2 uses
  %i.fg = and i64 %i.fc, -1152920405095219201
  %i.fh = or disjoint i64 %i.ff, %i.fg
  store i64 %i.fh, ptr %i.fb, align 8
  %i.fi = icmp eq i64 %i.ff, 0
  br i1 %i.fi, label %bb.ak, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54, !prof !12

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #16
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.as

bb.am:                                            ; preds = %bb.ab, %._crit_edge
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.an:                                            ; preds = %bb.ac
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ad
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ae
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fo, %bb.ap ], [ %i.fn, %bb.ao ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aq ], [ %i.fm, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.bo

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit54, %_ZNK4cvc58internal12NodeTemplateILb1EE11getMetaKindEv.exit
  %i.fp = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = and i32 %i.fs, 1023                     ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 1023
  %i.fv = select i1 %i.fu, i32 -1, i32 %i.ft
  %i.fw = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.fv)
          to label %bb.at unwind label %bb.au

end_hunk_0
