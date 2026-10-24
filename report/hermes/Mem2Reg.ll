Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Mem2Reg?download=true
inline.NumInlined: 2091
inline.NumDeleted: 876
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  br i1 %i.bb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i, label %.lr.ph.i.i.i.i, !prof !37

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.f
  %i.bc = phi ptr [ %i.bm, %bb.f ], [ %i.ba, %bb.d ] ; 2 uses
  %i.bd = phi ptr [ %i.bl, %bb.f ], [ %i.az, %bb.d ] ; 2 uses
  %.02747.i.i.i.i = phi i32 [ %.027.i.i.i.i, %bb.f ], [ %.02744.i.i.i.i, %bb.d ]
  %.046.i.i.i.i = phi i32 [ %i.bi, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.02945.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.be = icmp eq ptr %i.bc, inttoptr (i64 -8 to ptr)
  br i1 %i.be, label %bb.e, label %bb.f, !prof !29

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.02945.i.i.i.i, null
  %i.bf = select i1 %.not.i.i.i.i, ptr %i.bd, ptr %.02945.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bg = icmp eq ptr %i.bc, inttoptr (i64 -16 to ptr)
  %i.bh = icmp eq ptr %.02945.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.bg, i1 %i.bh, i1 false
  %spec.select.i.i.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.bd, ptr %.02945.i.i.i.i
  %i.bi = add i32 %.046.i.i.i.i, 1
  %i.bj = add i32 %.046.i.i.i.i, %.02747.i.i.i.i
  %.027.i.i.i.i = and i32 %i.bj, %i.ax            ; 2 uses
  %i.bk = zext i32 %.027.i.i.i.i to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.bk ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28 ; 2 uses
  %i.bn = icmp eq ptr %i.ar, %i.bm
  br i1 %i.bn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i, label %.lr.ph.i.i.i.i, !prof !38, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i: ; preds = %bb.e, %.lr.ph.i
  %.sink.i.i.i.i = phi ptr [ %i.bf, %bb.e ], [ null, %.lr.ph.i ]
  %i.bo = load i32, ptr %i.w, align 8, !tbaa !39  ; 3 uses
  %i.bp = shl i32 %i.bo, 2
  %i.bq = add i32 %i.bp, 4
  %i.br = mul i32 %i.ap, 3
  %.not.i.i4.i.i = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i.i4.i.i, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i
  %i.bs = shl i32 %i.ap, 1
  br label %.sink.split.i.i.i.i

bb.h:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i
  %i.bt = load i32, ptr %i.x, align 4, !tbaa !40
  %.neg.i.i.i.i = xor i32 %i.bo, -1
  %.neg12.i.i.i.i = add i32 %i.ap, %.neg.i.i.i.i
  %i.bu = sub i32 %.neg12.i.i.i.i, %i.bt
  %i.bv = lshr i32 %i.ap, 3
  %.not10.i.i.i.i = icmp ugt i32 %i.bu, %i.bv
  br i1 %.not10.i.i.i.i, label %bb.l, label %.sink.split.i.i.i.i, !prof !29

.sink.split.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %.sink.i.i5.i.i = phi i32 [ %i.bs, %bb.g ], [ %i.ap, %bb.h ]
  call void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %27, i32 noundef %.sink.i.i5.i.i)
  %i.bw = load ptr, ptr %27, align 8, !tbaa !35   ; 2 uses
  %i.bx = load i32, ptr %i.v, align 8, !tbaa !36  ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i.i.i
  %i.bz = load ptr, ptr %.sroa.01.012.i, align 8, !tbaa !28 ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = lshr i32 %i.cb, 4
  %i.cd = lshr i32 %i.cb, 9
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = add i32 %i.bx, -1                       ; 2 uses
  %.02744.i.i.i = and i32 %i.ce, %i.cf            ; 2 uses
  %i.cg = zext nneg i32 %.02744.i.i.i to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.cg ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !28 ; 2 uses
  %i.cj = icmp eq ptr %i.bz, %i.ci
  br i1 %i.cj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !37

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.k
  %i.ck = phi ptr [ %i.cu, %bb.k ], [ %i.ci, %bb.i ] ; 2 uses
  %i.cl = phi ptr [ %i.ct, %bb.k ], [ %i.ch, %bb.i ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.k ], [ %.02744.i.i.i, %bb.i ]
  %.046.i.i.i = phi i32 [ %i.cq, %bb.k ], [ 1, %bb.i ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.k ], [ null, %bb.i ] ; 4 uses
  %i.cm = icmp eq ptr %i.ck, inttoptr (i64 -8 to ptr)
  br i1 %i.cm, label %bb.j, label %bb.k, !prof !29

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.cn = select i1 %.not.i.i.i, ptr %i.cl, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.co = icmp eq ptr %i.ck, inttoptr (i64 -16 to ptr)
  %i.cp = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.co, i1 %i.cp, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.cl, ptr %.02945.i.i.i
  %i.cq = add i32 %.046.i.i.i, 1
  %i.cr = add i32 %.046.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.cr, %i.cf              ; 2 uses
  %i.cs = zext i32 %.027.i.i.i to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.cs ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !28 ; 2 uses
  %i.cv = icmp eq ptr %i.bz, %i.cu
  br i1 %i.cv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !38, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %.sink.split.i.i.i.i
  %.sink.i.i.i = phi ptr [ %i.cn, %bb.j ], [ null, %.sink.split.i.i.i.i ], [ %i.ch, %bb.i ], [ %i.ct, %bb.k ]
  %.pre.i.i.i = load i32, ptr %i.w, align 8, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, %bb.h
  %i.cw = phi ptr [ %.sink.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i ], [ %.sink.i.i.i.i, %bb.h ] ; 4 uses
  %i.cx = phi i32 [ %.pre.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i ], [ %i.bo, %bb.h ]
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.w, align 8, !tbaa !39
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !28
  %i.da = icmp eq ptr %i.cz, inttoptr (i64 -8 to ptr)
  br i1 %i.da, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = load i32, ptr %i.x, align 4, !tbaa !40
  %i.dc = add i32 %i.db, -1
  store i32 %i.dc, ptr %i.x, align 4, !tbaa !40
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i: ; preds = %bb.m, %bb.l
  %i.dd = load ptr, ptr %.sroa.01.012.i, align 8, !tbaa !28
  store ptr %i.dd, ptr %i.cw, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 0, ptr %i.de, align 8, !tbaa !19
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.cw, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i ], [ %i.az, %bb.d ], [ %i.bl, %bb.f ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.ai, ptr %i.df, align 4, !tbaa !19
  %i.dg = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.dh = load i32, ptr %i.j, align 4, !tbaa !27
  %.not.i9.i = icmp ult i32 %i.dg, %i.dh
  br i1 %.not.i9.i, label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit11.i, label %bb.n, !prof !29

bb.n:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 8) #10
  %.pre.i10.i = load i32, ptr %i.i, align 8, !tbaa !26
  br label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit11.i

_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit11.i: ; preds = %bb.n, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i
  %i.di = phi i32 [ %.pre.i10.i, %bb.n ], [ %i.dg, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i ]
  %i.dj = load ptr, ptr %25, align 8, !tbaa !25
  %i.dk = zext i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i64, ptr %.sroa.01.012.i, align 8
  store i64 %i.dm, ptr %i.dl, align 1
  %i.dn = load i32, ptr %i.i, align 8, !tbaa !26
  %i.do = add i32 %i.dn, 1                        ; 2 uses
  store i32 %i.do, ptr %i.i, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, %i.an
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge15.i:                                  ; preds = %._crit_edge.i, %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %i.dq = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.h
  br i1 %i.dr, label %_ZL20computeDomTreeLevelsPN6hermes13DominanceInfoERN4llvh8DenseMapIPNS2_15DomTreeNodeBaseINS_10BasicBlockEEEjNS2_12DenseMapInfoIS7_EENS2_6detail12DenseMapPairIS7_jEEEE.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge15.i
  call void @free(ptr noundef %i.dq) #10
  br label %_ZL20computeDomTreeLevelsPN6hermes13DominanceInfoERN4llvh8DenseMapIPNS2_15DomTreeNodeBaseINS_10BasicBlockEEEjNS2_12DenseMapInfoIS7_EENS2_6detail12DenseMapPairIS7_jEEEE.exit

_ZL20computeDomTreeLevelsPN6hermes13DominanceInfoERN4llvh8DenseMapIPNS2_15DomTreeNodeBaseINS_10BasicBlockEEEjNS2_12DenseMapInfoIS7_EENS2_6detail12DenseMapPairIS7_jEEEE.exit: ; preds = %._crit_edge15.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #10
  %i.ds = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %i.ds, ptr %28, align 8, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  store i32 0, ptr %i.dt, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %28, i64 12
  store i32 16, ptr %i.du, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #10
  %i.dv = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.dv, ptr %29, align 8, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  store i32 0, ptr %i.dw, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %29, i64 12
  store i32 16, ptr %i.dx, align 4, !tbaa !27
  call fastcc void @_ZL23collectStackAllocationsPN6hermes8FunctionEPNS_13DominanceInfoERN4llvh15SmallVectorImplIPNS_14AllocStackInstEEES9_(ptr noundef %1, ptr noundef %26, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %.sroa.0461.0631 = load ptr, ptr %i.dy, align 8, !tbaa !43 ; 3 uses
  %.not501632 = icmp eq ptr %.sroa.0461.0631, %i.dz
  br i1 %.not501632, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL20computeDomTreeLevelsPN6hermes13DominanceInfoERN4llvh8DenseMapIPNS2_15DomTreeNodeBaseINS_10BasicBlockEEEjNS2_12DenseMapInfoIS7_EENS2_6detail12DenseMapPairIS7_jEEEE.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 11 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 7 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 10 uses
  %i.en = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 10 uses
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 3 uses
  br label %bb.p

.preheader.loopexit:                              ; preds = %_ZL15eliminateStoresPN6hermes10BasicBlockEN4llvh8ArrayRefIPNS_14AllocStackInstEEE.exit
  %.sroa.0456.0635.pre = load ptr, ptr %i.dy, align 8, !tbaa !43
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZL20computeDomTreeLevelsPN6hermes13DominanceInfoERN4llvh8DenseMapIPNS2_15DomTreeNodeBaseINS_10BasicBlockEEEjNS2_12DenseMapInfoIS7_EENS2_6detail12DenseMapPairIS7_jEEEE.exit
  %.sroa.0456.0635 = phi ptr [ %.sroa.0461.0631, %_ZL20computeDomTreeLevelsPN6hermes13DominanceInfoERN4llvh8DenseMapIPNS2_15DomTreeNodeBaseINS_10BasicBlockEEEjNS2_12DenseMapInfoIS7_EENS2_6detail12DenseMapPairIS7_jEEEE.exit ], [ %.sroa.0456.0635.pre, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ false, %_ZL20computeDomTreeLevelsPN6hermes13DominanceInfoERN4llvh8DenseMapIPNS2_15DomTreeNodeBaseINS_10BasicBlockEEEjNS2_12DenseMapInfoIS7_EENS2_6detail12DenseMapPairIS7_jEEEE.exit ], [ %i.anx, %.preheader.loopexit ] ; 2 uses
  %.not502636 = icmp eq ptr %.sroa.0456.0635, %i.dz
  br i1 %.not502636, label %._crit_edge, label %.lr.ph639

.lr.ph639:                                        ; preds = %.preheader
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 3 uses
  br label %bb.et

bb.p:                                             ; preds = %.lr.ph, %_ZL15eliminateStoresPN6hermes10BasicBlockEN4llvh8ArrayRefIPNS_14AllocStackInstEEE.exit
  %.sroa.0461.0634 = phi ptr [ %.sroa.0461.0631, %.lr.ph ], [ %.sroa.0461.0, %_ZL15eliminateStoresPN6hermes10BasicBlockEN4llvh8ArrayRefIPNS_14AllocStackInstEEE.exit ] ; 6 uses
  %.0633 = phi i1 [ false, %.lr.ph ], [ %i.anx, %_ZL15eliminateStoresPN6hermes10BasicBlockEN4llvh8ArrayRefIPNS_14AllocStackInstEEE.exit ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0461.0634, i64 72 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !62 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !43
  %i.fc = icmp eq ptr %.sroa.0461.0634, %i.fb     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %19, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %20, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %21, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #10
  store ptr %i.ea, ptr %24, align 8, !tbaa !25
  store i32 0, ptr %i.eb, align 8, !tbaa !26
  store i32 8, ptr %i.ec, align 4, !tbaa !27
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0461.0634, i64 64 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0461.0634, i64 56 ; 4 uses
  %.sroa.0174.0216.i = load ptr, ptr %i.fd, align 8, !tbaa !43 ; 2 uses
  %.not196217.i = icmp eq ptr %.sroa.0174.0216.i, %i.fe
  br i1 %.not196217.i, label %_ZL12promoteLoadsPN6hermes10BasicBlockE.exit, label %.lr.ph223.i

._crit_edge.i26:                                  ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i
  %.pre229.i = load ptr, ptr %24, align 8, !tbaa !25 ; 3 uses
  %.pre230.i = load i32, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %i.ff = zext i32 %.pre230.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ff, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.pre229.i, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %.pre230.i, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i28 = load ptr, ptr %24, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %._crit_edge.i26
  %i.fh = phi ptr [ %.pre.i.i28, %._crit_edge.loopexit.i.i ], [ %.pre229.i, %._crit_edge.i26 ] ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ea
  br i1 %i.fi, label %_ZL12promoteLoadsPN6hermes10BasicBlockE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @free(ptr noundef %i.fh) #10
  br label %_ZL12promoteLoadsPN6hermes10BasicBlockE.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.i26, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %.pre229.i, %._crit_edge.i26 ] ; 2 uses
  %i.fj = load ptr, ptr %.09.i.i, align 8, !tbaa !64
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.fj) #10
  %i.fk = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.fk, %i.fg
  br i1 %.not.i.i27, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph223.i:                                      ; preds = %bb.p, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i
  %.sroa.0174.0219.i = phi ptr [ %.sroa.0174.0.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i ], [ %.sroa.0174.0216.i, %bb.p ] ; 17 uses
  %.066218.i = phi i1 [ %.672.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i ], [ false, %bb.p ] ; 15 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0174.0219.i, i64 16 ; 8 uses
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !65  ; 2 uses
  %i.fn = icmp ne i8 %i.fm, 50
  %.not197.i = icmp eq ptr %.sroa.0174.0219.i, null ; 2 uses
  %.not.i25 = or i1 %.not197.i, %i.fn
  br i1 %.not.i25, label %.critedge88.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph223.i
  %i.fo = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 0) #10
  %i.fp = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 1) #10 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -16
  %i.fs = select i1 %i.fq, ptr null, ptr %i.fr    ; 7 uses
  %i.ft = load ptr, ptr %21, align 8, !tbaa !68   ; 2 uses
  %i.fu = load i32, ptr %i.ed, align 8, !tbaa !69 ; 7 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = trunc i64 %i.fw to i32                  ; 2 uses
  %i.fy = lshr i32 %i.fx, 4
  %i.fz = lshr i32 %i.fx, 9
  %i.ga = xor i32 %i.fy, %i.fz
  %i.gb = add i32 %i.fu, -1                       ; 2 uses
  %.02744.i.i.i187 = and i32 %i.ga, %i.gb         ; 2 uses
  %i.gc = zext nneg i32 %.02744.i.i.i187 to i64
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.gc ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !71 ; 2 uses
  %i.gf = icmp eq ptr %i.fs, %i.ge
  br i1 %i.gf, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit, label %.lr.ph.i.i.i188, !prof !37

.lr.ph.i.i.i188:                                  ; preds = %bb.s, %bb.u
  %i.gg = phi ptr [ %i.gq, %bb.u ], [ %i.ge, %bb.s ] ; 2 uses
  %i.gh = phi ptr [ %i.gp, %bb.u ], [ %i.gd, %bb.s ] ; 2 uses
  %.02747.i.i.i189 = phi i32 [ %.027.i.i.i194, %bb.u ], [ %.02744.i.i.i187, %bb.s ]
  %.046.i.i.i190 = phi i32 [ %i.gm, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %.02945.i.i.i191 = phi ptr [ %spec.select.i.i.i193, %bb.u ], [ null, %bb.s ] ; 4 uses
  %i.gi = icmp eq ptr %i.gg, inttoptr (i64 -8 to ptr)
  br i1 %i.gi, label %bb.t, label %bb.u, !prof !29

bb.t:                                             ; preds = %.lr.ph.i.i.i188
  %.not.i.i.i197 = icmp eq ptr %.02945.i.i.i191, null
  %i.gj = select i1 %.not.i.i.i197, ptr %i.gh, ptr %.02945.i.i.i191
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i.i188
  %i.gk = icmp eq ptr %i.gg, inttoptr (i64 -16 to ptr)
  %i.gl = icmp eq ptr %.02945.i.i.i191, null
  %or.cond.not.i.i.i192 = select i1 %i.gk, i1 %i.gl, i1 false
  %spec.select.i.i.i193 = select i1 %or.cond.not.i.i.i192, ptr %i.gh, ptr %.02945.i.i.i191
  %i.gm = add i32 %.046.i.i.i190, 1
  %i.gn = add i32 %.046.i.i.i190, %.02747.i.i.i189
  %.027.i.i.i194 = and i32 %i.gn, %i.gb           ; 2 uses
  %i.go = zext i32 %.027.i.i.i194 to i64
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.go ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !71 ; 2 uses
  %i.gr = icmp eq ptr %i.fs, %i.gq
  br i1 %i.gr, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit, label %.lr.ph.i.i.i188, !prof !38, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i: ; preds = %bb.t, %bb.r
  %.sink.i.i.i198 = phi ptr [ %i.gj, %bb.t ], [ null, %bb.r ]
  %i.gs = load i32, ptr %i.ee, align 8, !tbaa !72 ; 3 uses
  %i.gt = shl i32 %i.gs, 2
  %i.gu = add i32 %i.gt, 4
  %i.gv = mul i32 %i.fu, 3
  %.not.i.i4.i199 = icmp ult i32 %i.gu, %i.gv
  br i1 %.not.i.i4.i199, label %bb.w, label %bb.v, !prof !29

bb.v:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.gw = shl i32 %i.fu, 1
  br label %.sink.split.i.i.i200

bb.w:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.gx = load i32, ptr %i.ef, align 4, !tbaa !73
  %.neg.i.i.i204 = xor i32 %i.gs, -1
  %.neg12.i.i.i205 = add i32 %i.fu, %.neg.i.i.i204
  %i.gy = sub i32 %.neg12.i.i.i205, %i.gx
  %i.gz = lshr i32 %i.fu, 3
  %.not10.i.i.i206 = icmp ugt i32 %i.gy, %i.gz
  br i1 %.not10.i.i.i206, label %bb.aa, label %.sink.split.i.i.i200, !prof !29

.sink.split.i.i.i200:                             ; preds = %bb.w, %bb.v
  %.sink.i.i5.i201 = phi i32 [ %i.gw, %bb.v ], [ %i.fu, %bb.w ]
  call void @_ZN4llvh8DenseMapIPN6hermes14AllocStackInstEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %21, i32 noundef %.sink.i.i5.i201)
  %i.ha = load ptr, ptr %21, align 8, !tbaa !68   ; 2 uses
  %i.hb = load i32, ptr %i.ed, align 8, !tbaa !69 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.x

bb.x:                                             ; preds = %.sink.split.i.i.i200
  %i.hd = ptrtoint ptr %i.fs to i64
  %i.he = trunc i64 %i.hd to i32                  ; 2 uses
  %i.hf = lshr i32 %i.he, 4
  %i.hg = lshr i32 %i.he, 9
  %i.hh = xor i32 %i.hf, %i.hg
  %i.hi = add i32 %i.hb, -1                       ; 2 uses
  %.02744.i.i365 = and i32 %i.hi, %i.hh           ; 2 uses
  %i.hj = zext nneg i32 %.02744.i.i365 to i64
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.hj ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !71 ; 2 uses
  %i.hm = icmp eq ptr %i.fs, %i.hl
  br i1 %i.hm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i366, !prof !37

.lr.ph.i.i366:                                    ; preds = %bb.x, %bb.z
  %i.hn = phi ptr [ %i.hx, %bb.z ], [ %i.hl, %bb.x ] ; 2 uses
  %i.ho = phi ptr [ %i.hw, %bb.z ], [ %i.hk, %bb.x ] ; 2 uses
  %.02747.i.i367 = phi i32 [ %.027.i.i372, %bb.z ], [ %.02744.i.i365, %bb.x ]
  %.046.i.i368 = phi i32 [ %i.ht, %bb.z ], [ 1, %bb.x ] ; 2 uses
  %.02945.i.i369 = phi ptr [ %spec.select.i.i371, %bb.z ], [ null, %bb.x ] ; 4 uses
  %i.hp = icmp eq ptr %i.hn, inttoptr (i64 -8 to ptr)
  br i1 %i.hp, label %bb.y, label %bb.z, !prof !29

bb.y:                                             ; preds = %.lr.ph.i.i366
  %.not.i.i375 = icmp eq ptr %.02945.i.i369, null
  %i.hq = select i1 %.not.i.i375, ptr %i.ho, ptr %.02945.i.i369
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

bb.z:                                             ; preds = %.lr.ph.i.i366
  %i.hr = icmp eq ptr %i.hn, inttoptr (i64 -16 to ptr)
  %i.hs = icmp eq ptr %.02945.i.i369, null
  %or.cond.not.i.i370 = select i1 %i.hr, i1 %i.hs, i1 false
  %spec.select.i.i371 = select i1 %or.cond.not.i.i370, ptr %i.ho, ptr %.02945.i.i369
  %i.ht = add i32 %.046.i.i368, 1
  %i.hu = add i32 %.046.i.i368, %.02747.i.i367
  %.027.i.i372 = and i32 %i.hu, %i.hi             ; 2 uses
  %i.hv = zext i32 %.027.i.i372 to i64
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.hv ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !71 ; 2 uses
  %i.hy = icmp eq ptr %i.fs, %i.hx
  br i1 %i.hy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i366, !prof !38, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %bb.z, %.sink.split.i.i.i200, %bb.x, %bb.y
  %.sink.i.i373 = phi ptr [ %i.hq, %bb.y ], [ null, %.sink.split.i.i.i200 ], [ %i.hk, %bb.x ], [ %i.hw, %bb.z ]
  %.pre.i.i202 = load i32, ptr %i.ee, align 8, !tbaa !72
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, %bb.w
  %i.hz = phi ptr [ %.sink.i.i373, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %.sink.i.i.i198, %bb.w ] ; 4 uses
  %i.ia = phi i32 [ %.pre.i.i202, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %i.gs, %bb.w ]
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.ee, align 8, !tbaa !72
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !71
  %i.id = icmp eq ptr %i.ic, inttoptr (i64 -8 to ptr)
  br i1 %i.id, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ie = load i32, ptr %i.ef, align 4, !tbaa !73
  %i.if = add i32 %i.ie, -1
  store i32 %i.if, ptr %i.ef, align 4, !tbaa !73
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i: ; preds = %bb.ab, %bb.aa
  store ptr %i.fs, ptr %i.hz, align 8, !tbaa !71
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr null, ptr %i.ig, align 8, !tbaa !75
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit: ; preds = %bb.u, %bb.s, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i
  %.0.i196 = phi ptr [ %i.hz, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i ], [ %i.gd, %bb.s ], [ %i.gp, %bb.u ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i196, i64 8
  store ptr %i.fo, ptr %i.ih, align 8, !tbaa !75
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

.critedge88.i:                                    ; preds = %.lr.ph223.i
  %i.ii = icmp ne i8 %i.fm, 51
  %.not78.i = or i1 %.not197.i, %i.ii
  br i1 %.not78.i, label %.critedge90.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge88.i
  %i.ij = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 1) #10 ; 7 uses
  %i.ik = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 0) #10
  %i.il = load ptr, ptr %19, align 8, !tbaa !78   ; 2 uses
  %i.im = load i32, ptr %i.eh, align 8, !tbaa !79 ; 7 uses
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.io = ptrtoint ptr %i.ij to i64
  %i.ip = trunc i64 %i.io to i32                  ; 2 uses
  %i.iq = lshr i32 %i.ip, 4
  %i.ir = lshr i32 %i.ip, 9
  %i.is = xor i32 %i.iq, %i.ir
  %i.it = add i32 %i.im, -1                       ; 2 uses
  %.02744.i.i.i175 = and i32 %i.is, %i.it         ; 2 uses
  %i.iu = zext nneg i32 %.02744.i.i.i175 to i64
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.iu ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !81 ; 2 uses
  %i.ix = icmp eq ptr %i.ij, %i.iw
  br i1 %i.ix, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i176, !prof !37

.lr.ph.i.i.i176:                                  ; preds = %bb.ad, %bb.af
  %i.iy = phi ptr [ %i.ji, %bb.af ], [ %i.iw, %bb.ad ] ; 2 uses
  %i.iz = phi ptr [ %i.jh, %bb.af ], [ %i.iv, %bb.ad ] ; 2 uses
  %.02747.i.i.i177 = phi i32 [ %.027.i.i.i182, %bb.af ], [ %.02744.i.i.i175, %bb.ad ]
  %.046.i.i.i178 = phi i32 [ %i.je, %bb.af ], [ 1, %bb.ad ] ; 2 uses
  %.02945.i.i.i179 = phi ptr [ %spec.select.i.i.i181, %bb.af ], [ null, %bb.ad ] ; 4 uses
  %i.ja = icmp eq ptr %i.iy, inttoptr (i64 -8 to ptr)
  br i1 %i.ja, label %bb.ae, label %bb.af, !prof !29

end_hunk_0
begin_hunk_1_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.ok = phi ptr [ %i.oq, %bb.az ], [ %i.oi, %bb.ay ]
  %.02747.i.i.i104.i = phi i32 [ %.027.i.i.i106.i, %bb.az ], [ %.02744.i.i.i102.i, %bb.ay ]
  %.046.i.i.i105.i = phi i32 [ %i.om, %bb.az ], [ 1, %bb.ay ] ; 2 uses
  %i.ol = icmp eq ptr %i.ok, inttoptr (i64 -8 to ptr)
  br i1 %i.ol, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, label %bb.az, !prof !29

bb.az:                                            ; preds = %.lr.ph.i.i.i103.i
  %i.om = add i32 %.046.i.i.i105.i, 1
  %i.on = add i32 %.046.i.i.i105.i, %.02747.i.i.i104.i
  %.027.i.i.i106.i = and i32 %i.on, %i.of         ; 2 uses
  %i.oo = zext i32 %.027.i.i.i106.i to i64
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.oo ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !81 ; 2 uses
  %i.or = icmp eq ptr %i.nw, %i.oq
  br i1 %i.or, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i103.i, !prof !38, !llvm.loop !198

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i: ; preds = %.lr.ph.i.i.i103.i, %bb.ax
  %i.os = zext i32 %i.ny to i64
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.os
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i: ; preds = %bb.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, %bb.ay
  %.sink.i.i.ph.pn.i109.i = phi ptr [ %i.ot, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i ], [ %i.oh, %bb.ay ], [ %i.op, %bb.az ] ; 2 uses
  %i.ou = zext i32 %i.ny to i64
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.ou
  %.not203.i = icmp eq ptr %.sink.i.i.ph.pn.i109.i, %i.ov
  br i1 %.not203.i, label %.critedge.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !89
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 144
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !106
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0174.0219.i, i64 56
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !118
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 72
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !62
  %.not82.i = icmp eq ptr %i.oz, %i.pd
  br i1 %.not82.i, label %.critedge.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pe = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i109.i, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !249
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef %i.pf) #10
  %i.pg = load i32, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %i.ph = load i32, ptr %i.ec, align 4, !tbaa !27
  %.not.i.i115.i = icmp ult i32 %i.pg, %i.ph
  br i1 %.not.i.i115.i, label %.thread189.i, label %.thread189.sink.split.i, !prof !29

.critedge.i:                                      ; preds = %bb.ba, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i
  %i.pi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.nw) #10 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !25 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !26 ; 2 uses
  %i.pm = zext i32 %i.pl to i64
  %.idx.i118.i = shl nuw nsw i64 %i.pm, 3
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.idx.i118.i
  %.not37.i.i = icmp eq i32 %i.pl, 0
  br i1 %.not37.i.i, label %_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i, label %.lr.ph.i119.i

.lr.ph.i119.i:                                    ; preds = %.critedge.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  br label %bb.bc

bb.bc:                                            ; preds = %.thread.i.i, %.lr.ph.i119.i
  %.01939.i.i = phi ptr [ %i.pj, %.lr.ph.i119.i ], [ %i.qa, %.thread.i.i ] ; 2 uses
  %.02038.i.i = phi ptr [ null, %.lr.ph.i119.i ], [ %.233.i.i, %.thread.i.i ] ; 2 uses
  %i.pp = load ptr, ptr %.01939.i.i, align 8, !tbaa !64 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load i8, ptr %i.pq, align 8, !tbaa !65
  %i.ps = icmp ne i8 %i.pr, 51
  %.not2748.i.i = icmp eq ptr %i.pp, null
  %.not27.i.i = or i1 %.not2748.i.i, %i.ps
  br i1 %.not27.i.i, label %.thread.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not28.i.i = icmp eq ptr %.02038.i.i, null
  br i1 %.not28.i.i, label %bb.be, label %_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 56
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !118
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 72
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !62
  %i.px = load ptr, ptr %i.po, align 8, !tbaa !89
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 144
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !106
  %.not29.i.i = icmp eq ptr %i.pw, %i.pz
  br i1 %.not29.i.i, label %.thread.i.i, label %_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i

.thread.i.i:                                      ; preds = %bb.be, %bb.bc
  %.233.i.i = phi ptr [ %i.pp, %bb.be ], [ %.02038.i.i, %bb.bc ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.01939.i.i, i64 8 ; 2 uses
  %.not.i120.i = icmp eq ptr %i.qa, %i.pn
  br i1 %.not.i120.i, label %_ZL20getSingleInitializerPN6hermes8VariableE.exit.i, label %bb.bc

_ZL20getSingleInitializerPN6hermes8VariableE.exit.i: ; preds = %.thread.i.i
  %.not204.i = icmp eq ptr %.233.i.i, null
  br i1 %.not204.i, label %_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %_ZL20getSingleInitializerPN6hermes8VariableE.exit.i
  %i.qb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store ptr %i.fl, ptr %i.qc, align 8, !tbaa !75
  br label %_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i

_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i: ; preds = %bb.be, %bb.bd, %bb.bf, %_ZL20getSingleInitializerPN6hermes8VariableE.exit.i, %.critedge.i
  %i.qd = load ptr, ptr %i.d, align 8, !tbaa !81  ; 3 uses
  %i.qe = load ptr, ptr %19, align 8, !tbaa !78   ; 4 uses
  %i.qf = load i32, ptr %i.eh, align 8, !tbaa !79 ; 4 uses
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i132.i, label %bb.bg

bb.bg:                                            ; preds = %_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i
  %i.qh = ptrtoint ptr %i.qd to i64
  %i.qi = trunc i64 %i.qh to i32                  ; 2 uses
  %i.qj = lshr i32 %i.qi, 4
  %i.qk = lshr i32 %i.qi, 9
  %i.ql = xor i32 %i.qj, %i.qk
  %i.qm = add i32 %i.qf, -1                       ; 2 uses
  %.02744.i.i.i121.i = and i32 %i.ql, %i.qm       ; 2 uses
  %i.qn = zext nneg i32 %.02744.i.i.i121.i to i64
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.qn ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !81 ; 2 uses
  %i.qq = icmp eq ptr %i.qd, %i.qp
  br i1 %i.qq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit133.i, label %.lr.ph.i.i.i122.i, !prof !37

.lr.ph.i.i.i122.i:                                ; preds = %bb.bg, %bb.bh
  %i.qr = phi ptr [ %i.qx, %bb.bh ], [ %i.qp, %bb.bg ]
  %.02747.i.i.i123.i = phi i32 [ %.027.i.i.i125.i, %bb.bh ], [ %.02744.i.i.i121.i, %bb.bg ]
  %.046.i.i.i124.i = phi i32 [ %i.qt, %bb.bh ], [ 1, %bb.bg ] ; 2 uses
  %i.qs = icmp eq ptr %i.qr, inttoptr (i64 -8 to ptr)
  br i1 %i.qs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i132.i, label %bb.bh, !prof !29

bb.bh:                                            ; preds = %.lr.ph.i.i.i122.i
  %i.qt = add i32 %.046.i.i.i124.i, 1
  %i.qu = add i32 %.046.i.i.i124.i, %.02747.i.i.i123.i
  %.027.i.i.i125.i = and i32 %i.qu, %i.qm         ; 2 uses
  %i.qv = zext i32 %.027.i.i.i125.i to i64
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.qv ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !81 ; 2 uses
  %i.qy = icmp eq ptr %i.qd, %i.qx
  br i1 %i.qy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit133.i, label %.lr.ph.i.i.i122.i, !prof !38, !llvm.loop !198

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i132.i: ; preds = %.lr.ph.i.i.i122.i, %_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i
  %i.qz = zext i32 %i.qf to i64
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.qz
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit133.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit133.i: ; preds = %bb.bh, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i132.i, %bb.bg
  %.sink.i.i.ph.pn.i128.i = phi ptr [ %i.ra, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i132.i ], [ %i.qo, %bb.bg ], [ %i.qw, %bb.bh ] ; 2 uses
  %i.rb = zext i32 %i.qf to i64
  %i.rc = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.rb
  %i.rd = icmp eq ptr %.sink.i.i.ph.pn.i128.i, %i.rc
  br i1 %i.rd, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit133.i
  %i.re = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i128.i, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !249 ; 2 uses
  %.not83.i = icmp eq ptr %i.rf, null
  br i1 %.not83.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef nonnull %i.rf) #10
  %i.rg = load i32, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %i.rh = load i32, ptr %i.ec, align 4, !tbaa !27
  %.not.i.i136.i = icmp ult i32 %i.rg, %i.rh
  br i1 %.not.i.i136.i, label %.thread189.i, label %.thread189.sink.split.i, !prof !29

.thread189.sink.split.i:                          ; preds = %bb.bj, %bb.bb
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull %i.ea, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i137.i = load i32, ptr %i.eb, align 8, !tbaa !26
  br label %.thread189.i

.thread189.i:                                     ; preds = %.thread189.sink.split.i, %bb.bj, %bb.bb
  %.sink287.i = phi i32 [ %i.pg, %bb.bb ], [ %i.rg, %bb.bj ], [ %.pre.i.i137.i, %.thread189.sink.split.i ]
  %i.ri = load ptr, ptr %24, align 8, !tbaa !25
  %i.rj = zext i32 %.sink287.i to i64
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rj
  %i.rl = ptrtoint ptr %.sroa.0174.0219.i to i64
  store i64 %i.rl, ptr %i.rk, align 1
  %i.rm = load i32, ptr %i.eb, align 8, !tbaa !26
  %storemerge.i = add i32 %i.rm, 1
  store i32 %storemerge.i, ptr %i.eb, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

bb.bk:                                            ; preds = %bb.bi, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit133.i
  %i.rn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store ptr %i.fl, ptr %i.ro, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

.thread186.i:                                     ; preds = %.loopexit.i
  %i.rp = add i8 %i.me, -69
  %i.rq = icmp ult i8 %i.rp, 6
  %or.cond.i = and i1 %i.fc, %i.rq
  br i1 %or.cond.i, label %bb.bl, label %30

bb.bl:                                            ; preds = %.thread186.i
  %i.rr = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 0) #10 ; 2 uses
  %i.rs = icmp eq ptr %i.rr, null
  %i.rt = getelementptr inbounds i8, ptr %i.rr, i64 -16
  %i.ru = select i1 %i.rs, ptr null, ptr %i.rt
  call fastcc void @_ZL24collectCapturedVariablesRN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEES7_PNS1_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef %i.ru)
  br label %30

30:                                               ; preds = %bb.bl, %.thread186.i
  %31 = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i) #10
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %bb.bm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

bb.bm:                                            ; preds = %30
  %.pre.i = load i32, ptr %i.ei, align 8, !tbaa !82 ; 5 uses
  br i1 %i.fc, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  %i.rv = icmp ult i32 %.pre.i, 128
  br i1 %i.rv, label %bb.bo, label %.thread193.i

bb.bo:                                            ; preds = %bb.bn
  %i.rw = icmp eq i32 %.pre.i, 0
  %i.rx = load ptr, ptr %19, align 8, !tbaa !78   ; 5 uses
  %i.ry = load i32, ptr %i.eh, align 8, !tbaa !79 ; 2 uses
  %i.rz = zext i32 %i.ry to i64                   ; 3 uses
  br i1 %i.rw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %i.rx, i64 %i.rz ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i

bb.bq:                                            ; preds = %bb.bo
  %.idx.i140.i = shl nuw nsw i64 %i.rz, 4
  %i.sb = getelementptr i8, ptr %i.rx, i64 %.idx.i140.i ; 5 uses
  %.not5.i5.i10.i2.i.i = icmp eq i32 %i.ry, 0
  br i1 %.not5.i5.i10.i2.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i

.lr.ph.i6.i12.i3.i.i:                             ; preds = %bb.bq, %.critedge2.i8.i14.i6.i.i
  %.sroa.0.3.i4.i.i = phi ptr [ %i.sd, %.critedge2.i8.i14.i6.i.i ], [ %i.rx, %bb.bq ] ; 3 uses
  %i.sc = load ptr, ptr %.sroa.0.3.i4.i.i, align 8, !tbaa !81
  %magicptr.i7.i13.i5.i.i = ptrtoint ptr %i.sc to i64
  switch i64 %magicptr.i7.i13.i5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i
  ]

.critedge2.i8.i14.i6.i.i:                         ; preds = %.lr.ph.i6.i12.i3.i.i, %.lr.ph.i6.i12.i3.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i, i64 16 ; 2 uses
  %.not.i9.i15.i7.i.i = icmp eq ptr %i.sd, %i.sb
  br i1 %.not.i9.i15.i7.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i, !llvm.loop !199

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i, %.lr.ph.i6.i12.i3.i.i, %bb.bq, %bb.bp
  %.pn14.i.i = phi ptr [ %i.sa, %bb.bp ], [ %i.rx, %bb.bq ], [ %i.sb, %.critedge2.i8.i14.i6.i.i ], [ %.sroa.0.3.i4.i.i, %.lr.ph.i6.i12.i3.i.i ] ; 2 uses
  %.pn12.i.i = phi ptr [ %i.sa, %bb.bp ], [ %i.sb, %bb.bq ], [ %i.sb, %.lr.ph.i6.i12.i3.i.i ], [ %i.sb, %.critedge2.i8.i14.i6.i.i ] ; 2 uses
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.rx, i64 %i.rz ; 2 uses
  %.not205213.i = icmp eq ptr %.pn14.i.i, %i.se
  br i1 %.not205213.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i
  %i.sf = load ptr, ptr %23, align 8              ; 2 uses
  %i.sg = load i32, ptr %i.ek, align 8            ; 2 uses
  %i.sh = icmp eq i32 %i.sg, 0
  %i.si = add i32 %i.sg, -1                       ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, %.lr.ph215.i
  %.sroa.0156.0214.i = phi ptr [ %.pn14.i.i, %.lr.ph215.i ], [ %.sroa.0156.2.i, %_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i ] ; 3 uses
  %i.sj = load ptr, ptr %.sroa.0156.0214.i, align 8, !tbaa !250 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 56
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !89
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 144
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !106
  %.not84.i = icmp eq ptr %i.sn, %i.ez
  br i1 %.not84.i, label %bb.bs, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i

bb.bs:                                            ; preds = %bb.br
  br i1 %i.sh, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.so = ptrtoint ptr %i.sj to i64
  %i.sp = trunc i64 %i.so to i32                  ; 2 uses
  %i.sq = lshr i32 %i.sp, 4
  %i.sr = lshr i32 %i.sp, 9
  %i.ss = xor i32 %i.sq, %i.sr
  %.02744.i.i.i144.i = and i32 %i.ss, %i.si       ; 2 uses
  %i.st = zext nneg i32 %.02744.i.i.i144.i to i64
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.st
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !81 ; 2 uses
  %i.sw = icmp eq ptr %i.sj, %i.sv
  br i1 %i.sw, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i145.i, !prof !37

.lr.ph.i.i.i145.i:                                ; preds = %bb.bt, %bb.bu
  %i.sx = phi ptr [ %i.td, %bb.bu ], [ %i.sv, %bb.bt ]
  %.02747.i.i.i146.i = phi i32 [ %.027.i.i.i148.i, %bb.bu ], [ %.02744.i.i.i144.i, %bb.bt ]
  %.046.i.i.i147.i = phi i32 [ %i.sz, %bb.bu ], [ 1, %bb.bt ] ; 2 uses
  %i.sy = icmp eq ptr %i.sx, inttoptr (i64 -8 to ptr)
  br i1 %i.sy, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, label %bb.bu, !prof !29

bb.bu:                                            ; preds = %.lr.ph.i.i.i145.i
  %i.sz = add i32 %.046.i.i.i147.i, 1
  %i.ta = add i32 %.046.i.i.i147.i, %.02747.i.i.i146.i
  %.027.i.i.i148.i = and i32 %i.ta, %i.si         ; 2 uses
  %i.tb = zext i32 %.027.i.i.i148.i to i64
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.tb
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !81 ; 2 uses
  %i.te = icmp eq ptr %i.sj, %i.td
  br i1 %i.te, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i145.i, !prof !38, !llvm.loop !200

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i: ; preds = %bb.bu, %bb.bt, %bb.br
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0156.0214.i, i64 8
  store ptr null, ptr %i.tf, align 8, !tbaa !249
  br label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i: ; preds = %.lr.ph.i.i.i145.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, %bb.bs
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0156.0214.i, i64 16 ; 3 uses
  %.not5.i3.i.i = icmp eq ptr %i.tg, %.pn12.i.i
  br i1 %.not5.i3.i.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, %.critedge2.i6.i.i
  %.sroa.0156.1.i = phi ptr [ %i.ti, %.critedge2.i6.i.i ], [ %i.tg, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i ] ; 3 uses
  %i.th = load ptr, ptr %.sroa.0156.1.i, align 8, !tbaa !81
  %magicptr.i5.i.i = ptrtoint ptr %i.th to i64
  switch i64 %magicptr.i5.i.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i [
    i64 -8, label %.critedge2.i6.i.i
    i64 -16, label %.critedge2.i6.i.i
  ]

.critedge2.i6.i.i:                                ; preds = %.lr.ph.i4.i.i, %.lr.ph.i4.i.i
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.0156.1.i, i64 16 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.ti, %.pn12.i.i
  br i1 %.not.i7.i.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, label %.lr.ph.i4.i.i, !llvm.loop !199

_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i: ; preds = %.critedge2.i6.i.i, %.lr.ph.i4.i.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i
  %.sroa.0156.2.i = phi ptr [ %i.tg, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i ], [ %.sroa.0156.1.i, %.lr.ph.i4.i.i ], [ %i.ti, %.critedge2.i6.i.i ] ; 2 uses
  %.not205.i = icmp eq ptr %.sroa.0156.2.i, %i.se
  br i1 %.not205.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %bb.br

bb.bv:                                            ; preds = %bb.bm
  %i.tj = icmp eq i32 %.pre.i, 0
  br i1 %i.tj, label %bb.bw, label %.thread193.i

bb.bw:                                            ; preds = %bb.bv
  %i.tk = load i32, ptr %i.ej, align 4, !tbaa !83
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.tm = load i32, ptr %i.eh, align 8, !tbaa !79 ; 2 uses
  %i.tn = icmp ugt i32 %i.tm, 64
  br i1 %i.tn, label %bb.cb, label %bb.cc

.thread193.i:                                     ; preds = %bb.bv, %bb.bn
  %i.to = shl i32 %.pre.i, 2
  %i.tp = load i32, ptr %i.eh, align 8, !tbaa !79 ; 5 uses
  %i.tq = icmp ult i32 %i.to, %i.tp
  %i.tr = icmp ugt i32 %i.tp, 64
  %or.cond.i194.i = and i1 %i.tq, %i.tr
  br i1 %or.cond.i194.i, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %.thread193.i
  %i.ts = add i32 %.pre.i, -1
  %i.tt = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ts, i1 false)
  %i.tu = sub nuw nsw i32 33, %i.tt
  %i.tv = shl nuw i32 1, %i.tu
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %i.tv, i32 64) ; 2 uses
  %i.tw = icmp eq i32 %.sroa.speculated.i.i, %i.tp
  br i1 %i.tw, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.ei, align 8, !tbaa !82
  store i32 0, ptr %i.ej, align 4, !tbaa !83
  %i.tx = load ptr, ptr %19, align 8, !tbaa !78   ; 3 uses
  %i.ty = zext nneg i32 %i.tp to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ty, 4          ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 %.idx.i.i.i
  %i.ua = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.ub = lshr exact i64 %i.ua, 4
  %i.uc = add nuw nsw i64 %i.ub, 1
  %xtraiter1443 = and i64 %i.uc, 7                ; 2 uses
  %lcmp.mod1444.not = icmp eq i64 %xtraiter1443, 0
  br i1 %lcmp.mod1444.not, label %.lr.ph.i.i.i32.prol.loopexit, label %.lr.ph.i.i.i32.prol

.lr.ph.i.i.i32.prol:                              ; preds = %bb.bz, %.lr.ph.i.i.i32.prol
  %.07.i.i.i.prol = phi ptr [ %i.ud, %.lr.ph.i.i.i32.prol ], [ %i.tx, %bb.bz ] ; 2 uses
  %prol.iter1445 = phi i64 [ %prol.iter1445.next, %.lr.ph.i.i.i32.prol ], [ 0, %bb.bz ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.prol, align 8, !tbaa !81
  %i.ud = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter1445.next = add i64 %prol.iter1445, 1 ; 2 uses
  %prol.iter1445.cmp.not = icmp eq i64 %prol.iter1445.next, %xtraiter1443
  br i1 %prol.iter1445.cmp.not, label %.lr.ph.i.i.i32.prol.loopexit, label %.lr.ph.i.i.i32.prol, !llvm.loop !201

.lr.ph.i.i.i32.prol.loopexit:                     ; preds = %.lr.ph.i.i.i32.prol, %bb.bz
  %.07.i.i.i.unr = phi ptr [ %i.tx, %bb.bz ], [ %i.ud, %.lr.ph.i.i.i32.prol ]
  %i.ue = icmp ult i64 %i.ua, 112
  br i1 %i.ue, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %.lr.ph.i.i.i32.prol.loopexit, %.lr.ph.i.i.i32
  %.07.i.i.i = phi ptr [ %i.um, %.lr.ph.i.i.i32 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i32.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i, align 8, !tbaa !81
  %i.uf = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uf, align 8, !tbaa !81
  %i.ug = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ug, align 8, !tbaa !81
  %i.uh = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uh, align 8, !tbaa !81
  %i.ui = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ui, align 8, !tbaa !81
  %i.uj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uj, align 8, !tbaa !81
  %i.uk = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uk, align 8, !tbaa !81
  %i.ul = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ul, align 8, !tbaa !81
  %i.um = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 128 ; 2 uses
  %.not.i.i155.i.7 = icmp eq ptr %i.um, %i.tz
  br i1 %.not.i.i155.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph.i.i.i32, !llvm.loop !3

bb.ca:                                            ; preds = %bb.by
  %i.un = load ptr, ptr %19, align 8, !tbaa !78
  call void @_ZdlPv(ptr noundef %i.un) #10
  %i.uo = shl i32 %.sroa.speculated.i.i, 2
  %i.up = udiv i32 %i.uo, 3
  %i.uq = add nuw nsw i32 %i.up, 1
  %i.ur = zext nneg i32 %i.uq to i64              ; 2 uses
  %i.us = lshr i64 %i.ur, 1
  %i.ut = or i64 %i.us, %i.ur                     ; 2 uses
  %i.uu = lshr i64 %i.ut, 2
  %i.uv = or i64 %i.uu, %i.ut                     ; 2 uses
  %i.uw = lshr i64 %i.uv, 4
  %i.ux = or i64 %i.uw, %i.uv                     ; 2 uses
  %i.uy = lshr i64 %i.ux, 8
  %i.uz = or i64 %i.uy, %i.ux                     ; 2 uses
  %i.va = lshr i64 %i.uz, 16
  %i.vb = or i64 %i.va, %i.uz
  %i.vc = trunc nuw nsw i64 %i.vb to i32
  %i.vd = add nuw i32 %i.vc, 1                    ; 2 uses
  store i32 %i.vd, ptr %i.eh, align 8, !tbaa !79
  %i.ve = zext i32 %i.vd to i64
  %i.vf = shl nuw nsw i64 %i.ve, 4
  %i.vg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vf) #11 ; 4 uses
  store ptr %i.vg, ptr %19, align 8, !tbaa !78
  store i32 0, ptr %i.ei, align 8, !tbaa !82
  store i32 0, ptr %i.ej, align 4, !tbaa !83
  %i.vh = load i32, ptr %i.eh, align 8, !tbaa !79 ; 2 uses
  %i.vi = zext i32 %i.vh to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.vi, 4        ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx.i.i.i.i
  %.not6.i.i.i.i = icmp eq i32 %i.vh, 0
  br i1 %.not6.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph.i.i.i154.i.preheader

.lr.ph.i.i.i154.i.preheader:                      ; preds = %bb.ca
  %i.vk = add nsw i64 %.idx.i.i.i.i, -16          ; 2 uses
  %i.vl = lshr exact i64 %i.vk, 4
  %i.vm = add nuw nsw i64 %i.vl, 1
  %xtraiter1440 = and i64 %i.vm, 7                ; 2 uses
  %lcmp.mod1441.not = icmp eq i64 %xtraiter1440, 0
  br i1 %lcmp.mod1441.not, label %.lr.ph.i.i.i154.i.prol.loopexit, label %.lr.ph.i.i.i154.i.prol

.lr.ph.i.i.i154.i.prol:                           ; preds = %.lr.ph.i.i.i154.i.preheader, %.lr.ph.i.i.i154.i.prol
  %.07.i.i.i.i.prol = phi ptr [ %i.vn, %.lr.ph.i.i.i154.i.prol ], [ %i.vg, %.lr.ph.i.i.i154.i.preheader ] ; 2 uses
  %prol.iter1442 = phi i64 [ %prol.iter1442.next, %.lr.ph.i.i.i154.i.prol ], [ 0, %.lr.ph.i.i.i154.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.prol, align 8, !tbaa !81
  %i.vn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter1442.next = add i64 %prol.iter1442, 1 ; 2 uses
  %prol.iter1442.cmp.not = icmp eq i64 %prol.iter1442.next, %xtraiter1440
  br i1 %prol.iter1442.cmp.not, label %.lr.ph.i.i.i154.i.prol.loopexit, label %.lr.ph.i.i.i154.i.prol, !llvm.loop !202

.lr.ph.i.i.i154.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.i154.i.prol, %.lr.ph.i.i.i154.i.preheader
  %.07.i.i.i.i.unr = phi ptr [ %i.vg, %.lr.ph.i.i.i154.i.preheader ], [ %i.vn, %.lr.ph.i.i.i154.i.prol ]
  %i.vo = icmp ult i64 %i.vk, 112
  br i1 %i.vo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph.i.i.i154.i

.lr.ph.i.i.i154.i:                                ; preds = %.lr.ph.i.i.i154.i.prol.loopexit, %.lr.ph.i.i.i154.i
  %.07.i.i.i.i = phi ptr [ %i.vw, %.lr.ph.i.i.i154.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i154.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i, align 8, !tbaa !81
  %i.vp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.vp, align 8, !tbaa !81
  %i.vq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.vq, align 8, !tbaa !81
  %i.vr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.vr, align 8, !tbaa !81
  %i.vs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.vs, align 8, !tbaa !81
  %i.vt = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.vt, align 8, !tbaa !81
  %i.vu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.vu, align 8, !tbaa !81
  %i.vv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.vv, align 8, !tbaa !81
  %i.vw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i31.7 = icmp eq ptr %i.vw, %i.vj
  br i1 %.not.i.i.i.i31.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph.i.i.i154.i, !llvm.loop !3

bb.cb:                                            ; preds = %bb.bx
  %i.vx = load ptr, ptr %19, align 8, !tbaa !78
  call void @_ZdlPv(ptr noundef %i.vx) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %19, i8 0, i64 20, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

bb.cc:                                            ; preds = %.thread193.i, %bb.bx
  %i.vy = phi i32 [ %i.tp, %.thread193.i ], [ %i.tm, %bb.bx ] ; 2 uses
  %i.vz = load ptr, ptr %19, align 8, !tbaa !78   ; 3 uses
  %i.wa = zext i32 %i.vy to i64
  %.idx.i149.i = shl nuw nsw i64 %i.wa, 4         ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 %.idx.i149.i
  %.not6.i.i = icmp eq i32 %i.vy, 0
  br i1 %.not6.i.i, label %._crit_edge.i152.i, label %.lr.ph.i150.i.preheader

.lr.ph.i150.i.preheader:                          ; preds = %bb.cc
  %i.wc = add nsw i64 %.idx.i149.i, -16           ; 2 uses
  %i.wd = lshr exact i64 %i.wc, 4
  %i.we = add nuw nsw i64 %i.wd, 1
  %xtraiter = and i64 %i.we, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i150.i.prol.loopexit, label %.lr.ph.i150.i.prol

.lr.ph.i150.i.prol:                               ; preds = %.lr.ph.i150.i.preheader, %.lr.ph.i150.i.prol
  %.07.i.i.prol = phi ptr [ %i.wf, %.lr.ph.i150.i.prol ], [ %i.vz, %.lr.ph.i150.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i150.i.prol ], [ 0, %.lr.ph.i150.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !81
  %i.wf = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i150.i.prol.loopexit, label %.lr.ph.i150.i.prol, !llvm.loop !203

.lr.ph.i150.i.prol.loopexit:                      ; preds = %.lr.ph.i150.i.prol, %.lr.ph.i150.i.preheader
  %.07.i.i.unr = phi ptr [ %i.vz, %.lr.ph.i150.i.preheader ], [ %i.wf, %.lr.ph.i150.i.prol ]
  %i.wg = icmp ult i64 %i.wc, 112
  br i1 %i.wg, label %._crit_edge.i152.i, label %.lr.ph.i150.i

._crit_edge.i152.i:                               ; preds = %.lr.ph.i150.i.prol.loopexit, %.lr.ph.i150.i, %bb.cc
  store i32 0, ptr %i.ei, align 8, !tbaa !82
  store i32 0, ptr %i.ej, align 4, !tbaa !83
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

.lr.ph.i150.i:                                    ; preds = %.lr.ph.i150.i.prol.loopexit, %.lr.ph.i150.i
  %.07.i.i = phi ptr [ %i.wo, %.lr.ph.i150.i ], [ %.07.i.i.unr, %.lr.ph.i150.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !81
  %i.wh = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.wh, align 8, !tbaa !81
  %i.wi = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.wi, align 8, !tbaa !81
  %i.wj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.wj, align 8, !tbaa !81
  %i.wk = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.wk, align 8, !tbaa !81
  %i.wl = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.wl, align 8, !tbaa !81
  %i.wm = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.wm, align 8, !tbaa !81
  %i.wn = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.wn, align 8, !tbaa !81
  %i.wo = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i151.i.7 = icmp eq ptr %i.wo, %i.wb
  br i1 %.not.i151.i.7, label %._crit_edge.i152.i, label %.lr.ph.i150.i, !llvm.loop !204

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i: ; preds = %.lr.ph.i.i.i154.i.prol.loopexit, %.lr.ph.i.i.i154.i, %.lr.ph.i.i.i32.prol.loopexit, %.lr.ph.i.i.i32, %_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, %._crit_edge.i152.i, %bb.cb, %bb.ca, %bb.bw, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, %30, %bb.bk, %.thread189.i, %bb.aw, %.thread180.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit
  %.672.i = phi i1 [ %.066218.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit ], [ %.066218.i, %bb.bk ], [ %.066218.i, %bb.aw ], [ %.066218.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ], [ true, %.thread189.i ], [ %.066218.i, %._crit_edge.i152.i ], [ %.066218.i, %30 ], [ true, %.thread180.i ], [ %.066218.i, %bb.cb ], [ %.066218.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i ], [ %.066218.i, %bb.ca ], [ %.066218.i, %.lr.ph.i.i.i32.prol.loopexit ], [ %.066218.i, %bb.bw ], [ %.066218.i, %_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i ], [ %.066218.i, %.lr.ph.i.i.i32 ], [ %.066218.i, %.lr.ph.i.i.i154.i ], [ %.066218.i, %.lr.ph.i.i.i154.i.prol.loopexit ] ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.0174.0219.i, i64 8
  %.sroa.0174.0.i = load ptr, ptr %i.wp, align 8, !tbaa !43 ; 2 uses
  %.not196.i = icmp eq ptr %.sroa.0174.0.i, %i.fe
  br i1 %.not196.i, label %._crit_edge.i26, label %.lr.ph223.i

_ZL12promoteLoadsPN6hermes10BasicBlockE.exit:     ; preds = %bb.p, %._crit_edge.i.i, %bb.q
  %.066.lcssa271273.i = phi i1 [ %.672.i, %bb.q ], [ %.672.i, %._crit_edge.i.i ], [ false, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  %i.wq = load ptr, ptr %23, align 8, !tbaa !122
  call void @_ZdlPv(ptr noundef %i.wq) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  %i.wr = load ptr, ptr %22, align 8, !tbaa !122
  call void @_ZdlPv(ptr noundef %i.wr) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #10
  %i.ws = load ptr, ptr %21, align 8, !tbaa !68
  call void @_ZdlPv(ptr noundef %i.ws) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  %i.wt = load ptr, ptr %20, align 8, !tbaa !78
  call void @_ZdlPv(ptr noundef %i.wt) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  %i.wu = load ptr, ptr %19, align 8, !tbaa !78
  call void @_ZdlPv(ptr noundef %i.wu) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  %i.wv = load ptr, ptr %29, align 8, !tbaa !25   ; 2 uses
  %i.ww = load i32, ptr %i.dw, align 8, !tbaa !26 ; 2 uses
  %i.wx = load ptr, ptr %i.ey, align 8, !tbaa !62 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 88
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !43
  %i.xa = icmp eq ptr %.sroa.0461.0634, %i.wz     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %16, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  store ptr %i.el, ptr %17, align 8, !tbaa !25
  store i32 0, ptr %i.em, align 8, !tbaa !26
  store i32 8, ptr %i.en, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 20, i1 false)
  %.sroa.0129.0161.i = load ptr, ptr %i.fd, align 8, !tbaa !43 ; 2 uses
  %.not145162.i = icmp eq ptr %.sroa.0129.0161.i, %i.fe
  br i1 %.not145162.i, label %._crit_edge.i48, label %.lr.ph166.i

.lr.ph166.i:                                      ; preds = %_ZL12promoteLoadsPN6hermes10BasicBlockE.exit
  %i.xb = zext i32 %i.ww to i64
  %.idx.i = shl nuw nsw i64 %i.xb, 3
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wv, i64 %.idx.i
  %.not71156.i = icmp eq i32 %i.ww, 0
  br label %bb.ce

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i
  %.pre171.i = load ptr, ptr %18, align 8, !tbaa !122
  %i.xd = or i1 %.066.lcssa271273.i, %.7.i
  br label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %._crit_edge.loopexit.i, %_ZL12promoteLoadsPN6hermes10BasicBlockE.exit
  %i.xe = phi ptr [ null, %_ZL12promoteLoadsPN6hermes10BasicBlockE.exit ], [ %.pre171.i, %._crit_edge.loopexit.i ]
  %.054.lcssa.i = phi i1 [ %.066.lcssa271273.i, %_ZL12promoteLoadsPN6hermes10BasicBlockE.exit ], [ %i.xd, %._crit_edge.loopexit.i ]
  call void @_ZdlPv(ptr noundef %i.xe) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  %i.xf = load ptr, ptr %17, align 8, !tbaa !25   ; 3 uses
  %i.xg = load i32, ptr %i.em, align 8, !tbaa !26 ; 2 uses
  %i.xh = zext i32 %i.xg to i64
  %.idx.i.i49 = shl nuw nsw i64 %i.xh, 3
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.idx.i.i49
  %.not8.i.i50 = icmp eq i32 %i.xg, 0
  br i1 %.not8.i.i50, label %._crit_edge.i.i56, label %.lr.ph.i.i51

._crit_edge.loopexit.i.i54:                       ; preds = %.lr.ph.i.i51
  %.pre.i.i55 = load ptr, ptr %17, align 8, !tbaa !25
  br label %._crit_edge.i.i56

._crit_edge.i.i56:                                ; preds = %._crit_edge.loopexit.i.i54, %._crit_edge.i48
  %i.xj = phi ptr [ %.pre.i.i55, %._crit_edge.loopexit.i.i54 ], [ %i.xf, %._crit_edge.i48 ] ; 2 uses
  %i.xk = icmp eq ptr %i.xj, %i.el
  br i1 %i.xk, label %_ZL15eliminateStoresPN6hermes10BasicBlockEN4llvh8ArrayRefIPNS_14AllocStackInstEEE.exit, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.i.i56
  call void @free(ptr noundef %i.xj) #10
  br label %_ZL15eliminateStoresPN6hermes10BasicBlockEN4llvh8ArrayRefIPNS_14AllocStackInstEEE.exit

.lr.ph.i.i51:                                     ; preds = %._crit_edge.i48, %.lr.ph.i.i51
  %.09.i.i52 = phi ptr [ %i.xm, %.lr.ph.i.i51 ], [ %i.xf, %._crit_edge.i48 ] ; 2 uses
  %i.xl = load ptr, ptr %.09.i.i52, align 8, !tbaa !64
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.xl) #10
  %i.xm = getelementptr inbounds nuw i8, ptr %.09.i.i52, i64 8 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.xm, %i.xi
  br i1 %.not.i.i53, label %._crit_edge.loopexit.i.i54, label %.lr.ph.i.i51

bb.ce:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i, %.lr.ph166.i
  %.sroa.0129.0164.i = phi ptr [ %.sroa.0129.0161.i, %.lr.ph166.i ], [ %.sroa.0129.0.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i ] ; 14 uses
  %.054163.i = phi i1 [ false, %.lr.ph166.i ], [ %.7.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i ] ; 10 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.0129.0164.i, i64 16 ; 2 uses
  %i.xo = load i8, ptr %i.xn, align 8, !tbaa !65  ; 4 uses
  %i.xp = icmp ne i8 %i.xo, 51
  %.not146.i = icmp eq ptr %.sroa.0129.0164.i, null ; 4 uses
  %.not.i39 = or i1 %.not146.i, %i.xp
  br i1 %.not.i39, label %.thread.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0129.0164.i, i32 noundef 1) #10 ; 10 uses
  %i.xr = load ptr, ptr %15, align 8, !tbaa !125  ; 6 uses
  %i.xs = load i32, ptr %i.eo, align 8, !tbaa !126 ; 11 uses
  %i.xt = icmp eq i32 %i.xs, 0                    ; 2 uses
  br i1 %i.xt, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xu = ptrtoint ptr %i.xq to i64
  %i.xv = trunc i64 %i.xu to i32                  ; 2 uses
  %i.xw = lshr i32 %i.xv, 4
  %i.xx = lshr i32 %i.xv, 9
  %i.xy = xor i32 %i.xw, %i.xx
  %i.xz = add i32 %i.xs, -1                       ; 3 uses
  %.02744.i.i.i.i40 = and i32 %i.xy, %i.xz        ; 4 uses
  %i.ya = zext nneg i32 %.02744.i.i.i.i40 to i64  ; 2 uses
  %i.yb = getelementptr inbounds nuw [16 x i8], ptr %i.xr, i64 %i.ya ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !81 ; 2 uses
  %i.yd = icmp eq ptr %i.xq, %i.yc
  br i1 %i.yd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.thread, label %.lr.ph.i.i.i.i41, !prof !37

.lr.ph.i.i.i.i41:                                 ; preds = %bb.cg, %bb.ch
  %i.ye = phi ptr [ %i.yk, %bb.ch ], [ %i.yc, %bb.cg ]
  %.02747.i.i.i.i42 = phi i32 [ %.027.i.i.i.i44, %bb.ch ], [ %.02744.i.i.i.i40, %bb.cg ]
  %.046.i.i.i.i43 = phi i32 [ %i.yg, %bb.ch ], [ 1, %bb.cg ] ; 2 uses
  %i.yf = icmp eq ptr %i.ye, inttoptr (i64 -8 to ptr)
  br i1 %i.yf, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, label %bb.ch, !prof !29

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i41
  %i.yg = add i32 %.046.i.i.i.i43, 1
  %i.yh = add i32 %.046.i.i.i.i43, %.02747.i.i.i.i42
  %.027.i.i.i.i44 = and i32 %i.yh, %i.xz          ; 2 uses
  %i.yi = zext i32 %.027.i.i.i.i44 to i64
  %i.yj = getelementptr inbounds nuw [16 x i8], ptr %i.xr, i64 %i.yi ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !81 ; 2 uses
  %i.yl = icmp eq ptr %i.xq, %i.yk
  br i1 %i.yl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.loopexit, label %.lr.ph.i.i.i.i41, !prof !38, !llvm.loop !205

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i41, %bb.cf
  %i.ym = zext i32 %i.xs to i64                   ; 2 uses
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.xr, i64 %i.ym
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.loopexit: ; preds = %bb.ch
  %.pre767 = zext i32 %i.xs to i64
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.loopexit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i
  %.pre-phi = phi i64 [ %.pre767, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.loopexit ], [ %i.ym, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i ]
  %.sink.i.i.ph.pn.i.i45 = phi ptr [ %i.yj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.loopexit ], [ %i.yn, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i ] ; 2 uses
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.xr, i64 %.pre-phi
  %.not147.i = icmp eq ptr %.sink.i.i.ph.pn.i.i45, %i.yo
  br i1 %.not147.i, label %bb.cm, label %bb.ci

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.thread: ; preds = %bb.cg
  %.not147.i493 = icmp eq i32 %.02744.i.i.i.i40, %i.xs
  br i1 %.not147.i493, label %.thread, label %bb.ci

bb.ci:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.thread, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i
  %.sink.i.i.ph.pn.i.i45494 = phi ptr [ %i.yb, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.thread ], [ %.sink.i.i.ph.pn.i.i45, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i ]
  %i.yp = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i45494, i64 8 ; 2 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !252 ; 2 uses
  %.not66.i = icmp eq ptr %i.yq, null
  br i1 %.not66.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.yr = load i32, ptr %i.em, align 8, !tbaa !26 ; 2 uses
  %i.ys = load i32, ptr %i.en, align 4, !tbaa !27
  %.not.i.i.i46 = icmp ult i32 %i.yr, %i.ys
  br i1 %.not.i.i.i46, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i, label %bb.ck, !prof !29

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef nonnull %i.el, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i47 = load i32, ptr %i.em, align 8, !tbaa !26
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i: ; preds = %bb.ck, %bb.cj
  %i.yt = phi i32 [ %.pre.i.i.i47, %bb.ck ], [ %i.yr, %bb.cj ]
  %i.yu = load ptr, ptr %17, align 8, !tbaa !25
  %i.yv = zext i32 %i.yt to i64
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.yv
  %i.yx = ptrtoint ptr %i.yq to i64
  store i64 %i.yx, ptr %i.yw, align 1
  %i.yy = load i32, ptr %i.em, align 8, !tbaa !26
  %i.yz = add i32 %i.yy, 1
  store i32 %i.yz, ptr %i.em, align 8, !tbaa !26
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i, %bb.ci
  %.155.i = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i ], [ %.054163.i, %bb.ci ]
  store ptr %.sroa.0129.0164.i, ptr %i.yp, align 8, !tbaa !252
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i

bb.cm:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i
  br i1 %i.xt, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i258, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.cm
  %.pre768 = ptrtoint ptr %i.xq to i64
  %.pre770 = trunc i64 %.pre768 to i32            ; 2 uses
  %.pre772 = lshr i32 %.pre770, 4
  %.pre774 = lshr i32 %.pre770, 9
end_hunk_1
