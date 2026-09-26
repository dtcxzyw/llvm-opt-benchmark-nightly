Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CFG?download=true
inline.NumInlined: 8087
inline.NumDeleted: 4155
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_110CFGBuilder21VisitExprWithCleanupsEPN5clang16ExprWithCleanupsENS_13AddStmtChoiceEb:bb.a
  br label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_110CFGBuilder15TempDtorContextD2Ev.exit, %bb.b
  %.sroa.0.0 = phi i32 [ 1, %_ZN12_GLOBAL__N_110CFGBuilder15TempDtorContextD2Ev.exit ], [ %2, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !222
  %i.v = call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.u, i32 %.sroa.0.0, i1 noundef zeroext false)
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder25VisitCXXBindTemporaryExprEPN5clang20CXXBindTemporaryExprENS_13AddStmtChoiceE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.clang::CFGBlock::AdjacentBlock", align 8 ; 5 uses
  %4 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137, !nonnull !138, !align !139 ; 2 uses
  %i.c = load i16, ptr %1, align 8
  %i.d = and i16 %i.c, 511
  %i.e = zext nneg i16 %i.d to i64                ; 2 uses
  %i.f = lshr i64 %i.e, 6
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !346
  %i.i = and i64 %i.e, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = and i64 %i.j, %i.h
  %i.l = icmp ne i64 %i.k, 0                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !421  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !422
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !423
  %.not15.i.i = icmp ne ptr %i.s, null
  %..i.i = select i1 %.not15.i.i, i1 true, i1 %i.l
  %i.t = icmp eq i32 %2, 1
  %or.cond = select i1 %..i.i, i1 true, i1 %i.t
  br i1 %or.cond, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread, label %bb.i

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.o, align 8, !tbaa !422
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !425  ; 4 uses
  %.not14.i.i = icmp eq ptr %i.u, null
  br i1 %.not14.i.i, label %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !427, !noalias !1301 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !428, !noalias !1301 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !429, !noalias !1301 ; 4 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.loopexit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ab, %i.ag                    ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !178, !noalias !1302
  %i.am = and i32 %i.ah, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !235

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %bb.f
  %i.ap = phi i64 [ %i.av, %bb.f ], [ %i.ai, %bb.e ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.au, %bb.f ], [ %i.ah, %bb.e ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31, !noalias !1302
  %i.as = icmp eq ptr %1, %i.ar
  br i1 %i.as, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i, label %bb.f, !prof !52

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.at = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.au = and i32 %i.at, %i.ab                    ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.av, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !178, !noalias !1302
  %i.az = and i32 %i.au, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !237

.loopexit.i.i.i.i:                                ; preds = %bb.f, %bb.e, %bb.d
  %i.bc = zext i32 %i.z to i64                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.bc
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.z to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i ], [ %i.bc, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i ], [ %i.bd, %.loopexit.i.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.pre-phi.i.i
  %i.bf = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  br i1 %i.bf, label %.split2.i, label %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.thread.i

.split2.i:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i
  store ptr null, ptr %i.bg, align 8, !tbaa !423
  %.old = icmp eq i32 %2, 1
  %or.cond9 = select i1 %i.l, i1 true, i1 %.old
  br i1 %or.cond9, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread, label %bb.i

_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.thread.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i
  store ptr %.lcssa.sink.i.i.i.i, ptr %i.bg, align 8, !tbaa !423
  br label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread

_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i: ; preds = %bb.c, %bb.a
  %.old.old = icmp eq i32 %2, 1
  %or.cond10 = select i1 %i.l, i1 true, i1 %.old.old
  br i1 %or.cond10, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread, label %bb.i

_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread: ; preds = %.split2.i, %.split.i, %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.thread.i, %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !136 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.g, label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !133
  %i.bl = tail call noundef ptr @_ZN5clang3CFG11createBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bk) ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !135 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i7, label %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5clang8CFGBlock13AdjacentBlockC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.bn, i1 noundef zeroext true) #24
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !133
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %3, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  call void @_ZN5clang8CFGBlock12addSuccessorENS0_13AdjacentBlockERNS_17BumpVectorContextE(ptr noundef nonnull align 8 dereferenceable(120) %i.bl, ptr %i.bq, i64 %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i

_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i: ; preds = %bb.h, %bb.g
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !136
  br label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit

_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit: ; preds = %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread, %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i
  %i.bt = phi ptr [ %i.bi, %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread ], [ %i.bl, %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i ]
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder10appendStmtEPN5clang8CFGBlockEPKNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %i.bt, ptr noundef nonnull %1)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !133
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %1, ptr %4, align 8, !tbaa !225
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 4, ptr %i.bx, align 8, !tbaa !226
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !227
  %i.bz = call noundef ptr @_ZN5clang24ConstructionContextLayer6createERNS_17BumpVectorContextERKNS_23ConstructionContextItemEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null) #24
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !439
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder24findConstructionContextsEPKN5clang24ConstructionContextLayerEPNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.bz, ptr noundef %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i, %.split2.i, %.split.i, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit
  %.sroa.0.0 = phi i32 [ 0, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit ], [ %2, %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i ], [ %2, %.split.i ], [ %2, %.split2.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !439
  %i.ce = call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.cd, i32 %.sroa.0.0, i1 noundef zeroext false)
  ret ptr %i.ce
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder21VisitCXXConstructExprEPN5clang16CXXConstructExprENS_13AddStmtChoiceE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::reverse_children", align 8 ; 7 uses
  %3 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !442  ; 2 uses
  %.not16.i = icmp eq i32 %i.b, 0
  br i1 %.not16.i, label %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang16CXXConstructExprEvEEvPT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.g = load i16, ptr %1, align 8
  %i.h = and i16 %i.g, 511
  %.not.i.i.i.i = icmp eq i16 %i.h, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !432  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !74
  %i.m = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !189
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !74
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !189 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16              ; 3 uses
  %i.v = add i8 %i.u, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 3
  %.not.i7.i.i = icmp ne ptr %i.s, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.w = and i8 %i.u, 62
  %spec.select.i.i.i12.i = icmp eq i8 %i.w, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i12.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195  ; 2 uses
  %i.z = icmp eq i8 %i.u, 49
  br i1 %i.z, label %bb.d, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 127
  %i.ad = add nsw i32 %i.ac, -60
  %i.ae = icmp ult i32 %i.ad, 3
  br i1 %i.ae, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, label %.critedge.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.d, %bb.c
  %i.af = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.y) ; 0 uses
  %i.ag = load i24, ptr %i.k, align 8
  %i.ah = and i24 %i.ag, 1536
  %.not15.i = icmp eq i24 %i.ah, 0
  br i1 %.not15.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %1, ptr %3, align 8, !tbaa !225
  store i32 7, ptr %i.d, align 8, !tbaa !226
  %i.ak = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !227
  %i.al = call noundef ptr @_ZN5clang24ConstructionContextLayer6createERNS_17BumpVectorContextERKNS_23ConstructionContextItemEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null) #24
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder24findConstructionContextsEPKN5clang24ConstructionContextLayerEPNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.al, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, %bb.d, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %.not.i, label %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang16CXXConstructExprEvEEvPT_.exit, label %bb.b, !llvm.loop !1303

_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang16CXXConstructExprEvEEvPT_.exit: ; preds = %.critedge.i, %bb.a
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder17appendConstructorEPN5clang16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ao = load ptr, ptr %0, align 8, !tbaa !129
  call fastcc void @_ZN12_GLOBAL__N_116reverse_childrenC2EPN5clang4StmtERNS1_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.ao), !inline_history !8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val.i = load ptr, ptr %i.ap, align 8, !tbaa !435, !noalias !1306 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.val12.i = load i64, ptr %i.aq, align 8, !tbaa !436, !noalias !1306 ; 2 uses
  %.not1819.i = icmp eq i64 %.val12.i, 0
  br i1 %.not1819.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang16CXXConstructExprEvEEvPT_.exit
  %.idx.i = shl nuw nsw i64 %.val12.i, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i
  br label %.lr.ph.i5

._crit_edge.i:                                    ; preds = %bb.h, %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang16CXXConstructExprEvEEvPT_.exit
  %.0.lcssa.i = phi ptr [ %i.an, %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang16CXXConstructExprEvEEvPT_.exit ], [ %.2.i, %bb.h ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !130   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.as) #24, !inline_history !8
  br label %_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit

.lr.ph.i5:                                        ; preds = %bb.h, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %.2.i, %bb.h ], [ %i.an, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %i.av, %bb.h ], [ %i.ar, %.lr.ph.preheader.i ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.015.020.i, i64 -8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %.not.i6 = icmp eq ptr %i.aw, null
  br i1 %.not.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i5
  %i.ax = call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %i.aw, i32 0, i1 noundef zeroext false), !inline_history !8 ; 2 uses
  %.not11.i = icmp eq ptr %i.ax, null
  %spec.select.i = select i1 %.not11.i, ptr %.021.i, ptr %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i5
  %.2.i = phi ptr [ %spec.select.i, %bb.g ], [ %.021.i, %.lr.ph.i5 ] ; 2 uses
  %.not18.i = icmp eq ptr %i.av, %.val.i
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i5

_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit: ; preds = %._crit_edge.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder15VisitCXXNewExprEPN5clang10CXXNewExprENS_13AddStmtChoiceE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.clang::CFGBlock::AdjacentBlock", align 8 ; 5 uses
  %3 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = tail call noundef ptr @_ZN5clang3CFG11createBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %i.d) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN5clang8CFGBlock13AdjacentBlockC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.g, i1 noundef zeroext true) #24
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8
  call void @_ZN5clang8CFGBlock12addSuccessorENS0_13AdjacentBlockERNS_17BumpVectorContextE(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr %i.j, i64 %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i

_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i: ; preds = %bb.c, %bb.b
  store ptr %i.e, ptr %i.a, align 8, !tbaa !136
  br label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit

_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit: ; preds = %bb.a, %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i
  %i.m = phi ptr [ %i.b, %bb.a ], [ %i.e, %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i ]
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder10appendStmtEPN5clang8CFGBlockEPKNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %i.m, ptr noundef %1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %1, ptr %3, align 8, !tbaa !225
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !226
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !227
  %i.s = call noundef ptr @_ZN5clang24ConstructionContextLayer6createERNS_17BumpVectorContextERKNS_23ConstructionContextItemEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null) #24
  %i.t = load i32, ptr %1, align 8                ; 2 uses
  %i.u = and i32 %i.t, 16777216
  %.not.i.i13 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i13, label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit, label %_ZNK5clang10CXXNewExpr14getInitializerEv.exit.i

_ZNK5clang10CXXNewExpr14getInitializerEv.exit.i:  ; preds = %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = lshr i32 %i.t, 20
  %.lobit.i.i.i = and i32 %i.w, 1
  %i.x = zext nneg i32 %.lobit.i.i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang10CXXNewExpr14getInitializerEv.exit.i
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = and i16 %i.aa, 511
  %i.ac = add nsw i16 %i.ab, -117
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.ac, 2
  %spec.select.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i, ptr %i.z, ptr null
  br label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit

_ZNK5clang10CXXNewExpr16getConstructExprEv.exit:  ; preds = %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit, %_ZNK5clang10CXXNewExpr14getInitializerEv.exit.i, %bb.d
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.d ], [ null, %_ZNK5clang10CXXNewExpr14getInitializerEv.exit.i ], [ null, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit ]
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder24findConstructionContextsEPKN5clang24ConstructionContextLayerEPNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.s, ptr noundef %.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = load i32, ptr %1, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 16777216
  %.not.i14 = icmp eq i32 %i.ae, 0
  br i1 %.not.i14, label %_ZN5clang10CXXNewExpr14getInitializerEv.exit.thread, label %_ZN5clang10CXXNewExpr14getInitializerEv.exit

_ZN5clang10CXXNewExpr14getInitializerEv.exit:     ; preds = %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = lshr i32 %i.ad, 20
  %.lobit.i.i = and i32 %i.ag, 1
  %i.ah = zext nneg i32 %.lobit.i.i to i64
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_110CFGBuilder18VisitCXXDeleteExprEPN5clang13CXXDeleteExprENS_13AddStmtChoiceE:bb.a

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %.2.i, %bb.p ], [ %i.dg, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %i.do, %bb.p ], [ %i.dk, %.lr.ph.preheader.i ]
  %i.do = getelementptr inbounds i8, ptr %.sroa.015.020.i, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !31 ; 2 uses
  %.not.i28 = icmp eq ptr %i.dp, null
  br i1 %.not.i28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.dq = call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %i.dp, i32 0, i1 noundef zeroext false), !inline_history !8 ; 2 uses
  %.not11.i = icmp eq ptr %i.dq, null
  %spec.select.i = select i1 %.not11.i, ptr %.021.i, ptr %i.dq
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.2.i = phi ptr [ %spec.select.i, %bb.o ], [ %.021.i, %.lr.ph.i ] ; 2 uses
  %.not18.i = icmp eq ptr %i.do, %.val.i
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit: ; preds = %._crit_edge.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder26VisitCXXFunctionalCastExprEPN5clang21CXXFunctionalCastExprENS_13AddStmtChoiceE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.clang::CFGBlock::AdjacentBlock", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137, !nonnull !138, !align !139 ; 2 uses
  %i.c = load i16, ptr %1, align 8
  %i.d = and i16 %i.c, 511
  %i.e = zext nneg i16 %i.d to i64                ; 2 uses
  %i.f = lshr i64 %i.e, 6
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !346
  %i.i = and i64 %i.e, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = and i64 %i.j, %i.h
  %i.l = icmp ne i64 %i.k, 0                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !421  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !422
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !423
  %.not15.i.i = icmp ne ptr %i.s, null
  %..i.i = select i1 %.not15.i.i, i1 true, i1 %i.l
  %i.t = icmp eq i32 %2, 1
  %or.cond = select i1 %..i.i, i1 true, i1 %i.t
  br i1 %or.cond, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread, label %bb.i

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.o, align 8, !tbaa !422
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !425  ; 4 uses
  %.not14.i.i = icmp eq ptr %i.u, null
  br i1 %.not14.i.i, label %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !427, !noalias !1320 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !428, !noalias !1320 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !429, !noalias !1320 ; 4 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.loopexit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ab, %i.ag                    ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !178, !noalias !1321
  %i.am = and i32 %i.ah, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !235

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %bb.f
  %i.ap = phi i64 [ %i.av, %bb.f ], [ %i.ai, %bb.e ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.au, %bb.f ], [ %i.ah, %bb.e ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31, !noalias !1321
  %i.as = icmp eq ptr %1, %i.ar
  br i1 %i.as, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i, label %bb.f, !prof !52

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.at = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.au = and i32 %i.at, %i.ab                    ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.av, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !178, !noalias !1321
  %i.az = and i32 %i.au, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !237

.loopexit.i.i.i.i:                                ; preds = %bb.f, %bb.e, %bb.d
  %i.bc = zext i32 %i.z to i64                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.bc
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.z to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i ], [ %i.bc, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i.i ], [ %i.bd, %.loopexit.i.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.pre-phi.i.i
  %i.bf = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  br i1 %i.bf, label %.split2.i, label %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.thread.i

.split2.i:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i
  store ptr null, ptr %i.bg, align 8, !tbaa !423
  %.old = icmp eq i32 %2, 1
  %or.cond7 = select i1 %i.l, i1 true, i1 %.old
  br i1 %or.cond7, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread, label %bb.i

_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.thread.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtEPKNS2_8CFGBlockENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i.i
  store ptr %.lcssa.sink.i.i.i.i, ptr %i.bg, align 8, !tbaa !423
  br label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread

_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i: ; preds = %bb.c, %bb.a
  %.old.old = icmp eq i32 %2, 1
  %or.cond8 = select i1 %i.l, i1 true, i1 %.old.old
  br i1 %or.cond8, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread, label %bb.i

_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread: ; preds = %.split2.i, %.split.i, %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.thread.i, %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !136 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.g, label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !133
  %i.bl = tail call noundef ptr @_ZN5clang3CFG11createBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bk) ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !135 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i5, label %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5clang8CFGBlock13AdjacentBlockC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.bn, i1 noundef zeroext true) #24
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !133
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %3, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  call void @_ZN5clang8CFGBlock12addSuccessorENS0_13AdjacentBlockERNS_17BumpVectorContextE(ptr noundef nonnull align 8 dereferenceable(120) %i.bl, ptr %i.bq, i64 %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i

_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i: ; preds = %bb.h, %bb.g
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !136
  br label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit

_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit: ; preds = %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread, %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i
  %i.bt = phi ptr [ %i.bi, %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit.thread ], [ %i.bl, %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i ]
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder10appendStmtEPN5clang8CFGBlockEPKNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %i.bt, ptr noundef nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i, %.split2.i, %.split.i, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit
  %.sroa.0.0 = phi i32 [ 0, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit ], [ %2, %_ZN12_GLOBAL__N_110CFGBuilder9alwaysAddEPKN5clang4StmtE.exit.i ], [ %2, %.split.i ], [ %2, %.split2.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !444
  %i.bw = call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.bv, i32 %.sroa.0.0, i1 noundef zeroext false)
  ret ptr %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder27VisitCXXTemporaryObjectExprEPN5clang22CXXTemporaryObjectExprENS_13AddStmtChoiceE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::reverse_children", align 8 ; 7 uses
  %3 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !442  ; 2 uses
  %.not16.i = icmp eq i32 %i.b, 0
  br i1 %.not16.i, label %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang22CXXTemporaryObjectExprEvEEvPT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.g = load i16, ptr %1, align 8
  %i.h = and i16 %i.g, 511
  %.not.i.i.i.i = icmp eq i16 %i.h, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !432  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !74
  %i.m = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !189
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !74
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !189 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16              ; 3 uses
  %i.v = add i8 %i.u, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 3
  %.not.i7.i.i = icmp ne ptr %i.s, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.w = and i8 %i.u, 62
  %spec.select.i.i.i12.i = icmp eq i8 %i.w, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i12.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195  ; 2 uses
  %i.z = icmp eq i8 %i.u, 49
  br i1 %i.z, label %bb.d, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 127
  %i.ad = add nsw i32 %i.ac, -60
  %i.ae = icmp ult i32 %i.ad, 3
  br i1 %i.ae, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, label %.critedge.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.d, %bb.c
  %i.af = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.y) ; 0 uses
  %i.ag = load i24, ptr %i.k, align 8
  %i.ah = and i24 %i.ag, 1536
  %.not15.i = icmp eq i24 %i.ah, 0
  br i1 %.not15.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %1, ptr %3, align 8, !tbaa !225
  store i32 7, ptr %i.d, align 8, !tbaa !226
  %i.ak = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !227
  %i.al = call noundef ptr @_ZN5clang24ConstructionContextLayer6createERNS_17BumpVectorContextERKNS_23ConstructionContextItemEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null) #24
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder24findConstructionContextsEPKN5clang24ConstructionContextLayerEPNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.al, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, %bb.d, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %.not.i, label %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang22CXXTemporaryObjectExprEvEEvPT_.exit, label %bb.b, !llvm.loop !1322

_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang22CXXTemporaryObjectExprEvEEvPT_.exit: ; preds = %.critedge.i, %bb.a
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder17appendConstructorEPN5clang16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ao = load ptr, ptr %0, align 8, !tbaa !129
  call fastcc void @_ZN12_GLOBAL__N_116reverse_childrenC2EPN5clang4StmtERNS1_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.ao), !inline_history !8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val.i = load ptr, ptr %i.ap, align 8, !tbaa !435, !noalias !1325 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.val12.i = load i64, ptr %i.aq, align 8, !tbaa !436, !noalias !1325 ; 2 uses
  %.not1819.i = icmp eq i64 %.val12.i, 0
  br i1 %.not1819.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang22CXXTemporaryObjectExprEvEEvPT_.exit
  %.idx.i = shl nuw nsw i64 %.val12.i, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i
  br label %.lr.ph.i5

._crit_edge.i:                                    ; preds = %bb.h, %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang22CXXTemporaryObjectExprEvEEvPT_.exit
  %.0.lcssa.i = phi ptr [ %i.an, %_ZN12_GLOBAL__N_110CFGBuilder36findConstructionContextsForArgumentsIN5clang22CXXTemporaryObjectExprEvEEvPT_.exit ], [ %.2.i, %bb.h ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !130   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.as) #24, !inline_history !8
  br label %_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit

.lr.ph.i5:                                        ; preds = %bb.h, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %.2.i, %bb.h ], [ %i.an, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %i.av, %bb.h ], [ %i.ar, %.lr.ph.preheader.i ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.015.020.i, i64 -8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %.not.i6 = icmp eq ptr %i.aw, null
  br i1 %.not.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i5
  %i.ax = call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %i.aw, i32 0, i1 noundef zeroext false), !inline_history !8 ; 2 uses
  %.not11.i = icmp eq ptr %i.ax, null
  %spec.select.i = select i1 %.not11.i, ptr %.021.i, ptr %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i5
  %.2.i = phi ptr [ %spec.select.i, %bb.g ], [ %.021.i, %.lr.ph.i5 ] ; 2 uses
  %.not18.i = icmp eq ptr %i.av, %.val.i
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i5

_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit: ; preds = %._crit_edge.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder17VisitCXXThrowExprEPN5clang12CXXThrowExprE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.clang::CFGBlock::AdjacentBlock", align 8 ; 5 uses
  %3 = alloca %"class.(anonymous namespace)::reverse_children", align 8 ; 7 uses
  %4 = alloca %"class.clang::CFGBlock::AdjacentBlock", align 8 ; 5 uses
  %5 = alloca %"class.clang::CFGBlock::AdjacentBlock", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load i8, ptr %i.a, align 8, !tbaa !198, !range !146, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.f = tail call noundef ptr @_ZN5clang3CFG11createBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %i.e) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !433  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5clang8CFGBlock13AdjacentBlockC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.i, i1 noundef zeroext true) #24
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i64, ptr %i.m, align 8
  call void @_ZN5clang8CFGBlock12addSuccessorENS0_13AdjacentBlockERNS_17BumpVectorContextE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr %i.l, i64 %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN5clang8CFGBlock13AdjacentBlockC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.q, i1 noundef zeroext true) #24
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i64, ptr %i.u, align 8
  call void @_ZN5clang8CFGBlock12addSuccessorENS0_13AdjacentBlockERNS_17BumpVectorContextE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr %i.t, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !137, !nonnull !138, !align !139
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !421  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.z, null
  br i1 %.not.i.i6, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !422
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %1, ptr %i.aa, align 8, !tbaa !422
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !425 ; 4 uses
  %.not14.i.i = icmp eq ptr %i.ad, null
  br i1 %.not14.i.i, label %_ZNK12_GLOBAL__N_113AddStmtChoice9alwaysAddERNS_10CFGBuilderEPKN5clang4StmtE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !427, !noalias !1336 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !428, !noalias !1336 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !429, !noalias !1336 ; 4 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i32 %i.ai, -1                       ; 2 uses
  %i.al = ptrtoint ptr %1 to i64
  %i.am = mul i64 %i.al, -4658895280553007687     ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_110CFGBuilder10appendCallEPN5clang8CFGBlockEPNS1_8CallExprE:bb.a
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3
  %spec.select.i.i.i.i13 = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1) ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i14 = load i64, ptr %i.cu, align 8
  %i.da = and i64 %.0.copyload.i.i.i.i.i.i.i.i14, -8
  %i.db = inttoptr i64 %i.da to ptr               ; 4 uses
  %i.dc = shl i64 %spec.select.i.i.i.i13, 4       ; 3 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !50 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = add i64 %i.dc, %i.de                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !51
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %bb.p, label %bb.q, !prof !52

bb.p:                                             ; preds = %bb.o
  %i.dj = inttoptr i64 %i.df to ptr
  store ptr %i.dj, ptr %i.db, align 8, !tbaa !50
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i17

bb.q:                                             ; preds = %bb.o
  %i.dk = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.db, i64 noundef %i.dc, i64 noundef %i.dc, i8 3)
  %.pre.i.i.i.i15 = load ptr, ptr %1, align 8, !tbaa !72
  %.pre15.i.i.i.i16 = load ptr, ptr %i.bj, align 8, !tbaa !73
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i17

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i17: ; preds = %bb.q, %bb.p
  %i.dl = phi ptr [ %i.bk, %bb.p ], [ %.pre15.i.i.i.i16, %bb.q ] ; 2 uses
  %i.dm = phi ptr [ %i.cv, %bb.p ], [ %.pre.i.i.i.i15, %bb.q ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i18 = phi ptr [ %i.dd, %bb.p ], [ %i.dk, %bb.q ] ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i.i.i.i19, label %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i.i20:                           ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i17, %.lr.ph.i.i.i.i.i.i.i20
  %.011.i.i.i.i.i.i.i21 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i20 ], [ %.0.i.i.i.i.i.i.i.i18, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i17 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i22 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i20 ], [ %i.dm, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i17 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i.i.i.i22, i64 16, i1 false), !tbaa.struct !75
  %i.dn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i22, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i21, i64 16
  %.not.i.i.i.i.i.i.i23 = icmp eq ptr %i.dn, %i.dl
  br i1 %.not.i.i.i.i.i.i.i23, label %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i20, !llvm.loop !0

_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i.i20, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i17
  %i.dp = ptrtoint ptr %i.bk to i64
  %i.dq = sub i64 %i.dp, %i.cx
  store ptr %.0.i.i.i.i.i.i.i.i18, ptr %1, align 8, !tbaa !72
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i18, i64 %i.dq ; 2 uses
  store ptr %i.dr, ptr %i.bj, align 8, !tbaa !73
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i.i18, i64 %spec.select.i.i.i.i13
  store ptr %i.ds, ptr %i.bl, align 8, !tbaa !77
  br label %_ZN5clang8CFGBlock10appendStmtEPNS_4StmtERNS_17BumpVectorContextE.exit

_ZN5clang8CFGBlock10appendStmtEPNS_4StmtERNS_17BumpVectorContextE.exit: ; preds = %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i24, %bb.n, %bb.m
  %.sink54 = phi i64 [ 1, %bb.m ], [ 3, %bb.n ], [ 3, %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i24 ]
  %.sink52 = phi ptr [ %i.cp, %bb.m ], [ %i.bk, %bb.n ], [ %i.dr, %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i24 ] ; 2 uses
  %.sink = phi i64 [ %i.cr, %bb.m ], [ 1, %bb.n ], [ 1, %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i24 ]
  %i.dt = ptrtoint ptr %2 to i64
  %i.du = or i64 %.sink54, %i.dt
  store i64 %i.du, ptr %.sink52, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sink52, i64 8
  store i64 %.sink, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !74
  %i.dv = load ptr, ptr %i.bj, align 8, !tbaa !73
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %i.dw, ptr %i.bj, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder21VisitCallExprChildrenEPN5clang8CallExprE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::reverse_children", align 8 ; 7 uses
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 511
  %.not = icmp eq i16 %i.b, 93
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  %i.d = lshr i32 %i.c, 25
  %i.e = and i32 %i.d, 63
  switch i32 %i.e, label %bb.c [
    i32 29, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 28, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 24, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 23, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 22, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 21, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 20, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 19, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 18, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 15, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
    i32 25, label %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit
  ]

_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = lshr i32 %i.c, 19
  %i.h = and i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !432
  %i.l = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.k, i32 0, i1 noundef zeroext false) ; 0 uses
  %i.m = load i32, ptr %1, align 8
  %i.n = lshr i32 %i.m, 19
  %i.o = and i32 %i.n, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !432
  %i.t = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.s, i32 0, i1 noundef zeroext false) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.w = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.v, i32 0, i1 noundef zeroext false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !136  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.z = load ptr, ptr %0, align 8, !tbaa !129
  call fastcc void @_ZN12_GLOBAL__N_116reverse_childrenC2EPN5clang4StmtERNS1_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.z), !inline_history !8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !435, !noalias !1698 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.val12.i = load i64, ptr %i.ab, align 8, !tbaa !436, !noalias !1698 ; 2 uses
  %.not1819.i = icmp eq i64 %.val12.i, 0
  br i1 %.not1819.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %.idx.i = shl nuw nsw i64 %.val12.i, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.c
  %.0.lcssa.i = phi ptr [ %i.y, %bb.c ], [ %.2.i, %bb.f ]
  %i.ad = load ptr, ptr %2, align 8, !tbaa !130   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.ad) #24, !inline_history !8
  br label %_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %.2.i, %bb.f ], [ %i.y, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %i.ag, %bb.f ], [ %i.ac, %.lr.ph.preheader.i ]
  %i.ag = getelementptr inbounds i8, ptr %.sroa.015.020.i, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = call fastcc noundef ptr @_ZN12_GLOBAL__N_110CFGBuilder5VisitEPN5clang4StmtENS_13AddStmtChoiceEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %i.ah, i32 0, i1 noundef zeroext false), !inline_history !8 ; 2 uses
  %.not11.i = icmp eq ptr %i.ai, null
  %spec.select.i = select i1 %.not11.i, ptr %.021.i, ptr %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.2.i = phi ptr [ %spec.select.i, %bb.e ], [ %.021.i, %.lr.ph.i ] ; 2 uses
  %.not18.i = icmp eq ptr %i.ag, %.val.i
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit: ; preds = %._crit_edge.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit, %_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit
  %.1 = phi ptr [ %.0.lcssa.i, %_ZN12_GLOBAL__N_110CFGBuilder13VisitChildrenEPN5clang4StmtE.exit ], [ %i.w, %_ZNK5clang19CXXOperatorCallExpr14isAssignmentOpEv.exit ]
  ret ptr %.1
}

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #3

declare noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110CFGBuilder24findConstructionContextsEPKN5clang24ConstructionContextLayerEPNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %4 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %5 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137, !nonnull !138, !align !139 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 69
  %i.f = load i8, ptr %i.e, align 1, !tbaa !518, !range !146, !noundef !138
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = icmp ne ptr %2, null
  %or.cond73 = and i1 %i.h, %i.g
  br i1 %or.cond73, label %.lr.ph, label %_ZN5clang21CFGCXXRecordTypedCall20isCXXRecordTypedCallEPKNS_4ExprE.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.j = phi ptr [ %i.d, %.lr.ph ], [ %i.ea, %tailrecurse.backedge ]
  %.tr6074 = phi ptr [ %2, %.lr.ph ], [ %.tr60.be, %tailrecurse.backedge ] ; 26 uses
  %i.k = load i16, ptr %.tr6074, align 8
  %i.l = and i16 %i.k, 511
  switch i16 %i.l, label %_ZN5clang21CFGCXXRecordTypedCall20isCXXRecordTypedCallEPKNS_4ExprE.exit.thread [
    i16 117, label %bb.c
    i16 118, label %bb.c
    i16 91, label %bb.i
    i16 94, label %bb.i
    i16 93, label %bb.i
    i16 92, label %bb.i
    i16 36, label %bb.i
    i16 62, label %bb.p
    i16 88, label %bb.q
    i16 81, label %bb.r
    i16 120, label %bb.t
    i16 50, label %bb.u
    i16 132, label %bb.y
    i16 55, label %bb.aa
    i16 20, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 70
  %i.n = load i8, ptr %i.m, align 2, !tbaa !1707, !range !146, !noundef !138
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %.tr6074, align 8
  %i.q = and i32 %i.p, 524288
  %.not58 = icmp eq i32 %i.q, 0
  br i1 %.not58, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %.tr6074, ptr %3, align 8, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %i.r, align 8, !tbaa !226
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !227
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val48.val = load ptr, ptr %i.t, align 8, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %.val48.val, i64 32
  %i.v = call noundef ptr @_ZN5clang24ConstructionContextLayer6createERNS_17BumpVectorContextERKNS_23ConstructionContextItemEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %1) #24
  %i.w = load i16, ptr %.tr6074, align 8
  %i.x = and i16 %i.w, 511
  %.not.i.i.i = icmp eq i16 %i.x, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.tr6074, i64 %spec.select.v.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !432
  call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder24findConstructionContextsEPKN5clang24ConstructionContextLayerEPNS1_4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.v, ptr noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.tr6074, ptr %i.b, align 8, !tbaa !432
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !251, !noalias !1708
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !519, !noalias !1708 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !250, !noalias !1708 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add i32 %i.af, -1                       ; 2 uses
  %i.ai = ptrtoint ptr %.tr6074 to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !178
  %i.as = and i32 %i.an, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i, !prof !235

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %i.av = phi i64 [ %i.bb, %bb.h ], [ %i.ao, %bb.g ]
  %.017.i.i.i = phi i32 [ %i.ba, %bb.h ], [ %i.an, %bb.g ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !432
  %i.ay = icmp eq ptr %.tr6074, %i.ax
  br i1 %i.ay, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.i, label %bb.h, !prof !52

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.az = add nuw i32 %.017.i.i.i, 1
  %i.ba = and i32 %i.az, %i.ah                    ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !178
  %i.bf = and i32 %i.ba, 31
  %i.bg = lshr i32 %i.be, %i.bf
  %i.bh = trunc i32 %i.bg to i1
  br i1 %i.bh, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i, !prof !237

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !521
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i, label %_ZN12_GLOBAL__N_110CFGBuilder26consumeConstructionContextEPKN5clang24ConstructionContextLayerEPNS1_4ExprE.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i: ; preds = %bb.h, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.i, %bb.g, %bb.f
  %i.bk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %1, ptr %i.bl, align 8, !tbaa !521
  br label %_ZN12_GLOBAL__N_110CFGBuilder26consumeConstructionContextEPKN5clang24ConstructionContextLayerEPNS1_4ExprE.exit

_ZN12_GLOBAL__N_110CFGBuilder26consumeConstructionContextEPKN5clang24ConstructionContextLayerEPNS1_4ExprE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN5clang21CFGCXXRecordTypedCall20isCXXRecordTypedCallEPKNS_4ExprE.exit.thread

bb.i:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.bm = load i24, ptr %.tr6074, align 8
  %i.bn = and i24 %i.bm, 1536
  %.not.i50 = icmp eq i24 %i.bn, 0
  br i1 %.not.i50, label %bb.j, label %_ZN5clang21CFGCXXRecordTypedCall20isCXXRecordTypedCallEPKNS_4ExprE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr6074, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bo, align 8, !tbaa !74
  %i.bp = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !74
  %i.bt = and i64 %i.bs, -16
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !189
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !189 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i8, ptr %i.ca, align 16            ; 3 uses
  %i.cc = add i8 %i.cb, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cc, 3
  %.not.i7.i.i = icmp ne ptr %i.bz, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = and i8 %i.cb, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.cd, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.k, label %_ZN5clang21CFGCXXRecordTypedCall20isCXXRecordTypedCallEPKNS_4ExprE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !195 ; 2 uses
  %i.cg = icmp eq i8 %i.cb, 49
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = and i32 %i.ci, 127
  %i.ck = add nsw i32 %i.cj, -60
  %i.cl = icmp ult i32 %i.ck, 3
  br i1 %i.cl, label %bb.m, label %_ZN5clang21CFGCXXRecordTypedCall20isCXXRecordTypedCallEPKNS_4ExprE.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cm = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cf) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.tr6074, ptr %i.a, align 8, !tbaa !432
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !251, !noalias !1709
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !519, !noalias !1709 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !250, !noalias !1709 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i51, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = add i32 %i.cs, -1                       ; 2 uses
  %i.cv = ptrtoint ptr %.tr6074 to i64
  %i.cw = mul i64 %i.cv, -4658895280553007687     ; 2 uses
  %i.cx = lshr i64 %i.cw, 31
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = trunc i64 %i.cy to i32
  %i.da = and i32 %i.cu, %i.cz                    ; 3 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 5
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !178
  %i.df = and i32 %i.da, 31
  %i.dg = lshr i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dg to i1
  br i1 %i.dh, label %.lr.ph.i.i.i53, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i51, !prof !235

.lr.ph.i.i.i53:                                   ; preds = %bb.n, %bb.o
  %i.di = phi i64 [ %i.do, %bb.o ], [ %i.db, %bb.n ]
  %.017.i.i.i54 = phi i32 [ %i.dn, %bb.o ], [ %i.da, %bb.n ]
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !432
  %i.dl = icmp eq ptr %.tr6074, %i.dk
  br i1 %i.dl, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.i55, label %bb.o, !prof !52

bb.o:                                             ; preds = %.lr.ph.i.i.i53
  %i.dm = add nuw i32 %.017.i.i.i54, 1
  %i.dn = and i32 %i.dm, %i.cu                    ; 3 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = lshr i64 %i.do, 5
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !178
  %i.ds = and i32 %i.dn, 31
  %i.dt = lshr i32 %i.dr, %i.ds
  %i.du = trunc i32 %i.dt to i1
  br i1 %i.du, label %.lr.ph.i.i.i53, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i51, !prof !237

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.i55: ; preds = %.lr.ph.i.i.i53
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !521
  %.not.i56 = icmp eq ptr %i.dw, null
  br i1 %.not.i56, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i51, label %_ZN12_GLOBAL__N_110CFGBuilder26consumeConstructionContextEPKN5clang24ConstructionContextLayerEPNS1_4ExprE.exit57

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i51: ; preds = %bb.o, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.i55, %bb.n, %bb.m
  %i.dx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i52 = extractvalue { ptr, i8 } %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i52, i64 8
  store ptr %1, ptr %i.dy, align 8, !tbaa !521
  br label %_ZN12_GLOBAL__N_110CFGBuilder26consumeConstructionContextEPKN5clang24ConstructionContextLayerEPNS1_4ExprE.exit57

_ZN12_GLOBAL__N_110CFGBuilder26consumeConstructionContextEPKN5clang24ConstructionContextLayerEPNS1_4ExprE.exit57: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.i55, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprEPKNS2_24ConstructionContextLayerENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6lookupEPKS3_.exit.thread.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5clang21CFGCXXRecordTypedCall20isCXXRecordTypedCallEPKNS_4ExprE.exit.thread

bb.p:                                             ; preds = %bb.b
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr6074, i64 16
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.p, %bb.q, %bb.s, %bb.z, %bb.ab, %bb.ac
  %.tr60.be.in = phi ptr [ %i.dz, %bb.p ], [ %i.ef, %bb.q ], [ %i.ej, %bb.s ], [ %i.fk, %bb.z ], [ %i.fn, %bb.ab ], [ %i.fo, %bb.ac ]
  %.tr60.be = load ptr, ptr %.tr60.be.in, align 8, !tbaa !31 ; 2 uses
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !137, !nonnull !138, !align !139 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 69
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !518, !range !146, !noundef !138
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = icmp ne ptr %.tr60.be, null
  %or.cond = and i1 %i.ee, %i.ed
  br i1 %or.cond, label %bb.b, label %_ZN5clang21CFGCXXRecordTypedCall20isCXXRecordTypedCallEPKNS_4ExprE.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr6074, i64 16
end_hunk_2
