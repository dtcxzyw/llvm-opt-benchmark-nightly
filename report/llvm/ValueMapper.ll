Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueMapper?download=true
inline.NumInlined: 2613
inline.NumDeleted: 1540
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_16Mapper14remapDbgRecordERN4llvm9DbgRecordE:bb.a
  br label %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.pre-phi5.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.q ], [ %i.bb, %bb.p ] ; 2 uses
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.q ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i, %bb.p ]
  %i.bf = phi ptr [ %i.be, %bb.q ], [ %i.bb, %bb.p ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !133
  store ptr %i.bh, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !102
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i.i.i.i.i.i.i.i, 0
  %.not.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.ba, %.not3.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre-phi5.i.i.i.i.i.i.i.i.i, i64 144
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre-phi5.i.i.i.i.i.i.i.i.i, i64 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = or disjoint i64 %i.bm, 4
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bn, i64 %i.bk ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i, %i.al
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_17DbgVariableRecord20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !283

_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_17DbgVariableRecord20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %_ZN4llvm17DbgVariableRecord20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bo = trunc i64 %i.av to i32
  %i.bp = add i32 %.ph.i, %i.bo                   ; 3 uses
  store i32 %i.bp, ptr %i.ah, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bq, ptr %6, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.br, align 8, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 4, ptr %i.bs, align 4, !tbaa !46
  %i.bt = zext i32 %i.bp to i64
  %.idx = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx
  %.not4463 = icmp eq i32 %i.bp, 0
  br i1 %.not4463, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !49 ; 3 uses
  %.pre80 = load i32, ptr %i.br, align 8, !tbaa !49 ; 6 uses
  %.pre85.pre.pre.pre = load ptr, ptr %6, align 8, !tbaa !45 ; 9 uses
  %.not.i = icmp eq i32 %.pre, %.pre80
  br i1 %.not.i, label %bb.r, label %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread59

bb.r:                                             ; preds = %._crit_edge
  %.not.not.i.i.i.i.i = icmp eq i32 %.pre80, 0
  br i1 %.not.not.i.i.i.i.i, label %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread, label %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit

_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit: ; preds = %bb.r
  %i.bv = zext i32 %.pre80 to i64
  %.idx.i = shl nuw nsw i64 %i.bv, 3
  %i.bw = load ptr, ptr %4, align 8, !tbaa !45
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bw, ptr %.pre85.pre.pre.pre, i64 %.idx.i)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread, label %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread59

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_17DbgVariableRecord20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %.03964 = phi ptr [ %i.cg, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit ], [ %i.ax, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_17DbgVariableRecord20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit ] ; 2 uses
  %i.bx = load ptr, ptr %.03964, align 8, !tbaa !102
  %i.by = call fastcc noundef ptr @_ZN12_GLOBAL__N_16Mapper8mapValueEPKN4llvm5ValueE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %i.bx) ; 2 uses
  %i.bz = load i32, ptr %i.br, align 8, !tbaa !49 ; 2 uses
  %i.ca = load i32, ptr %i.bs, align 4, !tbaa !46
  %.not.i54 = icmp ult i32 %i.bz, %i.ca
  br i1 %.not.i54, label %bb.t, label %bb.s, !prof !56

bb.s:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.by)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cb = zext i32 %i.bz to i64
  %i.cc = load ptr, ptr %6, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  store ptr %i.by, ptr %i.cd, align 1
  %i.ce = load i32, ptr %i.br, align 8, !tbaa !49
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.br, align 8, !tbaa !49
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit: ; preds = %bb.s, %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %.03964, i64 8 ; 2 uses
  %.not44 = icmp eq ptr %i.cg, %i.bu
  br i1 %.not44, label %._crit_edge, label %.lr.ph

_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread59: ; preds = %._crit_edge, %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit
  br i1 %i.u, label %.critedge, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread59
  %i.ch = zext i32 %.pre80 to i64                 ; 2 uses
  %.idx4.i = shl nuw nsw i64 %i.ch, 3             ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre85.pre.pre.pre, i64 %.idx4.i
  %i.cj = lshr i64 %i.ch, 2                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.cj, 0
  br i1 %.not.i55, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.u
  %i.ck = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %.pre85.pre.pre.pre, i64 %i.ck
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.preheader.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %i.cx, %bb.y ], [ %i.cj, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02940.i.i.i.i = phi ptr [ %i.cw, %bb.y ], [ %.pre85.pre.pre.pre, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.cl = load ptr, ptr %.02940.i.i.i.i, align 8, !tbaa !102
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !102
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !102
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit119, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !102
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit121, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 32
  %i.cx = add nsw i64 %.041.i.i.i.i, -1
  %i.cy = icmp sgt i64 %.041.i.i.i.i, 1
  br i1 %i.cy, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !284

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.y
  %i.cz = and i32 %.pre80, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.u
  %.pre-phi47.i.i.i.i = phi i32 [ %i.cz, %._crit_edge.loopexit.i.i.i.i ], [ %.pre80, %bb.u ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.pre85.pre.pre.pre, %bb.u ] ; 5 uses
  switch i32 %.pre-phi47.i.i.i.i, label %.critedge [
    i32 3, label %bb.z
    i32 2, label %bb.ab
    i32 1, label %bb.ad
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.da = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !102
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.dc, %bb.aa ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.dd = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !102
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.df, %bb.ac ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dg = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !102
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit, label %.critedge

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit119: ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit121: ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit119, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit121, %bb.z, %bb.ab, %bb.ad
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.ab ], [ %.029.lcssa.i.i.i.i, %bb.z ], [ %.2.i.i.i.i, %bb.ad ], [ %i.dk, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit121 ], [ %i.dj, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit119 ], [ %i.di, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02940.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not62 = icmp eq ptr %.028.i.i.i.i, %i.ci
  br i1 %.not62, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit
  call void @_ZN4llvm17DbgVariableRecord15setKillLocationEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #20
  %.pre84.a = load ptr, ptr %6, align 8, !tbaa !45
  br label %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread

.critedge:                                        ; preds = %bb.ad, %._crit_edge.i.i.i.i, %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread59, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_5ValueELj4EEEDnEEbOT_RKT0_.exit
  %.not75 = icmp eq i32 %.pre, 0
  br i1 %.not75, label %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread, label %.lr.ph74

.lr.ph74:                                         ; preds = %.critedge, %bb.ag
  %i.dl = phi i32 [ %i.dp, %bb.ag ], [ %.pre, %.critedge ]
  %i.dm = phi ptr [ %i.dq, %bb.ag ], [ %.pre85.pre.pre.pre, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %.critedge ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !102 ; 2 uses
  %.not45 = icmp eq ptr %i.do, null
  br i1 %.not45, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph74
  %7 = trunc nuw i64 %indvars.iv to i32
  call void @_ZN4llvm17DbgVariableRecord25replaceVariableLocationOpEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %7, ptr noundef nonnull %i.do) #20
  %.pre81 = load ptr, ptr %6, align 8, !tbaa !45
  %.pre83 = load i32, ptr %i.ah, align 8, !tbaa !49
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph74, %bb.af
  %i.dp = phi i32 [ %i.dl, %.lr.ph74 ], [ %.pre83, %bb.af ] ; 2 uses
  %i.dq = phi ptr [ %i.dm, %.lr.ph74 ], [ %.pre81, %bb.af ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %8 = zext i32 %i.dp to i64
  %9 = icmp samesign ult i64 %indvars.iv.next, %8
  br i1 %9, label %.lr.ph74, label %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread, !llvm.loop !285

_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread: ; preds = %bb.ag, %.critedge, %bb.r, %bb.ae, %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit
  %i.dr = phi ptr [ %.pre85.pre.pre.pre, %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit ], [ %.pre85.pre.pre.pre, %.critedge ], [ %.pre85.pre.pre.pre, %bb.r ], [ %.pre84.a, %bb.ae ], [ %i.dq, %bb.ag ] ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bq
  br i1 %i.ds, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread
  call void @free(ptr noundef %i.dr) #20
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit:  ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_17DbgVariableRecord20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_17DbgVariableRecord20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit.thread, %_ZNK4llvm15SmallVectorImplIPNS_5ValueEEeqERKS3_.exit.thread, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.dt = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ag
  br i1 %i.du, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit56, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit
  call void @free(ptr noundef %i.dt) #20
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit56

_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit56: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm14DbgLabelRecord8setLabelEPNS_7DILabelE.exit, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11ValueMapper19remapDbgRecordRangeEPNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(none) %1, ptr %2, ptr nofree readnone captures(address) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %.not10 = icmp eq ptr %2, %3
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.06.011 = phi ptr [ %i.c, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  tail call fastcc void @_ZN12_GLOBAL__N_16Mapper14remapDbgRecordERN4llvm9DbgRecordE(ptr noundef nonnull align 8 dereferenceable(368) %i.a, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.06.011)
  tail call fastcc void @_ZN12_GLOBAL__N_114FlushingMapperD2Ev(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !170  ; 2 uses
  %.not = icmp eq ptr %i.c, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11ValueMapper13remapFunctionERNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  tail call fastcc void @_ZN12_GLOBAL__N_16Mapper13remapFunctionERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(368) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %1)
  tail call fastcc void @_ZN12_GLOBAL__N_114FlushingMapperD2Ev(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_16Mapper13remapFunctionERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.217", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %.pre.i.i = and i32 %i.b, 268435455
  %.pre1.i.i = zext nneg i32 %.pre.i.i to i64
  br label %_ZN4llvm4User8operandsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 268435455
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [32 x i8], ptr %1, i64 %i.h
  br label %_ZN4llvm4User8operandsEv.exit

_ZN4llvm4User8operandsEv.exit:                    ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.e, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.idx = shl nuw nsw i64 %.pre-phi2.i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not68 = icmp eq i64 %.pre-phi2.i.i, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm3UseaSEPNS_5ValueE.exit, %_ZN4llvm4User8operandsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.n, align 4, !tbaa !46
  call void @_ZNK4llvm5Value14getAllMetadataERNS_15SmallVectorImplISt4pairIjPNS_6MDNodeEEEE(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @_ZN4llvm5Value13clearMetadataEv(ptr noundef nonnull align 8 dereferenceable(60) %1) #20
  %i.o = load ptr, ptr %2, align 8, !tbaa !45     ; 3 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !49   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i = shl nuw nsw i64 %i.q, 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not12.i = icmp eq i32 %i.p, 0
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !45
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %i.s = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.o, %._crit_edge ] ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.l
  br i1 %i.t, label %_ZN12_GLOBAL__N_16Mapper25remapGlobalObjectMetadataERN4llvm12GlobalObjectE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.s) #20
  br label %_ZN12_GLOBAL__N_16Mapper25remapGlobalObjectMetadataERN4llvm12GlobalObjectE.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.013.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %._crit_edge ] ; 3 uses
  %i.u = load i32, ptr %.013.i, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.x = call fastcc noundef ptr @_ZN12_GLOBAL__N_16Mapper11mapMetadataEPKN4llvm8MetadataE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %i.w)
  call void @_ZN4llvm5Value11addMetadataEjRNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN12_GLOBAL__N_16Mapper25remapGlobalObjectMetadataERN4llvm12GlobalObjectE.exit: ; preds = %._crit_edge.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %.not37 = icmp eq ptr %i.aa, null
  br i1 %.not37, label %.loopexit, label %bb.l

.lr.ph:                                           ; preds = %_ZN4llvm4User8operandsEv.exit, %_ZN4llvm3UseaSEPNS_5ValueE.exit
  %.069 = phi ptr [ %i.ao, %_ZN4llvm3UseaSEPNS_5ValueE.exit ], [ %i.j, %_ZN4llvm4User8operandsEv.exit ] ; 7 uses
  %i.ab = load ptr, ptr %.069, align 8, !tbaa !71 ; 2 uses
  %.not39 = icmp eq ptr %i.ab, null
  br i1 %.not39, label %_ZN4llvm3UseaSEPNS_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ac = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_16Mapper8mapValueEPKN4llvm5ValueE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull %i.ab) ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.069, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.069, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !93
  %.not2.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not2.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !91
  store ptr null, ptr %i.af, align 8, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.ad, align 8, !tbaa !91
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i:          ; preds = %bb.h, %bb.e
  store ptr %i.ac, ptr %.069, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN4llvm3UseaSEPNS_5ValueE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i
  %i.ai = load i8, ptr %i.ac, align 8, !tbaa !81
  %i.aj = icmp ugt i8 %i.ai, 10
  br i1 %i.aj, label %bb.j, label %_ZN4llvm3UseaSEPNS_5ValueE.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !93 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.069, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !92
  %.not.i.i.i.i40 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i40, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !91
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i:          ; preds = %bb.k, %bb.j
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !91
  store ptr %.069, ptr %i.ak, align 8, !tbaa !93
  br label %_ZN4llvm3UseaSEPNS_5ValueE.exit

_ZN4llvm3UseaSEPNS_5ValueE.exit:                  ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i, %bb.i, %_ZN4llvm3Use14removeFromListEv.exit.i.i, %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.069, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.k
end_hunk_0
