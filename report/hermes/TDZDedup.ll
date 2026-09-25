Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/TDZDedup?download=true
inline.NumInlined: 693
inline.NumDeleted: 401
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  %i.ah = add i32 %i.ag, 1                        ; 3 uses
  store i32 %i.ah, ptr %i.w, align 8, !tbaa !12
  %.not.i1537.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i1537.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 164 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.ay, %.lr.ph.i.i.i
  %.038.i.i.i = phi i1 [ false, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.ay ] ; 3 uses
  %i.aq = phi i32 [ %i.ah, %.lr.ph.i.i.i ], [ %.pr.i.i.i, %bb.ay ] ; 2 uses
  %.val11.i.i.i = load ptr, ptr %3, align 8, !tbaa !11
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val11.i.i.i, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !107 ; 8 uses
  %i.av = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  %.val13.i.i.i = load i8, ptr %i.av, align 8, !tbaa !43, !range !108, !noundef !109
  %i.aw = trunc nuw i8 %.val13.i.i.i to i1
  br i1 %i.aw, label %bb.av, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val14.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !44
  %.val14.val.i.i.i = load ptr, ptr %.val14.i.i.i, align 8, !tbaa !116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.ai, ptr %2, align 8, !tbaa !11
  store i32 0, ptr %i.aj, align 8, !tbaa !12
  store i32 8, ptr %i.ak, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val14.val.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.val14.val.i.i.i, i64 56 ; 2 uses
  %.sroa.08.028.i.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !95 ; 2 uses
  %.not2029.i.i.i.i = icmp eq ptr %.sroa.08.028.i.i.i.i, %i.ay
  br i1 %.not2029.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i
  %.pre.i17.i.i.i = load ptr, ptr %2, align 8, !tbaa !11 ; 3 uses
  %.pre34.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.az = zext i32 %.pre34.i.i.i.i to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i17.i.i.i, i64 %.idx.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %.pre34.i.i.i.i, 0
  br i1 %.not8.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !11
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %._crit_edge.i.i.i.i
  %i.bb = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.pre.i17.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ai
  br i1 %i.bc, label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @free(ptr noundef %i.bb) #10
  br label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.pre.i17.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !118
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bd) #10
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i
  %.sroa.08.031.i.i.i.i = phi ptr [ %.sroa.08.0.i.i.i.i, %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i ], [ %.sroa.08.028.i.i.i.i, %bb.d ] ; 11 uses
  %.03930.i.i.i.i = phi i1 [ %.140.i.i.i.i, %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i ], [ false, %bb.d ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.031.i.i.i.i, i64 16 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !128 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 62
  %spec.select.i.i.i.i.i = select i1 %i.bh, ptr %.sroa.08.031.i.i.i.i, ptr null ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i, null ; 2 uses
  br i1 %.not.i16.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 0) #10 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !128
  switch i8 %i.bj, label %bb.g [
    i8 49, label %.sink.split.i.i.i.i
    i8 22, label %.sink.split.i.i.i.i
  ]

.sink.split.i.i.i.i:                              ; preds = %bb.f, %bb.f
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %i.bl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bk, i32 noundef 0) #10
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i.i.i, %bb.f
  %storemerge55.i.i.i.i = phi ptr [ %i.bi, %bb.f ], [ %i.bl, %.sink.split.i.i.i.i ]
  store ptr %storemerge55.i.i.i.i, ptr %i.a, align 8, !tbaa !46
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  switch i8 %i.bg, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i [
    i8 51, label %bb.i
    i8 50, label %bb.p
  ]

bb.i:                                             ; preds = %bb.h
  %i.bm = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 1) #10 ; 4 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !46
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !47  ; 2 uses
  %i.bo = load i32, ptr %i.al, align 8, !tbaa !48 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i32 %i.br, 4
  %i.bt = lshr i32 %i.br, 9
  %i.bu = xor i32 %i.bs, %i.bt
  %i.bv = add i32 %i.bo, -1                       ; 2 uses
  %.02744.i.i.i.i.i.i.i = and i32 %i.bv, %i.bu    ; 2 uses
  %i.bw = zext nneg i32 %.02744.i.i.i.i.i.i.i to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !46 ; 2 uses
  %i.bz = icmp eq ptr %i.bm, %i.by
  br i1 %i.bz, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !prof !49

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %bb.k
  %i.ca = phi ptr [ %i.cg, %bb.k ], [ %i.by, %bb.j ]
  %.02747.i.i.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i.i.i, %bb.k ], [ %.02744.i.i.i.i.i.i.i, %bb.j ]
  %.046.i.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.cb = icmp eq ptr %i.ca, inttoptr (i64 -8 to ptr)
  br i1 %i.cb, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i, label %bb.k, !prof !38

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cc = add i32 %.046.i.i.i.i.i.i.i, 1
  %i.cd = add i32 %.046.i.i.i.i.i.i.i, %.02747.i.i.i.i.i.i.i
  %.027.i.i.i.i.i.i.i = and i32 %i.cd, %i.bv      ; 2 uses
  %i.ce = zext i32 %.027.i.i.i.i.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !46 ; 2 uses
  %i.ch = icmp eq ptr %i.bm, %i.cg
  br i1 %i.ch, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !prof !50, !llvm.loop !74

_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ci = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 0) #10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.cj, align 2
  %.not.i.i.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i to i1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53 ; 3 uses
  %.not.i61.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i61.i.i.i.i, label %._crit_edge.i62.i.i.i.i, label %bb.m

._crit_edge.i62.i.i.i.i:                          ; preds = %bb.l
  %.pre.i63.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !35
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !129
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !57
  %i.cr = icmp eq i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 0, ptr %i.cs, align 8, !tbaa !130
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.o:                                             ; preds = %bb.m, %._crit_edge.i62.i.i.i.i
  %i.ct = phi ptr [ %.pre.i63.i.i.i.i, %._crit_edge.i62.i.i.i.i ], [ %i.cp, %bb.m ] ; 2 uses
  %i.cu = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 7 uses
  %i.cv = load i32, ptr %i.ct, align 8, !tbaa !57
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !46
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !131
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 0, ptr %i.cx, align 8, !tbaa !130
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i32 %i.cv, ptr %i.cz, align 8, !tbaa !129
  %i.da = load ptr, ptr %i.cl, align 8, !tbaa !53
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !58
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !59
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !60
  store ptr %i.cu, ptr %i.db, align 8, !tbaa !59
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !53
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.p:                                             ; preds = %bb.h
  %i.de = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 1) #10 ; 2 uses
  %6 = icmp eq ptr %i.de, null                    ; 2 uses
  %7 = getelementptr inbounds i8, ptr %i.de, i64 -16
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %spec.select.i.i.i.i = select i1 %6, ptr null, ptr %9 ; 4 uses
  store ptr %spec.select.i.i.i.i, ptr %i.a, align 8, !tbaa !46
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !47  ; 2 uses
  %i.dg = load i32, ptr %i.al, align 8, !tbaa !48 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = ptrtoint ptr %spec.select.i.i.i.i to i64
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = lshr i32 %i.dj, 4
  %i.dl = lshr i32 %i.dj, 9
  %i.dm = xor i32 %i.dk, %i.dl
  %i.dn = add i32 %i.dg, -1                       ; 2 uses
  %.02744.i.i.i65.i.i.i.i = and i32 %i.dm, %i.dn  ; 2 uses
  %i.do = zext nneg i32 %.02744.i.i.i65.i.i.i.i to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !46 ; 2 uses
  %i.dr = icmp eq ptr %spec.select.i.i.i.i, %i.dq
  br i1 %i.dr, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit71.i.i.i.i, label %.lr.ph.i.i.i66.i.i.i.i, !prof !49

.lr.ph.i.i.i66.i.i.i.i:                           ; preds = %bb.q, %bb.r
  %i.ds = phi ptr [ %i.dy, %bb.r ], [ %i.dq, %bb.q ]
  %.02747.i.i.i67.i.i.i.i = phi i32 [ %.027.i.i.i69.i.i.i.i, %bb.r ], [ %.02744.i.i.i65.i.i.i.i, %bb.q ]
  %.046.i.i.i68.i.i.i.i = phi i32 [ %i.du, %bb.r ], [ 1, %bb.q ] ; 2 uses
  %i.dt = icmp eq ptr %i.ds, inttoptr (i64 -8 to ptr)
  br i1 %i.dt, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i, label %bb.r, !prof !38

bb.r:                                             ; preds = %.lr.ph.i.i.i66.i.i.i.i
  %i.du = add i32 %.046.i.i.i68.i.i.i.i, 1
  %i.dv = add i32 %.046.i.i.i68.i.i.i.i, %.02747.i.i.i67.i.i.i.i
  %.027.i.i.i69.i.i.i.i = and i32 %i.dv, %i.dn    ; 2 uses
  %i.dw = zext i32 %.027.i.i.i69.i.i.i.i to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !46 ; 2 uses
  %i.dz = icmp eq ptr %spec.select.i.i.i.i, %i.dy
  br i1 %i.dz, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit71.i.i.i.i, label %.lr.ph.i.i.i66.i.i.i.i, !prof !50, !llvm.loop !74

_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit71.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.ea = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 0) #10
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %.sroa.0.0.copyload.i72.i.i.i.i = load i32, ptr %i.eb, align 2
  %.not.i.i.i74.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i72.i.i.i.i to i1
  br i1 %.not.i.i.i74.i.i.i.i, label %bb.s, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i

bb.s:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit71.i.i.i.i
  %i.ec = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !53 ; 3 uses
  %.not.i75.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i75.i.i.i.i, label %._crit_edge.i76.i.i.i.i, label %bb.t

._crit_edge.i76.i.i.i.i:                          ; preds = %bb.s
  %.pre.i78.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !35
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !129
  %i.eh = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !57
  %i.ej = icmp eq i32 %i.eg, %i.ei
  br i1 %i.ej, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i8 0, ptr %i.ek, align 8, !tbaa !130
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.v:                                             ; preds = %bb.t, %._crit_edge.i76.i.i.i.i
  %i.el = phi ptr [ %.pre.i78.i.i.i.i, %._crit_edge.i76.i.i.i.i ], [ %i.eh, %bb.t ] ; 2 uses
  %i.em = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 7 uses
  %i.en = load i32, ptr %i.el, align 8, !tbaa !57
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !46
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !131
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 0, ptr %i.ep, align 8, !tbaa !130
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i32 %i.en, ptr %i.er, align 8, !tbaa !129
  %i.es = load ptr, ptr %i.ed, align 8, !tbaa !53
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !58
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !59
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !60
  store ptr %i.em, ptr %i.et, align 8, !tbaa !59
  store ptr %i.em, ptr %i.ed, align 8, !tbaa !53
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i: ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit71.i.i.i.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i, %bb.g
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !46  ; 6 uses
  %i.ex = load ptr, ptr %i.am, align 8, !tbaa !61 ; 6 uses
  %i.ey = load i32, ptr %i.an, align 8, !tbaa !62 ; 10 uses
  %i.ez = icmp eq i32 %i.ey, 0                    ; 2 uses
  br i1 %i.ez, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = trunc i64 %i.fa to i32                  ; 2 uses
  %i.fc = lshr i32 %i.fb, 4
  %i.fd = lshr i32 %i.fb, 9
  %i.fe = xor i32 %i.fc, %i.fd
  %i.ff = add i32 %i.ey, -1                       ; 2 uses
  %.02744.i.i.i80.i.i.i.i = and i32 %i.fe, %i.ff  ; 2 uses
  %i.fg = zext nneg i32 %.02744.i.i.i80.i.i.i.i to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fg ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !46 ; 2 uses
  %i.fj = icmp eq ptr %i.ew, %i.fi
  br i1 %i.fj, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i81.i.i.i.i, !prof !49

.lr.ph.i.i.i81.i.i.i.i:                           ; preds = %bb.w, %bb.x
  %i.fk = phi ptr [ %i.fq, %bb.x ], [ %i.fi, %bb.w ]
  %.02747.i.i.i82.i.i.i.i = phi i32 [ %.027.i.i.i84.i.i.i.i, %bb.x ], [ %.02744.i.i.i80.i.i.i.i, %bb.w ]
  %.046.i.i.i83.i.i.i.i = phi i32 [ %i.fm, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %i.fl = icmp eq ptr %i.fk, inttoptr (i64 -8 to ptr)
  br i1 %i.fl, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i.i.i.i.i, label %bb.x, !prof !38

bb.x:                                             ; preds = %.lr.ph.i.i.i81.i.i.i.i
  %i.fm = add i32 %.046.i.i.i83.i.i.i.i, 1
  %i.fn = add i32 %.046.i.i.i83.i.i.i.i, %.02747.i.i.i82.i.i.i.i
  %.027.i.i.i84.i.i.i.i = and i32 %i.fn, %i.ff    ; 2 uses
  %i.fo = zext i32 %.027.i.i.i84.i.i.i.i to i64
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !46 ; 2 uses
  %i.fr = icmp eq ptr %i.ew, %i.fq
  br i1 %i.fr, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i81.i.i.i.i, !prof !50, !llvm.loop !75

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i81.i.i.i.i, %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i
  %i.fs = zext i32 %i.ey to i64
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fs
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i.i.i.i.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i.i.i.i.i: ; preds = %bb.x, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i.i.i.i.i, %bb.w
  %.sink.i.ph.pn.i.i.i.i.i.i = phi ptr [ %i.ft, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i.i.i.i.i ], [ %i.fh, %bb.w ], [ %i.fp, %bb.x ] ; 2 uses
  %i.fu = zext i32 %i.ey to i64
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fu
  %i.fw = icmp eq ptr %.sink.i.ph.pn.i.i.i.i.i.i, %i.fv
  br i1 %i.fw, label %_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.thread.i.i.i.i, label %_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.i.i.i.i

_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.i.i.i.i: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i.i.i.i.i, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !133
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !130, !range !108, !noundef !109
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.al, label %_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.thread.i.i.i.i

_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.thread.i.i.i.i: ; preds = %_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.i.i.i.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i.i.i.i.i
  br i1 %i.ez, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.thread.i.i.i.i
  %i.gc = ptrtoint ptr %i.ew to i64
  %i.gd = trunc i64 %i.gc to i32                  ; 2 uses
  %i.ge = lshr i32 %i.gd, 4
  %i.gf = lshr i32 %i.gd, 9
  %i.gg = xor i32 %i.ge, %i.gf
  %i.gh = add i32 %i.ey, -1                       ; 2 uses
  %.02744.i.i.i.i.i.i = and i32 %i.gg, %i.gh      ; 2 uses
  %i.gi = zext nneg i32 %.02744.i.i.i.i.i.i to i64
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.gi ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !46 ; 2 uses
  %i.gl = icmp eq ptr %i.ew, %i.gk
  br i1 %i.gl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !49

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.y, %bb.aa
  %i.gm = phi ptr [ %i.gw, %bb.aa ], [ %i.gk, %bb.y ] ; 2 uses
  %i.gn = phi ptr [ %i.gv, %bb.aa ], [ %i.gj, %bb.y ] ; 2 uses
  %.02747.i.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i.i, %bb.aa ], [ %.02744.i.i.i.i.i.i, %bb.y ]
  %.046.i.i.i.i.i.i = phi i32 [ %i.gs, %bb.aa ], [ 1, %bb.y ] ; 2 uses
  %.02945.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %bb.aa ], [ null, %bb.y ] ; 4 uses
  %i.go = icmp eq ptr %i.gm, inttoptr (i64 -8 to ptr)
  br i1 %i.go, label %bb.z, label %bb.aa, !prof !38

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i21.i.i.i = icmp eq ptr %.02945.i.i.i.i.i.i, null
  %i.gp = select i1 %.not.i.i.i21.i.i.i, ptr %i.gn, ptr %.02945.i.i.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gq = icmp eq ptr %i.gm, inttoptr (i64 -16 to ptr)
  %i.gr = icmp eq ptr %.02945.i.i.i.i.i.i, null
  %or.cond.not.i.i.i.i.i.i = select i1 %i.gq, i1 %i.gr, i1 false
  %spec.select.i.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i.i, ptr %i.gn, ptr %.02945.i.i.i.i.i.i
  %i.gs = add i32 %.046.i.i.i.i.i.i, 1
  %i.gt = add i32 %.046.i.i.i.i.i.i, %.02747.i.i.i.i.i.i
  %.027.i.i.i.i.i.i = and i32 %i.gt, %i.gh        ; 2 uses
  %i.gu = zext i32 %.027.i.i.i.i.i.i to i64
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.gu ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !46 ; 2 uses
  %i.gx = icmp eq ptr %i.ew, %i.gw
  br i1 %i.gx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !50, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i.i: ; preds = %bb.z, %_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.thread.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.gp, %bb.z ], [ null, %_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.thread.i.i.i.i ]
  %i.gy = load i32, ptr %i.ao, align 8, !tbaa !63 ; 3 uses
  %i.gz = shl i32 %i.gy, 2
  %i.ha = add i32 %i.gz, 4
  %i.hb = mul i32 %i.ey, 3
  %.not.i.i4.i.i.i.i = icmp ult i32 %i.ha, %i.hb
  br i1 %.not.i.i4.i.i.i.i, label %bb.ac, label %bb.ab, !prof !38

bb.ab:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i.i
  %i.hc = shl i32 %i.ey, 1
  br label %.sink.split.i.i.i.i.i.i

bb.ac:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i.i
  %i.hd = load i32, ptr %i.ap, align 4, !tbaa !64
  %.neg.i.i.i.i.i.i = xor i32 %i.gy, -1
  %.neg12.i.i.i.i.i.i = add i32 %i.ey, %.neg.i.i.i.i.i.i
  %i.he = sub i32 %.neg12.i.i.i.i.i.i, %i.hd
  %i.hf = lshr i32 %i.ey, 3
  %.not10.i.i.i.i.i.i = icmp ugt i32 %i.he, %i.hf
  br i1 %.not10.i.i.i.i.i.i, label %bb.ag, label %.sink.split.i.i.i.i.i.i, !prof !38

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.ac, %bb.ab
  %.sink.i.i5.i.i.i.i = phi i32 [ %i.hc, %bb.ab ], [ %i.ey, %bb.ac ]
  call void @_ZN4llvh8DenseMapIPN6hermes5ValueEPNS1_19ScopedHashTableNodeIS3_bEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef %.sink.i.i5.i.i.i.i)
  %i.hg = load ptr, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %i.hh = load i32, ptr %i.an, align 8, !tbaa !62 ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i.i.i.i.i.i
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = trunc i64 %i.hk to i32                  ; 2 uses
  %i.hm = lshr i32 %i.hl, 4
  %i.hn = lshr i32 %i.hl, 9
  %i.ho = xor i32 %i.hm, %i.hn
  %i.hp = add i32 %i.hh, -1                       ; 2 uses
  %.02744.i.i.i.i.i = and i32 %i.ho, %i.hp        ; 2 uses
  %i.hq = zext nneg i32 %.02744.i.i.i.i.i to i64
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.hq ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !46 ; 2 uses
  %i.ht = icmp eq ptr %i.hj, %i.hs
end_hunk_0
