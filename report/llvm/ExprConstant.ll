Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprConstant?download=true
inline.NumInlined: 27743
inline.NumDeleted: 6656
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN12_GLOBAL__N_119VectorExprEvaluator22VisitShuffleVectorExprEPKN5clang17ShuffleVectorExprE:bb.a
  %.sroa.38.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i.i.i.i, align 1
  %i.s = load i32, ptr %i.l, align 8, !tbaa !605
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.l, align 8, !tbaa !605
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_19VectorExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 0, ptr %4, align 8, !tbaa !631
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2431
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !784
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1214, !nonnull !480, !align !481
  %i.ab = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.aa, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(56) %4)
  br i1 %i.ab, label %bb.h, label %bb.al

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 0, ptr %5, align 8, !tbaa !631
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -2
  store i8 %i.ae, ptr %i.ac, align 4
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !2431
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !784
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1214, !nonnull !480, !align !481
  %i.aj = call fastcc noundef zeroext i1 @_ZL16EvaluateAsRValueRN12_GLOBAL__N_18EvalInfoEPKN5clang4ExprERNS2_7APValueE(ptr noundef nonnull align 8 dereferenceable(984) %i.ai, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %5)
  br i1 %i.aj, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 8, !tbaa !508
  %i.al = and i64 %.sroa.0.0.copyload.i, -16
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !511 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 16
  %i.aq = and i8 %i.ap, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.aq, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.an) #24
  br label %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit: ; preds = %bb.i, %bb.j
  %.1.i = phi ptr [ %i.ar, %bb.j ], [ %i.an, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !508 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.au, ptr %6, align 8, !tbaa !603
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.av, align 8, !tbaa !605
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 4, ptr %i.aw, align 4, !tbaa !604
  %i.ax = zext i32 %i.at to i64                   ; 2 uses
  call void @_ZN4llvm15SmallVectorImplIN5clang7APValueEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ax)
  %.not44 = icmp eq i32 %i.at, 0
  br i1 %.not44, label %.critedge25, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = ptrtoint ptr %7 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN5clang7APValueD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5clang7APValueD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 0, ptr %7, align 8, !tbaa !631
  %i.bj = load i8, ptr %i.ay, align 4
  %i.bk = and i8 %i.bj, -2
  store i8 %i.bk, ptr %i.ay, align 4
  %i.bl = load ptr, ptr %0, align 8, !tbaa !1214, !nonnull !480, !align !481
  %i.bm = load i32, ptr %i.az, align 8, !tbaa !958 ; 3 uses
  %i.bn = load i32, ptr %i.ba, align 8, !tbaa !958
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !2432
  %i.bo = add nuw i64 %indvars.iv, 2
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !2431, !noalias !2432
  %i.bq = and i64 %i.bo, 4294967295
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !784, !noalias !2432
  call void @_ZNK5clang12ConstantExpr16getAPValueResultEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #24, !noalias !2432
  %i.bt = load i32, ptr %i.bd, align 8, !tbaa !519, !noalias !2432 ; 2 uses
  store i32 %i.bt, ptr %i.bc, align 8, !tbaa !519, !alias.scope !2432
  %i.bu = icmp ult i32 %i.bt, 65
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = load i64, ptr %i.bb, align 8, !tbaa !508, !noalias !2432
  store i64 %i.bv, ptr %3, align 8, !tbaa !508, !alias.scope !2432
  br label %_ZN4llvm6APSIntC2ERKS0_.exit.i.i

bb.m:                                             ; preds = %bb.k
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(13) %i.bb) #24
  br label %_ZN4llvm6APSIntC2ERKS0_.exit.i.i

_ZN4llvm6APSIntC2ERKS0_.exit.i.i:                 ; preds = %bb.m, %bb.l
  %i.bw = load i8, ptr %i.bf, align 4, !tbaa !521, !range !517, !noalias !2432, !noundef !480 ; 2 uses
  store i8 %i.bw, ptr %i.be, align 4, !tbaa !521, !alias.scope !2432
  %i.bx = load i32, ptr %2, align 8, !tbaa !631, !noalias !2432
  %switch.i.i.i = icmp ult i32 %i.bx, 2
  br i1 %switch.i.i.i, label %_ZNK5clang17ShuffleVectorExpr17getShuffleMaskIdxEj.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit.i.i
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #24
  %.pre.i = load i8, ptr %i.be, align 4, !tbaa !521, !range !517
  br label %_ZNK5clang17ShuffleVectorExpr17getShuffleMaskIdxEj.exit.i

_ZNK5clang17ShuffleVectorExpr17getShuffleMaskIdxEj.exit.i: ; preds = %bb.n, %_ZN4llvm6APSIntC2ERKS0_.exit.i.i
  %i.by = phi i8 [ %i.bw, %_ZN4llvm6APSIntC2ERKS0_.exit.i.i ], [ %.pre.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !2432
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = load i32, ptr %i.bc, align 8, !tbaa !519 ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 65                  ; 2 uses
  br i1 %i.bz, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang17ShuffleVectorExpr17getShuffleMaskIdxEj.exit.i
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %3, align 8, !tbaa !508
  %i.cd = icmp eq i32 %i.ca, 0
  %i.ce = sub nuw nsw i32 64, %i.ca
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = shl i64 %i.cc, %i.cf
  %i.ch = ashr exact i64 %i.cg, %i.cf
  br i1 %i.cd, label %_ZNK4llvm6APSInt11getExtValueEv.exit.thread.i, label %_ZNK4llvm6APSInt11getExtValueEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %3, align 8, !tbaa !508
  br label %_ZNK4llvm6APSInt11getExtValueEv.exit.sink.split.i

bb.r:                                             ; preds = %_ZNK5clang17ShuffleVectorExpr17getShuffleMaskIdxEj.exit.i
  %i.cj = load ptr, ptr %3, align 8
  %spec.select.i.i.i = select i1 %i.cb, ptr %3, ptr %i.cj
  br label %_ZNK4llvm6APSInt11getExtValueEv.exit.sink.split.i

_ZNK4llvm6APSInt11getExtValueEv.exit.sink.split.i: ; preds = %bb.r, %bb.q
  %.sink.i = phi ptr [ %i.ci, %bb.q ], [ %spec.select.i.i.i, %bb.r ]
  %i.ck = load i64, ptr %.sink.i, align 8, !tbaa !508
  br label %_ZNK4llvm6APSInt11getExtValueEv.exit.i

_ZNK4llvm6APSInt11getExtValueEv.exit.i:           ; preds = %_ZNK4llvm6APSInt11getExtValueEv.exit.sink.split.i, %bb.p
  %i.cl = phi i64 [ %i.ch, %bb.p ], [ %i.ck, %_ZNK4llvm6APSInt11getExtValueEv.exit.sink.split.i ] ; 2 uses
  %.not23.i = icmp eq i64 %i.cl, -1
  br i1 %.not23.i, label %bb.s, label %_ZNK4llvm6APSInt11getExtValueEv.exit.thread.i

bb.s:                                             ; preds = %_ZNK4llvm6APSInt11getExtValueEv.exit.i
  %i.cm = call ptr @_ZN5clang6interp5State6FFDiagEPKNS_4ExprEjj(ptr noundef nonnull align 8 dereferenceable(984) %i.bl, ptr noundef nonnull %1, i32 noundef 5099, i32 noundef 0) #24 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %_ZN5clang18OptionalDiagnosticlsIjEERS0_RKT_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !660 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !661
  %i.cq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.cp) ; 2 uses
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !660
  br label %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i

_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, %bb.t
  %i.cr = phi ptr [ %i.cq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.cn, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cr, align 8, !tbaa !673
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu
  store i8 3, ptr %i.cv, align 1, !tbaa !508
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !660 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cw, align 8, !tbaa !673 ; 2 uses
  %i.cz = add i8 %i.cy, 1
  store i8 %i.cz, ptr %i.cw, align 8, !tbaa !673
  %i.da = zext i8 %i.cy to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.da
  store i64 %indvars.iv, ptr %i.db, align 8, !tbaa !513
  br label %_ZN5clang18OptionalDiagnosticlsIjEERS0_RKT_.exit.i

_ZNK4llvm6APSInt11getExtValueEv.exit.thread.i:    ; preds = %_ZNK4llvm6APSInt11getExtValueEv.exit.i, %bb.p
  %i.dc = phi i64 [ %i.cl, %_ZNK4llvm6APSInt11getExtValueEv.exit.i ], [ 0, %bb.p ] ; 4 uses
  %i.dd = add i32 %i.bn, %i.bm
  %i.de = zext i32 %i.dd to i64
  %.not.i = icmp samesign ult i64 %i.dc, %i.de
  call void @llvm.assume(i1 %.not.i)
  %i.df = zext i32 %i.bm to i64
  %.not21.i = icmp samesign ult i64 %i.dc, %i.df
  br i1 %.not21.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm6APSInt11getExtValueEv.exit.thread.i
  %i.dg = trunc nuw i64 %i.dc to i32
  %i.dh = sub nuw i32 %i.dg, %i.bm
  %i.di = load ptr, ptr %i.bg, align 8, !tbaa !937
  %i.dj = zext i32 %i.dh to i64
  %i.dk = getelementptr inbounds nuw [56 x i8], ptr %i.di, i64 %i.dj
  %i.dl = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %i.dk) #24 ; 0 uses
  br label %_ZN5clang18OptionalDiagnosticlsIjEERS0_RKT_.exit.i

bb.v:                                             ; preds = %_ZNK4llvm6APSInt11getExtValueEv.exit.thread.i
  %i.dm = load ptr, ptr %i.bh, align 8, !tbaa !937
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %i.dm, i64 %i.dc
  %i.do = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %i.dn) #24 ; 0 uses
  br label %_ZN5clang18OptionalDiagnosticlsIjEERS0_RKT_.exit.i

_ZN5clang18OptionalDiagnosticlsIjEERS0_RKT_.exit.i: ; preds = %bb.v, %bb.u, %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i, %bb.s
  %i.dp = phi i1 [ true, %bb.u ], [ true, %bb.v ], [ false, %bb.s ], [ false, %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i ]
  %i.dq = load i32, ptr %i.bc, align 8, !tbaa !519
  %i.dr = icmp ugt i32 %i.dq, 64
  br i1 %i.dr, label %bb.w, label %_ZL19handleVectorShuffleRN12_GLOBAL__N_18EvalInfoEPKN5clang17ShuffleVectorExprENS2_8QualTypeERKNS2_7APValueES9_jRS7_.exit

bb.w:                                             ; preds = %_ZN5clang18OptionalDiagnosticlsIjEERS0_RKT_.exit.i
  %i.ds = load ptr, ptr %3, align 8, !tbaa !508   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZL19handleVectorShuffleRN12_GLOBAL__N_18EvalInfoEPKN5clang17ShuffleVectorExprENS2_8QualTypeERKNS2_7APValueES9_jRS7_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ds) #26
  br label %_ZL19handleVectorShuffleRN12_GLOBAL__N_18EvalInfoEPKN5clang17ShuffleVectorExprENS2_8QualTypeERKNS2_7APValueES9_jRS7_.exit

_ZL19handleVectorShuffleRN12_GLOBAL__N_18EvalInfoEPKN5clang17ShuffleVectorExprENS2_8QualTypeERKNS2_7APValueES9_jRS7_.exit: ; preds = %_ZN5clang18OptionalDiagnosticlsIjEERS0_RKT_.exit.i, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.dp, label %bb.y, label %.critedge

bb.y:                                             ; preds = %_ZL19handleVectorShuffleRN12_GLOBAL__N_18EvalInfoEPKN5clang17ShuffleVectorExprENS2_8QualTypeERKNS2_7APValueES9_jRS7_.exit
  %i.du = load i32, ptr %i.av, align 8, !tbaa !605 ; 2 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %i.dx = load i32, ptr %i.aw, align 4, !tbaa !604
  %.not.i.i.not.i = icmp ult i32 %i.du, %i.dx
  %.pre3.i = load ptr, ptr %6, align 8, !tbaa !603 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit, label %bb.z, !prof !681

bb.z:                                             ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw [56 x i8], ptr %.pre3.i, i64 %i.dv
  %i.dz = icmp uge ptr %7, %.pre3.i
  %i.ea = icmp ult ptr %7, %i.dy
  %spec.select.i.i.i.i.i = and i1 %i.dz, %i.ea
  br i1 %spec.select.i.i.i.i.i, label %bb.aa, label %.critedge.i.i.i, !prof !869

bb.aa:                                            ; preds = %bb.z
  %i.eb = ptrtoint ptr %.pre3.i to i64
  %i.ec = sub i64 %i.bi, %i.eb
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.dw)
  %i.ed = load ptr, ptr %6, align 8, !tbaa !603   ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.ec
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit

.critedge.i.i.i:                                  ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.dw)
  %.pre.i28 = load ptr, ptr %6, align 8, !tbaa !603
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit: ; preds = %bb.y, %bb.aa, %.critedge.i.i.i
  %i.ef = phi ptr [ %.pre3.i, %bb.y ], [ %i.ed, %bb.aa ], [ %.pre.i28, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %7, %bb.y ], [ %i.ee, %bb.aa ], [ %7, %.critedge.i.i.i ]
  %i.eg = load i32, ptr %i.av, align 8, !tbaa !605
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [56 x i8], ptr %i.ef, i64 %i.eh
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ei, ptr noundef nonnull align 8 dereferenceable(56) %.016.i.i.i) #24
  %i.ej = load i32, ptr %i.av, align 8, !tbaa !605
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.av, align 8, !tbaa !605
  %i.el = load i32, ptr %7, align 8, !tbaa !631
  %switch.i = icmp ult i32 %i.el, 2
  br i1 %switch.i, label %_ZN5clang7APValueD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #24
  br label %_ZN5clang7APValueD2Ev.exit

_ZN5clang7APValueD2Ev.exit:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE9push_backEOS2_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ax
  br i1 %exitcond.not, label %.critedge25, label %bb.k, !llvm.loop !2429

.critedge:                                        ; preds = %_ZL19handleVectorShuffleRN12_GLOBAL__N_18EvalInfoEPKN5clang17ShuffleVectorExprENS2_8QualTypeERKNS2_7APValueES9_jRS7_.exit
  %i.em = load i32, ptr %7, align 8, !tbaa !631
  %switch.i29 = icmp ult i32 %i.em, 2
  br i1 %switch.i29, label %_ZN5clang7APValueD2Ev.exit30, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #24
  br label %_ZN5clang7APValueD2Ev.exit30

_ZN5clang7APValueD2Ev.exit30:                     ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ag

.critedge25:                                      ; preds = %_ZN5clang7APValueD2Ev.exit, %_ZNK5clang4Type6castAsINS_10VectorTypeEEEPKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.en = load ptr, ptr %6, align 8, !tbaa !603
  %i.eo = load i32, ptr %i.av, align 8, !tbaa !605 ; 3 uses
  %i.ep = zext i32 %i.eo to i64                   ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 4
  %i.es = and i8 %i.er, -2
  store i8 %i.es, ptr %i.eq, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  store i32 8, ptr %8, align 8, !tbaa !631
  %i.eu = mul nuw nsw i64 %i.ep, 56
  %i.ev = add nuw nsw i64 %i.eu, 8
  %i.ew = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ev) #30 ; 2 uses
  store i64 %i.ep, ptr %i.ew, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 5 uses
  %i.ey = icmp eq i32 %i.eo, 0
  br i1 %i.ey, label %_ZN5clang7APValue15setVectorUninitEj.exit.thread.i.i, label %bb.ad

_ZN5clang7APValue15setVectorUninitEj.exit.thread.i.i: ; preds = %.critedge25
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !937
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.ez, align 8, !tbaa !958
  br label %_ZN5clang7APValueC2EPKS0_j.exit

bb.ad:                                            ; preds = %.critedge25
  %i.fa = getelementptr inbounds nuw [56 x i8], ptr %i.ex, i64 %i.ep
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %i.fb = phi ptr [ %i.ex, %bb.ad ], [ %i.ff, %bb.ae ] ; 3 uses
  store i32 0, ptr %i.fb, align 8, !tbaa !631
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 4
  %i.fe = and i8 %i.fd, -2
  store i8 %i.fe, ptr %i.fc, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 56 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.fa
  br i1 %i.fg, label %.lr.ph.preheader.i.i, label %bb.ae

.lr.ph.preheader.i.i:                             ; preds = %bb.ae
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !937
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.eo, ptr %i.fh, align 8, !tbaa !958
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [56 x i8], ptr %i.en, i64 %indvars.iv.i.i
  %i.fj = getelementptr inbounds nuw [56 x i8], ptr %i.ex, i64 %indvars.iv.i.i
  %i.fk = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.fj, ptr noundef nonnull align 8 dereferenceable(56) %i.fi) #24 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i31 = icmp eq i64 %indvars.iv.next.i.i, %i.ep
  br i1 %.not.i.i31, label %_ZN5clang7APValueC2EPKS0_j.exit, label %.lr.ph.i.i, !llvm.loop !38

_ZN5clang7APValueC2EPKS0_j.exit:                  ; preds = %.lr.ph.i.i, %_ZN5clang7APValue15setVectorUninitEj.exit.thread.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val26 = load ptr, ptr %i.fl, align 8, !tbaa !1216
  %i.fm = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %.val26, ptr noundef nonnull align 8 dereferenceable(56) %8) #24 ; 0 uses
  %i.fn = load i32, ptr %8, align 8, !tbaa !631
  %switch.i32 = icmp ult i32 %i.fn, 2
  br i1 %switch.i32, label %_ZN5clang7APValueD2Ev.exit33, label %bb.af

bb.af:                                            ; preds = %_ZN5clang7APValueC2EPKS0_j.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %8) #24
  br label %_ZN5clang7APValueD2Ev.exit33

_ZN5clang7APValueD2Ev.exit33:                     ; preds = %_ZN5clang7APValueC2EPKS0_j.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5clang7APValueD2Ev.exit30, %_ZN5clang7APValueD2Ev.exit33
  %.not43 = phi i1 [ false, %_ZN5clang7APValueD2Ev.exit30 ], [ true, %_ZN5clang7APValueD2Ev.exit33 ]
  %i.fo = load ptr, ptr %6, align 8, !tbaa !603   ; 3 uses
  %i.fp = load i32, ptr %i.av, align 8, !tbaa !605 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7APValueELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.ag
  %i.fq = zext i32 %i.fp to i64
  %.idx.i = mul nuw nsw i64 %i.fq, 56
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx.i
  br label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %_ZN5clang7APValueD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.fs, %_ZN5clang7APValueD2Ev.exit.i.i ], [ %i.fr, %.lr.ph.i.preheader.i ]
  %i.fs = getelementptr inbounds i8, ptr %.05.i.i, i64 -56 ; 4 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !631
  %switch.i.i.i35 = icmp ult i32 %i.ft, 2
  br i1 %switch.i.i.i35, label %_ZN5clang7APValueD2Ev.exit.i.i, label %bb.ah

end_hunk_0
