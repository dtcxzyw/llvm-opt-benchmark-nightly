Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFFastScan?download=true
inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE.omp_outlined:bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !372, !llvm.access.group !338
  %i.fb = trunc i64 %i.ey to i32
  %i.fc = mul i32 %i.ex, %i.fb
  %i.fd = add i32 %i.fc, %i.fa                    ; 2 uses
  %i.fe = load i8, ptr %16, align 1, !tbaa !105, !range !38, !llvm.access.group !338, !noundef !39
  %i.ff = trunc nuw i8 %i.fe to i1
  %. = select i1 %i.ff, i32 %i.ex, i32 %i.fd
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0208.0, i64 %i.ed
  store i32 %., ptr %i.fg, align 4, !tbaa !100, !llvm.access.group !338
  %i.fh = load ptr, ptr %10, align 8, !tbaa !114, !llvm.access.group !338 ; 2 uses
  %.not122 = icmp eq ptr %i.fh, null
  br i1 %.not122, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = sext i32 %i.fd to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !159, !llvm.access.group !338
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0218.0, i64 %i.ed
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !159, !llvm.access.group !338
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fm = add i64 %.0112257, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %i.cw
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !340

._crit_edge:                                      ; preds = %bb.y, %.preheader249
  %i.fn = load i64, ptr %i.ck, align 8, !tbaa !81, !llvm.access.group !338
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load ptr, ptr %17, align 8, !tbaa !85, !llvm.access.group !338
  %i.fq = invoke noundef i32 @_ZN5faiss22pq4_pack_LUT_qbs_q_mapEiiPKhPKiPh(i32 noundef %i.dz, i32 noundef %i.fo, ptr noundef %i.fp, ptr noundef %.sroa.0208.0, ptr noundef %.sroa.0203.0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338 ; 0 uses

bb.z:                                             ; preds = %._crit_edge
  %i.fr = mul i64 %i.de, %i.cy
  %i.fs = load i64, ptr %i.b, align 8, !tbaa !72, !llvm.access.group !338
  %i.ft = add i64 %i.fs, %i.fr
  store i64 %i.ft, ptr %i.b, align 8, !tbaa !72, !llvm.access.group !338
  %i.fu = load ptr, ptr %i.cl, align 8, !tbaa !71, !llvm.access.group !338 ; 4 uses
  %i.fv = sext i32 %i.dd to i64                   ; 5 uses
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !25, !llvm.access.group !338
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !llvm.access.group !338
  %i.fz = invoke noundef ptr %i.fy(ptr noundef nonnull align 8 dereferenceable(25) %i.fu, i64 noundef %i.fv)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1 ; 2 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit: ; preds = %bb.z
  %i.ga = load ptr, ptr %i.cl, align 8, !tbaa !71, !llvm.access.group !338 ; 4 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !25, !llvm.access.group !338
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !llvm.access.group !338
  %i.ge = invoke noundef ptr %i.gd(ptr noundef nonnull align 8 dereferenceable(25) %i.ga, i64 noundef %i.fv)
          to label %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !9 ; 2 uses

_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit
  store i64 %i.cy, ptr %i.cm, align 8, !tbaa !167, !llvm.access.group !338
  store ptr %.sroa.0213.0241, ptr %i.cn, align 8, !tbaa !168, !llvm.access.group !338
  store ptr %i.ge, ptr %i.co, align 8, !tbaa !169, !llvm.access.group !338
  %i.gf = load ptr, ptr %i.cp, align 8, !tbaa !165, !llvm.access.group !338 ; 4 uses
  %i.gg = load ptr, ptr %26, align 8, !tbaa !164, !llvm.access.group !338 ; 9 uses
  %i.gh = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64               ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 4 uses
  %i.gk = ashr exact i64 %i.gj, 2                 ; 6 uses
  %i.gl = icmp ugt i64 %i.dg, %i.gk
  br i1 %i.gl, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit
  %i.gm = sub nuw nsw i64 %i.dg, %i.gk            ; 5 uses
  %i.gn = load ptr, ptr %i.bo, align 8, !tbaa !166
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = sub i64 %i.go, %i.gh
  %i.gq = ashr exact i64 %i.gp, 2                 ; 2 uses
  %i.gr = xor i64 %i.gk, 2305843009213693951
  %i.gs = icmp ule i64 %i.gq, %i.gr
  call void @llvm.assume(i1 %i.gs)
  %.not28.i182 = icmp ult i64 %i.gq, %i.gm
  br i1 %.not28.i182, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.gf, align 4, !tbaa !100
  %i.gt = getelementptr i8, ptr %i.gf, i64 4      ; 3 uses
  %i.gu = add nsw i64 %i.gm, -1                   ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.ab
  %.idx.i.i.i.i.i.i183 = shl nuw nsw i64 %i.gu, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gt, i8 0, i64 %.idx.i.i.i.i.i.i183, i1 false), !tbaa !100
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i183
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.ab
  %.0.i.i.i.i184 = phi ptr [ %i.gw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.gt, %bb.ab ]
  store ptr %.0.i.i.i.i184, ptr %i.cp, align 8, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.aa
  %.sroa.speculated.i.i185 = call i64 @llvm.umax.i64(i64 %i.gk, i64 %i.gm)
  %i.gx = add nuw nsw i64 %.sroa.speculated.i.i185, %i.gk
  %i.gy = call i64 @llvm.umin.i64(i64 %i.gx, i64 2305843009213693951) ; 2 uses
  %i.gz = shl nuw nsw i64 %i.gy, 2
  %i.ha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #41
          to label %.noexc190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gj ; 3 uses
  store i32 0, ptr %i.hb, align 4, !tbaa !100
  %i.hc = add nsw i64 %i.gm, -1                   ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc190
  %i.he = getelementptr i8, ptr %i.hb, i64 4
  %.idx.i.i.i.i.i31.i186 = shl nuw nsw i64 %i.hc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.he, i8 0, i64 %.idx.i.i.i.i.i31.i186, i1 false), !tbaa !100
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc190
  %i.hf = icmp sgt i64 %i.gj, 0
  br i1 %i.hf, label %bb.ac, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i187

bb.ac:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ha, ptr align 4 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i187

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i187: ; preds = %bb.ac, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i188 = icmp eq ptr %i.gg, null
  br i1 %.not.i35.i188, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i187
  %i.hg = load ptr, ptr %i.bo, align 8, !tbaa !166
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.hi) #40
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i187
  store ptr %i.ha, ptr %26, align 8, !tbaa !164
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.gm
  store ptr %i.hj, ptr %i.cp, align 8, !tbaa !165
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.gy
  store ptr %i.hk, ptr %i.bo, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ae:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit
  %i.hl = icmp ult i64 %i.dg, %i.gk
  br i1 %i.hl, label %bb.af, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.dg ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.gf, %i.hm
  br i1 %.not.i.i163, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.af
  store ptr %i.hm, ptr %i.cp, align 8, !tbaa !165, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.ae, %bb.af, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.hn = phi ptr [ %i.gg, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i ], [ %i.ha, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %i.gg, %bb.ae ], [ %i.gg, %bb.af ], [ %i.gg, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 8 uses
  br i1 %i.ea, label %.lr.ph259, label %._crit_edge260

.lr.ph259:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.val = load ptr, ptr %13, align 8, !tbaa !149  ; 15 uses
  %min.iters.check = icmp ult i64 %i.de, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph259
  %.0111258.ph = phi i64 [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph259 ], [ %i.ie, %vector.body ] ; 4 uses
  %i.ho = sub i64 %i.cw, %.0111258.ph
  %xtraiter = and i64 %i.ho, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0111258.prol = phi i64 [ %i.hu, %scalar.ph.prol ], [ %.0111258.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %.0111258.prol
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !372, !llvm.access.group !338
  %i.hs = sub nuw i64 %.0111258.prol, %i.cu
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hs
  store i32 %i.hr, ptr %i.ht, align 4, !tbaa !100, !llvm.access.group !338
  %i.hu = add nuw i64 %.0111258.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !341

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0111258.unr = phi i64 [ %.0111258.ph, %scalar.ph.preheader ], [ %i.hu, %scalar.ph.prol ]
  %i.hv = sub i64 %.0111258.ph, %i.cw
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %._crit_edge260, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph259
  %i.hx = sub i64 %i.cw, %i.cu
  %i.hy = shl i64 %i.hx, 2
  %scevgep = getelementptr i8, ptr %i.hn, i64 %i.hy
  %scevgep364 = getelementptr nuw i8, ptr %.val, i64 8
  %i.hz = mul i64 %i.cu, 12
  %scevgep365 = getelementptr nuw i8, ptr %scevgep364, i64 %i.hz
  %i.ia = mul i64 %i.cw, 12
  %scevgep366 = getelementptr i8, ptr %.val, i64 %i.ia
  %bound0 = icmp ult ptr %i.hn, %scevgep366
  %bound1 = icmp ult ptr %scevgep365, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ib = and i64 %i.de, 7                        ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 0
  %i.id = select i1 %i.ic, i64 8, i64 %i.ib
  %n.vec = sub i64 %i.de, %i.id                   ; 2 uses
  %i.ie = add i64 %i.cu, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.if = add nuw i64 %i.cu, %index               ; 8 uses
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.if
  %i.ih = getelementptr [12 x i8], ptr %.val, i64 %i.if
  %i.ii = getelementptr [12 x i8], ptr %.val, i64 %i.if
  %i.ij = getelementptr [12 x i8], ptr %.val, i64 %i.if
  %i.ik = getelementptr [12 x i8], ptr %.val, i64 %i.if
  %i.il = getelementptr [12 x i8], ptr %.val, i64 %i.if
  %i.im = getelementptr [12 x i8], ptr %.val, i64 %i.if
  %i.in = getelementptr [12 x i8], ptr %.val, i64 %i.if
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ip = getelementptr i8, ptr %i.ih, i64 20
  %i.iq = getelementptr i8, ptr %i.ii, i64 32
  %i.ir = getelementptr i8, ptr %i.ij, i64 44
  %i.is = getelementptr i8, ptr %i.ik, i64 56
  %i.it = getelementptr i8, ptr %i.il, i64 68
  %i.iu = getelementptr i8, ptr %i.im, i64 80
  %i.iv = getelementptr i8, ptr %i.in, i64 92
  %i.iw = load i32, ptr %i.io, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.ix = load i32, ptr %i.ip, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.iy = load i32, ptr %i.iq, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.iz = load i32, ptr %i.ir, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.ja = insertelement <4 x i32> poison, i32 %i.iw, i64 0
  %i.jb = insertelement <4 x i32> %i.ja, i32 %i.ix, i64 1
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iy, i64 2
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iz, i64 3
  %i.je = load i32, ptr %i.is, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jf = load i32, ptr %i.it, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jg = load i32, ptr %i.iu, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jh = load i32, ptr %i.iv, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.ji = insertelement <4 x i32> poison, i32 %i.je, i64 0
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jf, i64 1
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.jg, i64 2
  %i.jl = insertelement <4 x i32> %i.jk, i32 %i.jh, i64 3
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store <4 x i32> %i.jd, ptr %i.jm, align 4, !tbaa !100, !alias.scope !374, !noalias !373, !llvm.access.group !338
  store <4 x i32> %i.jl, ptr %i.jn, align 4, !tbaa !100, !alias.scope !374, !noalias !373, !llvm.access.group !338
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %scalar.ph.preheader, label %vector.body, !llvm.loop !345

._crit_edge260:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.jp = load ptr, ptr %i.aq, align 8, !tbaa !25, !llvm.access.group !338
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !llvm.access.group !338
  invoke void %i.jr(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, i64 noundef %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0111258 = phi i64 [ %i.kp, %scalar.ph ], [ %.0111258.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.js = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %.0111258
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !372, !llvm.access.group !338
  %i.jv = sub nuw i64 %.0111258, %i.cu
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.jv
  store i32 %i.ju, ptr %i.jw, align 4, !tbaa !100, !llvm.access.group !338
  %i.jx = add nuw i64 %.0111258, 1                ; 2 uses
  %i.jy = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !372, !llvm.access.group !338
  %i.kb = sub nuw i64 %i.jx, %i.cu
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.kb
  store i32 %i.ka, ptr %i.kc, align 4, !tbaa !100, !llvm.access.group !338
  %i.kd = add nuw i64 %.0111258, 2                ; 2 uses
  %i.ke = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !372, !llvm.access.group !338
  %i.kh = sub nuw i64 %i.kd, %i.cu
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.kh
  store i32 %i.kg, ptr %i.ki, align 4, !tbaa !100, !llvm.access.group !338
  %i.kj = add nuw i64 %.0111258, 3                ; 2 uses
  %i.kk = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !372, !llvm.access.group !338
  %i.kn = sub nuw i64 %i.kj, %i.cu
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.kn
  store i32 %i.km, ptr %i.ko, align 4, !tbaa !100, !llvm.access.group !338
  %i.kp = add nuw i64 %.0111258, 4                ; 2 uses
  %exitcond288.not.3 = icmp eq i64 %i.kp, %i.cw
  br i1 %exitcond288.not.3, label %._crit_edge260, label %scalar.ph, !llvm.loop !346

bb.ag:                                            ; preds = %._crit_edge260
  %i.kq = load ptr, ptr %24, align 8, !tbaa !127, !llvm.access.group !338 ; 2 uses
  %i.kr = load i64, ptr %i.ck, align 8, !tbaa !81, !llvm.access.group !338
  %i.ks = load i32, ptr %8, align 8, !tbaa !142, !llvm.access.group !338
  %i.kt = invoke noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %4)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338

bb.ah:                                            ; preds = %bb.ag
  %i.ku = trunc i64 %i.kr to i32
  %i.kv = load ptr, ptr %i.kq, align 8, !tbaa !25, !llvm.access.group !338
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8, !llvm.access.group !338
  invoke void %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, i32 noundef %i.dz, i64 noundef %i.cy, i32 noundef %i.ku, ptr noundef %i.fz, ptr noundef %.sroa.0203.0, i32 noundef %i.ks, i64 noundef %i.kt)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338

bb.ai:                                            ; preds = %bb.ah
  %i.ky = load ptr, ptr %i.ga, align 8, !tbaa !25, !llvm.access.group !338
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.la = load ptr, ptr %i.kz, align 8, !llvm.access.group !338
  invoke void %i.la(ptr noundef nonnull align 8 dereferenceable(25) %i.ga, i64 noundef %i.fv, ptr noundef %i.ge)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit unwind label %bb.aj, !llvm.access.group !338

bb.aj:                                            ; preds = %bb.ai
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #38, !llvm.access.group !338
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit:      ; preds = %bb.ai
  %i.ld = load ptr, ptr %i.fu, align 8, !tbaa !25, !llvm.access.group !338
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !llvm.access.group !338
  invoke void %i.lf(ptr noundef nonnull align 8 dereferenceable(25) %i.fu, i64 noundef %i.fv, ptr noundef %i.fz)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.ak, !llvm.access.group !338

bb.ak:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #38, !llvm.access.group !338
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  call void @free(ptr noundef %.sroa.0203.0) #27, !llvm.access.group !338
  %.not.i.i.i165 = icmp eq ptr %.sroa.0208.0, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.li = ptrtoint ptr %.sroa.9211.0 to i64
  %i.lj = ptrtoint ptr %.sroa.0208.0 to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0208.0, i64 noundef %i.lk) #40, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %bb.al
  %.not.i.i.i166 = icmp eq ptr %.sroa.0213.0241, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIiSaIiEED2Ev.exit167, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ll = ptrtoint ptr %.sroa.9217.0243 to i64
  %i.lm = ptrtoint ptr %.sroa.0213.0241 to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.0241, i64 noundef %i.ln) #40, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit167

_ZNSt6vectorIiSaIiEED2Ev.exit167:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.am
  %i.lo = add nsw i64 %.0113262, 1
  %i.lp = load i64, ptr %i.e, align 8, !tbaa !72, !llvm.access.group !338
  %.not120.not = icmp slt i64 %.0113262, %i.lp
  br i1 %.not120.not, label %.lr.ph264, label %.loopexit253, !llvm.loop !347

._crit_edge268:                                   ; preds = %.loopexit253, %bb.m
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %.pre289)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge268, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  call void @__kmpc_barrier(ptr nonnull @4, i32 %.pre289)
  %i.lq = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  invoke void %i.ls(ptr noundef nonnull align 8 dereferenceable(88) %i.aq)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.lt = call i32 @__kmpc_single(ptr nonnull @2, i32 %.pre289)
  %.not118 = icmp eq i32 %i.lt, 0
  br i1 %.not118, label %bb.ap, label %.preheader248

.preheader248:                                    ; preds = %bb.ao
  %i.lu = load i64, ptr %3, align 8, !tbaa !72    ; 3 uses
  %i.lv = icmp sgt i64 %i.lu, 0
  br i1 %i.lv, label %.lr.ph270, label %._crit_edge271

.lr.ph270:                                        ; preds = %.preheader248
  %i.lw = load ptr, ptr %20, align 8, !tbaa !99   ; 2 uses
  %i.lx = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
end_hunk_0
