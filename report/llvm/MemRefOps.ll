Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemRefOps?download=true
inline.NumInlined: 26999
inline.NumDeleted: 8857
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4mlir6memref13ExpandShapeOp19computeExpandedTypeENS_10MemRefTypeEN4llvm8ArrayRefIlEENS4_INS3_11SmallVectorIlLj2EEEEE:bb.a
  br i1 %i.r, label %bb.e, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.o, i64 noundef %2, i64 noundef 8) #26
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i:    ; preds = %bb.e, %bb.d
  %i.s = trunc i64 %2 to i32                      ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !95, !noalias !816 ; 2 uses
  %i.u = load i32, ptr %i.k, align 8, !tbaa !96, !noalias !816 ; 2 uses
  %i.v = icmp ne i64 %4, 0
  %i.w = icmp ne i32 %i.u, 0
  %.not3.i45.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %.not3.i45.i, label %.lr.ph49.i, label %._crit_edge50.i

.lr.ph49.i:                                       ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i
  %i.x = zext i32 %i.u to i64
  %.idx51.i = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx51.i
  %.idx.i = shl nuw nsw i64 %4, 5
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i
  %i.aa = add i32 %i.s, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.k

._crit_edge50.i:                                  ; preds = %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ae = load ptr, ptr %7, align 8, !tbaa !95, !noalias !817
  %i.af = load i32, ptr %i.p, align 8, !tbaa !96, !noalias !817 ; 4 uses
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ai, ptr %9, align 8, !tbaa !95, !alias.scope !818
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !96, !alias.scope !818
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 8, ptr %i.ak, align 4, !tbaa !97, !alias.scope !818
  %i.al = icmp ugt i32 %i.af, 8
  br i1 %i.al, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i: ; preds = %._crit_edge50.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ai, i64 noundef %i.ag, i64 noundef 8) #26
  %.pre10.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !96, !alias.scope !818 ; 2 uses
  %.pre11.i.i.i.i = zext i32 %.pre10.i.i.i.i to i64
  %.pre30 = load ptr, ptr %9, align 8, !tbaa !95, !alias.scope !818
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i: ; preds = %._crit_edge50.i
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZN4llvm9to_vectorILj8ENS_14iterator_rangeISt16reverse_iteratorIPlEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i:         ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i
  %i.am = phi ptr [ %.pre30, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i ], [ %i.ai, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i ] ; 2 uses
  %i.an = phi i32 [ %.pre10.i.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i ]
  %.pre-phi.i.i.i70.i = phi i64 [ %.pre11.i.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.pre-phi.i.i.i70.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %i.ap = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ]
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !93
  store i64 %i.ar, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.at = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.au = icmp samesign ugt i64 %.06.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9to_vectorILj8ENS_14iterator_rangeISt16reverse_iteratorIPlEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS9_.exit.i, !llvm.loop !814

_ZN4llvm9to_vectorILj8ENS_14iterator_rangeISt16reverse_iteratorIPlEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i
  %i.av = phi ptr [ %i.ai, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aw = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ax = add i32 %i.aw, %i.af                    ; 3 uses
  store i32 %i.ax, ptr %i.aj, align 8, !tbaa !96, !alias.scope !818
  %i.ay = zext i32 %i.ax to i64                   ; 4 uses
  %i.az = icmp eq i64 %2, %i.ay
  br i1 %i.az, label %_ZN4llvm15SmallVectorImplIlE6resizeEml.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9to_vectorILj8ENS_14iterator_rangeISt16reverse_iteratorIPlEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS9_.exit.i
  %i.ba = icmp ult i64 %2, %i.ay
  br i1 %i.ba, label %.sink.split.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = sub nuw i64 %2, %i.ay                   ; 2 uses
  %i.bc = load i32, ptr %i.ak, align 4, !tbaa !97
  %i.bd = zext i32 %i.bc to i64
  %.not.i.i.i.i.i = icmp ugt i64 %2, %i.bd
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i.i, !prof !65

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.ai, i64 noundef %2, i64 noundef 8) #26
  %.pre.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !96 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre31 = load ptr, ptr %9, align 8, !tbaa !95
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.be = phi ptr [ %i.av, %bb.g ], [ %.pre31, %bb.h ]
  %.pre-phi.i.i = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.bf = phi i32 [ %i.ax, %bb.g ], [ %.pre.i.i.i, %bb.h ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.pre-phi.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bb, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i.i ] ; 2 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIlE6appendEml.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !29

_ZN4llvm15SmallVectorImplIlE6appendEml.exit.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bj = trunc i64 %i.bb to i32
  %i.bk = add i32 %i.bf, %i.bj
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN4llvm15SmallVectorImplIlE6appendEml.exit.i.i, %bb.f
  %.sink.i.i = phi i32 [ %i.bk, %_ZN4llvm15SmallVectorImplIlE6appendEml.exit.i.i ], [ %i.s, %bb.f ]
  store i32 %.sink.i.i, ptr %i.aj, align 8, !tbaa !96
  br label %_ZN4llvm15SmallVectorImplIlE6resizeEml.exit.i

_ZN4llvm15SmallVectorImplIlE6resizeEml.exit.i:    ; preds = %.sink.split.i.i, %_ZN4llvm9to_vectorILj8ENS_14iterator_rangeISt16reverse_iteratorIPlEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT0_EEEEE4typeEE4typeEXT_EEEOS9_.exit.i
  %i.bl = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !93
  %i.bn = load ptr, ptr %9, align 8, !tbaa !95
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !96
  %i.bp = zext i32 %i.bo to i64
  %i.bq = call ptr @_ZN4mlir17StridedLayoutAttr3getEPNS_11MLIRContextElN4llvm8ArrayRefIlEE(ptr noundef %i.bl, i64 noundef %i.bm, ptr %i.bn, i64 %i.bp) #26
  %i.br = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ai
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIlE6resizeEml.exit.i
  call void @free(ptr noundef %i.br) #26
  br label %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i:          ; preds = %bb.i, %_ZN4llvm15SmallVectorImplIlE6resizeEml.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bt = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.o
  br i1 %i.bu, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i
  call void @free(ptr noundef %i.bt) #26
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.j, %_ZN4llvm11SmallVectorIlLj8EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.p

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i, %.lr.ph49.i
  %.048.i = phi i32 [ %i.aa, %.lr.ph49.i ], [ %.1.lcssa.i49, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i ] ; 2 uses
  %.sroa.031.047.i = phi ptr [ %i.y, %.lr.ph49.i ], [ %i.bw, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i ]
  %.sroa.7.046.i = phi ptr [ %i.z, %.lr.ph49.i ], [ %i.bv, %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.7.046.i, i64 -32 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.031.047.i, i64 -8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.ab, ptr %8, align 8, !tbaa !95
  store i32 0, ptr %i.ac, align 8, !tbaa !96
  store i32 2, ptr %i.ad, align 4, !tbaa !97
  %i.bx = getelementptr inbounds i8, ptr %.sroa.7.046.i, i64 -24 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !96 ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.by, 0
  %i.bz = icmp eq ptr %8, %i.bv
  %or.cond.i.i = or i1 %i.bz, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = icmp ugt i32 %i.by, 2
  br i1 %i.ca, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.l
  %i.cb = zext i32 %i.by to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.ab, i64 noundef %i.cb, i64 noundef 8) #26
  %.pre.i11.i = load i32, ptr %i.bx, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i11.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !95
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i:  ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.l
  %i.cc = phi ptr [ %.pre.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.ab, %bb.l ]
  %i.cd = phi i32 [ %.pre.i11.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.by, %bb.l ]
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bv, align 8, !tbaa !95
  %gepdiff.i.i.i = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 8 %i.cf, i64 %gepdiff.i.i.i, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i.i
  store i32 %i.by, ptr %i.ac, align 8, !tbaa !96
  %i.cg = load i64, ptr %i.bw, align 8, !tbaa !93
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i
  %.pre = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %i.ch = icmp eq ptr %.pre, %i.ab
  br i1 %i.ch, label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %.pre) #26
  br label %_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj2EED2Ev.exit.i:          ; preds = %bb.k, %bb.m, %._crit_edge.i
  %.1.lcssa.i49 = phi i32 [ %i.cr, %._crit_edge.i ], [ %i.cr, %bb.m ], [ %.048.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ci = icmp ne ptr %i.bv, %3
  %i.cj = icmp ne ptr %i.bw, %i.t
  %.not3.i.i = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %.not3.i.i, label %bb.k, label %._crit_edge50.i

.lr.ph.i:                                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i, %.lr.ph.preheader.i
  %.144.i = phi i32 [ %i.cr, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i ], [ %.048.i, %.lr.ph.preheader.i ] ; 2 uses
  %.0943.i = phi i32 [ %17, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %.01042.i = phi i64 [ %.sroa.08.0.i.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i ], [ %i.cg, %.lr.ph.preheader.i ] ; 4 uses
  %i.ck = load i32, ptr %i.p, align 8, !tbaa !96  ; 2 uses
  %i.cl = load i32, ptr %i.q, align 4, !tbaa !97
  %.not.i.i = icmp ult i32 %i.ck, %i.cl
  br i1 %.not.i.i, label %bb.o, label %bb.n, !prof !98

bb.n:                                             ; preds = %.lr.ph.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %.01042.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.cm = zext i32 %i.ck to i64
  %i.cn = load ptr, ptr %7, align 8, !tbaa !95
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  store i64 %.01042.i, ptr %i.co, align 1
  %i.cp = load i32, ptr %i.p, align 8, !tbaa !96
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.p, align 8, !tbaa !96
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit.i: ; preds = %bb.o, %bb.n
  %12 = icmp eq i64 %.01042.i, -9223372036854775808 ; 3 uses
  %.2.i.i = select i1 %12, i64 0, i64 %.01042.i   ; 2 uses
  %i.cr = add i32 %.144.i, -1                     ; 3 uses
  %i.cs = zext i32 %.144.i to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !93 ; 2 uses
  %13 = icmp eq i64 %i.cu, -9223372036854775808   ; 3 uses
  %.2.i13.i = select i1 %13, i64 0, i64 %i.cu     ; 2 uses
  %i.cv = icmp ne i64 %.2.i13.i, 0
  %or.cond.not.i.i = or i1 %13, %i.cv
  %i.cw = icmp ne i64 %.2.i.i, 0
  %or.cond.not14.i.i = or i1 %12, %i.cw
  %or.cond.i = select i1 %or.cond.not.i.i, i1 %or.cond.not14.i.i, i1 false
  %14 = or i1 %12, %13
  %15 = mul nsw i64 %.2.i13.i, %.2.i.i
  %16 = select i1 %14, i64 -9223372036854775808, i64 %15
  %.sroa.08.0.i.i = select i1 %or.cond.i, i64 %16, i64 0
  %17 = add nuw i32 %.0943.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %17, %i.by
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !815

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, %bb.c
  %.sroa.040.0.i = phi ptr [ %i.bq, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i ], [ undef, %bb.c ] ; 3 uses
  %i.cx = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.j
  br i1 %i.cy, label %_ZL24computeExpandedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefIlEENS2_INS1_11SmallVectorIlLj2EEEEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.cx) #26
  br label %_ZL24computeExpandedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefIlEENS2_INS1_11SmallVectorIlLj2EEEEE.exit

_ZL24computeExpandedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefIlEENS2_INS1_11SmallVectorIlLj2EEEEE.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.n, label %bb.r, label %bb.x

bb.r:                                             ; preds = %_ZL24computeExpandedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefIlEENS2_INS1_11SmallVectorIlLj2EEEEE.exit
  %i.cz = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %.not.i.i.i22 = icmp eq ptr %.sroa.040.0.i, null
  br i1 %.not.i.i.i22, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = load ptr, ptr %.sroa.040.0.i, align 8, !tbaa !239 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !119

bb.t:                                             ; preds = %bb.s
  %i.de = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i23, label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.282, i64 49), i64 31) #26
  store ptr %i.df, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !81 ; 2 uses
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !95 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dk = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.dk ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !81
  %i.dm = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = xor i64 %i.dk, -1
  %i.dp = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.do
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.dm, ptr %i.dn, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.dm, i64 %i.dp, i64 %i.dk ; 2 uses
  %i.dq = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dq, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.dj, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.dr
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.ds = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.dt = icmp eq ptr %i.ds, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.dt, label %bb.w, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

bb.w:                                             ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !121
  br label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit: ; preds = %bb.r, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.v, %bb.w
  %i.dw = phi ptr [ null, %bb.r ], [ %i.dv, %bb.w ], [ null, %bb.v ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ]
  %i.dx = call ptr @_ZNK4mlir10MemRefType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.dy = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr %1, i64 %2, ptr %i.cz, ptr %.sroa.040.0.i, ptr %i.dw, ptr %i.dx) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, %_ZL24computeExpandedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefIlEENS2_INS1_11SmallVectorIlLj2EEEEE.exit, %bb.b
  %.sroa.029.1 = phi ptr [ %i.i, %bb.b ], [ %i.dy, %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit ], [ undef, %_ZL24computeExpandedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefIlEENS2_INS1_11SmallVectorIlLj2EEEEE.exit ]
  %.sroa.3.1 = phi i8 [ 1, %bb.b ], [ 1, %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit ], [ 0, %_ZL24computeExpandedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefIlEENS2_INS1_11SmallVectorIlLj2EEEEE.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.029.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6memref13ExpandShapeOp16inferOutputShapeERNS_9OpBuilderENS_8LocationENS_10MemRefTypeEN4llvm8ArrayRefINS6_11SmallVectorIlLj2EEEEENS7_INS_12OpFoldResultEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr.1305") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.644") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.std::optional.1306", align 8 ; 9 uses
  %8 = alloca %"class.llvm::ArrayRef.1281", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.not.i.i.i.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !80     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, !prof !119

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.277, i64 49), i64 16) #26
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !81 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !95   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.t, label %bb.f, label %_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  br label %_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit

_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.w = phi ptr [ null, %bb.a ], [ %i.v, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i ]
  store ptr %4, ptr %8, align 8, !tbaa !261
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !93
  call void @_ZN4mlir27inferExpandShapeOutputShapeERNS_9OpBuilderENS_8LocationENS_10ShapedTypeEN4llvm8ArrayRefINS4_11SmallVectorIlLj2EEEEENS5_INS_12OpFoldResultEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1306") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %3, ptr %i.w, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1281") align 8 %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef.644") align 8 %6) #26
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !263, !range !117, !noundef !118
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.aa, align 8, !tbaa !263
  br label %_ZNSt14_Optional_baseIN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZNK4mlir14BaseMemRefTypecvNS_10ShapedTypeEEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.ad, align 4, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !96 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  %i.ag = icmp eq ptr %0, %7
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.ag, %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.thread13, label %bb.h

end_hunk_0
begin_hunk_1_@_ZN4mlir6memref15CollapseShapeOp23isGuaranteedCollapsibleENS_10MemRefTypeEN4llvm8ArrayRefINS3_11SmallVectorIlLj2EEEEE:bb.a
bb.a:
  %3 = alloca %"class.mlir::MemRefType", align 8  ; 3 uses
  %4 = alloca %"class.mlir::MemRefLayoutAttrInterface", align 8 ; 5 uses
  store ptr %0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = call { ptr, ptr } @_ZNK4mlir10MemRefType9getLayoutEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.d, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 @_ZNK4mlir25MemRefLayoutAttrInterface10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load ptr, ptr %3, align 8
  %i.f = call fastcc { ptr, i8 } @_ZL25computeCollapsedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefINS1_11SmallVectorIlLj2EEEEEb(ptr %.sroa.01.0.copyload, ptr %1, i64 %2, i1 noundef zeroext true)
  %i.g = extractvalue { ptr, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i8 } @_ZL25computeCollapsedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefINS1_11SmallVectorIlLj2EEEEEb(ptr %0, ptr nofree readonly captures(address) %1, i64 %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.mlir::MemRefType", align 8  ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.792", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.792", align 8 ; 14 uses
  store ptr %0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.d, align 4, !tbaa !97
  %i.e = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 3 uses
  %i.g = call i8 @_ZNK4mlir10MemRefType19getStridesAndOffsetERN4llvm15SmallVectorImplIlEERl(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i32 0, ptr %i.j, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 6, ptr %i.k, align 4, !tbaa !97
  %i.l = icmp ugt i64 %2, 6
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.i, i64 noundef %2, i64 noundef 8) #26
  br label %.lr.ph.preheader

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit:      ; preds = %bb.b
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %.critedge54, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit
  %.idx159.pn = shl nuw nsw i64 %2, 5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx159.pn ; 2 uses
  br label %.lr.ph

.lr.ph145:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %i.n = load i32, ptr %i.j, align 8, !tbaa !96
  %i.o = load ptr, ptr %6, align 8, !tbaa !95     ; 2 uses
  %i.p = load ptr, ptr %5, align 8
  %not. = xor i1 %3, true
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %.047133 = phi ptr [ %i.ar, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.q = load ptr, ptr %.047133, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %.047133, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !96
  %i.t = zext i32 %i.s to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.895.0 = phi i64 [ %i.t, %.lr.ph ], [ %i.aa, %bb.e ] ; 4 uses
  %i.u = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.895.0
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !93
  switch i64 %i.y, label %.critedge.thread.loopexit [
    i64 1, label %bb.d
    i64 -9223372036854775808, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = icmp ugt i64 %.sroa.895.0, 1
  br i1 %i.z, label %bb.e, label %.critedge.thread.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aa = add nsw i64 %.sroa.895.0, -1
  br label %bb.c, !llvm.loop !840

bb.f:                                             ; preds = %bb.c
  %i.ab = icmp eq i64 %.sroa.895.0, 1
  %.pre149 = load i32, ptr %i.j, align 8, !tbaa !96 ; 3 uses
  %.pre151 = load i32, ptr %i.k, align 4, !tbaa !97 ; 2 uses
  br i1 %i.ab, label %.critedge.thread, label %bb.i

.critedge.thread.loopexit:                        ; preds = %bb.d, %bb.c
  %.pre = load i32, ptr %i.j, align 8, !tbaa !96
  %.pre150 = load i32, ptr %i.k, align 4, !tbaa !97
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %bb.f
  %i.ac = phi i32 [ %.pre150, %.critedge.thread.loopexit ], [ %.pre151, %bb.f ]
  %i.ad = phi i32 [ %.pre, %.critedge.thread.loopexit ], [ %.pre149, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.w
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp ult i32 %i.ad, %i.ac
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %.critedge.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ag)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.h:                                             ; preds = %.critedge.thread
  %i.ah = zext i32 %i.ad to i64
  %i.ai = load ptr, ptr %6, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store i64 %i.ag, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !96
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.j, align 8, !tbaa !96
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.i:                                             ; preds = %bb.f
  %.not.i55 = icmp ult i32 %.pre149, %.pre151
  br i1 %.not.i55, label %bb.k, label %bb.j, !prof !98

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef -9223372036854775808)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.k:                                             ; preds = %bb.i
  %i.am = zext i32 %.pre149 to i64
  %i.an = load ptr, ptr %6, align 8, !tbaa !95
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  store i64 -9223372036854775808, ptr %i.ao, align 1
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !96
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.j, align 8, !tbaa !96
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.047133, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.m
  br i1 %.not, label %.lr.ph145, label %.lr.ph

.loopexit:                                        ; preds = %bb.o, %bb.l
  %.not125 = icmp eq ptr %i.as, %1
  br i1 %.not125, label %.critedge54, label %bb.l

bb.l:                                             ; preds = %.lr.ph145, %.loopexit
  %.048143.in = phi i32 [ %i.n, %.lr.ph145 ], [ %.048143, %.loopexit ]
  %.sroa.087.0142 = phi ptr [ %i.m, %.lr.ph145 ], [ %i.as, %.loopexit ] ; 2 uses
  %.048143 = add i32 %.048143.in, -1              ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.087.0142, i64 -32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !95 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.087.0142, i64 -24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !96 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.not126134 = icmp eq i32 %i.av, 1
  br i1 %.not126134, label %.loopexit, label %.lr.ph139.preheader

.lr.ph139.preheader:                              ; preds = %bb.l
  %i.ax = zext i32 %i.av to i64
  %.idx146 = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr i8, ptr %i.at, i64 %.idx146
  %i.az = zext i32 %.048143 to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !93 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, -9223372036854775808 ; 2 uses
  %.2.i = select i1 %i.bc, i64 0, i64 %i.bb
  %..i = zext i1 %i.bc to i8
  br label %.lr.ph139

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.o
  %.sroa.072.0137 = phi ptr [ %i.bd, %bb.o ], [ %i.ay, %.lr.ph139.preheader ]
  %.sroa.076.0136 = phi i8 [ %.sroa.08.0.i, %bb.o ], [ %..i, %.lr.ph139.preheader ] ; 2 uses
  %.sroa.880.0135 = phi i64 [ %.sroa.5.0.i, %bb.o ], [ %.2.i, %.lr.ph139.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.072.0137, i64 -8 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !93 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !93 ; 2 uses
  %7 = icmp eq i64 %i.bg, -9223372036854775808    ; 3 uses
  %.2.i60 = select i1 %7, i64 0, i64 %i.bg        ; 2 uses
  %i.bh = icmp ne i64 %.2.i60, 0
  %or.cond.not.i = or i1 %7, %i.bh
  %i.bi = trunc nuw i8 %.sroa.076.0136 to i1
  %i.bj = icmp ne i64 %.sroa.880.0135, 0
  %or.cond.not14.i = select i1 %i.bi, i1 true, i1 %i.bj
  %or.cond123 = select i1 %or.cond.not.i, i1 %or.cond.not14.i, i1 false
  br i1 %or.cond123, label %bb.m, label %_ZN4mlir16SaturatedIntegermlES0_.exit

bb.m:                                             ; preds = %.lr.ph139
  %..i59 = zext i1 %7 to i8
  %i.bk = or i8 %.sroa.076.0136, %..i59           ; 2 uses
  %or.cond5.not.not.i = icmp eq i8 %i.bk, 0
  %i.bl = mul nsw i64 %.2.i60, %.sroa.880.0135
  %spec.select12.i = select i1 %or.cond5.not.not.i, i64 %i.bl, i64 0
  br label %_ZN4mlir16SaturatedIntegermlES0_.exit

_ZN4mlir16SaturatedIntegermlES0_.exit:            ; preds = %.lr.ph139, %bb.m
  %.sroa.08.0.i = phi i8 [ 0, %.lr.ph139 ], [ %i.bk, %bb.m ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ 0, %.lr.ph139 ], [ %spec.select12.i, %bb.m ] ; 2 uses
  %i.bm = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !93
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !93 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -9223372036854775808
  %i.bt = trunc nuw i8 %.sroa.08.0.i to i1
  %or.cond = select i1 %i.bt, i1 true, i1 %i.bs
  %i.bu = icmp eq i64 %.sroa.5.0.i, %i.br
  %or.cond128 = select i1 %or.cond, i1 %not., i1 %i.bu
  br i1 %or.cond128, label %bb.o, label %.loopexit129

bb.o:                                             ; preds = %bb.n, %_ZN4mlir16SaturatedIntegermlES0_.exit
  %.not126 = icmp eq ptr %i.bd, %i.aw
  br i1 %.not126, label %.loopexit, label %.lr.ph139

.critedge54:                                      ; preds = %.loopexit, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit
  %i.bv = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !93
  %i.bx = load ptr, ptr %6, align 8, !tbaa !95
  %i.by = load i32, ptr %i.j, align 8, !tbaa !96
  %i.bz = zext i32 %i.by to i64
  %i.ca = call ptr @_ZN4mlir17StridedLayoutAttr3getEPNS_11MLIRContextElN4llvm8ArrayRefIlEE(ptr noundef %i.bv, i64 noundef %i.bw, ptr %i.bx, i64 %i.bz) #26
  %.pre152 = load ptr, ptr %6, align 8, !tbaa !95
  br label %.loopexit129

.loopexit129:                                     ; preds = %bb.n, %.critedge54
  %i.cb = phi ptr [ %.pre152, %.critedge54 ], [ %i.o, %bb.n ] ; 2 uses
  %.sroa.0111.0 = phi ptr [ %i.ca, %.critedge54 ], [ undef, %bb.n ]
  %.sroa.2112.4 = phi i8 [ 1, %.critedge54 ], [ 0, %bb.n ]
  %i.cc = icmp eq ptr %i.cb, %i.i
  br i1 %i.cc, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit129
  call void @free(ptr noundef %i.cb) #26
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %.loopexit129, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %.sroa.0111.1 = phi ptr [ %.sroa.0111.0, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ undef, %bb.a ]
  %.sroa.2112.5 = phi i8 [ %.sroa.2112.4, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ 0, %bb.a ]
  %i.cd = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.b
  br i1 %i.ce, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit69, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.cd) #26
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit69

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit69:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0111.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2112.5, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6memref15CollapseShapeOp20computeCollapsedTypeENS_10MemRefTypeEN4llvm8ArrayRefINS3_11SmallVectorIlLj2EEEEE(ptr %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::MemRefType", align 8  ; 8 uses
  %4 = alloca %"class.llvm::SmallVector.792", align 8 ; 12 uses
  %5 = alloca %"class.mlir::MemRefLayoutAttrInterface", align 8 ; 5 uses
  store ptr %0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 6, ptr %i.c, align 4, !tbaa !97
  %i.d = icmp ugt i64 %2, 6
  br i1 %i.d, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 8) #26
  br label %.lr.ph54.preheader

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit:      ; preds = %bb.a
  %.not52 = icmp eq i64 %2, 0
  br i1 %.not52, label %._crit_edge55, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.thread, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit
  %.idx63.pn = shl nuw nsw i64 %2, 5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx63.pn
  br label %.lr.ph54

._crit_edge55:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = call { ptr, ptr } @_ZNK4mlir10MemRefType9getLayoutEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  store ptr %i.g, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.i, ptr %i.h, align 8
  %i.j = call noundef zeroext i1 @_ZNK4mlir25MemRefLayoutAttrInterface10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.j, label %bb.e, label %bb.f

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %.053 = phi ptr [ %i.y, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ %1, %.lr.ph54.preheader ] ; 3 uses
  %i.k = load ptr, ptr %.053, align 8, !tbaa !95  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.053, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !96   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx56 = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx56
  %.not2747 = icmp eq i32 %i.m, 0
  br i1 %.not2747, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit
  %i.p = trunc nuw i8 %.sroa.08.0.i to i1
  %i.q = select i1 %i.p, i64 -9223372036854775808, i64 %.sroa.5.0.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph54
  %.sroa.037.0.lcssa = phi i64 [ 1, %.lr.ph54 ], [ %i.q, %._crit_edge.loopexit ] ; 2 uses
  %i.r = load i32, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !97
  %.not.i = icmp ult i32 %i.r, %i.s
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %.sroa.037.0.lcssa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %4, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store i64 %.sroa.037.0.lcssa, ptr %i.v, align 1
  %i.w = load i32, ptr %i.b, align 8, !tbaa !96
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.b, align 8, !tbaa !96
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.053, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.e
  br i1 %.not, label %._crit_edge55, label %.lr.ph54

.lr.ph:                                           ; preds = %.lr.ph54, %_ZN4mlir16SaturatedIntegermlES0_.exit
  %.02650 = phi ptr [ %i.ak, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ %i.k, %.lr.ph54 ] ; 2 uses
  %.sroa.639.049 = phi i64 [ %.sroa.5.0.i, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ 1, %.lr.ph54 ] ; 2 uses
  %.sroa.037.048 = phi i8 [ %.sroa.08.0.i, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ 0, %.lr.ph54 ] ; 2 uses
  %i.z = load i64, ptr %.02650, align 8, !tbaa !93
  %i.aa = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = and i64 %i.z, 4294967295
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !93 ; 2 uses
  %6 = icmp eq i64 %i.ae, -9223372036854775808    ; 3 uses
  %.2.i = select i1 %6, i64 0, i64 %i.ae          ; 2 uses
  %i.af = icmp ne i64 %.2.i, 0
  %or.cond.not.i = or i1 %6, %i.af
  %i.ag = trunc nuw i8 %.sroa.037.048 to i1
  %i.ah = icmp ne i64 %.sroa.639.049, 0
  %or.cond.not14.i = select i1 %i.ag, i1 true, i1 %i.ah
  %or.cond = select i1 %or.cond.not.i, i1 %or.cond.not14.i, i1 false
  br i1 %or.cond, label %bb.d, label %_ZN4mlir16SaturatedIntegermlES0_.exit

bb.d:                                             ; preds = %.lr.ph
  %..i = zext i1 %6 to i8
  %i.ai = or i8 %.sroa.037.048, %..i              ; 2 uses
  %or.cond5.not.not.i = icmp eq i8 %i.ai, 0
  %i.aj = mul nsw i64 %.2.i, %.sroa.639.049
  %spec.select12.i = select i1 %or.cond5.not.not.i, i64 %i.aj, i64 0
  br label %_ZN4mlir16SaturatedIntegermlES0_.exit

_ZN4mlir16SaturatedIntegermlES0_.exit:            ; preds = %.lr.ph, %bb.d
  %.sroa.08.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ai, %bb.d ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ 0, %.lr.ph ], [ %spec.select12.i, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02650, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.ak, %i.o
  br i1 %.not27, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge55
  %i.al = load ptr, ptr %4, align 8, !tbaa !95
  %i.am = load i32, ptr %i.b, align 8, !tbaa !96
  %i.an = zext i32 %i.am to i64
  %i.ao = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.ap = call ptr @_ZNK4mlir10MemRefType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.aq = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr %i.al, i64 %i.an, ptr %i.ao, ptr null, ptr null, ptr %i.ap) #26
  br label %bb.l

bb.f:                                             ; preds = %._crit_edge55
  %.sroa.04.0.copyload = load ptr, ptr %3, align 8
  %i.ar = call fastcc { ptr, i8 } @_ZL25computeCollapsedLayoutMapN4mlir10MemRefTypeEN4llvm8ArrayRefINS1_11SmallVectorIlLj2EEEEEb(ptr %.sroa.04.0.copyload, ptr %1, i64 %2, i1 noundef zeroext false)
  %i.as = extractvalue { ptr, i8 } %i.ar, 0       ; 3 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !95
  %i.au = load i32, ptr %i.b, align 8, !tbaa !96
  %i.av = zext i32 %i.au to i64
  %i.aw = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !239 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !119

bb.h:                                             ; preds = %bb.g
  %i.bb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.282, i64 49), i64 31) #26
  store ptr %i.bc, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !81 ; 2 uses
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !95 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.bh ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !81
  %i.bj = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = xor i64 %i.bh, -1
  %i.bm = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.bl
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.bj, ptr %i.bk, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.bj, i64 %i.bm, i64 %i.bh ; 2 uses
  %i.bn = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bn, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.bg, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bo
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.bp = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.bq = icmp eq ptr %i.bp, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bq, label %bb.k, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !121
  br label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit: ; preds = %bb.f, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.j, %bb.k
  %i.bt = phi ptr [ null, %bb.f ], [ %i.bs, %bb.k ], [ null, %bb.j ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ]
  %i.bu = call ptr @_ZNK4mlir10MemRefType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.bv = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr %i.at, i64 %i.av, ptr %i.aw, ptr %i.as, ptr %i.bt, ptr %i.bu) #26
  br label %bb.l

bb.l:                                             ; preds = %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, %bb.e
  %.sroa.025.0 = phi ptr [ %i.aq, %bb.e ], [ %i.bv, %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit ]
  %i.bw = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.a
  br i1 %i.bx, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.bw) #26
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.sroa.025.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6memref15CollapseShapeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefINS7_11SmallVectorIlLj2EEEEENS8_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.249") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %9 = alloca %"class.mlir::MemRefType", align 8  ; 4 uses
  %10 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  store ptr %2, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.d = tail call ptr @_ZN4mlir6memref15CollapseShapeOp20computeCollapsedTypeENS_10MemRefTypeEN4llvm8ArrayRefINS3_11SmallVectorIlLj2EEEEE(ptr %i.c, ptr %3, i64 %4)
  store ptr %i.d, ptr %9, align 8
  %i.e = tail call ptr @_ZN4mlir32getReassociationIndicesAttributeERNS_7BuilderEN4llvm8ArrayRefINS2_11SmallVectorIlLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3, i64 %4) #26
  %i.f = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 5, ptr %i.g, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !104
  store ptr @.str.192, ptr %7, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.i, align 8, !tbaa !105
  %i.j = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(34) %7) #26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.j, ptr %i.e) #26
  %i.l = load ptr, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr %i.l, ptr %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull align 8 dereferenceable(8) %9, i64 1) #26
  %i.o = ptrtoint ptr %8 to i64
  %i.p = load i64, ptr %10, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = load i64, ptr %i.q, align 8
  call void @_ZN4mlir6memref15CollapseShapeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.p, i64 %i.r, i64 %i.o, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.249") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6memref15CollapseShapeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.249") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::function_ref.1587", align 8 ; 4 uses
  %8 = alloca %class.anon.2981, align 1           ; 3 uses
  %9 = alloca %class.anon.2983, align 1           ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #26
  %.sroa.06.0.copyload = load ptr, ptr %6, align 8, !tbaa !244
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !93 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.b, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.27.0.copyload, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nsw i64 %.sroa.27.0.copyload, %i.e   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.h = load i32, ptr %i.g, align 4, !tbaa !97
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 16) #26
  %.pre8.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !96
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.27.0.copyload, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !95
end_hunk_1
begin_hunk_2_@_ZN4mlir6memref7StoreOp4foldENS0_21StoreOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE:bb.a

_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i: ; preds = %bb.h, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i
  store ptr %.01127.i, ptr %.sroa.0.0.copyload.i.i.i.i2, align 8, !tbaa !91
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i, %bb.d, %bb.c, %_ZNK4mlir5Value13getDefiningOpINS_6memref6CastOpEEET_v.exit.thread.i
  %.1.i = phi i8 [ 1, %_ZN4mlir9IROperandINS_9OpOperandENS_5ValueEE3setES2_.exit.i ], [ %.029.i, %bb.d ], [ %.029.i, %_ZNK4mlir5Value13getDefiningOpINS_6memref6CastOpEEET_v.exit.thread.i ], [ %.029.i, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01127.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.l
  br i1 %.not.i, label %_ZN4mlir6memref14foldMemRefCastEPNS_9OperationENS_5ValueE.exit, label %.lr.ph.i

_ZN4mlir6memref14foldMemRefCastEPNS_9OperationENS_5ValueE.exit: ; preds = %.critedge.i, %bb.a, %_ZN4mlir9Operation13getOpOperandsEv.exit.i
  %.0.lcssa.i = phi i8 [ 0, %_ZN4mlir9Operation13getOpOperandsEv.exit.i ], [ 0, %bb.a ], [ %.1.i, %.critedge.i ]
  ret i8 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local ptr @_ZN4mlir6memref7StoreOp17getAccessedMemrefEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !72
  ret ptr %.sroa.0.0.copyload.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6memref7StoreOp22updateMemrefAndIndicesERNS_12RewriterBaseENS_5ValueENS_10ValueRangeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.361") align 8 captures(none) initializes((64, 65)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %3, i64 %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.a) #26, !inline_history !861
  %i.e = load ptr, ptr %1, align 8, !tbaa !101    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !88   ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !89
  %.not2.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not2.i.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !87
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %3, ptr %i.m, align 8, !tbaa !72
  store ptr %3, ptr %i.i, align 8, !tbaa !87
  %i.n = load ptr, ptr %3, align 8, !tbaa !91     ; 3 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !88
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir9OpOperand6assignENS_5ValueE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.h, ptr %i.o, align 8, !tbaa !87
  br label %_ZN4mlir9OpOperand6assignENS_5ValueE.exit.i.i

_ZN4mlir9OpOperand6assignENS_5ValueE.exit.i.i:    ; preds = %bb.d, %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.q = load i32, ptr %i.p, align 4, !noalias !864
  %i.r = and i32 %i.q, 8388608
  %.not.i.i.i2.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i2.i.i, label %_ZN4mlir6memref7StoreOp17getIndicesMutableEv.exit.i.i, label %bb.e, !prof !65

bb.e:                                             ; preds = %_ZN4mlir9OpOperand6assignENS_5ValueE.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !70, !noalias !864
  %i.u = add i32 %i.t, -2
  br label %_ZN4mlir6memref7StoreOp17getIndicesMutableEv.exit.i.i

_ZN4mlir6memref7StoreOp17getIndicesMutableEv.exit.i.i: ; preds = %bb.e, %_ZN4mlir9OpOperand6assignENS_5ValueE.exit.i.i
  %i.v = phi i32 [ %i.u, %bb.e ], [ -2, %_ZN4mlir9OpOperand6assignENS_5ValueE.exit.i.i ]
  call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef %i.v, ptr null, i64 0) #26
  call void @_ZN4mlir19MutableOperandRange6assignENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 %4, i64 %5) #26
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %"_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS_6memref7StoreOp22updateMemrefAndIndicesERS0_NS_5ValueENS_10ValueRangeEE3$_0EEvPNS_9OperationEOT_.exit", label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6memref7StoreOp17getIndicesMutableEv.exit.i.i
  call void @free(ptr noundef %i.x) #26
  br label %"_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS_6memref7StoreOp22updateMemrefAndIndicesERS0_NS_5ValueENS_10ValueRangeEE3$_0EEvPNS_9OperationEOT_.exit"

"_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS_6memref7StoreOp22updateMemrefAndIndicesERS0_NS_5ValueENS_10ValueRangeEE3$_0EEvPNS_9OperationEOT_.exit": ; preds = %_ZN4mlir6memref7StoreOp17getIndicesMutableEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.aa = load ptr, ptr %2, align 8, !tbaa !146
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.a) #26, !inline_history !861
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ad, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6memref7StoreOp15bubbleDownCastsERNS_9OpBuilderE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr null, i64 0) #26
  %i.e = load i64, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN4mlir6detail36bubbleDownInPlaceMemorySpaceCastImplERNS_9OpOperandENS_10ValueRangeE(ptr dead_on_unwind writable sret(%"class.llvm::FailureOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 %i.e, i64 %i.g) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6memref9SubViewOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #26
  tail call void %1(i64 noundef %2, ptr %i.c, ptr nonnull @.str.111, i64 7) #26, !inline_history !1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6memref9SubViewOp15inferResultTypeENS_10MemRefTypeEN4llvm8ArrayRefIlEES5_S5_(ptr %0, ptr nofree readonly captures(address) %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.69") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::MemRefType", align 8  ; 6 uses
  %7 = alloca %"struct.std::pair.1411", align 8   ; 9 uses
  %8 = alloca %"class.llvm::SmallVector.439", align 8 ; 11 uses
  store ptr %0, ptr %6, align 8
  %i.a = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZNK4mlir10MemRefType19getStridesAndOffsetEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1411") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = load ptr, ptr %7, align 8, !tbaa !95, !noalias !881 ; 3 uses
  %.idx = shl nuw nsw i64 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96, !noalias !882 ; 3 uses
  %i.h = zext i32 %i.g to i64
  %.idx108 = shl nuw nsw i64 %i.h, 3              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx108
  %i.j = icmp ne i64 %2, 0
  %i.k = icmp ne i32 %i.g, 0
  %.not3.i100 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %.not3.i100, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %i.c, %bb.a ], [ %i.ag, %_ZN4mlir16SaturatedIntegermlES0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 4, ptr %i.n, align 4, !tbaa !97
  %i.o = icmp ugt i64 %2, 4
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.l, i64 noundef %2, i64 noundef 8) #26
  %.pre = load ptr, ptr %7, align 8, !tbaa !95, !noalias !883
  %.pre111 = load i32, ptr %i.f, align 8, !tbaa !96, !noalias !884 ; 2 uses
  %.pre112 = zext i32 %.pre111 to i64
  %.pre113 = shl nuw nsw i64 %.pre112, 3
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit:      ; preds = %._crit_edge, %bb.b
  %.idx109.pre-phi = phi i64 [ %.idx108, %._crit_edge ], [ %.pre113, %bb.b ]
  %i.p = phi i32 [ %i.g, %._crit_edge ], [ %.pre111, %bb.b ]
  %i.q = phi ptr [ %i.d, %._crit_edge ], [ %.pre, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !250, !noalias !883 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx109.pre-phi
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !251, !noalias !884 ; 2 uses
  %.idx110 = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx110
  %i.w = icmp ne i32 %i.p, 0
  %i.x = icmp ne i64 %i.u, 0
  %.not3.i36104 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %.not3.i36104, label %_ZN4mlir16SaturatedIntegermlES0_.exit54.a, label %._crit_edge107

.lr.ph:                                           ; preds = %bb.a, %_ZN4mlir16SaturatedIntegermlES0_.exit
  %.0103 = phi i64 [ %i.ag, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.790.0102 = phi ptr [ %i.ah, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.087.0101 = phi ptr [ %i.ai, %_ZN4mlir16SaturatedIntegermlES0_.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.y = load i64, ptr %.sroa.790.0102, align 8, !tbaa !93 ; 2 uses
  %i.z = load i64, ptr %.sroa.087.0101, align 8, !tbaa !93 ; 2 uses
  %9 = icmp eq i64 %.0103, -9223372036854775808   ; 2 uses
  %.2.i = select i1 %9, i64 0, i64 %.0103
  %10 = icmp eq i64 %i.y, -9223372036854775808    ; 3 uses
  %.2.i25 = select i1 %10, i64 0, i64 %i.y        ; 2 uses
  %i.aa = icmp eq i64 %i.z, -9223372036854775808  ; 3 uses
  %.2.i29.a = select i1 %i.aa, i64 0, i64 %i.z    ; 2 uses
  %i.ab = icmp ne i64 %.2.i29.a, 0
  %or.cond.not.i = or i1 %i.aa, %i.ab
  %i.ac = icmp ne i64 %.2.i25, 0
  %or.cond.not14.i = or i1 %10, %i.ac
  %or.cond = select i1 %or.cond.not.i, i1 %or.cond.not14.i, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN4mlir16SaturatedIntegermlES0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ad = or i1 %10, %i.aa                        ; 2 uses
  %i.ae = mul nsw i64 %.2.i29.a, %.2.i25
  %spec.select12.i = select i1 %i.ad, i64 0, i64 %i.ae
  br label %_ZN4mlir16SaturatedIntegermlES0_.exit

_ZN4mlir16SaturatedIntegermlES0_.exit:            ; preds = %.lr.ph, %bb.c
  %.sroa.08.0.i = phi i1 [ false, %.lr.ph ], [ %i.ad, %bb.c ]
  %.sroa.5.0.i = phi i64 [ 0, %.lr.ph ], [ %spec.select12.i, %bb.c ]
  %or.cond.i = select i1 %9, i1 true, i1 %.sroa.08.0.i
  %i.af = add nsw i64 %.sroa.5.0.i, %.2.i
  %i.ag = select i1 %or.cond.i, i64 -9223372036854775808, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.790.0102, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.087.0101, i64 8 ; 2 uses
  %i.aj = icmp ne ptr %i.ah, %i.e
  %i.ak = icmp ne ptr %i.ai, %i.i
  %.not3.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge

._crit_edge107:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit
  %i.al = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.am = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.an = load ptr, ptr %8, align 8, !tbaa !95
  %i.ao = load i32, ptr %i.m, align 8, !tbaa !96
  %i.ap = zext i32 %i.ao to i64
  %i.aq = call ptr @_ZN4mlir17StridedLayoutAttr3getEPNS_11MLIRContextElN4llvm8ArrayRefIlEE(ptr noundef %i.am, i64 noundef %.0.lcssa, ptr %i.an, i64 %i.ap) #26 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge107
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !119

bb.e:                                             ; preds = %bb.d
  %i.av = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.282, i64 49), i64 31) #26
  store ptr %i.aw, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !81 ; 2 uses
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !95 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ba, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.bb ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !81
  %i.bd = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bf = xor i64 %i.bb, -1
  %i.bg = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.bf
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.bd, ptr %i.be, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.bd, i64 %i.bg, i64 %i.bb ; 2 uses
  %i.bh = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.ba, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZN4mlir6detail9InterfaceINS_25MemRefLayoutAttrInterfaceENS_9AttributeENS0_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bi
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.bj = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.bk = icmp eq ptr %i.bj, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bk, label %bb.h, label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !121
  br label %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit: ; preds = %._crit_edge107, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.g, %bb.h
  %i.bn = phi ptr [ null, %._crit_edge107 ], [ %i.bm, %bb.h ], [ null, %bb.g ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ]
  %i.bo = call ptr @_ZNK4mlir10MemRefType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.bp = call ptr @_ZN4mlir10MemRefType3getEN4llvm8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr %3, i64 %4, ptr %i.al, ptr %i.aq, ptr %i.bn, ptr %i.bo) #26
  %i.bq = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.l
  br i1 %i.br, label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit
  call void @free(ptr noundef %i.bq) #26
  br label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit

_ZN4llvm11SmallVectorIlLj4EED2Ev.exit:            ; preds = %_ZN4mlir25MemRefLayoutAttrInterfaceCI2NS_6detail9InterfaceIS0_NS_9AttributeENS1_40MemRefLayoutAttrInterfaceInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEEEINS_17StridedLayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bs = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit
  call void @free(ptr noundef %i.bs) #26
  br label %_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit

_ZNSt4pairIN4llvm11SmallVectorIlLj6EEElED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %i.bp

_ZN4mlir16SaturatedIntegermlES0_.exit54.a:        ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %.sroa.066.0106 = phi ptr [ %i.cf, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ %i.r, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit ] ; 2 uses
  %.sroa.7.0105 = phi ptr [ %i.ce, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ], [ %i.q, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit ] ; 2 uses
  %i.bv = load i64, ptr %.sroa.7.0105, align 8, !tbaa !93 ; 2 uses
  %i.bw = load i64, ptr %.sroa.066.0106, align 8, !tbaa !93 ; 2 uses
  %11 = icmp eq i64 %i.bv, -9223372036854775808   ; 3 uses
  %.2.i38 = select i1 %11, i64 0, i64 %i.bv       ; 2 uses
  %12 = icmp eq i64 %i.bw, -9223372036854775808   ; 3 uses
  %.2.i42 = select i1 %12, i64 0, i64 %i.bw       ; 2 uses
  %i.bx = icmp ne i64 %.2.i42, 0
  %or.cond.not.i45 = or i1 %12, %i.bx
  %i.by = icmp ne i64 %.2.i38, 0
  %or.cond.not14.i50 = or i1 %11, %i.by
  %or.cond99 = select i1 %or.cond.not.i45, i1 %or.cond.not14.i50, i1 false
  %13 = or i1 %11, %12
  %14 = mul nsw i64 %.2.i42, %.2.i38
  %15 = select i1 %13, i64 -9223372036854775808, i64 %14
  %.sroa.08.0.i46 = select i1 %or.cond99, i64 %15, i64 0 ; 2 uses
  %16 = load i32, ptr %i.m, align 8, !tbaa !96    ; 2 uses
  %17 = load i32, ptr %i.n, align 4, !tbaa !97
  %.not.i = icmp ult i32 %16, %17
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !98

bb.k:                                             ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit54.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %.sroa.08.0.i46)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.l:                                             ; preds = %_ZN4mlir16SaturatedIntegermlES0_.exit54.a
  %i.bz = zext i32 %16 to i64
  %i.ca = load ptr, ptr %8, align 8, !tbaa !95
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store i64 %.sroa.08.0.i46, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.m, align 8, !tbaa !96
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.m, align 8, !tbaa !96
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.k, %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.7.0105, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.066.0106, i64 8 ; 2 uses
  %i.cg = icmp ne ptr %i.ce, %i.s
  %i.ch = icmp ne ptr %i.cf, %i.v
  %.not3.i36 = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %.not3.i36, label %_ZN4mlir16SaturatedIntegermlES0_.exit54.a, label %._crit_edge107
}

declare void @_ZNK4mlir10MemRefType19getStridesAndOffsetEv(ptr dead_on_unwind writable sret(%"struct.std::pair.1411") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6memref9SubViewOp15inferResultTypeENS_10MemRefTypeEN4llvm8ArrayRefINS_12OpFoldResultEEES6_S6_(ptr %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.644") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.792", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.792", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SmallVector.792", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SmallVector.367", align 8 ; 8 uses
  %10 = alloca %"class.llvm::SmallVector.367", align 8 ; 8 uses
  %11 = alloca %"class.llvm::SmallVector.367", align 8 ; 8 uses
  %12 = alloca %"class.llvm::SmallVector.792", align 8 ; 8 uses
  %13 = alloca %"class.llvm::SmallVector.792", align 8 ; 8 uses
  %14 = alloca %"class.llvm::SmallVector.792", align 8 ; 8 uses
  %15 = alloca %"class.llvm::ArrayRef.69", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.e, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 6, ptr %i.f, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 6, ptr %i.i, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.l, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.m, ptr %10, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.n, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.o, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.p, ptr %11, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.r, align 4, !tbaa !97
  call void @_ZN4mlir26dispatchIndexOpFoldResultsEN4llvm8ArrayRefINS_12OpFoldResultEEERNS0_15SmallVectorImplINS_5ValueEEERNS4_IlEE(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  call void @_ZN4mlir26dispatchIndexOpFoldResultsEN4llvm8ArrayRefINS_12OpFoldResultEEERNS0_15SmallVectorImplINS_5ValueEEERNS4_IlEE(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  %.sroa.01.0.copyload = load ptr, ptr %5, align 8, !tbaa !243
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !93
  call void @_ZN4mlir26dispatchIndexOpFoldResultsEN4llvm8ArrayRefINS_12OpFoldResultEEERNS0_15SmallVectorImplINS_5ValueEEERNS4_IlEE(ptr %.sroa.01.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.s, ptr %12, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 6, ptr %i.u, align 4, !tbaa !97
  %i.v = load i32, ptr %i.b, align 8, !tbaa !96   ; 5 uses
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = icmp ugt i32 %i.v, 6
  br i1 %i.w, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i:           ; preds = %bb.b
  %i.x = zext i32 %i.v to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.s, i64 noundef %i.x, i64 noundef 8) #26
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i
  %.pre = load ptr, ptr %12, align 8, !tbaa !95
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i:    ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge, %bb.b
  %i.y = phi ptr [ %.pre, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.s, %bb.b ]
  %i.z = phi i32 [ %.pre.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.v, %bb.b ]
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %6, align 8, !tbaa !95
  %gepdiff.i.i = shl nuw nsw i64 %i.aa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 8 %i.ab, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i
  store i32 %i.v, ptr %i.t, align 8, !tbaa !96
  br label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit

_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit:        ; preds = %bb.a, %.sink.split.i.i
  %i.ac = call noundef zeroext i1 @_ZN4mlir20hasValidSizesOffsetsEN4llvm11SmallVectorIlLj6EEE(ptr nofree noundef nonnull align 8 dereferenceable(64) %12) #26
  %i.ad = load ptr, ptr %12, align 8, !tbaa !95   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit, %bb.c
  br i1 %i.ac, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.af, ptr %13, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.ah, align 4, !tbaa !97
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !96  ; 5 uses
  %.not.i.i11 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i11, label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = icmp ugt i32 %i.ai, 6
  br i1 %i.aj, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15:         ; preds = %bb.e
  %i.ak = zext i32 %i.ai to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull %i.af, i64 noundef %i.ak, i64 noundef 8) #26
  %.pre.i16 = load i32, ptr %i.e, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i17 = icmp eq i32 %.pre.i16, 0
  br i1 %.not.i.i.i17, label %.sink.split.i.i14, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12_crit_edge

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12_crit_edge: ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15
  %.pre37 = load ptr, ptr %13, align 8, !tbaa !95
  br label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12:  ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12_crit_edge, %bb.e
  %i.al = phi ptr [ %.pre37, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12_crit_edge ], [ %i.af, %bb.e ]
  %i.am = phi i32 [ %.pre.i16, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15._ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12_crit_edge ], [ %i.ai, %bb.e ]
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %7, align 8, !tbaa !95
  %gepdiff.i.i13 = shl nuw nsw i64 %i.an, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 8 %i.ao, i64 %gepdiff.i.i13, i1 false)
  br label %.sink.split.i.i14

.sink.split.i.i14:                                ; preds = %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i12, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i15
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !96
  br label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit18

_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit18:      ; preds = %bb.d, %.sink.split.i.i14
  %i.ap = call noundef zeroext i1 @_ZN4mlir20hasValidSizesOffsetsEN4llvm11SmallVectorIlLj6EEE(ptr nofree noundef nonnull align 8 dereferenceable(64) %13) #26
  %i.aq = load ptr, ptr %13, align 8, !tbaa !95   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit18
  call void @free(ptr noundef %i.aq) #26
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19:          ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit18, %bb.f
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit19
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.as, ptr %14, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 0, ptr %i.at, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 6, ptr %i.au, align 4, !tbaa !97
  %i.av = load i32, ptr %i.h, align 8, !tbaa !96  ; 5 uses
  %.not.i.i20 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i20, label %_ZN4llvm11SmallVectorIlLj6EEC2ERKS1_.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp ugt i32 %i.av, 6
  br i1 %i.aw, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i24, label %_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.thread.i21

_ZSt4copyIPKlPlET0_T_S4_S3_.exit30.i.i24:         ; preds = %bb.h
  %i.ax = zext i32 %i.av to i64
end_hunk_2
