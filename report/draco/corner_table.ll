Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/corner_table?download=true
inline.NumInlined: 1215
inline.NumDeleted: 523
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5draco11CornerTable22ComputeOppositeCornersEPi:bb.a
  %i.ae = and i64 %.pre-phi265, 17179869180
  %.not225 = icmp eq i64 %i.ae, 0
  br i1 %.not225, label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit124

bb.j:                                             ; preds = %.lr.ph, %bb.p
  %.pre251258 = phi ptr [ %i.v, %.lr.ph ], [ %.pre251259, %bb.p ] ; 4 uses
  %.pre250255 = phi ptr [ %i.w, %.lr.ph ], [ %.pre250256, %bb.p ] ; 4 uses
  %.pre249252 = phi ptr [ %i.ad, %.lr.ph ], [ %.pre249253, %bb.p ] ; 4 uses
  %i.ah = phi ptr [ %i.v, %.lr.ph ], [ %i.az, %bb.p ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %.lr.ph ], [ %i.ba, %bb.p ]
  %i.aj = phi ptr [ %i.ad, %.lr.ph ], [ %i.bb, %bb.p ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24, !noalias !107 ; 3 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 4 uses
  %i.ar = trunc i64 %i.aq to i32
  %.not = icmp ult i32 %i.al, %i.ar
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add i32 %i.al, 1
  %i.at = zext i32 %i.as to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.au = icmp ult i64 %i.aq, %i.at
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = sub nuw nsw i64 %i.at, %i.aq
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.am, i64 noundef %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge unwind label %bb.o

._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge: ; preds = %bb.l
  %.pre249.pre = load ptr, ptr %2, align 8, !tbaa !14
  %.pre250.pre = load ptr, ptr %i.d, align 8, !tbaa !27
  %.pre251.pre = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = icmp ugt i64 %i.aq, %i.at
  br i1 %i.aw, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.at ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.ax
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !32
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.n, %bb.m
  %.pre251 = phi ptr [ %.pre251.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge ], [ %.pre251258, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre251258, %bb.n ], [ %.pre251258, %bb.m ] ; 2 uses
  %.pre250 = phi ptr [ %.pre250.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge ], [ %.pre250255, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre250255, %bb.n ], [ %.pre250255, %bb.m ] ; 2 uses
  %.pre249 = phi ptr [ %.pre249.pre, %._ZNSt6vectorIiSaIiEE6resizeEmRKi.exit_crit_edge ], [ %.pre249252, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre249252, %bb.n ], [ %.pre249252, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit124

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %bb.j
  %.pre251259 = phi ptr [ %.pre251, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %.pre251258, %bb.j ]
  %.pre250256 = phi ptr [ %.pre250, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %.pre250255, %bb.j ]
  %.pre249253 = phi ptr [ %.pre249, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %.pre249252, %bb.j ]
  %i.az = phi ptr [ %.pre251, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %i.ah, %bb.j ] ; 3 uses
  %i.ba = phi ptr [ %.pre250, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %i.ai, %bb.j ] ; 2 uses
  %i.bb = phi ptr [ %.pre249, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %i.aj, %bb.j ] ; 3 uses
  %i.bc = zext i32 %i.al to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !26
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = ptrtoint ptr %i.az to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2                 ; 2 uses
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.j, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.p
  %i.bm = trunc i64 %i.bj to i32
  %.pre269 = shl i64 %i.bi, 30
  %.pre270 = ashr i64 %.pre269, 32                ; 2 uses
  %i.bn = icmp ugt i64 %.pre270, 1152921504606846975
  br i1 %i.bn, label %bb.q, label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.q:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
          to label %.noexc98 unwind label %bb.t

.noexc98:                                         ; preds = %bb.q
  unreachable

_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %._crit_edge
  %.lcssa200302 = phi i32 [ %i.bm, %._crit_edge ], [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %.lcssa204301 = phi ptr [ %i.az, %._crit_edge ], [ %i.v, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 5 uses
  %i.bo = phi ptr [ %i.bb, %._crit_edge ], [ %i.ad, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 9 uses
  %.pre-phi271300 = phi i64 [ %.pre270, %._crit_edge ], [ %.pre-phi268, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.pre-phi271300, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS3_RKS4_.exit, label %_ZNSt12_Vector_baseIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.bp = shl nuw nsw i64 %.pre-phi271300, 3      ; 2 uses
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #14
          to label %.noexc99 unwind label %bb.t   ; 3 uses

.noexc99:                                         ; preds = %_ZNSt12_Vector_baseIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS4_.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bq, i8 -1, i64 %i.bp, i1 false), !tbaa !26
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.pre-phi271300
  %i.bs = ptrtoint ptr %i.br to i64
  br label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS3_RKS4_.exit

_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %.noexc99, %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.sroa.19.0 = phi i64 [ 0, %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.bs, %.noexc99 ] ; 2 uses
  %.sroa.0179.0 = phi ptr [ null, %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.bq, %.noexc99 ] ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !32 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = ashr exact i64 %i.bx, 2                 ; 6 uses
  %i.bz = icmp ugt i64 %i.by, 2305843009213693951
  br i1 %i.bz, label %bb.r, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.r:                                             ; preds = %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS3_RKS4_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
          to label %.noexc101 unwind label %bb.u

.noexc101:                                        ; preds = %bb.r
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS3_RKS4_.exit
  %.not.i.i.i.i100 = icmp eq ptr %i.bu, %i.bo
  br i1 %.not.i.i.i.i100, label %.preheader196, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #14
          to label %.noexc102 unwind label %bb.u  ; 9 uses

.noexc102:                                        ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx
  store i32 0, ptr %i.ca, align 4, !tbaa !26
  %i.cc = add nsw i64 %i.by, -1                   ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph211.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

.lr.ph211.preheader:                              ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc102
  %xtraiter = and i64 %i.by, 3                    ; 3 uses
  %i.ce = icmp ult i64 %i.by, 4
  br i1 %i.ce, label %.lr.ph211.epil.preheader, label %.lr.ph211.preheader.new

.lr.ph211.preheader.new:                          ; preds = %.lr.ph211.preheader
  %unroll_iter = and i64 %i.by, 2305843009213693948
  br label %.lr.ph211

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc102
  %i.cf = getelementptr i8, ptr %i.ca, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !26
  br label %.lr.ph211.preheader

.preheader196.loopexit.unr-lcssa:                 ; preds = %.lr.ph211
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader196.loopexit, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %.preheader196.loopexit.unr-lcssa, %.lr.ph211.preheader
  %.039210.epil.init = phi i64 [ 0, %.lr.ph211.preheader ], [ %i.di, %.preheader196.loopexit.unr-lcssa ]
  %.040209.epil.init = phi i32 [ 0, %.lr.ph211.preheader ], [ %i.dh, %.preheader196.loopexit.unr-lcssa ]
  %lcmp.mod346 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod346)
  br label %.lr.ph211.epil

.lr.ph211.epil:                                   ; preds = %.lr.ph211.epil, %.lr.ph211.epil.preheader
  %.039210.epil = phi i64 [ %i.ck, %.lr.ph211.epil ], [ %.039210.epil.init, %.lr.ph211.epil.preheader ] ; 3 uses
  %.040209.epil = phi i32 [ %i.cj, %.lr.ph211.epil ], [ %.040209.epil.init, %.lr.ph211.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph211.epil ], [ 0, %.lr.ph211.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.039210.epil
  store i32 %.040209.epil, ptr %i.cg, align 4, !tbaa !26
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.039210.epil
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = add nsw i32 %i.ci, %.040209.epil
  %i.ck = add nuw nsw i64 %.039210.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader196.loopexit, label %.lr.ph211.epil, !llvm.loop !85

.preheader196.loopexit:                           ; preds = %.lr.ph211.epil, %.preheader196.loopexit.unr-lcssa
  %i.cl = ptrtoint ptr %i.cb to i64
  br label %.preheader196

.preheader196:                                    ; preds = %.preheader196.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0171.0308 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.preheader196.loopexit ] ; 5 uses
  %.sroa.12.0306 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cl, %.preheader196.loopexit ]
  %.not227 = icmp eq i32 %.lcssa200302, 0
  br i1 %.not227, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader196
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  br label %bb.y

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EEC2EmRKS4_.exit.i, %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit124

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %.sroa.0179.0, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit124, label %bb.al

.lr.ph211:                                        ; preds = %.lr.ph211, %.lr.ph211.preheader.new
  %.039210 = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %i.di, %.lr.ph211 ] ; 6 uses
  %.040209 = phi i32 [ 0, %.lr.ph211.preheader.new ], [ %i.dh, %.lr.ph211 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %niter.next.3, %.lr.ph211 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.039210
  store i32 %.040209, ptr %i.cp, align 4, !tbaa !26
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.039210
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !26
  %i.cs = add nsw i32 %i.cr, %.040209             ; 2 uses
  %i.ct = or disjoint i64 %.039210, 1             ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ct
  store i32 %i.cs, ptr %i.cu, align 4, !tbaa !26
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ct
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !26
  %i.cx = add nsw i32 %i.cw, %i.cs                ; 2 uses
  %i.cy = or disjoint i64 %.039210, 2             ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cy
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !26
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cy
  %i.db = load i32, ptr %i.da, align 4, !tbaa !26
  %i.dc = add nsw i32 %i.db, %i.cx                ; 2 uses
  %i.dd = or disjoint i64 %.039210, 3             ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dd
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !26
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dd
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !26
  %i.dh = add nsw i32 %i.dg, %i.dc                ; 2 uses
  %i.di = add nuw nsw i64 %.039210, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader196.loopexit.unr-lcssa, label %.lr.ph211, !llvm.loop !86

._crit_edge224:                                   ; preds = %.loopexit, %.preheader196
  %i.dj = trunc i64 %i.by to i32
  store i32 %i.dj, ptr %1, align 4, !tbaa !26
  %.not.i.i.i103 = icmp eq ptr %.sroa.0171.0308, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge224
  %i.dk = ptrtoint ptr %.sroa.0171.0308 to i64
  %i.dl = sub i64 %.sroa.12.0306, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0308, i64 noundef %i.dl) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge224, %bb.v
  %.not.i.i.i104 = icmp eq ptr %.sroa.0179.0, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dm = ptrtoint ptr %.sroa.0179.0 to i64
  %i.dn = sub i64 %.sroa.19.0, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0, i64 noundef %i.dn) #15
  br label %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit

_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  %i.do = load ptr, ptr %2, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIiSaIiEED2Ev.exit106, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit106

_ZNSt6vectorIiSaIiEED2Ev.exit106:                 ; preds = %_ZNSt6vectorIZN5draco11CornerTable22ComputeOppositeCornersEPiE14VertexEdgePairSaIS3_EED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.an

bb.y:                                             ; preds = %.lr.ph223, %.loopexit
  %.sroa.0158.0222 = phi i32 [ 0, %.lr.ph223 ], [ %.pre-phi273, %.loopexit ] ; 9 uses
  %i.dt = zext i32 %.sroa.0158.0222 to i64        ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.lcssa204301, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !24, !noalias !109 ; 3 uses
  %i.dw = add nuw i32 %.sroa.0158.0222, 1         ; 6 uses
  %i.dx = urem i32 %i.dw, 3
  %.not.i = icmp eq i32 %i.dx, 0
  %i.dy = add i32 %.sroa.0158.0222, -2
  %spec.select.i = select i1 %.not.i, i32 %i.dy, i32 %i.dw ; 2 uses
  %i.dz = icmp eq i32 %spec.select.i, -1
  br i1 %i.dz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = zext i32 %spec.select.i to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.lcssa204301, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !24, !noalias !110
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %storemerge.i109 = phi i32 [ %i.ec, %bb.z ], [ -1, %bb.y ] ; 4 uses
  %i.ed = urem i32 %.sroa.0158.0222, 3
  %.not.i111 = icmp eq i32 %i.ed, 0
  br i1 %.not.i111, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ab

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.aa
  %i.ee = add i32 %.sroa.0158.0222, 2             ; 2 uses
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %.thread309, label %.thread313

.thread313:                                       ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.lcssa204301, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !24, !noalias !111
  br label %.thread309

bb.ab:                                            ; preds = %bb.aa
  %i.ej = add i32 %.sroa.0158.0222, -1
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.lcssa204301, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !24, !noalias !111
  br label %bb.ac

.thread309:                                       ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %.thread313
  %storemerge.i113312 = phi i32 [ %i.ei, %.thread313 ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 3 uses
  %i.en = icmp eq i32 %i.dv, %storemerge.i109
  %i.eo = icmp eq i32 %i.dv, %storemerge.i113312
  %or.cond = select i1 %i.en, i1 true, i1 %i.eo
  %i.ep = icmp eq i32 %storemerge.i109, %storemerge.i113312
  %or.cond193 = select i1 %or.cond, i1 true, i1 %i.ep
  br i1 %or.cond193, label %.critedge, label %bb.ac

.critedge:                                        ; preds = %.thread309
  %i.eq = load i32, ptr %i.cm, align 4, !tbaa !112
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %i.cm, align 4, !tbaa !112
  %.pre272 = add i32 %.sroa.0158.0222, 3
  br label %.loopexit

bb.ac:                                            ; preds = %bb.ab, %.thread309
  %storemerge.i113311 = phi i32 [ %storemerge.i113312, %.thread309 ], [ %i.em, %bb.ab ] ; 2 uses
  %i.es = zext i32 %storemerge.i113311 to i64     ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !26 ; 4 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph215.preheader, label %.thread.thread

.lr.ph215.preheader:                              ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.0308, i64 %i.es
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !26
  %i.ey = sext i32 %i.ex to i64
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %bb.ah
  %indvars.iv236 = phi i64 [ %i.ey, %.lr.ph215.preheader ], [ %indvars.iv.next237, %bb.ah ] ; 4 uses
  %.037213 = phi i32 [ 0, %.lr.ph215.preheader ], [ %i.fq, %bb.ah ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.0, i64 %indvars.iv236 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !24 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %.thread.thread, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph215
  %i.fc = icmp eq i32 %i.fa, %storemerge.i109
  br i1 %i.fc, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !54 ; 5 uses
  %i.ff = icmp eq i32 %i.fe, -1
  br i1 %i.ff, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit120, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = zext i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.lcssa204301, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !24, !noalias !113
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit120

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit120: ; preds = %bb.af, %bb.ae
  %storemerge.i119 = phi i32 [ %i.fi, %bb.af ], [ -1, %bb.ae ]
  %i.fj = icmp eq i32 %i.dv, %storemerge.i119
  br i1 %i.fj, label %bb.ah, label %.preheader

.preheader:                                       ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit120
  %.036331 = add nuw nsw i32 %.037213, 1          ; 2 uses
  %i.fk = icmp slt i32 %.036331, %i.eu
  br i1 %i.fk, label %.lr.ph334, label %.thread

bb.ag:                                            ; preds = %.lr.ph334
  %.036 = add nuw nsw i32 %.036333, 1             ; 2 uses
  %i.fl = icmp slt i32 %.036, %i.eu
  br i1 %i.fl, label %.lr.ph334, label %.thread, !llvm.loop !103

.lr.ph334:                                        ; preds = %.preheader, %bb.ag
  %.036333 = phi i32 [ %.036, %bb.ag ], [ %.036331, %.preheader ]
  %indvars.iv241332 = phi i64 [ %indvars.iv.next242, %bb.ag ], [ %indvars.iv236, %.preheader ] ; 3 uses
  %indvars.iv.next242 = add nsw i64 %indvars.iv241332, 1 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.0, i64 %indvars.iv.next242 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.0, i64 %indvars.iv241332
  %i.fo = load <2 x i32>, ptr %i.fm, align 4, !tbaa !26
  %.val94 = load i32, ptr %i.fm, align 4, !tbaa !24
  store <2 x i32> %i.fo, ptr %i.fn, align 4, !tbaa !26
  %i.fp = icmp eq i32 %.val94, -1
  br i1 %i.fp, label %..thread_crit_edge335, label %bb.ag, !llvm.loop !103

bb.ah:                                            ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit120, %bb.ad
  %i.fq = add nuw nsw i32 %.037213, 1             ; 2 uses
  %indvars.iv.next237 = add nsw i64 %indvars.iv236, 1
  %exitcond239.not = icmp eq i32 %i.fq, %i.eu
  br i1 %exitcond239.not, label %.thread.thread, label %.lr.ph215, !llvm.loop !104

..thread_crit_edge335:                            ; preds = %.lr.ph334
  br label %.thread, !llvm.loop !103

.thread:                                          ; preds = %bb.ag, %..thread_crit_edge335, %.preheader
  %indvars.iv241.lcssa = phi i64 [ %indvars.iv236, %.preheader ], [ %indvars.iv241332, %..thread_crit_edge335 ], [ %indvars.iv.next242, %bb.ag ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.0, i64 %indvars.iv241.lcssa
  store i32 -1, ptr %i.fr, align 4, !tbaa !24
  %i.fs = icmp eq i32 %i.fe, -1
  br i1 %i.fs, label %.thread.thread, label %bb.ak

.thread.thread:                                   ; preds = %bb.ah, %.lr.ph215, %bb.ac, %.thread
  %i.ft = zext i32 %storemerge.i109 to i64        ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !26 ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph221.preheader, label %.loopexit

.lr.ph221.preheader:                              ; preds = %.thread.thread
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.0308, i64 %i.ft
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !26
  %i.fz = sext i32 %i.fy to i64
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %bb.aj
  %indvars.iv244 = phi i64 [ %i.fz, %.lr.ph221.preheader ], [ %indvars.iv.next245, %bb.aj ] ; 3 uses
  %.0219 = phi i32 [ 0, %.lr.ph221.preheader ], [ %i.gf, %bb.aj ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0179.0, i64 %indvars.iv244
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE6resizeEm:bb.a
  tail call void @llvm.assume(i1 %i.q)
  %.not37.i = icmp ult i64 %i.n, %i.i
  br i1 %.not37.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !24
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #14 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !24
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %i.aa = add i64 %i.d, -4
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 44
  %i.ae = sub i64 %i.e, %i.z
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !24
  %wide.load13 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !24
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !24
  store <4 x i32> %wide.load13, ptr %i.ak, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.i.preheader15:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader15 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader15 ] ; 2 uses
  %i.am = load i32, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !24
  store i32 %i.am, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !242

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.c, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i
  %i.ap = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #15
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i: ; preds = %bb.e, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !67
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.at, ptr %i.a, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit46.i, %_ZSt27__uninitialized_default_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE14_M_fill_assignEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #14 ; 5 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %min.iters.check59 = icmp ult i64 %1, 8
  br i1 %min.iters.check59, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %n.vec61 = and i64 %1, 2305843009213693944      ; 3 uses
  %i.l = shl nuw nsw i64 %n.vec61, 2
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %i.n = and i64 %1, 7
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %i.o = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %broadcast.splat63, ptr %next.gep66, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat63, ptr %i.p, align 4, !tbaa !24
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.q, label %middle.block68, label %vector.body64, !llvm.loop !243

middle.block68:                                   ; preds = %vector.body64
  %cmp.n69 = icmp eq i64 %1, %n.vec61
  br i1 %cmp.n69, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %middle.block68
  %.014.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.m, %middle.block68 ]
  %.01113.i.i.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.n, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01113.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.01113.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i32 %.pre.i.i.i.i.i.i, ptr %.014.i.i.i.i.i.i, align 4, !tbaa !24
  %i.r = add i64 %.01113.i.i.i.i.i.i, -1          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !244

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block68
  %.lcssa = phi ptr [ %i.m, %middle.block68 ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !22
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !27
  store ptr %i.t, ptr %i.a, align 8, !tbaa !67
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #15
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 7 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %.pre.i.i.i.i = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.ab = add i64 %i.x, -4
  %i.ac = sub i64 %i.ab, %i.e                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.ac, 28
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec34 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.af = shl i64 %n.vec34, 2
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.af
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.ah = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %broadcast.splat36, ptr %next.gep39, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat36, ptr %i.ai, align 4, !tbaa !24
  %index.next40 = add nuw i64 %index38, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.aj, label %middle.block41, label %vector.body37, !llvm.loop !245

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.ae, %n.vec34
  br i1 %cmp.n42, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block41
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i ], [ %i.ag, %middle.block41 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.06.i.i.i.i, align 4, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, label %.lr.ph.i.i.i.i, !llvm.loop !246

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a: ; preds = %.lr.ph.i.i.i.i, %middle.block41, %bb.f
  %3 = sub i64 %1, %i.z                           ; 5 uses
  %.pre.i.i.i.i13 = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %min.iters.check45 = icmp ult i64 %3, 8
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i14.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a
  %n.vec47 = and i64 %3, -8                       ; 3 uses
  %i.al = shl i64 %n.vec47, 2
  %i.am = getelementptr i8, ptr %i.w, i64 %i.al   ; 2 uses
  %i.an = and i64 %3, 7
  %broadcast.splatinsert48 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i13, i64 0
  %broadcast.splat49 = shufflevector <4 x i32> %broadcast.splatinsert48, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %i.ao = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %i.w, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %broadcast.splat49, ptr %next.gep52, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat49, ptr %i.ap, align 4, !tbaa !24
  %index.next53 = add nuw i64 %index51, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.aq, label %middle.block54, label %vector.body50, !llvm.loop !247

middle.block54:                                   ; preds = %vector.body50
  %cmp.n55 = icmp eq i64 %3, %n.vec47
  br i1 %cmp.n55, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14.preheader

.lr.ph.i.i.i.i14.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, %middle.block54
  %.014.i.i.i.i.ph = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a ], [ %i.am, %middle.block54 ]
  %.01113.i.i.i.i.ph = phi i64 [ %3, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a ], [ %i.an, %middle.block54 ]
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14.preheader, %.lr.ph.i.i.i.i14
  %.014.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i14 ], [ %.014.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i14 ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ]
  store i32 %.pre.i.i.i.i13, ptr %.014.i.i.i.i, align 4, !tbaa !24
  %i.ar = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i15 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i15, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14, !llvm.loop !248

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i14, %middle.block54
  %.lcssa30 = phi ptr [ %i.am, %middle.block54 ], [ %i.as, %.lr.ph.i.i.i.i14 ]
  store ptr %.lcssa30, ptr %i.v, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %1, 0
  br i1 %i.at, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i16

.lr.ph.preheader.i.i.i.i16:                       ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.pre.i.i.i.i17 = load i32, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.av = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i16
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.c, i64 %i.ay
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i17, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !24
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18.preheader

.lr.ph.i.i.i.i18.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i16, %middle.block
  %.06.i.i.i.i19.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i16 ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %.lr.ph.i.i.i.i18.preheader, %.lr.ph.i.i.i.i18
  %.06.i.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i18 ], [ %.06.i.i.i.i19.ph, %.lr.ph.i.i.i.i18.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i17, ptr %.06.i.i.i.i19, align 4, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 4 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bd, %i.au
  br i1 %.not.i.i.i.i20, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18, !llvm.loop !250

_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i18, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.au, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i18 ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE14_M_fill_assignEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = load ptr, ptr %0, align 8, !tbaa !31     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #14 ; 5 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %2, align 4, !tbaa !54 ; 2 uses
  %min.iters.check59 = icmp ult i64 %1, 8
  br i1 %min.iters.check59, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %n.vec61 = and i64 %1, 2305843009213693944      ; 3 uses
  %i.l = shl nuw nsw i64 %n.vec61, 2
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %i.n = and i64 %1, 7
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %i.o = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %broadcast.splat63, ptr %next.gep66, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat63, ptr %i.p, align 4, !tbaa !54
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.q, label %middle.block68, label %vector.body64, !llvm.loop !251

middle.block68:                                   ; preds = %vector.body64
  %cmp.n69 = icmp eq i64 %1, %n.vec61
  br i1 %cmp.n69, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %middle.block68
  %.014.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.m, %middle.block68 ]
  %.01113.i.i.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.n, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01113.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.01113.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i32 %.pre.i.i.i.i.i.i, ptr %.014.i.i.i.i.i.i, align 4, !tbaa !54
  %i.r = add i64 %.01113.i.i.i.i.i.i, -1          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !252

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block68
  %.lcssa = phi ptr [ %i.m, %middle.block68 ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !31
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !30
  store ptr %i.t, ptr %i.a, align 8, !tbaa !66
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #15
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 7 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %.pre.i.i.i.i = load i32, ptr %2, align 4, !tbaa !54 ; 2 uses
  %i.ab = add i64 %i.x, -4
  %i.ac = sub i64 %i.ab, %i.e                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.ac, 28
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec34 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.af = shl i64 %n.vec34, 2
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.af
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.ah = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %broadcast.splat36, ptr %next.gep39, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat36, ptr %i.ai, align 4, !tbaa !54
  %index.next40 = add nuw i64 %index38, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.aj, label %middle.block41, label %vector.body37, !llvm.loop !253

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.ae, %n.vec34
  br i1 %cmp.n42, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block41
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i ], [ %i.ag, %middle.block41 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.06.i.i.i.i, align 4, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, label %.lr.ph.i.i.i.i, !llvm.loop !254

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a: ; preds = %.lr.ph.i.i.i.i, %middle.block41, %bb.f
  %3 = sub i64 %1, %i.z                           ; 5 uses
  %.pre.i.i.i.i13 = load i32, ptr %2, align 4, !tbaa !54 ; 2 uses
  %min.iters.check45 = icmp ult i64 %3, 8
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i14.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a
  %n.vec47 = and i64 %3, -8                       ; 3 uses
  %i.al = shl i64 %n.vec47, 2
  %i.am = getelementptr i8, ptr %i.w, i64 %i.al   ; 2 uses
  %i.an = and i64 %3, 7
  %broadcast.splatinsert48 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i13, i64 0
  %broadcast.splat49 = shufflevector <4 x i32> %broadcast.splatinsert48, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %i.ao = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %i.w, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %broadcast.splat49, ptr %next.gep52, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat49, ptr %i.ap, align 4, !tbaa !54
  %index.next53 = add nuw i64 %index51, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.aq, label %middle.block54, label %vector.body50, !llvm.loop !255

middle.block54:                                   ; preds = %vector.body50
  %cmp.n55 = icmp eq i64 %3, %n.vec47
  br i1 %cmp.n55, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14.preheader

.lr.ph.i.i.i.i14.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, %middle.block54
  %.014.i.i.i.i.ph = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a ], [ %i.am, %middle.block54 ]
  %.01113.i.i.i.i.ph = phi i64 [ %3, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a ], [ %i.an, %middle.block54 ]
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14.preheader, %.lr.ph.i.i.i.i14
  %.014.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i14 ], [ %.014.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i14 ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ]
  store i32 %.pre.i.i.i.i13, ptr %.014.i.i.i.i, align 4, !tbaa !54
  %i.ar = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i15 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i15, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14, !llvm.loop !256

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i14, %middle.block54
  %.lcssa30 = phi ptr [ %i.am, %middle.block54 ], [ %i.as, %.lr.ph.i.i.i.i14 ]
  store ptr %.lcssa30, ptr %i.v, align 8, !tbaa !30
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %1, 0
  br i1 %i.at, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i16

.lr.ph.preheader.i.i.i.i16:                       ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.pre.i.i.i.i17 = load i32, ptr %2, align 4, !tbaa !54 ; 2 uses
  %i.av = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i16
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.c, i64 %i.ay
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i17, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !54
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18.preheader

.lr.ph.i.i.i.i18.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i16, %middle.block
  %.06.i.i.i.i19.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i16 ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %.lr.ph.i.i.i.i18.preheader, %.lr.ph.i.i.i.i18
  %.06.i.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i18 ], [ %.06.i.i.i.i19.ph, %.lr.ph.i.i.i.i18.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i17, ptr %.06.i.i.i.i19, align 4, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 4 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bd, %i.au
  br i1 %.not.i.i.i.i20, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18, !llvm.loop !258

_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i18, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.au, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i18 ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !30
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !26     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !72

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !26
  store i32 %i.s, ptr %i.d, align 4, !tbaa !26
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !32
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !72

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !26
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !26
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !26
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !259

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !260

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
end_hunk_1
