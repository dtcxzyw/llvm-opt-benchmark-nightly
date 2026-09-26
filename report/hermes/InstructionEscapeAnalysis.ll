Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/InstructionEscapeAnalysis?download=true
inline.NumInlined: 364
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes25InstructionEscapeAnalysis8addRangeEN4llvh14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEEEE:bb.a
  %.val34107 = phi i32 [ 0, %.lr.ph94 ], [ %.val34, %bb.ab ] ; 4 uses
  %.093 = phi i32 [ 0, %.lr.ph94 ], [ %.pre-phi, %bb.ab ] ; 3 uses
  %.sroa.072.092 = phi ptr [ %1, %.lr.ph94 ], [ %i.ew, %bb.ab ] ; 9 uses
  %i.ap = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.072.092) #12 ; 2 uses
  %.not96 = icmp eq i32 %i.ap, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.val26 = load ptr, ptr %4, align 8             ; 3 uses
  %.val27 = load i32, ptr %i.s, align 8           ; 3 uses
  %i.aq = icmp eq i32 %.val27, 0
  %i.ar = add i32 %.val27, -1                     ; 2 uses
  %i.as = zext i32 %.val27 to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.val26, i64 %i.as
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread, %bb.e
  %.val34106 = phi i32 [ %.val34107, %bb.e ], [ %.val34104, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread ] ; 3 uses
  %.val18.i.i.i = phi i32 [ %.val34107, %bb.e ], [ %.val.i.i101, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.072.092, i64 16
  %i.av = call noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #12 ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit, label %bb.k

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread
  %.val34105 = phi i32 [ %.val34107, %.lr.ph ], [ %.val34104, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread ] ; 4 uses
  %.val.i.i = phi i32 [ %.val34107, %.lr.ph ], [ %.val.i.i101, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread ] ; 5 uses
  %.01890 = phi i32 [ 0, %.lr.ph ], [ %i.by, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread ] ; 2 uses
  %i.aw = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.072.092, i32 noundef %.01890) #12 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !57
  %i.ay = add i8 %i.ax, -109
  %i.az = icmp ult i8 %i.ay, -107                 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -16 ; 3 uses
  %spec.select.i = select i1 %i.az, ptr null, ptr %i.ba
  %brmerge = select i1 %i.az, i1 true, i1 %i.aq
  br i1 %brmerge, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = lshr i32 %i.bc, 4
  %i.be = lshr i32 %i.bc, 9
  %i.bf = xor i32 %i.bd, %i.be
  %.02710.i.i.i = and i32 %i.ar, %i.bf            ; 2 uses
  %i.bg = zext nneg i32 %.02710.i.i.i to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.val26, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !30 ; 2 uses
  %i.bj = icmp eq ptr %i.ba, %i.bi
  br i1 %i.bj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit, label %.lr.ph.i.i.i, !prof !31

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %i.bk = phi ptr [ %i.bq, %bb.h ], [ %i.bi, %bb.g ]
  %.02713.i.i.i = phi i32 [ %.027.i.i.i, %bb.h ], [ %.02710.i.i.i, %bb.g ]
  %.012.i.i.i = phi i32 [ %i.bm, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.bl = icmp eq ptr %i.bk, inttoptr (i64 -8 to ptr)
  br i1 %i.bl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread, label %bb.h, !prof !32

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = add i32 %.012.i.i.i, 1
  %i.bn = add i32 %.012.i.i.i, %.02713.i.i.i
  %.027.i.i.i = and i32 %i.bn, %i.ar              ; 2 uses
  %i.bo = zext i32 %.027.i.i.i to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.val26, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %i.br = icmp eq ptr %spec.select.i, %i.bq
  br i1 %i.br, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit, label %.lr.ph.i.i.i, !prof !33, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit: ; preds = %bb.h, %bb.g
  %.sink.i.i.ph.pn.i = phi ptr [ %i.bh, %bb.g ], [ %i.bp, %bb.h ] ; 3 uses
  %.not85 = icmp eq ptr %.sink.i.i.ph.pn.i, %i.at
  br i1 %.not85, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 12 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !60
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !60
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.j, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread

bb.j:                                             ; preds = %bb.i
  store ptr inttoptr (i64 -16 to ptr), ptr %.sink.i.i.ph.pn.i, align 8, !tbaa !30
  %i.bw = add i32 %.val.i.i, -1                   ; 3 uses
  store i32 %i.bw, ptr %i.t, align 8, !tbaa !36
  %.val.i3.i = load i32, ptr %i.u, align 4, !tbaa !37
  %i.bx = add i32 %.val.i3.i, 1
  store i32 %i.bx, ptr %i.u, align 4, !tbaa !37
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit.thread: ; preds = %.lr.ph.i.i.i, %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit, %bb.j, %bb.i
  %.val34104 = phi i32 [ %.val34105, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit ], [ %i.bw, %bb.j ], [ %.val34105, %bb.i ], [ %.val34105, %bb.f ], [ %.val34105, %.lr.ph.i.i.i ] ; 2 uses
  %.val.i.i101 = phi i32 [ %.val.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4findES5_.exit ], [ %i.bw, %bb.j ], [ %.val.i.i, %bb.i ], [ %.val.i.i, %bb.f ], [ %.val.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.by = add nuw i32 %.01890, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !42

bb.k:                                             ; preds = %._crit_edge
  %.sroa.462.0.insert.ext = zext i32 %i.av to i64
  %.sroa.462.0.insert.shift = shl nuw i64 %.sroa.462.0.insert.ext, 32
  %.sroa.061.0.insert.ext = zext i32 %.093 to i64
  %.sroa.061.0.insert.insert = or disjoint i64 %.sroa.462.0.insert.shift, %.sroa.061.0.insert.ext
  %.val7.i = load ptr, ptr %4, align 8, !tbaa !38, !noalias !61 ; 2 uses
  %.val8.i = load i32, ptr %i.s, align 8, !tbaa !39, !noalias !61 ; 7 uses
  %i.bz = icmp eq i32 %.val8.i, 0
  br i1 %i.bz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i42, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = ptrtoint ptr %.sroa.072.092 to i64
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = lshr i32 %i.cb, 4
  %i.cd = lshr i32 %i.cb, 9
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = add i32 %.val8.i, -1                    ; 2 uses
  %.02710.i.i.i36 = and i32 %i.cf, %i.ce          ; 2 uses
  %i.cg = zext nneg i32 %.02710.i.i.i36 to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.val7.i, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !30, !noalias !61 ; 2 uses
  %i.cj = icmp eq ptr %.sroa.072.092, %i.ci
  br i1 %i.cj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit, label %.lr.ph.i.i.i37, !prof !31

.lr.ph.i.i.i37:                                   ; preds = %bb.l, %bb.n
  %i.ck = phi ptr [ %i.cu, %bb.n ], [ %i.ci, %bb.l ] ; 2 uses
  %i.cl = phi ptr [ %i.ct, %bb.n ], [ %i.ch, %bb.l ] ; 2 uses
  %.02713.i.i.i38 = phi i32 [ %.027.i.i.i40, %bb.n ], [ %.02710.i.i.i36, %bb.l ]
  %.012.i.i.i39 = phi i32 [ %i.cq, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %.02911.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.n ], [ null, %bb.l ] ; 4 uses
  %i.cm = icmp eq ptr %i.ck, inttoptr (i64 -8 to ptr)
  br i1 %i.cm, label %bb.m, label %bb.n, !prof !32

bb.m:                                             ; preds = %.lr.ph.i.i.i37
  %.not.i.i.i = icmp eq ptr %.02911.i.i.i, null
  %i.cn = select i1 %.not.i.i.i, ptr %i.cl, ptr %.02911.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i42

bb.n:                                             ; preds = %.lr.ph.i.i.i37
  %i.co = icmp eq ptr %i.ck, inttoptr (i64 -16 to ptr)
  %i.cp = icmp eq ptr %.02911.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.co, i1 %i.cp, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.cl, ptr %.02911.i.i.i
  %i.cq = add i32 %.012.i.i.i39, 1
  %i.cr = add i32 %.012.i.i.i39, %.02713.i.i.i38
  %.027.i.i.i40 = and i32 %i.cr, %i.cf            ; 2 uses
  %i.cs = zext i32 %.027.i.i.i40 to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.val7.i, i64 %i.cs ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !30, !noalias !61 ; 2 uses
  %i.cv = icmp eq ptr %.sroa.072.092, %i.cu
  br i1 %i.cv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit, label %.lr.ph.i.i.i37, !prof !33, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i42: ; preds = %bb.m, %bb.k
  %.sink.i.i.i = phi ptr [ %i.cn, %bb.m ], [ null, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  store ptr %.sink.i.i.i, ptr %i.a, align 8, !tbaa !40, !noalias !61
  %i.cw = shl i32 %.val18.i.i.i, 2
  %i.cx = add i32 %i.cw, 4
  %i.cy = mul i32 %.val8.i, 3
  %.not.i.i12.i = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i.i12.i, label %bb.p, label %bb.o, !prof !32

bb.o:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i42
  %i.cz = shl i32 %.val8.i, 1
  br label %.sink.split.i.i.i

bb.p:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i42
  %.val19.i.i.i = load i32, ptr %i.u, align 4, !tbaa !37, !noalias !61
  %.neg.i.i.i = xor i32 %.val18.i.i.i, -1
  %.neg1.i.i.i = add i32 %.val8.i, %.neg.i.i.i
  %i.da = sub i32 %.neg1.i.i.i, %.val19.i.i.i
  %i.db = lshr i32 %.val8.i, 3
  %.not10.i.i.i = icmp ugt i32 %i.da, %i.db
  br i1 %.not10.i.i.i, label %bb.q, label %.sink.split.i.i.i, !prof !32

.sink.split.i.i.i:                                ; preds = %bb.p, %bb.o
  %.val11.sink.i.i.i = phi i32 [ %i.cz, %bb.o ], [ %.val8.i, %bb.p ]
  call fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef %.val11.sink.i.i.i), !noalias !61
  %.val12.i.i.i = load ptr, ptr %4, align 8, !tbaa !38, !noalias !61
  %.val13.i.i.i = load i32, ptr %i.s, align 8, !tbaa !39, !noalias !61
  call fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_(ptr %.val12.i.i.i, i32 %.val13.i.i.i, ptr nonnull %.sroa.072.092, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i.pre.i.i = load i32, ptr %i.t, align 8, !tbaa !36, !noalias !61
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !40, !noalias !61
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i.i.i, %bb.p
  %i.dc = phi ptr [ %.pre.i.i, %.sink.split.i.i.i ], [ %.sink.i.i.i, %bb.p ] ; 3 uses
  %.val.i.i.i.i = phi i32 [ %.val.i.i.pre.i.i, %.sink.split.i.i.i ], [ %.val18.i.i.i, %bb.p ]
  %i.dd = add i32 %.val.i.i.i.i, 1
  store i32 %i.dd, ptr %i.t, align 8, !tbaa !36, !noalias !61
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !30, !noalias !61
  %i.df = icmp eq ptr %i.de, inttoptr (i64 -8 to ptr)
  br i1 %i.df, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i20.i.i.i = load i32, ptr %i.u, align 4, !tbaa !37, !noalias !61
  %i.dg = add i32 %.val.i20.i.i.i, -1
  store i32 %i.dg, ptr %i.u, align 4, !tbaa !37, !noalias !61
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61
  store ptr %.sroa.072.092, ptr %i.dc, align 8, !tbaa !30, !noalias !61
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %.sroa.061.0.insert.insert, ptr %i.dh, align 8, !noalias !61
  %.val34.pre = load i32, ptr %i.t, align 8, !tbaa !36
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit: ; preds = %bb.n, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i, %bb.l, %._crit_edge
  %.val34 = phi i32 [ %.val34106, %._crit_edge ], [ %.val34.pre, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i ], [ %.val34106, %bb.l ], [ %.val34106, %bb.n ] ; 3 uses
  %i.di = icmp ult i32 %.val34, 2
  br i1 %i.di, label %bb.s, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit._crit_edge

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit._crit_edge: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit
  %.pre = add i32 %.093, 1
  br label %bb.ab

bb.s:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.dj = add i32 %.093, 1                        ; 5 uses
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.dk = icmp eq i32 %.val34, 0
  br i1 %i.dk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val7.i43 = load ptr, ptr %4, align 8, !tbaa !38 ; 3 uses
  %.val8.i44 = load i32, ptr %i.s, align 8, !tbaa !39 ; 2 uses
  %i.dl = zext i32 %.val8.i44 to i64
  %.idx.i45 = shl nuw nsw i64 %i.dl, 4
  %i.dm = getelementptr i8, ptr %.val7.i43, i64 %.idx.i45 ; 2 uses
  %.not5.i5.i12.i10.i = icmp eq i32 %.val8.i44, 0
  br i1 %.not5.i5.i12.i10.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit, label %.lr.ph.i6.i14.i11.i

.lr.ph.i6.i14.i11.i:                              ; preds = %bb.t, %.critedge2.i8.i16.i14.i
  %.sroa.0.2.i12.i = phi ptr [ %i.do, %.critedge2.i8.i16.i14.i ], [ %.val7.i43, %bb.t ] ; 3 uses
  %i.dn = load ptr, ptr %.sroa.0.2.i12.i, align 8, !tbaa !30
  %magicptr.i7.i15.i13.i = ptrtoint ptr %i.dn to i64
  switch i64 %magicptr.i7.i15.i13.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit [
    i64 -8, label %.critedge2.i8.i16.i14.i
    i64 -16, label %.critedge2.i8.i16.i14.i
  ]

.critedge2.i8.i16.i14.i:                          ; preds = %.lr.ph.i6.i14.i11.i, %.lr.ph.i6.i14.i11.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i12.i, i64 16 ; 2 uses
  %.not.i9.i17.i15.i = icmp eq ptr %i.do, %i.dm
  br i1 %.not.i9.i17.i15.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit, label %.lr.ph.i6.i14.i11.i, !llvm.loop !45

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit: ; preds = %.lr.ph.i6.i14.i11.i, %.critedge2.i8.i16.i14.i, %bb.t
  %.pn22.i = phi ptr [ %.val7.i43, %bb.t ], [ %i.dm, %.critedge2.i8.i16.i14.i ], [ %.sroa.0.2.i12.i, %.lr.ph.i6.i14.i11.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit
  %i.dr = phi i32 [ %i.dq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit ], [ 0, %bb.s ] ; 2 uses
  %i.ds = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit ], [ 0, %bb.s ] ; 2 uses
  store i32 %i.dr, ptr %5, align 8, !tbaa !62
  store i8 %i.ds, ptr %i.v, align 4, !tbaa !41
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !16  ; 4 uses
  %i.du = load i32, ptr %i.x, align 8, !tbaa !15  ; 4 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = mul i32 %i.dj, 37
  %i.dx = add i32 %i.du, -1                       ; 2 uses
  %.02544.i.i.i = and i32 %i.dx, %i.dw            ; 2 uses
  %i.dy = zext i32 %.02544.i.i.i to i64
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !10 ; 2 uses
  %i.eb = icmp eq i32 %i.dj, %i.ea
  br i1 %i.eb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit, label %.lr.ph.i.i.i47, !prof !31

.lr.ph.i.i.i47:                                   ; preds = %bb.v, %bb.w
  %i.ec = phi i32 [ %i.ei, %bb.w ], [ %i.ea, %bb.v ]
  %.02547.i.i.i = phi i32 [ %.025.i.i.i, %bb.w ], [ %.02544.i.i.i, %bb.v ]
  %.046.i.i.i = phi i32 [ %i.ee, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, label %bb.w, !prof !32

bb.w:                                             ; preds = %.lr.ph.i.i.i47
  %i.ee = add i32 %.046.i.i.i, 1
  %i.ef = add i32 %.046.i.i.i, %.02547.i.i.i
  %.025.i.i.i = and i32 %i.ef, %i.dx              ; 2 uses
  %i.eg = zext i32 %.025.i.i.i to i64
  %i.eh = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !10 ; 2 uses
  %i.ej = icmp eq i32 %i.dj, %i.ei
  br i1 %i.ej, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit, label %.lr.ph.i.i.i47, !prof !33, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i: ; preds = %.lr.ph.i.i.i47, %bb.u
  %i.ek = zext i32 %i.du to i64
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.ek
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit: ; preds = %bb.w, %bb.v, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i
  %.sink.i.i.ph.pn.i50 = phi ptr [ %i.el, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i ], [ %i.dz, %bb.v ], [ %i.eh, %bb.w ] ; 2 uses
  %i.em = load i32, ptr %0, align 8, !tbaa !27
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.critedge, label %bb.x

bb.x:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit
  %i.eo = zext i32 %i.du to i64
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.eo
  %.not83 = icmp eq ptr %.sink.i.i.ph.pn.i50, %i.ep
  br i1 %.not83, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i50, i64 4
  %.sroa.03.0.copyload = load i64, ptr %i.eq, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.03.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.03.0.copyload, 32 ; 2 uses
  %i.er = trunc nuw i8 %i.ds to i1
  br i1 %i.er, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  store i32 %.sroa.0.0.extract.trunc.i, ptr %5, align 8, !tbaa !10
  store i8 %.sroa.3.0.extract.trunc.i, ptr %i.v, align 4, !tbaa !21
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  %i.es = trunc i64 %.sroa.3.0.extract.shift.i to i1
  %i.et = icmp ne i32 %i.dr, %.sroa.0.0.extract.trunc.i
  %or.cond81.not = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond81.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.z, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJRS4_EEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbERKjDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.16") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(5) %5)
  %i.eu = load i32, ptr %i.b, align 4, !tbaa !10
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  store i32 %i.eu, ptr %i.y, align 8, !tbaa !10
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.critedge2

.critedge2:                                       ; preds = %bb.aa, %bb.x, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit._crit_edge, %.critedge2
  %.pre-phi = phi i32 [ %.pre, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit._crit_edge ], [ %i.dj, %.critedge2 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.072.092, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !65 ; 2 uses
  %.not82 = icmp eq ptr %i.ew, %2
  br i1 %.not82, label %._crit_edge95.loopexit, label %bb.e, !llvm.loop !46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN6hermes25InstructionEscapeAnalysis15tryMergeOffsetsERNS_8OptValueIjEES2_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(5) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41, !range !66, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8
  store i32 %.sroa.0.0.extract.trunc, ptr %0, align 4, !tbaa !10
  store i8 %.sroa.3.0.extract.trunc, ptr %i.a, align 4, !tbaa !21
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %.sroa.3.0.extract.shift to i1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %0, align 4
  %i.f = icmp eq i32 %i.e, %.sroa.0.0.extract.trunc
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.f, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJRS4_EEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbERKjDpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.16") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN6hermes25InstructionEscapeAnalysis15removeLastRangeEv:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.z = zext i32 %i.v to i64
  %.idx.i = mul nuw nsw i64 %i.z, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.v, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  store i32 0, ptr %i.h, align 8, !tbaa !14
  store i32 0, ptr %i.i, align 4, !tbaa !17
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.06.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.e ] ; 2 uses
  store i32 -1, ptr %.06.i, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit: ; preds = %bb.b, %bb.d, %._crit_edge.i
  %i.ac = load i32, ptr %0, align 8, !tbaa !27
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %0, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.ae, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 4 dereferenceable(12) ptr @_ZNK6hermes25InstructionEscapeAnalysis13longestPrefixEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(88) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.f, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15
  %i.i = icmp eq i32 %.0, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !17
  %i.k = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.l = zext nneg i32 %.0 to i64
  %.idx.i = mul nuw nsw i64 %i.l, 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not5.i = icmp eq i32 %.0, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.06.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  store i32 -1, ptr %.06.i, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !3

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @_ZdlPv(ptr noundef %i.o) #12
  %i.p = icmp eq i32 %.0, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl i32 %.0, 2
  %i.r = udiv i32 %i.q, 3
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.t, 1
  %i.v = or i64 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = or i64 %i.w, %i.v                        ; 2 uses
  %i.y = lshr i64 %i.x, 4
  %i.z = or i64 %i.y, %i.x                        ; 2 uses
  %i.aa = lshr i64 %i.z, 8
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 16
  %i.ad = or i64 %i.ac, %i.ab
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = add nuw i32 %i.ae, 1                    ; 2 uses
  store i32 %i.af, ptr %i.g, align 8, !tbaa !15
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 12
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #13 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !16
  store i32 0, ptr %i.a, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !17
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %.idx.i.i = mul nuw nsw i64 %i.al, 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.ai, %bb.f ] ; 2 uses
  store i32 -1, ptr %.06.i.i, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i.i, !llvm.loop !3

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_(ptr %.0.val, i32 %.16.val, ptr %.0.val1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq i32 %.16.val, 0
  br i1 %i.a, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPKSJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.0.val1 to i64
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = lshr i32 %i.c, 4
  %i.e = lshr i32 %i.c, 9
  %i.f = xor i32 %i.d, %i.e
  %i.g = add i32 %.16.val, -1                     ; 2 uses
  %.02710.i = and i32 %i.f, %i.g                  ; 2 uses
  %i.h = zext nneg i32 %.02710.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.k = icmp eq ptr %.0.val1, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPKSJ_.exit, label %.lr.ph.i, !prof !31

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.l = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.02713.i = phi i32 [ %.027.i, %bb.d ], [ %.02710.i, %bb.b ]
  %.012.i = phi i32 [ %i.r, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02911.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.n = icmp eq ptr %i.l, inttoptr (i64 -8 to ptr)
  br i1 %i.n, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02911.i, null
  %i.o = select i1 %.not.i, ptr %i.m, ptr %.02911.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPKSJ_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq ptr %i.l, inttoptr (i64 -16 to ptr)
  %i.q = icmp eq ptr %.02911.i, null
  %or.cond.not.i = select i1 %i.p, i1 %i.q, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.m, ptr %.02911.i
  %i.r = add i32 %.012.i, 1
  %i.s = add i32 %.012.i, %.02713.i
  %.027.i = and i32 %i.s, %i.g                    ; 2 uses
  %i.t = zext i32 %.027.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %i.w = icmp eq ptr %.0.val1, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPKSJ_.exit, label %.lr.ph.i, !prof !33, !llvm.loop !1

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPKSJ_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ], [ %i.i, %bb.b ], [ %i.u, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((8, 16)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !39
  %i.r = zext i32 %.sroa.speculated.i to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #13 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !37
  %.val7.i.i = load i32, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %i.w = zext i32 %.val7.i.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.w, 4             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %.val7.i.i, 0
  br i1 %.not8.i.i, label %_ZN4llvh8DenseMapIPKN6hermes11InstructionEZNS1_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SD_EEE4growEj.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.y = add nsw i64 %.idx.i.i, -16               ; 2 uses
  %i.z = lshr exact i64 %i.y, 4
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter21 = and i64 %i.aa, 7                  ; 2 uses
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter23 = phi i64 [ %prol.iter23.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.prol, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 16 ; 2 uses
  %prol.iter23.next = add i64 %prol.iter23, 1     ; 2 uses
  %prol.iter23.cmp.not = icmp eq i64 %prol.iter23.next, %xtraiter21
  br i1 %prol.iter23.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !71

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.prol ]
  %i.ac = icmp ult i64 %i.y, 112
  br i1 %i.ac, label %_ZN4llvh8DenseMapIPKN6hermes11InstructionEZNS1_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SD_EEE4growEj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ak, %i.x
  br i1 %.not.i.i.7, label %_ZN4llvh8DenseMapIPKN6hermes11InstructionEZNS1_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SD_EEE4growEj.exit, label %.lr.ph.i.i, !llvm.loop !72

bb.c:                                             ; preds = %bb.a
  %i.al = zext i32 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.al, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !37
  %.val7.i.i.i = load i32, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %i.ap = zext i32 %.val7.i.i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ap, 4          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %.val7.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.ar = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.as = lshr exact i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.as, 1
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.prol ], [ %i.t, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.prol, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !73

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.prol ]
  %i.av = icmp ult i64 %i.ar, 112
  br i1 %i.av, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ax, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.bd, %i.aq
  br i1 %.not.i.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !72

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  %.not22.i.i = icmp eq i32 %i.b, 0
  br i1 %.not22.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E18moveFromOldBucketsEPSJ_SM_.exit.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit.i.i, %bb.g
  %.023.i.i = phi ptr [ %i.cd, %bb.g ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit.i.i ] ; 3 uses
  %i.be = load ptr, ptr %.023.i.i, align 8, !tbaa !30 ; 4 uses
  %magicptr.i.i = ptrtoint ptr %i.be to i64       ; 2 uses
  switch i64 %magicptr.i.i, label %bb.d [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.d:                                             ; preds = %.lr.ph.i6.i
  %.val.i8.i = load ptr, ptr %0, align 8, !tbaa !38 ; 2 uses
  %.val15.i.i = load i32, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %2 = icmp ne i32 %.val15.i.i, 0
  tail call void @llvm.assume(i1 %2)
  %i.bf = trunc i64 %magicptr.i.i to i32          ; 2 uses
  %i.bg = lshr i32 %i.bf, 4
  %i.bh = lshr i32 %i.bf, 9
  %i.bi = xor i32 %i.bg, %i.bh
  %3 = add i32 %.val15.i.i, -1                    ; 2 uses
  %.02710.i.i.i.i = and i32 %3, %i.bi             ; 2 uses
  %i.bj = zext nneg i32 %.02710.i.i.i.i to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val.i8.i, i64 %i.bj ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bm = icmp eq ptr %i.be, %i.bl
  br i1 %i.bm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i.i, label %.lr.ph.i.i.i.i, !prof !31

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.f
  %i.bn = phi ptr [ %i.bx, %bb.f ], [ %i.bl, %bb.d ] ; 2 uses
  %i.bo = phi ptr [ %i.bw, %bb.f ], [ %i.bk, %bb.d ] ; 2 uses
  %.02713.i.i.i.i = phi i32 [ %.027.i.i.i.i, %bb.f ], [ %.02710.i.i.i.i, %bb.d ]
  %.012.i.i.i.i = phi i32 [ %i.bt, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.02911.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.bp = icmp eq ptr %i.bn, inttoptr (i64 -8 to ptr)
  br i1 %i.bp, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.02911.i.i.i.i, null
  %i.bq = select i1 %.not.i.i.i.i, ptr %i.bo, ptr %.02911.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.br = icmp eq ptr %i.bn, inttoptr (i64 -16 to ptr)
  %i.bs = icmp eq ptr %.02911.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.br, i1 %i.bs, i1 false
  %spec.select.i.i.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.bo, ptr %.02911.i.i.i.i
  %i.bt = add i32 %.012.i.i.i.i, 1
  %i.bu = add i32 %.012.i.i.i.i, %.02713.i.i.i.i
  %.027.i.i.i.i = and i32 %i.bu, %3               ; 2 uses
  %i.bv = zext i32 %.027.i.i.i.i to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.val.i8.i, i64 %i.bv ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30 ; 2 uses
  %i.by = icmp eq ptr %i.be, %i.bx
  br i1 %i.by, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i.i, label %.lr.ph.i.i.i.i, !prof !33, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.bq, %bb.e ], [ %i.bk, %bb.d ], [ %i.bw, %bb.f ] ; 2 uses
  store ptr %i.be, ptr %.sink.i.i.i.i, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  store i64 %i.cb, ptr %i.bz, align 8
  %.val.i17.i.i = load i32, ptr %i.an, align 8, !tbaa !36
  %i.cc = add i32 %.val.i17.i.i, 1
  store i32 %i.cc, ptr %i.an, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit.i.i, %.lr.ph.i6.i, %.lr.ph.i6.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 16 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.cd, %i.am
  br i1 %.not.i7.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E18moveFromOldBucketsEPSJ_SM_.exit.i, label %.lr.ph.i6.i, !llvm.loop !74

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E18moveFromOldBucketsEPSJ_SM_.exit.i: ; preds = %bb.g, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E9initEmptyEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #12
  br label %_ZN4llvh8DenseMapIPKN6hermes11InstructionEZNS1_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SD_EEE4growEj.exit

_ZN4llvh8DenseMapIPKN6hermes11InstructionEZNS1_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SD_EEE4growEj.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E18moveFromOldBucketsEPSJ_SM_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.f = mul i32 %i.e, 37
  %i.g = add i32 %i.c, -1                         ; 2 uses
  %.02544.i = and i32 %i.f, %i.g                  ; 2 uses
  %i.h = zext i32 %.02544.i to i64
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10   ; 2 uses
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !31

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.l = phi i32 [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.02547.i = phi i32 [ %.025.i, %bb.d ], [ %.02544.i, %bb.b ]
  %.046.i = phi i32 [ %i.r, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02745.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.n = icmp eq i32 %i.l, -1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02745.i, null
  %i.o = select i1 %.not.i, ptr %i.m, ptr %.02745.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPKS9_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.l, -2
  %i.q = icmp eq ptr %.02745.i, null
  %or.cond.not.i = select i1 %i.p, i1 %i.q, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.m, ptr %.02745.i
  %i.r = add i32 %.046.i, 1
  %i.s = add i32 %.046.i, %.02547.i
  %.025.i = and i32 %i.s, %i.g                    ; 2 uses
  %i.t = zext i32 %.025.i to i64
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !10   ; 2 uses
  %i.w = icmp eq i32 %i.e, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !33, !llvm.loop !2

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPKS9_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ], [ %i.i, %bb.b ], [ %i.u, %bb.d ]
  %.232.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !19
  ret i1 %.232.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !15
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = mul nuw nsw i64 %i.r, 12
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #13 ; 5 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !17
  %i.w = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = mul nuw nsw i64 %i.x, 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.t, %bb.a ] ; 2 uses
  store i32 -1, ptr %.06.i, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !3

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE15allocateBucketsEj.exit
  %i.aa = zext i32 %i.b to i64
  %.idx = mul nuw nsw i64 %i.aa, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !17
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx.i.i = mul nuw nsw i64 %i.af, 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.t, %bb.b ] ; 2 uses
  store i32 -1, ptr %.06.i.i, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !3

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  %.not18.i = icmp eq i32 %i.b, 0
  br i1 %.not18.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i, %bb.f
  %.019.i = phi ptr [ %i.bj, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit.i ] ; 3 uses
  %i.ai = load i32, ptr %.019.i, align 4, !tbaa !10 ; 5 uses
  %switch.i = icmp ugt i32 %i.ai, -3
  br i1 %switch.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i6
  %i.aj = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.al = icmp ne i32 %i.ak, 0
  tail call void @llvm.assume(i1 %i.al)
  %i.am = mul i32 %i.ai, 37
  %i.an = add i32 %i.ak, -1                       ; 2 uses
  %.02544.i.i.i = and i32 %i.an, %i.am            ; 2 uses
  %i.ao = zext i32 %.02544.i.i.i to i64
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ao ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10 ; 2 uses
  %i.ar = icmp eq i32 %i.ai, %i.aq
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !31

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.as = phi i32 [ %i.bc, %bb.e ], [ %i.aq, %bb.c ] ; 2 uses
  %i.at = phi ptr [ %i.bb, %bb.e ], [ %i.ap, %bb.c ] ; 2 uses
  %.02547.i.i.i = phi i32 [ %.025.i.i.i, %bb.e ], [ %.02544.i.i.i, %bb.c ]
  %.046.i.i.i = phi i32 [ %i.ay, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02745.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.au = icmp eq i32 %i.as, -1
  br i1 %i.au, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02745.i.i.i, null
  %i.av = select i1 %.not.i.i.i, ptr %i.at, ptr %.02745.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = icmp eq i32 %i.as, -2
  %i.ax = icmp eq ptr %.02745.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.aw, i1 %i.ax, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.at, ptr %.02745.i.i.i
  %i.ay = add i32 %.046.i.i.i, 1
  %i.az = add i32 %.046.i.i.i, %.02547.i.i.i
  %.025.i.i.i = and i32 %i.az, %i.an              ; 2 uses
  %i.ba = zext i32 %.025.i.i.i to i64
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ba ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10 ; 2 uses
  %i.bd = icmp eq i32 %i.ai, %i.bc
  br i1 %i.bd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !33, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.av, %bb.d ], [ %i.ap, %bb.c ], [ %i.bb, %bb.e ] ; 2 uses
  store i32 %i.ai, ptr %.sink.i.i.i, align 4, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.019.i, i64 4
  %i.bg = load i64, ptr %i.bf, align 4
  store i64 %i.bg, ptr %i.be, align 4
  %i.bh = load i32, ptr %i.ac, align 8, !tbaa !14
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ac, align 8, !tbaa !14
  br label %bb.f
end_hunk_1
