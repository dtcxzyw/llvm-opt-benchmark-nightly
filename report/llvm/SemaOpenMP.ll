Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK5clang10SemaOpenMP21isOpenMPCapturedByRefEPKNS_9ValueDeclEjj:bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.ct = load i8, ptr %i.cs, align 2
  %i.cu = trunc i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i44 = load i64, ptr %i.cv, align 8
  %i.cw = icmp ugt i64 %.0.copyload.i.i.i.i.i.i44, 7
  %i.cx = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %i.cx, label %_ZNK5clang4Type12isScalarTypeEv.exit._ZNK5clang4Type12isScalarTypeEv.exit.thread_crit_edge, label %.thread.sink.split

_ZNK5clang4Type12isScalarTypeEv.exit._ZNK5clang4Type12isScalarTypeEv.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type12isScalarTypeEv.exit
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !59
  br label %_ZNK5clang4Type12isScalarTypeEv.exit.thread

_ZNK5clang4Type12isScalarTypeEv.exit.thread:      ; preds = %_ZNK5clang4Type12isScalarTypeEv.exit._ZNK5clang4Type12isScalarTypeEv.exit.thread_crit_edge, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %.split
  %i.cy = phi ptr [ %.pre, %_ZNK5clang4Type12isScalarTypeEv.exit._ZNK5clang4Type12isScalarTypeEv.exit.thread_crit_edge ], [ %i.bq, %bb.l ], [ %i.bq, %bb.l ], [ %i.bq, %bb.l ], [ %i.bq, %bb.l ], [ %i.bq, %bb.l ], [ %i.bq, %bb.l ], [ %i.bq, %bb.l ], [ %i.bq, %.split ] ; 2 uses
  %i.cz = call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang8SemaBase11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %.val29 = load i64, ptr %i.da, align 8
  %i.db = call fastcc noundef i32 @_ZL27getVariableCategoryFromDeclRKN5clang11LangOptionsEPKNS_9ValueDeclE(i64 %.val29, ptr noundef %i.h) ; 2 uses
  %i.dc = and i32 %i.db, 1
  %or.cond.i45 = icmp eq i32 %i.dc, 0
  br i1 %or.cond.i45, label %bb.m, label %.thread.sink.split

bb.m:                                             ; preds = %_ZNK5clang4Type12isScalarTypeEv.exit.thread
  %i.dd = getelementptr i8, ptr %i.cy, i64 688
  %.val31 = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.de = getelementptr i8, ptr %i.cy, i64 680
  %.val30 = load ptr, ptr %i.de, align 8, !tbaa !49
  %i.df = zext i32 %.val31 to i64
  %i.dg = getelementptr inbounds nuw [6968 x i8], ptr %.val30, i64 %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -6968
  %.val2.i.i.i.i = load ptr, ptr %i.dh, align 8, !tbaa !49
  %i.di = getelementptr inbounds nuw [1736 x i8], ptr %.val2.i.i.i.i, i64 %i.y
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 984
  %i.dk = zext nneg i32 %i.db to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !175
  switch i32 %i.dm, label %_ZNK12_GLOBAL__N_110DSAStackTy25isDefaultmapCapturedByRefEjN5clang26OpenMPDefaultmapClauseKindE.exit [
    i32 12, label %.thread.sink.split
    i32 8, label %.thread.sink.split
    i32 7, label %.thread.sink.split
    i32 6, label %.thread.sink.split
    i32 5, label %.thread.sink.split
    i32 13, label %.thread.sink.split
  ]

_ZNK12_GLOBAL__N_110DSAStackTy25isDefaultmapCapturedByRefEjN5clang26OpenMPDefaultmapClauseKindE.exit: ; preds = %bb.m
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !59  ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 688 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i47 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i47, label %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy25isDefaultmapCapturedByRefEjN5clang26OpenMPDefaultmapClauseKindE.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 680 ; 2 uses
  %.val2.i.i.i48 = load ptr, ptr %i.dq, align 8, !tbaa !49
  %i.dr = zext i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i48, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 672
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !14
  %.not.i.i.i49 = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i.i.i49, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i51, label %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i51: ; preds = %bb.n
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 -6960
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !50 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 28616
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !57 ; 2 uses
  %.not.i.i52 = icmp ugt i32 %i.dy, %i.ea
  %narrow.i.i53 = sub nuw i32 %i.dy, %i.ea
  %.not.i54 = icmp ugt i32 %narrow.i.i53, %2
  %or.cond.i55 = select i1 %.not.i.i52, i1 %.not.i54, i1 false
  br i1 %or.cond.i55, label %bb.o, label %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread

bb.o:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i51
  %i.eb = call fastcc noundef ptr @_ZL16getCanonicalDeclPKN5clang9ValueDeclE(ptr noundef %i.h) ; 2 uses
  %.val.i = load ptr, ptr %i.dq, align 8, !tbaa !49
  %.val14.i = load i32, ptr %i.do, align 8, !tbaa !50
  %i.ec = zext i32 %.val14.i to i64
  %i.ed = getelementptr inbounds nuw [6968 x i8], ptr %.val.i, i64 %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -6968
  %.val2.i.i21.i = load ptr, ptr %i.ee, align 8, !tbaa !49
  %i.ef = getelementptr inbounds nuw [1736 x i8], ptr %.val2.i.i21.i, i64 %i.y ; 5 uses
  %i.eg = load i32, ptr %i.ef, align 8, !noalias !178
  %i.eh = and i32 %i.eg, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.eh, 0        ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !178
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !178
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.en = load i32, ptr %i.em, align 8, !noalias !178
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 328
  %.sink2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.ej, ptr %i.ei ; 3 uses
  %.sink1.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.el, ptr %i.eo ; 2 uses
  %.sink.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.en, i32 8 ; 4 uses
  %i.ep = icmp eq i32 %.sink.i.i.i.i.i.i, 0
  br i1 %i.ep, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = add i32 %.sink.i.i.i.i.i.i, -1          ; 2 uses
  %i.er = ptrtoint ptr %i.eb to i64
  %i.es = mul i64 %i.er, -4658895280553007687     ; 2 uses
  %i.et = lshr i64 %i.es, 31
  %i.eu = xor i64 %i.et, %i.es
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = and i32 %i.eq, %i.ev                    ; 3 uses
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %i.ey = lshr i64 %i.ex, 5
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !187, !noalias !188
  %i.fb = and i32 %i.ew, 31
  %i.fc = lshr i32 %i.fa, %i.fb
  %i.fd = trunc i32 %i.fc to i1
  br i1 %i.fd, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !189

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %bb.q
  %i.fe = phi i64 [ %i.fk, %bb.q ], [ %i.ex, %bb.p ]
  %.03.i.i.i.i = phi i32 [ %i.fj, %bb.q ], [ %i.ew, %bb.p ]
  %i.ff = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.fe ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !190, !noalias !188
  %i.fh = icmp eq ptr %i.eb, %i.fg
  br i1 %i.fh, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i, label %bb.q, !prof !191

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fi = add nuw i32 %.03.i.i.i.i, 1
  %i.fj = and i32 %i.fi, %i.eq                    ; 3 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = lshr i64 %i.fk, 5
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !187, !noalias !188
  %i.fo = and i32 %i.fj, 31
  %i.fp = lshr i32 %i.fn, %i.fo
  %i.fq = trunc i32 %i.fp to i1
  br i1 %i.fq, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !192

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.p, %bb.o
  %i.fr = zext i32 %.sink.i.i.i.i.i.i to i64      ; 2 uses
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.fr
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %.sink.i.i.i.i.i.i to i64
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i ], [ %i.fr, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ff, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i ], [ %i.fs, %.loopexit.i.i.i ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %.pre-phi.i
  %.not45.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.ft
  br i1 %.not45.i, label %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.fu, align 8
  %.not13.i = icmp ult i64 %.0.copyload.i.i.i.i, 4
  br i1 %.not13.i, label %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !193
  %i.fx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 32
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !198, !range !168, !noundef !12
  %i.fz = trunc nuw i8 %i.fy to i1
  %i.ga = icmp ne i32 %i.fw, 102
  %.not266 = or i1 %i.ga, %i.fz
  br i1 %.not266, label %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread, label %.thread.sink.split

_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i, %bb.r, %bb.s, %_ZNK12_GLOBAL__N_110DSAStackTy25isDefaultmapCapturedByRefEjN5clang26OpenMPDefaultmapClauseKindE.exit, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i51, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.critedge.thread

_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit: ; preds = %bb.h
  %i.gb = and i64 %.sroa.0211.0, -16
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = load ptr, ptr %i.gc, align 16, !tbaa !159
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.0.0.copyload.i.i.i.i39 = load i64, ptr %i.ge, align 8, !tbaa !104
  %i.gf = and i64 %.sroa.0.0.copyload.i.i.i.i39, -16
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load ptr, ptr %i.gg, align 16, !tbaa !159
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load i8, ptr %i.gi, align 16
  %i.gk = icmp eq i8 %i.gj, 40
  %i.gl = load i8, ptr %i.b, align 1, !range !168
  %i.gm = trunc nuw i8 %i.gl to i1
  %.not336 = select i1 %i.gk, i1 %i.gm, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br i1 %.not336, label %.critedge.thread, label %.thread

.thread.sink.split:                               ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %_ZNK5clang4Type12isScalarTypeEv.exit.thread, %bb.l, %.split, %_ZNK5clang4Type12isScalarTypeEv.exit, %bb.h, %bb.j, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i, %bb.a, %_ZNK12_GLOBAL__N_110DSAStackTy20hasExplicitDirectiveEN4llvm12function_refIFbNS1_3omp9DirectiveEEEEj.exit, %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit
  %.sroa.0211.1240 = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i ], [ %.sroa.0.0.copyload.i, %bb.a ], [ %.sroa.0.0.copyload.i, %_ZNK12_GLOBAL__N_110DSAStackTy20hasExplicitDirectiveEN4llvm12function_refIFbNS1_3omp9DirectiveEEEEj.exit ], [ %.sroa.0211.0, %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit ], [ %.sroa.0211.0, %.thread.sink.split ] ; 7 uses
  %i.gn = and i64 %.sroa.0211.1240, -16
  %i.go = inttoptr i64 %i.gn to ptr               ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 16, !tbaa !159 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i8, ptr %i.gq, align 16
  %i.gs = and i8 %i.gr, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i57 = icmp eq i8 %i.gs, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i57, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i58 = load i64, ptr %i.gt, align 8, !tbaa !104
  %i.gu = and i64 %.sroa.0.0.copyload.i.i.i.i.i58, -16
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = load ptr, ptr %i.gv, align 16, !tbaa !159
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load i8, ptr %i.gx, align 16
  %i.gz = and i8 %i.gy, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.gz, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.t
  %i.ha = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gp) #36 ; 2 uses
  %.not.i59 = icmp eq ptr %i.ha, null
  br i1 %.not.i59, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %.thread
  %.1.i8.i = phi ptr [ %i.ha, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.gp, %.thread ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.hc = load i24, ptr %i.hb, align 16
  %i.hd = and i24 %i.hc, 1048576
  %.not4.i.i = icmp eq i24 %i.hd, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.he, align 8
  %i.hf = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.hg = inttoptr i64 %i.hf to ptr
  %i.hh = load ptr, ptr %i.hg, align 16, !tbaa !159 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load i8, ptr %i.hi, align 16
  %i.hk = and i8 %i.hj, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.hk, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.hl = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hh) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.u, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.hl, %bb.u ], [ %i.hh, %.lr.ph.i.i ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.hn = load i24, ptr %i.hm, align 16
  %i.ho = and i24 %i.hn, 1048576
  %.not.i.i60 = icmp eq i24 %i.ho, 0
  br i1 %.not.i.i60, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !162

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.hp, align 8, !tbaa !104
  %.pre297 = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, -16
  %.pre298 = inttoptr i64 %.pre297 to ptr
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.t, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.pre-phi299 = phi ptr [ %i.go, %bb.t ], [ %i.go, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.pre298, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ]
  %i.hq = load ptr, ptr %.pre-phi299, align 8, !tbaa !159
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %.sroa.0.0.copyload.i.i.i.i62 = load i64, ptr %i.hr, align 8, !tbaa !104
  %i.hs = and i64 %.sroa.0.0.copyload.i.i.i.i62, -16
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load ptr, ptr %i.ht, align 16, !tbaa !159 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %i.hw = load i8, ptr %i.hv, align 16            ; 3 uses
  %i.hx = icmp ne i8 %i.hw, 13
  %.not.not24.i63 = icmp eq ptr %i.hu, null       ; 2 uses
  %.not.not.i64 = or i1 %.not.not24.i63, %i.hx
  br i1 %.not.not.i64, label %bb.v, label %.split249

.split249:                                        ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.hy = load i32, ptr %i.hv, align 16
  %i.hz = lshr i32 %i.hy, 19
  %i.ia = and i32 %i.hz, 1023
  %i.ib = add nsw i32 %i.ia, -453
  %spec.select.i65 = icmp ult i32 %i.ib, 53
  br i1 %spec.select.i65, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread, label %.critedge2

bb.v:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.ic = icmp ne i8 %i.hw, 47
  %.not12.not.i67 = or i1 %.not.not24.i63, %i.ic
  br i1 %.not12.not.i67, label %bb.w, label %_ZNK5clang4Type12isScalarTypeEv.exit71

bb.w:                                             ; preds = %bb.v
  switch i8 %i.hw, label %.critedge2 [
    i8 40, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
    i8 11, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
    i8 30, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
    i8 14, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
    i8 31, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
    i8 35, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
    i8 10, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
  ]

_ZNK5clang4Type12isScalarTypeEv.exit71:           ; preds = %bb.v
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !169 ; 2 uses
  %i.if = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ie) #36 ; 2 uses
  %.not.not.i.i68 = icmp eq ptr %i.if, null
  %..i.i69 = select i1 %.not.not.i.i68, ptr %i.ie, ptr %i.if ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %..i.i69, i64 74
  %i.ih = load i8, ptr %i.ig, align 2
  %i.ii = trunc i8 %i.ih to i1
  %i.ij = getelementptr inbounds nuw i8, ptr %..i.i69, i64 128
  %.0.copyload.i.i.i.i.i.i70 = load i64, ptr %i.ij, align 8
  %i.ik = icmp ugt i64 %.0.copyload.i.i.i.i.i.i70, 7
  %i.il = select i1 %i.ii, i1 true, i1 %i.ik
  br i1 %i.il, label %_ZNK5clang4Type12isScalarTypeEv.exit71.thread, label %.critedge2

_ZNK5clang4Type12isScalarTypeEv.exit71.thread:    ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %.split249, %_ZNK5clang4Type12isScalarTypeEv.exit71
  %i.im = load i8, ptr %i.a, align 1, !tbaa !105, !range !168, !noundef !12
  %i.in = trunc nuw i8 %i.im to i1
  %.pre295 = load ptr, ptr %i.j, align 8, !tbaa !59 ; 3 uses
  br i1 %i.in, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
  %i.io = getelementptr i8, ptr %.pre295, i64 680
  %.val32 = load ptr, ptr %i.io, align 8, !tbaa !49
  %i.ip = getelementptr i8, ptr %.pre295, i64 688
  %.val33 = load i32, ptr %i.ip, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.iq, ptr %4, align 8, !tbaa !49
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ir, align 8, !tbaa !50
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.is, align 4, !tbaa !51
  %i.it = zext i32 %.val33 to i64
  %i.iu = getelementptr inbounds nuw [6968 x i8], ptr %.val32, i64 %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -6968
  %i.iw = zext i32 %2 to i64
  %.val2.i.i.i.i72 = load ptr, ptr %i.iv, align 8, !tbaa !49
  %i.ix = getelementptr inbounds nuw [1736 x i8], ptr %.val2.i.i.i.i72, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1024
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !106
  call void @_ZN5clang23getOpenMPCaptureRegionsERN4llvm15SmallVectorImplINS0_3omp9DirectiveEEES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.iz) #36
  %i.ja = zext i32 %3 to i64
  %i.jb = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.ja
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !199
  %i.je = icmp eq ptr %i.jb, %i.iq
  br i1 %i.je, label %_ZNK12_GLOBAL__N_110DSAStackTy16getCaptureRegionEjj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.jb) #36
  br label %_ZNK12_GLOBAL__N_110DSAStackTy16getCaptureRegionEjj.exit

_ZNK12_GLOBAL__N_110DSAStackTy16getCaptureRegionEjj.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.jf = icmp eq i32 %i.jd, 69
  br i1 %i.jf, label %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEjPKN5clang4DeclE.exit.thread, label %_ZNK12_GLOBAL__N_110DSAStackTy16getCaptureRegionEjj.exit._crit_edge

_ZNK12_GLOBAL__N_110DSAStackTy16getCaptureRegionEjj.exit._crit_edge: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy16getCaptureRegionEjj.exit
  %.pre294 = load ptr, ptr %i.j, align 8, !tbaa !59
  br label %bb.z

bb.z:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy16getCaptureRegionEjj.exit._crit_edge, %_ZNK5clang4Type12isScalarTypeEv.exit71.thread
  %i.jg = phi ptr [ %.pre294, %_ZNK12_GLOBAL__N_110DSAStackTy16getCaptureRegionEjj.exit._crit_edge ], [ %.pre295, %_ZNK5clang4Type12isScalarTypeEv.exit71.thread ] ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 688 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i73 = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i.i.i73, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i102, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 680 ; 2 uses
  %.val2.i.i.i74 = load ptr, ptr %i.jj, align 8, !tbaa !49
  %i.jk = zext i32 %i.ji to i64
  %i.jl = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i74, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !81
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 672
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !14
  %.not.i.i.i75 = icmp eq ptr %i.jn, %i.jp
  br i1 %.not.i.i.i75, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i77, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i102

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i77: ; preds = %bb.aa
  %i.jq = getelementptr inbounds i8, ptr %i.jl, i64 -6960
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !50 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 28616
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !57 ; 2 uses
  %.not.i.i78 = icmp ugt i32 %i.jr, %i.jt
  %narrow.i.i79 = sub nuw i32 %i.jr, %i.jt
  %.not.i80 = icmp ugt i32 %narrow.i.i79, %2
  %or.cond.i81 = select i1 %.not.i.i78, i1 %.not.i80, i1 false
  br i1 %or.cond.i81, label %bb.ab, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i102

bb.ab:                                            ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i77
  %i.ju = zext i32 %2 to i64
end_hunk_0
begin_hunk_1_@_ZNK5clang10SemaOpenMP21isOpenMPCapturedByRefEPKNS_9ValueDeclEjj:bb.a
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i156

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i156: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i178, %.loopexit.i.i.i155
  %.pre-phi.i157 = phi i64 [ %.pre.i179, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i178 ], [ %i.rt, %.loopexit.i.i.i155 ]
  %.lcssa.sink.i.i.i158 = phi ptr [ %i.rh, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i178 ], [ %i.ru, %.loopexit.i.i.i155 ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i.i.i.i152, i64 %.pre-phi.i157
  %.not45.i159 = icmp eq ptr %.lcssa.sink.i.i.i158, %i.rv
  br i1 %.not45.i159, label %.critedge.i162, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i156
  %i.rw = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i158, i64 16
  %.0.copyload.i.i.i.i160 = load i64, ptr %i.rw, align 8
  %.not13.i161 = icmp ult i64 %.0.copyload.i.i.i.i160, 4
  br i1 %.not13.i161, label %.critedge.i162, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.rx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i158, i64 8
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !193
  %.not269 = icmp eq i32 %i.ry, 127
  br i1 %.not269, label %.critedge.i162, label %.critedge2

.critedge.i162:                                   ; preds = %bb.as, %bb.ar, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy7DSAInfoELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.i156
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qh, i64 760
  %i.sa = load i32, ptr %i.rz, align 8, !noalias !240
  %i.sb = and i32 %i.sa, 1
  %.not.i.i.i.i.i24.i163 = icmp eq i32 %i.sb, 0   ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qh, i64 768 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !noalias !240
  %i.se = getelementptr inbounds nuw i8, ptr %i.qh, i64 776
  %i.sf = load ptr, ptr %i.se, align 8, !noalias !240
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qh, i64 784
  %i.sh = load i32, ptr %i.sg, align 8, !noalias !240
  %i.si = getelementptr inbounds nuw i8, ptr %i.qh, i64 960
  %.sink2.i.i.i.i.i25.i164 = select i1 %.not.i.i.i.i.i24.i163, ptr %i.sd, ptr %i.sc ; 3 uses
  %.sink1.i.i.i.i.i26.i165 = select i1 %.not.i.i.i.i.i24.i163, ptr %i.sf, ptr %i.si ; 2 uses
  %.sink.i.i.i.i.i27.i166 = select i1 %.not.i.i.i.i.i24.i163, i32 %i.sh, i32 8 ; 4 uses
  %i.sj = icmp eq i32 %.sink.i.i.i.i.i27.i166, 0
  br i1 %i.sj, label %.loopexit.i.i28.i167, label %bb.at

bb.at:                                            ; preds = %.critedge.i162
  %i.sk = add i32 %.sink.i.i.i.i.i27.i166, -1     ; 2 uses
  %i.sl = ptrtoint ptr %i.qd to i64
  %i.sm = mul i64 %i.sl, -4658895280553007687     ; 2 uses
  %i.sn = lshr i64 %i.sm, 31
  %i.so = xor i64 %i.sn, %i.sm
  %i.sp = trunc i64 %i.so to i32
  %i.sq = and i32 %i.sk, %i.sp                    ; 3 uses
  %i.sr = zext i32 %i.sq to i64                   ; 2 uses
  %i.ss = lshr i64 %i.sr, 5
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i26.i165, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !187, !noalias !249
  %i.sv = and i32 %i.sq, 31
  %i.sw = lshr i32 %i.su, %i.sv
  %i.sx = trunc i32 %i.sw to i1
  br i1 %i.sx, label %.lr.ph.i.i.i31.i172, label %.loopexit.i.i28.i167, !prof !189

.lr.ph.i.i.i31.i172:                              ; preds = %bb.at, %bb.au
  %i.sy = phi i64 [ %i.te, %bb.au ], [ %i.sr, %bb.at ]
  %.017.i.i.i.i173 = phi i32 [ %i.td, %bb.au ], [ %i.sq, %bb.at ]
  %i.sz = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i25.i164, i64 %i.sy ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !190, !noalias !249
  %i.tb = icmp eq ptr %i.qd, %i.ta
  br i1 %i.tb, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i174, label %bb.au, !prof !191

bb.au:                                            ; preds = %.lr.ph.i.i.i31.i172
  %i.tc = add nuw i32 %.017.i.i.i.i173, 1
  %i.td = and i32 %i.tc, %i.sk                    ; 3 uses
  %i.te = zext i32 %i.td to i64                   ; 2 uses
  %i.tf = lshr i64 %i.te, 5
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i26.i165, i64 %i.tf
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !187, !noalias !249
  %i.ti = and i32 %i.td, 31
  %i.tj = lshr i32 %i.th, %i.ti
  %i.tk = trunc i32 %i.tj to i1
  br i1 %i.tk, label %.lr.ph.i.i.i31.i172, label %.loopexit.i.i28.i167, !prof !192

.loopexit.i.i28.i167:                             ; preds = %bb.au, %bb.at, %.critedge.i162
  %i.tl = zext i32 %.sink.i.i.i.i.i27.i166 to i64 ; 2 uses
  %i.tm = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i25.i164, i64 %i.tl
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i174: ; preds = %.lr.ph.i.i.i31.i172
  %.pre54.i175 = zext i32 %.sink.i.i.i.i.i27.i166 to i64
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i174, %.loopexit.i.i28.i167
  %.pre-phi55.i169 = phi i64 [ %.pre54.i175, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i174 ], [ %i.tl, %.loopexit.i.i28.i167 ]
  %.lcssa.sink.i.i29.i170 = phi ptr [ %i.sz, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i174 ], [ %i.tm, %.loopexit.i.i28.i167 ]
  %i.tn = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i25.i164, i64 %.pre-phi55.i169
  %.not47.i171 = icmp eq ptr %.lcssa.sink.i.i29.i170, %i.tn
  br i1 %.not47.i171, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168._crit_edge, label %.critedge2

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168._crit_edge: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168
  %.pre296 = load ptr, ptr %i.j, align 8, !tbaa !59
  br label %bb.av

bb.av:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168._crit_edge, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i143
  %i.to = phi ptr [ %.pre296, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168._crit_edge ], [ %i.ow, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i143 ] ; 2 uses
  %i.tp = call fastcc noundef ptr @_ZL16getCanonicalDeclPKN5clang9ValueDeclE(ptr noundef %i.h) ; 2 uses
  %i.tq = add i32 %2, 1                           ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 680
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 688
  %i.tt = ptrtoint ptr %i.tp to i64
  %i.tu = mul i64 %i.tt, -4658895280553007687     ; 2 uses
  %i.tv = lshr i64 %i.tu, 31
  %i.tw = xor i64 %i.tv, %i.tu
  %i.tx = trunc i64 %i.tw to i32
  %.not.i182349 = icmp eq i32 %i.tq, 0
  br i1 %.not.i182349, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av
  %i.ty = zext i32 %i.tq to i64
  %.val.i183 = load ptr, ptr %i.tr, align 8, !tbaa !49
  %.val11.i = load i32, ptr %i.ts, align 8, !tbaa !50
  %i.tz = zext i32 %.val11.i to i64
  %i.ua = getelementptr inbounds nuw [6968 x i8], ptr %.val.i183, i64 %i.tz
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -6968
  %.val2.i.i.i184 = load ptr, ptr %i.ub, align 8, !tbaa !49
  br label %bb.aw

.critedge.i181:                                   ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i190
  %.not.i182 = icmp eq i64 %i.uc, 0
  br i1 %.not.i182, label %.critedge.thread, label %bb.aw, !llvm.loop !250

bb.aw:                                            ; preds = %.lr.ph, %.critedge.i181
  %indvars.iv.i350 = phi i64 [ %i.ty, %.lr.ph ], [ %i.uc, %.critedge.i181 ]
  %i.uc = add nsw i64 %indvars.iv.i350, -1        ; 3 uses
  %i.ud = getelementptr inbounds nuw [1736 x i8], ptr %.val2.i.i.i184, i64 %i.uc ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 760
  %i.uf = load i32, ptr %i.ue, align 8, !noalias !251
  %i.ug = and i32 %i.uf, 1
  %.not.i.i.i.i.i.i185 = icmp eq i32 %i.ug, 0     ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 768 ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !noalias !251
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 776
  %i.uk = load ptr, ptr %i.uj, align 8, !noalias !251
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ud, i64 784
  %i.um = load i32, ptr %i.ul, align 8, !noalias !251
  %i.un = getelementptr inbounds nuw i8, ptr %i.ud, i64 960
  %.sink2.i.i.i.i.i.i186 = select i1 %.not.i.i.i.i.i.i185, ptr %i.ui, ptr %i.uh ; 3 uses
  %.sink1.i.i.i.i.i.i187 = select i1 %.not.i.i.i.i.i.i185, ptr %i.uk, ptr %i.un ; 2 uses
  %.sink.i.i.i.i.i.i188 = select i1 %.not.i.i.i.i.i.i185, i32 %i.um, i32 8 ; 4 uses
  %i.uo = icmp eq i32 %.sink.i.i.i.i.i.i188, 0
  br i1 %i.uo, label %.loopexit.i.i.i189, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.up = add i32 %.sink.i.i.i.i.i.i188, -1       ; 2 uses
  %i.uq = and i32 %i.up, %i.tx                    ; 3 uses
  %i.ur = zext i32 %i.uq to i64                   ; 2 uses
  %i.us = lshr i64 %i.ur, 5
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i187, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !187, !noalias !260
  %i.uv = and i32 %i.uq, 31
  %i.uw = lshr i32 %i.uu, %i.uv
  %i.ux = trunc i32 %i.uw to i1
  br i1 %i.ux, label %.lr.ph.i.i.i.i193, label %.loopexit.i.i.i189, !prof !189

.lr.ph.i.i.i.i193:                                ; preds = %bb.ax, %bb.ay
  %i.uy = phi i64 [ %i.ve, %bb.ay ], [ %i.ur, %bb.ax ]
  %.017.i.i.i.i194 = phi i32 [ %i.vd, %bb.ay ], [ %i.uq, %bb.ax ]
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i186, i64 %i.uy ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !190, !noalias !260
  %i.vb = icmp eq ptr %i.tp, %i.va
  br i1 %i.vb, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i195, label %bb.ay, !prof !191

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i193
  %i.vc = add nuw i32 %.017.i.i.i.i194, 1
  %i.vd = and i32 %i.vc, %i.up                    ; 3 uses
  %i.ve = zext i32 %i.vd to i64                   ; 2 uses
  %i.vf = lshr i64 %i.ve, 5
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i187, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !187, !noalias !260
  %i.vi = and i32 %i.vd, 31
  %i.vj = lshr i32 %i.vh, %i.vi
  %i.vk = trunc i32 %i.vj to i1
  br i1 %i.vk, label %.lr.ph.i.i.i.i193, label %.loopexit.i.i.i189, !prof !192

.loopexit.i.i.i189:                               ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.vl = zext i32 %.sink.i.i.i.i.i.i188 to i64   ; 2 uses
  %i.vm = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i186, i64 %i.vl
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i190

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i195: ; preds = %.lr.ph.i.i.i.i193
  %.pre.i196 = zext i32 %.sink.i.i.i.i.i.i188 to i64
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i190

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i190: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i195, %.loopexit.i.i.i189
  %.pre-phi.i191 = phi i64 [ %.pre.i196, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i195 ], [ %i.vl, %.loopexit.i.i.i189 ]
  %.lcssa.sink.i.i.i192 = phi ptr [ %i.uz, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.loopexit.i195 ], [ %i.vm, %.loopexit.i.i.i189 ] ; 2 uses
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i186, i64 %.pre-phi.i191
  %.not20.i = icmp eq ptr %.lcssa.sink.i.i.i192, %i.vn
  br i1 %.not20.i, label %.critedge.i181, label %.critedge, !llvm.loop !250

.critedge:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i190
  %i.vo = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i192, i64 8
  %.sroa.015.0.copyload.i = load i32, ptr %i.vo, align 8
  %.not = icmp eq i32 %.sroa.015.0.copyload.i, 0
  br i1 %.not, label %.critedge.thread, label %.critedge2

.critedge.thread:                                 ; preds = %.critedge.i181, %bb.av, %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i, %_ZNK5clang4Decl7hasAttrINS_20OMPCaptureNoInitAttrEEEbv.exit.thread255, %bb.af, %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit, %.critedge
  %.sroa.0211.1241263 = phi i64 [ %.sroa.0211.0, %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit.thread ], [ %.sroa.0211.1240, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i ], [ %.sroa.0211.1240, %_ZNK5clang4Decl7hasAttrINS_20OMPCaptureNoInitAttrEEEbv.exit.thread255 ], [ %.sroa.0211.1240, %bb.af ], [ %.sroa.0211.0, %_ZNK12_GLOBAL__N_110DSAStackTy14hasExplicitDSAEPKN5clang9ValueDeclEN4llvm12function_refIFbNS5_3omp6ClauseEbEEEjb.exit ], [ %.sroa.0211.1240, %.critedge ], [ %.sroa.0211.1240, %bb.av ], [ %.sroa.0211.1240, %.critedge.i181 ] ; 2 uses
  %i.vp = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i64 %.sroa.0211.1241263) #36
  %i.vq = call i64 @_ZNK5clang10ASTContext14getUIntPtrTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.d) #36
  %i.vr = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i64 %i.vq) #36
  %i.vs = icmp sgt i64 %i.vp, %i.vr
  br i1 %i.vs, label %.critedge4, label %bb.az

bb.az:                                            ; preds = %.critedge.thread
  %i.vt = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.vu = load i32, ptr %i.vt, align 4
  %i.vv = and i32 %i.vu, 127
  %i.vw = add nsw i32 %i.vv, -41
  %i.vx = icmp ult i32 %i.vw, 7
  %spec.select.i.i = select i1 %i.vx, ptr %i.h, ptr null
  %i.vy = call i64 @_ZNK5clang10ASTContext26getAlignOfGlobalVarInCharsENS_8QualTypeEPKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i64 %.sroa.0211.1241263, ptr noundef %spec.select.i.i) #36
  %i.vz = call i64 @_ZNK5clang10ASTContext14getUIntPtrTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.d) #36
  %i.wa = call i64 @_ZNK5clang10ASTContext19getTypeAlignInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i64 %i.vz) #36
  %i.wb = icmp sgt i64 %i.vy, %i.wa
  br i1 %i.wb, label %.critedge4, label %.critedge2

.critedge4:                                       ; preds = %.critedge.thread, %bb.az
  br label %.critedge2

.critedge2:                                       ; preds = %bb.an, %bb.w, %_ZNK5clang4Type12isScalarTypeEv.exit71, %.split249, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168, %bb.am, %_ZNK12_GLOBAL__N_110DSAStackTy13getDefaultDSAEv.exit138, %bb.as, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i134, %.critedge, %.critedge4, %bb.az
  %.3 = phi i1 [ false, %bb.az ], [ true, %.critedge4 ], [ true, %.critedge ], [ true, %bb.w ], [ true, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i134 ], [ true, %bb.as ], [ true, %_ZNK12_GLOBAL__N_110DSAStackTy13getDefaultDSAEv.exit138 ], [ true, %bb.am ], [ true, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclESt4pairIjPNS2_7VarDeclEELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E4findES5_.exit.i168 ], [ true, %.split249 ], [ true, %_ZNK5clang4Type12isScalarTypeEv.exit71 ], [ true, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i1 %.3
}

declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN5clang32isOpenMPTargetExecutionDirectiveEN4llvm3omp9DirectiveE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_110DSAStackTy45checkMappableExprComponentListsForDeclAtLevelEPKN5clang9ValueDeclEjN4llvm12function_refIFbNS5_8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS5_3omp6ClauseEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28840) %0, ptr noundef %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val2.i.i = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i, label %.critedge

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -6960
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28616
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp ugt i32 %i.k, %i.m
  %narrow.i = sub nuw i32 %i.k, %i.m
  %.not = icmp ugt i32 %narrow.i, %2
  %or.cond = select i1 %.not.i, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -6968
  %.val2.i.i24 = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw [1736 x i8], ptr %.val2.i.i24, i64 %i.n ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !261, !noalias !262 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 744
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !271, !noalias !262 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 756
  %i.v = load i32, ptr %i.u, align 4, !tbaa !272, !noalias !262 ; 4 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %i.v, -1                         ; 2 uses
  %i.y = ptrtoint ptr %1 to i64
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 31
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.x, %i.ac                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !187, !noalias !273
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !189

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %i.al = phi i64 [ %i.ar, %bb.e ], [ %i.ae, %bb.d ]
  %.03.i.i.i = phi i32 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ]
  %i.am = getelementptr inbounds nuw [1184 x i8], ptr %i.r, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !190, !noalias !273
  %i.ao = icmp eq ptr %1, %i.an
  br i1 %i.ao, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit, label %bb.e, !prof !191

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = add nuw i32 %.03.i.i.i, 1
  %i.aq = and i32 %i.ap, %i.x                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !187, !noalias !273
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !192

.loopexit.i.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %i.ay = zext i32 %i.v to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw [1184 x i8], ptr %i.r, i64 %i.ay
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.v to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit ], [ %i.ay, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.am, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit ], [ %i.az, %.loopexit.i.i ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [1184 x i8], ptr %i.r, i64 %.pre-phi
  %.not31 = icmp eq ptr %.lcssa.sink.i.i, %i.ba
  br i1 %.not31, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !50 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx = mul nuw nsw i64 %i.bf, 144
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx
  %.not1833 = icmp eq i32 %i.be, 0
  br i1 %.not1833, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 1176
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph
  %.01734 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bo, %bb.g ] ; 3 uses
  %i.bi = load ptr, ptr %.01734, align 8, !tbaa !49
  %i.bj = getelementptr inbounds nuw i8, ptr %.01734, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !50
  %i.bl = zext i32 %i.bk to i64
  %i.bm = load i32, ptr %i.bh, align 8, !tbaa !274
  %i.bn = tail call noundef zeroext i1 %3(i64 noundef %4, ptr %i.bi, i64 %i.bl, i32 noundef %i.bm) #36, !inline_history !282
  %i.bo = getelementptr inbounds nuw i8, ptr %.01734, i64 144 ; 2 uses
  %.not18 = icmp eq ptr %i.bo, %i.bg
  %or.cond2 = select i1 %i.bn, i1 true, i1 %.not18
  br i1 %or.cond2, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.a, %bb.b, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEN12_GLOBAL__N_110DSAStackTy21MappedExprComponentTyENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang4Type12isScalarTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !104
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !159 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 16              ; 4 uses
  %i.g = icmp ne i8 %i.f, 13
  %.not.not24 = icmp eq ptr %i.d, null            ; 2 uses
  %.not.not = or i1 %.not.not24, %i.g
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.e, align 16
  %i.i = lshr i32 %i.h, 19
  %i.j = and i32 %i.i, 1023
  %i.k = add nsw i32 %i.j, -453
  %spec.select = icmp ult i32 %i.k, 53
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ne i8 %i.f, 47
  %.not12.not = or i1 %.not.not24, %i.l
  br i1 %.not12.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169  ; 2 uses
  %i.o = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.n) #36 ; 2 uses
  %.not.not.i = icmp eq ptr %i.o, null
  %..i = select i1 %.not.not.i, ptr %i.n, ptr %i.o ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %..i, i64 74
  %i.q = load i8, ptr %i.p, align 2
  %i.r = trunc i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %..i, i64 128
end_hunk_1
begin_hunk_2_@_ZL27getVariableCategoryFromDeclRKN5clang11LangOptionsEPKNS_9ValueDeclE:bb.a
  %i.bj = and i8 %i.bi, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i10 = icmp eq i8 %i.bj, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i10, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i13, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit27

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i13: ; preds = %bb.h
  %i.bk = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.f) #36 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bk, null
  br i1 %.not.i14, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit27, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i15

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i15: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i13, %bb.g
  %.1.i8.i16 = phi ptr [ %i.bk, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i13 ], [ %i.f, %bb.g ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i8.i16, i64 16
  %i.bm = load i24, ptr %i.bl, align 16
  %i.bn = and i24 %i.bm, 1048576
  %.not4.i.i17 = icmp eq i24 %i.bn, 0
  br i1 %.not4.i.i17, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i25, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i15, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i22
  %.05.i.i19 = phi ptr [ %.1.i.i.i23, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i22 ], [ %.1.i8.i16, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i15 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i19, i64 32
  %.0.copyload.i.i.i.i.i.i.i20 = load i64, ptr %i.bo, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i.i.i.i20, -16
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !159 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i8, ptr %i.bs, align 16
  %i.bu = and i8 %i.bt, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i21 = icmp eq i8 %i.bu, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i21, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i22, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i18
  %i.bv = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.br) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i22

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i22: ; preds = %bb.i, %.lr.ph.i.i18
  %.1.i.i.i23 = phi ptr [ %i.bv, %bb.i ], [ %i.br, %.lr.ph.i.i18 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.i.i.i23, i64 16
  %i.bx = load i24, ptr %i.bw, align 16
  %i.by = and i24 %i.bx, 1048576
  %.not.i.i24 = icmp eq i24 %i.by, 0
  br i1 %.not.i.i24, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i25, label %.lr.ph.i.i18, !llvm.loop !162

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i25: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i22, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i15
  %.0.lcssa.i.i26 = phi ptr [ %.1.i8.i16, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i15 ], [ %.1.i.i.i23, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i22 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i26, i64 32
  %.sroa.0.0.in.i11.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i25 = load i64, ptr %i.bz, align 8, !tbaa !104
  %.pre32 = and i64 %.sroa.0.0.in.i11.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i25, -16
  %.pre34 = inttoptr i64 %.pre32 to ptr
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit27

_ZNK5clang8QualType19getNonReferenceTypeEv.exit27: ; preds = %bb.h, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i13, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i25
  %.pre-phi35 = phi ptr [ %i.e, %bb.h ], [ %i.e, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i13 ], [ %.pre34, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i25 ]
  %i.ca = load ptr, ptr %.pre-phi35, align 8, !tbaa !159
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i29 = load i64, ptr %i.cb, align 8, !tbaa !104
  %i.cc = and i64 %.sroa.0.0.copyload.i.i.i.i.i29, -16
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !159
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i8, ptr %i.cf, align 16
  switch i8 %i.cg, label %bb.j [
    i8 40, label %_ZNK5clang4Type12isScalarTypeEv.exit.thread14
    i8 31, label %_ZNK5clang4Type12isScalarTypeEv.exit.thread14
  ]

bb.j:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit27
  %.sroa.0.0.copyload.i31 = load i64, ptr %i.c, align 8, !tbaa !104
  %i.ch = and i64 %.sroa.0.0.copyload.i31, -16
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !159 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 16
  %i.cm = and i8 %i.cl, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i33 = icmp eq i8 %i.cm, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i33, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i34 = load i64, ptr %i.cn, align 8, !tbaa !104
  %i.co = and i64 %.sroa.0.0.copyload.i.i.i.i.i34, -16
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !159
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i8, ptr %i.cr, align 16
  %i.ct = and i8 %i.cs, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i35 = icmp eq i8 %i.ct, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i35, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i38, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit52

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i38: ; preds = %bb.k
  %i.cu = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cj) #36 ; 2 uses
  %.not.i39 = icmp eq ptr %i.cu, null
  br i1 %.not.i39, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit52, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i40

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i40: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i38, %bb.j
  %.1.i8.i41 = phi ptr [ %i.cu, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i38 ], [ %i.cj, %bb.j ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1.i8.i41, i64 16
  %i.cw = load i24, ptr %i.cv, align 16
  %i.cx = and i24 %i.cw, 1048576
  %.not4.i.i42 = icmp eq i24 %i.cx, 0
  br i1 %.not4.i.i42, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i50, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i40, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i47
  %.05.i.i44 = phi ptr [ %.1.i.i.i48, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i47 ], [ %.1.i8.i41, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i40 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i44, i64 32
  %.0.copyload.i.i.i.i.i.i.i45 = load i64, ptr %i.cy, align 8
  %i.cz = and i64 %.0.copyload.i.i.i.i.i.i.i45, -16
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load ptr, ptr %i.da, align 16, !tbaa !159 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i8, ptr %i.dc, align 16
  %i.de = and i8 %i.dd, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i46 = icmp eq i8 %i.de, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i46, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i47, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i43
  %i.df = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.db) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i47

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i47: ; preds = %bb.l, %.lr.ph.i.i43
  %.1.i.i.i48 = phi ptr [ %i.df, %bb.l ], [ %i.db, %.lr.ph.i.i43 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1.i.i.i48, i64 16
  %i.dh = load i24, ptr %i.dg, align 16
  %i.di = and i24 %i.dh, 1048576
  %.not.i.i49 = icmp eq i24 %i.di, 0
  br i1 %.not.i.i49, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i50, label %.lr.ph.i.i43, !llvm.loop !162

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i50: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i47, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i40
  %.0.lcssa.i.i51 = phi ptr [ %.1.i8.i41, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i40 ], [ %.1.i.i.i48, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i47 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i51, i64 32
  %.sroa.0.0.in.i36.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i50 = load i64, ptr %i.dj, align 8, !tbaa !104
  %.pre36 = and i64 %.sroa.0.0.in.i36.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i50, -16
  %.pre38 = inttoptr i64 %.pre36 to ptr
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit52

_ZNK5clang8QualType19getNonReferenceTypeEv.exit52: ; preds = %bb.k, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i38, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i50
  %.pre-phi39 = phi ptr [ %i.ci, %bb.k ], [ %i.ci, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i38 ], [ %.pre38, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i50 ]
  %i.dk = load ptr, ptr %.pre-phi39, align 8, !tbaa !159
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.0.0.copyload.i.i.i.i54 = load i64, ptr %i.dl, align 8, !tbaa !104
  %i.dm = and i64 %.sroa.0.0.copyload.i.i.i.i54, -16
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !159 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 16            ; 3 uses
  %i.dr = icmp ne i8 %i.dq, 13
  %.not.not24.i55 = icmp eq ptr %i.do, null       ; 2 uses
  %.not.not.i56 = or i1 %.not.not24.i55, %i.dr
  br i1 %.not.not.i56, label %bb.m, label %.split24

.split24:                                         ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit52
  %i.ds = load i32, ptr %i.dp, align 16
  %.fr27 = freeze i32 %i.ds
  %i.dt = lshr i32 %.fr27, 19
  %i.du = and i32 %i.dt, 1023
  %i.dv = add nsw i32 %i.du, -453
  %spec.select.i57 = icmp ult i32 %i.dv, 53
  br i1 %spec.select.i57, label %_ZNK5clang4Type12isScalarTypeEv.exit63.thread, label %_ZNK5clang4Type12isScalarTypeEv.exit.thread14

bb.m:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit52
  %i.dw = icmp ne i8 %i.dq, 47
  %.not12.not.i59 = or i1 %.not.not24.i55, %i.dw
  br i1 %.not12.not.i59, label %bb.n, label %_ZNK5clang4Type12isScalarTypeEv.exit63

bb.n:                                             ; preds = %bb.m
  %switch.tableidx45 = add i8 %i.dq, -10          ; 2 uses
  %i.dx = icmp ult i8 %switch.tableidx45, 31
  br i1 %i.dx, label %switch.lookup46, label %_ZNK5clang4Type12isScalarTypeEv.exit.thread14

_ZNK5clang4Type12isScalarTypeEv.exit63:           ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !169 ; 2 uses
  %i.ea = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.dz) #36 ; 2 uses
  %.not.not.i.i60 = icmp eq ptr %i.ea, null
  %..i.i61 = select i1 %.not.not.i.i60, ptr %i.dz, ptr %i.ea ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %..i.i61, i64 74
  %i.ec = load i8, ptr %i.eb, align 2
  %i.ed = trunc i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %..i.i61, i64 128
  %.0.copyload.i.i.i.i.i.i62 = load i64, ptr %i.ee, align 8
  %i.ef = icmp ugt i64 %.0.copyload.i.i.i.i.i.i62, 7
  %i.eg = select i1 %i.ed, i1 true, i1 %i.ef
  %cond.fr18 = freeze i1 %i.eg
  br i1 %cond.fr18, label %_ZNK5clang4Type12isScalarTypeEv.exit63.thread, label %_ZNK5clang4Type12isScalarTypeEv.exit.thread14

_ZNK5clang4Type12isScalarTypeEv.exit63.thread:    ; preds = %_ZNK5clang4Type12isScalarTypeEv.exit, %.split, %.split24, %_ZNK5clang4Type12isScalarTypeEv.exit63
  br label %_ZNK5clang4Type12isScalarTypeEv.exit.thread14

switch.lookup:                                    ; preds = %bb.f
  %i.eh = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL27getVariableCategoryFromDeclRKN5clang11LangOptionsEPKNS_9ValueDeclE.3562, i64 %i.eh
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZNK5clang4Type12isScalarTypeEv.exit.thread14

switch.lookup46:                                  ; preds = %bb.n
  %i.ei = zext nneg i8 %switch.tableidx45 to i64
  %switch.gep47 = getelementptr inbounds nuw i8, ptr @switch.table._ZL27getVariableCategoryFromDeclRKN5clang11LangOptionsEPKNS_9ValueDeclE.3562, i64 %i.ei
  %switch.load48 = load i8, ptr %switch.gep47, align 1
  br label %_ZNK5clang4Type12isScalarTypeEv.exit.thread14

_ZNK5clang4Type12isScalarTypeEv.exit.thread14:    ; preds = %switch.lookup46, %bb.n, %switch.lookup, %bb.f, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit27, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit27, %_ZNK5clang4Type12isScalarTypeEv.exit63.thread, %_ZNK5clang4Type12isScalarTypeEv.exit63, %.split24, %_ZNK5clang4Type12isScalarTypeEv.exit, %.split
  %.0.shrunk = phi i8 [ 1, %.split ], [ 2, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit27 ], [ 1, %bb.n ], [ 1, %_ZNK5clang4Type12isScalarTypeEv.exit ], [ 2, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit27 ], [ 0, %_ZNK5clang4Type12isScalarTypeEv.exit63.thread ], [ 1, %_ZNK5clang4Type12isScalarTypeEv.exit63 ], [ 1, %bb.f ], [ 1, %.split24 ], [ %switch.load, %switch.lookup ], [ %switch.load48, %switch.lookup46 ]
  %.0 = zext i8 %.0.shrunk to i32
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang8SemaBase11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang8QualType19getNonReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8
  %i.a = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !159 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  %i.f = and i8 %i.e, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.f, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !104
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16
  %i.m = and i8 %i.l, -2
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.m, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #36 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5: ; preds = %bb.a, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit
  %.1.i8 = phi ptr [ %i.n, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit ], [ %i.c, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i8, i64 16
  %i.p = load i24, ptr %i.o, align 16
  %i.q = and i24 %i.p, 1048576
  %.not4.i = icmp eq i24 %i.q, 0
  br i1 %.not4.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i
  %.05.i = phi ptr [ %.1.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.1.i8, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5 ]
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.r, align 8
  %i.s = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !159 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i8, ptr %i.v, align 16
  %i.x = and i8 %i.w, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.x, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.u) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.c, %.lr.ph.i
  %.1.i.i = phi ptr [ %i.y, %bb.c ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.aa = load i24, ptr %i.z, align 16
  %i.ab = and i24 %i.aa, 1048576
  %.not.i = icmp eq i24 %i.ab, 0
  br i1 %.not.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, label %.lr.ph.i, !llvm.loop !162

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5
  %.0.lcssa.i = phi ptr [ %.1.i8, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5 ], [ %.1.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  br label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit, %bb.b, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit
  %.sroa.0.0.in = phi ptr [ %i.ac, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit ], [ %0, %bb.b ], [ %0, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit ]
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !tbaa !104
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang4Decl7hasAttrINS_20OMPCaptureNoInitAttrEEEbv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 256
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN5clang15hasSpecificAttrINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #36 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 3 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5clang15hasSpecificAttrINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.sroa.07.1.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.07.1.i.i.i, align 8, !tbaa !226
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i16, ptr %i.k, align 4
  %i.m = icmp eq i16 %i.l, 313
  br i1 %i.m, label %_ZN5clangneENS_22specific_attr_iteratorINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !228

_ZN5clangneENS_22specific_attr_iteratorINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.07.0.i.i.ph.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.07.1.i.i.i, %.lr.ph.i.i.i.i ]
  %i.o = icmp ne ptr %.sroa.07.0.i.i.ph.i, %i.i
  br label %_ZN5clang15hasSpecificAttrINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit

_ZN5clang15hasSpecificAttrINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEEbRKT0_.exit: ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i, %bb.b, %bb.a
  %i.p = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.o, %_ZN5clangneENS_22specific_attr_iteratorINS_20OMPCaptureNoInitAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy13getDefaultDSAEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28840) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.val2.i = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -6960
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28616
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %.not = icmp ugt i32 %i.k, %i.m
  br i1 %.not, label %bb.c, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit
  %narrow.i.i.i.i = sub nuw i32 %i.k, %i.m
  %i.n = zext i32 %narrow.i.i.i.i to i64
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -6968
  %.val5.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr [1736 x i8], ptr %.val5.i.i.i, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -768
  %i.r = load i32, ptr %i.q, align 8, !tbaa !229
  br label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit, %bb.c
  %i.s = phi i32 [ %i.r, %bb.c ], [ 0, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.s
}

declare i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #4

declare i64 @_ZNK5clang10ASTContext14getUIntPtrTypeEv(ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #4

declare i64 @_ZNK5clang10ASTContext26getAlignOfGlobalVarInCharsENS_8QualTypeEPKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(23904), i64, ptr noundef) local_unnamed_addr #4

declare i64 @_ZNK5clang10ASTContext19getTypeAlignInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK5clang10SemaOpenMP21getOpenMPNestingLevelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy15getNestingLevelEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 680
  %.val2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy15getNestingLevelEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -6960
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28616
end_hunk_2
begin_hunk_3_@_ZL34handleDeclareVariantConstructTraitPN12_GLOBAL__N_110DSAStackTyEN4llvm3omp9DirectiveEb:bb.a

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28808
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull %i.bh, i64 noundef %i.bc, i64 noundef 4) #36
  %.pre8.pre.i.i = load i32, ptr %i.az, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE7reserveEm.exit.i.i: ; preds = %bb.w, %bb.v
  %.pre8.i.i = phi i32 [ %i.ba, %bb.v ], [ %.pre8.pre.i.i, %bb.w ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE6appendIPKS2_vEEvT_S7_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE7reserveEm.exit.i.i
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !49
  %i.bj = zext i32 %.pre8.i.i to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr readonly align 4 %i.aw, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.az, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE6appendIPKS2_vEEvT_S7_.exit.i

_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE6appendIPKS2_vEEvT_S7_.exit.i: ; preds = %bb.x, %_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE7reserveEm.exit.i.i
  %i.bl = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.x ]
  %i.bm = add i32 %i.bl, %i.av
  store i32 %i.bm, ptr %i.az, align 8, !tbaa !50
  %.pre19 = load ptr, ptr %3, align 8, !tbaa !49
  br label %_ZN12_GLOBAL__N_110DSAStackTy20handleConstructTraitEN4llvm8ArrayRefINS1_3omp13TraitPropertyEEEb.exit

bb.y:                                             ; preds = %bb.u
  %.not13.i = icmp eq i32 %i.av, 0
  br i1 %.not13.i, label %_ZN12_GLOBAL__N_110DSAStackTy20handleConstructTraitEN4llvm8ArrayRefINS1_3omp13TraitPropertyEEEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28800 ; 2 uses
  %.promoted.i = load i32, ptr %i.bn, align 8, !tbaa !50
  %i.bo = sub i32 %.promoted.i, %i.av
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_110DSAStackTy20handleConstructTraitEN4llvm8ArrayRefINS1_3omp13TraitPropertyEEEb.exit

_ZN12_GLOBAL__N_110DSAStackTy20handleConstructTraitEN4llvm8ArrayRefINS1_3omp13TraitPropertyEEEb.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE6appendIPKS2_vEEvT_S7_.exit.i, %bb.y, %.lr.ph.i
  %i.bp = phi ptr [ %.pre19, %_ZN4llvm15SmallVectorImplINS_3omp13TraitPropertyEE6appendIPKS2_vEEvT_S7_.exit.i ], [ %i.aw, %bb.y ], [ %i.aw, %.lr.ph.i ] ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.f
  br i1 %i.bq, label %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_110DSAStackTy20handleConstructTraitEN4llvm8ArrayRefINS1_3omp13TraitPropertyEEEb.exit
  call void @free(ptr noundef %i.bp) #36
  br label %_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_3omp13TraitPropertyELj8EED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_110DSAStackTy20handleConstructTraitEN4llvm8ArrayRefINS1_3omp13TraitPropertyEEEb.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK5clang10SemaOpenMP26getNumberOfConstructScopesEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1196", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 680
  %.val = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr i8, ptr %i.b, i64 688
  %.val1 = load i32, ptr %i.d, align 8, !tbaa !50
  %i.e = zext i32 %.val1 to i64
  %i.f = getelementptr inbounds nuw [6968 x i8], ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -6968
  %i.h = zext i32 %1 to i64
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw [1736 x i8], ptr %.val2.i.i.i, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1024
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.n, align 4, !tbaa !51
  call void @_ZN5clang23getOpenMPCaptureRegionsERN4llvm15SmallVectorImplINS0_3omp9DirectiveEEES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.k) #36
  %i.o = load i32, ptr %i.m, align 8, !tbaa !50
  %i.p = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.l
  br i1 %i.q, label %_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.p) #36
  br label %_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit

_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang10SemaOpenMP23tryCaptureOpenMPLambdasEPNS_9ValueDeclE(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1328", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 616
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !409
  %i.e = tail call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #36
  br i1 %i.e, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 688
  %i.i = load i32, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 680
  %.val2.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 672
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i: ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -6960
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 28616
  %i.t = load i32, ptr %i.s, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.r, %i.t
  br i1 %.not.i.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i
  %narrow.i.i.i.i = sub nuw i32 %i.r, %i.t
  %i.u = zext i32 %narrow.i.i.i.i to i64
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 -6968
  %.val5.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.w = getelementptr [1736 x i8], ptr %.val5.i.i.i, i64 %i.u ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -1736
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i
  %i.y = getelementptr i8, ptr %i.w, i64 -712
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  br label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit: ; preds = %bb.b, %bb.c, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i ], [ 105, %bb.b ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i ], [ 105, %bb.c ]
  %i.ab = tail call noundef zeroext i1 @_ZN5clang32isOpenMPTargetExecutionDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.aa) #36
  br i1 %i.ab, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !59  ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 688
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i.i27 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i27, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit36, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 680
  %.val2.i.i.i.i.i28 = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i28, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 672
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14
  %.not.i.i.i.i.i29 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i.i.i.i29, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i30, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit36

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i30: ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 -6960
  %i.an = load i32, ptr %i.am, align 8, !tbaa !50 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 28616
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i31 = icmp ugt i32 %i.an, %i.ap
  br i1 %.not.i.i.i.i31, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i32, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit36

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i32: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i30
  %narrow.i.i.i.i33 = sub nuw i32 %i.an, %i.ap
  %i.aq = zext i32 %narrow.i.i.i.i33 to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ah, i64 -6968
  %.val5.i.i.i34 = load ptr, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr [1736 x i8], ptr %.val5.i.i.i34, i64 %i.aq ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -1736
  %.not.i35 = icmp eq ptr %i.at, null
  br i1 %.not.i35, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i32
  %i.au = getelementptr i8, ptr %i.as, i64 -712
  %i.av = load i32, ptr %i.au, align 8, !tbaa !106
  br label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit36

_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit36: ; preds = %bb.e, %bb.f, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i30, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i32, %bb.g
  %i.aw = phi i32 [ %i.av, %bb.g ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i32 ], [ 105, %bb.e ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i30 ], [ 105, %bb.f ]
  %i.ax = tail call noundef zeroext i1 @_ZN5clang37isOpenMPTargetDataManagementDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.aw) #36
  br i1 %i.ax, label %bb.h, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit36, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.ay, align 8, !tbaa !104 ; 2 uses
  %i.az = and i64 %.sroa.0.0.copyload.i, -16
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !104 ; 2 uses
  %3 = and i64 %.sroa.0.0.copyload.i, 7
  %4 = or i64 %i.bc, %3                           ; 2 uses
  %i.bd = and i64 %i.bc, -16
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !159 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i8, ptr %i.bg, align 16
  %i.bi = and i8 %i.bh, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.bi, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bj, align 8, !tbaa !104
  %i.bk = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !159
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i8, ptr %i.bn, align 16
  %i.bp = and i8 %i.bo, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.bp, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.i
  %i.bq = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bf) #36 ; 2 uses
  %.not.i37 = icmp eq ptr %i.bq, null
  br i1 %.not.i37, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.h
  %.1.i8.i = phi ptr [ %i.bq, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.bf, %bb.h ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.bs = load i24, ptr %i.br, align 16
  %i.bt = and i24 %i.bs, 1048576
  %.not4.i.i = icmp eq i24 %i.bt, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bu, align 8
  %i.bv = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !159 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i8, ptr %i.by, align 16
  %i.ca = and i8 %i.bz, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.ca, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cb = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bx) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.cb, %bb.j ], [ %i.bx, %.lr.ph.i.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.cd = load i24, ptr %i.cc, align 16
  %i.ce = and i24 %i.cd, 1048576
  %.not.i.i = icmp eq i24 %i.ce, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !162

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.cf, align 8, !tbaa !104
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %4, %bb.i ], [ %4, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.cg = and i64 %.sroa.0.0.in.i.sroa.speculated, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !159
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !104
  %i.ck = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !159 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i8, ptr %i.cn, align 16            ; 3 uses
  %i.cp = add i8 %i.co, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cp, 3
  %.not.i7.i = icmp ne ptr %i.cm, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.cq = and i8 %i.co, 62
  %spec.select.i.i.i = icmp eq i8 %i.cq, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.k, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.k:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !169 ; 3 uses
  %i.ct = icmp eq i8 %i.co, 49
  br i1 %i.ct, label %bb.l, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = and i32 %i.cv, 127
  %i.cx = add nsw i32 %i.cw, -60
  %i.cy = icmp ult i32 %i.cx, 3
  br i1 %i.cy, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.l, %bb.k
  %i.cz = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cs) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.cz, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.cs, ptr %i.cz ; 2 uses
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !59  ; 3 uses
  %i.db = getelementptr i8, ptr %i.da, i64 28585  ; 2 uses
  %.val = load i8, ptr %i.db, align 1, !tbaa !55, !range !168, !noundef !12
  store i8 1, ptr %i.db, align 1, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %spec.select, i64 128 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2181 ; 2 uses
  %.not.i38 = icmp eq ptr %i.dd, null
  br i1 %.not.i38, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit:        ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = and i32 %i.df, 8388608
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @_ZNK5clang13CXXRecordDecl16getCaptureFieldsERN4llvm8DenseMapIPKNS_9ValueDeclEPNS_9FieldDeclENS1_12DenseMapInfoIS5_vEENS1_6detail12DenseMapPairIS5_S7_EEEERS7_(ptr noundef nonnull align 8 dereferenceable(144) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #36
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !2181 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i, label %._crit_edge, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i:    ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = and i32 %i.dj, 8388608
  %.not.i.i39 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i39, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 128
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.dl, align 8 ; 4 uses
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.split.i.i.i, label %_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i

_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i: ; preds = %bb.n
  %i.do = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !50
  %.not.i.i.i.i40 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i40, label %_ZNK5clang13CXXRecordDecl8capturesEv.exit, label %bb.o

.split.i.i.i:                                     ; preds = %bb.n
  %i.ds = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i.i, 8
  %i.dt = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  %spec.select.i.i43 = select i1 %i.ds, ptr null, ptr %i.dt
  br label %_ZNK5clang13CXXRecordDecl8capturesEv.exit

bb.o:                                             ; preds = %_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !49
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !2199
  br label %_ZNK5clang13CXXRecordDecl8capturesEv.exit

_ZNK5clang13CXXRecordDecl8capturesEv.exit:        ; preds = %_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i, %.split.i.i.i, %bb.o
  %.0.i.i.i = phi ptr [ %i.dv, %bb.o ], [ %spec.select.i.i43, %.split.i.i.i ], [ null, %_ZNK4llvm13TinyPtrVectorIPN5clang13LambdaCaptureEE5emptyEv.exit.i.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = lshr i64 %i.dx, 1
  %.idx = and i64 %i.dy, 524272                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %.idx
  %.not2662 = icmp samesign eq i64 %.idx, 0
  br i1 %.not2662, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i, %bb.m, %_ZNK5clang13CXXRecordDecl8capturesEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !2201 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEPNS1_9FieldDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ed = load ptr, ptr %2, align 8, !tbaa !2204
  %i.ee = zext i32 %i.eb to i64                   ; 2 uses
  %i.ef = shl nuw nsw i64 %i.ee, 4
  %i.eg = add nuw nsw i64 %i.ee, 31
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = and i64 %i.eh, 1073741820
  %i.ej = add nuw nsw i64 %i.ei, %i.ef
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ed, i64 noundef %i.ej, i64 noundef 8) #36
  br label %_ZN4llvm8DenseMapIPKN5clang9ValueDeclEPNS1_9FieldDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang9ValueDeclEPNS1_9FieldDeclENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !59
  br label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread

.lr.ph:                                           ; preds = %_ZNK5clang13CXXRecordDecl8capturesEv.exit, %.critedge
  %.063 = phi ptr [ %i.fn, %.critedge ], [ %.0.i.i.i, %_ZNK5clang13CXXRecordDecl8capturesEv.exit ] ; 6 uses
  %i.ek = call noundef i32 @_ZNK5clang13LambdaCapture14getCaptureKindEv(ptr noundef nonnull align 8 dereferenceable(16) %.063) #36
  %i.el = icmp eq i32 %i.ek, 3
  br i1 %i.el, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.lr.ph
  %.0.copyload.i.i.i.i44 = load i64, ptr %.063, align 8
  %i.em = and i64 %.0.copyload.i.i.i.i44, -8
  %i.en = inttoptr i64 %i.em to ptr               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.0.copyload.i.i.i.i.i.i.i45 = load i64, ptr %i.eo, align 8 ; 3 uses
  %i.ep = and i64 %.0.copyload.i.i.i.i.i.i.i45, 4
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.er = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i45 to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.s:                                             ; preds = %bb.q
  %i.es = and i64 %.0.copyload.i.i.i.i.i.i.i45, -5
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1061
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.r, %bb.s
  %.0.i = phi ptr [ %i.er, %bb.r ], [ %i.eu, %bb.s ]
  %i.ev = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 616
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !409
  %i.ey = call noundef zeroext i1 @_ZNK5clang11DeclContext8EnclosesEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, ptr noundef %i.ex) #36
  br i1 %i.ey, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit
  %i.ez = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13
  %i.fa = getelementptr inbounds nuw i8, ptr %.063, i64 8
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.fa, align 8, !tbaa !187
  call void @_ZN5clang4Sema22MarkVariableReferencedENS_14SourceLocationEPNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ez, i32 %.sroa.0.0.copyload.i46, ptr noundef nonnull %i.en) #36
  br label %.critedge

bb.u:                                             ; preds = %.lr.ph
  %i.fb = call noundef i32 @_ZNK5clang13LambdaCapture14getCaptureKindEv(ptr noundef nonnull align 8 dereferenceable(16) %.063) #36
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.fd = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13
  %i.fe = call i64 @_ZN5clang4Sema18getCurrentThisTypeEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.fd) #36 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, 16
  br i1 %i.ff, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fg = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !2205
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.fi, align 8, !tbaa !104
  %i.fj = call noundef zeroext i1 @_ZN5clang10ASTContext18typesAreCompatibleENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904) %i.fg, i64 %i.fe, i64 %.sroa.0.0.copyload.i48, i1 noundef zeroext false) #36
  br i1 %i.fj, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.fk = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.063, i64 8
  %.sroa.0.0.copyload.i49 = load i32, ptr %i.fl, align 8, !tbaa !187
  %i.fm = call noundef zeroext i1 @_ZN5clang4Sema19CheckCXXThisCaptureENS_14SourceLocationEbbPKjb(ptr noundef nonnull align 8 dereferenceable(18640) %i.fk, i32 %.sroa.0.0.copyload.i49, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null, i1 noundef zeroext false) #36 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.x, %bb.t, %_ZN5clang4Decl14getDeclContextEv.exit, %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %.063, i64 16 ; 2 uses
  %.not26 = icmp eq ptr %i.fn, %i.dz
  br i1 %.not26, label %._crit_edge, label %.lr.ph

end_hunk_3
begin_hunk_4_@_ZL27checkMappableExpressionListRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyEN4llvm3omp6ClauseERNS2_19MappableVarListInfoENS_14SourceLocationERNS_12CXXScopeSpecENS_19DeclarationNameInfoENS5_8ArrayRefIPNS_4ExprEEENS_19OpenMPMapClauseKindENSE_INS_21OpenMPMapModifierKindEEEbb:bb.a
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %.sroa.0.0.copyload.i345 = load i64, ptr %i.se, align 8, !tbaa !104 ; 3 uses
  %i.sf = and i64 %.sroa.0.0.copyload.i345, -16
  %i.sg = inttoptr i64 %i.sf to ptr
  %i.sh = load ptr, ptr %i.sg, align 16, !tbaa !159 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sj = load i8, ptr %i.si, align 16
  %i.sk = and i8 %i.sj, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.sk, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i560 = load i64, ptr %i.sl, align 8, !tbaa !104
  %i.sm = and i64 %.sroa.0.0.copyload.i.i.i.i.i560, -16
  %i.sn = inttoptr i64 %i.sm to ptr
  %i.so = load ptr, ptr %i.sn, align 16, !tbaa !159
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = load i8, ptr %i.sp, align 16
  %i.sr = and i8 %i.sq, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.sr, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.cc
  %i.ss = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.sh) #36 ; 2 uses
  %.not.i = icmp eq ptr %i.ss, null
  br i1 %.not.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.cb
  %.1.i8.i = phi ptr [ %i.ss, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.sh, %bb.cb ] ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.su = load i24, ptr %i.st, align 16
  %i.sv = and i24 %i.su, 1048576
  %.not4.i.i = icmp eq i24 %i.sv, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i561

.lr.ph.i.i561:                                    ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.sw, align 8
  %i.sx = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.sy = inttoptr i64 %i.sx to ptr
  %i.sz = load ptr, ptr %i.sy, align 16, !tbaa !159 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load i8, ptr %i.ta, align 16
  %i.tc = and i8 %i.tb, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.tc, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i561
  %i.td = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.sz) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.cd, %.lr.ph.i.i561
  %.1.i.i.i = phi ptr [ %i.td, %bb.cd ], [ %i.sz, %.lr.ph.i.i561 ] ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.tf = load i24, ptr %i.te, align 16
  %i.tg = and i24 %i.tf, 1048576
  %.not.i.i562 = icmp eq i24 %i.tg, 0
  br i1 %.not.i.i562, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i561, !llvm.loop !162

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.th = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.th, align 8, !tbaa !104
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

bb.ce:                                            ; preds = %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEZL27checkMappableExpressionListRNS2_4SemaEPN12_GLOBAL__N_110DSAStackTyENS_3omp6ClauseERNS9_19MappableVarListInfoENS2_14SourceLocationERNS2_12CXXScopeSpecENS2_19DeclarationNameInfoENS_8ArrayRefIPNS2_4ExprEEENS2_19OpenMPMapClauseKindENSK_INS2_21OpenMPMapModifierKindEEEbbE3$_0EEDaOT_T0_.exit"
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !2047
  %i.tk = call i64 @_ZN5clang16ArraySectionExpr19getBaseOriginalTypeEPKNS_4ExprE(ptr noundef %i.tj) #36
  %i.tl = and i64 %i.tk, -16
  %i.tm = inttoptr i64 %i.tl to ptr               ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 16, !tbaa !159 ; 5 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = load i8, ptr %i.to, align 16
  %i.tq = add i8 %i.tp, -7
  %switch.i.i.i.i.i.i.i.i.i563 = icmp ult i8 %i.tq, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i563, label %bb.cf, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread660

bb.cf:                                            ; preds = %bb.ce
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %.sroa.0.0.copyload.i.i.i.i564 = load i64, ptr %i.tr, align 8, !tbaa !104
  %i.ts = and i64 %.sroa.0.0.copyload.i.i.i.i564, -16
  %i.tt = inttoptr i64 %i.ts to ptr
  %i.tu = load ptr, ptr %i.tt, align 16, !tbaa !159
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = load i8, ptr %i.tv, align 16
  %i.tx = add i8 %i.tw, -2
  %switch.i.i.i.i.i.i.i.i5.i = icmp ult i8 %i.tx, 5
  br i1 %switch.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit:     ; preds = %bb.cf
  %i.ty = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.tn) #36 ; 2 uses
  %.not263 = icmp eq ptr %i.ty, null
  br i1 %.not263, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit._ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread_crit_edge, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread660

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit._ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit
  %.pre689 = load ptr, ptr %i.tm, align 16, !tbaa !159
  br label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread660: ; preds = %bb.ce, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit
  %.1.i663 = phi ptr [ %i.ty, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit ], [ %i.tn, %bb.ce ]
  %i.tz = getelementptr inbounds nuw i8, ptr %.1.i663, i64 32
  %.sroa.0.0.copyload.i346 = load i64, ptr %i.tz, align 16, !tbaa !104
  br label %bb.cg

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit._ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread_crit_edge, %bb.cf
  %i.ua = phi ptr [ %.pre689, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit._ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread_crit_edge ], [ %i.tn, %bb.cf ]
  %i.ub = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ua) #36
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread660
  %storemerge = phi i64 [ %i.ub, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread ], [ %.sroa.0.0.copyload.i346, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread660 ] ; 3 uses
  %i.uc = and i64 %storemerge, -16
  %i.ud = inttoptr i64 %i.uc to ptr
  %i.ue = load ptr, ptr %i.ud, align 16, !tbaa !159 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = load i8, ptr %i.uf, align 16
  %i.uh = and i8 %i.ug, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i566 = icmp eq i8 %i.uh, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i566, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i573, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i567 = load i64, ptr %i.ui, align 8, !tbaa !104
  %i.uj = and i64 %.sroa.0.0.copyload.i.i.i.i.i567, -16
  %i.uk = inttoptr i64 %i.uj to ptr
  %i.ul = load ptr, ptr %i.uk, align 16, !tbaa !159
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load i8, ptr %i.um, align 16
  %i.uo = and i8 %i.un, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i568 = icmp eq i8 %i.uo, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i568, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i571, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i571: ; preds = %bb.ch
  %i.up = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ue) #36 ; 2 uses
  %.not.i572 = icmp eq ptr %i.up, null
  br i1 %.not.i572, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i573

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i573: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i571, %bb.cg
  %.1.i8.i574 = phi ptr [ %i.up, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i571 ], [ %i.ue, %bb.cg ] ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.1.i8.i574, i64 16
  %i.ur = load i24, ptr %i.uq, align 16
  %i.us = and i24 %i.ur, 1048576
  %.not4.i.i575 = icmp eq i24 %i.us, 0
  br i1 %.not4.i.i575, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i583, label %.lr.ph.i.i576

.lr.ph.i.i576:                                    ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i573, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i580
  %.05.i.i577 = phi ptr [ %.1.i.i.i581, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i580 ], [ %.1.i8.i574, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i573 ]
  %i.ut = getelementptr inbounds nuw i8, ptr %.05.i.i577, i64 32
  %.0.copyload.i.i.i.i.i.i.i578 = load i64, ptr %i.ut, align 8
  %i.uu = and i64 %.0.copyload.i.i.i.i.i.i.i578, -16
  %i.uv = inttoptr i64 %i.uu to ptr
  %i.uw = load ptr, ptr %i.uv, align 16, !tbaa !159 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.uy = load i8, ptr %i.ux, align 16
  %i.uz = and i8 %i.uy, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i579 = icmp eq i8 %i.uz, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i579, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i580, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i576
  %i.va = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.uw) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i580

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i580: ; preds = %bb.ci, %.lr.ph.i.i576
  %.1.i.i.i581 = phi ptr [ %i.va, %bb.ci ], [ %i.uw, %.lr.ph.i.i576 ] ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.1.i.i.i581, i64 16
  %i.vc = load i24, ptr %i.vb, align 16
  %i.vd = and i24 %i.vc, 1048576
  %.not.i.i582 = icmp eq i24 %i.vd, 0
  br i1 %.not.i.i582, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i583, label %.lr.ph.i.i576, !llvm.loop !162

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i583: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i580, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i573
  %.0.lcssa.i.i584 = phi ptr [ %.1.i8.i574, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i573 ], [ %.1.i.i.i581, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i580 ]
  %i.ve = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i584, i64 32
  %.sroa.0.0.in.i569.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i583 = load i64, ptr %i.ve, align 8, !tbaa !104
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

bb.cj:                                            ; preds = %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEZL27checkMappableExpressionListRNS2_4SemaEPN12_GLOBAL__N_110DSAStackTyENS_3omp6ClauseERNS9_19MappableVarListInfoENS2_14SourceLocationERNS2_12CXXScopeSpecENS2_19DeclarationNameInfoENS_8ArrayRefIPNS2_4ExprEEENS2_19OpenMPMapClauseKindENSK_INS2_21OpenMPMapModifierKindEEEbbE3$_0EEDaOT_T0_.exit"
  %i.vf = getelementptr inbounds nuw i8, ptr %i.sb, i64 32
  %i.vg = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !4453
  %i.vi = zext i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %i.vi
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !1077
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %.sroa.0.0.copyload.i348 = load i64, ptr %i.vl, align 8, !tbaa !104
  %i.vm = and i64 %.sroa.0.0.copyload.i348, -16
  %i.vn = inttoptr i64 %i.vm to ptr
  %i.vo = load ptr, ptr %i.vn, align 16, !tbaa !159
  %i.vp = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.vo) #36
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

bb.ck:                                            ; preds = %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEZL27checkMappableExpressionListRNS2_4SemaEPN12_GLOBAL__N_110DSAStackTyENS_3omp6ClauseERNS9_19MappableVarListInfoENS2_14SourceLocationERNS2_12CXXScopeSpecENS2_19DeclarationNameInfoENS_8ArrayRefIPNS2_4ExprEEENS2_19OpenMPMapClauseKindENSK_INS2_21OpenMPMapModifierKindEEEbbE3$_0EEDaOT_T0_.exit"
  %i.vq = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.0.0.copyload.i350 = load i64, ptr %i.vq, align 8, !tbaa !104
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i583, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i571, %bb.ch, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.cc, %bb.ck, %bb.cj
  %.sroa.0651.0 = phi i64 [ %.sroa.0.0.copyload.i345, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.sroa.0.0.copyload.i350, %bb.ck ], [ %i.vp, %bb.cj ], [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0.0.copyload.i345, %bb.cc ], [ %.sroa.0.0.in.i569.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i583, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i583 ], [ %storemerge, %bb.ch ], [ %storemerge, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i571 ] ; 4 uses
  %i.vr = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #37 ; 2 uses
  %i.vs = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gc) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store i64 %i.vs, ptr %20, align 8
  store i64 %.sroa.0651.0, ptr %21, align 8
  %i.vt = call noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindEj(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.vr, i64 %.sroa.0651.0, i32 noundef 1, i32 noundef 4051) #36
  br i1 %i.vt, label %_ZL17checkTypeMappableN5clang14SourceLocationENS_11SourceRangeERNS_4SemaEPN12_GLOBAL__N_110DSAStackTyENS_8QualTypeEb.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.vu = load ptr, ptr %i.ez, align 8, !tbaa !409
  %i.vv = call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.vu) #36
  br i1 %i.vv, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.vw = load ptr, ptr %i.fa, align 8, !tbaa !1081, !nonnull !12, !align !13
  %i.vx = call noundef zeroext i1 @_ZNK5clang8QualType23isTriviallyCopyableTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(23904) %i.vw) #36
  br i1 %i.vx, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 %i.vr, i32 noundef 7475) #36
  %i.vy = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %i.vz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.vy, ptr noundef nonnull align 4 dereferenceable(8) %20) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %22) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  br label %bb.co

_ZL17checkTypeMappableN5clang14SourceLocationENS_11SourceRangeERNS_4SemaEPN12_GLOBAL__N_110DSAStackTyENS_8QualTypeEb.exit: ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %.thread447.jt3

bb.co:                                            ; preds = %bb.cl, %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br i1 %i.em, label %bb.cp, label %bb.dq

bb.cp:                                            ; preds = %bb.co
  %i.wa = load i32, ptr %i.dj, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i.i586 = icmp eq i32 %i.wa, 0
  br i1 %.not.i.i.i.i.i.i586, label %.thread669, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.val2.i.i.i.i.i587 = load ptr, ptr %i.dk, align 8, !tbaa !49
  %i.wb = zext i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i587, i64 %i.wb ; 3 uses
  %i.wd = getelementptr inbounds i8, ptr %i.wc, i64 -8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !81
  %i.wf = load ptr, ptr %i.dl, align 8, !tbaa !14
  %.not.i.i.i.i.i588 = icmp eq ptr %i.we, %i.wf
  br i1 %.not.i.i.i.i.i588, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i589, label %.thread669

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i589: ; preds = %bb.cq
  %i.wg = getelementptr inbounds i8, ptr %i.wc, i64 -6960
  %i.wh = load i32, ptr %i.wg, align 8, !tbaa !50 ; 2 uses
  %i.wi = load i32, ptr %i.dm, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i590 = icmp ugt i32 %i.wh, %i.wi
  br i1 %.not.i.i.i.i590, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i591, label %.thread669

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i591: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i589
  %narrow.i.i.i.i592 = sub nuw i32 %i.wh, %i.wi
  %i.wj = zext i32 %narrow.i.i.i.i592 to i64
  %i.wk = getelementptr inbounds i8, ptr %i.wc, i64 -6968
  %.val5.i.i.i593 = load ptr, ptr %i.wk, align 8, !tbaa !49
  %i.wl = getelementptr [1736 x i8], ptr %.val5.i.i.i593, i64 %i.wj ; 2 uses
  %i.wm = getelementptr i8, ptr %i.wl, i64 -1736
  %.not.i594 = icmp eq ptr %i.wm, null
  br i1 %.not.i594, label %.thread669, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit595

_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit595: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i591
  %i.wn = getelementptr i8, ptr %i.wl, i64 -712
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !106 ; 6 uses
  %i.wp = icmp ne i32 %i.wo, 71
  %or.cond9 = or i1 %i.fc, %i.wp
  br i1 %or.cond9, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit595
  %i.wq = load ptr, ptr %i.n, align 8, !tbaa !1083, !nonnull !12, !align !13
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 64
  %i.ws = load i64, ptr %i.wr, align 8
  %i.wt = trunc i64 %i.ws to i32
  %i.wu = icmp ugt i32 %i.wt, 51
  br i1 %i.wu, label %.thread444, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %39, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 %4, i32 noundef 4622) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  store i32 %i.fd, ptr %i.g, align 4, !tbaa !187
  %i.wv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %39, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  %i.ww = call noundef ptr @_ZN5clang29getOpenMPSimpleClauseTypeNameEN4llvm3omp6ClauseEj(i32 noundef 71, i32 noundef %8) #36
  store ptr %i.ww, ptr %i.h, align 8, !tbaa !1547
  %i.wx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.wv, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 6 uses
  %i.wy = call { ptr, i64 } @_ZN4llvm3omp22getOpenMPDirectiveNameENS0_9DirectiveEj(i32 noundef 71, i32 noundef %i.r) #36 ; 2 uses
  %i.wz = extractvalue { ptr, i64 } %i.wy, 0      ; 2 uses
  %i.xa = extractvalue { ptr, i64 } %i.wy, 1      ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wx, i64 120
  %i.xc = load i8, ptr %i.xb, align 8, !tbaa !1835, !range !168, !noundef !12
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wx, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.xe, ptr %i.wz, i64 %i.xa)
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit

bb.cu:                                            ; preds = %bb.cs
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wx, i64 128
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wx, i64 132
  %i.xh = load i8, ptr %i.xg, align 4, !tbaa !1837, !range !168, !noundef !12
  %i.xi = trunc nuw i8 %i.xh to i1
  br i1 %i.xi, label %bb.cv, label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit

bb.cv:                                            ; preds = %bb.cu
  %i.xj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.wx) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !1838 ; 3 uses
  %.not.i.i596 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i596, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i597, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !101
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.xo = load ptr, ptr %i.xn, align 8
  %i.xp = call noundef ptr %i.xo(ptr noundef nonnull align 8 dereferenceable(168) %i.xl) #36, !inline_history !2030
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i597

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i597: ; preds = %bb.cw, %bb.cv
  %i.xq = phi ptr [ %i.xp, %bb.cw ], [ null, %bb.cv ]
  store ptr %i.xq, ptr %13, align 8, !tbaa !1845
  %i.xr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.xj, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %.fca.0.extract.i.i598 = extractvalue { ptr, i8 } %i.xr, 0
  %i.xs = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i598, i64 8
  %i.xt = load i32, ptr %i.xf, align 8, !tbaa !187
  %i.xu = zext i32 %i.xt to i64
  %i.xv = load ptr, ptr %i.xs, align 8, !tbaa !1847
  %i.xw = getelementptr inbounds nuw [32 x i8], ptr %i.xv, i64 %i.xu
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.xx, ptr %i.wz, i64 %i.xa)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit: ; preds = %bb.ct, %bb.cu, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  br label %.thread447.jt3

bb.cx:                                            ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit595
  %.not476 = icmp eq i32 %i.wo, 72
  br i1 %.not476, label %switch.early.test, label %.thread444

switch.early.test:                                ; preds = %bb.cx
  switch i32 %8, label %bb.cy [
    i32 5, label %.thread444
    i32 4, label %.thread444
    i32 2, label %.thread444
  ]

bb.cy:                                            ; preds = %switch.early.test
  %i.xy = load ptr, ptr %i.n, align 8, !tbaa !1083, !nonnull !12, !align !13
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  %i.ya = load i64, ptr %i.xz, align 8
  %i.yb = trunc i64 %i.ya to i32
  %i.yc = icmp ugt i32 %i.yb, 51
  br i1 %i.yc, label %.thread444, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %40, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 %4, i32 noundef 4622) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  store i32 %i.fd, ptr %i.i, align 4, !tbaa !187
  %i.yd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %40, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.ye = call noundef ptr @_ZN5clang29getOpenMPSimpleClauseTypeNameEN4llvm3omp6ClauseEj(i32 noundef 71, i32 noundef %8) #36
  store ptr %i.ye, ptr %i.j, align 8, !tbaa !1547
  %i.yf = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.yd, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #36
  %i.yg = call { ptr, i64 } @_ZN4llvm3omp22getOpenMPDirectiveNameENS0_9DirectiveEj(i32 noundef 72, i32 noundef %i.r) #36 ; 2 uses
  %i.yh = extractvalue { ptr, i64 } %i.yg, 0
  store ptr %i.yh, ptr %41, align 8
  %i.yi = extractvalue { ptr, i64 } %i.yg, 1
  store i64 %i.yi, ptr %i.fe, align 8
  %i.yj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.yf, ptr noundef nonnull align 8 dereferenceable(16) %41) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %40) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #36
  br label %.thread447.jt3

.thread444:                                       ; preds = %bb.cr, %switch.early.test, %switch.early.test, %switch.early.test, %bb.cx, %bb.cy
  %i.yk = add i32 %i.wo, -71
  %or.cond17 = icmp ult i32 %i.yk, 2
  %or.cond19 = and i1 %i.de, %or.cond17
  br i1 %or.cond19, label %bb.da, label %bb.df
end_hunk_4
begin_hunk_5_@_ZL27checkMappableExpressionListRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyEN4llvm3omp6ClauseERNS2_19MappableVarListInfoENS_14SourceLocationERNS_12CXXScopeSpecENS_19DeclarationNameInfoENS5_8ArrayRefIPNS_4ExprEEENS_19OpenMPMapClauseKindENSE_INS_21OpenMPMapModifierKindEEEbb:bb.a
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i600

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i600: ; preds = %bb.de, %bb.dd
  %i.zf = phi ptr [ %i.ze, %bb.de ], [ null, %bb.dd ]
  store ptr %i.zf, ptr %12, align 8, !tbaa !1845
  %i.zg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.yy, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %.fca.0.extract.i.i601 = extractvalue { ptr, i8 } %i.zg, 0
  %i.zh = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i601, i64 8
  %i.zi = load i32, ptr %i.yu, align 8, !tbaa !187
  %i.zj = zext i32 %i.zi to i64
  %i.zk = load ptr, ptr %i.zh, align 8, !tbaa !1847
  %i.zl = getelementptr inbounds nuw [32 x i8], ptr %i.zk, i64 %i.zj
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.zm, ptr %i.yo, i64 %i.yp)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit608

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit608: ; preds = %bb.db, %bb.dc, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %42) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  br label %.thread447.jt3

bb.df:                                            ; preds = %.thread444
  %i.zn = icmp eq i32 %i.wo, 70
  br i1 %i.zn, label %bb.dg, label %.thread669

.thread669:                                       ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i591, %bb.cp, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i589, %bb.cq, %bb.df
  %i.zo = phi i32 [ %i.wo, %bb.df ], [ 105, %bb.cq ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i589 ], [ 105, %bb.cp ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i591 ] ; 3 uses
  %i.zp = call noundef zeroext i1 @_ZN5clang32isOpenMPTargetExecutionDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.zo) #36
  %or.cond21.not = and i1 %i.fb, %i.zp
  br i1 %or.cond21.not, label %bb.dh, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  br i1 %i.fb, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %.thread669, %bb.dg
  %i.zq = phi i32 [ %i.zo, %.thread669 ], [ 70, %bb.dg ] ; 4 uses
  switch i32 %8, label %bb.di [
    i32 3, label %bb.dj
    i32 2, label %bb.dj
    i32 0, label %bb.dj
  ]

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %43, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 %4, i32 noundef 4622) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  store i32 %i.fd, ptr %i.l, align 4, !tbaa !187
  %i.zr = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %43, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #36
  %i.zs = call noundef ptr @_ZN5clang29getOpenMPSimpleClauseTypeNameEN4llvm3omp6ClauseEj(i32 noundef 71, i32 noundef %8) #36
  store ptr %i.zs, ptr %i.m, align 8, !tbaa !1547
  %i.zt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.zr, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #36
  %i.zu = call { ptr, i64 } @_ZN4llvm3omp22getOpenMPDirectiveNameENS0_9DirectiveEj(i32 noundef %i.zq, i32 noundef %i.r) #36 ; 2 uses
  %i.zv = extractvalue { ptr, i64 } %i.zu, 0
  store ptr %i.zv, ptr %44, align 8
  %i.zw = extractvalue { ptr, i64 } %i.zu, 1
  store i64 %i.zw, ptr %i.fm, align 8
  %i.zx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.zt, ptr noundef nonnull align 8 dereferenceable(16) %44) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %43) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #36
  br label %.thread447.jt3

bb.dj:                                            ; preds = %bb.dh, %bb.dh, %bb.dh, %bb.dg, %.thread669
  %i.zy = phi i32 [ %i.zq, %bb.dh ], [ %i.zq, %bb.dh ], [ %i.zq, %bb.dh ], [ 70, %bb.dg ], [ %i.zo, %.thread669 ] ; 3 uses
  %i.zz = load ptr, ptr %i.f, align 8, !tbaa !1567 ; 2 uses
  %.not = icmp eq ptr %i.zz, null
  br i1 %.not, label %bb.dq, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.aaa = load ptr, ptr %i.n, align 8, !tbaa !1083, !nonnull !12, !align !13
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 64
  %i.aac = load i64, ptr %i.aab, align 8
  %i.aad = trunc i64 %i.aac to i32
  %i.aae = icmp ult i32 %i.aad, 46
  br i1 %i.aae, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aaf = call noundef zeroext i1 @_ZN5clang32isOpenMPTargetExecutionDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.zy) #36
  %i.aag = icmp eq i32 %i.zy, 69
  %or.cond30 = or i1 %i.aag, %i.aaf
  br i1 %or.cond30, label %._crit_edge497, label %bb.dq

._crit_edge497:                                   ; preds = %bb.dl
  %.pre498 = load ptr, ptr %i.f, align 8, !tbaa !1567
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %.old29 = icmp eq i32 %i.zy, 69
  br i1 %.old29, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %._crit_edge497, %bb.dm
  %i.aah = phi ptr [ %.pre498, %._crit_edge497 ], [ %i.zz, %bb.dm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #36
  call fastcc void @_ZN12_GLOBAL__N_110DSAStackTy9getTopDSAEPN5clang9ValueDeclEb(ptr dead_on_unwind noalias writable align 8 %45, ptr noundef nonnull align 8 dereferenceable(28840) %1, ptr noundef %i.aah, i1 noundef zeroext false)
  %i.aai = load i32, ptr %i.ff, align 4, !tbaa !292 ; 2 uses
  %i.aaj = call noundef zeroext i1 @_ZN5clang15isOpenMPPrivateEN4llvm3omp6ClauseE(i32 noundef %i.aai) #36
  br i1 %i.aaj, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #36
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %46, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 %i.ga, i32 noundef 4755) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #36
  call fastcc void @_ZL26getOpenMPClauseNameForDiagB5cxx11N4llvm3omp6ClauseE(ptr dead_on_unwind noalias writable align 8 %47, i32 noundef %i.aai)
  %i.aak = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %46, ptr noundef nonnull align 8 dereferenceable(32) %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #36
  call fastcc void @_ZL26getOpenMPClauseNameForDiagB5cxx11N4llvm3omp6ClauseE(ptr dead_on_unwind noalias writable align 8 %48, i32 noundef 71)
  %i.aal = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.aak, ptr noundef nonnull align 8 dereferenceable(32) %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #36
  %i.aam = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv(ptr noundef nonnull align 8 dereferenceable(28840) %1)
  %i.aan = call { ptr, i64 } @_ZN4llvm3omp22getOpenMPDirectiveNameENS0_9DirectiveEj(i32 noundef %i.aam, i32 noundef %i.r) #36 ; 2 uses
  %i.aao = extractvalue { ptr, i64 } %i.aan, 0
  store ptr %i.aao, ptr %49, align 8
  %i.aap = extractvalue { ptr, i64 } %i.aan, 1
  store i64 %i.aap, ptr %i.fg, align 8
  %i.aaq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.aal, ptr noundef nonnull align 8 dereferenceable(16) %49) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  %i.aar = load ptr, ptr %48, align 8, !tbaa !1815 ; 2 uses
  %i.aas = icmp eq ptr %i.aar, %i.fh
  br i1 %i.aas, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %bb.do
  %i.aat = load i64, ptr %i.fh, align 8, !tbaa !104
  %i.aau = add i64 %i.aat, 1
  call void @_ZdlPvm(ptr noundef %i.aar, i64 noundef %i.aau) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  %i.aav = load ptr, ptr %47, align 8, !tbaa !1815 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.fi
  br i1 %i.aaw, label %.thread445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.aax = load i64, ptr %i.fi, align 8, !tbaa !104
  %i.aay = add i64 %i.aax, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aay) #38
  br label %.thread445

.thread445:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %46) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #36
  call fastcc void @_ZL17reportOriginalDsaRN5clang4SemaEPKN12_GLOBAL__N_110DSAStackTyEPKNS_9ValueDeclERKNS3_10DSAVarDataEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.nu, ptr noundef nonnull align 8 dereferenceable(37) %45, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br label %.thread447.jt3

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dl, %bb.dm, %bb.dj, %bb.co
  %i.aaz = load i32, ptr %i.dj, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i.i609 = icmp eq i32 %i.aaz, 0
  br i1 %.not.i.i.i.i.i.i609, label %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.val2.i.i.i.i.i610 = load ptr, ptr %i.dk, align 8, !tbaa !49
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i610, i64 %i.aba ; 3 uses
  %i.abc = getelementptr inbounds i8, ptr %i.abb, i64 -8
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !81
  %i.abe = load ptr, ptr %i.dl, align 8, !tbaa !14
  %.not.i.i.i.i.i611 = icmp eq ptr %i.abd, %i.abe
  br i1 %.not.i.i.i.i.i611, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i612, label %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i612: ; preds = %bb.dr
  %i.abf = getelementptr inbounds i8, ptr %i.abb, i64 -6960
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !50 ; 2 uses
  %i.abh = load i32, ptr %i.dm, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i613 = icmp ugt i32 %i.abg, %i.abh
  br i1 %.not.i.i.i.i613, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i614, label %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i614: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i612
  %narrow.i.i.i.i615 = sub nuw i32 %i.abg, %i.abh
  %i.abi = zext i32 %narrow.i.i.i.i615 to i64
  %i.abj = getelementptr inbounds i8, ptr %i.abb, i64 -6968
  %.val5.i.i.i616 = load ptr, ptr %i.abj, align 8, !tbaa !49
  %i.abk = getelementptr [1736 x i8], ptr %.val5.i.i.i616, i64 %i.abi ; 2 uses
  %i.abl = getelementptr i8, ptr %i.abk, i64 -1736
  %.not.i617 = icmp eq ptr %i.abl, null
  br i1 %.not.i617, label %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618, label %bb.ds

bb.ds:                                            ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i614
  %i.abm = getelementptr i8, ptr %i.abk, i64 -680
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !1877
  br label %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618

_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618: ; preds = %bb.dq, %bb.dr, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i612, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i614, %bb.ds
  %i.abo = phi ptr [ %i.abn, %bb.ds ], [ null, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i614 ], [ null, %bb.dq ], [ null, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i612 ], [ null, %bb.dr ]
  %i.abp = and i64 %.sroa.0651.0, -16
  %i.abq = inttoptr i64 %i.abp to ptr
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !104
  %i.abt = and i64 %.sroa.0651.0, 7
  %i.abu = or i64 %i.abt, %i.abs
  %i.abv = call fastcc i64 @_ZL25buildUserDefinedMapperRefRN5clang4SemaEPNS_5ScopeERNS_12CXXScopeSpecERKNS_19DeclarationNameInfoENS_8QualTypeEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.abo, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %i.abu, ptr noundef %.1234) ; 2 uses
  switch i64 %i.abv, label %.thread451 [
    i64 1, label %.thread447.jt3
    i64 0, label %bb.dt
  ]

bb.dt:                                            ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618
  %i.abw = load i16, ptr %i.gc, align 8
  %i.abx = and i16 %i.abw, 511
  %i.aby = icmp eq i16 %i.abx, 128
  %i.abz = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.0.0.copyload.i359 = load i64, ptr %i.abz, align 8, !tbaa !104 ; 2 uses
  %i.aca = and i64 %.sroa.0.0.copyload.i359, -16
  %i.acb = inttoptr i64 %i.aca to ptr             ; 2 uses
  br i1 %i.aby, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !104 ; 2 uses
  %i.ace = and i64 %.sroa.0.0.copyload.i359, 7
  %i.acf = or i64 %i.acd, %i.ace                  ; 2 uses
  %i.acg = and i64 %i.acd, -16
  %i.ach = inttoptr i64 %i.acg to ptr
  %i.aci = load ptr, ptr %i.ach, align 16, !tbaa !159
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.acj, align 8, !tbaa !104
  %i.ack = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.acl = inttoptr i64 %i.ack to ptr
  %i.acm = load ptr, ptr %i.acl, align 16, !tbaa !159 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16 ; 2 uses
  %i.aco = load i8, ptr %i.acn, align 16
  %i.acp = icmp eq i8 %i.aco, 13
  %.not7.i = icmp ne ptr %i.acm, null
  %.not.not.not.i = and i1 %.not7.i, %i.acp
  br i1 %.not.not.not.i, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit:    ; preds = %bb.du
  %i.acq = load i32, ptr %i.acn, align 16
  %i.acr = and i32 %i.acq, 536346624
  %i.acs = icmp eq i32 %i.acr, 274202624
  br i1 %i.acs, label %bb.dv, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

bb.dv:                                            ; preds = %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit
  %i.act = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #37
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 24
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !2047
  %i.acw = call i64 @_ZN5clang16ArraySectionExpr19getBaseOriginalTypeEPKNS_4ExprE(ptr noundef %i.acv) #36
  %i.acx = and i64 %i.acw, -16
  %i.acy = inttoptr i64 %i.acx to ptr             ; 2 uses
  %i.acz = load ptr, ptr %i.acy, align 16, !tbaa !159
  %i.ada = call noundef ptr @_ZNK5clang4Type20getAsArrayTypeUnsafeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.acz) ; 2 uses
  %.not266 = icmp eq ptr %i.ada, null
  br i1 %.not266, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %.sroa.0.0.copyload.i363 = load i64, ptr %i.adb, align 16, !tbaa !104
  br label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread.sink.split

bb.dx:                                            ; preds = %bb.dv
  %i.adc = load ptr, ptr %i.acy, align 16, !tbaa !159
  %i.add = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.adc) #36
  br label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread.sink.split

bb.dy:                                            ; preds = %bb.dt
  %i.ade = load ptr, ptr %i.acb, align 16, !tbaa !159 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.adf, align 8, !tbaa !104
  %i.adg = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.adh = inttoptr i64 %i.adg to ptr
  %i.adi = load ptr, ptr %i.adh, align 16, !tbaa !159
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adk = load i8, ptr %i.adj, align 16
  %i.adl = add i8 %i.adk, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.adl, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.dz, label %.thread451

bb.dz:                                            ; preds = %bb.dy
  %i.adm = call noundef ptr @_ZNK5clang4Type20getAsArrayTypeUnsafeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ade)
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 32
  %.sroa.0.0.copyload.i370 = load i64, ptr %i.adn, align 16, !tbaa !104
  br label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread.sink.split

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread.sink.split: ; preds = %bb.dw, %bb.dx, %bb.dz
  %.sroa.0.0.copyload.i370.sink553 = phi i64 [ %.sroa.0.0.copyload.i370, %bb.dz ], [ %i.add, %bb.dx ], [ %.sroa.0.0.copyload.i363, %bb.dw ] ; 2 uses
  %i.ado = and i64 %.sroa.0.0.copyload.i370.sink553, -16
  %i.adp = inttoptr i64 %i.ado to ptr
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !104
  %i.ads = and i64 %.sroa.0.0.copyload.i370.sink553, 7
  %i.adt = or i64 %i.ads, %i.adr
  br label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread: ; preds = %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread.sink.split, %bb.du, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit
  %.sroa.0381.0 = phi i64 [ %i.acf, %bb.du ], [ %i.acf, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit ], [ %i.adt, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread.sink.split ] ; 4 uses
  %i.adu = icmp ult i64 %.sroa.0381.0, 16
  br i1 %i.adu, label %.thread451, label %bb.ea

bb.ea:                                            ; preds = %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread
  %i.adv = and i64 %.sroa.0381.0, -16
  %i.adw = inttoptr i64 %i.adv to ptr
  %i.adx = load ptr, ptr %i.adw, align 16, !tbaa !159
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %.sroa.0.0.copyload.i.i.i.i619 = load i64, ptr %i.ady, align 8, !tbaa !104
  %i.adz = and i64 %.sroa.0.0.copyload.i.i.i.i619, -16
  %i.aea = inttoptr i64 %i.adz to ptr
  %i.aeb = load ptr, ptr %i.aea, align 16, !tbaa !159 ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aed = load i8, ptr %i.aec, align 16          ; 2 uses
  %i.aee = add i8 %i.aed, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aee, 3
  %.not.i5.i = icmp ne ptr %i.aeb, null
  %.not.i.not7.i = and i1 %.not.i5.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.aef = and i8 %i.aed, 62
  %spec.select.i.i.i = icmp eq i8 %i.aef, 48
  %or.cond.i620 = and i1 %spec.select.i.i.i, %.not.i.not7.i
  br i1 %or.cond.i620, label %select.unfold, label %.thread451

select.unfold:                                    ; preds = %bb.ea
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aeb, i64 24
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !169
  %i.aei = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.aeh) #36 ; 0 uses
  %i.aej = call fastcc noundef zeroext i1 @_ZL22isImplicitMapperNeededRN5clang4SemaEPN12_GLOBAL__N_110DSAStackTyENS_8QualTypeEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i64 %.sroa.0381.0, ptr noundef nonnull %i.gc)
  br i1 %i.aej, label %bb.eb, label %.thread451

bb.eb:                                            ; preds = %select.unfold
  %i.aek = call fastcc i64 @_ZL19buildImplicitMapperRN5clang4SemaENS_8QualTypeEPN12_GLOBAL__N_110DSAStackTyE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0381.0, ptr noundef nonnull %1)
  br label %.thread451

.thread451:                                       ; preds = %bb.ea, %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618, %bb.dy, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread, %select.unfold, %bb.eb
  %.sroa.0386.1 = phi i64 [ %i.abv, %_ZNK12_GLOBAL__N_110DSAStackTy11getCurScopeEv.exit618 ], [ 0, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread ], [ 0, %bb.dy ], [ %i.aek, %bb.eb ], [ 0, %select.unfold ], [ 0, %bb.ea ]
  %i.ael = and i64 %.sroa.0386.1, -2
  %i.aem = inttoptr i64 %i.ael to ptr             ; 2 uses
  %i.aen = load i32, ptr %i.do, align 8, !tbaa !50 ; 2 uses
  %i.aeo = load i32, ptr %i.dp, align 4, !tbaa !51
  %.not.i622 = icmp ult i32 %i.aen, %i.aeo
  br i1 %.not.i622, label %bb.ed, label %bb.ec, !prof !191

bb.ec:                                            ; preds = %.thread451
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef %i.aem)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit623

bb.ed:                                            ; preds = %.thread451
  %i.aep = zext i32 %i.aen to i64
  %i.aeq = load ptr, ptr %i.dn, align 8, !tbaa !49
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.aep
  store ptr %i.aem, ptr %i.aer, align 1
  %i.aes = load i32, ptr %i.do, align 8, !tbaa !50
  %i.aet = add i32 %i.aes, 1
  store i32 %i.aet, ptr %i.do, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit623

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit623: ; preds = %bb.ec, %bb.ed
  %i.aeu = load i32, ptr %i.dr, align 8, !tbaa !50 ; 2 uses
  %i.aev = load i32, ptr %i.ds, align 4, !tbaa !51
  %.not.i624 = icmp ult i32 %i.aeu, %i.aev
  br i1 %.not.i624, label %bb.ef, label %bb.ee, !prof !191

bb.ee:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit623
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull %i.fz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625

bb.ef:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit623
  %i.aew = zext i32 %i.aeu to i64
  %i.aex = load ptr, ptr %i.dq, align 8, !tbaa !49
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.aew
  store ptr %i.fz, ptr %i.aey, align 1
  %i.aez = load i32, ptr %i.dr, align 8, !tbaa !50
  %i.afa = add i32 %i.aez, 1
  store i32 %i.afa, ptr %i.dr, align 8, !tbaa !50
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625: ; preds = %bb.ee, %bb.ef
  %i.afb = load ptr, ptr %33, align 8, !tbaa !49
  %i.afc = load i32, ptr %i.ec, align 8, !tbaa !50
  %i.afd = zext i32 %i.afc to i64
  call fastcc void @_ZN12_GLOBAL__N_110DSAStackTy31addMappableExpressionComponentsEPKN5clang9ValueDeclEN4llvm8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS5_3omp6ClauseE(ptr noundef nonnull align 8 dereferenceable(28840) %1, ptr noundef nonnull %i.nu, ptr %i.afb, i64 %i.afd, i32 noundef 71)
  %i.afe = load i32, ptr %i.fk, align 8, !tbaa !50 ; 2 uses
  %i.aff = zext i32 %i.afe to i64                 ; 2 uses
  %i.afg = add nuw nsw i64 %i.aff, 1              ; 5 uses
  %i.afh = load i32, ptr %i.fn, align 4, !tbaa !51
  %.not672 = icmp ult i32 %i.afe, %i.afh
  br i1 %.not672, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626

_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625
  %i.afi = load ptr, ptr %i.fj, align 8, !tbaa !49
  br label %.lr.ph.preheader.i.i628

_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit625
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 noundef %i.afg)
  %.pre.i.i632 = load i32, ptr %i.fk, align 8, !tbaa !50
  %.pre691 = zext i32 %.pre.i.i632 to i64         ; 2 uses
  %i.afj = load ptr, ptr %i.fj, align 8, !tbaa !49 ; 2 uses
  %.not11.i.i627 = icmp samesign eq i64 %i.afg, %.pre691
  br i1 %.not11.i.i627, label %.sink.split.i.i, label %.lr.ph.preheader.i.i628

.lr.ph.preheader.i.i628:                          ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626
  %i.afk = phi ptr [ %i.afi, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread ], [ %i.afj, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626 ] ; 2 uses
  %.pre-phi.i.i.pre-phi757 = phi i64 [ %i.aff, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626.thread ], [ %.pre691, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN5clang27OMPClauseMappableExprCommon17MappableComponentELj8EEEE7reserveEm.exit.i.i626 ]
  %i.afl = getelementptr inbounds nuw [144 x i8], ptr %i.afk, i64 %i.afg
end_hunk_5
