Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SSAUpdaterBulk?download=true
inline.NumInlined: 1919
inline.NumDeleted: 1016
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4llvm9GraphDiffIPNS_10BasicBlockELb0EE11getChildrenILb0EEENS_11SmallVectorIS2_Lj8EEES2_:bb.a
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.k, align 4, !tbaa !12
  %i.l = sub i64 %i.g, %i.h
  %i.m = ashr exact i64 %i.l, 5                   ; 8 uses
  %i.n = icmp ugt i64 %i.m, 8
  br i1 %i.n, label %bb.b, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.i, i64 noundef %i.m, i64 noundef 8) #13
  %.pre10.i.i = load i32, ptr %i.j, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ 0, %bb.a ], [ %.pre10.i.i, %bb.b ] ; 2 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EEC2ISt16reverse_iteratorINS_11Instruction13succ_iteratorEEEERKNS_14iterator_rangeIT_EE.exit

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i
  %i.q = zext i32 %i.o to i64
  %i.r = load ptr, ptr %0, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %xtraiter = and i64 %i.m, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.ptr.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.f, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %.06.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %.045.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.s, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i.prol, i64 -32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !241
  store ptr %i.u, ptr %.045.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.w = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !378

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.m, 8
  br i1 %i.x, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EEC2ISt16reverse_iteratorINS_11Instruction13succ_iteratorEEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.ptr.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.y = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !241
  store ptr %i.z, ptr %.045.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i, i64 -64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !241
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ae = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i, i64 -96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !241
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ah = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i, i64 -128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !241
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i, i64 -160
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !241
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.an = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i, i64 -192
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !241
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.aq = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i, i64 -224
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !241
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.at = getelementptr inbounds i8, ptr %.ptr.i.i.i.i.i.i.i.i.i.i, i64 -256 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !241
  store ptr %i.au, ptr %i.as, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.aw = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -8
  %i.ax = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EEC2ISt16reverse_iteratorINS_11Instruction13succ_iteratorEEEERKNS_14iterator_rangeIT_EE.exit, !llvm.loop !379

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EEC2ISt16reverse_iteratorINS_11Instruction13succ_iteratorEEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i.i
  %i.ay = trunc i64 %i.m to i32
  %i.az = add i32 %i.o, %i.ay                     ; 3 uses
  store i32 %i.az, ptr %i.j, align 8, !tbaa !8
  %i.ba = load i32, ptr %1, align 8, !noalias !380
  %i.bb = and i32 %i.ba, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.bb, 0          ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !380
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !380
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !noalias !380
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.bd, ptr %i.bc ; 3 uses
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.bf, ptr %i.bi ; 2 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.bh, i32 4 ; 4 uses
  %i.bj = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.bj, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EEC2ISt16reverse_iteratorINS_11Instruction13succ_iteratorEEEERKNS_14iterator_rangeIT_EE.exit
  %i.bk = add i32 %.sink.i.i.i.i.i, -1            ; 2 uses
  %i.bl = ptrtoint ptr %2 to i64
  %i.bm = mul i64 %i.bl, -4658895280553007687     ; 2 uses
  %i.bn = lshr i64 %i.bm, 31
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bk, %i.bp                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !95, !noalias !389
  %i.bv = and i32 %i.bq, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !96

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.by = phi i64 [ %i.ce, %bb.d ], [ %i.br, %bb.c ]
  %.01117.i.i.i = phi i32 [ %i.cd, %bb.d ], [ %i.bq, %bb.c ]
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33, !noalias !389
  %i.cb = icmp eq ptr %2, %i.ca
  br i1 %i.cb, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.loopexit, label %bb.d, !prof !31

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = add nuw i32 %.01117.i.i.i, 1
  %i.cd = and i32 %i.cc, %i.bk                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 5
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !95, !noalias !389
  %i.ci = and i32 %i.cd, 31
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !97

.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EEC2ISt16reverse_iteratorINS_11Instruction13succ_iteratorEEEERKNS_14iterator_rangeIT_EE.exit
  %i.cl = zext i32 %.sink.i.i.i.i.i to i64        ; 2 uses
  %i.cm = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.cl
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre42 = zext i32 %.sink.i.i.i.i.i to i64
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre42, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.loopexit ], [ %i.cl, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.bz, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.loopexit ], [ %i.cm, %.loopexit.i.i ] ; 5 uses
  %i.cn = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i, i64 %.pre-phi
  %i.co = icmp eq ptr %.lcssa.sink.i.i, %i.cn
  br i1 %i.co, label %bb.r, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !11 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !8  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %.idx = shl nuw nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx
  %.not33 = icmp eq i32 %i.cs, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !11    ; 6 uses
  br i1 %.not33, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.cv = ptrtoint ptr %.pre to i64
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit
  store i32 %i.es, ptr %i.j, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.cw = phi i32 [ %i.es, %._crit_edge ], [ %i.az, %bb.e ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 40
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cy
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !11 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !8
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dd
  %i.df = tail call noundef ptr @_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.cz, ptr noundef %i.da, ptr noundef %i.de) ; 0 uses
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit
  %3 = phi i32 [ %i.az, %.lr.ph ], [ %i.es, %_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit ] ; 3 uses
  %.01235 = phi ptr [ %i.cq, %.lr.ph ], [ %i.et, %_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit ] ; 2 uses
  %i.dg = load ptr, ptr %.01235, align 8, !tbaa !33 ; 8 uses
  %i.dh = zext i32 %3 to i64                      ; 2 uses
  %.idx6.i = shl nuw nsw i64 %i.dh, 3             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx6.i ; 5 uses
  %i.dj = lshr i64 %i.dh, 2                       ; 2 uses
  %.not.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.dk = and i64 %.idx6.i, 34359738336
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.pre, i64 %i.dk
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %i.dx, %bb.l ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %.pre, %.lr.ph.i.i.i.i.i ], [ %i.dw, %bb.l ] ; 9 uses
  %i.dl = load ptr, ptr %.02946.i.i.i.i.i, align 8, !tbaa !33
  %i.dm = icmp eq ptr %i.dl, %i.dg
  br i1 %i.dm, label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !33
  %i.dp = icmp eq ptr %i.do, %i.dg
  br i1 %i.dp, label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !33
  %i.ds = icmp eq ptr %i.dr, %i.dg
  br i1 %i.ds, label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit50, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !33
  %i.dv = icmp eq ptr %i.du, %i.dg
  br i1 %i.dv, label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  %i.dx = add nsw i64 %.047.i.i.i.i.i, -1
  %i.dy = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.h, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !390

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.l
  %i.dz = and i32 %3, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.g
  %.pre-phi56.i.i.i.i.i = phi i32 [ %i.dz, %._crit_edge.loopexit.i.i.i.i.i ], [ %3, %bb.g ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.pre, %bb.g ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i, label %_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit [
    i32 3, label %bb.m
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ea = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !33
  %i.eb = icmp eq ptr %i.ea, %i.dg
  br i1 %i.eb, label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.n, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ec, %bb.n ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ed = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !33
  %i.ee = icmp eq ptr %i.ed, %i.dg
  br i1 %i.ee, label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.o, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ef, %bb.o ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.eg = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !33
  %i.eh = icmp eq ptr %i.eg, %i.dg
  br i1 %i.eh, label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i, label %_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit

_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i

_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit50: ; preds = %bb.j
  %i.ej = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i

_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit52: ; preds = %bb.k
  %i.ek = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i

_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i: ; preds = %bb.h, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit50, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit52, %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.m
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.m ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.ek, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit52 ], [ %i.ei, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.ej, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i.loopexit.split.loop.exit50 ], [ %.02946.i.i.i.i.i, %bb.h ] ; 4 uses
  %i.el = icmp eq ptr %.028.i.i.i.i.i, %i.di
  %.01730.i.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i, i64 8 ; 2 uses
  %.not31.i.i.i = icmp eq ptr %.01730.i.i.i, %i.di
  %or.cond.i.i.i = select i1 %i.el, i1 true, i1 %.not31.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i, %bb.q
  %.01733.i.i.i = phi ptr [ %.017.i.i.i, %bb.q ], [ %.01730.i.i.i, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i ] ; 2 uses
  %.032.i.i.i = phi ptr [ %.1.i.i.i, %bb.q ], [ %.028.i.i.i.i.i, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i ] ; 3 uses
  %i.em = load ptr, ptr %.01733.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dg
  br i1 %i.en, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i13
  store ptr %i.em, ptr %.032.i.i.i, align 8, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i13
  %.1.i.i.i = phi ptr [ %.032.i.i.i, %.lr.ph.i.i.i13 ], [ %i.eo, %bb.p ] ; 2 uses
  %.017.i.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %.017.i.i.i, %i.di
  br i1 %.not.i.i.i14, label %_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit, label %.lr.ph.i.i.i13, !llvm.loop !391

_ZN4llvm5eraseINS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEvRT_T0_.exit: ; preds = %bb.q, %._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i
  %.016.i.i.i = phi ptr [ %.028.i.i.i.i.i, %_ZSt9__find_ifIPPN4llvm10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.i ], [ %i.di, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.di, %._crit_edge.i.i.i.i.i ], [ %.1.i.i.i, %bb.q ]
  %i.ep = ptrtoint ptr %.016.i.i.i to i64
  %i.eq = sub i64 %i.ep, %i.cv
  %i.er = lshr exact i64 %i.eq, 3
  %i.es = trunc i64 %i.er to i32                  ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.01235, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.et, %i.cu
  br i1 %.not, label %._crit_edge, label %bb.g

bb.r:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 10 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 8) #13
  %.pre8.pre.i = load i32, ptr %i.e, align 8, !tbaa !8
  %.pre62.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre62 = phi ptr [ %i.a, %bb.b ], [ %.pre62.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i32 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendIPKS2_vEEvT_S7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i
  %i.t = zext i32 %.pre8.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre62, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !8
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendIPKS2_vEEvT_S7_.exit

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendIPKS2_vEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i, %bb.d
  %i.v = phi ptr [ %.pre62, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i ], [ %.pre61, %bb.d ]
  %i.w = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.x = trunc i64 %i.m to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPKPN4llvm10BasicBlockEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.a
  %.idx52 = sub i64 0, %i.l
  %i.aa = ashr exact i64 %i.l, 3                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.g                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 8) #13
  %.pre = load ptr, ptr %0, align 8, !tbaa !11
  %.pre59 = load i32, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %.pre64 = zext i32 %.pre59 to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.g, %bb.e ], [ %.pre64, %bb.f ] ; 3 uses
  %i.ah = phi i32 [ %i.f, %bb.e ], [ %.pre59, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 5 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d ; 14 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.am = ashr exact i64 %gepdiff, 3              ; 8 uses
  %.not = icmp ult i64 %i.am, %i.aa
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %.idx52 ; 2 uses
  %i.ao = add nsw i64 %i.aa, %.pre-phi            ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i46

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef %i.ao, i64 noundef 8) #13
  %.pre.i47 = load i32, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %.pre12.i = zext i32 %.pre.i47 to i64
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i46

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i46: ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.ai, %bb.g ], [ %.pre60, %bb.h ]
  %.pre-phi.i = phi i64 [ %.pre-phi, %bb.g ], [ %.pre12.i, %bb.h ]
  %i.au = phi i32 [ %i.ah, %bb.g ], [ %.pre.i47, %bb.h ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre-phi.i ; 2 uses
  %i.aw = icmp sgt i64 %i.l, 8                    ; 2 uses
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.av, ptr nonnull align 8 %i.an, i64 %i.l, i1 false)
  %.pre11.i = load i32, ptr %i.e, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit.i46
  %i.ax = icmp eq i64 %i.l, 8
  br i1 %i.ax, label %bb.k, label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !33
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !33
  br label %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.az = phi i32 [ %.pre11.i, %bb.i ], [ %i.au, %bb.j ], [ %i.au, %bb.k ]
  %i.ba = trunc i64 %i.aa to i32
  %i.bb = add i32 %i.az, %i.ba
  store i32 %i.bb, ptr %i.e, align 8, !tbaa !8
  %i.bc = add i64 %i.d, %i.l
  %gepdiff53 = sub i64 %.idx, %i.bc               ; 3 uses
  %i.bd = ashr exact i64 %gepdiff53, 3            ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.l, label %bb.m, !prof !31

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.ak, i64 %gepdiff53, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm10BasicBlockES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit
  %i.bh = icmp eq i64 %gepdiff53, 8
  br i1 %i.bh, label %bb.n, label %_ZSt13move_backwardIPPN4llvm10BasicBlockES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !33
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !33
  br label %_ZSt13move_backwardIPPN4llvm10BasicBlockES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPN4llvm10BasicBlockES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  br i1 %i.aw, label %bb.o, label %bb.p, !prof !31

bb.o:                                             ; preds = %_ZSt13move_backwardIPPN4llvm10BasicBlockES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr align 8 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKPN4llvm10BasicBlockEPS2_ET0_T_S7_S6_.exit

bb.p:                                             ; preds = %_ZSt13move_backwardIPPN4llvm10BasicBlockES3_ET0_T_S5_S4_.exit
  %i.bk = icmp eq i64 %i.l, 8
  br i1 %i.bk, label %bb.q, label %_ZSt4copyIPKPN4llvm10BasicBlockEPS2_ET0_T_S7_S6_.exit

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %2, align 8, !tbaa !33
  store ptr %i.bl, ptr %i.ak, align 8, !tbaa !33
  br label %_ZSt4copyIPKPN4llvm10BasicBlockEPS2_ET0_T_S7_S6_.exit

bb.r:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_10BasicBlockEE7reserveEm.exit
  %i.bm = trunc i64 %i.aa to i32
  %i.bn = add i32 %i.ah, %i.bm                    ; 2 uses
  store i32 %i.bn, ptr %i.e, align 8, !tbaa !8
  %.not.i.i48 = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bo
  %i.bq = sub nsw i64 0, %i.am
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 8 %i.ak, i64 %gepdiff, i1 false)
  %min.iters.check = icmp ult i64 %i.am, 14
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bs = add i64 %i.aj, %i.b
  %i.bt = add i64 %i.c, %i.k
  %i.bu = sub i64 %i.bt, %i.bs
  %diff.check = icmp ugt i64 %i.bu, -32
  br i1 %diff.check, label %.lr.ph.preheader78, label %vector.ph
end_hunk_0
